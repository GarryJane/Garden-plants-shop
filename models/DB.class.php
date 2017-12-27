<?php
/**
 * Created by PhpStorm.
 * User: ddl
 * Date: 04.08.17
 * Time: 14:01
 */

class DB
{
    public $dbLink, $host, $schema, $user, $password;

    function __construct($host = false, $schema = false, $user = false, $password = false)
    {
        // проверка аргументов
        if (!$host || !$schema || !$user || !$password) {
            echo "Error !!!\nUsage dbConnect(host, schema, user, password)\n";
            return false;
        }
        $this->host = $host;

        $this->schema = $schema;
        $this->user = $user;
        $this->password = $password;
        $this->connect();
    }

    protected function connect()
    {
        // соединение с DB
        $this->dbLink = new mysqli($this->host, $this->user, $this->password, $this->schema);
        mysqli_set_charset( $this->dbLink, 'utf8' );

        // вывод ошибки в случае неудачного соединения
        if ($this->dbLink->connect_errno) {
            echo "Неудалось подключиться: " . $this->dbLink->connect_error . "\n";
            return false;
        }
        return true;
    }

    protected function disconnect()
    {
        mysqli_close($this->dbLink);
    }

    public function getAllCategories()
    {
        $sql = 'SELECT * FROM categories';
        $result = $this->dbLink->query($sql);
        $resArr = [];
        for ($i = 0; $i <= $result->num_rows; $i++) {
            $resArr[] = $result->fetch_array(MYSQLI_ASSOC);
        }
        return $resArr;
    }
}