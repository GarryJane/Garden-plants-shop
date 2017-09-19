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
    this.container = document.getElementById(event.target.getAttribute('data-target'));
    let ifContainerHidden = this.container.classList.contains('hidden'); // запоминаем состояние на момент нажания

    // обходим все элементы с классом 'dialog-box-container', добавляем класс 'hidden'
    let allDialogBoxes = document.getElementsByClassName('dialog-box-container');
    for(let box in allDialogBoxes) {
        let ifHidden = false;
        if(typeof allDialogBoxes[box] == "object") {
            ifHidden = allDialogBoxes[box].classList.contains('hidden');
            if(!ifHidden) {
                allDialogBoxes[box].classList.add('hidden');
            }
        }
    }
    // в зависимости от исходного состояния окна скрываем либо показываем его
    if(ifContainerHidden) {
        this.container.classList.remove('hidden');
    } else {
        this.container.classList.add('hidden');
    }

}

/**
 * Функция постановки видео на пауза
 */
function pauseVideo() {
    videoPlayer.pause();
}

document.getElementById("feedbackItem")
    .addEventListener("click", toggle);
document.getElementById("mail-form__close-btn")
    .addEventListener("click", toggle);

document.getElementById("mapItem")
    .addEventListener("click", toggle);
document.getElementById("map__close-btn")
    .addEventListener("click", toggle);

document.getElementById("videoItem")
    .addEventListener("click", toggle)
    .addEventListener("click", pauseVideo);
document.getElementById("video__close-btn")
    .addEventListener("click", toggle)
    .addEventListener("click", pauseVideo);

let videoPlayer = document.getElementById("video");





