let button = document.getElementById("but");
let name_field = document.getElementById("service_name");
name_field.onchange = function(){
     if(name_field.value.length >= 2){
         button.disabled = false;
     } else if (name_field.value.length < 2) {
         button.disabled = true;
     }

};
let ddData = document.getElementById("icons").values;
let hidden = document.getElementById("service_icon_url");
$('#icons').ddslick({
    data: ddData,
    width: 200,
    imagePosition: "left",
    selectText: "Select icon",
    onSelected: function (data) {
        hidden.value = data.selectedData.value;

    }
});
