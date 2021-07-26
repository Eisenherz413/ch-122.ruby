var disabled_button = document.getElementById('dis_but');
disabled_button.onmouseover = function() {
    disabled_button.title = 'You cannot delete service with working orders';
}
