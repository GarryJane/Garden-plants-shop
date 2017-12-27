<?php

include('Logger.class.php');

class Controller
{
    protected $shopDB;
    protected $content = [];

    public function __construct()
    {
        $this->shopDB = new DB('127.0.0.1', 'gp_shop', 'ddl_dev', 'Moodvin1');
        // главная страница
        $this->content = $this->shopDB->getAllCategories();
        self::render();
    }

    public function render($path = 'views', $templateName = 'v_cont_home.php', $page = ['title' => 'Сад в Домажино'])
    {
        include("$path/v_header.php");
        include("$path/$templateName");
        include("$path/v_footer.php");

    }
}
