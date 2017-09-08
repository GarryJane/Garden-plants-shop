<!DOCTYPE html>
<!-- git test -->
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title><?= $page['title'] ?></title>
    <link rel="stylesheet" href="vendor/normalize-css/normalize.css">
    <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Neucha" rel="stylesheet">
    <link rel="stylesheet" href="vendor/bootstrap/bootstrap.css">
    <link rel="stylesheet" href="css/navbar.css">
    <link href="css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="css/categories.css">
    <link rel="stylesheet" href="css/feedback.css">
    <link rel="stylesheet" href="css/map.css">
</head>
<body>
<div class="container">

    <div class="top-menu-bar">
        <span class="top-menu-logo">Сад в Домажино</span>
        <label class="nav-sm-btn" for="nav-sm-checkbox" id="nav-sm-btn">
            <i class="fa fa-bars nav_highlight"></i></label>
        <input type="checkbox" id="nav-sm-checkbox" class="nav-sm-checkbox">
        <ul class="top-menu">
            <li class="top-menu__item top-menu__item_active" title="Домашняя страница">
                <a>
                    <i title="Домашняя страница" class="fa fa-home" aria-hidden="true"></i>
                </a>
            </li>
            <li class="top-menu__item" title="Как сделать заказ">
                <a href="#">
                    <i class="fa fa-shopping-cart" aria-hidden="true" title="Как сделать заказ"></i>
                </a>
            </li>
            <!--
            <li class="top-menu__item" title="Фото сада"><a title="Фото сада" href="#">
                    <i class="fa fa-camera-retro" aria-hidden="true"></i>
                </a>
            </li>
            -->
            <li id="videoItem" class="top-menu__item" data-target="video-container" title="Видео сада">
                <a title="Видео сада" href="#" data-target="video-container">
                    <i class="fa fa-video-camera" aria-hidden="true" data-target="video-container"></i>
                </a>
            </li>
            <li id="feedbackItem" class="top-menu__item" data-target="mail-form-container" title="Написать сообщение">
                <a title="Написать сообщение" data-target="mail-form-container">
                    <i class="fa fa-pencil" aria-hidden="true" data-target="mail-form-container"></i>
                </a>
            </li>
            <li id="mapItem" class="top-menu__item" data-target="map-container" title="посмотреть на карте">
                <a data-target="map-container">
                    <i title="посмотреть на карте" class="fa fa-map-o" aria-hidden="true"
                       data-target="map-container"></i>
                </a>
            </li>
        </ul>
    </div> <!-- ./top-menu-bar -->


    <!-- Mail Form Dialog Window -->
    <div id="mail-form-container" class="dialog-box-container hidden">
        <div class="row">
            <div class="col-xs-1 _close-btn-container" data-target="mail-form-container">
                <div id="mail-form__close-btn" class="mail-form__close-btn" data-target="mail-form-container"><i
                            class="fa fa-times" aria-hidden="true" data-target="mail-form-container"></i>
                </div>
            </div>
            <div class="col-xs-11 col-md-11">
                <form class="mail-form" action="#" method="POST">
                    <fieldset class="mail-form__fieldset">
                        <legend class="mail-form__legend">Пишите:</legend>
                        <input type="text" name="name" id="name" class="mail-form__input-name" placeholder="Имя">
                        <input type="email" name="email" id="email" class="mail-form__input-email"
                               placeholder="Ваш e-mail">
                        <textarea name="email-body" id="email-body" class="mail-form__input-email-body"
                                  placeholder="Текст сообщения"></textarea>
                        <div class="row mail-form_btns">
                            <input type="submit" class="col-xs-4 mail-form__btn mail-form__btn_submit"
                                   value="Отправить">
                            <input type="reset" class="col-xs-4 col-xs-offset-4 mail-form__btn mail-form__btn_reset"
                                   value="Очистить">
                        </div>
                    </fieldset>
                </form>
            </div>

        </div>
    </div><!-- ./mail-form-container hidden -->

    <!-- Map Dialog Window -->
    <div id="map-container" class="dialog-box-container hidden">
        <div id="close-btn-container" class="col-xs-1 _close-btn-container">
            <div id="map__close-btn" class="mail-form__close-btn" data-target="map-container">
                <i class="fa fa-times" aria-hidden="true" data-target="map-container"></i>
            </div>
        </div>
        <div class="col-xs-11">
            <script type="text/javascript" charset="utf-8" async
                    src="https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3A0-92sXWSY-zAaoUgllAXTc2st_9E6uYc&amp;width=100%25&amp;height=450&amp;lang=ru_RU&amp;scroll=true">
            </script>
        </div>
    </div> <!-- ./map-container hidden -->

    <!-- Video Dialog Window-->
    <div id="video-container" class="dialog-box-container hidden">
        <div class="col-sm-1">
            <div id="close-btn-container" class="col-xs-1 _close-btn-container">
                <div id="video__close-btn" class="mail-form__close-btn" data-target="video-container">
                    <i class="fa fa-times" aria-hidden="true" data-target="video-container"></i>
                </div>
            </div>
        </div>
        <div class="col-xs-11">
        <video id="video" width="320" height="240" controls>
            <source src="https://www.w3schools.com/tags/movie.mp4" type="video/mp4">
            <source src="https://www.w3schools.com/tags/movie.ogg" type="video/ogg">
            Your browser does not support the video tag.
        </video>
        </div>
    </div>