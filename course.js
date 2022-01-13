function openCity(evt, cityName) {
    // Declare all variables
    var i, tabcontent, tablinks;

    // Get all elements with class="tabcontent" and hide them

    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
      tabcontent[i].style.display = "none";
    }

    // Get all elements with class="tablinks" and remove the class "active"
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
      tablinks[i].className = tablinks[i].className.replace(" active", "");
    }

    // Show the current tab, and add an "active" class to the button that opened the tab
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
    active_course = cityName;
  }

  function openInnerCity(evt, cityName) {
    // Declare all variables
    var i, tabcontent, tablinks;

    // Get all elements with class="tabcontent" and hide them
    document.getElementById('home_rice_course').style.display = 'none'
    tabcontent = document.getElementsByClassName("inner_content");
    for (i = 0; i < tabcontent.length; i++) {
      tabcontent[i].style.display = "none";
    }

    // Get all elements with class="tablinks" and remove the class "active"
    tablinks = document.getElementsByClassName("inner_tablinks");
    for (i = 0; i < tablinks.length; i++) {
      tablinks[i].className = tablinks[i].className.replace(" active", "");
    }

    // Show the current tab, and add an "active" class to the button that opened the tab
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
  }

  function openCourseForm(){
  document.getElementById('add_course_form').style.display = "flex";
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }
  }
  function closeCourseForm(){
  document.getElementById('add_course_form').style.display = "none";
  }

function deleteCourse(course_id){
  submitQuery(`/remove_course/${course_id}`);
}

// function addReading(active_course){
//     submitQuery(`/add_reading/${active_course}`);
//   }

function openReadingForm(){
    document.getElementById('add_reading_form').style.display = "flex";
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
      tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    }
    function closeReadingForm(){
    document.getElementById('add_reading_form').style.display = "none";
    }

function openAssignmentForm(){
    document.getElementById('add_assignment_form').style.display = "flex";
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
      tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    }
    function closeAssignmentForm(){
    document.getElementById('add_assignment_form').style.display = "none";
    }

function markReadingComplete(reading_id){
    const current_link = window.location.href;
    submitQuery(`/complete?task=readings&link=${current_link}&item_id=${reading_id}`);
}
function markReadingIncomplete(reading_id){
    const current_link = window.location.href;
    submitQuery(`/incomplete?task=readings&link=${current_link}&item_id=${reading_id}`);
}
function markAssignmentComplete(reading_id){
    const current_link = window.location.href;
    submitQuery(`/complete?task=assignments&link=${current_link}&item_id=${reading_id}`);
}
function markAssignmentIncomplete(reading_id){
    const current_link = window.location.href;
    submitQuery(`/incomplete?task=assignments&link=${current_link}&item_id=${reading_id}`);
}


function submitQuery(query){
    var form = document.createElement('form');
    form.setAttribute('method', 'post');
    form.setAttribute('action', query);
    form.style.display = 'hidden';
    document.body.appendChild(form)
    form.submit();
  }
