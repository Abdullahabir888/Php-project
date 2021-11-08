-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2021 at 06:39 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Id` int(50) NOT NULL,
  `First` varchar(100) NOT NULL,
  `Last` varchar(100) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Id`, `First`, `Last`, `Username`, `Email`, `Password`, `Image`) VALUES
(1, 'Abdullah', 'Abir', 'Abdullah Abir', 'abdullahabir888@gmail.com', 'abir77898', 'de.jpg'),
(2, 'Jubair', 'Ibna Jaman', 'jaman', 'jaman17@gmail.com', '5524iu', 'de.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `Books_Id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Authors` varchar(100) NOT NULL,
  `Edition` varchar(50) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `Quantity` int(50) NOT NULL,
  `Department` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`Books_Id`, `Name`, `Authors`, `Edition`, `Status`, `Quantity`, `Department`) VALUES
(1, 'Megh Boleche Jabo Jabo', 'Humayun Ahmed', '3rd Edition', 'Available ', 9, 'Novel'),
(2, 'Bristy Bilash', 'Humayun Ahmed', '4th', 'Available', 14, 'Novel');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `Username` varchar(50) NOT NULL,
  `Comment` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`Username`, `Comment`) VALUES
('khanm', 'I want x book'),
('khanm', 'i want that book');

-- --------------------------------------------------------

--
-- Table structure for table `fine`
--

CREATE TABLE `fine` (
  `Username` varchar(100) NOT NULL,
  `BooksID` int(100) NOT NULL,
  `Return Date` date NOT NULL,
  `Days` int(100) NOT NULL,
  `Fine` int(50) NOT NULL,
  `Status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `issue`
--

CREATE TABLE `issue` (
  `Username` varchar(50) NOT NULL,
  `Books_Id` int(50) NOT NULL,
  `Approve` varchar(100) NOT NULL,
  `Issue` date NOT NULL,
  `Return` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `issue`
--

INSERT INTO `issue` (`Username`, `Books_Id`, `Approve`, `Issue`, `Return`) VALUES
('khanm', 2, '<p style=\"color:red; background-color:black;\">EXPIRED</p>', '2021-02-01', '2021-02-04');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `First` varchar(50) NOT NULL,
  `Last` varchar(50) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Contact` varchar(50) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`First`, `Last`, `Username`, `Email`, `Password`, `Contact`, `image`) VALUES
('Anam', 'khan', 'Anam khan', 'khanm@gmail.com', 'lkkisf8', '1877885521', 'de.jpg'),
('Maria', 'Hossin', 'hoissinma', 'hoissinma@yahoo.com', 'mmb200', '1688522420', 'de.jpg'),
('antor', 'khan', 'antorkhan', 'antorkhan@gmail.com', 'kkl1167', '01876696535', 'de.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`Books_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `Books_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
