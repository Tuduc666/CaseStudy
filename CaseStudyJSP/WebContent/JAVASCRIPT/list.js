// function to change the nav bar description to the selected dropdown item
function xcityClick(id, value) {
   // document.getElementById("selectCity").inner = document.getElementById("selectCity1").value;   
   // document.getElementById("selectCity").innerHTML = city;  
	document.getElementById(id).innerHTML = value; 
}

function selectClick(id, value) {
   // document.getElementById("selectCity").inner = document.getElementById("selectCity1").value;   
   // document.getElementById("selectCity").innerHTML = city;  
	document.getElementById(id).innerHTML = value; 
}

// function for back button
function goBack() {
    window.history.back();
}

