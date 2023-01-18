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
-- Tabellenstruktur für Tabelle `User`
--

CREATE TABLE `User` (
  `id` int(11) NOT NULL,
  `email` varchar(42) NOT NULL,
  `vorname` varchar(42) NOT NULL,
  `nachname` varchar(42) NOT NULL,
  `strasse` varchar(42) NOT NULL,
  `plz` int(4) NOT NULL,
  `ort` varchar(42) NOT NULL,
  `funktion` varchar(42) NOT NULL,
  `password` varchar(200) NOT NULL,
  `bankverbindung` varchar(42) NOT NULL,
  `geburtsdatum` date NOT NULL,
  `foto` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `User`
--

INSERT INTO `User` (`id`, `email`, `vorname`, `nachname`, `strasse`, `plz`, `ort`, `funktion`, `password`, `bankverbindung`, `geburtsdatum`, `foto`) VALUES
(40, 'urs@urs.ch', 'Urs', 'Mäder', 'Kirchweg 8', 7000, 'Arbon', '1', '$2y$10$PvE9FEeG4IBwTdZf11eRaO5dDyvhfU1e2kwEkCYYyy7DW9U5/FVhO', 'CH12345678910', '1940-01-17', ''),
(44, 'carla@sommer.ch', 'Carla', 'Sommer', 'Kammelenbergstrasse 103', 9320, 'Frasnacht', '0', '$2y$10$gwxiXZknZQhM417BZn8/EO8PqIsysZCS/N7sS2XyMTqSluJXF5p46', 'CH 5887878C431249M8H41', '1997-02-15', ''),
(45, 'hansp@freidorfer.ch', 'Hanspeter', 'Freidorfer', 'Wolfensbergstrasse 69', 6410, 'Rigi Klösterli', '1', '$2y$10$VyB6IQneule3DYwk0xIDZexHPfPE9u4sNVqSmziQhgdS9O9eiiOoK', 'CH 0550403XTFAZX9T4EY5', '1945-04-18', ''),
(46, 'enrico@widmer.ch', 'Enrico', 'Widmer', 'Via Luzzas 60', 2577, 'Finsterhennen', '0', '$2y$10$7fQf0yQBNA0RwUWIYCn5UuqHQ5Ku9vJGecLGoP30y05rXnMIQ4cPG', 'CH 689610261YCEK74D80J', '1994-09-06', ''),
(47, 'elisabeth@maurer.ch', 'Elisabeth', 'Maurer', 'Hasenbühlstrasse 17', 8259, 'Bleuelhausen', '1', '$2y$10$gYx9/ses/m8Oru82m/K8YuCysUNusVarg4FJhx8RSUnOGBMXuB6CG', 'CH 8293501IS6Y8UQCUXDA', '1949-12-01', ''),
(48, 'fred@fur.ch', 'Frédéric', 'Furrer', 'Clius 140', 8102, 'Oberengstringen', '0', '$2y$10$lMnqP8D7uzgBF0FOX4e.eO9ahzzIWa.mx4q59Qpbj37uVrDoy8Rpi', 'CH 375404597404KA0B914', '1999-07-29', ''),
(49, 'roger@pfund.ch', 'Roger', 'Pfund', 'Im Sandbüel 66', 1702, 'Fribourg', '1', '$2y$10$8fIMHQ.FBJ/neXHYG2Z5U.8vdixLjLovmB5b2u0odKX76.sDKTvx2', 'CH 78068131F807S0O199P', '1953-11-04', ''),
(51, 'marion@leuthold.ch', 'Marion', 'Leuthold', 'Pfaffacherweg 15', 9107, 'Schönau', '0', '$2y$10$xKC9F8eRdckaBeuQghoLseH1jWv3GsUyQqqCibdxIvMDrPvWhD6by', 'CH39 0070 0115 6518 4917 3', '1998-08-08', ''),
(52, 'giacomo@benoit.ch', 'Giacomo', 'Benoit', 'Bitzistrasse 3', 9000, 'St.Gallen', '1', '$2y$10$ZEYCudrC6WSYvOhS8rBXp.60CVjyvGi9fjWG6l1f0ch59XzHeWaN.', 'CH3288515I495W9C75596', '1951-05-18', ''),
(53, 'julia@raetz.ch', 'Julia', 'Rätz', 'Jakobstrasse 12', 4665, 'Oftringen', '1', '$2y$10$y4ay7eMibpUemt/Svi684ebjSp/Mxi.SqM3E1IH3AlXhLYrj0wOHG', 'CH38801832KMJ8VB0GEIP', '1947-01-24', '');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `User`
--
ALTER TABLE `User`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
