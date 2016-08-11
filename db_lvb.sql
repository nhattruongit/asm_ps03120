-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2016 at 01:48 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_lvb`
--

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `id` int(15) NOT NULL,
  `name` varchar(45) NOT NULL,
  `birth_date` date NOT NULL,
  `birth_place` varchar(64) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(40) NOT NULL,
  `avatar` varchar(50) NOT NULL DEFAULT 'avatar.png',
  `type` varchar(15) NOT NULL,
  `vehicle_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`id`, `name`, `birth_date`, `birth_place`, `email`, `phone`, `avatar`, `type`, `vehicle_id`) VALUES
(1, 'GERHARD', '1981-10-05', 'Newyork', 'ger@localhost.com', '640100257', 'Lighthouse.jpg', 'Truong', 1),
(2, 'PLAMEN', '1978-10-05', 'Lodon', 'pla@localhost.com', '550167289', 'Lighthouse.jpg', 'Truong', 2),
(3, 'PENTTI OLAVI', '1956-06-25', 'Cannada', 'penti@localhost.es', '640100456', 'Tulips.jpg', 'Nightliner', 0),
(4, 'LEOPOLD LUTZ', '1995-03-05', 'Berline', 'leo@localhost.es', '78852522', 'Desert.jpg', 'Nightliner', 0),
(5, 'LOTHAR MARCEL', '1895-01-05', 'Tokio', 'lot@localhost.es', '66658595', 'Jellyfish.jpg', 'Autobus', 0),
(6, 'DOLF DOMINIK', '1986-07-05', 'Thailand', 'dol@localhost.es', '778856566', 'avatar.png', 'Autobus', 0),
(7, 'ENGELBERT PHILIPP', '1903-01-05', 'Cambodia', 'eng@localhost.es', '45569111', 'avatar.png', 'Regionalbus', 0),
(8, 'ELIAS EGON', '1994-01-05', 'Vienchian', 'eli@localhost.es', '33366555', 'avatar.png', 'Nightliner', 0),
(9, 'ELMAR WOLFGANG', '1996-01-05', '', 'elm@localhost.es', '9985633', 'avatar.png', 'Regionalbus', 0),
(10, 'JOHANN OTTO', '1994-09-05', '', 'joh@localhost.es', '123655558', 'avatar.png', 'Tram', 3),
(11, 'CURD MAX', '1994-05-03', '', 'ccr@localhost.uk', '788999', 'avatar.png', 'Regionalbus', 0),
(12, 'Jhon Doe 2', '1999-05-03', '', 'joe@localhost.uk', '123123', 'avatar.png', 'Nightliner', 0),
(13, 'Jhon Doe 3', '1999-05-03', '', 'joe@localhost.uk', '32331323', 'avatar.png', 'Autobus', 0),
(14, 'Jhon Doe 4', '1999-05-03', '', 'joe@localhost.uk', '78893399', 'avatar.png', 'Regionalbus', 0),
(15, 'Jhon Doe 5', '1999-05-03', '', 'joe@localhost.uk', '12312312', 'avatar.png', 'Tram', 0),
(16, 'Jhon Doe 6', '1999-05-03', '', 'joe@localhost.uk', '13212123', 'avatar.png', 'Regionalbus', 0),
(17, 'Jhon Doe 7', '1999-05-03', '', 'joe@localhost.uk', '333123223', 'avatar.png', 'Nightliner', 0),
(18, 'Jhon Doe 8', '1999-05-03', '', 'joe@localhost.uk', '23322313', 'avatar.png', 'Regionalbus', 0),
(19, 'Jhon Doe 9', '1999-05-03', '', 'joe@localhost.uk', '1233123', 'avatar.png', 'Tram', 4),
(20, 'Jhon Doe 1', '1999-05-03', '', 'joe@localhost.uk', '123123', 'avatar.png', 'Tram', 10),
(21, 'Jhon Doe 2', '1999-05-03', '', 'joe@localhost.uk', '33331434537', 'avatar.png', 'Autobus', 0),
(22, 'Jhon Doe 3', '1999-05-03', '', 'joe@localhost.uk', '545456', 'avatar.png', 'Regionalbus', 0),
(23, 'Jhon Doe 4', '1999-05-03', '', 'joe@localhost.uk', '6445646', 'avatar.png', 'Tram', 0),
(24, 'Jhon Doe 5', '1999-05-03', '', 'joe@localhost.uk', '6786788', 'avatar.png', 'Regionalbus', 0),
(25, 'Jhon Doe 6', '1999-05-03', '', 'joe@localhost.uk', '86778787', 'avatar.png', 'Regionalbus', 0),
(26, 'Jhon Doe 7', '1999-05-03', '', 'joe@localhost.uk', '67867867', 'avatar.png', 'Tram', 0),
(27, 'Jhon Doe 8', '1999-05-03', '', 'joe@localhost.uk', '6868678', 'avatar.png', 'Regionalbus', 0),
(28, 'Jhon Doe 9', '1999-05-03', '', 'joe@localhost.uk', '23424234', 'avatar.png', 'Tram', 5),
(29, 'Jhon Doe 1', '1999-05-03', '', 'joe@localhost.uk', '2234234', 'avatar.png', 'Regionalbus', 0),
(30, 'Jhon Doe 2', '1999-05-03', '', 'joe@localhost.uk', '788999', 'avatar.png', 'Autobus', 0),
(31, 'Jhon Doe 3', '1999-05-03', '', 'joe@localhost.uk', '234234', 'avatar.png', 'Nightliner', 0),
(32, 'Jhon Doe 4', '1999-05-03', '', 'joe@localhost.uk', '24234234', 'avatar.png', 'Regionalbus', 0),
(33, 'Jhon Doe 5', '1999-05-03', '', 'joe@localhost.uk', '23424234', 'avatar.png', 'Nightliner', 0),
(34, 'Jhon Doe 6', '1999-05-03', '', 'joe@localhost.uk', '324234', 'avatar.png', 'Regionalbus', 0),
(35, 'Jhon Doe 7', '1999-05-03', '', 'joe@localhost.uk', '234234234', 'avatar.png', 'Tram', 6),
(36, 'Jhon Doe 8', '1999-05-03', '', 'joe@localhost.uk', '234234234', 'avatar.png', 'Regionalbus', 0),
(37, 'Jhon Doe 9', '1999-05-03', '', 'joe@localhost.uk', '234234443', 'avatar.png', 'Nightliner', 0),
(38, 'Jhon Doe 1', '1999-05-03', '', 'joe@localhost.uk', '797897', 'avatar.png', 'Autobus', 0),
(39, 'Jhon Doe 2', '1999-05-03', '', 'joe@localhost.uk', '6456465', 'avatar.png', 'Regionalbus', 0),
(40, 'Jhon Doe 3', '1999-05-03', '', 'joe@localhost.uk', '97897', 'avatar.png', 'Tram', 7),
(41, 'Jhon Doe 4', '1999-05-03', '', 'joe@localhost.uk', '46456456', 'avatar.png', 'Regionalbus', 0),
(42, 'Jhon Doe 5', '1999-05-03', '', 'joe@localhost.uk', '4565666', 'avatar.png', 'Nightliner', 0),
(43, 'Jhon Doe 6', '1999-05-03', '', 'joe@localhost.uk', '123113213', 'avatar.png', 'Regionalbus', 0),
(44, 'Jhon Doe 7', '1999-05-03', '', 'joe@localhost.uk', '456456456', 'avatar.png', 'Regionalbus', 0),
(45, 'Jhon Doe 8', '1999-05-03', '', 'joe@localhost.uk', '456456889', 'avatar.png', 'Nightliner', 0),
(46, 'Jhon Doe 9', '1999-05-03', '', 'joe@localhost.uk', '4564668', 'avatar.png', 'Regionalbus', 0),
(47, 'Jhon Doe 1', '1999-05-03', '', 'joe@localhost.uk', '569797', 'avatar.png', 'Tram', 8),
(48, 'Jhon Doe 2', '1999-05-03', '', 'joe@localhost.uk', '9789798', 'avatar.png', 'Regionalbus', 0),
(49, 'Jhon Doe 3', '1999-05-03', '', 'joe@localhost.uk', '46545679', 'avatar.png', 'Regionalbus', 0),
(50, 'Jhon Doe 4', '1999-05-03', '', 'joe@localhost.uk', '64646456', 'avatar.png', 'Tram', 9),
(51, 'Jhon Doe 5', '1999-05-03', '', 'joe@localhost.uk', '645645666', 'avatar.png', 'Regionalbus', 0),
(52, 'Jhon Doe 6', '1999-05-03', '', 'joe@localhost.uk', '4654566', 'avatar.png', 'Nightliner', 0),
(53, 'Jhon Doe 7', '1999-05-03', '', 'joe@localhost.uk', '99887999', 'avatar.png', 'Autobus', 0),
(54, 'Jhon Doe 8', '1999-05-03', '', 'joe@localhost.uk', '666346456', 'avatar.png', 'Regionalbus', 0),
(55, 'Jhon Doe 9', '1999-05-03', '', 'joe@localhost.uk', '97979', 'avatar.png', 'Nightliner', 0),
(56, 'Duc', '0000-00-00', '', 'ducnhm@gmail.com', '0134123123', 'stomach-1051854_960_720.png', 'Tram', 1);

