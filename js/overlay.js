let container = $('#full-size-container'); // контейнер полноразмерной картинки
let fullSizeImg = $('#full-size-img'); // полноразмерная картинка

if (container.length && fullSizeImg.length) {

    let page = $('.content'); // контент

    container.click(function () {
        container.hide();
        fullSizeImg.attr('src', '').attr('alt', '');
        page.css('opacity', '1');
    });

    $('.category-represent__img').click(function (e) {
        fullSizeImg.attr('src', e.target.src);
        container.show();
        page.css('opacity', '0.5');
    });
}