const express = require('express');
const path = require('path');
const multer = require('multer');
const fs = require('fs');
const util = require('util');
const { join, resolve } = require("path");
const mysql = require("mysql");
var bodyParser = require('body-parser');
const { append } = require('express/lib/response');
const { range } = require('express/lib/request');
const { query } = require('express');

const sample_account = {
    account_id: 1,
    name: 'Ibrahim',
    graduation: 2025,
    major: 'Bioengineering',
    minor: 'Data Science, Engineering Design'
}


const gpa_scale = {
    'A+': 4.0,
    'A': 4.0,
    'A-': 3.6667,
    'B+': 3.3333,
    'B': 3.0,
    'B-': 2.6667,
    'C+': 2.3333,
    'C': 2.0,
    'C-': 1.6667
}

const letter_scale = {
    'A+': 96,
    'A': 92,
    'A-': 89,
    'B+': 86,
    'B': 82,
    'B-': 79,
    'C+': 76,
    'C': 72,
    'C-': 69
}

const tmdas_scale = {
    'A+': 4.0,
    'A': 4.0,
    'A-': 4.0,
    'B+': 3.0,
    'B': 3.0,
    'B-': 3.0,
    'C+': 2.0,
    'C': 2.0,
    'C-': 2.0
}

const amcas_scale = {
    'A+': 4.0,
    'A': 4.0,
    'A-': 3.7,
    'B+': 3.3,
    'B': 3.0,
    'B-': 2.7,
    'C+': 2.3,
    'C': 2.0,
    'C-': 1.7
}


// Set storage engine
const storage = multer.diskStorage({
    destination: "uploads/",
    filename: function(req, file, cb) {
      // null as first argument means no error
      cb(null, file.originalname);
    },
  });

  const upload = multer({storage,
    dest: 'uploads/'});

const connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    //port: "3306",
    // password: "mytOUrnEysql2003$",
    password: "password",
    database: "riceplanner_db",
    timezone: 'utc'
});

connection.connect(function(error){
    if (error) throw error
    else console.log(`Connected to database successfully. Open port ${port}`);
});



const app = express();
const port = 4800;
app.use(bodyParser.urlencoded({ extended: false }));
app.set('view engine', 'ejs');

app.use(express.static(path.join(__dirname, '')));

makeQuery = function(query,vals){
    return new Promise(function(resolve,reject){
        if(vals){
            connection.query(
                query,
                vals,
                function(err,rows){
                    if(rows === undefined){
                        console.log(new Error(`Error, the query was not successful - ${err}`));
                        reject(0);
                    }else{
                        resolve(rows);
                    }
                }
            )
        }else{
            connection.query(
                query,
                function(err,rows){
                    if(rows === undefined){
                        console.log(new Error(`Error, the query was not successful - ${err}`));
                        reject(0);
                    }else{
                        resolve(rows);
                    }
                }
            )
        }
        
    })
}

app.get('/', async function(req, res) {
    var classes = await makeQuery('SELECT * FROM classes', '');
    var assignments = await makeQuery('SELECT * FROM assignments ORDER BY due_date ASC');
    var readings = await makeQuery('SELECT * FROM readings ORDER BY due_date ASC');
    var ass_count = 0;
    for (ass of assignments){
        if (ass.status != 'complete'){
            ass_count = ass_count+1;
        }
    }



    res.render('home.ejs', {classes: classes,
                            readings: readings,
                            assignments: assignments,
                            ass_count: ass_count});
})

function findPerc(scores, max_scores){
    var sum_scores = scores.reduce((a, b) => a + b, 0);
    var sum_max = max_scores.reduce((a, b) => a + b, 0);
    var perc = sum_scores / sum_max * 100;
    return perc;
}

function percGrade(scores,weights){
    var score = 0;
    for (i in scores){
        score = score + (scores[i]/100 * weights[i]);
    }
    return score;
}

