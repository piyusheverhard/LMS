-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2018 at 11:08 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int(100) NOT NULL,
  `user_id` int(100) DEFAULT NULL,
  `genre` varchar(300) NOT NULL,
  `title` varchar(300) NOT NULL,
  `author` varchar(300) NOT NULL,
  `publisher` varchar(300) NOT NULL,
  `edition` int(100) NOT NULL,
  `isbn` varchar(100) NOT NULL,
  `pages` int(100) NOT NULL,
  `date_issued` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `user_id`, `genre`, `title`, `author`, `publisher`, `edition`, `isbn`, `pages`, `date_issued`) VALUES
(1, 5, 'Horror', 'Zombie Day', 'Kazi Nazrul Islam', 'Nazrul Publications', 3, 'jfklsgsdlg5qw7q87w', 800, '2022-11-10'),
(2, 0, 'Adventure', 'Harry Potter and the chamber of secrets', 'J.K Rowling', 'Rowling''s Publications', 1, '29003dfkljeldkf', 669, '0000-00-00'),
(3, 4, 'Adventure', 'A Song of Ice & Fire', 'George R. R. Martin', 'Game of Thrones', 8, 'has23dadh123427', 1200, '2022-11-22'),
(4, 5, 'Adventure', 'Harry Potter & The Half Blood Prince', 'J.K Rowling', 'Rowling''s Publications', 1, '31ghf1jk24kjb3l4l1gjh', 667, '2022-11-10'),
(5, 2, 'Adventure', 'Harry Potter & The Deadly Hallows', 'J.K Rowling', 'Rowling''s Publications', 2, 'agsh32gqkj12bkl134', 798, '2022-11-10'),
(6, 0, 'Science', 'A Brief History of Time', 'Stephen Hawkings', 'Transworld Digital', 2, 'slkdjfow093e934', 325, '0000-00-00'),
(7, 0, 'Mystery', 'The Mysterious Affair at Styles', 'Agatha Christie', 'Agatha Publications', 2, '4zgdhdv2dfh81v31sdgj', 669, '0000-00-00'),
(8, 0, 'Programming', 'The Algorithm Design Manual', 'Steven S Skiena', 'springer', 3, '29348lksdjfslf0', 1045, '0000-00-00'),
(9, 0, 'Fiction', 'The Kite Runner', 'Khalid Hosseini', 'aks', 2, 'skdfjqw9ie9sfjlj', 654, '0000-00-00'),
(10, 0, 'Modern Literature', 'In Search of Lost Time', 'Marcel Proust', 'NY Publishers', 8, '2j3nsd235habh3dfkj', 4215, '2022-11-22');

-- --------------------------------------------------------

--
-- Table structure for table `books_request`
--

CREATE TABLE `books_request` (
  `request_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `genre` varchar(300) NOT NULL,
  `title` varchar(300) NOT NULL,
  `author` varchar(300) NOT NULL,
  `edition` int(10) NOT NULL,
  `isbn` varchar(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books_request`
--

INSERT INTO `books_request` (`request_id`, `user_id`, `genre`, `title`, `author`, `edition`, `isbn`, `date`) VALUES
(1, 2, 'Mystery', 'Murder on the Orient Express', 'Agatha Christie', 3, '12gf3gj1jhr3jklj1ugjkb', '2022-11-10'),
(2, 5, 'Mystery', 'The Mysterious Affair at Styles', 'Agatha Christie', 3, '4zgdhdv2dfh81v31sdgj', '2022-11-10'),
(3, 4, 'Mystery', 'The Mysterious Affair at Styles', 'Agatha Christie', 3, '4zgdhdv2dfh81v31sdgj', '2022-11-10');

-- --------------------------------------------------------

--
-- Table structure for table `issue_date`
--

CREATE TABLE `issue_date` (
  `issue_id` int(10) NOT NULL,
  `book_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue_date`
--

INSERT INTO `issue_date` (`issue_id`, `book_id`, `user_id`, `date`) VALUES
(1, 1, 2, '2022-11-10'),
(2, 5, 2, '2022-11-10'),
(3, 3, 2, '2022-11-10'),
(4, 4, 5, '2022-11-10'),
(5, 1, 2, '2022-11-10'),
(6, 5, 5, '2022-11-10'),
(7, 1, 5, '2022-11-10'),
(8, 4, 5, '2022-11-10'),
(9, 3, 5, '2022-11-10'),
(10, 5, 5, '2022-11-10'),
(11, 3, 5, '2022-11-10'),
(12, 3, 5, '2022-11-10'),
(13, 3, 5, '2022-11-10'),
(14, 3, 5, '2022-11-10'),
(15, 3, 4, '2022-11-10'),
(16, 1, 5, '2022-11-10'),
(17, 3, 5, '2022-11-10'),
(18, 5, 2, '2022-11-10'),
(19, 3, 4, '2022-11-22'),
(20, 7, 4, '2022-11-22'),
(21, 7, 5, '2022-11-22'),
(22, 3, 4, '2022-11-22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(100) NOT NULL,
  `name` varchar(300) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(300) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `password` varchar(300) NOT NULL,
  `address` varchar(300) NOT NULL,
  `gender` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `phone`, `email`, `is_admin`, `password`, `address`, `gender`) VALUES
(1, 'Piyush Kumar', '1711568524', 'piyush_admin@gmail.com', 1, 'piyush08', 'Brahmputra Hostel, NIT Patna', 'Male'),
(2, 'Pradeep Kumar Singh', '1764431859', 'pradeep_admin@gmail.com', 1, 'pradeep10', 'Brahmputra Hostel, NIT Patna', 'Male'),
(3, 'Sneh Patel', '1924184941', 'sneh_admin@gmail.com', 1, 'sneh', 'Brahmputra Hostel, NIT Patna', 'Male'),
(4, 'Ashish Alok', '1723645289', 'ashish_admin@gmail.com', 1, 'ashish', 'Brahmputra Hostel, NIT Patna', 'Male'),
(5, 'Kush Kumar Sharma', '1782963175', 'kush_admin@gmail.com', 1, 'kush', 'Brahmputra Hostel, NIT Patna', 'Male'),
(6, 'Abhishek Ranjan', '1932478293', 'abhishek@gmail.com', 0, 'abhishek', 'Darbhanga, Bihar', 'Male'),
(7, 'Muskan malik', '1726972364', 'muskan@gmail.com', 0, 'muskan', 'Noida, India', 'Female');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `books_request`
--
ALTER TABLE `books_request`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `issue_date`
--
ALTER TABLE `issue_date`
  ADD PRIMARY KEY (`issue_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `books_request`
--
ALTER TABLE `books_request`
  MODIFY `request_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `issue_date`
--
ALTER TABLE `issue_date`
  MODIFY `issue_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
