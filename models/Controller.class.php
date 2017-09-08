<?php

include('Logger.class.php');

class Controller
{
    protected $content = [];
    protected $template = "";

    public function __construct()
    {
        if(isset($_POST)) {
            self::byPOST();
        }

        if(isset($_GET)) {
             self::byGET();
        } else {
            self::render();
        }
    }

    protected function byGET()
    {
        // Rendering by $GET['action'] value
        if(!isset($_GET['page'])) {
            self::render();
        } else {
            switch ($_GET['page']) {
                case 'single':
                    self::render('single.php',
                        [
                            "title" => "Single Page",
                            "activeWomen" => "header-menu__item_active"
                        ]);
                    break;
                default:
                    self::render();
            }
        }
    }

    protected function byPOST()
    {
    }

    public function render($templateName = 'v_cont_home.php', $page = ['title' => 'Сад в Домажино'], $path = 'views')
    {
        include("$path/v_header.php");
        include("$path/$templateName");
        include("$path/v_footer.php");
    }
}
