-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Erstellungszeit: 16. Jan 2023 um 09:03
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
-- Tabellenstruktur für Tabelle `Inserat`
--

CREATE TABLE `Inserat` (
  `ID` int(11) NOT NULL,
  `aktion` tinyint(1) NOT NULL,
  `thema` varchar(100) NOT NULL,
  `kurzbeschrieb` varchar(200) NOT NULL,
  `zeit` text NOT NULL,
  `preis` text NOT NULL,
  `kanton` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `timestamp` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `Inserat`
--

INSERT INTO `Inserat` (`ID`, `aktion`, `thema`, `kurzbeschrieb`, `zeit`, `preis`, `kanton`, `user`, `timestamp`) VALUES
(148, 1, 'Haare schneiden', 'In der Coiffeusen-Lehre habe ich gelernt, wie man Haare schneidet und färbt. Ich kann Frisuren für Mann, Frau und Kind schneiden. Ich berate Sie auch gerne in Bezug auf passende Schnitte, Farben und P', 'jeweils von 16 bis 20 Uhr', 'CHF 25 - 80', 21, 44, '2023-01-12 09:48:13'),
(149, 0, 'Gartenhelfer', 'Ich brauche Hilfe beim Pflegen von meinem Rasen, meinen Sträuchern und meine Hecken. Ich suche jemand, der körperlich fit ist und motiviert ist, an der fischen Luft zu arbeiten.', 'ganztags', 'CHF 35.00/h', 12, 45, '2023-01-12 09:50:03'),
(150, 1, 'Computer einrichten', 'Ich helfe Ihnen bei der Einrichtung von den verschiedenen Computer-Programmen (Mail, Google, usw.). Ich kenne mich gut mit Windows und MacOS aus. ', '12 - 19 Uhr', 'CHF 30.00/h', 6, 46, '2023-01-12 10:13:17'),
(151, 0, 'Mail-Konto aufräumen', 'Ich suche eine Person, die sich gut mit der Technik auskennt und mir mit meinem Mail-Konto helfen kann. Ich habe den Überblick über all die einkommenden Mails verloren und brauche eine übersichtliche ', 'ganztags', 'CHF 45.00', 21, 47, '2023-01-12 10:18:55'),
(152, 1, 'Gartenarbeiten', 'Ich bin oft in der Natur und arbeite gerne an die frischen Luft. Ich weiss, wie man den Boden bearbeitet, Rasenfläche anlegt, Pflanzen einsetzt, ausgräbt und lagert und wie man Wasserbecken baut und b', 'ganztags', 'CHF 48.00/h', 25, 48, '2023-01-12 10:23:25'),
(180, 1, 'Babysitting', 'Ich bin angehende Kindergärtnerin und suche nach einem Job. Ich bin gerne spontan und unternehme vieles draussen in der Natur. Dies würde ich gerne auch den Kinder weitergeben.', 'ganztags', 'CHF 27.00/h', 2, 51, '2023-01-14 09:15:15'),
(181, 0, 'Schnee schaufeln', 'Ich suche eine junge und fitte Person, die den Schnee vor meinem Haus räumen kann. Es handelt sich um einen kurzen Weg, welcher jeden Morgen (bei Schneefall) geräumt werden muss.', '6 - 10 Uhr', 'CHF 33.00/h', 16, 52, '2023-01-14 09:18:47'),
(182, 0, 'Rasen mähen', 'Ich suche Hilfe beim Rasen mähen und Unkraut entfernen in meinem Garten. Die Wiese ist 30 Quadratmeter gross. Den Rasenmäher und die nötige Ausrüstung stelle ich zur Verfügung.', '8-12 Uhr und 13:30-17 Uhr', 'CHF 23.00/h', 1, 53, '2023-01-15 11:32:14');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Inserat_Hat_Wochentag`
--

CREATE TABLE `Inserat_Hat_Wochentag` (
  `ID` int(11) NOT NULL,
  `inserat_id` int(11) NOT NULL,
  `wochentag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `Inserat_Hat_Wochentag`
--

INSERT INTO `Inserat_Hat_Wochentag` (`ID`, `inserat_id`, `wochentag_id`) VALUES
(526, 148, 2),
(527, 148, 4),
(528, 148, 6),
(535, 149, 1),
(536, 149, 3),
(537, 149, 2),
(538, 149, 4),
(539, 149, 5),
(540, 149, 7),
(541, 150, 2),
(542, 150, 3),
(543, 150, 6),
(544, 151, 2),
(545, 151, 1),
(546, 151, 4),
(547, 151, 5),
(548, 151, 6),
(549, 152, 6),
(550, 152, 7),
(619, 176, 1),
(620, 176, 2),
(621, 176, 3),
(626, 0, 1),
(627, 0, 2),
(631, 180, 4),
(632, 180, 7),
(633, 180, 6),
(634, 180, 5),
(635, 181, 1),
(636, 181, 2),
(637, 181, 3),
(638, 181, 4),
(639, 181, 5),
(640, 181, 6),
(641, 181, 7),
(642, 182, 1),
(643, 182, 3),
(644, 182, 5),
(645, 182, 6);

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

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Session`
--

CREATE TABLE `Session` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(42) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `Session`
--

INSERT INTO `Session` (`id`, `user_id`, `token`, `timestamp`) VALUES
(148, 40, 'MLrgBd7u7dHVAMSZhLnaWc1HhjbtxsGom7tSB7c0FV', '2023-01-15 16:19:04'),
(149, 40, 'LB3js19FFCzr5FjrtD5gTrxaZhqfb8B2vnQuxx3lLU', '2023-01-15 16:52:04');

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
(40, 'urs@urs.ch', 'Urs', 'Mäder', 'Kirchweg 8', 7000, 'Arbon', '1', '$2y$10$PvE9FEeG4IBwTdZf11eRaO5dDyvhfU1e2kwEkCYYyy7DW9U5/FVhO', '12345678', '1940-01-17', ''),
(44, 'carla@sommer.ch', 'Carla', 'Sommer', 'Kammelenbergstrasse 103', 9320, 'Frasnacht', '0', '$2y$10$gwxiXZknZQhM417BZn8/EO8PqIsysZCS/N7sS2XyMTqSluJXF5p46', 'CH 5887878C431249M8H41', '1997-02-15', ''),
(45, 'hansp@freidorfer.ch', 'Hanspeter', 'Freidorfer', 'Wolfensbergstrasse 69', 6410, 'Rigi Klösterli', '1', '$2y$10$VyB6IQneule3DYwk0xIDZexHPfPE9u4sNVqSmziQhgdS9O9eiiOoK', 'CH 0550403XTFAZX9T4EY5', '1945-04-18', ''),
(46, 'enrico@widmer.ch', 'Enrico', 'Widmer', 'Via Luzzas 60', 2577, 'Finsterhennen', '0', '$2y$10$7fQf0yQBNA0RwUWIYCn5UuqHQ5Ku9vJGecLGoP30y05rXnMIQ4cPG', 'CH 689610261YCEK74D80J', '1994-09-06', ''),
(47, 'elisabeth@maurer.ch', 'Elisabeth', 'Maurer', 'Hasenbühlstrasse 17', 8259, 'Bleuelhausen', '1', '$2y$10$gYx9/ses/m8Oru82m/K8YuCysUNusVarg4FJhx8RSUnOGBMXuB6CG', 'CH 8293501IS6Y8UQCUXDA', '1949-12-01', ''),
(48, 'fred@fur.ch', 'Frédéric', 'Furrer', 'Clius 140', 8102, 'Oberengstringen', '0', '$2y$10$lMnqP8D7uzgBF0FOX4e.eO9ahzzIWa.mx4q59Qpbj37uVrDoy8Rpi', 'CH 375404597404KA0B914', '1999-07-29', ''),
(49, 'roger@pfund.ch', 'Roger', 'Pfund', 'Im Sandbüel 66', 1702, 'Fribourg', '1', '$2y$10$8fIMHQ.FBJ/neXHYG2Z5U.8vdixLjLovmB5b2u0odKX76.sDKTvx2', 'CH 78068131F807S0O199P', '1953-11-04', ''),
(51, 'marion@leuthold.ch', 'Marion', 'Leuthold', 'Pfaffacherweg 15', 9107, 'Schönau', '0', '$2y$10$xKC9F8eRdckaBeuQghoLseH1jWv3GsUyQqqCibdxIvMDrPvWhD6by', 'CH39 0070 0115 6518 4917 3', '1998-08-08', ''),
(52, 'giacomo@benoit.ch', 'Giacomo', 'Benoit', 'Bitzistrasse 3', 9000, 'St.Gallen', '1', '$2y$10$ZEYCudrC6WSYvOhS8rBXp.60CVjyvGi9fjWG6l1f0ch59XzHeWaN.', 'CH3288515I495W9C75596', '1951-05-18', ''),
(53, 'julia@raetz.ch', 'Julia', 'Rätz', 'Jakobstrasse 12', 4665, 'Oftringen', '1', '$2y$10$y4ay7eMibpUemt/Svi684ebjSp/Mxi.SqM3E1IH3AlXhLYrj0wOHG', 'CH38801832KMJ8VB0GEIP', '1947-01-24', '');

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
-- Indizes für die Tabelle `Inserat`
--
ALTER TABLE `Inserat`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Kanton` (`kanton`),
  ADD KEY `User` (`user`);

--
-- Indizes für die Tabelle `Inserat_Hat_Wochentag`
--
ALTER TABLE `Inserat_Hat_Wochentag`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `Kanton`
--
ALTER TABLE `Kanton`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `Session`
--
ALTER TABLE `Session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_user_id` (`user_id`);

--
-- Indizes für die Tabelle `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `Wochentag`
--
ALTER TABLE `Wochentag`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `Inserat`
--
ALTER TABLE `Inserat`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;
--
-- AUTO_INCREMENT für Tabelle `Inserat_Hat_Wochentag`
--
ALTER TABLE `Inserat_Hat_Wochentag`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=646;
--
-- AUTO_INCREMENT für Tabelle `Kanton`
--
ALTER TABLE `Kanton`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT für Tabelle `Session`
--
ALTER TABLE `Session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;
--
-- AUTO_INCREMENT für Tabelle `User`
--
ALTER TABLE `User`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT für Tabelle `Wochentag`
--
ALTER TABLE `Wochentag`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `Session`
--
ALTER TABLE `Session`
  ADD CONSTRAINT `session_user_id` FOREIGN KEY (`user_id`) REFERENCES `User` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
