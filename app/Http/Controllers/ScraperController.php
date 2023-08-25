<?php

namespace App\Http\Controllers;

use App\Models\BookDetails;
use Goutte\Client;

require_once 'C:\xampp\htdocs\test-app\app\Models/BookDetails.php' ;


class ScraperController extends Controller
{
    private $results  = array();

    public function scraper()
    {
        // Increase maximum execution time to 180 seconds
        set_time_limit(180);

        $client = new Client;
        // Get Data from Home page
        $websiteHomeUrl = 'https://www.kotobati.com/section/%D8%B1%D9%88%D8%A7%D9%8A%D8%A7%D8%AA';
        $websiteHomePage = $client->request('GET', $websiteHomeUrl);

        $websiteHomePage->filter('.views-infinite-scroll-content-wrapper .views-row .book-teaser')->each(function ($book) use ($client) {

            $a = $book->filter('a')->first();
            $link = $a->link();

            $bookPage = $client->click($link);

            // now , we are in bookDetails page
            $divOfDetails = $bookPage->filter('.media-body');

            $bookTitle = $divOfDetails->filter('h2')->text();
            $bookAuthor = $divOfDetails->filter('p a')->first()->text();
            $bookPagesCount = $divOfDetails->filter('.nav .numero:first-child')->text();
            $bookLanguage = $divOfDetails->filter('.nav .nav-item:nth-child(2) p:last-child')->text();
            $bookSize = $divOfDetails->filter('.nav .nav-item:nth-child(3) .numero:last-child')->text();





            $book = new BookDetails ;
            $book->title = $bookTitle;
            $book->author = $bookAuthor;
            $book->pagesCount = $bookPagesCount;
            $book->language = $bookLanguage;
            $book->size = $bookSize;


            if ($book->addBookDetails($book)) {
                echo "bookTitle : ", $bookTitle, " & ";
                echo "bookAuthor : ", $bookAuthor, " & ";
                echo "bookPagesCount : ", $bookPagesCount, " & ";
                echo "bookLanguage : ", $bookLanguage, " & ";
                echo "bookSize : ", $bookSize, " & ";
                echo "<br><br>";
            } else {
                echo "Book didnt added";
            }
        });

        return 1 ;
    }
}
