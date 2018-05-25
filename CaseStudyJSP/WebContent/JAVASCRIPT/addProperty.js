// function to retrieve current date
function formatDate(date){            
var d = new Date();
var day = '' + d.getDate();
var month = '' + (d.getMonth() + 1);
var year = d.getFullYear();
if(month.length < 2) month='0'+month;
if(day.length<2) day= '0'+day;
return [year, month, day].join('-');
}
function initPage() {
    document.getElementById("start-date").value = formatDate(new Date());   
}

// function for back button
function goBack() {
    window.history.back();
}

