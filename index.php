<?php

require_once ('ClassesLoader.php');

// Загрузка Классов
// 
ClassesLoader::load(['models']);

$page = new Controller();
