-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2020 at 03:22 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `suchart`
--

-- --------------------------------------------------------

--
-- Table structure for table `motorcycle_taxi`
--

CREATE TABLE `motorcycle_taxi` (
  `Firstname` varchar(100) NOT NULL,
  `Lastname` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `id_citizen` varchar(100) NOT NULL,
  `Phone` varchar(100) NOT NULL,
  `bank_account` varchar(100) NOT NULL,
  `id_car` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `motorcycle_taxi`
--

INSERT INTO `motorcycle_taxi` (`Firstname`, `Lastname`, `Email`, `id_citizen`, `Phone`, `bank_account`, `id_car`) VALUES
('สมสมุทร', 'เกรียงไกร', 'sompp@hotmail.com', '11020234354323', '0957673909', '1378265432', 'นน7634');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id_citizen` varchar(100) NOT NULL,
  `id_citizen_taxi` varchar(100) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id_citizen`, `id_citizen_taxi`, `rating`) VALUES
('090326789098765', '11020234354323', 5),
('098906789098765', '11020234354323', 1),
('1010106789098765', '11020234354323', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Firstname` varchar(100) NOT NULL,
  `Lastname` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `id_citizen` varchar(100) NOT NULL,
  `Phone` varchar(100) NOT NULL,
  `bank_account` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Firstname`, `Lastname`, `Email`, `id_citizen`, `Phone`, `bank_account`) VALUES
('สมพาย', 'กรอยแก้ว', 'somplay@hotmail.com', '090326789098765', '0877654321', '1200067890'),
('สร้อยกรอง', 'ร้อยแหวน', 'koi@hotmail.com', '098906789098765', '0938504321', '0663367890'),
('นัยพร', 'ทรัพทอง', 'nui@hotmail.com', '1010106789098765', '09010101321', '1030400890');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `motorcycle_taxi`
--
ALTER TABLE `motorcycle_taxi`
  ADD PRIMARY KEY (`id_citizen`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD KEY `id_citizen_taxi` (`id_citizen_taxi`),
  ADD KEY `id_citizen` (`id_citizen`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_citizen`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`id_citizen_taxi`) REFERENCES `motorcycle_taxi` (`id_citizen`),
  ADD CONSTRAINT `rating_ibfk_2` FOREIGN KEY (`id_citizen`) REFERENCES `users` (`id_citizen`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
