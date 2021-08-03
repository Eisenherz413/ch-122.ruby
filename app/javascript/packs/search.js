/*const capacitySpan = document.getElementById("capacity");
const minusButtom = document.getElementById("minus");
const plusButtom = document.getElementById("plus");

let capacity = 1;

capacitySpan.innerText = capacity;

minusButtom.addEventListener("click", decreaseCapacity);
plusButtom.addEventListener("click", increaseCapacity);

function decreaseCapacity() {
    if (capacity > 1) {
        capacity -= 1;
        capacitySpan.innerText = capacity;
    }
}

function increaseCapacity() {
    if (capacity < 6) {
        capacity += 1;
        capacitySpan.innerText = capacity;
    }
}*/
// $('#mdp-demo').multiDatesPicker();

function changeSort() {
    const searchButton = document.getElementById("search-button");
    searchButton.click();
}

const sortInput = document.getElementById("sort-input");
sortInput.addEventListener("change", changeSort);


// $(document).on "click", "div.ransack-pagination a", (event) ->
//     pageNum = $(this).attr("href").match(/page=([0-9]+)/)[1]
// $('.ransack-page').val(pageNum)
// $('form.ransack-form').submit()
// event.preventDefault()