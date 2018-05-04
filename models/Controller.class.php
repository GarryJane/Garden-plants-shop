<?php

include('Logger.class.php');

class Controller
{
    protected $shopDB;
    protected $content = [];

    public function __construct()
    {

        $this->shopDB = new DB('127.0.0.1', 'gp_shop', 'ddl_dev', 'Moodvin1');
        $this->contentSelect();
        // главная страница
    }

    public function contentSelect()
    {
        if (isset($_GET['page'])) {
            switch ($_GET['page']) {
                case 'main' :
                    $this->content = $this->shopDB->getAllCategories();
                    self::render();
                    break;
                case 'cat' :
                    $this->content = $this->shopDB->getCategoryPlants($_GET['id']);
                    self::render('v_cont_single_cat.php', ['title' => 'Сад в Домажино']);
                    echo "<pre>";
                    break;
                default:
                    header('Location: /?page=main');
            }
        } else {
            header('Location: /?page=main');
        }
    }

    protected function render($templateName = 'v_cont_home.php', $page = ['title' => 'Сад в Домажино'], $path = 'views')
    {
        include("$path/v_header.php");
        include("$path/$templateName");
        include("$path/v_footer.php");
    }

}