app.get('/course', async function(req, res) {
    try {
        // console.log(req.query.name)
        var blip = await makeQuery('SELECT * FROM classes WHERE name=?', `${req.query.name}`);
        var classes = await makeQuery('SELECT * FROM classes');
        var course_id = blip[0].class_id;
        // console.log(blip)
        var assignments = await makeQuery('SELECT * FROM assignments WHERE class_id=? ORDER BY status DESC, due_date ASC', `${course_id}`);
        var completed_assignments = await makeQuery('SELECT * FROM assignments WHERE (class_id=? && status=?) ORDER BY status DESC, due_date ASC', [`${course_id}`,'complete']);
        var readings = await makeQuery('SELECT * FROM readings WHERE class_id=? ORDER BY status DESC, due_date ASC', `${course_id}`);
        // console.log(readings)
        var gradingscheme = await makeQuery('SELECT * FROM gradingscheme WHERE class_id=?', `${course_id}`);
        var graded = await makeQuery('SELECT * FROM graded_assignments');

        var course_grade;

        var assignment_types = [];
        var weighting = [];
        var method = -1;
        for (s of gradingscheme){
            if(s.class_id == course_id && s.weight_points > 0){
                assignment_types.push(s.grading_item);
                weighting.push(s.weight_points);
                method = 0;
            }else if(s.class_id == course_id && s.weight_percentage > 0){
                assignment_types.push(s.grading_item);
                weighting.push(s.weight_percentage);
                method = 1;
            }
        }

        var asses = [];

        if(method == 1){
            for (ass of graded){
                for (s of assignment_types){
                    if (ass.type == s && ass.class_id == course_id){
                        asses.push([ass.grade, ass.maximum, ass.type]);
                    }
                }
            }
        }else if(method == 0){
            for (ass of graded){
                for (s of assignment_types){
                    if (ass.type == s && ass.class_id == course_id){
                        asses.push([ass.grade, ass.maximum, ass.type]);
                    }
                }
            }
        }

        // If the grading scheme is on a percentage basis
        if(method == 1){
            var scores = [];
            var max_scores = [];
            var breakdown = [];
            for (s of assignment_types){
                scores = [];
                max_scores = [];
                for (ass of asses){
                    if(ass[2] == s){
                        scores.push(ass[0]);
                        max_scores.push(ass[1]);
                    }
                }
                var typescore = findPerc(scores,max_scores);
                if(isNaN(typescore)) typescore = 0;
                breakdown.push(typescore);
            }
            var course_grade = percGrade(breakdown,weighting);
            var syl_break = [];
            for (i in breakdown){
                var we = weighting[i];
                syl_break.push([we, breakdown]);
            }
            var mypoints = -1;
        }else if(method == 0){
            var scores = [];
            var max_scores = [];
            var breakdown = [];
            for (s of assignment_types){
                scores = [];
                max_scores = [];
                for (ass of asses){
                    if(ass[2] == s){
                        scores.push(ass[0]);
                        max_scores.push(ass[1]);
                    }
                }
                // var typescore = findPerc(scores,max_scores);
                if(scores.length==0) scores[0] = 0;
                breakdown.push(scores);
            }
            
            var syl_break = [];
            for (i in breakdown){
                var we = weighting[i];
                syl_break.push([we, breakdown]);
            }
            var maxpoints = 0;
            var mypoints = 0;
            for (i in syl_break){
                maxpoints = maxpoints + syl_break[i][0];
            }
            for (i in breakdown[0]){
                mypoints = mypoints+breakdown[0][i];
            }
            if(maxpoints!=0){
                var course_grade = mypoints / maxpoints;
            }else{
                var course_grade = 0;
            }
        }

        var course_letter;

        if (course_grade > letter_scale['A+']){
            course_letter = 'A+';
        }else if(course_grade > letter_scale['A']){
            course_letter = 'A';
        }else if(course_grade > letter_scale['A-']){
            course_letter = 'A-';
        }else if(course_grade > letter_scale['B+']){
            course_letter = 'B+';
        }else if(course_grade > letter_scale['B']){
            course_letter = 'B';
        }else if(course_grade > letter_scale['B-']){
            course_letter = 'B-';
        }else if(course_grade > letter_scale['C+']){
            course_letter = 'C+';
        }else if(course_grade > letter_scale['C']){
            course_letter = 'C';
        }else {
            course_letter = 'C-';
        }
        


        res.render('course.ejs', {classes: classes,
                                    active_course: req.query.name,
                                    course: blip,
                                    assignments: assignments,
                                    readings: readings,
                                    syllabus: gradingscheme,
                                    graded: graded,
                                    course_grade: course_grade,
                                    breakdown: breakdown,
                                    course_letter: course_letter,
                                    mypoints: mypoints,
                                    completed_assignments: completed_assignments});
    } catch (e) {
        console.error(e);
    }
    
})

