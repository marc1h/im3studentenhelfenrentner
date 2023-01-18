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
-- Tabellenstruktur für Tabelle `Kanton`
--

CREATE TABLE `Kanton` (
  `ID` int(11) NOT NULL,
  `kanton` varchar(42) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `Kanton`
--

INSERT INTO `Kanton` (`ID`, `kanton`) VALUES
(1, 'Aargau'),
(2, 'Appenzell Ausserrhoden'),
(3, 'Appenzell Innerrhoden'),
(4, 'Basel-Landschaft'),
(5, 'Basel-Stadt'),
(6, 'Bern'),
(7, 'Freiburg'),
(8, 'Genf'),
(9, 'Glarus'),
(10, 'Graubünden'),
(11, 'Jura'),
(12, 'Luzern'),
(13, 'Neuenburg'),
(14, 'Nidwalden'),
(15, 'Obwalden'),
(16, 'St.Gallen'),
(17, 'Schaffhausen'),
(18, 'Schwyz'),
(19, 'Solothurn'),
(20, 'Tessin'),
(21, 'Thurgau'),
(22, 'Uri'),
(23, 'Waadt'),
(24, 'Wallis'),
(25, 'Zürich'),
(26, 'Zug');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `Kanton`
--
ALTER TABLE `Kanton`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `Kanton`
--
ALTER TABLE `Kanton`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
