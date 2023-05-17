-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 18, 2023 at 18:04 PM
-- Server version: 5.7.41
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Class_Manager`
--

-- --------------------------------------------------------

--
-- Table structure for table `Classe`
--

CREATE TABLE `Classe` (
  `id` bigint(10) NOT NULL,
  `anno` int(11) NOT NULL,
  `sezione` varchar(1) NOT NULL,
  `spec` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Classe`
--

INSERT INTO `Classe` (`id`, `anno`, `sezione`, `spec`) VALUES
(1, 5, 'A', 'informatica');

-- --------------------------------------------------------

--
-- Table structure for table `Alunno`
--

CREATE TABLE `Alunno` (
  `id` bigint(10) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `cognome` varchar(30) NOT NULL,
  `codice_fiscale` varchar(16) NOT NULL,
  `data_nascita` date NOT NULL,
  `id_classe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Alunno`
--

INSERT INTO `Alunno` (`id`, `nome`, `cognome`, `codice_fiscale`, `data_nascita`, `id_classe`) VALUES
(1, 'scimmia', 'apo', 'sgf', '2003-02-29', 1),
(2, 'mattia', 'vestri', 'alfdhsggdhtae', '2004-03-27', 1),
(3, 'orso', 'vina', 'dfjnd', '2003-05-30', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Classe`
--
ALTER TABLE `Classe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Alunno`
--
ALTER TABLE `Alunno`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Classe`
--
ALTER TABLE `Classe`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Alunno`
--
ALTER TABLE `Alunno`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
