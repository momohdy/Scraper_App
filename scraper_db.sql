-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2023 at 07:50 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scraper_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_details`
--

CREATE TABLE `book_details` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `pagesCount` int(11) NOT NULL,
  `language` varchar(50) NOT NULL,
  `size` varchar(50) NOT NULL,
  `pdf` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_details`
--

INSERT INTO `book_details` (`id`, `title`, `author`, `pagesCount`, `language`, `size`, `pdf`) VALUES
(92, 'رواية أماريتا .. أرض زيكولا 2', 'عمرو عبد الحميد', 324, 'العربية', '7.34', '4234242342rtgfdgb'),
(93, 'رواية في قلبي انثى عبرية', 'خولة حمدي', 774, 'العربية', '16.20', '4234242342rtgfdgb'),
(94, 'رواية الشيطان يحكي', 'أحمد خالد مصطفى', 384, 'العربية', '18.20', '4234242342rtgfdgb'),
(95, 'رواية ليطمئن قلبي', 'أدهم شرقاوي', 338, 'العربية', '0.95', '4234242342rtgfdgb'),
(96, 'رواية وادي الذئاب المنسية', 'عمرو عبد الحميد', 296, 'العربية', '20.90', '4234242342rtgfdgb'),
(97, 'رواية أرض زيكولا', 'عمرو عبد الحميد', 434, 'العربية', '5.10', '4234242342rtgfdgb'),
(98, 'رواية قواعد العشق الأربعون', 'أليف شافاك', 512, 'العربية', '6.29', '4234242342rtgfdgb'),
(99, 'رواية بيت خالتي', 'أحمد خيري العمري', 397, 'العربية', '4.13', '4234242342rtgfdgb'),
(100, 'رواية انت لي الجزء الثاني', 'منى المرشود', 1239, 'العربية', '3.34', '4234242342rtgfdgb'),
(101, 'رواية أوبال', 'حنان لاشين', 352, 'العربية', '5.69', '4234242342rtgfdgb'),
(102, 'رواية الخيميائي', 'باولو كويلو', 194, 'العربية', '2.34', '4234242342rtgfdgb'),
(103, 'رواية 11:11 رب خرافة خير من ألف واقع', 'يوسف جاسم رمضان', 248, 'العربية', '8.12', '4234242342rtgfdgb'),
(104, 'رواية قواعد جارتين', 'عمرو عبد الحميد', 318, 'العربية', '37.00', '4234242342rtgfdgb'),
(105, 'رواية عوالم سفلية', 'سامح شوقي', 258, 'العربية', '5.44', '4234242342rtgfdgb'),
(106, 'رواية فتاة الياقة الزرقاء', 'عمرو عبد الحميد', 272, 'العربية', '9.66', '4234242342rtgfdgb'),
(107, 'رواية الأسود يليق بك', 'أحلام مستغانمي', 332, 'العربية', '3.81', '4234242342rtgfdgb'),
(108, 'رواية الليالي البيضاء', 'فيودور دوستويفسكي', 111, 'العربية', '5.41', '4234242342rtgfdgb'),
(109, 'رواية بحيرة العشق', 'عبدالله بوموزة', 162, 'العربية', '2.57', '4234242342rtgfdgb'),
(110, 'رواية كونسيلر', 'نرمين نحمدالله', 0, 'العربية', '52.42', '4234242342rtgfdgb'),
(111, 'رواية قبل أن تبرد القهوة الجزء الأول', 'توشيكازو كواغوشي', 255, 'العربية', '2.85', '4234242342rtgfdgb'),
(112, 'رواية ولنا في الحلال لقاء', 'أحمد عطا', 193, 'العربية', '0.82', '4234242342rtgfdgb'),
(113, 'رواية أحببتها في انتقامي', 'عليا حمدي', 1655, 'العربية', '50.30', '4234242342rtgfdgb');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_details`
--
ALTER TABLE `book_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_details`
--
ALTER TABLE `book_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
