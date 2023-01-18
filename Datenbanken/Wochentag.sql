-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Erstellungszeit: 17. Jan 2023 um 08:33
-- Server-Version: 10.3.31-MariaDB-0+deb10u1
-- PHP-Version: 7.0.33-57+0~20211119.61+debian10~1.gbp5d8ba5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `528400_3_1`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Wochentag`
--

CREATE TABLE `Wochentag` (
  `ID` int(11) NOT NULL,
  `wochentag` varchar(42) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `Wochentag`
--

INSERT INTO `Wochentag` (`ID`, `wochentag`) VALUES
(1, 'Mo'),
(2, 'Di'),
(3, 'Mi'),
(4, 'Do'),
(5, 'Fr'),
(6, 'Sa'),
(7, 'So');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `Wochentag`
--
ALTER TABLE `Wochentag`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `Wochentag`
--
ALTER TABLE `Wochentag`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
