<?php

abstract class ClassesLoader
{
    const DEF_DIRS = ['./'];
    const FILES_MASK_REG = "/.class.php/";

    /**
     * Метод load, загружает классы, соответствующие $fileMask из $dirArr
     * @param array $dirArr - массив директорий
     * @param string $fileMask - маска файла
     * @return array|bool
     */
    static function load($dirArr = self::DEF_DIRS, $fileMask = self::FILES_MASK_REG)
    {
        if (!is_array($dirArr)) {
            echo "Wrong Syntax!\nusage: ClassLoader::load( [\$dirArr {Array}], [\$fileMask {string}] ) \n";
            return false;
        }
        $incClassesArr = [];
        foreach ($dirArr as $dir) {
            $dir = __DIR__ . '/' . $dir;
            $files = scandir($dir);
            foreach ($files as $file) {
                if (preg_match($fileMask, $file)) {
                    $incClassesArr[] = $file;
                    include_once($dir . "/" . $file);
                }
            }
        }
        if (($n = count($incClassesArr)) > 0) {
            return [
                'status' => 'success',
                'added' => $n,
                'list' => $incClassesArr
            ];
        }
        return false;
    }
}