-- --------------------------------------------------------

--
-- Table structure for table `line`
--

CREATE TABLE `line` (
  `id` int(15) NOT NULL,
  `code` varchar(50) NOT NULL,
  `start_time_operation` time NOT NULL,
  `end_time_operation` time NOT NULL,
  `type` varchar(30) NOT NULL DEFAULT '',
  `avatar` varchar(50) NOT NULL,
  `map` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `line`
--

INSERT INTO `line` (`id`, `code`, `start_time_operation`, `end_time_operation`, `type`, `avatar`, `map`) VALUES
(1, 'Line T21', '06:00:00', '19:00:00', 'NT', 'Koala.jpg', 'Line_T21.svg'),
(8, 'ád', '00:00:12', '00:00:12', 'abc', 'Lighthouse.jpg', 'ád'),
(9, 'asd', '00:01:23', '00:01:23', 'NTruong', 'Lighthouse.jpg', 'sad');

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `station`
--

CREATE TABLE `station` (
  `id` int(15) NOT NULL,
  `name` varchar(80) NOT NULL,
  `position_station` varchar(15) NOT NULL DEFAULT '',
  `avatar` varchar(50) NOT NULL,
  `line_id` int(15) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `station`
--

INSERT INTO `station` (`id`, `name`, `position_station`, `avatar`, `line_id`) VALUES
(1, 'Wahren', 'START', '', 1),
(2, 'Wiederitzscher Str.', 'INTER', '', 1),
(3, 'Hohe Str,LVB', 'INTER', '', 1),
(4, 'Connewitz,Kreuz', 'INTER', '', 1),
(5, 'Wiedebachplatz', 'INTER', '', 1),
(6, 'Triftweg-T1', 'INTER', '', 1),
(7, 'Wildpark', 'END', '', 1),
(8, 'Messe-gel?nde', '', '', 0),
(9, 'Wiederitzsch-Mitte', '', '', 0),
(10, 'Wilhelminesnstr', '', '', 0),
(11, 'Pobplatz', '', '', 0),
(12, '4Deutsche,National,bibliothek', '', '', 0),
(13, 'Triftweg-T2', '', '', 0),
(14, 'L?bnig', '', '', 0),
(15, 'Gohlis-Nord', '', '', 0),
(16, 'Gott-schalstr', '', '', 0),
(17, 'S-Bf. Gohlis', '', '', 0),
(18, 'Nordplatz', '', '', 0),
(19, 'Zoo', '', '', 0),
(20, 'Lortzingstr', '', '', 0),
(21, 'Johannis-platz', '', '', 0),
(22, 'Gohlis,Landsberger Str.', '', '', 0),
(23, 'Viertelsweg', '', '', 0),
(24, 'Augustus-platz', '', '', 0),
(25, 'Breite Str', '', '', 0),
(26, 'Weibestr', '', '', 0),
(27, 'Kolmstr', '', '', 0),
(28, 'St?tteritz', '', '', 0),
(29, 'Gr?nau-S?d', '', '', 0),
(30, 'Hermann-Meyer-Str', '', '', 0),
(31, 'Adler', '', '', 0),
(32, 'Holbeinstr', '', '', 0),
(33, 'MarsChnerstr', '', '', 0),
(34, 'Johannisallee', '', '', 0),
(35, 'Naunhofer Str', '', '', 0),
(36, 'Tucha', '', '', 0),
(37, 'O.-Schmidt-Str', '', '', 0),
(38, 'Arcus Park', '', '', 0),
(39, 'Hofmeisterstr', '', '', 0),
(40, 'Felsenkeller', '', '', 0),
(41, 'Huttenstr', '', '', 0),
(42, 'Knaut-Kleeberg', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(15) NOT NULL,
  `username` varchar(50) NOT NULL,
  `gender` char(2) NOT NULL,
  `birth_date` date NOT NULL,
  `email` varchar(50) NOT NULL,
  `login` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `role` int(1) NOT NULL,
  `auth_key` varchar(64) NOT NULL,
  `pasword_reset_token` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `gender`, `birth_date`, `email`, `login`, `password`, `role`, `auth_key`, `pasword_reset_token`) VALUES
(5, 'nhattruongit', '', '0000-00-00', '', '', '4297f44b13955235245b2497399d7a93', 0, '', ''),
(4, 'admin', '', '0000-00-00', '', '', '21232f297a57a5a743894a0e4a801fc3', 1, '', ''),
(3, 'nhattruong', '', '0000-00-00', '', '', '123', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `id` int(15) NOT NULL,
  `name` varchar(30) NOT NULL,
  `capacity` int(15) NOT NULL,
  `type` varchar(30) NOT NULL DEFAULT '',
  `avatar` varchar(50) NOT NULL,
  `line_id` int(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`id`, `name`, `capacity`, `type`, `avatar`, `line_id`) VALUES
(1, 'LVB-T101', 300, 'NTruong', '', 1),
(2, 'LVB-T102', 300, 'NTruong', '', 1),
(3, 'LVB-T103', 300, 'NTruong', '', 1),
(4, 'LVB-T104', 300, 'NTruong', '', 1),
(5, 'LVB-T105', 300, 'NTruong', '', 1),
(6, 'LVB-T106', 300, 'NTruong', '', 1),
(7, 'LVB-T107', 300, 'NTruong', '', 1),
(8, 'LVB-T108', 300, 'NTruong', '', 1),
(9, 'LVB-T109', 300, 'NTruong', '', 1),
(10, 'LVB-T111', 300, 'NTruong', '', 1),
(11, 'LVB-T112', 300, 'NTruong', '', 0),
(12, 'LVB-T113', 300, 'NTruong', '', 0),
(13, 'LVB-T114', 300, 'NTruong', '', 0),
(14, 'LVB-A203', 80, 'Autobus', '', 0),
(15, 'LVB-A205', 50, 'Autobus', '', 0),
(16, 'LVB-A208', 80, 'Autobus', '', 0),
(17, 'LVB-A210', 100, 'Autobus', '', 0),
(18, 'LVB-A211', 80, 'Autobus', '', 0),
(19, 'LVB-A212', 80, 'Autobus', '', 0),
(20, 'LVB-A213', 80, 'Autobus', '', 0),
(21, 'LVB-A214', 100, 'Autobus', '', 0),
(22, 'LVB-A215', 150, 'Autobus', '', 0),
(23, 'LVB-A216', 100, 'Autobus', '', 0),
(24, 'LVB-A217', 80, 'Autobus', '', 0),
(25, 'LVB-A218', 50, 'Autobus', '', 0),
(26, 'LVB-N109', 100, 'Nightliner', '', 0),
(27, 'LVB-N110', 100, 'Nightliner', '', 0),
(28, 'LVB-N111', 100, 'Nightliner', '', 0),
(29, 'LVB-N112', 100, 'Nightliner', '', 0),
(30, 'LVB-N113', 120, 'Nightliner', '', 0),
(31, 'LVB-N114', 120, 'Nightliner', '', 0),
(32, 'LVB-N115', 130, 'Nightliner', '', 0),
(33, 'LVB-N116', 130, 'Nightliner', '', 0),
(34, 'LVB-N117', 130, 'Nightliner', '', 0),
(35, 'LVB-N118', 130, 'Nightliner', '', 0),
(36, 'LVB-N119', 100, 'Nightliner', '', 0),
(37, 'LVB-N120', 100, 'Nightliner', '', 0),
(38, 'LVB-N121', 100, 'Nightliner', '', 0),
(39, 'LVB-N122', 150, 'Nightliner', '', 0),
(40, 'LVB-N123', 150, 'Nightliner', '', 0),
(41, 'LVB-RB89', 100, 'Regionalbus', '', 0),
(42, 'LVB-RB90', 90, 'Regionalbus', '', 0),
(43, 'LVB-RB91', 90, 'Regionalbus', '', 0),
(44, 'LVB-RB92', 100, 'Regionalbus', '', 0),
(45, 'LVB-RB93', 90, 'Regionalbus', '', 0),
(46, 'LVB-RB94', 100, 'Regionalbus', '', 0),
(47, 'LVB-RB95', 90, 'Regionalbus', '', 0),
(48, 'LVB-RB96', 100, 'Regionalbus', '', 0),
(49, 'LVB-RB97', 100, 'Regionalbus', '', 0),
(50, 'LVB-RB98', 100, 'Regionalbus', '', 0),
(51, 'LVB-RB99', 100, 'Regionalbus', '', 0),
(52, 'LVB-RB10', 100, 'Regionalbus', '', 0),
(53, 'LVB-RB20', 90, 'Regionalbus', '', 0),
(54, 'LVB-RB30', 90, 'Regionalbus', '', 0),
(55, 'LVB-RB40', 100, 'Regionalbus', '', 0),
(56, 'LVB-RB50', 100, 'Regionalbus', '', 0),
(57, 'LVB-RB55', 100, 'Regionalbus', '', 0),
(58, 'LVB-RB56', 100, 'Regionalbus', '', 0),
(59, 'LVB-RB70', 100, 'Regionalbus', '', 0),
(60, 'LVB-RB77', 110, 'Regionalbus', '', 0),
(61, 'LVB-RB78', 110, 'Regionalbus', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_id` (`vehicle_id`);

--
-- Indexes for table `line`
--
ALTER TABLE `line`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `station`
--
ALTER TABLE `station`
  ADD PRIMARY KEY (`id`),
  ADD KEY `line_id` (`line_id`),
  ADD KEY `line_id_2` (`line_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `line_id` (`line_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `line`
--
ALTER TABLE `line`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `station`
--
ALTER TABLE `station`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
