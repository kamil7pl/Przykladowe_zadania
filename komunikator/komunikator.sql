-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2020 at 02:17 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `komunikator`
--

-- --------------------------------------------------------

--
-- Table structure for table `wiadomosci`
--

CREATE TABLE `wiadomosci` (
  `id` int(11) NOT NULL,
  `Nadawca` text COLLATE utf8_polish_ci NOT NULL,
  `Odbiorca` text COLLATE utf8_polish_ci NOT NULL,
  `Tresc` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `wiadomosci`
--

INSERT INTO `wiadomosci` (`id`, `Nadawca`, `Odbiorca`, `Tresc`) VALUES
(1, 'Kamil', 'Agata', 't1'),
(2, 'Kamil', 'Agata', 't2'),
(3, 'Agata', 'Kamil', 'Agata pisze'),
(4, 'Piotrek', 'Agata', 'Piotrek do Agaty'),
(5, 'Agata', 'Piotrek', 'Agata pisze'),
(6, 'Agata', 'Piotrek', 'Agata pisze2'),
(7, 'Piotrek', 'Agata', 'P do Agaty'),
(8, 'Piotrek', 'Piotrek', 'Agata pisze33'),
(9, 'Piotrek', 'Agata', 'Agata pisze3300');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wiadomosci`
--
ALTER TABLE `wiadomosci`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wiadomosci`
--
ALTER TABLE `wiadomosci`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
