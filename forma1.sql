-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Feb 13. 16:48
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `forma1`
--
CREATE DATABASE IF NOT EXISTS `forma1` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `forma1`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `versenyzok`
--

CREATE TABLE `versenyzok` (
  `versenyzo_id` int(11) NOT NULL,
  `versenyzo_nev` varchar(100) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `versenyzo_kep` varchar(50) NOT NULL,
  `versenyzo_orszag` varchar(50) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `versenyzo_leiras` text CHARACTER SET utf8 COLLATE utf8_hungarian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- A tábla adatainak kiíratása `versenyzok`
--

INSERT INTO `versenyzok` (`versenyzo_id`, `versenyzo_nev`, `versenyzo_kep`, `versenyzo_orszag`, `versenyzo_leiras`) VALUES
(1, 'Michael Schumacher', 'Michael_Schumacher.jpg', 'Németország', 'Hétszeres Forma-1 világbajnok, a Ferrari legendája.'),
(2, 'Lewis Hamilton', 'Lewis_Hamilton.jpg', 'Egyesült Királyság', 'Hétszeres világbajnok, a Mercedes egyik legnagyobb versenyzője.'),
(3, 'Max Verstappen', 'Max_Verstappen.jpg', 'Hollandia', 'A Red Bull Racing sztárja, többszörös világbajnok.'),
(4, 'Ayrton Senna', 'Ayrton_Senna.jpg', 'Brazília', 'Háromszoros világbajnok, az egyik legtehetségesebb versenyző a sport történetében.'),
(5, 'Sebastian Vettel', 'Sebastian_Vettel.jpg', 'Németország', 'Négyszeres világbajnok, főként a Red Bull Racing színeiben ért el sikereket.'),
(6, 'Fernando Alonso', 'Fernando_Alonso.jpg', 'Spanyolország', 'Kétszeres világbajnok, a Renault csapatával érte el sikereit.'),
(7, 'Niki Lauda', 'Niki_Lauda.jpg', 'Ausztria', 'Háromszoros világbajnok, a Ferrari és a McLaren legendája.'),
(8, 'Kimi Räikkönen', 'Kimi_Räikkönen.jpg', 'Finnország', '2007-es világbajnok, a \"Jégember\" becenéven ismert.'),
(9, 'Alain Prost', 'Alain_Prost.jpg', 'Franciaország', 'Négyszeres világbajnok, McLaren és Ferrari csapatok versenyzője.'),
(10, 'Nelson Piquet', 'Nelson_Piquet.jpg', 'Brazília', 'Háromszoros világbajnok, Brabham és Williams csapatoknál versenyzett.'),
(13, 'Jenson Button', 'photo_1739377901025_Jenson_Button.jpg', 'Egyesült Királyság', '306 versenyéből, amelyen elindult, 15-öt nyert meg, és 50 alkalommal állt a dobogón, mindezt úgy, hogy karrierje során többször is versenyképtelen autókat kellett vezetnie.\nVilágbajnoki cím (2009)'),
(14, 'Nico Rosberg', 'photo_1739442036660_Nico_Rosberg_2016.jpg', 'Németország', 'Nico Rosberg autóversenyző családba született, hiszen édesapja Formula–1-es világbajnok volt. Hatévesen ült először gokartba és 11 éves korától versenyzett. 2000-ben második helyezett lett a Forma-A gokart Európa-bajnokságban. Ezzel egy időben néhány Forma-Super A futamon is részt vett.');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `vilagbajnok`
--

CREATE TABLE `vilagbajnok` (
  `vilagbajnok_id` int(11) NOT NULL,
  `vilagbajnok_versenyzoid` int(11) NOT NULL,
  `vilagbajnok_ev` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- A tábla adatainak kiíratása `vilagbajnok`
--

INSERT INTO `vilagbajnok` (`vilagbajnok_id`, `vilagbajnok_versenyzoid`, `vilagbajnok_ev`) VALUES
(25, 1, '1994'),
(26, 1, '1995'),
(27, 1, '2000'),
(28, 1, '2001'),
(29, 1, '2002'),
(30, 1, '2003'),
(31, 1, '2004'),
(32, 2, '2008'),
(33, 2, '2014'),
(34, 2, '2015'),
(35, 2, '2017'),
(36, 2, '2018'),
(37, 2, '2019'),
(38, 2, '2020'),
(39, 3, '2021'),
(40, 3, '2022'),
(41, 3, '2023'),
(42, 4, '1988'),
(43, 4, '1990'),
(44, 4, '1991'),
(45, 5, '2010'),
(46, 5, '2011'),
(47, 5, '2012'),
(48, 5, '2013'),
(49, 6, '2005'),
(50, 6, '2006'),
(51, 7, '1975'),
(52, 7, '1977'),
(53, 7, '1984'),
(54, 8, '2007'),
(55, 9, '1985'),
(56, 9, '1986'),
(57, 9, '1989'),
(58, 9, '1993'),
(59, 10, '1981'),
(60, 10, '1983'),
(61, 10, '1987'),
(66, 3, '2024'),
(71, 13, '2009'),
(73, 14, '2016');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `versenyzok`
--
ALTER TABLE `versenyzok`
  ADD PRIMARY KEY (`versenyzo_id`);

--
-- A tábla indexei `vilagbajnok`
--
ALTER TABLE `vilagbajnok`
  ADD PRIMARY KEY (`vilagbajnok_id`),
  ADD UNIQUE KEY `vilagbajnok_ev` (`vilagbajnok_ev`),
  ADD KEY `vilagbajnok_versenyzoid` (`vilagbajnok_versenyzoid`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `versenyzok`
--
ALTER TABLE `versenyzok`
  MODIFY `versenyzo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT a táblához `vilagbajnok`
--
ALTER TABLE `vilagbajnok`
  MODIFY `vilagbajnok_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `vilagbajnok`
--
ALTER TABLE `vilagbajnok`
  ADD CONSTRAINT `vilagbajnok_ibfk_1` FOREIGN KEY (`vilagbajnok_versenyzoid`) REFERENCES `versenyzok` (`versenyzo_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
