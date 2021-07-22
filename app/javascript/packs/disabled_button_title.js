var disabled_button = document.getElementById('disabled_button_title');
disabled_button.onmouseover = function(){
    disabled_button.title = "You cannot delete service with working orders";
}