app.post('/archive_course/:key', async function(req,res){
    const course_id = req.params.key.split('-')[0];
    const query = `DELETE FROM \`classes\` WHERE class_id=?`;
    const vals = course_id;
    await makeQuery(query,vals);
    res.redirect('/');
})

app.post('/remove_course/:key', async function(req,res){
    const course_id = req.params.key.split('-')[0];
    const course_name = req.params.key.split('-')[1];
    const query = `DELETE FROM \`classes\` WHERE class_id=?`;
    const vals = course_id;
    await makeQuery(query,vals);
    const eraseGPA = `DELETE FROM \`gpa\` WHERE class_name=?`;
    const otherVals = course_name;
    await makeQuery(eraseGPA,otherVals);
    res.redirect('/');
})

app.post('/add_course', upload.single('syllabus'), async function(req,res){
    let encode_file = null;
    let fileName = "";
    if (req.file) {
      fileName = req.file.originalname;
      var filepath = path.join(__dirname, req.file.path);
      console.log(filepath);
      var stream = fs.readFileSync(filepath);
      encode_file = stream.toString("base64");
      const query = `INSERT INTO classes SET ?`;
      const vals = {
          name: req.body.course_name,
          syllabus: fileName,
          professor: req.body.professor,
          semester: req.body.semester
      }
      await makeQuery(query, vals);
      const saveGpaQuery = "INSERT INTO gpa SET ?";
      const values = {hours: parseInt(req.body.hours),
                        class_name: req.body.course_name};
      await makeQuery(saveGpaQuery, values);
    res.redirect('/');
    }else{
        res.end("Error, Multer couldn't upload")
    }
})

app.post('/add_gradescheme/:course_id', async function(req,res){
    const query = `INSERT INTO gradingscheme SET ?`
    if(!req.body.weightpts){
        weight_points = 0;
    }else{
        weight_points = req.body.weightpts;
    }
    if(!req.body.weightperc){
        weightperc = 0
    }else{
        weightperc = req.body.weightperc
    }
    vals = {
        class_id: req.params.course_id.split('-')[0],
        grading_item: req.body.grading_item,
        weight_points: weight_points,
        weight_percentage: weightperc
    }
    await makeQuery(query,vals);
    res.redirect(`/course?name=${req.params.course_id.split('-')[1]}`);
})

app.post('/add_graded/:course_id', async function(req,res){
    const course_id = req.params.course_id.split('-')[0];
    const course_name = req.params.course_id.split('-')[1];
    const grading_type = req.body.grading_type.split('-')[0];
    const grading_id = req.body.grading_type.split('-')[1];
    const assignment_name = req.body.graded_assignment_name.split('-')[0];
    const assignment_id = req.body.graded_assignment_name.split('-')[1];
    const score = req.body.score;
    const max = req.body.max_score;
    var query = `INSERT INTO graded_assignments SET ?`;
    var vals ={
        grading_id: grading_id,
        assignment_id: assignment_id,
        grade: score,
        maximum: max,
        type: grading_type,
        class_id: course_id,
        assignment_name: assignment_name
    };

    await makeQuery(query, vals);
    var query = `UPDATE assignments SET maximum=?, grade=? WHERE assignment_id=?`;
    var vals = [max,score,assignment_id];
    await makeQuery(query, vals);
    res.redirect(`/course?name=${course_name}`);
})

