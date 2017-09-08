<?php

/**
 * Class Logger
 */
abstract class Logger
{
    const DEF_FILENAME = "logger.log";

    /**
     * @description Метод logMsg, записывает $msg в $dirName/$fileName
     * @param string $dirName
     * @param string $fileName
     * @param string $msg (* может быть и array)
     */
    public function logMsg( $msg = "", $dirName = "IS NOT SET", $fileName = "IS NOT SET")
    {
        if ($dirName === "IS NOT SET") {
            $dirName = dirname("logs");
        }
        if ($fileName === "IS NOT SET") {
            $fileName = "logger.log";
        }
        $fileName = $dirName . "/" . $fileName;

        if (is_array($msg)) {
            $msg = self::arr2str($msg);
        }

        $msg = date("Ymd H:i:s")
            . " (start){\n\n$msg\n\n}"
            . date("Ymd H:i:s")
            ." (stop)\n\n";

        $file = fopen($fileName, 'a+');
        fwrite($file, $msg);
        fclose($file);
    }

    /**
     * Метод arr2str рекурсивно обходит многомерный массив, превращая его в string
     * @param array $arr
     * @return string
     */
    protected function arr2str($arr)
    {
        $result = "";
        $numItems = count($arr);
        $counter = 1;
        foreach ($arr as $k => $a) {
            if (is_array($a)) {
                $result .= self::arr2str($a) . "\n";
            } else {
                $result .= ($counter < $numItems) ? $a . ", " : $a; 
            }
            $counter++;
        }
        return $result;
    }
}