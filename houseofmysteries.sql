-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Sze 02. 16:25
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
-- Adatbázis: `houseofmysteries`
--
CREATE DATABASE IF NOT EXISTS `houseofmysteries` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `houseofmysteries`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(11) NOT NULL,
  `booking_date` datetime DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `result` time DEFAULT NULL,
  `avaible` tinyint(1) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `booking`
--

INSERT INTO `booking` (`booking_id`, `booking_date`, `room_id`, `team_id`, `result`, `avaible`, `comment`) VALUES
(1, '2025-09-01 10:00:00', 1, 1, '00:55:00', 1, 'Sikeres kijutás'),
(2, '2025-09-01 12:00:00', 2, 2, '00:48:00', 1, 'Rekordidő'),
(3, '2025-09-01 14:00:00', 3, 3, '01:05:00', 0, 'Kudarc'),
(4, '2025-09-02 10:00:00', 4, 4, '00:59:00', 1, 'Egy hajszálon múlott'),
(5, '2025-09-02 12:00:00', 5, 5, '00:52:00', 1, 'Remek csapatmunka'),
(6, '2025-09-02 14:00:00', 6, 6, '01:10:00', 0, 'Képtelenek voltak kijutni'),
(7, '2025-09-03 10:00:00', 7, 7, '00:45:00', 1, 'Zseniális csapat'),
(8, '2025-09-03 12:00:00', 8, 8, '00:57:00', 1, 'Nehéz volt'),
(9, '2025-09-03 14:00:00', 9, 9, '01:02:00', 0, 'Nem sikerült'),
(10, '2025-09-04 10:00:00', 1, 10, '00:53:00', 1, 'Sima ügy'),
(11, '2025-09-04 12:00:00', 2, 11, '00:58:00', 1, 'Jó hangulat'),
(12, '2025-09-04 14:00:00', 3, 12, '01:08:00', 0, 'Majdnem'),
(13, '2025-09-05 10:00:00', 4, 13, '00:50:00', 1, 'Remek!'),
(14, '2025-09-05 12:00:00', 5, 14, '00:56:00', 1, 'Jó kaland'),
(15, '2025-09-05 14:00:00', 6, 15, '01:00:00', 0, 'Lassan haladtak'),
(16, '2025-09-06 10:00:00', 7, 16, '00:49:00', 1, 'Kiváló teljesítmény'),
(17, '2025-09-06 12:00:00', 8, 17, '00:54:00', 1, 'Épp hogy'),
(18, '2025-09-06 14:00:00', 9, 18, '01:04:00', 0, 'Nem találták a kulcsot'),
(19, '2025-09-07 10:00:00', 1, 19, '00:51:00', 1, 'Könnyen vették az akadályokat'),
(20, '2025-09-07 12:00:00', 2, 20, '00:47:00', 1, 'Csak ők tudták megoldani'),
(21, '2025-09-07 14:00:00', 3, 21, '01:07:00', 0, 'Túl nehéz volt'),
(22, '2025-09-08 10:00:00', 4, 22, '00:56:00', 1, 'Szórakoztató volt'),
(23, '2025-09-08 12:00:00', 5, 23, '00:53:00', 1, 'Jól teljesítettek'),
(24, '2025-09-08 14:00:00', 6, 24, '01:09:00', 0, 'Túl sok volt a feladvány'),
(25, '2025-09-09 10:00:00', 7, 25, '00:46:00', 1, 'Briliáns csapat'),
(26, '2025-09-09 12:00:00', 8, 26, '00:58:00', 1, 'Szép munka'),
(27, '2025-09-09 14:00:00', 9, 27, '01:01:00', 0, 'Egy pont hiányzott'),
(28, '2025-09-10 10:00:00', 1, 28, '00:54:00', 1, 'Jó élmény'),
(29, '2025-09-10 12:00:00', 2, 29, '00:48:00', 1, 'Gyorsak voltak'),
(30, '2025-09-10 14:00:00', 3, 30, '01:06:00', 0, 'Kész, ennyi volt'),
(31, '2025-09-11 10:00:00', 4, 31, '00:57:00', 1, 'Remekül éreztük magunkat'),
(32, '2025-09-11 12:00:00', 5, 32, '00:51:00', 1, 'Könnyű volt'),
(33, '2025-09-11 14:00:00', 6, 33, '01:03:00', 0, 'Túl sok volt a zavaró tényező'),
(34, '2025-09-12 10:00:00', 7, 34, '00:55:00', 1, 'Nagyon élveztük'),
(35, '2025-09-12 12:00:00', 8, 35, '00:49:00', 1, 'Gyerekjáték volt'),
(36, '2025-09-12 14:00:00', 9, 36, '01:02:00', 0, 'Káosz volt'),
(37, '2025-09-13 10:00:00', 1, 37, '00:52:00', 1, 'Kiváló csapat'),
(38, '2025-09-13 12:00:00', 2, 38, '00:50:00', 1, 'Jól ment'),
(39, '2025-09-13 14:00:00', 3, 39, '01:04:00', 0, 'Elfogyott az idő'),
(40, '2025-09-14 10:00:00', 4, 40, '00:56:00', 1, 'Jó volt az élmény'),
(41, '2025-09-14 12:00:00', 5, 41, '00:53:00', 1, 'Összehangolt csapat'),
(42, '2025-09-14 14:00:00', 6, 42, '01:08:00', 0, 'Nem volt szerencsénk'),
(43, '2025-09-15 10:00:00', 7, 43, '00:50:00', 1, 'Szépen teljesítettek'),
(44, '2025-09-15 12:00:00', 8, 44, '00:59:00', 1, 'Megcsináltuk!'),
(45, '2025-09-15 14:00:00', 9, 45, '01:03:00', 0, 'Túl bonyolult volt'),
(46, '2025-09-16 10:00:00', 1, 46, '00:58:00', 1, 'Könnyedén ment'),
(47, '2025-09-16 12:00:00', 2, 47, '00:47:00', 1, 'Jó csapatmunka'),
(48, '2025-09-16 14:00:00', 3, 48, '01:05:00', 0, 'Nem jött össze'),
(49, '2025-09-17 10:00:00', 4, 49, '00:54:00', 1, 'Profi teljesítmény'),
(50, '2025-09-17 12:00:00', 5, 50, '00:51:00', 1, 'Elég nehéz volt');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`) VALUES
(1, 'inactive'),
(2, 'active'),
(3, 'collegue'),
(4, 'admin');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `rooms`
--

CREATE TABLE `rooms` (
  `room_id` int(11) NOT NULL,
  `room_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `rooms`
