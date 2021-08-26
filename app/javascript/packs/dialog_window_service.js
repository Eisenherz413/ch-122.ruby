let service_input = document.querySelector('#services');
let dialog_window = document.querySelector('#dialog_window');
let close_icon = document.querySelector('#close');
let services_checkboxes = document.querySelectorAll('.checkbox');
let coordinates;
let checkboxes = document.querySelectorAll('input[type=checkbox]');
let labels = document.querySelectorAll('.labels');
service_input.onclick = function(){
    dialog_window.show();
    service_input.value = null;
}
service_input.oninput = function(){
   for(let i = 0; i < checkboxes.length; i++){
       if(labels[i].innerHTML.toLowerCase().includes(service_input.value.toLowerCase())){
            services_checkboxes[i].style.display = 'block';
       } else {
           services_checkboxes[i].style.display = 'none';
       }
   }
}
close_icon.onclick = function(){
    dialog_window.close();
    check_checked_boxes(checkboxes);
}
function getInputCoordinates(input){
  coordinates = input.getBoundingClientRect();
}
function setDialogCoordinates(window){
    window.style.left = coordinates.left + "px";
    window.style.right = coordinates.right + "px";
    window.style.top = coordinates.top + 50 + "px";
}
window.onresize = function(){
    getInputCoordinates(service_input);
    setDialogCoordinates(dialog_window);
}
function check_checked_boxes(checkboxes){
    for (let i = 0; i < checkboxes.length; i++){
        if (checkboxes[i].checked) {
            service_input.value += labels[i].innerHTML + ' ';
        }
    }
}
getInputCoordinates(service_input);
setDialogCoordinates(dialog_window);