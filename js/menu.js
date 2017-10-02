'use strict';
/**
 * Функция переключения фидимости блока с id как в атрибуте data-target
 */
function toggle(event) {
    this.container = document.getElementById(event.target.getAttribute('data-target'));
    console.log('!!');
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
    console.log('CLICK');
}

/**
 * Функция постановки видео на пауза
 */
function pauseVideo() {
    videoPlayer.pause();
}
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
 * Привязываем кнопкам меню и диалоговых окон обработчики событий
 */
let videoPlayer = document.getElementById("video");
let videoItem = document.getElementById("videoItem");
let videoCloseBtn = document.getElementById("video__close-btn");

document.getElementById("feedbackItem").addEventListener("click", toggle);
document.getElementById("mail-form__close-btn").addEventListener("click", toggle);

document.getElementById("mapItem").addEventListener("click", toggle);
document.getElementById("map__close-btn").addEventListener("click", toggle);

videoItem.addEventListener("click", toggle);
videoItem.addEventListener("click", pauseVideo);
videoCloseBtn.addEventListener("click", toggle);
videoCloseBtn.addEventListener("click", pauseVideo);






