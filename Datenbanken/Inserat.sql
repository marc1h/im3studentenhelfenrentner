-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Erstellungszeit: 17. Jan 2023 um 08:32
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
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `Inserat`
--
ALTER TABLE `Inserat`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