--

INSERT INTO `rooms` (`room_id`, `room_name`) VALUES
(1, 'Menekülés az iskolából'),
(2, 'A pedellus bosszúja'),
(3, 'A tanári titkai'),
(4, 'A takarítónő visszanéz'),
(5, 'Szabadulás Kódja'),
(6, 'Időcsapda'),
(7, 'KódX Szoba'),
(8, 'Kalandok Kamrája'),
(9, 'Titkok Labirintusa');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `teams`
--

CREATE TABLE `teams` (
  `team_id` int(11) NOT NULL,
  `team_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `teams`
--

INSERT INTO `teams` (`team_id`, `team_name`) VALUES
(1, 'Alfa Kalandorok'),
(2, 'Béta Mesterlövészek'),
(3, 'Gamma Szellemvadászok'),
(4, 'Delta Rejtvényfejtők'),
(5, 'Epsilon Időutazók'),
(6, 'Zéta Detektívek'),
(7, 'Éta Logikusok'),
(8, 'Théta Harcosok'),
(9, 'Ióta Stratégák'),
(10, 'Kappa Kémek'),
(11, 'Lambda Hősök'),
(12, 'Mű Trükkmesterek'),
(13, 'Nű Túlélők'),
(14, 'Xi Győzők'),
(15, 'Omikron Szupercsapat'),
(16, 'Pí Csapata'),
(17, 'Ró Szuperhősök'),
(18, 'Szigma Felfedezők'),
(19, 'Táu Varázslók'),
(20, 'Üpsilon Bajnokok'),
(21, 'Fí Sakkmesterek'),
(22, 'Khí Kéjutazók'),
(23, 'Pszi Különítmény'),
(24, 'Ómega Szimbióták'),
(25, 'Arany Ötös'),
(26, 'Ezüst Ötös'),
(27, 'Bronz Ötös'),
(28, 'Platina Kommandó'),
(29, 'Gyémánt Kommandó'),
(30, 'Zafír Kommandó'),
(31, 'Rubin Kommandó'),
(32, 'Smaragd Kommandó'),
(33, 'Ametiszt Kommandó'),
(34, 'Topáz Kommandó'),
(35, 'Citrín Kommandó'),
(36, 'Gránát Kommandó'),
(37, 'Holdkő Kommandó'),
(38, 'Napló Kommandó'),
(39, 'Héliosz Kommandó'),
(40, 'Poszeidon Kommandó'),
(41, 'Árész Kommandó'),
(42, 'Héra Kommandó'),
(43, 'Zeusz Kommandó'),
(44, 'Athéné Kommandó'),
(45, 'Hermész Kommandó'),
(46, 'Dionüszosz Kommandó'),
(47, 'Apolló Kommandó'),
(48, 'Artemisz Kommandó'),
(49, 'Hádész Kommandó'),
(50, 'Prométheusz Kommandó');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `nick_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `team_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `user_pw` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`user_id`, `name`, `nick_name`, `email`, `phone`, `team_id`, `role_id`, `user_pw`) VALUES
(1, 'Kiss Bence', 'bence_k', 'bence.kiss@example.com', '123456789012', 1, 2, 'e10adc3949ba59abbe56e057f20f883e'),
(2, 'Nagy Anna', 'anna_n', 'anna.nagy@example.com', '123456789013', 2, 2, 'e10adc3949ba59abbe56e057f20f883e'),
(3, 'Tóth Gábor', 'gabor_t', 'gabor.toth@example.com', '123456789014', 3, 3, 'e10adc3949ba59abbe56e057f20f883e'),
(4, 'Kovács Eszter', 'eszter_k', 'eszter.kovacs@example.com', '123456789015', 4, 4, 'e10adc3949ba59abbe56e057f20f883e'),
(5, 'Szabó Péter', 'peter_sz', 'peter.szabo@example.com', '123456789016', 5, 2, 'e10adc3949ba59abbe56e057f20f883e'),
(6, 'Horváth Mária', 'maria_h', 'maria.horvath@example.com', '123456789017', 6, 3, 'e10adc3949ba59abbe56e057f20f883e'),
(7, 'Fekete László', 'laszlo_f', 'laszlo.fekete@example.com', '123456789018', 7, 2, 'e10adc3949ba59abbe56e057f20f883e'),
(8, 'Varga Zsuzsa', 'zsuzsa_v', 'zsuzsa.varga@example.com', '123456789019', 8, 3, 'e10adc3949ba59abbe56e057f20f883e'),
(9, 'Molnár István', 'istvan_m', 'istvan.molnar@example.com', '123456789020', 9, 2, 'e10adc3949ba59abbe56e057f20f883e'),
(10, 'Balogh Orsolya', 'orsolya_b', 'orsolya.balogh@example.com', '123456789021', 10, 4, 'e10adc3949ba59abbe56e057f20f883e'),
(11, 'Papp Zoltán', 'zoltan_p', 'zoltan.papp@example.com', '123456789022', 11, 2, 'e10adc3949ba59abbe56e057f20f883e'),
(12, 'Takács Judit', 'judit_t', 'judit.takacs@example.com', '123456789023', 12, 3, 'e10adc3949ba59abbe56e057f20f883e'),
(13, 'Bíró Krisztián', 'krisztian_b', 'krisztian.biro@example.com', '123456789024', 13, 2, 'e10adc3949ba59abbe56e057f20f883e'),
(14, 'Juhász Dóra', 'dora_j', 'dora.juhasz@example.com', '123456789025', 14, 3, 'e10adc3949ba59abbe56e057f20f883e'),
(15, 'Török András', 'andras_t', 'andras.torok@example.com', '123456789026', 15, 2, 'e10adc3949ba59abbe56e057f20f883e'),
(16, 'Oláh Noémi', 'noemi_o', 'noemi.olah@example.com', '123456789027', 16, 4, 'e10adc3949ba59abbe56e057f20f883e'),
(17, 'Székely Máté', 'mate_sz', 'mate.szekely@example.com', '123456789028', 17, 2, 'e10adc3949ba59abbe56e057f20f883e'),
(18, 'Gál Laura', 'laura_g', 'laura.gal@example.com', '123456789029', 18, 3, 'e10adc3949ba59abbe56e057f20f883e'),
(19, 'Simon Norbert', 'norbert_s', 'norbert.simon@example.com', '123456789030', 19, 2, 'e10adc3949ba59abbe56e057f20f883e'),
(20, 'Kovács Andrea', 'andrea_k', 'andrea.kovacs2@example.com', '123456789031', 20, 3, 'e10adc3949ba59abbe56e057f20f883e'),
(21, 'Rácz Tibor', 'tibor_r', 'tibor.racz@example.com', '123456789032', 21, 2, 'e10adc3949ba59abbe56e057f20f883e'),
(22, 'Lakatos Szilvia', 'szilvia_l', 'szilvia.lakatos@example.com', '123456789033', 22, 4, 'e10adc3949ba59abbe56e057f20f883e'),
(23, 'Király Dániel', 'daniel_k', 'daniel.kiraly@example.com', '123456789034', 23, 2, 'e10adc3949ba59abbe56e057f20f883e'),
(24, 'Fodor Vivien', 'vivien_f', 'vivien.fodor@example.com', '123456789035', 24, 3, 'e10adc3949ba59abbe56e057f20f883e'),
(25, 'Pataki Gábor', 'gabor_p', 'gabor.pataki@example.com', '123456789036', 25, 2, 'e10adc3949ba59abbe56e057f20f883e'),
(26, 'Sándor Réka', 'reka_s', 'reka.sandor@example.com', '123456789037', 26, 3, 'e10adc3949ba59abbe56e057f20f883e'),
(27, 'Illés Gergő', 'gergo_i', 'gergo.illes@example.com', '123456789038', 27, 2, 'e10adc3949ba59abbe56e057f20f883e'),
(28, 'Fehér Bence', 'bence_f', 'bence.feher@example.com', '123456789039', 28, 4, 'e10adc3949ba59abbe56e057f20f883e'),
(29, 'Vörös Krisztina', 'krisztina_v', 'krisztina.voros@example.com', '123456789040', 29, 2, 'e10adc3949ba59abbe56e057f20f883e'),
(30, 'Pintér Dávid', 'david_p', 'david.pinter@example.com', '123456789041', 30, 3, 'e10adc3949ba59abbe56e057f20f883e'),
(31, 'Balla Tamás', 'tamas_b', 'tamas.balla@example.com', '123456789042', 31, 2, 'e10adc3949ba59abbe56e057f20f883e'),
(32, 'Gulyás Eszter', 'eszter_g', 'eszter.gulyas@example.com', '123456789043', 32, 3, 'e10adc3949ba59abbe56e057f20f883e'),
(33, 'Kocsis Norbert', 'norbert_k', 'norbert.kocsis@example.com', '123456789044', 33, 2, 'e10adc3949ba59abbe56e057f20f883e'),
(34, 'Balázs Viktória', 'viktoria_b', 'viktoria.balazs@example.com', '123456789045', 34, 4, 'e10adc3949ba59abbe56e057f20f883e'),
(35, 'Lengyel Bence', 'bence_l', 'bence.lengyel@example.com', '123456789046', 35, 2, 'e10adc3949ba59abbe56e057f20f883e'),
(36, 'Németh Réka', 'reka_n', 'reka.nemeth@example.com', '123456789047', 36, 3, 'e10adc3949ba59abbe56e057f20f883e'),
(37, 'Fenyvesi Kristóf', 'kristof_f', 'kristof.fenyvesi@example.com', '123456789048', 37, 2, 'e10adc3949ba59abbe56e057f20f883e'),
(38, 'Virág Anikó', 'aniko_v', 'aniko.virag@example.com', '123456789049', 38, 3, 'e10adc3949ba59abbe56e057f20f883e'),
(39, 'Tóth Miklós', 'miklos_t', 'miklos.toth2@example.com', '123456789050', 39, 2, 'e10adc3949ba59abbe56e057f20f883e'),
(40, 'Kovács Orsolya', 'orsolya_k', 'orsolya.kovacs@example.com', '123456789051', 40, 4, 'e10adc3949ba59abbe56e057f20f883e'),
(41, 'Majoros Gábor', 'gabor_m', 'gabor.majoros@example.com', '123456789052', 41, 2, 'e10adc3949ba59abbe56e057f20f883e'),
(42, 'Somogyi Mónika', 'monika_s', 'monika.somogyi@example.com', '123456789053', 42, 3, 'e10adc3949ba59abbe56e057f20f883e'),
(43, 'Takács Péter', 'peter_t', 'peter.takacs@example.com', '123456789054', 43, 2, 'e10adc3949ba59abbe56e057f20f883e'),
(44, 'Kis Ilona', 'ilona_k', 'ilona.kis@example.com', '123456789055', 44, 3, 'e10adc3949ba59abbe56e057f20f883e'),
(45, 'Varga Tamás', 'tamas_v', 'tamas.varga@example.com', '123456789056', 45, 2, 'e10adc3949ba59abbe56e057f20f883e'),
(46, 'Sipos Krisztina', 'krisztina_s', 'krisztina.sipos@example.com', '123456789057', 46, 4, 'e10adc3949ba59abbe56e057f20f883e'),
(47, 'Pál Gergely', 'gergely_p', 'gergely.pal@example.com', '123456789058', 47, 2, 'e10adc3949ba59abbe56e057f20f883e'),
(48, 'Katona Anna', 'anna_ka', 'anna.katona@example.com', '123456789059', 48, 3, 'e10adc3949ba59abbe56e057f20f883e'),
(49, 'Kerekes Lajos', 'lajos_k', 'lajos.kerekes@example.com', '123456789060', 49, 2, 'e10adc3949ba59abbe56e057f20f883e'),
(50, 'Farkas Éva', 'eva_f', 'eva.farkas@example.com', '123456789061', 50, 3, 'e10adc3949ba59abbe56e057f20f883e'),
(51, 'BKA', 'agica', 'sindzse88@gmail.com', '36706044782', 1, 3, '39574f5000a43a7439a75ea1441be80c');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `room_id` (`room_id`,`team_id`),
  ADD KEY `team_id` (`team_id`);

--
-- A tábla indexei `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- A tábla indexei `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`room_id`);

--
-- A tábla indexei `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`team_id`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `nick_name` (`nick_name`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD KEY `team_id` (`team_id`,`role_id`),
  ADD KEY `role_id` (`role_id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT a táblához `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT a táblához `rooms`
--
ALTER TABLE `rooms`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT a táblához `teams`
--
ALTER TABLE `teams`
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`room_id`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `teams` (`team_id`);

--
-- Megkötések a táblához `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`),
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `teams` (`team_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
