<?php

namespace App\Models ;

use App\Http\Controllers\DataBase_controller;



// require_once 'C:\xampp\htdocs\test-app\app\Http\Controllers/DataBase_controller.php';

class BookDetails
{
    public $id;
    public $title;
    public $author;
    public $pagesCount;
    public $language;
    public $size;
    // public $pdf;

    protected $db  ;



    public function addBookDetails(BookDetails $book)
    {
        $this->db = new DataBase_controller;
        if ($this->db->open_connection()) {
            $query = "INSERT INTO `book_details` (`id`, `title`, `author`, `pagesCount`, `language`, `size`, `pdf`) VALUES (NULL, '$book->title', '$book->author', '$book->pagesCount', '$book->language', '$book->size', '4234242342rtgfdgb');";
            if ($this->db->insert($query)) {
                return true;
            } else {
                echo "Error in Add Book_details Query";
            }
        } else {
            echo "Error in Connection ";
            return false;
        }
    }
}