app.post('/edit_graded/:course_id', async function(req,res){
    const course_id = req.params.course_id.split('-')[0];
    const course_name = req.params.course_id.split('-')[1];
    const grading_type = req.body.grading_type.split('-')[0];
    const grading_id = req.body.grading_type.split('-')[1];
    const assignment_name = req.body.graded_assignment_name.split('-')[0];
    const assignment_id = req.body.graded_assignment_name.split('-')[1];
    const score = req.body.score;
    const max = req.body.max_score;
    var query = `UPDATE graded_assignments SET ? WHERE assignment_id = ?`;
    var vals ={
        grading_id: grading_id,
        grade: score,
        maximum: max,
        type: grading_type,
        class_id: course_id,
        assignment_name: assignment_name
    };

    await makeQuery(query, [vals, assignment_id]);
    var query = `UPDATE assignments SET maximum=?, grade=? WHERE assignment_id=?`;
    var vals = [max,score,assignment_id];
    await makeQuery(query, vals);
    res.redirect(`/course?name=${course_name}`);
})

app.post('/add_reading/:course_id', async function(req,res){
    const course_id = req.params.course_id.split('-')[0];
    const query = `INSERT INTO readings SET ?`;
    // console.log(req.body)
    const vals = {
        class_id: course_id,
        link: req.body.link,
        due_date: new Date(req.body.date),
        assigned_reading: req.body.reading_name,
        description: req.body.description,
        status: 'incomplete'
    }
    await makeQuery(query, vals);
    res.redirect(`/course?name=${req.params.course_id.split('-')[1]}`);
})

app.post('/add_assignment/:course_id', async function(req,res){
    const course_id = req.params.course_id.split('-')[0];
    const query = `INSERT INTO assignments SET ?`;
    // console.log(req.body)
    const vals = {
        class_id: course_id,
        link: req.body.link,
        due_date: new Date(req.body.date),
        name: req.body.assignment_name,
        description: req.body.description,
        assignment_type: req.body.assignment_type,
        status: 'incomplete'
    }
    await makeQuery(query, vals);
    res.redirect(`/course?name=${req.params.course_id.split('-')[1]}`);
})

app.post('/complete', async function(req,res){
    const table = req.query.task;
    const link = req.query.link;
    const item_id = req.query.item_id;

    switch (table) {
        case 'readings':
            var query = `UPDATE readings SET status="complete" WHERE readings_id=?`
            var vals = item_id;
            await makeQuery(query,vals);
            break;
        case 'assignments':
            var query = `UPDATE assignments SET status="complete" WHERE assignment_id=?`
            var vals = item_id;
            await makeQuery(query,vals);
            break;
        default:
            break;
    }

    res.redirect(link);

})

app.post('/incomplete', async function(req,res){
    const table = req.query.task;
    const link = req.query.link;
    const item_id = req.query.item_id;

    switch (table) {
        case 'readings':
            var query = `UPDATE readings SET status="incomplete" WHERE readings_id=?`
            var vals = item_id;
            await makeQuery(query,vals);
            break;
        case 'assignments':
            var query = `UPDATE assignments SET status="incomplete" WHERE assignment_id=?`
            var vals = item_id;
            await makeQuery(query,vals);
            break;
        default:
            break;
    }

    res.redirect(link);

})

