const capacitySpan = document.getElementById("capacity");
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
}
