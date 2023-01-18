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

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `Inserat_Hat_Wochentag`
--
ALTER TABLE `Inserat_Hat_Wochentag`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `Inserat_Hat_Wochentag`
--
ALTER TABLE `Inserat_Hat_Wochentag`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=653;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