app.get('/gpa', async function(req,res){
    var classes = await makeQuery('SELECT * FROM classes');
    var temp = []
    const gps = await makeQuery('SELECT * FROM gpa');
    var cum = await makeQuery('SELECT * FROM gpa');
    for (c of cum){
        for (x of classes){
            if(x.name == c.class_name){
                temp.push(c);
            }
        }
    }
    var sem = temp;
    

    var cum_quality_points = 0;
    var tot_hours = 0;
    var current_hours = 0;
    for(x of cum){
        if(x.quality_points > 0){
            cum_quality_points = cum_quality_points + x.quality_points;
            tot_hours = tot_hours + x.hours;
            current_hours = current_hours + x.hours;
        }else{
            current_hours = current_hours + x.hours;
        }
    }
    var gpa = cum_quality_points/tot_hours;
    var tos = [];
    const scale = [4, 3.66, 3.33, 3, 2.66, 2.33, 2];
    const scalel = ['A+/A', 'A-', 'B+', 'B', 'B-', 'C+', 'C'];
    for(x of scale){
        tos.push(gpa-x);
    }
    var sorted = tos.sort();
    for(x of scale){
        if(gpa-x == sorted[0]){
            average = scalel[scale.findIndex(c => c==x)];
        }
    }

    var tmdsas_grades = [];
    var tmdas_sum = 0;
    for(r of cum){
        if(r.letter != null){
            tmdsas_grades.push(tmdas_scale[r.letter]);
            tmdas_sum = tmdas_sum + tmdas_scale[r.letter];
            
        }
    }
    var tmdsas_grade = tmdas_sum / tmdsas_grades.length;

    var amcas_grades = [];
    var amcas_sum = 0;
    for(r of cum){
        if(r.letter != null){
            amcas_grades.push(amcas_scale[r.letter]);
            amcas_sum = amcas_sum + amcas_scale[r.letter];
            
        }
    }
    var amcas_grade = amcas_sum / amcas_grades.length;

    f21_qp = 0;
    f21_hours = 0;
    s22_qp = 0;
    s22_hours = 0;
    f22_qp = 0;
    f22_hours = 0;
    s23_qp = 0;
    s23_hours = 0;
    f23_qp = 0;
    f23_hours = 0;
    s24_qp = 0;
    s24_hours = 0;
    f24_qp = 0;
    f24_hours = 0;
    s25_qp = 0;
    s25_hours = 0;

    for (x of cum){
        switch (x.semester) {
            case 'F21':
                f21_qp = f21_qp + x.quality_points;
                f21_hours = f21_hours + x.hours;
                break;
            case 'S22':
                s22_qp = s22_qp + x.quality_points;
                s22_hours = s22_hours + x.hours;
                break;
            case 'F22':
                f22_qp = f22_qp + x.quality_points;
                f22_hours = f22_hours + x.hours;
                break;
            case 'S23':
                s23_qp = s23_qp + x.quality_points;
                s23_hours = s23_hours + x.hours;
                break;
            case 'F23':
                f23_qp = f23_qp + x.quality_points;
                f23_hours = f23_hours + x.hours;
                break;
            case 'S24':
                s24_qp = s24_qp + x.quality_points;
                s24_hours = s24_hours + x.hours;
                break;
            case 'F24':
                f24_qp = f24_qp + x.quality_points;
                f24_hours = f24_hours + x.hours;
                break;
            case 'S25':
                s25_qp = s25_qp + x.quality_points;
                s25_hours = s25_hours + x.hours;
                break;
            default:
                break;
        }
    }

    sem_gpas = [
        {
            semester: 'F21',
            gpa: f21_qp / f21_hours
        },
        {
            semester: 'S22',
            gpa: s22_qp / s22_hours
        },
        {
            semester: 'F22',
            gpa: f22_qp / f22_hours
        },
        {
            semester: 'S23',
            gpa: s23_qp / s23_hours
        },
        {
            semester: 'F23',
            gpa: f23_qp / f23_hours
        },
        {
            semester: 'S24',
            gpa: s24_qp / s24_hours
        },
        {
            semester: 'F24',
            gpa: f24_qp / f24_hours
        },
        {
            semester: 'S25',
            gpa: s25_qp / s25_hours
        }
    ]

    prev_gpa = [];

    for (x of sem_gpas){
        if(x.gpa > 0){
            prev_gpa.push(x.gpa);
        }
    }

    var trend = prev_gpa[prev_gpa.length - 1]-prev_gpa[0];


    var gradingscheme = await makeQuery('SELECT * FROM gradingscheme');
    var graded = await makeQuery('SELECT * FROM graded_assignments');
    res.render('gpa_calc.ejs', {classes: classes,
                            guidelines: gradingscheme,
                            graded: graded,
                            cum: cum,
                            sem: sem,
                            gpa: gpa,
                            tot_hours: tot_hours,
                            cum_quality_points: cum_quality_points,
                            current_hours: current_hours,
                            average: average,
                            tmdsas_grade: tmdsas_grade,
                            amcas_grade: amcas_grade,
                            sem_gpas: sem_gpas,
                            trend: trend,
                            gps: gps});
})

