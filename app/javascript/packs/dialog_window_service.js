var service_input = document.querySelector('#services');
var dialog_window = document.querySelector('#dialog_window');
var close_icon = document.querySelector('#close');
var services_checkboxes = document.querySelector('.checkboxes');
var right, top, bottom, left;
var boxes = document.querySelectorAll('.boxes');
service_input.onclick = function(){
    dialog_window.show();
}
close_icon.onclick = function(){
    dialog_window.close();
}
function getInputCoordinates(input){
    var coordinates_of_input = input.getBoundingClientRect();
     top = coordinates_of_input.top;
     bottom = coordinates_of_input.bottom;
     left = coordinates_of_input.left;
     right = coordinates_of_input.right;
}
function setDialogCoordinates(left, right, bottom, top){
    dialog_window.style.left = left + "px";
    dialog_window.style.right = right + "px";
    // dialog_window.style.top = top + "px";
    dialog_window.style.bottom = bottom + 287 + "px";
}
getInputCoordinates(service_input);
setDialogCoordinates(left, right, bottom, top);
// services_checkboxes.onclick = function() {
//     for (let i = 0; i < boxes.length; i++) {
//         if (boxes[i].checked && service_input.value !== boxes[i].name) {
//             service_input.value += ' '+ boxes[i].name;
//         }
//     }