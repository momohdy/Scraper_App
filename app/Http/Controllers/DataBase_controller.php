<?php

// namespace App\Http\Controllers;

namespace App\Http\Controllers;
use mysqli;



class DataBase_controller
{
    public $db_host = "localhost";
    public $db_user = "root";
    public $db_password = "";
    public $db_name = "scraper_db";
    public $connection;

    public function open_connection()
    {
        $this->connection = new mysqli($this->db_host, $this->db_user, $this->db_password, $this->db_name);
        // connect with our DB
        if (!$this->connection->connect_error) {
            return true;
        } else {
            echo "Error in Connection : " . $this->connection->connect_error;
            // return false ;
        }
    }

    public function close_connection()
    {
        if ($this->connection) {
            $this->connection->close();
        } else {
            echo "Connection is Not Opened";
        }
    }

    public function insert($qry)
    {
        if ($this->connection->query($qry)) {
            return true;
        } else {
            echo "Error :  " . mysqli_error($this->connection);
            return false;
        }
    }
}
