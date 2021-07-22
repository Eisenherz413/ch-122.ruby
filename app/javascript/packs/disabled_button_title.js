var disabled_buttons = document.getElementsByClassName('disabled_button_title');
function add_title(button){
    button.title = 'You cannot delete service with working orders';
};
for(var i in disabled_buttons) add_title(disabled_buttons[i]);
