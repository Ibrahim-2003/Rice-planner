function openInnerCity(evt, cityName) {
    // Declare all variables
    var i, tabcontent, tablinks;
    console.log(cityName);

    // Get all elements with class="tabcontent" and hide them
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
    if(cityName == 'sem'){
    document.getElementById(cityName).style.display = "block";
    }else{
      
    document.getElementById(cityName).style.display = "flex";
    }
    evt.currentTarget.className += " active";
  }

  function openGPAForm(){
    document.getElementById('add_gpa_form').style.display = "flex";
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
      tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    }
    function closeGPAForm(){
    document.getElementById('add_gpa_form').style.display = "none";
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

      function pdf(){
        var doc = new jsPDF();
        doc.autoTable("#cum_table");
        doc.save("table.pdf");
      }
      