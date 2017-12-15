<?php

include('Logger.class.php');

define('TITLE', 'Сад в Домажино');
define('HOME', 'v_cont_home.php');
define('VIEW_PATH', 'views');


class Controller
{
    protected $content = [];
    protected $template = "";

    public function __construct()
    {
        if (isset($_POST)) {
            self::byPOST();
        }

        if (isset($_GET)) {
            self::byGET();
        } else {
            self::render();
        }
    }

    protected function byGET()
    {
        self::render();
    }

    protected function byPOST()
    {
        self::render();
    }

    public function render($templateName = HOME, $page = ['title' => TITLE], $path = VIEW_PATH)
    {
        include("$path/v_header.php");
        include("$path/$templateName");
        include("$path/v_footer.php");
    }
}
