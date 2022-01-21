function openTodo(){
    button = document.getElementById("checkBtn");
    if(button.innerText == "checklist"){
        element = document.getElementById("todoOpenAss");
        element.style.display = "block";
        reading = document.getElementById("todoOpenReading");
        reading.style.display = "block";
        button.innerText = "close";
    }else{
        element = document.getElementById("todoOpenAss");
        element.style.display = "none";
        reading = document.getElementById("todoOpenReading");
        reading.style.display = "none";
        button.innerText = "checklist";
    }
}

function openAss(){
    element = document.getElementById("openAssHide");
    scroll = document.getElementById("assScroll");
    if(element.style.display != "block"){
        element.style.display = "block";
        scroll.style.display = "block";
        btn = document.getElementById("assBtn");
        btn.innerText = "close";
    }else{
        element.style.display = "none";
        scroll.style.display = "none";
        btn = document.getElementById("assBtn");
        btn.innerText = "assignment_late";
    }
}

function openRead(){
    scroll = document.getElementById("readScroll");
    element = document.getElementById("openReadHide");
    if(element.style.display != "block"){
        element.style.display = "block";
        scroll.style.display = "block";
        btn = document.getElementById("readBtn");
        btn.innerText = "close";
    }else{
        element.style.display = "none";
        scroll.style.display = "none";
        btn = document.getElementById("readBtn");
        btn.innerText = "auto_stories";
    }
}