app.post('/add_course_gpa', async function(req,res){
    const course_name = req.body.course_name;
    const hours = req.body.hours;
    const letter_grade = req.body.grade;
    const quality_points = gpa_scale[letter_grade] * hours;
    const query = 'INSERT INTO gpa SET ?';
    const vals = {
        class_name: course_name,
        letter: letter_grade,
        hours: hours,
        quality_points: quality_points,
        semester: req.body.gpa_semester
    }
    makeQuery(query, vals);
    res.redirect('/gpa')
})

app.post('/update_course_gpa', async function(req,res){
    const course_name = req.body.course_name;
    var query = 'SELECT * FROM gpa WHERE class_name=?'
    const hourss = await makeQuery(query, course_name);
    const hours = hourss[0].hours;
    const letter_grade = req.body.grade;
    const quality_points = gpa_scale[letter_grade] * hours;
    var query = `UPDATE gpa SET ? WHERE gpa_id=${hourss[0].gpa_id}`;
    const semester = hourss[0].semester;
    if (letter_grade != "NULL"){
        var vals = {
            class_name: course_name,
            letter: letter_grade,
            hours: hours,
            quality_points: quality_points,
            semester: semester
        }
        makeQuery(query, vals);
    }else{
        var query = `UPDATE gpa SET letter = NULL, quality_points = NULL WHERE gpa_id=${hourss[0].gpa_id}`;
        makeQuery(query);
    }
    res.redirect('/gpa')
})

app.get('/admin', (req,res) => {
    res.render('admin.ejs');
})
app.get('/course_reqs', (req,res) => {
    res.render('course_reqs.ejs');
})

app.post('/add_coursedb', async function(req,res){
    const course_name = req.body.course_name;
    const hours = req.body.hours;
    const code = req.body.code;
    const dept_code = code.split(' ')[0];
    const level_code = parseInt(code.split(' ')[1]);
    const desc = req.body.description;
    const dist = req.body.distribution;
    var is_core_req = req.body.core_req;
    if(is_core_req == undefined){
        is_core_req = 0;
    }else{
        is_core_req = 1;
    }
    var prereq = req.body.prereq;
    if(prereq == undefined){
        prereq = 0;
    }

    var query = `INSERT INTO course_db SET ?`;

    var vals = {
        name: course_name,
        hours: hours,
        dept_code: dept_code,
        level_code: level_code,
        description: desc,
        distribution: dist,
        is_bioe_req: is_bioe_req,
        is_engi_req: is_engi_req,
        is_core_req: is_core_req,
        prereq: prereq
    }

    console.log(vals);

    await makeQuery(query, vals);
    res.redirect('/admin');

})


app.listen(port);
console.log(`Listening on port ${port}...`);