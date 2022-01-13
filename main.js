const express = require('express');
const path = require('path');
const multer = require('multer');
const fs = require('fs');
const util = require('util');
const { join, resolve } = require("path");
const mysql = require("mysql");
var bodyParser = require('body-parser');



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
    var assignments = await makeQuery('SELECT * FROM assignments');
    var readings = await makeQuery('SELECT * FROM readings');
    res.render('home.ejs', {classes: classes,
                            readings: readings,
                            assignments: assignments});
})

app.get('/course', async function(req, res) {
    try {
        // console.log(req.query.name)
        var blip = await makeQuery('SELECT * FROM classes WHERE name=?', `${req.query.name}`);
        var classes = await makeQuery('SELECT * FROM classes');
        var course_id = blip[0].class_id;
        // console.log(blip)
        var assignments = await makeQuery('SELECT * FROM assignments WHERE class_id=? ORDER BY status DESC, due_date ASC', `${course_id}`);
        var readings = await makeQuery('SELECT * FROM readings WHERE class_id=? ORDER BY status DESC, due_date ASC', `${course_id}`);
        // console.log(readings)
        res.render('course.ejs', {classes: classes,
                                    active_course: req.query.name,
                                    course: blip,
                                    assignments: assignments,
                                    readings: readings});
    } catch (e) {
        console.error(e);
    }
    
})

app.post('/remove_course/:key', async function(req,res){
    const course_id = req.params.key;
    const query = `DELETE FROM \`classes\` WHERE class_id=?`;
    const vals = course_id;
    await makeQuery(query,vals);
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
          professor: req.body.professor
      }
      await makeQuery(query, vals);
    res.redirect('/');
    }else{
        res.end("Error, Multer couldn't upload")
    }
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
        description: req.body.description
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


app.listen(port);
console.log(`Listening on port ${port}...`);