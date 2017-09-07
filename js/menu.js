/**
 * Изменить значок #nav-sm-btn при нажатии на кнопку #checkbox
 * в зависимости от значения #checkbox.checked
 * */

let checkbox = document.getElementById("nav-sm-checkbox");
let showIcon = '<i class="fa fa-times" aria-hidden="true"></i>';
let hideIcon = '<i class="fa fa-bars nav_highlight" aria-hidden="true"></i>';
let btn = document.getElementById("nav-sm-btn");

checkbox.addEventListener("click", function(event) {
	btn.innerHTML = (event.target.checked) ? showIcon : hideIcon;
});

/**
 * Функция переключения фидимости блока с id как в атрибуте data-target
 */
function toggle() {
    this.container = document.getElementById(event.target.getAttribute('data-target'))
    let ifHidden = false;
    for (let k in this.container.classList) {
        if (this.container.classList[k] === 'hidden')
            ifHidden = true;
    }
    if(ifHidden) {
        this.container.classList.remove('hidden');
    } else {
        this.container.classList.add('hidden');
    }
}

let feedbackItem = document.getElementById("feedbackItem");
let feedbackCloseBtn = document.getElementById("mail-form__close-btn");

let mapItem = document.getElementById("mapItem");
let mapCloseBtn = document.getElementById("map__close-btn");

feedbackItem.addEventListener("click", toggle);
feedbackCloseBtn.addEventListener("click", toggle);

mapItem.addEventListener("click", toggle);
mapCloseBtn.addEventListener("click", toggle);