// Get the modal
var allModal = document.getElementsByClassName('modal');


// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks on the button, open the modal 
function mapBtnFunction(btnId) {
	var modalId=btnId.replace("mapBtn","modal");
	var modal=document.getElementById(modalId);
	modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
// span.onclick = function() {
// 	for (var i=0;i<allModal.length;i++) {
// 		allModal[i].style.display = "none";
// 	}
// }

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
	for (var i=0;i<allModal.length;i++) {
		if (event.target == allModal[i]) {
			allModal[i].style.display = "none";
		}
	}	
}