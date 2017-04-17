/**
 * Изменить значок #nav-sm-btn при нажатии на кнопку #checkbox
 * в зависимости от значения #checkbox.checked
 * */

let checkbox = document.getElementById("nav-sm-checkbox");
let showIcon = '<i class="fa fa-times" aria-hidden="true"></i>';
let hideIcon = '<i class="fa fa-bars nav_highlight" aria-hidden="true"></i>';

checkbox.addEventListener("click", function(event) {
	let btn = document.getElementById("nav-sm-btn");
	btn.innerHTML = (event.target.checked) ? showIcon : hideIcon;
});