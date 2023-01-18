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
(151, 40, 'VSDla8dC8e5mDj8LPgxNCokTTdvdG2shTeP838OnpE', '2023-01-17 07:29:10'),
(152, 40, 'j5HCCf4XJA8hchlye4C5PEqj2jfmQ74en6EgvtKDX2', '2023-01-17 07:32:40');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `Session`
--
ALTER TABLE `Session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_user_id` (`user_id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `Session`
--
ALTER TABLE `Session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;
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
