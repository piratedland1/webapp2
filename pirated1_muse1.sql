-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 16, 2023 at 02:37 PM
-- Server version: 10.3.38-MariaDB-cll-lve
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pirated1_muse1`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `release_date` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `spotify_popularity` tinyint(4) DEFAULT NULL,
  `owner_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fully_scraped` tinyint(1) NOT NULL DEFAULT 0,
  `temp_id` varchar(8) DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `auto_update` tinyint(1) NOT NULL DEFAULT 1,
  `spotify_id` char(22) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` text DEFAULT NULL,
  `plays` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `name`, `release_date`, `image`, `spotify_popularity`, `owner_id`, `fully_scraped`, `temp_id`, `views`, `auto_update`, `spotify_id`, `created_at`, `updated_at`, `description`, `plays`) VALUES
(1, 'HEROES & VILLAINS', '2022-12-02', 'https://i.scdn.co/image/ab67616d00001e0213e54d6687e65678d60466c2', NULL, NULL, 0, NULL, 0, 1, '7txGsnDSqVMoRl6RQ9XyZP', NULL, NULL, NULL, 0),
(2, 'Here With Me', '2022-09-22', 'https://i.scdn.co/image/ab67616d00001e02efbe96040319db682b438f11', NULL, NULL, 0, NULL, 0, 1, '0OuoHWf8yB0TPzoBWw1R1S', NULL, NULL, NULL, 0),
(3, 'Her Loss', '2022-11-04', 'https://i.scdn.co/image/ab67616d00001e0202854a7060fccc1a66a4b5ad', NULL, NULL, 0, NULL, 0, 1, '5MS3MvWHJ3lOZPLiMxzOU6', NULL, NULL, NULL, 0),
(4, 'Hercules (Original Motion Picture Soundtrack)', '1997-01-01', 'https://i.scdn.co/image/ab67616d00001e02f6a713be4f418307ab7ffaf4', NULL, NULL, 0, NULL, 0, 1, '1wbY6VUchNsZLaDi22eD3J', NULL, NULL, NULL, 0),
(5, 'Here Comes The Cowboy', '2019-05-10', 'https://i.scdn.co/image/ab67616d00001e02fa1323bb50728c7489980672', NULL, NULL, 0, NULL, 0, 1, '67PsnkYVPNpEsZffyTWGgW', NULL, NULL, NULL, 0),
(6, 'Here\'s To The Good Times', '2012-01-01', 'https://i.scdn.co/image/ab67616d00001e02f5601676db551cb2a09e70a0', NULL, NULL, 0, NULL, 0, 1, '5MH765pytbQasmDxXArTah', NULL, NULL, NULL, 0),
(7, 'H.E.R.', '2017-10-20', 'https://i.scdn.co/image/ab67616d00001e02b5d9c8de465654c20d77305c', NULL, NULL, 0, NULL, 0, 1, '0pV0Mx07aMApIpF19oSQgY', NULL, NULL, NULL, 0),
(8, 'Hero', '2022-12-08', 'https://i.scdn.co/image/ab67616d00001e022aa989be7ba10bb7beee57a7', NULL, NULL, 0, NULL, 0, 1, '1D8XFqGY27IpYFAKB61h8v', NULL, NULL, NULL, 0),
(9, 'HERO (Deluxe Edition)', '2017-03-17', 'https://i.scdn.co/image/ab67616d00001e028bd4a20032a613d28e909109', NULL, NULL, 0, NULL, 0, 1, '4sSXylKcBB3p47VfrBJlfK', NULL, NULL, NULL, 0),
(10, 'Her Way (Sped Up)', '2014-07-29', 'https://i.scdn.co/image/ab67616d00001e02e3d51b377ea0506d91a917ca', NULL, NULL, 0, NULL, 0, 1, '1uYvJPQzUytNlcAIHSQPI0', NULL, NULL, NULL, 0),
(11, 'Here\'s To The Good Times...This Is How We Roll', '2013-01-01', 'https://i.scdn.co/image/ab67616d00001e02b908d0a877b7169921ff0934', NULL, NULL, 0, NULL, 0, 1, '0uqAyKT7oMZDFMyteJOJWI', NULL, NULL, NULL, 0),
(12, 'Hero', '2022-07-26', 'https://i.scdn.co/image/ab67616d00001e0282cf540d0a0ff4c3370c4f09', NULL, NULL, 0, NULL, 0, 1, '3k9ruMKYvMhzy7X8FoDdOY', NULL, NULL, NULL, 0),
(13, 'Here I Stand', '2008-05-27', 'https://i.scdn.co/image/ab67616d00001e022bca149ba7dd5e45bf233ac3', NULL, NULL, 0, NULL, 0, 1, '2peB0xKYHSlIWc5boFA6PW', NULL, NULL, NULL, 0),
(14, 'HEROES & VILLAINS', '2022-12-02', 'https://i.scdn.co/image/ab67616d00001e02c91ab2dd6fcff9b7228ff7ac', NULL, NULL, 0, NULL, 0, 1, '5aQFjsRw6rieK5oDNgGRyB', NULL, NULL, NULL, 0),
(15, 'HEROES & VILLAINS (Heroes Version)', '2022-12-05', 'https://i.scdn.co/image/ab67616d00001e020bfc2804261ecc4aa92871c1', NULL, NULL, 0, NULL, 0, 1, '4o9NExZng35wpV7pLKvuW0', NULL, NULL, NULL, 0),
(16, 'Here With Me (Sped Up)', '1990-06-05', 'https://i.scdn.co/image/ab67616d00001e02aab6bb652b7b3f8547b370a9', NULL, NULL, 0, NULL, 0, 1, '5Oh2N1qokrUcCTVmxW4XDK', NULL, NULL, NULL, 0),
(17, 'Here As In Heaven', '2016-02-05', 'https://i.scdn.co/image/ab67616d00001e0290e22400e515676843c29fe0', NULL, NULL, 0, NULL, 0, 1, '6KToyzPBIfHNyB5vWEfjrF', NULL, NULL, NULL, 0),
(18, 'Her (Original Score)', '2021-03-19', 'https://i.scdn.co/image/ab67616d00001e02af23c77b4a5e51a1944f262d', NULL, NULL, 0, NULL, 0, 1, '7xBJ2XXlDFfACXAnOE86t8', NULL, NULL, NULL, 0),
(19, 'Her Love Still Haunts Me Like a Ghost', '2022-10-28', 'https://i.scdn.co/image/ab67616d00001e02f46e995aa84c6eb1080100a4', NULL, NULL, 0, NULL, 0, 1, '3q6BNwqgHKVzXzAv2ZV6tD', NULL, NULL, NULL, 0),
(20, 'Doors (Original Game Soundtrack), Vol. 1', '2022-08-10', 'https://i.scdn.co/image/ab67616d00001e020922009ba2c16e3ff212fb15', NULL, NULL, 0, NULL, 0, 1, '0OmSxWQMhxtOTeoyu8Gh9U', NULL, NULL, NULL, 0),
(21, 'Abbey Road (Remastered)', '1969-09-26', 'https://i.scdn.co/image/ab67616d00001e02dc30583ba717007b00cceb25', NULL, NULL, 0, NULL, 0, 1, '0ETFjACtuP2ADo6LFhL6HN', NULL, NULL, NULL, 0),
(22, 'PARTYNEXTDOOR TWO', '2014-07-29', 'https://i.scdn.co/image/ab67616d00001e026cfa297b0178fd91dca5c4f1', NULL, NULL, 0, NULL, 0, 1, '1xwhNJCfTwuRia7Cpo7IbJ', NULL, NULL, NULL, 0),
(23, 'Traumazine', '2022-08-12', 'https://i.scdn.co/image/ab67616d00001e021182d680c2894b4e0f39033e', NULL, NULL, 0, NULL, 0, 1, '4YP0h2KGDb20eJuStnBvim', NULL, NULL, NULL, 0),
(24, 'Away From The Sun', '2002-11-12', 'https://i.scdn.co/image/ab67616d00001e0283c39b0d32eb4a2064e1e228', NULL, NULL, 0, NULL, 0, 1, '72olNArm75vOycSziqIX9Y', NULL, NULL, NULL, 0),
(25, 'DESVELADO', '2023-04-28', 'https://i.scdn.co/image/ab67616d00001e02dfddf1cb31b85a6d28b7d91f', NULL, NULL, 0, NULL, 0, 1, '5aDEezKnOqyQo0qvTFhpkM', NULL, NULL, NULL, 0),
(26, 'Awake', '2009-08-21', 'https://i.scdn.co/image/ab67616d00001e0243e531d5f69170aba281ef43', NULL, NULL, 0, NULL, 0, 1, '0RySAmM6oDPGSE03X3dzi1', NULL, NULL, NULL, 0),
(27, 'Know-It-All', '2015-11-13', 'https://i.scdn.co/image/ab67616d00001e02d7ef1ffbd2a5821152f35ce1', NULL, NULL, 0, NULL, 0, 1, '7HnbhIDKXIBhMR4EPGuMgu', NULL, NULL, NULL, 0),
(28, 'Here With Me', '2019-03-08', 'https://i.scdn.co/image/ab67616d00001e022cbb5f97a0853d1c7cbbe231', NULL, NULL, 0, NULL, 0, 1, '6NHS3hV16MZyfcp0nSHdrd', NULL, NULL, NULL, 0),
(29, 'The Family Jewels', '2010-02-15', 'https://i.scdn.co/image/ab67616d00001e025e586c9004ed2100d5a20427', NULL, NULL, 0, NULL, 0, 1, '3dWObfa3vKyudzgmh53Xzg', NULL, NULL, NULL, 0),
(30, 'Whitesnake (2018 Remaster)', '1987-04-07', 'https://i.scdn.co/image/ab67616d00001e022d0b092b97341c9f7f388d62', NULL, NULL, 0, NULL, 0, 1, '5drgoLSnXSDIhNK4ms3P7I', NULL, NULL, NULL, 0),
(31, 'Here For A Good Time', '2011-01-01', 'https://i.scdn.co/image/ab67616d00001e02fc47d4b00420fc21c7c0f5bb', NULL, NULL, 0, NULL, 0, 1, '0JxBiJVEmzFJdbMwgLohC1', NULL, NULL, NULL, 0),
(32, 'Goblin', '2011-05-09', 'https://i.scdn.co/image/ab67616d00001e0228ae9a159d24cb0ab2552712', NULL, NULL, 0, NULL, 0, 1, '5dbCm8qaCdWnNdVyi3urUO', NULL, NULL, NULL, 0),
(33, '\"Heroes\" (2017 Remaster)', '1977', 'https://i.scdn.co/image/ab67616d00001e02204f41d52743c6a9efd62985', NULL, NULL, 0, NULL, 0, 1, '4I5zzKYd2SKDgZ9DRf5LVk', NULL, NULL, NULL, 0),
(34, 'Music Box', '1993-08-31', 'https://i.scdn.co/image/ab67616d00001e020f688fa11af022f0210e21cb', NULL, NULL, 0, NULL, 0, 1, '2NKxb7pk04CuZab5udkGUl', NULL, NULL, NULL, 0),
(35, 'Herinneringen', '2022-01-13', 'https://i.scdn.co/image/ab67616d00001e02664bf9cdc1db9ac7666417ba', NULL, NULL, 0, NULL, 0, 1, '23T1MB2c8969U4LJFrvo3B', NULL, NULL, NULL, 0),
(36, 'Hex', '2018-03-12', 'https://i.scdn.co/image/ab67616d00001e026c0177e9b0c53a7587979ca2', NULL, NULL, 0, NULL, 0, 1, '1CPRTq5GLeZ9hn4igzS6uZ', NULL, NULL, NULL, 0),
(37, 'Heathers: The Musical (World Premiere Cast Recording)', '2014-06-10', 'https://i.scdn.co/image/ab67616d00001e02d2d0e13579ab33ae8d3d05e4', NULL, NULL, 0, NULL, 0, 1, '6EIxlDI9fMtooJ1H3toRFO', NULL, NULL, NULL, 0),
(38, 'Heaven Or Hell', '2020-03-13', 'https://i.scdn.co/image/ab67616d00001e0245190a074bef3e8ce868b60c', NULL, NULL, 0, NULL, 0, 1, '7z4GhRfLqfSkqrj5F3Yt2B', NULL, NULL, NULL, 0),
(39, 'Henry Danger The Musical (Original Soundtrack)', '2019-07-19', 'https://i.scdn.co/image/ab67616d00001e02e1257834cd1fac2441d363aa', NULL, NULL, 0, NULL, 0, 1, '34d8RiIlozH7g5xQLEfm6G', NULL, NULL, NULL, 0),
(40, 'Greatest Hits 1985-1995', '2000-01-01', 'https://i.scdn.co/image/ab67616d00001e02e6db88b395f063ee1ca6e0d5', NULL, NULL, 0, NULL, 0, 1, '5bOhnWhieBJGivUovmtob5', NULL, NULL, NULL, 0),
(41, 'HELLBOY', '2016', 'https://i.scdn.co/image/ab67616d00001e02853588a3fc815ab6c6464475', NULL, NULL, 0, NULL, 0, 1, '08VSO0uoR2SaKrxcFoJ235', NULL, NULL, NULL, 0),
(42, 'Heart Attack', '2013-01-01', 'https://i.scdn.co/image/ab67616d00001e02ae2cb38680fb2a51b76fb05d', NULL, NULL, 0, NULL, 0, 1, '1mQiBukL1OBUwIy5z63adB', NULL, NULL, NULL, 0),
(43, 'Heading South', '2019-09-30', 'https://i.scdn.co/image/ab67616d00001e02f9017bcd001d030d46850226', NULL, NULL, 0, NULL, 0, 1, '3Ca58JR3vDDMl5i8QKkWzP', NULL, NULL, NULL, 0),
(44, 'W●RK', '2023-04-01', 'https://i.scdn.co/image/ab67616d00001e02467fc4ac9ecb7e8fb58db6e5', NULL, NULL, 0, NULL, 0, 1, '0uKLHZitWwrvekNjznMAaB', NULL, NULL, NULL, 0),
(45, 'Hey World', '2020-11-20', 'https://i.scdn.co/image/ab67616d00001e02fc27d74c91d8fa9e528b288c', NULL, NULL, 0, NULL, 0, 1, '7zhKZcqIJkkeqrswshd15r', NULL, NULL, NULL, 0),
(46, 'Dreamland (+ Bonus Levels)', '2021-09-09', 'https://i.scdn.co/image/ab67616d00001e0299393d90f3c4ebd60d09d23e', NULL, NULL, 0, NULL, 0, 1, '0E2xXn23qVmfx9ThZjWFBE', NULL, NULL, NULL, 0),
(47, 'Heaven & Hell', '2020-09-18', 'https://i.scdn.co/image/ab67616d00001e029a95e89d24214b94de36ccf7', NULL, NULL, 0, NULL, 0, 1, '26c7MmQ4w8EAvVLb4jilaM', NULL, NULL, NULL, 0),
(48, 'It\'s Corn', '2022-08-28', 'https://i.scdn.co/image/ab67616d00001e02c1c2f1da4485a8773d746cf3', NULL, NULL, 0, NULL, 0, 1, '1DRwgQ7v0G6otmNL70S6iH', NULL, NULL, NULL, 0),
(49, 'Hellbilly Deluxe', '1998-01-01', 'https://i.scdn.co/image/ab67616d00001e0213d4adf9e4b938f88266f4e4', NULL, NULL, 0, NULL, 0, 1, '2B4lHoTCpWbxQPTZmCOjnH', NULL, NULL, NULL, 0),
(50, 'Fishy on Me', '2020-10-08', 'https://i.scdn.co/image/ab67616d00001e02b2dede1f5200b3617bb95cee', NULL, NULL, 0, NULL, 0, 1, '2VnHoflnKtmAocxmfeVkP8', NULL, NULL, NULL, 0),
(51, 'Hell N Back', '2019-08-15', 'https://i.scdn.co/image/ab67616d00001e02b6aa65ea45fef5e36dfe1a45', NULL, NULL, 0, NULL, 0, 1, '3aEdbaJGWXbBxn79DgjamF', NULL, NULL, NULL, 0),
(52, '808s & Heartbreak', '2008-11-24', 'https://i.scdn.co/image/ab67616d00001e02346d77e155d854735410ed18', NULL, NULL, 0, NULL, 0, 1, '3WFTGIO6E3Xh4paEOBY9OU', NULL, NULL, NULL, 0),
(53, 'Dreamland', '2020-08-07', 'https://i.scdn.co/image/ab67616d00001e02712701c5e263efc8726b1464', NULL, NULL, 0, NULL, 0, 1, '5bfpRtBW7RNRdsm3tRyl3R', NULL, NULL, NULL, 0),
(54, 'Hey, Mickey!', '2016-09-27', 'https://i.scdn.co/image/ab67616d00001e022571034f34b381958f8cc727', NULL, NULL, 0, NULL, 0, 1, '1kKF2bWhCvSNNmWFqQVFei', NULL, NULL, NULL, 0),
(55, 'Diplo Presents Thomas Wesley: Chapter 1 - Snake Oil', '2020-05-29', 'https://i.scdn.co/image/ab67616d00001e02d79c10cdf4a58309a37d195a', NULL, NULL, 0, NULL, 0, 1, '2Om5VEKaBd4Afht33ToQGD', NULL, NULL, NULL, 0),
(56, 'Heathens', '2016-06-16', 'https://i.scdn.co/image/ab67616d00001e022ca3ba8f334ca5a5f0312efb', NULL, NULL, 0, NULL, 0, 1, '3J8W9AOjQhnBLCX33m3atT', NULL, NULL, NULL, 0),
(57, 'Kid Krow', '2020-03-20', 'https://i.scdn.co/image/ab67616d00001e0288e3cda6d29b2552d4d6bc43', NULL, NULL, 0, NULL, 0, 1, '2CMlkzFI2oDAy5MbyV7OV5', NULL, NULL, NULL, 0),
(58, 'After Hours', '2020-03-20', 'https://i.scdn.co/image/ab67616d00001e028863bc11d2aa12b54f5aeb36', NULL, NULL, 0, NULL, 0, 1, '4yP0hdKOZPNshxUOjY0cZj', NULL, NULL, NULL, 0),
(59, 'Speakerboxxx/The Love Below', '2003', 'https://i.scdn.co/image/ab67616d00001e026a6387ab37f64034cdc7b367', NULL, NULL, 0, NULL, 0, 1, '1UsmQ3bpJTyK6ygoOOjG1r', NULL, NULL, NULL, 0),
(60, 'Heaven', '2023-02-17', 'https://i.scdn.co/image/ab67616d00001e02723c6c01155c023a9a9f8cf0', NULL, NULL, 0, NULL, 0, 1, '6IbldUF7xzRJuUDEApUCS3', NULL, NULL, NULL, 0),
(61, 'Demi', '2013-01-01', 'https://i.scdn.co/image/ab67616d00001e02aadb13ae608f6af20528409b', NULL, NULL, 0, NULL, 0, 1, '6Kssm2LosQ0WyLukFZkEG5', NULL, NULL, NULL, 0),
(62, 'Hell N Back (Sped Up)', '2019-08-14', 'https://i.scdn.co/image/ab67616d00001e023ee73eb16af247a0ea057542', NULL, NULL, 0, NULL, 0, 1, '39qJcvWj03Pcm9HJdb1NR8', NULL, NULL, NULL, 0),
(63, '25', '2015-11-20', 'https://i.scdn.co/image/ab67616d00001e0247ce408fb4926d69da6713c2', NULL, NULL, 0, NULL, 0, 1, '3AvPX1B1HiFROvYjLb5Qwi', NULL, NULL, NULL, 0),
(64, 'OzuTochi', '2022-10-07', 'https://i.scdn.co/image/ab67616d00001e02125624f2e04f5a1ccb0dfb45', NULL, NULL, 0, NULL, 0, 1, '1kjfMVBNhsDeRyAu9zbLfF', NULL, NULL, NULL, 0),
(71, 'HOPE', '2023-04-07', 'https://i.scdn.co/image/ab67616d00001e02ff8a4276b3be31c839557439', NULL, NULL, 0, NULL, 0, 1, '6zaisPwfcIAfdUGPj3mmGY', NULL, NULL, NULL, 0),
(72, 'Harry\'s House', '2022-05-20', 'https://i.scdn.co/image/ab67616d00001e022e8ed79e177ff6011076f5f0', NULL, NULL, 0, NULL, 0, 1, '5r36AJ6VOJtp00oxSkBZ5h', NULL, NULL, NULL, 0),
(73, 'HOPE', '2023-02-16', 'https://i.scdn.co/image/ab67616d00001e02a76c4e0bace73e8f9afa4e3a', NULL, NULL, 0, NULL, 0, 1, '3VYKlqWS3zOv1jli94RFKW', NULL, NULL, NULL, 0),
(74, 'Hollywood\'s Bleeding', '2019-09-06', 'https://i.scdn.co/image/ab67616d00001e029478c87599550dd73bfa7e02', NULL, NULL, 0, NULL, 0, 1, '4g1ZRSobMefqF6nelkgibi', NULL, NULL, NULL, 0),
(75, 'Hamilton (Original Broadway Cast Recording)', '2015-09-25', 'https://i.scdn.co/image/ab67616d00001e02d72fb5571087bca0a2fed008', NULL, NULL, 0, NULL, 0, 1, '1kCHru7uhxBUdzkm4gzRQc', NULL, NULL, NULL, 0),
(76, 'Area Codes', '2023-03-17', 'https://i.scdn.co/image/ab67616d00001e0233a8cd9ae03bc913e6e5af11', NULL, NULL, 0, NULL, 0, 1, '6uk3hBYbrMsSzufADPjv9K', NULL, NULL, NULL, 0),
(77, 'Honestly, Nevermind', '2022-06-17', 'https://i.scdn.co/image/ab67616d00001e028dc0d801766a5aa6a33cbe37', NULL, NULL, 0, NULL, 0, 1, '3cf4iSSKd8ffTncbtKljXw', NULL, NULL, NULL, 0),
(78, 'High School Musical', '2006-01-01', 'https://i.scdn.co/image/ab67616d00001e0286ea2533f3bfc5f1f08ab168', NULL, NULL, 0, NULL, 0, 1, '4dOvFkIgrb6b9zCcGfCcci', NULL, NULL, NULL, 0),
(79, 'Hozier (Expanded Edition)', '2014-09-19', 'https://i.scdn.co/image/ab67616d00001e024ca68d59a4a29c856a4a39c2', NULL, NULL, 0, NULL, 0, 1, '4Pv7m8D82A1Xun7xNCKZjJ', NULL, NULL, NULL, 0),
(80, 'High School Musical 2 (Original Soundtrack)', '2007-01-01', 'https://i.scdn.co/image/ab67616d00001e02342a94d40e41ecd14874be4c', NULL, NULL, 0, NULL, 0, 1, '04Xde0FJSo4LVQ1GE36t49', NULL, NULL, NULL, 0),
(81, 'Happier Than Ever', '2021-07-30', 'https://i.scdn.co/image/ab67616d00001e022a038d3bf875d23e4aeaa84e', NULL, NULL, 0, NULL, 0, 1, '0JGOiO34nwfUdDrD612dOp', NULL, NULL, NULL, 0),
(82, 'Harry Potter and The Sorcerer\'s Stone Original Motion Picture Soundtrack', '2001-10-30', 'https://i.scdn.co/image/ab67616d00001e0213f982aa5c43146c3d2c1964', NULL, NULL, 0, NULL, 0, 1, '6zeHM5CV0CjcS0K8ouWE4N', NULL, NULL, NULL, 0),
(83, 'Hybrid Theory (Bonus Edition)', '2000-10-24', 'https://i.scdn.co/image/ab67616d00001e02e2f039481babe23658fc719a', NULL, NULL, 0, NULL, 0, 1, '6hPkbAV3ZXpGZBGUvL6jVM', NULL, NULL, NULL, 0),
(84, 'High School Musical 3: Senior Year', '2008-01-01', 'https://i.scdn.co/image/ab67616d00001e025af81c4bd993bfad936f1ca3', NULL, NULL, 0, NULL, 0, 1, '6j8k5gIeWzXapGKTVaZzER', NULL, NULL, NULL, 0),
(85, 'Hard To Imagine The Neighbourhood Ever Changing', '2018-11-02', 'https://i.scdn.co/image/ab67616d00001e029b6ac98a52f62d5cb473da40', NULL, NULL, 0, NULL, 0, 1, '0ODLCdHBFVvKwJGeSfd1jy', NULL, NULL, NULL, 0),
(86, 'Harder Than Ever', '2018-05-18', 'https://i.scdn.co/image/ab67616d00001e026cab41f8c84d6164976400d4', NULL, NULL, 0, NULL, 0, 1, '7yf9ZJyHRbp8sHtpDKfPpt', NULL, NULL, NULL, 0),
(87, 'Rotten', '2014-12-02', 'https://i.scdn.co/image/ab67616d00001e02f7d60ae94e7b907a8a9ca3f3', NULL, NULL, 0, NULL, 0, 1, '2jgKK8iIX83mPrCyDhvEdf', NULL, NULL, NULL, 0),
(88, 'Hands up!', '2022-12-10', 'https://i.scdn.co/image/ab67616d00001e021c2ba191b525a406070038bd', NULL, NULL, 0, NULL, 0, 1, '4poweJXaiw4HwGhfvjMGkL', NULL, NULL, NULL, 0),
(89, 'Ænima', '1996-09-17', 'https://i.scdn.co/image/ab67616d00001e02dce45359981d62e087a29e6f', NULL, NULL, 0, NULL, 0, 1, '6yWMN087PgSimbcVmHLEwG', NULL, NULL, NULL, 0),
(90, 'HOJE EU VOU COMER NOVINHA', '2022-06-01', 'https://i.scdn.co/image/ab67616d00001e0295f48e608b32a55c3aa127ae', NULL, NULL, 0, NULL, 0, 1, '7FNd2yodzN9NDZTBJhI2Eh', NULL, NULL, NULL, 0),
(91, 'DAMN.', '2017-04-14', 'https://i.scdn.co/image/ab67616d00001e028b52c6b9bc4e43d873869699', NULL, NULL, 0, NULL, 0, 1, '4eLPsYPBmXABThSJ821sqY', NULL, NULL, NULL, 0),
(92, 'H20', '2019-03-09', 'https://i.scdn.co/image/ab67616d00001e024558a22cba5cc30aafaea783', NULL, NULL, 0, NULL, 0, 1, '2KL616if2s7sY7g1XZRCN4', NULL, NULL, NULL, 0),
(93, 'DIE FOR MY BITCH', '2019-07-19', 'https://i.scdn.co/image/ab67616d00001e02683757f1fd40a7f7ef64bec1', NULL, NULL, 0, NULL, 0, 1, '7Cw4LObzgnVqSlkuIyywtI', NULL, NULL, NULL, 0),
(94, 'Lost Files', '2022-11-11', 'https://i.scdn.co/image/ab67616d00001e02fc891789b507244bd128650b', NULL, NULL, 0, NULL, 0, 1, '5SLvT5S6ZthRj2sOqD649Q', NULL, NULL, NULL, 0),
(95, 'HAHA', '2019-10-12', 'https://i.scdn.co/image/ab67616d00001e02d4638523848beff19bff7226', NULL, NULL, 0, NULL, 0, 1, '5TWFIHtoGLtCd8dT4WLbhJ', NULL, NULL, NULL, 0),
(108, 'K.', '2016-12-01', 'https://i.scdn.co/image/f79d7a91a116755a09da4498f1b3b8b8853045a0', NULL, NULL, 0, NULL, 0, 1, '33qYH2dRlz8DSCWFYZB1Fc', NULL, NULL, NULL, 0),
(109, 'K-12', '2019-09-06', 'https://i.scdn.co/image/ab67616d00001e025945e0dce1af45d640cf06ea', NULL, NULL, 0, NULL, 0, 1, '1KerGJUScYGffP3Mjmjz8c', NULL, NULL, NULL, 0),
(110, 'KOD', '2018-04-20', 'https://i.scdn.co/image/ab67616d00001e02cf0f0affd0138a7442f13706', NULL, NULL, 0, NULL, 0, 1, '4Wv5UAieM1LDEYVq5WmqDd', NULL, NULL, NULL, 0),
(111, 'Kill Bill (feat. Doja Cat)', '2023-04-14', 'https://i.scdn.co/image/ab67616d00001e02c3b70a0848d577bf5ae67b49', NULL, NULL, 0, NULL, 0, 1, '4OanbmuJAWz8JPVE4cJA9L', NULL, NULL, NULL, 0),
(112, 'KIDZ BOP 2023', '2023-01-20', 'https://i.scdn.co/image/ab67616d00001e0259ccf819b19fe18a2aef09a0', NULL, NULL, 0, NULL, 0, 1, '5YOe3aJeBjlLA9IuOWyWD5', NULL, NULL, NULL, 0),
(113, 'KG0516', '2021-03-26', 'https://i.scdn.co/image/ab67616d00001e02ae28c8f2748587cc2a33d6c2', NULL, NULL, 0, NULL, 0, 1, '5CS8E6JVACItYto4OOJoPW', NULL, NULL, NULL, 0),
(114, 'KIDZ BOP 2022', '2021-10-22', 'https://i.scdn.co/image/ab67616d00001e02ae818e6ed16f9a50ab428798', NULL, NULL, 0, NULL, 0, 1, '1pVDyIhEeVDBQjZYO67ytl', NULL, NULL, NULL, 0),
(115, 'KHALED KHALED', '2021-04-30', 'https://i.scdn.co/image/ab67616d00001e02dcd4d70294f17175991ba1bb', NULL, NULL, 0, NULL, 0, 1, '5kE2OAuUYGBqqzscqgBXXf', NULL, NULL, NULL, 0),
(116, 'KIDZ BOP Party Playlist!', '2020-04-03', 'https://i.scdn.co/image/ab67616d00001e02ba1f22d7803c7f7e7b12d3a6', NULL, NULL, 0, NULL, 0, 1, '16RDmf5uQgqZ7GgEA1nyK9', NULL, NULL, NULL, 0),
(117, 'KIRK', '2019-09-27', 'https://i.scdn.co/image/ab67616d00001e02f2b94b2fda4f08836d6371ba', NULL, NULL, 0, NULL, 0, 1, '1NsTSXjVNE7XmZ8PmyW0wl', NULL, NULL, NULL, 0),
(118, 'KIDZ BOP All-Time Greatest Hits', '2021-03-26', 'https://i.scdn.co/image/ab67616d00001e026249c89c59f63824f21dd108', NULL, NULL, 0, NULL, 0, 1, '2r2u6SsHaCMojcx5bpSlJ8', NULL, NULL, NULL, 0),
(119, 'Kamikaze', '2018-08-31', 'https://i.scdn.co/image/ab67616d00001e02e4073def0c03a91e3fceaf73', NULL, NULL, 0, NULL, 0, 1, '3HNnxK7NgLXbDoxRZxNWiR', NULL, NULL, NULL, 0),
(120, 'MAÑANA SERÁ BONITO', '2023-02-24', 'https://i.scdn.co/image/ab67616d00001e0282de1ca074ae63cb18fce335', NULL, NULL, 0, NULL, 0, 1, '4kS7bSuU0Jm9LYMosFU2x5', NULL, NULL, NULL, 0),
(121, 'Konvicted', '2006-01-01', 'https://i.scdn.co/image/ab67616d00001e02d9bcf5565005950b353bc9cf', NULL, NULL, 0, NULL, 0, 1, '6kzoWb4UzvKYgbDfAwgaFq', NULL, NULL, NULL, 0),
(122, 'Kidz Bop 28', '2015-03-24', 'https://i.scdn.co/image/ab67616d00001e029f68596675cb2e9054bded96', NULL, NULL, 0, NULL, 0, 1, '2Vh73FD6YV5afi2SVJ8qkB', NULL, NULL, NULL, 0),
(123, 'KIDZ BOP 40', '2019-11-15', 'https://i.scdn.co/image/ab67616d00001e02ee7375860a9e1219f1e9287b', NULL, NULL, 0, NULL, 0, 1, '16QkUgvO36X6REmJZgecVJ', NULL, NULL, NULL, 0),
(124, 'K.I.D.S. (Deluxe)', '2010-08-13', 'https://i.scdn.co/image/ab67616d00001e02463d73e65c7b95a17898388b', NULL, NULL, 0, NULL, 0, 1, '6TFm9KGW7Lbxrl2Zsg4X9R', NULL, NULL, NULL, 0),
(125, 'KIDZ BOP World Tour', '2019-05-24', 'https://i.scdn.co/image/ab67616d00001e022a6bbdf9f3998bc830affd19', NULL, NULL, 0, NULL, 0, 1, '4JdOUhTxfRmyspRyQntSnD', NULL, NULL, NULL, 0),
(126, 'Koi No Yokan', '2012-11-09', 'https://i.scdn.co/image/ab67616d00001e0273652b7a0dc388dd1d044b69', NULL, NULL, 0, NULL, 0, 1, '4PIVdqvL1Rc7T7Vfsr8n8Q', NULL, NULL, NULL, 0),
(127, 'SOS', '2022-12-08', 'https://i.scdn.co/image/ab67616d00001e020c471c36970b9406233842a5', NULL, NULL, 0, NULL, 0, 1, '1nrVofqDRs7cpWXJ49qTnP', NULL, NULL, NULL, 0),
(128, 'Cigarettes After Sex', '2017-06-09', 'https://i.scdn.co/image/ab67616d00001e026b701428ed4c6e053902174a', NULL, NULL, 0, NULL, 0, 1, '5bP82ZIls6rzhpf5Qu6AzC', NULL, NULL, NULL, 0),
(129, 'Midnights', '2022-10-21', 'https://i.scdn.co/image/ab67616d00001e02bb54dde68cd23e2a268ae0f5', NULL, NULL, 0, NULL, 0, 1, '151w1FgRZfnKZA9FEcg9Z3', NULL, NULL, NULL, 0),
(130, 'K. (Sped Up)', '2022-12-13', 'https://i.scdn.co/image/ab67616d00001e02645740df21e35dd69c57c621', NULL, NULL, 0, NULL, 0, 1, '5fIvyb0PqTZf7ia1vA6hMd', NULL, NULL, NULL, 0),
(131, 'Certified Lover Boy', '2021-09-03', 'https://i.scdn.co/image/ab67616d00001e02cd945b4e3de57edd28481a3f', NULL, NULL, 0, NULL, 0, 1, '3SpBlxme9WbeQdI9kx7KAV', NULL, NULL, NULL, 0),
(132, 'SOS', '2022-12-09', 'https://i.scdn.co/image/ab67616d00001e0270dbc9f47669d120ad874ec1', NULL, NULL, 0, NULL, 0, 1, '07w0rG5TETcyihsEIZR3qG', NULL, NULL, NULL, 0),
(133, 'KING', '2020-08-01', 'https://i.scdn.co/image/ab67616d00001e0209d2915d50e59087f339c17b', NULL, NULL, 0, NULL, 0, 1, '55F9mwBpB9DRA9g52b8ZGJ', NULL, NULL, NULL, 0),
(134, 'The Better Life', '2000', 'https://i.scdn.co/image/ab67616d00001e022868c4713a3912fd476b42f1', NULL, NULL, 0, NULL, 0, 1, '5gO2acKSOaJnP0Mcy8IpU6', NULL, NULL, NULL, 0),
(135, 'KICK BACK', '2022-10-12', 'https://i.scdn.co/image/ab67616d00001e02303d8545fce8302841c39859', NULL, NULL, 0, NULL, 0, 1, '6RH1fEIz8HVXregzz5Xp2B', NULL, NULL, NULL, 0),
(136, 'Collide With The Sky', '2012-07-17', 'https://i.scdn.co/image/ab67616d00001e02077cac00c2d9075e6f742570', NULL, NULL, 0, NULL, 0, 1, '661Hz0qJK8WIp7vAWsqKvk', NULL, NULL, NULL, 0),
(137, 'My Liver Will Handle What My Heart Can\'t', '2015-09-21', 'https://i.scdn.co/image/ab67616d00001e02dcff3103179d992594a227db', NULL, NULL, 0, NULL, 0, 1, '2VrpzWjnsiELWKXOJAFhme', NULL, NULL, NULL, 0),
(138, 'GOLDEN FLOWER', '2020-10-29', 'https://i.scdn.co/image/ab67616d00001e0254de6e013010df173e2ac5af', NULL, NULL, 0, NULL, 0, 1, '7iUuXpOPDfKXT5DwelKQpz', NULL, NULL, NULL, 0),
(139, 'One Thing At A Time', '2023-03-03', 'https://i.scdn.co/image/ab67616d00001e02705079df9a25a28b452c1fc9', NULL, NULL, 0, NULL, 0, 1, '6i7mF7whyRJuLJ4ogbH2wh', NULL, NULL, NULL, 0),
(140, 'Over The Moon', '2023-04-12', 'https://i.scdn.co/image/ab67616d00001e02d894e16b750b7ade58c1977f', NULL, NULL, 0, NULL, 0, 1, '0WGMSrfOSPh1vctL94IWD3', NULL, NULL, NULL, 0),
(141, 'When We Were Friends', '2019-01-27', 'https://i.scdn.co/image/ab67616d00001e028386795a636d72e74c958590', NULL, NULL, 0, NULL, 0, 1, '3TSMSh5dai7WEnEGOoMXBZ', NULL, NULL, NULL, 0),
(142, 'KAWAII', '2022-06-24', 'https://i.scdn.co/image/ab67616d00001e02ffd567f9bca9d85bc81e16fa', NULL, NULL, 0, NULL, 0, 1, '4ymSQuATTCbptx0uBcMXsd', NULL, NULL, NULL, 0),
(143, 'Dr. Feelgood (Deluxe Version)', '1989-09-01', 'https://i.scdn.co/image/ab67616d00001e0257338231dc4a85d5aed03186', NULL, NULL, 0, NULL, 0, 1, '23krn1eEy7o3u9laLI1PLD', NULL, NULL, NULL, 0),
(145, 'TQG', '2023-02-23', 'https://i.scdn.co/image/ab67616d00001e02aff21e7b9470ce4affb09498', NULL, NULL, 0, NULL, 0, 1, '5f4P1wEFrcMyJKahHfLaoa', NULL, NULL, NULL, 0),
(146, 'Kane Brown (Deluxe Edition)', '2017-10-06', 'https://i.scdn.co/image/ab67616d00001e02c7ee084acfc2d7ca0b112b5c', NULL, NULL, 0, NULL, 0, 1, '4UoCJkoqgUmaWMiWifq4vp', NULL, NULL, NULL, 0),
(147, 'The Best Of Kansas', '1984', 'https://i.scdn.co/image/ab67616d00001e0251853c867bd51abc84432ee5', NULL, NULL, 0, NULL, 0, 1, '3eLtE3HWyUWQbO2CYFKkwO', NULL, NULL, NULL, 0),
(148, 'Kaleidoscope Dream', '2012-09-28', 'https://i.scdn.co/image/ab67616d00001e02fe113f478616e62a8fe14108', NULL, NULL, 0, NULL, 0, 1, '21XMv0TCsnhWPt7MNVvkzD', NULL, NULL, NULL, 0),
(149, 'Graduation', '2007-09-11', 'https://i.scdn.co/image/ab67616d00001e0226f7f19c7f0381e56156c94a', NULL, NULL, 0, NULL, 0, 1, '4SZko61aMnmgvNhfhgTuD3', NULL, NULL, NULL, 0),
(150, 'Lobby Music (Original Soundtrack)', '2013-03-05', 'https://i.scdn.co/image/ab67616d00001e0263cd4c15622c673478406f2e', NULL, NULL, 0, NULL, 0, 1, '2FdYcKE0mHidDAJdcnfNh0', NULL, NULL, NULL, 0),
(151, 'Kane Brown', '2016-12-02', 'https://i.scdn.co/image/ab67616d00001e0248295fd4144b8ce6b437d682', NULL, NULL, 0, NULL, 0, 1, '4hhvgHjPqUOAYkclDkhL2T', NULL, NULL, NULL, 0),
(152, 'OCEAN', '2019-05-03', 'https://i.scdn.co/image/ab67616d00001e02813d0c955d8224bd5f919a75', NULL, NULL, 0, NULL, 0, 1, '4i5b4YWuMtneUSvQPONwzK', NULL, NULL, NULL, 0),
(153, 'Kaya', '1978', 'https://i.scdn.co/image/ab67616d00001e02387799441ba867649dfbb702', NULL, NULL, 0, NULL, 0, 1, '13dXX35pYjr8FqRla40K2a', NULL, NULL, NULL, 0),
(154, 'Unstoppable', '2017-10-27', 'https://i.scdn.co/image/ab67616d00001e02649f01bbab8409909d42a166', NULL, NULL, 0, NULL, 0, 1, '12nlJpvrOd7tTOaCxB1UeR', NULL, NULL, NULL, 0),
(155, 'Kala', '2007-08-20', 'https://i.scdn.co/image/ab67616d00001e02a8ea5b2ab46dc5fc899ef81e', NULL, NULL, 0, NULL, 0, 1, '2xoj2gYed3IYmGWn3owSfu', NULL, NULL, NULL, 0),
(156, 'CONSEQUENCES', '2023-01-27', 'https://i.scdn.co/image/ab67616d00001e027f721b90d2f80e9a33190e8e', NULL, NULL, 0, NULL, 0, 1, '0PL1jYBuFc0GneQ3AYFveE', NULL, NULL, NULL, 0),
(157, 'Red Moon In Venus', '2023-03-03', 'https://i.scdn.co/image/ab67616d00001e0281fccd758776d16b87721b17', NULL, NULL, 0, NULL, 0, 1, '5OZ44LaqZbpP3m9B3oT8br', NULL, NULL, NULL, 0),
(158, 'PRISM', '2013-01-01', 'https://i.scdn.co/image/ab67616d00001e021e9a057052d59004caf47e22', NULL, NULL, 0, NULL, 0, 1, '3jB9yFDwRe3KhtGnHXJntk', NULL, NULL, NULL, 0),
(159, 'Kauai', '2014-10-03', 'https://i.scdn.co/image/ab67616d00001e02d98a6832141788d8c355852b', NULL, NULL, 0, NULL, 0, 1, '3EyDuWSBOZGl5CAlBkSrOE', NULL, NULL, NULL, 0),
(160, 'PROVENZA', '2022-04-22', 'https://i.scdn.co/image/ab67616d00001e02e70c454b8989f09d1e11ea92', NULL, NULL, 0, NULL, 0, 1, '1wLB2bnCl2m5m9M9g8r93Y', NULL, NULL, NULL, 0),
(161, 'Karma and Effect', '2005-01-01', 'https://i.scdn.co/image/ab67616d00001e02c66ad69a4c9fec63e6f49a3a', NULL, NULL, 0, NULL, 0, 1, '1C5xrwfzgDM0hz7Kb035V3', NULL, NULL, NULL, 0),
(162, 'Last Day Of Summer', '2018-10-19', 'https://i.scdn.co/image/ab67616d00001e02fb023e6073e38a52082cc7b6', NULL, NULL, 0, NULL, 0, 1, '4hTM8jZ8DCCqglmZUDMSPz', NULL, NULL, NULL, 0),
(163, 'Flower Boy', '2017-07-21', 'https://i.scdn.co/image/ab67616d00001e028940ac99f49e44f59e6f7fb3', NULL, NULL, 0, NULL, 0, 1, '2nkto6YNI4rUYTLqEwWJ3o', NULL, NULL, NULL, 0),
(164, 'Kant Nobody', '2023-02-23', 'https://i.scdn.co/image/ab67616d00001e021e725a85985f8279f466ccab', NULL, NULL, 0, NULL, 0, 1, '6Qi8Hf2PW97oZP2a4Tvd24', NULL, NULL, NULL, 0),
(165, 'Midnights (3am Edition)', '2022-10-21', 'https://i.scdn.co/image/ab67616d00001e024a97c76d7b4f6530f439c249', NULL, NULL, 0, NULL, 0, 1, '4894htPwC6zoiuTqUQwn4I', NULL, NULL, NULL, 0),
(166, 'FLAWLESS LIKE ME', '2022-09-23', 'https://i.scdn.co/image/ab67616d00001e02ba1e08a3179fdf5a5125fe63', NULL, NULL, 0, NULL, 0, 1, '5zWZi7tO66MoobIAl9OxWS', NULL, NULL, NULL, 0),
(167, 'OK Computer', '1997-05-28', 'https://i.scdn.co/image/ab67616d00001e02c8b444df094279e70d0ed856', NULL, NULL, 0, NULL, 0, 1, '6dVIqQ8qmQ5GBnJ9shOYGE', NULL, NULL, NULL, 0),
(168, 'Top', '2020-09-11', 'https://i.scdn.co/image/ab67616d00001e028bd6e34012a7ab6311050d0c', NULL, NULL, 0, NULL, 0, 1, '6MbQdX6OomgQhZU6QCqMKW', NULL, NULL, NULL, 0),
(169, 'Neotheater', '2019-04-26', 'https://i.scdn.co/image/ab67616d00001e02cdf236ee1894e159ae80bf3e', NULL, NULL, 0, NULL, 0, 1, '02tIakRsIFGW8sO4pBtJgj', NULL, NULL, NULL, 0),
(170, '2 Alivë (Geëk Pack)', '2022-04-01', 'https://i.scdn.co/image/ab67616d00001e02dac51d9a5701fbfb222f2f06', NULL, NULL, 0, NULL, 0, 1, '0345WPzPBSeISh2IpIQWxT', NULL, NULL, NULL, 0),
(171, 'Colour By Numbers', '1983-10-01', 'https://i.scdn.co/image/ab67616d00001e02c7d7cdad0c2ffa5620129ee8', NULL, NULL, 0, NULL, 0, 1, '51NPMfa9QfxsYtqzcB2VfY', NULL, NULL, NULL, 0),
(172, 'PRISM (Deluxe)', '2013-10-18', 'https://i.scdn.co/image/ab67616d00001e0247f930accd8ac01686401fa2', NULL, NULL, 0, NULL, 0, 1, '5MQBzs5YlZlE28mD9yUItn', NULL, NULL, NULL, 0),
(173, 'Kaikai Kitan / Ao No Waltz', '2020-12-23', 'https://i.scdn.co/image/ab67616d00001e024b54d2a72484832db80a0fe9', NULL, NULL, 0, NULL, 0, 1, '6BZjN6j79mjz7PJfGmvCR1', NULL, NULL, NULL, 0),
(174, 'MAMIII', '2022-02-10', 'https://i.scdn.co/image/ab67616d00001e0272babf690675fe969470e8ee', NULL, NULL, 0, NULL, 0, 1, '6GHUywBU0u92lg0Dhrt40R', NULL, NULL, NULL, 0),
(181, 'Four You', '2023-02-04', 'https://i.scdn.co/image/ab67616d00001e02c5cab0ebb4a441e4d4d954df', NULL, NULL, 0, NULL, 0, 1, '5IVcvfVOLEPMJ4PKqPaq2w', NULL, NULL, NULL, 0),
(182, 'P.O.V (Point of View)', '2023-04-24', 'https://i.scdn.co/image/ab67616d00001e02c6677eca57841df16b6014d6', NULL, NULL, 0, NULL, 0, 1, '65vqiJwNrkv0it9fclatIK', NULL, NULL, NULL, 0),
(183, 'Karanlığın', '2022-04-24', 'https://i.scdn.co/image/ab67616d00001e0206648e5ab0831695bc3d109b', NULL, NULL, 0, NULL, 0, 1, '5bHzvXrD9P7glZAFyaHsSG', NULL, NULL, NULL, 0),
(184, 'Way Ahead', '2022-05-10', 'https://i.scdn.co/image/ab67616d00001e02dd901ebb941ee763eba5620b', NULL, NULL, 0, NULL, 0, 1, '0hyDY9e60a2LNEasyI52KF', NULL, NULL, NULL, 0),
(185, 'Karanlık', '2019-04-05', 'https://i.scdn.co/image/ab67616d00001e0261d6750a0251c9499570e586', NULL, NULL, 0, NULL, 0, 1, '6XQYptMz07Qqlcj6FthKpS', NULL, NULL, NULL, 0),
(186, 'Karan', '2023-02-11', 'https://i.scdn.co/image/ab67616d00001e0253a14b25ff5fb1f22280227d', NULL, NULL, 0, NULL, 0, 1, '6ByANE5QJdpWut7RdnWSip', NULL, NULL, NULL, 0),
(187, 'Karãn', '2023-03-18', 'https://i.scdn.co/image/ab67616d00001e02e400d74dd2ae8c4b1da2254f', NULL, NULL, 0, NULL, 0, 1, '4boTnSxM6gB4N9VpUfBBmW', NULL, NULL, NULL, 0),
(188, 'Karan (Original Motion Picture Soundtrack)', '1994-01-01', 'https://i.scdn.co/image/ab67616d00001e025a916093fb7b0bc4d482144e', NULL, NULL, 0, NULL, 0, 1, '0Yd5v6Y8l5a1nrWtnzYgk6', NULL, NULL, NULL, 0),
(189, 'White Brown Black', '2022-12-09', 'https://i.scdn.co/image/ab67616d00001e0258c9caea7e001cc0a2819bcf', NULL, NULL, 0, NULL, 0, 1, '3rOSq53b9Cv7ygKe5NwKNJ', NULL, NULL, NULL, 0),
(190, 'Karan', '2022-08-10', 'https://i.scdn.co/image/ab67616d00001e020780843ecb0dd1d73d23f358', NULL, NULL, 0, NULL, 0, 1, '14ViSqCPXwfdsxOKByOjy4', NULL, NULL, NULL, 0),
(191, 'Karan Arjun (Original Motion Picture Soundtrack)', '1995-01-13', 'https://i.scdn.co/image/ab67616d00001e0207bd33669700ba6e77498bfe', NULL, NULL, 0, NULL, 0, 1, '3Dxfrb1Bld76PrHGSG4pcy', NULL, NULL, NULL, 0),
(192, 'Karan', '2018-08-31', 'https://i.scdn.co/image/ab67616d00001e027309f129848bf949551b7354', NULL, NULL, 0, NULL, 0, 1, '5niRGGeDRm8OahUUu1ZdZC', NULL, NULL, NULL, 0),
(193, 'Karanlıklar İçindeyim', '2023-04-24', 'https://i.scdn.co/image/ab67616d00001e0219cb87c64e215e00f03a8b84', NULL, NULL, 0, NULL, 0, 1, '236CRJe83g3is60s1bkT16', NULL, NULL, NULL, 0),
(194, 'On Top', '2022-11-25', 'https://i.scdn.co/image/ab67616d00001e02865c8db3cbe7293861942aa2', NULL, NULL, 0, NULL, 0, 1, '6ephunHyThVj3tQkGgZKpJ', NULL, NULL, NULL, 0),
(195, 'Karantèn avew', '2020-05-01', 'https://i.scdn.co/image/ab67616d00001e02535a4bf0a8839525a830ec11', NULL, NULL, 0, NULL, 0, 1, '0x0QYFzjUEj7fiGokXhLWc', NULL, NULL, NULL, 0),
(196, 'B.T.F.U', '2021-09-15', 'https://i.scdn.co/image/ab67616d00001e02372f85b7c3c6adcb2d20c8a8', NULL, NULL, 0, NULL, 0, 1, '1qH7e7TaKxpHxu4mGxofDs', NULL, NULL, NULL, 0),
(197, 'Players', '2022-12-21', 'https://i.scdn.co/image/ab67616d00001e02ecdab71336ca522eca0631f7', NULL, NULL, 0, NULL, 0, 1, '2ap6wepv8WNqHCxJiclPIL', NULL, NULL, NULL, 0),
(198, 'FRIDAY NIGHT FUNKIN: ANTIPATHY ORIGINAL SOUNDTRACK (VOLUME 1)', '2022-09-30', 'https://i.scdn.co/image/ab67616d00001e02bfff08054a0e93a67933fc44', NULL, NULL, 0, NULL, 0, 1, '0UBJQF9RfwOWnuNgF6L49b', NULL, NULL, NULL, 0),
(199, 'Wytb', '2022-11-25', 'https://i.scdn.co/image/ab67616d00001e022d9a9bab833e97a9aa82f008', NULL, NULL, 0, NULL, 0, 1, '4yN52ilychdYFbugDvLrJK', NULL, NULL, NULL, 0),
(200, 'Ykwim', '2022-01-18', 'https://i.scdn.co/image/ab67616d00001e027162dc7fbd69d82805a2aab1', NULL, NULL, 0, NULL, 0, 1, '14XBYP5RcavbvSREiaQ17V', NULL, NULL, NULL, 0),
(201, 'Veragua', '2020-02-14', 'https://i.scdn.co/image/ab67616d00001e02f300f6956f6d6706e478e67d', NULL, NULL, 0, NULL, 0, 1, '1zsOPq36S6sAaIpDCVhJns', NULL, NULL, NULL, 0),
(202, 'Amoro', '2023-04-07', 'https://i.scdn.co/image/ab67616d00001e02d53f7e9b96bcdf14c4a44fd9', NULL, NULL, 0, NULL, 0, 1, '2Ri5OfpBz9FH9AsHA6V4UX', NULL, NULL, NULL, 0),
(203, 'Escape', '2018-09-18', 'https://i.scdn.co/image/ab67616d00001e0223b9d2a96abab32096260650', NULL, NULL, 0, NULL, 0, 1, '3L23iqofWiemhoQMOA3dhT', NULL, NULL, NULL, 0),
(204, 'Mousso Lou', '2014-06-03', 'https://i.scdn.co/image/ab67616d00001e02fd1145ffffa254cc4f5d46d4', NULL, NULL, 0, NULL, 0, 1, '4rpwaYHJR6AbGmVKtfzKZ4', NULL, NULL, NULL, 0),
(205, '100', '2022-12-16', 'https://i.scdn.co/image/ab67616d00001e02cbd3629dee5120a38ec40edd', NULL, NULL, 0, NULL, 0, 1, '5lVCFUe9GVCPHEGXxaKrwG', NULL, NULL, NULL, 0),
(206, 'Son cœur est monté', '2001', 'https://i.scdn.co/image/ab67616d00001e02854a3b44dd92ecca85ec6e76', NULL, NULL, 0, NULL, 0, 1, '332tdT0vC3w47egwytx1Ig', NULL, NULL, NULL, 0),
(207, 'Kora Talking', '2020-11-12', 'https://i.scdn.co/image/ab67616d00001e022b072072e57d2cf37ee404ff', NULL, NULL, 0, NULL, 0, 1, '1181Mct8m4PdNX2syGCBhf', NULL, NULL, NULL, 0),
(208, '3:00 AM Sessions', '2023-02-07', 'https://i.scdn.co/image/ab67616d00001e0274567e1ea8de537e6e4500fc', NULL, NULL, 0, NULL, 0, 1, '7o9sqNRikTO3eeira2Qlx2', NULL, NULL, NULL, 0),
(209, 'X SI VOLVEMOS', '2023-02-03', 'https://i.scdn.co/image/ab67616d00001e02a1e30a6e8323b8c2d2d1fa53', NULL, NULL, 0, NULL, 0, 1, '1skkjCQGfaGg0wpVw6cq5w', NULL, NULL, NULL, 0),
(210, 'Karma 3', '2020-08-14', 'https://i.scdn.co/image/ab67616d00001e0278ca46b9125d774ad8dbc66e', NULL, NULL, 0, NULL, 0, 1, '5Z9H6gen4nUySpLZzKy2y0', NULL, NULL, NULL, 0),
(211, 'MAÑANA SERÁ BONITO', '2023-02-23', 'https://i.scdn.co/image/ab67616d00001e0233531678daf0d84103b424df', NULL, NULL, 0, NULL, 0, 1, '11m9rST3w0lGKlSbbqPpdW', NULL, NULL, NULL, 0),
(212, 'Karma', '2018-06-29', 'https://i.scdn.co/image/ab67616d00001e020283dabb7aae9e666faa9d45', NULL, NULL, 0, NULL, 0, 1, '13AioFwH1nNynbyO8AZW6L', NULL, NULL, NULL, 0),
(213, 'Karenia', '2022-10-08', 'https://i.scdn.co/image/ab67616d00001e028ef609c44d6c67021c7e35a8', NULL, NULL, 0, NULL, 0, 1, '35mcwZKfvyOghkKKsuofnW', NULL, NULL, NULL, 0),
(214, 'A Kind Of Hush', '1976-01-01', 'https://i.scdn.co/image/ab67616d00001e02f5fe8d048d796182a29d9cc4', NULL, NULL, 0, NULL, 0, 1, '7FumsdTmFk5Yq4TN3A4XTl', NULL, NULL, NULL, 0),
(215, 'Karma 2', '2018-07-27', 'https://i.scdn.co/image/ab67616d00001e023065c1b0ccc61324b80d7c6c', NULL, NULL, 0, NULL, 0, 1, '2Q2dle6IHWQXC9JCiUX4xA', NULL, NULL, NULL, 0),
(216, 'The Karate Kid: The Original Motion Picture Soundtrack', '1984', 'https://i.scdn.co/image/ab67616d00001e025631dff79dceb723ab1e680d', NULL, NULL, 0, NULL, 0, 1, '1zNIDZncmWNpb1WkyfRPdH', NULL, NULL, NULL, 0),
(217, 'Karyn White', '1988-01-01', 'https://i.scdn.co/image/ab67616d00001e024ed1410bb4b7681d30c2a2a4', NULL, NULL, 0, NULL, 0, 1, '2Ck4KnfNbVPQqcRkmsDt6F', NULL, NULL, NULL, 0),
(218, 'Piano Backing Tracks, Vol. 1 (Piano Karaoke Instrumentals)', '2008-05-05', 'https://i.scdn.co/image/ab67616d00001e02a9b8bd0192dbb8ff3c2415cf', NULL, NULL, 0, NULL, 0, 1, '0Gh5WxvfLEyjPYb3CqGOyU', NULL, NULL, NULL, 0),
(219, 'La Vida Es Una (From Puss in Boots: The Last Wish)', '2022-12-08', 'https://i.scdn.co/image/ab67616d00001e02228e8eeffe2b020e8ffe5af7', NULL, NULL, 0, NULL, 0, 1, '4IhIx79me6iItoaJzR0Xqb', NULL, NULL, NULL, 0),
(220, 'Kari Jobe', '2010-09-30', 'https://i.scdn.co/image/ab67616d00001e022428249312a6790916c63473', NULL, NULL, 0, NULL, 0, 1, '43qobCIpLpsxshjc7PbAXb', NULL, NULL, NULL, 0),
(221, 'SEJODIOTO', '2021-09-21', 'https://i.scdn.co/image/ab67616d00001e02aa3bbf26a1ff6343348f501d', NULL, NULL, 0, NULL, 0, 1, '3NRAio2j75NpNvs8KcIgtc', NULL, NULL, NULL, 0),
(222, 'Last Day Of Summer (Sped Up)', '2022-10-31', 'https://i.scdn.co/image/ab67616d00001e02ae225a4b0f4fc7c1bbc64944', NULL, NULL, 0, NULL, 0, 1, '2vIAupx3DY7BXPCG2WeQHw', NULL, NULL, NULL, 0),
(223, 'Midnights (3am Edition)', '2022-10-22', 'https://i.scdn.co/image/ab67616d00001e02e0b60c608586d88252b8fbc0', NULL, NULL, 0, NULL, 0, 1, '3lS1y25WAhcqJDATJK70Mq', NULL, NULL, NULL, 0),
(224, 'TV (Deluxe Edition)', '2016-06-19', 'https://i.scdn.co/image/ab67616d00001e02732380e2c90db22d618faee3', NULL, NULL, 0, NULL, 0, 1, '3SX2XUG6D546A1G5ym4Cac', NULL, NULL, NULL, 0),
(225, 'BICHOTA', '2020-10-23', 'https://i.scdn.co/image/ab67616d00001e02a9c7357101e65ee6af3c3789', NULL, NULL, 0, NULL, 0, 1, '6LO6I2uJMkc0u7GHBYHa4Y', NULL, NULL, NULL, 0),
(240, 'KARA 3rd Album STEP', '2011-09-06', 'https://i.scdn.co/image/ab67616d00001e025c35ba8d71af90f12fb5cc08', NULL, NULL, 0, NULL, 0, 1, '3D9pw2IEWic2jPL7ER8sM9', NULL, NULL, NULL, 0),
(241, 'The Karate Kid (Music from the Motion Picture)', '2010-06-01', 'https://i.scdn.co/image/ab67616d00001e022e58a008177c88bef508ed54', NULL, NULL, 0, NULL, 0, 1, '1ok86ehqefda3YlxLuiBfK', NULL, NULL, NULL, 0),
(242, 'Kara Sevda (Orijinal Dizi Müzikleri)', '2016-10-12', 'https://i.scdn.co/image/ab67616d00001e02ee54dc4ce2b1d5ccf3594a68', NULL, NULL, 0, NULL, 0, 1, '6LUkPtNAv9kNbFUZf3qLDB', NULL, NULL, NULL, 0),
(243, 'Karaoke Hits', '2020-05-22', 'https://i.scdn.co/image/ab67616d00001e02a1560c02bd251be8680ed057', NULL, NULL, 0, NULL, 0, 1, '6l36N9sahHnlbcGo4vtpUa', NULL, NULL, NULL, 0),
(244, '100 Karaoke Hits - All of the Top Sing-a-Long Classics You\'ll Ever Need!', '2014-08-25', 'https://i.scdn.co/image/ab67616d00001e023b812a2484688776a9c2fae0', NULL, NULL, 0, NULL, 0, 1, '2ZDFDjCMDZK8GVMjT88KPX', NULL, NULL, NULL, 0),
(245, 'Karate', '2014-12-29', 'https://i.scdn.co/image/ab67616d00001e022d076543e015f5b54723a347', NULL, NULL, 0, NULL, 0, 1, '2d08mANNHmeIsJLnbqE6NU', NULL, NULL, NULL, 0),
(246, 'The Karate Kid (Original Motion Picture Score)', '2019', 'https://i.scdn.co/image/ab67616d00001e0266329722041165cd0a907587', NULL, NULL, 0, NULL, 0, 1, '6uAYx7E7pH7oOt4WUHtaV0', NULL, NULL, NULL, 0),
(247, 'Why Does the Earth Give Us People to Love?', '2023-04-14', 'https://i.scdn.co/image/ab67616d00001e02ddcca64eceb4a2e82daa91ba', NULL, NULL, 0, NULL, 0, 1, '2itoipNg0XOD1uwThhkVtO', NULL, NULL, NULL, 0),
(248, 'The Karaoke Musical Collection (Vol. 4)', '2011-06-27', 'https://i.scdn.co/image/ab67616d00001e020e343d2a405c4d84ed8ccce2', NULL, NULL, 0, NULL, 0, 1, '57854cTTc8exXay8wpZMJB', NULL, NULL, NULL, 0),
(249, 'Karamela', '2023-01-06', 'https://i.scdn.co/image/ab67616d00001e02c176c6ea2c27a91f6b908a01', NULL, NULL, 0, NULL, 0, 1, '6uKavtqrGk6qUIH1aSxoZx', NULL, NULL, NULL, 0),
(250, 'Karaindrou: Tous des oiseaux', '2019-01-25', 'https://i.scdn.co/image/ab67616d00001e02c35b1348646191ef5b598e41', NULL, NULL, 0, NULL, 0, 1, '7HdMpIuRUUhA19xUWRjHmd', NULL, NULL, NULL, 0),
(251, 'Lost Boy (In the Style of Ruth B) [Karaoke Version]', '2016-06-10', 'https://i.scdn.co/image/ab67616d00001e0243e206f08abb34fe6733e88b', NULL, NULL, 0, NULL, 0, 1, '5glZtIXrMnVS52tjqOvQk8', NULL, NULL, NULL, 0),
(252, 'Aglow (Intro) [Slowed Down Version]', '2020-11-25', 'https://i.scdn.co/image/ab67616d00001e0225c2bab81f36c57ed6740852', NULL, NULL, 0, NULL, 0, 1, '5WpAUdjI1QOXhUYKq8YQ5L', NULL, NULL, NULL, 0),
(253, 'Karaoke Broadway Hits Vol. 17', '2012-01-23', 'https://i.scdn.co/image/ab67616d00001e02ef25f346c6bf75b9717994e0', NULL, NULL, 0, NULL, 0, 1, '5IokGgUTo3NO2miD3JP1m9', NULL, NULL, NULL, 0),
(254, 'Childrens Singalong Karaoke Favourites - 40 Classic Karaoke Kids Nursery Rhymes and Songs', '2015-02-15', 'https://i.scdn.co/image/ab67616d00001e025503ff4d7158cced10813acd', NULL, NULL, 0, NULL, 0, 1, '6WLk5Qhe2H7LxKe3sQAV2t', NULL, NULL, NULL, 0),
(255, 'Thank Me Later', '2010-01-01', 'https://i.scdn.co/image/ab67616d00001e0211b21e8b868800918d21bb77', NULL, NULL, 0, NULL, 0, 1, '6jlrjFR9mJV3jd1IPSplXU', NULL, NULL, NULL, 0),
(256, '3rd Ward Bounce', '2018-06-01', 'https://i.scdn.co/image/ab67616d00001e0244aef635102ad58a781bd1a1', NULL, NULL, 0, NULL, 0, 1, '6wzAzsG8uu5DxGR1q4tVxj', NULL, NULL, NULL, 0),
(257, 'きくおミク5', '2018-01-24', 'https://i.scdn.co/image/ab67616d00001e02fd1ca97d39372818ff437210', NULL, NULL, 0, NULL, 0, 1, '3WNehG6cwmM6dy37lXn70Z', NULL, NULL, NULL, 0),
(258, 'METAL RESISTANCE', '2016-04-01', 'https://i.scdn.co/image/ab67616d00001e02fb9801e0a6ddc403436b88dc', NULL, NULL, 0, NULL, 0, 1, '2vIRdYffs93ca7L0Eh4mTm', NULL, NULL, NULL, 0),
(259, 'Exit Tunes Presents 10 Dai Utattemita Live! Best 2', '2015-08-01', 'https://i.scdn.co/image/ab67616d00001e02ecd4821036e4d1a3a75ba65a', NULL, NULL, 0, NULL, 0, 1, '70V9ksT4QE37a9pIpxXqSI', NULL, NULL, NULL, 0),
(260, 'The Art of Spice Talk', '2021-09-25', 'https://i.scdn.co/image/ab67616d00001e02ccdc4c036e0ddc052cd03791', NULL, NULL, 0, NULL, 0, 1, '4dR4bPEOqL3fwd7xc0bU9Q', NULL, NULL, NULL, 0),
(261, 'Honest', '2014-04-22', 'https://i.scdn.co/image/ab67616d00001e02b226ab81b0934f43465ff5f0', NULL, NULL, 0, NULL, 0, 1, '5rbqupVSYwvEmXBUnFtUf7', NULL, NULL, NULL, 0),
(262, 'Whateva, Vol. 4', '2020-12-14', 'https://i.scdn.co/image/ab67616d00001e02cd962e780ee331aa8ba361ed', NULL, NULL, 0, NULL, 0, 1, '1CsX72BYnBOO5n1a3xn8SC', NULL, NULL, NULL, 0),
(263, 'Declare War', '2021-01-26', 'https://i.scdn.co/image/ab67616d00001e02b1b4a6c64487bbf9b70cae9c', NULL, NULL, 0, NULL, 0, 1, '21knUIPfjnEZggeAVgDwSz', NULL, NULL, NULL, 0),
(264, 'Thundering Hopes', '2020-07-01', 'https://i.scdn.co/image/ab67616d00001e029dfcf6d9bcb0157850219589', NULL, NULL, 0, NULL, 0, 1, '6fiK3VPNK38HEYhnWzsIrw', NULL, NULL, NULL, 0),
(265, '初音ミク「マジカルミライ 2014」 [Live]', '2015-02-25', 'https://i.scdn.co/image/ab67616d00001e028b03908474894a83c9d0a369', NULL, NULL, 0, NULL, 0, 1, '7HZ5f4jeJ8X7vJOuCTYReE', NULL, NULL, NULL, 0),
(266, 'Emotional Creature', '2022-07-22', 'https://i.scdn.co/image/ab67616d00001e025780e229ab80b573b78e5778', NULL, NULL, 0, NULL, 0, 1, '3H6pbRzmpQa6eqCXn7rgO8', NULL, NULL, NULL, 0),
(267, 'Foremmi', '2018-12-14', 'https://i.scdn.co/image/ab67616d00001e022e2f53611948de42ae54c59a', NULL, NULL, 0, NULL, 0, 1, '0SA3BlRJCz1nHl9Q5UkhG6', NULL, NULL, NULL, 0),
(268, 'Tenacious D', '2001-09-25', 'https://i.scdn.co/image/ab67616d00001e02ee0285c63a334af9b91fa12b', NULL, NULL, 0, NULL, 0, 1, '1AckkxSo39144vOBrJ1GkS', NULL, NULL, NULL, 0),
(269, 'CHOP BOX EP', '2020-05-29', 'https://i.scdn.co/image/ab67616d00001e02e10a97623e1765069528fba2', NULL, NULL, 0, NULL, 0, 1, '6Sdc8XV0EOy2QqgehutvIo', NULL, NULL, NULL, 0),
(336, 'Moosetape', '2021-05-15', 'https://i.scdn.co/image/ab67616d00001e021d1cc2e40d533d7bcebf5dae', 82, NULL, 0, NULL, 0, 1, '45ZIondgVoMB84MQQaUo9T', NULL, NULL, NULL, 0),
(337, 'Snitches Get Stitches', '2020-05-09', 'https://i.scdn.co/image/ab67616d00001e02ce9b55302f3fa4411499553d', 63, NULL, 0, NULL, 0, 1, '4lGKsta6BzDVgzKfcSCC7E', NULL, NULL, NULL, 0),
(338, 'Pbx 1', '2018-10-18', 'https://i.scdn.co/image/ab67616d00001e02fec91fd3e8892d0b79d7a1a4', 71, NULL, 0, NULL, 0, 1, '07LkboydJU8NSoNXkviZfJ', NULL, NULL, NULL, 0),
(339, 'I\'m Better Now Lofi Mix', '2023-04-21', 'https://i.scdn.co/image/ab67616d00001e02e80cd950a0f8d193342f8f97', 43, NULL, 0, NULL, 0, 1, '6NJAPMzx2bJ5xAsv6JpqBh', NULL, NULL, NULL, 0),
(340, 'Mera Na', '2023-04-07', 'https://i.scdn.co/image/ab67616d00001e02b9451606611a0dac0a5e7c78', 71, NULL, 0, NULL, 0, 1, '6sUoLxSldFKFctJW8ocYh1', NULL, NULL, NULL, 0),
(341, 'Dark Love', '2023-01-11', 'https://i.scdn.co/image/ab67616d00001e027a986c3f4a74872aa6004d4f', 46, NULL, 0, NULL, 0, 1, '5ile1OfmD7ufknVXzFN02e', NULL, NULL, NULL, 0),
(342, 'Moosa Jatt (Original Motion Picture Soundtrack)', '2022-11-18', 'https://i.scdn.co/image/ab67616d00001e026d07ce49be8ef026daa5d97f', 35, NULL, 0, NULL, 0, 1, '0QvfLcBu8T37vgjyGTCx28', NULL, NULL, NULL, 0),
(343, 'Vaar', '2022-11-08', 'https://i.scdn.co/image/ab67616d00001e025d425667d081ffd9ecb8421b', 51, NULL, 0, NULL, 0, 1, '4BVZUGlil7yXxCPxGe5OwF', NULL, NULL, NULL, 0),
(344, 'Bad (DJ Hardik Remix)', '2022-10-22', 'https://i.scdn.co/image/ab67616d00001e02b015dff551491627feccb9cc', 12, NULL, 0, NULL, 0, 1, '3xs2TSrsB9raVbH6zetX54', NULL, NULL, NULL, 0),
(345, 'Bad Remix', '2022-10-22', 'https://i.scdn.co/image/ab67616d00001e02f8ccd12633c116bffcd55288', 20, NULL, 0, NULL, 0, 1, '1A8dlnWYNQZgVwtLuKPlMI', NULL, NULL, NULL, 0),
(346, 'Dollar (Lofi Version)', '2022-10-10', 'https://i.scdn.co/image/ab67616d00001e0230ff1ae9149eac8d4d3886d6', 36, NULL, 0, NULL, 0, 1, '54RZiIAEFKD9XSKtUyPjQq', NULL, NULL, NULL, 0),
(347, 'Hathyar (From \"Sikander 2\")', '2022-09-15', 'https://i.scdn.co/image/ab67616d00001e02cf58f5a2e9048a8506506199', 58, NULL, 0, NULL, 0, 1, '1eRa0g0SMEr9yfDzdnWQ93', NULL, NULL, NULL, 0),
(348, 'SYL', '2022-06-23', 'https://i.scdn.co/image/ab67616d00001e024a6ce64cdb7115f52f37ff76', 60, NULL, 0, NULL, 0, 1, '2NVYsJrBDBSZ2G2z63Bbgu', NULL, NULL, NULL, 0),
(349, 'Levels', '2022-05-25', 'https://i.scdn.co/image/ab67616d00001e021cf092f7828a17c0790e2f00', 69, NULL, 0, NULL, 0, 1, '3UhoziCnYqcgxFpzYSx233', NULL, NULL, NULL, 0),
(350, 'The Last Ride', '2022-05-15', 'https://i.scdn.co/image/ab67616d00001e0274568d5f6ec286a36613a517', 68, NULL, 0, NULL, 0, 1, '2ga8NDQRxoXRAsqajZoCjv', NULL, NULL, NULL, 0),
(351, 'No Name', '2022-04-25', 'https://i.scdn.co/image/ab67616d00001e02fd2e3126a9d286550f9921a2', 77, NULL, 1, NULL, 0, 1, '57SIarHHgfby4AvV6ftCB5', NULL, '2023-05-09 01:49:17', NULL, 5),
(352, 'Scapegoat', '2022-04-11', 'https://i.scdn.co/image/ab67616d00001e0277a75668cab907b54f93f015', 51, NULL, 0, NULL, 0, 1, '57H1cyRJxpt3COMGnSnl7N', NULL, NULL, NULL, 0),
(353, 'Fuck Em All', '2022-03-23', 'https://i.scdn.co/image/ab67616d00001e02451dddd5224b297717ea34dd', 58, NULL, 0, NULL, 0, 1, '6PTLko2QL2jLSvSVqrwIrd', NULL, NULL, NULL, 0),
(354, 'Youngest In Charge', '2022-02-13', 'https://i.scdn.co/image/ab67616d00001e0228f0e36464753984b0238d6c', 59, NULL, 0, NULL, 0, 1, '1vgjx6xmhIKGa5eiKeJvSB', NULL, NULL, NULL, 0),
(355, 'Bad (Uk Drill Remix)', '2021-11-27', 'https://i.scdn.co/image/ab67616d00001e027cab299e17947477cafc1c92', 16, NULL, 0, NULL, 0, 1, '0WguukC81fUMwflkRDMNxx', NULL, NULL, NULL, 0),
(356, 'Satisfy', '2021-11-18', 'https://i.scdn.co/image/ab67616d00001e02a8af3cf3c5453ff9290f26da', 56, NULL, 0, NULL, 0, 1, '6RYfEZXGozNip5vEpP0Llp', NULL, NULL, NULL, 0),
(357, 'Moh', '2021-11-06', 'https://i.scdn.co/image/ab67616d00001e02b80a1513e0cd75ab43c3b397', 43, NULL, 0, NULL, 0, 1, '4Ikr30mgjTypLKKlIsebIV', NULL, NULL, NULL, 0),
(358, 'Yes I Am Student (Original Motion Picture Soundtrack)', '2021-10-11', 'https://i.scdn.co/image/ab67616d00001e026129b199508827d651d90f96', 57, NULL, 0, NULL, 0, 1, '66xAXabKt8mUAyY2pqklvq', NULL, NULL, NULL, 0),
(359, 'Paapi', '2021-10-02', 'https://i.scdn.co/image/ab67616d00001e0258e72ed7cf18da7361939819', 30, NULL, 0, NULL, 0, 1, '0RPATCORmHDrcv7CXylCLE', NULL, NULL, NULL, 0),
(360, 'Paapi (Explicit)', '2021-10-02', 'https://i.scdn.co/image/ab67616d00001e02037c6cd6dda6fe328c1f4990', 38, NULL, 0, NULL, 0, 1, '64vZSSvGpYlqTacfpPToZZ', NULL, NULL, NULL, 0),
(361, 'Jailaan (From \"Moosa Jatt\")', '2021-09-01', 'https://i.scdn.co/image/ab67616d00001e02e3453d9a11e8a096b7790b15', 43, NULL, 0, NULL, 0, 1, '3MtObjRseu7Tr6QIf6ud0d', NULL, NULL, NULL, 0),
(362, 'Cadilac', '2021-06-22', 'https://i.scdn.co/image/ab67616d00001e027310dfe5631fedfed7ded367', 29, NULL, 0, NULL, 0, 1, '75S7Nxhfu2S8JauxkzyCr3', NULL, NULL, NULL, 0),
(363, 'Jatti Jeone Morh Wargi (Remix)', '2021-05-21', 'https://i.scdn.co/image/ab67616d00001e02000441d3deeafac2813892e4', 20, NULL, 0, NULL, 0, 1, '0jHsBbKBXmyYiP7ZtXg0fi', NULL, NULL, NULL, 0),
(364, 'Unfuckwithable (Bonus Track from Moosetape)', '2021-05-18', 'https://i.scdn.co/image/ab67616d00001e0274a8f7d1f1b3f2ce39601c9c', 53, NULL, 0, NULL, 0, 1, '2boT4LsTrMusn1fzSnM3Oq', NULL, NULL, NULL, 0),
(365, 'Who\'s Bad', '2021-05-08', 'https://i.scdn.co/image/ab67616d00001e02bd0ba7da319f7e88b5e1da06', 22, NULL, 0, NULL, 0, 1, '2boLXzbl5er5dXETbxb4if', NULL, NULL, NULL, 0),
(366, 'Sin', '2021-02-19', 'https://i.scdn.co/image/ab67616d00001e022fe9fcd7b419a252517553ae', 54, NULL, 0, NULL, 0, 1, '7yp5xkGyvmuDlrA0luJ56m', NULL, NULL, NULL, 0),
(367, 'Bad (Remix)', '2021-02-03', 'https://i.scdn.co/image/ab67616d00001e02e93bfd12df0412862559d76d', 13, NULL, 0, NULL, 0, 1, '5svVhSBgsnG8Zs5Wq6Njbb', NULL, NULL, NULL, 0),
(368, 'Panjab', '2020-12-27', 'https://i.scdn.co/image/ab67616d00001e02abf50e05d926613a11c33f5d', 43, NULL, 0, NULL, 0, 1, '5Jtu3QrbP0OQui6JDNVTIb', NULL, NULL, NULL, 0),
(369, 'Bai Bai', '2020-11-07', 'https://i.scdn.co/image/ab67616d00001e0256ff0342af05383fabfceb04', 50, NULL, 0, NULL, 0, 1, '3n9c8TFKnM3Mb0P6W4Lhii', NULL, NULL, NULL, 0),
(370, 'Bad', '2020-10-22', 'https://i.scdn.co/image/ab67616d00001e02a01c887edc7821ca7b690314', 34, NULL, 0, NULL, 0, 1, '0McYXtskKwpUtLLNZdZg1G', NULL, NULL, NULL, 0),
(371, 'Badfella Remix', '2020-09-11', 'https://i.scdn.co/image/ab67616d00001e0213fbcbfff2f860faf15a1e35', 27, NULL, 0, NULL, 0, 1, '7HOCB5tmmMJUvEOfH361rc', NULL, NULL, NULL, 0),
(372, 'Game', '2020-09-03', 'https://i.scdn.co/image/ab67616d00001e02cca715993e94ab9dd8575879', 56, NULL, 0, NULL, 0, 1, '3yVTUGFUELk79kX3ahcULT', NULL, NULL, NULL, 0),
(373, 'My Block', '2020-08-20', 'https://i.scdn.co/image/ab67616d00001e02c6624ead0a04b07aa4c543bb', 53, NULL, 0, NULL, 0, 1, '07Ma8FCynfFDkdx8cDwr8Z', NULL, NULL, NULL, 0),
(374, 'No Worries', '2020-08-13', 'https://i.scdn.co/image/ab67616d00001e02a8c5b71db548165b60bf343c', 37, NULL, 0, NULL, 0, 1, '1Kcuf0EXKd66EmlYomL2Df', NULL, NULL, NULL, 0),
(375, 'Old Skool', '2020-08-05', 'https://i.scdn.co/image/ab67616d00001e0271913d899f72b821f6f35c09', 61, NULL, 0, NULL, 0, 1, '357wf3qJ5AukE3IfN4e1Am', NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `spotify_followers` int(10) UNSIGNED DEFAULT NULL,
  `spotify_popularity` tinyint(3) UNSIGNED DEFAULT NULL,
  `image_small` varchar(191) DEFAULT NULL,
  `image_large` varchar(191) DEFAULT NULL,
  `fully_scraped` tinyint(1) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `auto_update` tinyint(1) NOT NULL DEFAULT 1,
  `spotify_id` char(22) DEFAULT NULL,
  `plays` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `verified` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`, `spotify_followers`, `spotify_popularity`, `image_small`, `image_large`, `fully_scraped`, `updated_at`, `created_at`, `views`, `auto_update`, `spotify_id`, `plays`, `verified`) VALUES
(1, 'H.E.R.', 6319394, 76, 'https://i.scdn.co/image/ab676161000051747b05445e212ac49d9ed4c310', 'https://i.scdn.co/image/ab6761610000e5eb7b05445e212ac49d9ed4c310', 0, NULL, NULL, 0, 1, '3Y7RZ31TRPVadSFVy1o8os', 0, 0),
(2, 'G Herbo', 1792674, 72, 'https://i.scdn.co/image/ab676161000051743841d7b1105afed2dad3ca24', 'https://i.scdn.co/image/ab6761610000e5eb3841d7b1105afed2dad3ca24', 0, NULL, NULL, 0, 1, '5QdEbQJ3ylBnc3gsIASAT5', 0, 0),
(3, 'Herencia de Patrones', 1437276, 68, 'https://i.scdn.co/image/ab67616100005174bea8e9474e49de0378a8d705', 'https://i.scdn.co/image/ab6761610000e5ebbea8e9474e49de0378a8d705', 0, NULL, NULL, 0, 1, '1Q6SZxTvaE3HhslV0iXbI6', 0, 0),
(4, 'Herbert von Karajan', 155497, 68, 'https://i.scdn.co/image/ab67616100005174f67fde1740e91a88445d5bdd', 'https://i.scdn.co/image/ab6761610000e5ebf67fde1740e91a88445d5bdd', 0, NULL, NULL, 0, 1, '5zCaQxjl110XTrm4LQ1CxY', 0, 0),
(5, 'Heroes Del Silencio', 2324301, 67, 'https://i.scdn.co/image/5bc475c4723f1e45ca2be335f2a824f981989f91', 'https://i.scdn.co/image/9ffe8fc45b8bad986946367201a3e547d9a6dc6a', 0, NULL, NULL, 0, 1, '3qAPxVwIQRBuz5ImPUxpZT', 0, 0),
(6, 'Her\'s', 739710, 64, 'https://i.scdn.co/image/ab676161000051746e339cf31f00e472b1ddd1c5', 'https://i.scdn.co/image/ab6761610000e5eb6e339cf31f00e472b1ddd1c5', 0, NULL, NULL, 0, 1, '77mJc3M7ZT5oOVM7gNdXim', 0, 0),
(7, 'Hermanos Gutiérrez', 200795, 63, 'https://i.scdn.co/image/ab6761610000517483261376259ef7c98abb6673', 'https://i.scdn.co/image/ab6761610000e5eb83261376259ef7c98abb6673', 0, NULL, NULL, 0, 1, '73mSg0dykFyhvU96tb5xQV', 0, 0),
(8, 'Herencia De Grandes', 25104, 60, 'https://i.scdn.co/image/ab6761610000517446a931593b5910f05230621c', 'https://i.scdn.co/image/ab6761610000e5eb46a931593b5910f05230621c', 0, NULL, NULL, 0, 1, '0ocHleb3SllGNQQcDH35Xz', 0, 0),
(9, 'Herbie Hancock', 624199, 57, 'https://i.scdn.co/image/ab67616100005174ca17170af02af227d6ea0c31', 'https://i.scdn.co/image/ab6761610000e5ebca17170af02af227d6ea0c31', 0, NULL, NULL, 0, 1, '2ZvrvbQNrHKwjT7qfGFFUW', 0, 0),
(10, 'LSPLASH', 98495, 57, 'https://i.scdn.co/image/ab676161000051744de95f4daada83eedf6019b8', 'https://i.scdn.co/image/ab6761610000e5eb4de95f4daada83eedf6019b8', 0, NULL, NULL, 0, 1, '03R6r9e5DPFzPQ0UJojAIn', 0, 0),
(11, 'Herb Alpert & The Tijuana Brass', 151268, 54, 'https://i.scdn.co/image/2311c347d3afc41e4b1feece205908b16af31e24', 'https://i.scdn.co/image/b7d355997334ec3352bcbf03dabc903eec812a46', 0, NULL, NULL, 0, 1, '09L3cUdx0hq6qn5bKuJJ4I', 0, 0),
(12, 'Hermitude', 254570, 53, 'https://i.scdn.co/image/ab67616100005174d3e6768dc4219d0bb2cb6fe9', 'https://i.scdn.co/image/ab6761610000e5ebd3e6768dc4219d0bb2cb6fe9', 0, NULL, NULL, 0, 1, '3fmMaLC5jjf2N4EC2kTx0u', 0, 0),
(13, 'HERNAN TREJO', 6738, 53, 'https://i.scdn.co/image/ab67616d00001e023900137389c36991e1d55d81', 'https://i.scdn.co/image/ab67616d0000b2733900137389c36991e1d55d81', 0, NULL, NULL, 0, 1, '2JW58Zzu11HCWLaMou9UGD', 0, 0),
(14, 'Herman\'s Hermits', 445550, 52, 'https://i.scdn.co/image/eef36e165f05fca3331530ce7f85b1085ef7bdbc', 'https://i.scdn.co/image/661423f5d26a62a4a2947488c2892a6c5c4a5e34', 0, NULL, NULL, 0, 1, '48YxSlb23RAaCd4RyHcV9V', 0, 0),
(15, 'Hermanos Espinoza', 8317, 50, 'https://i.scdn.co/image/ab676161000051749cb01caacc9eeb16c0b7a111', 'https://i.scdn.co/image/ab6761610000e5eb9cb01caacc9eeb16c0b7a111', 0, NULL, NULL, 0, 1, '1V0BgbhknuuZIMxKO0M9FV', 0, 0),
(16, 'Herb Alpert', 90894, 49, 'https://i.scdn.co/image/ab6761610000517416f2138b23fa374e3e728ea1', 'https://i.scdn.co/image/ab6761610000e5eb16f2138b23fa374e3e728ea1', 0, NULL, NULL, 0, 1, '1PqdKx88nAgPolRy079lMl', 0, 0),
(17, 'Heritage Singers', 50179, 45, 'https://i.scdn.co/image/ab67616100005174c2b5c286ad555305cf54c698', 'https://i.scdn.co/image/ab6761610000e5ebc2b5c286ad555305cf54c698', 0, NULL, NULL, 0, 1, '6dy3S3XlshIQw4or3qS4xE', 0, 0),
(18, 'Herbie Ghee', 177, 41, 'https://i.scdn.co/image/ab67616d00001e0214f231e399a83c7933679081', 'https://i.scdn.co/image/ab67616d0000b27314f231e399a83c7933679081', 0, NULL, NULL, 0, 1, '2QqHr8YltC4zSjRP8fiBDS', 0, 0),
(19, 'Los Hermanos Martinez de El Salvador', 32883, 40, 'https://i.scdn.co/image/ab676161000051740a433d24ce58f8b71179c848', 'https://i.scdn.co/image/ab6761610000e5eb0a433d24ce58f8b71179c848', 0, NULL, NULL, 0, 1, '3cLuW4KXC2yyoa5DcKmSZZ', 0, 0),
(20, 'Redstone Records', 40422, 37, 'https://i.scdn.co/image/ab67616d00001e024a521e3f376a8902f3fe5b7c', 'https://i.scdn.co/image/ab67616d0000b2734a521e3f376a8902f3fe5b7c', 0, NULL, NULL, 0, 1, '4ox06EFdfmAF2iAF6EgPBm', 0, 0),
(21, 'Metro Boomin', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '0iEtIxbK0KxaSlF7G42ZOp', 0, 0),
(22, 'd4vd', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '5y8tKLUfMvliMe8IKamR32', 0, 0),
(23, 'Drake', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '3TVXtAsR1Inumwj472S9r4', 0, 0),
(24, '21 Savage', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '1URnnhqYAYcrqrcwql10ft', 0, 0),
(25, 'Alan Menken', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '5sy77gt4bfsLcSQ8GIe4ZZ', 0, 0),
(26, 'Hercules - Cast', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '5EwcZmy33WI5RTdNfDQLoD', 0, 0),
(27, 'Disney', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '3xvaSlT4xsyk6lY1ESOspO', 0, 0),
(28, 'Mac DeMarco', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '3Sz7ZnJQBIHsXLUSo0OQtM', 0, 0),
(29, 'Florida Georgia Line', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '3b8QkneNDz4JHKKKlLgYZg', 0, 0),
(30, 'Martin Garrix', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '60d24wfXkVzDSfLS6hyCjZ', 0, 0),
(31, 'JVKE', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '164Uj4eKjl6zTBKfJLFKKK', 0, 0),
(32, 'Maren Morris', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '6WY7D3jk8zTrHtmkqqo5GI', 0, 0),
(33, 'PARTYNEXTDOOR', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '2HPaUgqeutzr3jx5a9WyDV', 0, 0),
(34, 'Skyper', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '0CNfs9pEtUEZSwo0QUuom3', 0, 0),
(35, 'Usher', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '23zg3TcAtWQy7J6upgbUnj', 0, 0),
(36, 'Waq1ux', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '5Tw7sFn17Y4rvLWmnTMkVx', 0, 0),
(37, 'Elevation Worship', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '3YCKuqpv9nCsIhJ2v8SMix', 0, 0),
(38, 'Arcade Fire', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '3kjuyTCjPG1WMFCiyc5IuB', 0, 0),
(39, 'Owen Pallett', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '77Rj6PHmQJFb8nbSH62y68', 0, 0),
(40, 'Montell Fish', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '5nvWOyAkfNgVLKESq4fOj2', 0, 0),
(41, 'The Beatles', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '3WrFJ7ztbogyGnTHbHJFl2', 0, 0),
(42, 'Megan Thee Stallion', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '181bsRPaVXVlUKXrxwZfHK', 0, 0),
(43, '3 Doors Down', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '2RTUTCvo6onsAnheUk3aL9', 0, 0),
(44, 'Eslabon Armado', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '0XeEobZplHxzM9QzFQWLiR', 0, 0),
(45, 'Skillet', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '49bzE5vRBRIota4qeHtQM8', 0, 0),
(46, 'Alessia Cara', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '2wUjUUtkb5lvLKcGKsKqsR', 0, 0),
(47, 'Marshmello', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '64KEffDW9EtZ1y2vBYgq8T', 0, 0),
(48, 'CHVRCHES', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '3CjlHNtplJyTf9npxaPl5w', 0, 0),
(49, 'MARINA', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '6CwfuxIqcltXDGjfZsMd9A', 0, 0),
(50, 'Whitesnake', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '3UbyYnvNIT5DFXU4WgiGpP', 0, 0),
(51, 'George Strait', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '5vngPClqofybhPERIqQMYd', 0, 0),
(52, 'Tyler, The Creator', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '4V8LLVI7PbaPR0K2TGSxFF', 0, 0),
(53, 'David Bowie', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '0oSGxfWSnnOXhD2fKuz2Gy', 0, 0),
(54, 'Mariah Carey', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '4iHNK0tOyZPYnBU7nGAgpQ', 0, 0),
(55, 'Sohn Aelia', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '58PoZ2UB30eX8jppZ6B87i', 0, 0),
(56, 'Edgardo Nuñez', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '0mA4dkNGiN4fqTBi2SLlAv', 0, 0),
(57, 'Ice Spice', 1191453, 82, 'https://i.scdn.co/image/ab6761610000517403578c92e15089c645b794f5', 'https://i.scdn.co/image/ab6761610000e5eb03578c92e15089c645b794f5', 0, NULL, NULL, 0, 1, '3LZZPxNDGDFVSIPqf4JuEf', 0, 0),
(58, 'Glass Animals', 3765139, 77, 'https://i.scdn.co/image/ab6761610000517466b27eccb69756f8eceabc23', 'https://i.scdn.co/image/ab6761610000e5eb66b27eccb69756f8eceabc23', 0, NULL, NULL, 0, 1, '4yvcSjfu4PC0CYQyLy4wSq', 0, 0),
(59, 'Hensonn', 130720, 69, 'https://i.scdn.co/image/ab6761610000517421bcee733fe1ae1bb1df5712', 'https://i.scdn.co/image/ab6761610000e5eb21bcee733fe1ae1bb1df5712', 0, NULL, NULL, 0, 1, '0snouHYzOWSgxRBYMQsa3H', 0, 0),
(60, 'Heart', 2270475, 68, 'https://i.scdn.co/image/5cd30e91d1d9b0637c7e1ff5a5075d4ac4be6dfa', 'https://i.scdn.co/image/1c145626e516a6817c43e7eab2b1cc3a5a9562a8', 0, NULL, NULL, 0, 1, '34jw2BbxjoYalTp8cJFCPv', 0, 0),
(61, '80purppp', 115387, 67, 'https://i.scdn.co/image/ab676161000051743e15784827fe1f6e79055e39', 'https://i.scdn.co/image/ab6761610000e5eb3e15784827fe1f6e79055e39', 0, NULL, NULL, 0, 1, '4F9apzBcSE0OSfHYbxo4RF', 0, 0),
(62, 'Héctor Lavoe', 1632205, 65, 'https://i.scdn.co/image/ab6761610000517419eb17f74f8216e408511ea3', 'https://i.scdn.co/image/ab6761610000e5eb19eb17f74f8216e408511ea3', 0, NULL, NULL, 0, 1, '7opp16lU7VM3l2WBdGMYHP', 0, 0),
(63, 'Héctor \"El Father\"', 580832, 65, 'https://i.scdn.co/image/64692003b7f4a0be9f35ced0d6469440b3aace93', 'https://i.scdn.co/image/fb6f6b52082b66ee883bccf31fec0640e901ef25', 0, NULL, NULL, 0, 1, '2TjgzYcbTdsZjbT9OItIeB', 0, 0),
(64, 'Henry Smith', 13417, 64, 'https://i.scdn.co/image/ab6761610000517441aee4dc8cf305c3bc9bfac6', 'https://i.scdn.co/image/ab6761610000e5eb41aee4dc8cf305c3bc9bfac6', 0, NULL, NULL, 0, 1, '5M86PSFFaRNTKidvlgHDEE', 0, 0),
(65, 'Hellmaos', 375, 61, 'https://i.scdn.co/image/ab67616100005174d270e21bce8177b1283f1406', 'https://i.scdn.co/image/ab6761610000e5ebd270e21bce8177b1283f1406', 0, NULL, NULL, 0, 1, '3TwsEkKhVhI8QZLZKu1ZFb', 0, 0),
(66, 'Barrett Wilbert Weed', 64924, 61, 'https://i.scdn.co/image/ab67616d00001e021c3722dc08487df1847f5c5d', 'https://i.scdn.co/image/ab67616d0000b2731c3722dc08487df1847f5c5d', 0, NULL, NULL, 0, 1, '5yCkSShz4MTqE4Lp6fVZMz', 0, 0),
(67, 'millennium parade', 157307, 60, 'https://i.scdn.co/image/ab6761610000517425f5278f8599b1085f508bc0', 'https://i.scdn.co/image/ab6761610000e5eb25f5278f8599b1085f508bc0', 0, NULL, NULL, 0, 1, '0GZ65zwBwkkwGNJ3zagtTZ', 0, 0),
(68, 'Héctor Acosta \"El Torito\"', 794891, 60, 'https://i.scdn.co/image/ab6761610000517488e7df3a9a9b2f425f515c46', 'https://i.scdn.co/image/ab6761610000e5eb88e7df3a9a9b2f425f515c46', 0, NULL, NULL, 0, 1, '4TCAAIMmeZXCTVlHUsicOn', 0, 0),
(69, 'Heembeezy', 51355, 57, 'https://i.scdn.co/image/ab67616100005174699de23b7a4dd95860176765', 'https://i.scdn.co/image/ab6761610000e5eb699de23b7a4dd95860176765', 0, NULL, NULL, 0, 1, '0ywBEn3tITirlskY3SZBei', 0, 0),
(70, 'Tiko', 175840, 52, 'https://i.scdn.co/image/ab67616d00001e022b14242c5816c2050e5f2524', 'https://i.scdn.co/image/ab67616d0000b2732b14242c5816c2050e5f2524', 0, NULL, NULL, 0, 1, '0iv7RfSxMSAvCzCVnxys6g', 0, 0),
(71, 'Hëctor Montemayor', 28265, 48, 'https://i.scdn.co/image/ab67616100005174bb6cd86ab63b91239791e169', 'https://i.scdn.co/image/ab6761610000e5ebbb6cd86ab63b91239791e169', 0, NULL, NULL, 0, 1, '4PREPE7uNsNFgnaj21KCbi', 0, 0),
(72, 'Various Artists', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '0LyfQWJT6nXafLPZqxe9Of', 0, 0),
(73, 'Don Toliver', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '4Gso3d4CscCijv0lmajZWs', 0, 0),
(74, 'Henry Danger The Musical Cast', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '14QFzo4BPE9kmObR2jSTeD', 0, 0),
(75, 'Lil Peep', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '2kCcBybjl3SAtIcwdWpUe3', 0, 0),
(76, 'Demi Lovato', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '6S2OmqARrzebs0tKUEyXyp', 0, 0),
(77, 'Zach Bryan', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '40ZNYROS4zLfyyBSs2PGe2', 0, 0),
(78, 'Sheena Ringo', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '2XjqKvB2Xz9IdyjWPIHaXi', 0, 0),
(79, 'Lee Brice', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '5Zq7R5qmi58ByYyBQTlNuk', 0, 0),
(80, 'Ava Max', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '4npEfmQ6YuiwW1GpUmaq3F', 0, 0),
(81, 'Tariq', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '2knWnzQWhtUg9J3zVsEYm8', 0, 0),
(82, 'The Gregory Brothers', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '0V8tQXWkKPD5SxsB2moGew', 0, 0),
(83, 'Recess Therapy', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '0WSxLJRrB4L65JhNxIajE2', 0, 0),
(84, 'Rob Zombie', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '3HVdAiMNjYrQIKlOGxoGh5', 0, 0),
(85, 'Bakar', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '3K2Srho6NCF3o9MswGR76H', 0, 0),
(86, 'Kanye West', 19992361, 91, 'https://i.scdn.co/image/ab67616100005174867008a971fae0f4d913f63a', 'https://i.scdn.co/image/ab6761610000e5eb867008a971fae0f4d913f63a', 0, NULL, NULL, 0, 1, '5K4W6rqBFWDnAN6FQUkS6x', 0, 0),
(87, 'Baby Tate', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '3IJ21966TwNZI24MwZHMu4', 0, 0),
(88, 'Diplo', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '5fMUXHkw8R8eOP2RNVYEZX', 0, 0),
(89, 'Twenty One Pilots', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '3YQKmKGau1PzlVlkL1iodx', 0, 0),
(90, 'Conan Gray', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '4Uc8Dsxct0oMqx0P6i60ea', 0, 0),
(91, 'The Weeknd', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '1Xyo4u8uXC1ZmMpatF05PJ', 0, 0),
(92, 'Outkast', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '1G9G7WwrXka3Z1r7aIDjI7', 0, 0),
(93, 'Niall Horan', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '1Hsdzj7Dlq2I7tHP7501T4', 0, 0),
(94, 'Adele', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '4dpARuHxo51G3z768sgnrY', 0, 0),
(95, 'Ozuna', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '1i8SpTcr7yvPOmcqrbnVXY', 0, 0),
(96, 'Morgan Wallen', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '4oUHIQIBe0LHzYfvXNW4QM', 0, 0),
(97, 'sped up + slowed', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '2FRfJyV85zb19tO6uiXBGl', 0, 0),
(98, 'Feid', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '2LRoIwlKmHjgvigdNGBHNo', 0, 0),
(112, 'Harry Styles', 27357470, 89, 'https://i.scdn.co/image/ab67616100005174f7db7c8ede90a019c54590bb', 'https://i.scdn.co/image/ab6761610000e5ebf7db7c8ede90a019c54590bb', 0, NULL, NULL, 0, 1, '6KImCVD70vtIoJWnq6nGn3', 0, 0),
(113, 'XXXTENTACION', 41475637, 87, 'https://i.scdn.co/image/ab67616100005174f0c20db5ef6c6fbe5135d2e4', 'https://i.scdn.co/image/ab6761610000e5ebf0c20db5ef6c6fbe5135d2e4', 0, NULL, NULL, 0, 1, '15UsOTVnJzReFVN1VCnxy4', 0, 0),
(114, 'Halsey', 20081554, 83, 'https://i.scdn.co/image/ab67616100005174d707e1c5177614c4ec95a06c', 'https://i.scdn.co/image/ab6761610000e5ebd707e1c5177614c4ec95a06c', 0, NULL, NULL, 0, 1, '26VFTg2z8YR0cCuwLzESi2', 0, 0),
(115, 'Hozier', 5642127, 80, 'https://i.scdn.co/image/ab67616100005174ad85a585103dfc2f3439119a', 'https://i.scdn.co/image/ab6761610000e5ebad85a585103dfc2f3439119a', 0, NULL, NULL, 0, 1, '2FXC3k01G6Gw61bmprjgqS', 0, 0),
(116, 'HARDY', 371962, 76, 'https://i.scdn.co/image/ab6761610000517449fd87fcc0a12855f9ca8763', 'https://i.scdn.co/image/ab6761610000e5eb49fd87fcc0a12855f9ca8763', 0, NULL, NULL, 0, 1, '5QNm7E7RU2m64l6Gliu8Oy', 0, 0),
(117, 'Hans Zimmer', 3298805, 76, 'https://i.scdn.co/image/ab67616100005174371632043a8c12bb7eeeaf9d', 'https://i.scdn.co/image/ab6761610000e5eb371632043a8c12bb7eeeaf9d', 0, NULL, NULL, 0, 1, '0YC192cP3KPCRWx8zr8MfZ', 0, 0),
(118, 'Hotel Ugly', 282522, 75, 'https://i.scdn.co/image/ab676161000051742e72cf56dd90244436314127', 'https://i.scdn.co/image/ab6761610000e5eb2e72cf56dd90244436314127', 0, NULL, NULL, 0, 1, '35WVTyRnKAoaGExqgktVyb', 0, 0),
(119, 'Hillsong Worship', 4825801, 74, 'https://i.scdn.co/image/ab676161000051743fa351bcd2f7a8f06a7bc3ba', 'https://i.scdn.co/image/ab6761610000e5eb3fa351bcd2f7a8f06a7bc3ba', 0, NULL, NULL, 0, 1, '3SgHzT552wy2W8pNLaLk24', 0, 0),
(120, 'Hailee Steinfeld', 8603247, 72, 'https://i.scdn.co/image/ab67616100005174a961383967f3a3a54e794a15', 'https://i.scdn.co/image/ab6761610000e5eba961383967f3a3a54e794a15', 0, NULL, NULL, 0, 1, '5p7f24Rk5HkUZsaS3BLG5F', 0, 0),
(121, 'Leslie Odom Jr.', 219970, 71, 'https://i.scdn.co/image/ab67616100005174b35dba51746ae3ebb2d8958b', 'https://i.scdn.co/image/ab6761610000e5ebb35dba51746ae3ebb2d8958b', 0, NULL, NULL, 0, 1, '3cR4rhS2hBWqI7rJEBacvN', 0, 0),
(122, 'Hollywood Undead', 2276602, 70, 'https://i.scdn.co/image/ab676161000051747fa4eae2283454a067613275', 'https://i.scdn.co/image/ab6761610000e5eb7fa4eae2283454a067613275', 0, NULL, NULL, 0, 1, '0CEFCo8288kQU7mJi25s6E', 0, 0),
(123, 'HAIM', 1255041, 66, 'https://i.scdn.co/image/ab67616100005174a688abfbbed1037befa47232', 'https://i.scdn.co/image/ab6761610000e5eba688abfbbed1037befa47232', 0, NULL, NULL, 0, 1, '4Ui2kfOqGujY81UcPrb5KE', 0, 0),
(124, 'Hank Williams, Jr.', 1465308, 66, 'https://i.scdn.co/image/ab67616100005174f2335981837c8ac955769cd0', 'https://i.scdn.co/image/ab6761610000e5ebf2335981837c8ac955769cd0', 0, NULL, NULL, 0, 1, '2dyeCWctcFRt3Pha76ONgb', 0, 0),
(125, 'Kali', 93964, 60, 'https://i.scdn.co/image/ab67616100005174b6c2e15dc941efc1597b23fd', 'https://i.scdn.co/image/ab6761610000e5ebb6c2e15dc941efc1597b23fd', 0, NULL, NULL, 0, 1, '1YRqgFNXqRyMDRr8ClS1NL', 0, 0),
(126, 'HIM', 622633, 58, 'https://i.scdn.co/image/17b4b4e6a08b5cfd3591ca5d44a12553c59d1cbb', 'https://i.scdn.co/image/bceb7fc52d4b64709d487f716befe43ef8273b1a', 0, NULL, NULL, 0, 1, '74aLweE8FHHf4yN5TWv1GM', 0, 0),
(127, 'HOL!', 19340, 45, 'https://i.scdn.co/image/ab6761610000517471ecdf5f531ace6bac6f8694', 'https://i.scdn.co/image/ab6761610000e5eb71ecdf5f531ace6bac6f8694', 0, NULL, NULL, 0, 1, '75YeSAKC6xPhgkjnltCmGB', 0, 0),
(128, 'H1-KEY', 58468, 43, 'https://i.scdn.co/image/ab67616100005174e8ba0fd8328cd97753a0bbbb', 'https://i.scdn.co/image/ab6761610000e5ebe8ba0fd8328cd97753a0bbbb', 0, NULL, NULL, 0, 1, '5GwQwY63I9hrUUFlQB8FYU', 0, 0),
(129, 'H.O.T.', 55126, 39, 'https://i.scdn.co/image/ab67616d00001e02d37f7121912ce768f789c7c3', 'https://i.scdn.co/image/ab67616d0000b273d37f7121912ce768f789c7c3', 0, NULL, NULL, 0, 1, '5JrfgZAgqAMywJpLpJM0eS', 0, 0),
(130, 'H.I.M.', 48706, 27, 'https://i.scdn.co/image/ab67616100005174b3291041c75cabbdd6961ba3', 'https://i.scdn.co/image/ab6761610000e5ebb3291041c75cabbdd6961ba3', 0, NULL, NULL, 0, 1, '4q1dqjSd9xq6LncaoAgWSJ', 0, 0),
(131, 'NF', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '6fOMl44jA4Sp5b9PpYCkzz', 0, 0),
(132, 'Post Malone', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '246dkjvS1zLTtiykXe5h60', 0, 0),
(133, 'Lin-Manuel Miranda', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '4aXXDj9aZnlshx7mzj3W1N', 0, 0),
(134, 'High School Musical Cast', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '2gUMs9PE8XZVQyzCDqaYmW', 0, 0),
(135, 'Billie Eilish', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '6qqNVTkY8uBg9cP3Jd7DAH', 0, 0),
(136, 'John Williams', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '3dRfiJ2650SZu6GbydcHNb', 0, 0),
(137, 'Linkin Park', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '6XyY86QOPPrYVGvF9ch6wz', 0, 0),
(138, 'The Neighbourhood', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '77SW9BnxLY8rJ0RciFqkHh', 0, 0),
(139, 'Lil Baby', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '5f7VJjfbwm532GiveGC0ZK', 0, 0),
(140, 'BONES', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '5v2WhpA59TJSdPh7LCx1lN', 0, 0),
(141, '6arelyhuman', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '1oYXEVbGh1L7EWGm9C68cN', 0, 0),
(142, 'kets4eki', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '4waORdvuFnffJPrj784KeG', 0, 0),
(143, 'TOOL', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '2yEwvVSSSUkcLeSTNyHKh8', 0, 0),
(144, 'DJ AG O GRINGO', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '5x5QpMsxPAaMgm0bxQyKJC', 0, 0),
(145, 'Kendrick Lamar', 23853651, 89, 'https://i.scdn.co/image/ab67616100005174437b9e2a82505b3d93ff1022', 'https://i.scdn.co/image/ab6761610000e5eb437b9e2a82505b3d93ff1022', 0, NULL, NULL, 0, 1, '2YZyLoL8N0Wb9xBt1NhZWg', 0, 0),
(146, 'Kbn Kbnlondon', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '2VUpglB1MOcwLbSpror3zZ', 0, 0),
(147, 'Baby Keem', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '5SXuuuRpukkTvsLuUknva1', 0, 0),
(148, 'YoungBoy Never Broke Again', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '7wlFDEWiM5OoIAt8RSli8b', 0, 0),
(149, 'Lil Darkie', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '62F9BiUmjqeXbBztCwiX1U', 0, 0),
(150, 'Pixel Hood', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '5sOZjYVTlB5DnPULR6NMMh', 0, 0),
(166, 'KAROL G', 34925909, 91, 'https://i.scdn.co/image/ab676161000051746a0594d5bff11a7e0c7ceb1a', 'https://i.scdn.co/image/ab6761610000e5eb6a0594d5bff11a7e0c7ceb1a', 0, NULL, NULL, 0, 1, '790FomKkXshlbRYZFtlgla', 0, 0),
(167, 'Kali Uchis', 4344236, 86, 'https://i.scdn.co/image/ab676161000051744ddb58b186bace4ed7e9f26e', 'https://i.scdn.co/image/ab6761610000e5eb4ddb58b186bace4ed7e9f26e', 0, NULL, NULL, 0, 1, '1U1el3k54VvEUzo3ybLPlM', 0, 0),
(168, 'Khalid', 15951805, 86, 'https://i.scdn.co/image/ab6761610000517431072db9da0311ecfabe96bf', 'https://i.scdn.co/image/ab6761610000e5eb31072db9da0311ecfabe96bf', 0, NULL, NULL, 0, 1, '6LuN9FCkKOj5PcnpouEgny', 0, 0),
(169, 'Katy Perry', 26760005, 85, 'https://i.scdn.co/image/ab67616100005174dc9dcb7e4a97b4552e1224d6', 'https://i.scdn.co/image/ab6761610000e5ebdc9dcb7e4a97b4552e1224d6', 0, NULL, NULL, 0, 1, '6jJ0s89eD6GaHleKKya26X', 0, 0),
(170, 'Kodak Black', 9267333, 81, 'https://i.scdn.co/image/ab676161000051744bd22c1711d22aa647a61097', 'https://i.scdn.co/image/ab6761610000e5eb4bd22c1711d22aa647a61097', 0, NULL, NULL, 0, 1, '46SHBwWsqBkxI7EeeBEQG7', 0, 0),
(171, 'Kid Cudi', 6463301, 81, 'https://i.scdn.co/image/ab67616100005174876faa285687786c3d314ae0', 'https://i.scdn.co/image/ab6761610000e5eb876faa285687786c3d314ae0', 0, NULL, NULL, 0, 1, '0fA0VVWsXO9YnASrzqfmYu', 0, 0),
(172, 'Korn', 6267822, 76, 'https://i.scdn.co/image/ab6761610000517429af2ffb6f4ddd6324f878bc', 'https://i.scdn.co/image/ab6761610000e5eb29af2ffb6f4ddd6324f878bc', 0, NULL, NULL, 0, 1, '3RNrq3jvMZxD9ZyoOZbQOD', 0, 0),
(173, 'Key Glock', 1568603, 76, 'https://i.scdn.co/image/ab67616100005174a2659061f6b86ac03eef836a', 'https://i.scdn.co/image/ab6761610000e5eba2659061f6b86ac03eef836a', 0, NULL, NULL, 0, 1, '0RESbWvOMyua0yuyVrztJ5', 0, 0),
(174, 'King Von', 2837498, 76, 'https://i.scdn.co/image/ab676161000051745c0b2129a88c7d6ed0704556', 'https://i.scdn.co/image/ab6761610000e5eb5c0b2129a88c7d6ed0704556', 0, NULL, NULL, 0, 1, '6QtgPSJPSzcnn7dPZ4VINp', 0, 0),
(175, 'Kane Brown', 4829415, 75, 'https://i.scdn.co/image/ab676161000051747b44d30c0a151c78d3c0bcaa', 'https://i.scdn.co/image/ab6761610000e5eb7b44d30c0a151c78d3c0bcaa', 0, NULL, NULL, 0, 1, '3oSJ7TBVCWMDMiYjXNiCKE', 0, 0),
(176, 'Kevin Gates', 5806023, 74, 'https://i.scdn.co/image/ab67616100005174180a7912dbf0e40790292ba3', 'https://i.scdn.co/image/ab6761610000e5eb180a7912dbf0e40790292ba3', 0, NULL, NULL, 0, 1, '1gPhS1zisyXr5dHTYZyiMe', 0, 0),
(177, 'Kelsea Ballerini', 1033359, 74, 'https://i.scdn.co/image/ab67616100005174b4410e78e44f70d0abfd6c9c', 'https://i.scdn.co/image/ab6761610000e5ebb4410e78e44f70d0abfd6c9c', 0, NULL, NULL, 0, 1, '3RqBeV12Tt7A8xH3zBDDUF', 0, 0),
(178, 'KISS', 8463401, 73, 'https://i.scdn.co/image/ab676161000051744e85269a1f35917eddeadefd', 'https://i.scdn.co/image/ab6761610000e5eb4e85269a1f35917eddeadefd', 0, NULL, NULL, 0, 1, '07XSN3sPlIlB2L2XNcTwJw', 0, 0),
(179, 'KAI', 1023031, 70, 'https://i.scdn.co/image/ab6761610000517407a86e9ca86a984f925e39c4', 'https://i.scdn.co/image/ab6761610000e5eb07a86e9ca86a984f925e39c4', 0, NULL, NULL, 0, 1, '6iVo62B0bdTknRcrktCmak', 0, 0),
(180, 'Kidz Bop Kids', 988836, 68, 'https://i.scdn.co/image/ab676161000051740b8e3dadd8bb3557c13c6aa8', 'https://i.scdn.co/image/ab6761610000e5eb0b8e3dadd8bb3557c13c6aa8', 0, NULL, NULL, 0, 1, '1Vvvx45Apu6dQqwuZQxtgW', 0, 0),
(181, 'KYLE', 1032556, 65, 'https://i.scdn.co/image/ab6761610000517442a142c2d23fdcb9569f038a', 'https://i.scdn.co/image/ab6761610000e5eb42a142c2d23fdcb9569f038a', 0, NULL, NULL, 0, 1, '4qBgvVog0wzW75IQ48mU7v', 0, 0),
(182, 'K/DA', 1945675, 64, 'https://i.scdn.co/image/ab67616100005174dc1dc943555dfa1ee2a107e5', 'https://i.scdn.co/image/ab6761610000e5ebdc1dc943555dfa1ee2a107e5', 0, NULL, NULL, 0, 1, '4gOc8TsQed9eqnqJct2c5v', 0, 0),
(183, 'KB', 417000, 62, 'https://i.scdn.co/image/ab6761610000517494be155b879fe3c3edf72620', 'https://i.scdn.co/image/ab6761610000e5eb94be155b879fe3c3edf72620', 0, NULL, NULL, 0, 1, '77IKXFvO7SpWrq8hflrUXc', 0, 0),
(184, 'Cigarettes After Sex', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '1QAJqy2dA3ihHBFIHRphZj', 0, 0),
(185, 'Melanie Martinez', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '63yrD80RY3RNEM2YDpUpO8', 0, 0),
(186, 'J. Cole', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '6l3HvQ5sa6mXTsMTB19rO5', 0, 0),
(187, 'SZA', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '7tYKF4w9nC0nq9CsPZTHyP', 0, 0),
(188, 'Doja Cat', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '5cj0lLjcoR7YOSnhnX0Po5', 0, 0),
(189, 'DJ Khaled', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '0QHgL1lAIqAw0HtD7YldmP', 0, 0),
(190, 'DaBaby', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '4r63FhuTkUYltbVAg5TQnk', 0, 0),
(191, 'Eminem', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '7dGJo4pcD2V6oG8kP0tJRR', 0, 0),
(192, 'Akon', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '0z4gvV4rjIZ9wHck67ucSV', 0, 0),
(193, 'Mac Miller', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '4LLpKhyESsyAXpc4laK94U', 0, 0),
(194, 'Deftones', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '6Ghvu1VvMGScGpOUJBAHNH', 0, 0),
(195, 'Taylor Swift', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '06HL4z0CvFAxyc27GXpf02', 0, 0),
(196, 'Scammacist', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '6cMsaDvwIUXtHGQPDbqHvn', 0, 0),
(197, 'Kanaria', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '1k5LyiTCRzPjORzcgHqJxF', 0, 0),
(198, 'Kenshi Yonezu', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '1snhtMLeb2DYoMOcVbb8iB', 0, 0),
(199, 'Pierce The Veil', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '4iJLPqClelZOBCBifm8Fzv', 0, 0),
(200, '$uicideboy$', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '1VPmR4DJC1PlOtd0IADAO0', 0, 0),
(201, 'Tatarka', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '6AskOVL13sRjMWnL45lxp0', 0, 0),
(202, 'LEE CHAE YEON', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '2nkZR6LwPxaAVtaVitNIPT', 0, 0),
(203, 'The Backseat Lovers', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '6p2HnfM955TI1bX34dkLnI', 0, 0),
(204, 'Mötley Crüe', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '0cc6vw3VN8YlIcvr1v7tBL', 0, 0),
(205, 'Project Pat', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '08Ld63UgKrJ0nZnCkzHtzc', 0, 0),
(206, 'Kellin Quinn', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '3M9XAM57a4qFz3v6Lq27t2', 0, 0),
(214, 'Kanii', 84663, 72, 'https://i.scdn.co/image/ab67616100005174777f2bab9e5f1e343c3126d4', 'https://i.scdn.co/image/ab6761610000e5eb777f2bab9e5f1e343c3126d4', 0, NULL, NULL, 0, 1, '1S82w4yw9TYIHZ889mPPaW', 0, 0),
(215, 'KAYTRANADA', 1197542, 72, 'https://i.scdn.co/image/ab67616100005174ca674f416a581a1b19f8150a', 'https://i.scdn.co/image/ab6761610000e5ebca674f416a581a1b19f8150a', 0, NULL, NULL, 0, 1, '6qgnBH6iDM91ipVXv28OMu', 0, 0),
(216, 'Kate Bush', 1678358, 71, 'https://i.scdn.co/image/ab67616100005174187017724e58e78ee1f5a8e4', 'https://i.scdn.co/image/ab6761610000e5eb187017724e58e78ee1f5a8e4', 0, NULL, NULL, 0, 1, '1aSxMhuvixZ8h9dK9jIDwL', 0, 0),
(217, 'Kacey Musgraves', 1216942, 69, 'https://i.scdn.co/image/ab67616100005174d123e4c884d1a5e2edff1895', 'https://i.scdn.co/image/ab6761610000e5ebd123e4c884d1a5e2edff1895', 0, NULL, NULL, 0, 1, '70kkdajctXSbqSMJbQO424', 0, 0),
(218, 'Kato', 122033, 69, 'https://i.scdn.co/image/ab6761610000517452e7a6130b6fe6dbacefa840', 'https://i.scdn.co/image/ab6761610000e5eb52e7a6130b6fe6dbacefa840', 0, NULL, NULL, 0, 1, '3yTNaLgtCufxUYDsWa5MpA', 0, 0),
(219, 'Kay Flock', 484626, 68, 'https://i.scdn.co/image/ab67616100005174d89cd40c36bb147b7565a5a9', 'https://i.scdn.co/image/ab6761610000e5ebd89cd40c36bb147b7565a5a9', 0, NULL, NULL, 0, 1, '2AMeiDbfU2vonrTkpXDKUu', 0, 0),
(220, 'Kaskade', 919751, 68, 'https://i.scdn.co/image/ab67616100005174c96f32c30b4c236b5b9c40fa', 'https://i.scdn.co/image/ab6761610000e5ebc96f32c30b4c236b5b9c40fa', 0, NULL, NULL, 0, 1, '6TQj5BFPooTa08A7pk8AQ1', 0, 0),
(221, 'Kaash Paige', 345353, 68, 'https://i.scdn.co/image/ab6761610000517491a7fef4fceff332b869a9d1', 'https://i.scdn.co/image/ab6761610000e5eb91a7fef4fceff332b869a9d1', 0, NULL, NULL, 0, 1, '0f2YkMXwFNJNSX7MymevKE', 0, 0),
(222, 'Kansas', 1379224, 66, 'https://i.scdn.co/image/ab67616100005174e924bdfec5ce73220c15cd25', 'https://i.scdn.co/image/ab6761610000e5ebe924bdfec5ce73220c15cd25', 0, NULL, NULL, 0, 1, '2hl0xAkS2AIRAu23TVMBG1', 0, 0),
(223, 'Kameron Marlowe', 99357, 65, 'https://i.scdn.co/image/ab6761610000517496e2367e34684c8dc4edf3ad', 'https://i.scdn.co/image/ab6761610000e5eb96e2367e34684c8dc4edf3ad', 0, NULL, NULL, 0, 1, '31n3CN1jSC5ALUJ9dwT8UI', 0, 0),
(224, 'KA$HDAMI', 284829, 60, 'https://i.scdn.co/image/ab67616100005174b3797d804103d53fa6d4de7b', 'https://i.scdn.co/image/ab6761610000e5ebb3797d804103d53fa6d4de7b', 0, NULL, NULL, 0, 1, '4YEl33ar2WlUSF94Yh9CCf', 0, 0),
(225, 'Kai Cenat', 135428, 53, 'https://i.scdn.co/image/ab67616d00001e027272f755ca52297148c970e6', 'https://i.scdn.co/image/ab67616d0000b27356f9b9b02942cdff3932e8e7', 0, NULL, NULL, 0, 1, '5pOnZ90CPqPp4FjW9AOVHU', 0, 0),
(226, 'Ka', 52926, 36, 'https://i.scdn.co/image/ab676161000051743eafb0c79f17cb8fa66b8426', 'https://i.scdn.co/image/ab6761610000e5eb3eafb0c79f17cb8fa66b8426', 0, NULL, NULL, 0, 1, '0cmqAB0gdr6ObvjNrQJAQr', 0, 0),
(227, 'Shakira', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '0EmeFodog0BfCgMzAIvKQp', 0, 0),
(228, 'Miguel', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '360IAlyVv4PCEVjgyMZrxK', 0, 0),
(229, 'Kahoot!', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '7ADPwlOqNnCqFtqIV5TKCX', 0, 0),
(230, 'Bob Marley & The Wailers', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '2QsynagSdAqZj3U9HgDzjD', 0, 0),
(231, 'M.I.A.', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '0QJIPDAEDILuo8AIq3pMuU', 0, 0),
(232, 'FXRR', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '18Aa5fsiPr4pXRAwezZN6i', 0, 0),
(233, 'Childish Gambino', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '73sIBHcqh3Z3NyqHKZ7FOL', 0, 0),
(234, 'Seether', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '6B5c4sch27tWHAGdarpPaW', 0, 0),
(235, 'Summer Walker', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '57LYzLEk2LcFghVwuWbcuS', 0, 0),
(236, 'Lil Wayne', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '55Aa2cqylxrFIXC767Z865', 0, 0),
(237, 'LUCKI', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '5tQMB0cuNXdCtzovGt55uD', 0, 0),
(238, 'Radiohead', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '4Z8W4fKeB5YxbusRsdQVPb', 0, 0),
(239, 'AJR', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '6s22t5Y3prQHyaHWUN1R1C', 0, 0),
(240, 'Yeat', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '3qiHUAX7zY4Qnjx8TNUzVx', 0, 0),
(241, 'Culture Club', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '6kz53iCdBSqhQCZ21CoLcc', 0, 0),
(242, 'Eve', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '58oPVy7oihAEXE0Ott6JOf', 0, 0),
(243, 'Becky G', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '4obzFoKoKRHIphyHzJ35G3', 0, 0),
(244, 'DMX', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '1HwM5zlC5qNWhJtM00yXzG', 0, 0),
(245, 'Bad Gyal', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '4F4pp8NUW08JuXwnoxglpN', 0, 0),
(246, 'Sean Paul', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '3Isy6kedDrgPYoTS1dazA9', 0, 0),
(247, 'Future', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '1RyvyyTE3xzB2ZywiAwp0i', 0, 0),
(260, 'Sidhu Moose Wala', 17634027, 80, 'https://i.scdn.co/image/ab6761610000517465d54c88ab4c1abf204b360f', 'https://i.scdn.co/image/ab6761610000e5eb65d54c88ab4c1abf204b360f', 1, '2023-05-09 01:49:17', NULL, 2, 1, '4PULA4EFzYTrxYvOVlwpiQ', 5, 0),
(261, 'Karan Aujla', 4681149, 76, 'https://i.scdn.co/image/ab67616100005174975975774d8ff3e0d6b97a25', 'https://i.scdn.co/image/ab6761610000e5eb975975774d8ff3e0d6b97a25', 0, NULL, NULL, 0, 1, '6DARBhWbfcS9E4yJzcliqQ', 0, 0),
(262, 'Karan Randhawa', 684017, 56, 'https://i.scdn.co/image/ab67616100005174e83245681bee9cf0c674a1f6', 'https://i.scdn.co/image/ab6761610000e5ebe83245681bee9cf0c674a1f6', 0, NULL, NULL, 0, 1, '3mnR9SJ3hfV6EcrGKH44H9', 0, 0),
(263, 'Karan Sehmbi', 712168, 54, 'https://i.scdn.co/image/ab6761610000517414e02f2a7b3c3d9e21e4a472', 'https://i.scdn.co/image/ab6761610000e5eb14e02f2a7b3c3d9e21e4a472', 0, NULL, NULL, 0, 1, '0wmFEqpoc2FgAv8IPtCLBW', 0, 0),
(264, 'Karan Malhotra', 680, 51, 'https://i.scdn.co/image/ab6761610000517452b04d28182d07410e6ff233', 'https://i.scdn.co/image/ab6761610000e5eb52b04d28182d07410e6ff233', 0, NULL, NULL, 0, 1, '77tAOnDaIyO7H70yxk3bMF', 0, 0),
(265, 'Karan Thabal', 69, 48, 'https://i.scdn.co/image/ab676161000051749f79dd36c617e23f0467e6fc', 'https://i.scdn.co/image/ab6761610000e5eb9f79dd36c617e23f0467e6fc', 0, NULL, NULL, 0, 1, '62qB87ja0UIqQH2sG8PyT8', 0, 0),
(266, 'Karan Kanchan', 6178, 42, 'https://i.scdn.co/image/ab6761610000517402147ec2641720ec15e77334', 'https://i.scdn.co/image/ab6761610000e5eb02147ec2641720ec15e77334', 0, NULL, NULL, 0, 1, '5mZ0Ee8OG1U9c4Wv2FKqvs', 0, 0),
(267, 'Karan Bhargava', 3060, 38, 'https://i.scdn.co/image/ab676161000051744b969f774324f5dc2e8ccd28', 'https://i.scdn.co/image/ab6761610000e5eb4b969f774324f5dc2e8ccd28', 0, NULL, NULL, 0, 1, '1YQWIIZgIWVP83VtNCAQRJ', 0, 0),
(268, 'karanXD', 257, 28, 'https://i.scdn.co/image/ab67616100005174bdbe15548edcae46b02035b5', 'https://i.scdn.co/image/ab6761610000e5ebbdbe15548edcae46b02035b5', 0, NULL, NULL, 0, 1, '3USNFOz8wIJDni00fAdDai', 0, 0),
(269, 'karan', 2524, 26, 'https://i.scdn.co/image/ab67616100005174e9aa68568c59ee4c8fce7b25', 'https://i.scdn.co/image/ab6761610000e5ebe9aa68568c59ee4c8fce7b25', 0, NULL, NULL, 0, 1, '6QJpQL2sOAE4yKLSHFyjy8', 0, 0),
(270, 'Karan Casey', 8826, 25, 'https://i.scdn.co/image/ab676161000051740fdb63faf5f683bb6d4a3304', 'https://i.scdn.co/image/ab6761610000e5eb0fdb63faf5f683bb6d4a3304', 0, NULL, NULL, 0, 1, '204RAaZLKLwAMTGWEEVW44', 0, 0),
(271, 'Karan Beekhuis', NULL, 19, 'https://i.scdn.co/image/ab67616d00001e02f203c975edb80e76e1dac020', 'https://i.scdn.co/image/ab67616d0000b273f203c975edb80e76e1dac020', 0, NULL, NULL, 0, 1, '7hgG7AiQONZqUaZqh6Dl8d', 0, 0),
(272, 'Karan', 1, 13, 'https://i.scdn.co/image/ab676161000051740884e6671d22be67338621b3', 'https://i.scdn.co/image/ab6761610000e5eb0884e6671d22be67338621b3', 0, NULL, NULL, 0, 1, '0fcnyCSh8myZecyhJyk3Xe', 0, 0),
(273, 'Karan', 20, 1, 'https://i.scdn.co/image/ab67616d00001e027bb311766a12e0d606e4fc62', 'https://i.scdn.co/image/ab67616d0000b2737bb311766a12e0d606e4fc62', 0, NULL, NULL, 0, 1, '1aUqaLcpviasIw1p4xmf4p', 0, 0),
(274, 'Karan', 53, 1, 'https://i.scdn.co/image/ab6761610000517430203bafde97a178ca2c5afb', 'https://i.scdn.co/image/ab6761610000e5eb30203bafde97a178ca2c5afb', 0, NULL, NULL, 0, 1, '03DIH9qjrnyKekJNB0R4xD', 0, 0),
(275, 'Karan', 25, 1, 'https://i.scdn.co/image/ab676161000051748a8311770c4dddc9e91907b4', 'https://i.scdn.co/image/ab6761610000e5eb8a8311770c4dddc9e91907b4', 0, NULL, NULL, 0, 1, '4FDJyU3Hc0VClQnrl523pV', 0, 0),
(276, 'Karan', 1, NULL, 'https://i.scdn.co/image/ab67616d00001e02562af593a06f49095bf1d62f', 'https://i.scdn.co/image/ab67616d0000b273562af593a06f49095bf1d62f', 0, NULL, NULL, 0, 1, '6f2WiJxY95RFIHQLAa9pT9', 0, 0),
(277, 'Karan', 1, NULL, 'https://i.scdn.co/image/ab67616d00001e0265c903c76b4518a5ac8a8919', 'https://i.scdn.co/image/ab67616d0000b27365c903c76b4518a5ac8a8919', 0, NULL, NULL, 0, 1, '3RyNTNFaUq3p9OYjgDeiKs', 0, 0),
(278, 'Karan', 6, NULL, 'https://i.scdn.co/image/ab67616d00001e02f03a1d12bef4fc87cf8a3424', 'https://i.scdn.co/image/ab67616d0000b273f03a1d12bef4fc87cf8a3424', 0, NULL, NULL, 0, 1, '5pjO08fzHKVnOnBFpQ7Dm1', 0, 0),
(279, 'Karan', 4, NULL, 'https://i.scdn.co/image/ab67616d00001e0206c34e150e36ffed09860c20', 'https://i.scdn.co/image/ab67616d0000b27306c34e150e36ffed09860c20', 0, NULL, NULL, 0, 1, '5R3QBKtrgWGFNbZEW7nC5K', 0, 0),
(280, 'Ikky', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '3nqS8jzqmsPKFJTp0BOIel', 0, 0),
(281, 'Yeah Proof', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '3GOxylxqB046EtIQynePq2', 0, 0),
(282, 'VALORANT', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '3wrFoI9EVjWg6m8xXeWr5t', 0, 0),
(283, 'Helin', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '37GZZKhf4VqB6eVms2Q0YY', 0, 0),
(284, 'ARB4', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '7e2hk3B42soSKnZhzCkOD8', 0, 0),
(285, 'Dolu Kadehi Ters Tut', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '0PhqM7UAxtvWYi5j4MwxSl', 0, 0),
(286, 'Karan Gumma', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '5S6v8JRa4tJhcv6amALnAF', 0, 0),
(287, 'Rouzbeh Rafie', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '0D2J26PCtESoubo8zD0Tnu', 0, 0),
(288, 'Raam Laxman', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '5O7hvez7lWDnJ0vqKMaaJu', 0, 0),
(289, 'Avvy Sra', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '4qjiRRFcM4WZ0aJ3IHdWPN', 0, 0),
(290, 'Jaani', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '5gZhfbckaWo89OzDSk3gdT', 0, 0),
(291, 'Avitirians', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '0VJXMoDqq3mLD9qRVRZN5A', 0, 0),
(292, 'Rajesh Roshan', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '5c3Qxc5sTis0Oq3XcOdIJD', 0, 0),
(293, 'intza', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '4GkcQtFyVMZ36Y0AFvLpNc', 0, 0),
(294, 'Kenan Yıldırım', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '6fLLLzUIa0x2pHU9Dyk4a9', 0, 0),
(295, 'Paska', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '1bzxy9o2LlCO1NZOXGRSe6', 0, 0),
(296, 'Badshah', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '0y59o4v8uw5crbN9M3JiL1', 0, 0),
(297, 'Paledoptera', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '2JqxFwyzIuFvHFhT9XeE66', 0, 0),
(298, 'Gurlez Akhtar', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '55kkrbuMkdzPGD7YGA6xrJ', 0, 0),
(299, 'KR$NA', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '5C1S9XwxMuuCciutwMhp5t', 0, 0),
(300, 'Little Symphony', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '4SCWiQbJCMTHK737aNUqBJ', 0, 0),
(301, 'Yet More', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '56brJyNkgCiv9ncSNkV99C', 0, 0),
(302, 'Son of Shiva', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '7a5CKrj55NRzMcO2Hs6Paz', 0, 0),
(303, 'KeyleyBeats', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '5mtC6Nzu8Nf2RBLClC0moZ', 0, 0),
(304, 'Mamy Kanoute', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '0f5YxRW7YgGHio2W0jiGV0', 0, 0),
(305, 'Aissatou Diabate', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '3eTM4WjkkPW1GCQFsdcVd0', 0, 0),
(306, 'Buba Badjie Kuyateh', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '4NaXkk43Q5zimwzaexinG9', 0, 0),
(307, 'Kati Raitinen', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '1dvpb0IcFWXH2KYBiHUFPM', 0, 0),
(308, 'Musequal Festival', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '3vyQPj3hM79Dpa7ouKjnFX', 0, 0),
(309, 'YG', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '0A0FS04o6zMoto8OKPsDwY', 0, 0),
(310, 'Shayper', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '7xwu6WIEThkQF0aLxsuN8g', 0, 0),
(311, 'Devika Badyal', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '0V8aeNb0fnR2P8eZVrx3lI', 0, 0),
(313, 'Carpenters', 2799071, 67, 'https://i.scdn.co/image/6d1f554e76304a29b8baa3f61213a88702c0f599', 'https://i.scdn.co/image/ed45f575339b044d7168780a15ff457b85be851a', 0, NULL, NULL, 0, 1, '1eEfMU2AhEo7XnKgL7c304', 0, 0),
(314, 'Kari Jobe', 1119770, 61, 'https://i.scdn.co/image/ab67616100005174b0fd004b9a8c8544101358d3', 'https://i.scdn.co/image/ab6761610000e5ebb0fd004b9a8c8544101358d3', 0, NULL, NULL, 0, 1, '5XlSS9O4eHRiJ0hKzbaFQ2', 0, 0),
(315, 'Kardinal Offishall', 61573, 61, 'https://i.scdn.co/image/ab67616100005174da71d9aeae89499cc60e0bc3', 'https://i.scdn.co/image/ab6761610000e5ebda71d9aeae89499cc60e0bc3', 0, NULL, NULL, 0, 1, '5P2rwRBgIN450RaJxdjYdA', 0, 0),
(316, 'Karen Harding', 53171, 60, 'https://i.scdn.co/image/ab67616100005174c64ae865224d3487d231fd38', 'https://i.scdn.co/image/ab6761610000e5ebc64ae865224d3487d231fd38', 0, NULL, NULL, 0, 1, '1QOHbhVRpDoNtRkz79si6b', 0, 0),
(317, 'Karl Jenkins', 64385, 59, 'https://i.scdn.co/image/ab67616100005174b3cd501912861ae4b41204f8', 'https://i.scdn.co/image/ab6761610000e5ebb3cd501912861ae4b41204f8', 0, NULL, NULL, 0, 1, '1q1wfzh2xtpj27TnIAqIvd', 0, 0),
(318, 'KARD', 1744749, 57, 'https://i.scdn.co/image/ab676161000051740124ae71378c204c4634cd40', 'https://i.scdn.co/image/ab6761610000e5eb0124ae71378c204c4634cd40', 0, NULL, NULL, 0, 1, '2JhAlkmukNvarUpGhTFXUQ', 0, 0),
(319, 'Karra', 26980, 57, 'https://i.scdn.co/image/ab67616100005174d714fb1afe62a465633096a6', 'https://i.scdn.co/image/ab6761610000e5ebd714fb1afe62a465633096a6', 0, NULL, NULL, 0, 1, '24CzPFC4y3bM4AkUnZfuAU', 0, 0),
(320, 'Kareen Lomax', 9780, 55, 'https://i.scdn.co/image/ab676161000051747684672295e670e65857b8bb', 'https://i.scdn.co/image/ab6761610000e5eb7684672295e670e65857b8bb', 0, NULL, NULL, 0, 1, '0Fb9qTWnjsB90xH3zWr4oa', 0, 0),
(321, 'KARA', 538339, 54, 'https://i.scdn.co/image/ab6761610000517405b57a10802bacfdfb26afa0', 'https://i.scdn.co/image/ab6761610000e5eb05b57a10802bacfdfb26afa0', 0, NULL, NULL, 0, 1, '7aZ221EQfonNG2lO9Hh192', 0, 0),
(322, 'Karri', 29878, 53, 'https://i.scdn.co/image/ab676161000051744c20310c8f63a1e3fac9cf0b', 'https://i.scdn.co/image/ab6761610000e5eb4c20310c8f63a1e3fac9cf0b', 0, NULL, NULL, 0, 1, '6EYGGkM2JDpX5CjHpGkiME', 0, 0),
(323, 'Karmin', 556496, 51, 'https://i.scdn.co/image/ab67616100005174dd1ef281be760d191bc3fe0c', 'https://i.scdn.co/image/ab6761610000e5ebdd1ef281be760d191bc3fe0c', 0, NULL, NULL, 0, 1, '4M0DLz8te9Q1lNIXBBwvfG', 0, 0),
(324, 'Karen Olivo', 2519, 49, 'https://i.scdn.co/image/ab67616d00001e026045992c1622f2f4e49280a2', 'https://i.scdn.co/image/ab67616d0000b2736045992c1622f2f4e49280a2', 0, NULL, NULL, 0, 1, '01hcqBKMrPmHtg3RBJsxaP', 0, 0),
(325, 'Karina', 57431, 48, 'https://i.scdn.co/image/ab67616100005174fee1f6fc4eb7eef380a3327f', 'https://i.scdn.co/image/ab6761610000e5ebfee1f6fc4eb7eef380a3327f', 0, NULL, NULL, 0, 1, '4bCJFFuTF8fuditJEIS1GX', 0, 0),
(326, 'Kari Faux', 119779, 48, 'https://i.scdn.co/image/ab676161000051745a577ff718a14a848003649a', 'https://i.scdn.co/image/ab6761610000e5eb5a577ff718a14a848003649a', 0, NULL, NULL, 0, 1, '4c2ighP1wj8E5dVGJDCOiB', 0, 0),
(327, 'Karyn White', 381018, 46, 'https://i.scdn.co/image/d38e13f8dd8037064d3aac182a4da1f2d1290937', 'https://i.scdn.co/image/27e1a471528719c975e37661762a0cc23965c99b', 0, NULL, NULL, 0, 1, '5lJBrQQ88JjskJmJeVKX4F', 0, 0),
(328, 'Karolina Protsenko', 68950, 41, 'https://i.scdn.co/image/ab67616d00001e02f47d0a965dc22dd2440032fb', 'https://i.scdn.co/image/ab67616d0000b273f47d0a965dc22dd2440032fb', 0, NULL, NULL, 0, 1, '5eI2DHAYU0gMk92kZKv9zA', 0, 0),
(329, 'Sing2Piano', 54658, 41, 'https://i.scdn.co/image/ab6761610000517493977f60b641d77e09821469', 'https://i.scdn.co/image/ab6761610000e5eb93977f60b641d77e09821469', 0, NULL, NULL, 0, 1, '6bwIrnnuFWva1wqbOFAg7T', 0, 0),
(330, 'Fisher Music', 1403, 20, 'https://i.scdn.co/image/ab67616d00001e027ea186f715e7f07bc3e58dd4', 'https://i.scdn.co/image/ab67616d0000b2737ea186f715e7f07bc3e58dd4', 0, NULL, NULL, 0, 1, '4Hum1pkCIzrdVhaz2VQpbB', 0, 0),
(331, 'Romeo Santos', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '5lwmRuXgjX8xIwlnauTZIP', 0, 0),
(332, 'Dave East', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '7e10JUMF7MJmmwYpnTSMI5', 0, 0),
(333, 'Carla Morrison', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '0XK6kT7xcZAlcYrNjOgzJe', 0, 0),
(334, 'Queen Naija', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '3nViOFa3kZW8OMSNOzwr98', 0, 0),
(335, 'Natura Sono', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '4XpxyzCW1kcfYIAQEIe4pO', 0, 0),
(336, 'CreepP', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '66aR9RFCiVYqefIoJaUzKv', 0, 0),
(337, 'CircusP', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '6Wn6kyMvfESmIaVy3Sjjvf', 0, 0),
(351, 'Peter Cetera', 857604, 61, 'https://i.scdn.co/image/435c75be7f6603ce61493549acdecb5e2efb8b4e', 'https://i.scdn.co/image/d25e8d5f1d06e238771595e9b2fda6063454e85f', 0, NULL, NULL, 0, 1, '5xWPOujQqd4wXyB08slZ9Z', 0, 0),
(352, 'DJ Pablito', 2657, 55, 'https://i.scdn.co/image/ab676161000051742399e708f8aae20da5cce0b5', 'https://i.scdn.co/image/ab6761610000e5eb2399e708f8aae20da5cce0b5', 0, NULL, NULL, 0, 1, '44cA8XUceHxTRIVRZAdvW5', 0, 0),
(353, 'Karamel Kel', 6861, 48, 'https://i.scdn.co/image/ab67616100005174b222775c8fc93b2f374af0a2', 'https://i.scdn.co/image/ab6761610000e5ebb222775c8fc93b2f374af0a2', 0, NULL, NULL, 0, 1, '7DtsCpQjHH2ArmhvszfQNP', 0, 0),
(354, 'Joe \"Bean\" Esposito', 8669, 47, 'https://i.scdn.co/image/ab67616100005174af7f739b6c921ba9a550eaea', 'https://i.scdn.co/image/ab6761610000e5ebaf7f739b6c921ba9a550eaea', 0, NULL, NULL, 0, 1, '4PCSnq8Q3hxOTn3ro4cl0M', 0, 0),
(355, 'Kara Jackson', 9016, 44, 'https://i.scdn.co/image/ab676161000051745c1fafd21917947a5225c60a', 'https://i.scdn.co/image/ab6761610000e5eb5c1fafd21917947a5225c60a', 0, NULL, NULL, 0, 1, '2lciIw4vq0jQqevXA2TEUl', 0, 0),
(356, 'Jars Of Clay', 272366, 44, 'https://i.scdn.co/image/ab67616100005174760d1110346fc7e4ad5a6051', 'https://i.scdn.co/image/ab6761610000e5eb760d1110346fc7e4ad5a6051', 0, NULL, NULL, 0, 1, '1lMaDSraU3oiNUsVWJLHdF', 0, 0),
(357, 'Kara Lindsay', 4452, 43, 'https://i.scdn.co/image/ab67616d00001e02277d0143617c535cf872e7d2', 'https://i.scdn.co/image/ab67616d0000b273277d0143617c535cf872e7d2', 0, NULL, NULL, 0, 1, '4wwo2P1bzRnLwJwjHrbZnv', 0, 0),
(358, 'karasu.', 1552, 38, 'https://i.scdn.co/image/ab676161000051747ed2b8fb0b9d2c59b90af970', 'https://i.scdn.co/image/ab6761610000e5eb7ed2b8fb0b9d2c59b90af970', 0, NULL, NULL, 0, 1, '5DqGtuUBthl8KW4C98OYae', 0, 0),
(359, 'karaokey', 123, 36, 'https://i.scdn.co/image/ab67616d00001e0201c4505e8c8aefad0ecb942a', 'https://i.scdn.co/image/ab67616d0000b273584bac1a2f0773f6e2c2b010', 0, NULL, NULL, 0, 1, '5CJfcT4CIt5Ck7WYxxbCH7', 0, 0),
(360, 'Karate Boogaloo', 8532, 34, 'https://i.scdn.co/image/ab67616100005174b5b3712f5311cba5d4d01596', 'https://i.scdn.co/image/ab6761610000e5ebb5b3712f5311cba5d4d01596', 0, NULL, NULL, 0, 1, '6D1VqVFh9yM5oARLleWNpQ', 0, 0),
(361, 'KARA$HI', 276, 27, 'https://i.scdn.co/image/ab67616100005174bba42e309124d2263744a8dc', 'https://i.scdn.co/image/ab6761610000e5ebbba42e309124d2263744a8dc', 0, NULL, NULL, 0, 1, '4dLrZyIwuuI6hWiwtYOE3K', 0, 0),
(362, 'Broken Edge', 534, 19, 'https://i.scdn.co/image/ab67616100005174cb9446b902fcd7faf16fa0ed', 'https://i.scdn.co/image/ab6761610000e5ebcb9446b902fcd7faf16fa0ed', 0, NULL, NULL, 0, 1, '51w118T3tZyeQwAye9iHrq', 0, 0),
(363, 'Frozen Karaoke', 1732, 19, 'https://i.scdn.co/image/ab67616d00001e02407ee65b9259cb81dc1826ab', 'https://i.scdn.co/image/ab67616d0000b273407ee65b9259cb81dc1826ab', 0, NULL, NULL, 0, 1, '020SpMW1x8FI4cRRu3lCxz', 0, 0),
(364, 'James Horner', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '3PhL2Vdao2v8SS8AptuhAr', 0, 0),
(365, 'Toygar Işıklı', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '2l0Ol9ASKE7E196nHpblB7', 0, 0),
(366, 'Karaoke All-Stars', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '4g83euv5krgJ45Y8DKhsxR', 0, 0),
(367, 'R3HAB', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '6cEuCEZu7PAE9ZSzLLc2oQ', 0, 0),
(368, 'KSHMR', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '2wX6xSig4Rig5kZU6ePlWe', 0, 0),
(369, 'Bill Conti', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '272ygo5fv9cYsiCLcV0HV2', 0, 0),
(370, 'Jala Brat', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '6C1X5Uh3DPIkC2gaVq00BL', 0, 0),
(371, 'Buba Corelli', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '3ekwV8Mt8DgZvmuK2futxG', 0, 0),
(372, 'Devito', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '0JQ4vokBBqHxHzRb36fSWN', 0, 0),
(373, 'Eleni Karaindrou', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '2ojmPypSGMyKaRvknyxKKP', 0, 0),
(374, 'Global Karaoke', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '7FSZFvjhlGbLGAdNL8GspG', 0, 0),
(375, 'Ameritz Karaoke Standards', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '0Gsyzvsea0AKwIIJeWfHMk', 0, 0),
(376, 'Kid\'s Sing-Along Crew', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '7kGY5uCeBGx3RGeV9u7s2f', 0, 0),
(377, 'Big Freedia', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '2gyv1akuIB9fQvXoGSPaJr', 0, 0),
(378, 'Kikuo', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '5FhcqamaRFfpZb4VHV47fu', 0, 0),
(379, 'BABYMETAL', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '630wzNP2OL7fl4Xl0GnMWq', 0, 0),
(380, 'KrispyLife Kidd', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '0nsO60VA1qoO308e9cYEPR', 0, 0),
(381, 'Cookin Soul', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '06s35sbFfZJUEwFjAaZfiW', 0, 0),
(382, 'MurdaGang PB', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '5vdwkO2Let6z32D2Oa9MEr', 0, 0),
(383, 'Hazlett', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '1zO3MgzmcwZLLNUQqeU2XH', 0, 0),
(384, 'Beach Bunny', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '2vnB6tuQMaQpORiRdvXF9H', 0, 0),
(385, 'Flughand', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '6x5HLaMcoxaULXpgN0NJbb', 0, 0),
(386, 'Tenacious D', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '1XpDYCrUJnvCo9Ez6yeMWh', 0, 0),
(387, 'Lizzo', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '56oDRnqbIiwx4mymNEv7dS', 0, 0),
(388, '40mP', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '69jNq4RZ3PvQJvMeqtdz7O', 0, 0),
(389, 'BabyTron', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '0sKsReKseslDlhxmbN6wLk', 0, 0),
(390, 'steichi', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '6KjHEB4Dy7zHFoOMClXKQl', 0, 0),
(525, 'Sikander Kahlon', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '08mu3VEvLCIWDq4t0NNoTN', 0, 0),
(526, 'Raja Kumari', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '5cBFMoMgcAt03YL2r0tS25', 0, 0),
(527, 'DIVINE', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '4Ai0pGz6GhQavjzaRhPTvz', 0, 0),
(528, 'Sonam Bajwa', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '2SyZp7V9vbRK1crDWxy4Ds', 0, 0),
(529, 'Wazir Patar', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '3bCfmBmsKvp4UXialp6xNZ', 0, 0),
(530, 'Bohemia', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '0SWOtgI95g7oVrP9halrmP', 0, 0),
(531, 'Tion Wayne', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '7b79bQFziJFedJb75k6hFt', 0, 0),
(532, 'Stefflon Don', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '2ExGrw6XpbtUAJHTLtUXUD', 0, 0),
(533, 'Blockboi Twitch', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '7fc9ZrMgda9ugNGz5DOTtw', 0, 0),
(534, 'Morrisson', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '3bn93QEHOITZ4ARuiZdfRA', 0, 0),
(535, 'Snappy', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '4HYqQGd6sHdPhq6qwikEix', 0, 0);
INSERT INTO `artists` (`id`, `name`, `spotify_followers`, `spotify_popularity`, `image_small`, `image_large`, `fully_scraped`, `updated_at`, `created_at`, `views`, `auto_update`, `spotify_id`, `plays`, `verified`) VALUES
(536, 'Moodyboy', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '12PLYvuXgxNYVYHMoxIkr1', 0, 0),
(537, 'Burna Boy', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '3wcj11K77LjEY1PkEazffa', 0, 0),
(538, 'Steel Banglez', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '6k970rXaWAWVfWMjqWtFNI', 0, 0),
(539, 'Sweetaj Brar', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '2B4azLEfuhlG2ykxCaQJWk', 0, 0),
(540, 'Balkar Ankhila', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '73QlE5yHfDqfYGENOTY4be', 0, 0),
(541, 'Manjinder Gulshan', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '6nSGdRvoskYIMt3o68BVrw', 0, 0),
(542, 'DJ Hardik', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '1QSTtKGPLw4v1eUoiWFhYH', 0, 0),
(543, 'The Kidd', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '54MDNPrVZ6rT83ZEgZzTGN', 0, 0),
(544, 'Sunny Malton', NULL, NULL, NULL, NULL, 0, '2023-05-09 01:11:00', NULL, 0, 1, '2ScEhgArBEdKyU4vNHSyiY', 1, 0),
(545, 'The Kidd', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '1yLUeehqCm7X7QLRuUfZ1A', 0, 0),
(546, 'SOE', NULL, NULL, NULL, NULL, 0, '2023-05-09 01:11:00', NULL, 0, 1, '503jMzlAxbEpfltywmU45E', 1, 0),
(547, 'AR Paisley', NULL, NULL, NULL, NULL, 0, '2023-05-09 01:49:17', NULL, 0, 1, '4CqzwlyoNSvoGeMk7NiMhd', 4, 0),
(548, 'Mr. Capone-E', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '3BG9cpTxZQzQChcsp7ss9a', 0, 0),
(549, '(UK Drill Refix ) K2 Cruddy', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '5HgSADS6NfMJEMAl8Dcl8L', 0, 0),
(550, 'Shooter Kahlon', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '5oL0GAI8fKD0Wgbr4Em9AS', 0, 0),
(551, 'Barbie Maan', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '0wsuu0i3CbgYaormvhnXat', 0, 0),
(552, 'Jenny Johal', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '7wM3DMc1NCh9sjDrUf3QOd', 0, 0),
(553, 'Gurtaj', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '3z8g7U9Esi3qXRo34zcmfO', 0, 0),
(554, 'Tarnvir Singh Jagpal', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '4MfPJWLuOPlmWsHRBXdFF3', 0, 0),
(555, 'Rangrez Sidhu', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '3cDu4bMjtFHdCvDD93cDUN', 0, 0),
(556, 'The Kidd', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '4HhEO2x0yF6vdqvhHBrRMp', 0, 0),
(557, 'Raja Game Changerz', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '2hUs5obIONKDUDIsCbAi9t', 0, 0),
(558, 'DJ Kamra', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '0zRvSeGaHnZ2mW0rm505f6', 0, 0),
(559, 'Afsana Khan', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '4z0z82pXirH1TrygipQlOo', 0, 0),
(560, 'Jay Milli', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '1tSvOIAUf4lsQFWeDklAPs', 0, 0),
(561, 'DJ Rink', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '5JUiZnShJRksnClrI3elTd', 0, 0),
(562, 'Gulab Sidhu', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '0OytfiwNkc1KzXE4ImyjgW', 0, 0),
(563, 'Harj Nagra', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '5inSyaPOXNRnbdRyQQbH38', 0, 0),
(564, 'Dj Chirag Dubai', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '2l0J4AD1RfNC7tgFlNTUTU', 0, 0),
(565, 'Prem Dhillon', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, '6IP4VnqS1pOiQcPVP4zx0H', 0, 0),
(567, 'Ammy Virk', 5807804, 65, 'https://i.scdn.co/image/ab6761610000517402711e80d568eae38449febb', 'https://i.scdn.co/image/ab6761610000e5eb02711e80d568eae38449febb', 0, NULL, NULL, 0, 1, '2RlWC7XKizSOsZ8F3uGi59', 0, 0),
(568, 'Amrit Maan', 4099589, 62, 'https://i.scdn.co/image/ab67616100005174e39affa94827f7e2979ccae0', 'https://i.scdn.co/image/ab6761610000e5ebe39affa94827f7e2979ccae0', 0, NULL, NULL, 0, 1, '7GgAwYJnBBFT1WogNWf0oj', 0, 0),
(569, 'A Kay', 1270478, 50, 'https://i.scdn.co/image/ab67616d00001e02eb74ccac189b5809ac4dbe26', 'https://i.scdn.co/image/ab67616d0000b273eb74ccac189b5809ac4dbe26', 0, NULL, NULL, 0, 1, '4ZPiabRclxJHc90C0eY8xh', 0, 0),
(570, 'Mankirt Aulakh', 3871039, 61, 'https://i.scdn.co/image/ab676161000051740daff5a4e82e9ee0d529830f', 'https://i.scdn.co/image/ab6761610000e5eb0daff5a4e82e9ee0d529830f', 0, NULL, NULL, 0, 1, '3uHUKCspaCzAab9A3LlGAr', 0, 0),
(571, 'Jordan Sandhu', 2364860, 66, 'https://i.scdn.co/image/ab676161000051741cf059fd8562d57716ceef1f', 'https://i.scdn.co/image/ab6761610000e5eb1cf059fd8562d57716ceef1f', 0, NULL, NULL, 0, 1, '3TozxPbDes76aGFdfv7PMv', 0, 0),
(572, 'Shivjot', 1431609, 54, 'https://i.scdn.co/image/ab67616100005174e8c81851bd2e31780e20978d', 'https://i.scdn.co/image/ab6761610000e5ebe8c81851bd2e31780e20978d', 0, NULL, NULL, 0, 1, '1CluO4PWr2z45POcQ92ZPs', 0, 0),
(573, 'Parmish Verma', 3381372, 67, 'https://i.scdn.co/image/ab6761610000517444f61e2999acebf957f2b9e6', 'https://i.scdn.co/image/ab6761610000e5eb44f61e2999acebf957f2b9e6', 0, NULL, NULL, 0, 1, '3OQRPFFS3OsltFjFAXu1kE', 0, 0),
(574, 'Arjan Dhillon', 991797, 70, 'https://i.scdn.co/image/ab6761610000517444aa5e0b6bf8cfc9837f3f55', 'https://i.scdn.co/image/ab6761610000e5eb44aa5e0b6bf8cfc9837f3f55', 0, NULL, NULL, 0, 1, '64DvMieEUCdrYKmEIhDt8G', 0, 0),
(575, 'Tarsem Jassar', 1793470, 56, 'https://i.scdn.co/image/ab67616100005174cdf2bc77aa3f4676bb750b49', 'https://i.scdn.co/image/ab6761610000e5ebcdf2bc77aa3f4676bb750b49', 0, NULL, NULL, 0, 1, '67XQGZSc63AMXMINY8H7Fx', 0, 0),
(576, 'Garry Sandhu', 3340963, 66, 'https://i.scdn.co/image/ab676161000051741437169a2779d39c51775b04', 'https://i.scdn.co/image/ab6761610000e5eb1437169a2779d39c51775b04', 0, NULL, NULL, 0, 1, '7M3xY5iHSzEtoL3FpqOD75', 0, 0),
(577, 'Kulwinder Billa', 1652619, 52, 'https://i.scdn.co/image/ab676161000051747722c18f100d093bac074a76', 'https://i.scdn.co/image/ab6761610000e5eb7722c18f100d093bac074a76', 0, NULL, NULL, 0, 1, '0CP2yDO5i5Q2G1fRj6C8JV', 0, 0),
(578, 'Jassie Gill', 4424014, 59, 'https://i.scdn.co/image/ab67616100005174f5e38e8b949510567aaf9e75', 'https://i.scdn.co/image/ab6761610000e5ebf5e38e8b949510567aaf9e75', 0, NULL, NULL, 0, 1, '3xZnxcyeC0vVaJvEA9VqrA', 0, 0),
(579, 'Jasmine Sandlas', 2547338, 63, 'https://i.scdn.co/image/ab676161000051749a25224792e6bd5f3b4d20d0', 'https://i.scdn.co/image/ab6761610000e5eb9a25224792e6bd5f3b4d20d0', 0, NULL, NULL, 0, 1, '0mJDQBWytBhOh5JB1DOQ1c', 0, 0),
(580, 'Guru Randhawa', 15021474, 71, 'https://i.scdn.co/image/ab67616100005174763eb4c279c361127cd79700', 'https://i.scdn.co/image/ab6761610000e5eb763eb4c279c361127cd79700', 0, NULL, NULL, 0, 1, '5rQoBDKFnd1n6BkdbgVaRL', 0, 0),
(581, 'Kulbir Jhinjer', 1017354, 52, 'https://i.scdn.co/image/ab67616d00001e024abbc2ddcf1787d8fb9134f3', 'https://i.scdn.co/image/ab67616d0000b2734abbc2ddcf1787d8fb9134f3', 0, NULL, NULL, 0, 1, '5xeLNyuZaJBjLpyjopm22n', 0, 0),
(582, 'Gurnam Bhullar', 3114847, 62, 'https://i.scdn.co/image/ab67616100005174e4ba826a2a73d0d81dab0618', 'https://i.scdn.co/image/ab6761610000e5ebe4ba826a2a73d0d81dab0618', 0, NULL, NULL, 0, 1, '45LSiycLy1JsWUMObvPvpX', 0, 0),
(583, 'Diljit Dosanjh', 15670240, 73, 'https://i.scdn.co/image/ab6761610000517492103a69abd9fbf76d866374', 'https://i.scdn.co/image/ab6761610000e5eb92103a69abd9fbf76d866374', 0, NULL, NULL, 0, 1, '2FKWNmZWDBZR4dE5KX4plR', 0, 0),
(584, 'Ranjit Bawa', 4796383, 54, 'https://i.scdn.co/image/ab676161000051742d32d9527f3524d3ef2bd574', 'https://i.scdn.co/image/ab6761610000e5eb2d32d9527f3524d3ef2bd574', 0, NULL, NULL, 0, 1, '6pU5oz09VUYtnFTd4P1Mxn', 0, 0),
(585, 'Nimrat Khaira', 1530816, 60, 'https://i.scdn.co/image/ab676161000051749036bdd6f28873173d63ff4d', 'https://i.scdn.co/image/ab6761610000e5eb9036bdd6f28873173d63ff4d', 0, NULL, NULL, 0, 1, '0ea0y5ZxnN5TbEDzNtx5Fk', 0, 0),
(586, 'Amantej Hundal', 792745, 54, 'https://i.scdn.co/image/ab676161000051748e6c570abd56eacc8380dc58', 'https://i.scdn.co/image/ab6761610000e5eb8e6c570abd56eacc8380dc58', 0, NULL, NULL, 0, 1, '28kGdf2ant8i73Fab2F7xq', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `artist_album`
--

CREATE TABLE `artist_album` (
  `id` int(10) UNSIGNED NOT NULL,
  `artist_id` int(10) UNSIGNED NOT NULL,
  `album_id` int(10) UNSIGNED NOT NULL,
  `primary` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `artist_album`
--

INSERT INTO `artist_album` (`id`, `artist_id`, `album_id`, `primary`) VALUES
(1, 21, 1, 0),
(2, 22, 2, 0),
(3, 23, 3, 0),
(4, 24, 3, 0),
(5, 25, 4, 0),
(6, 26, 4, 0),
(7, 27, 4, 0),
(8, 28, 5, 0),
(9, 29, 6, 0),
(10, 1, 7, 0),
(11, 30, 8, 0),
(12, 31, 8, 0),
(13, 32, 9, 0),
(14, 33, 10, 0),
(15, 29, 11, 0),
(16, 34, 12, 0),
(17, 35, 13, 0),
(18, 21, 14, 0),
(19, 21, 15, 0),
(20, 36, 16, 0),
(21, 37, 17, 0),
(22, 38, 18, 0),
(23, 39, 18, 0),
(24, 40, 19, 0),
(25, 10, 20, 0),
(26, 41, 21, 0),
(27, 33, 22, 0),
(28, 42, 23, 0),
(29, 43, 24, 0),
(30, 44, 25, 0),
(31, 45, 26, 0),
(32, 46, 27, 0),
(33, 47, 28, 0),
(34, 48, 28, 0),
(35, 49, 29, 0),
(36, 50, 30, 0),
(37, 51, 31, 0),
(38, 52, 32, 0),
(39, 53, 33, 0),
(40, 54, 34, 0),
(41, 55, 35, 0),
(42, 61, 36, 0),
(43, 72, 37, 0),
(44, 73, 38, 0),
(45, 74, 39, 0),
(46, 60, 40, 0),
(47, 75, 41, 0),
(48, 76, 42, 0),
(49, 77, 43, 0),
(50, 67, 44, 0),
(51, 78, 44, 0),
(52, 79, 45, 0),
(53, 58, 46, 0),
(54, 80, 47, 0),
(55, 81, 48, 0),
(56, 82, 48, 0),
(57, 83, 48, 0),
(58, 84, 49, 0),
(59, 70, 50, 0),
(60, 85, 51, 0),
(61, 86, 52, 0),
(62, 58, 53, 0),
(63, 87, 54, 0),
(64, 88, 55, 0),
(65, 89, 56, 0),
(66, 90, 57, 0),
(67, 91, 58, 0),
(68, 92, 59, 0),
(69, 93, 60, 0),
(70, 76, 61, 0),
(71, 85, 62, 0),
(72, 94, 63, 0),
(73, 95, 64, 0),
(82, 131, 71, 0),
(83, 112, 72, 0),
(84, 131, 73, 0),
(85, 132, 74, 0),
(86, 133, 75, 0),
(87, 125, 76, 0),
(88, 23, 77, 0),
(89, 134, 78, 0),
(90, 27, 78, 0),
(91, 115, 79, 0),
(92, 134, 80, 0),
(93, 27, 80, 0),
(94, 135, 81, 0),
(95, 136, 82, 0),
(96, 137, 83, 0),
(97, 134, 84, 0),
(98, 27, 84, 0),
(99, 138, 85, 0),
(100, 139, 86, 0),
(101, 140, 87, 0),
(102, 141, 88, 0),
(103, 142, 88, 0),
(104, 143, 89, 0),
(105, 144, 90, 0),
(106, 145, 91, 0),
(107, 146, 92, 0),
(108, 147, 93, 0),
(109, 148, 94, 0),
(110, 149, 95, 0),
(124, 184, 108, 0),
(125, 185, 109, 0),
(126, 186, 110, 0),
(127, 187, 111, 0),
(128, 188, 111, 0),
(129, 180, 112, 0),
(130, 166, 113, 0),
(131, 180, 114, 0),
(132, 189, 115, 0),
(133, 180, 116, 0),
(134, 190, 117, 0),
(135, 180, 118, 0),
(136, 191, 119, 0),
(137, 166, 120, 0),
(138, 192, 121, 0),
(139, 180, 122, 0),
(140, 180, 123, 0),
(141, 193, 124, 0),
(142, 180, 125, 0),
(143, 194, 126, 0),
(144, 187, 127, 0),
(145, 184, 128, 0),
(146, 195, 129, 0),
(147, 196, 130, 0),
(148, 23, 131, 0),
(149, 187, 132, 0),
(150, 197, 133, 0),
(151, 43, 134, 0),
(152, 198, 135, 0),
(153, 199, 136, 0),
(154, 200, 137, 0),
(155, 201, 138, 0),
(156, 96, 139, 0),
(157, 202, 140, 0),
(158, 203, 141, 0),
(159, 201, 142, 0),
(160, 204, 143, 0),
(162, 166, 145, 0),
(163, 227, 145, 0),
(164, 175, 146, 0),
(165, 222, 147, 0),
(166, 228, 148, 0),
(167, 86, 149, 0),
(168, 229, 150, 0),
(169, 175, 151, 0),
(170, 166, 152, 0),
(171, 230, 153, 0),
(172, 166, 154, 0),
(173, 231, 155, 0),
(174, 232, 156, 0),
(175, 167, 157, 0),
(176, 169, 158, 0),
(177, 233, 159, 0),
(178, 166, 160, 0),
(179, 234, 161, 0),
(180, 235, 162, 0),
(181, 52, 163, 0),
(182, 236, 164, 0),
(183, 195, 165, 0),
(184, 237, 166, 0),
(185, 238, 167, 0),
(186, 148, 168, 0),
(187, 239, 169, 0),
(188, 240, 170, 0),
(189, 241, 171, 0),
(190, 169, 172, 0),
(191, 242, 173, 0),
(192, 243, 174, 0),
(193, 166, 174, 0),
(200, 261, 181, 0),
(201, 280, 181, 0),
(202, 261, 182, 0),
(203, 281, 182, 0),
(204, 282, 183, 0),
(205, 283, 183, 0),
(206, 284, 183, 0),
(207, 261, 184, 0),
(208, 285, 185, 0),
(209, 286, 186, 0),
(210, 287, 187, 0),
(211, 288, 188, 0),
(212, 261, 189, 0),
(213, 289, 189, 0),
(214, 290, 189, 0),
(215, 291, 190, 0),
(216, 292, 191, 0),
(217, 293, 192, 0),
(218, 294, 193, 0),
(219, 261, 194, 0),
(220, 295, 195, 0),
(221, 261, 196, 0),
(222, 296, 197, 0),
(223, 261, 197, 0),
(224, 297, 198, 0),
(225, 268, 198, 0),
(226, 261, 199, 0),
(227, 298, 199, 0),
(228, 261, 200, 0),
(229, 299, 200, 0),
(230, 300, 201, 0),
(231, 301, 202, 0),
(232, 302, 202, 0),
(233, 303, 203, 0),
(234, 304, 204, 0),
(235, 72, 205, 0),
(236, 305, 206, 0),
(237, 306, 207, 0),
(238, 296, 208, 0),
(239, 166, 209, 0),
(240, 331, 209, 0),
(241, 332, 210, 0),
(242, 166, 211, 0),
(243, 333, 211, 0),
(244, 334, 212, 0),
(245, 335, 213, 0),
(246, 313, 214, 0),
(247, 332, 215, 0),
(248, 72, 216, 0),
(249, 327, 217, 0),
(250, 329, 218, 0),
(251, 166, 219, 0),
(252, 314, 220, 0),
(253, 166, 221, 0),
(254, 235, 222, 0),
(255, 195, 223, 0),
(256, 336, 224, 0),
(257, 166, 225, 0),
(274, 321, 240, 0),
(275, 364, 241, 0),
(276, 365, 242, 0),
(277, 72, 243, 0),
(278, 366, 244, 0),
(279, 367, 245, 0),
(280, 368, 245, 0),
(281, 369, 246, 0),
(282, 355, 247, 0),
(283, 72, 248, 0),
(284, 370, 249, 0),
(285, 371, 249, 0),
(286, 372, 249, 0),
(287, 373, 250, 0),
(288, 72, 250, 0),
(289, 374, 251, 0),
(290, 353, 252, 0),
(291, 375, 253, 0),
(292, 376, 254, 0),
(293, 23, 255, 0),
(294, 377, 256, 0),
(295, 378, 257, 0),
(296, 379, 258, 0),
(297, 72, 259, 0),
(298, 380, 260, 0),
(299, 247, 261, 0),
(300, 381, 262, 0),
(301, 382, 263, 0),
(302, 383, 264, 0),
(303, 72, 265, 0),
(304, 384, 266, 0),
(305, 385, 267, 0),
(306, 386, 268, 0),
(307, 127, 269, 0),
(403, 260, 336, 0),
(404, 260, 337, 0),
(405, 260, 338, 0),
(406, 260, 339, 0),
(407, 260, 340, 0),
(408, 260, 341, 0),
(409, 260, 342, 0),
(410, 260, 343, 0),
(411, 260, 344, 0),
(412, 260, 345, 0),
(413, 260, 346, 0),
(414, 260, 347, 0),
(415, 260, 348, 0),
(416, 260, 349, 0),
(417, 260, 350, 0),
(418, 260, 351, 0),
(419, 260, 352, 0),
(420, 260, 353, 0),
(421, 260, 354, 0),
(422, 260, 355, 0),
(423, 260, 356, 0),
(424, 260, 357, 0),
(425, 260, 358, 0),
(426, 260, 359, 0),
(427, 260, 360, 0),
(428, 260, 361, 0),
(429, 260, 362, 0),
(430, 260, 363, 0),
(431, 260, 364, 0),
(432, 260, 365, 0),
(433, 260, 366, 0),
(434, 260, 367, 0),
(435, 260, 368, 0),
(436, 260, 369, 0),
(437, 260, 370, 0),
(438, 260, 371, 0),
(439, 260, 372, 0),
(440, 260, 373, 0),
(441, 260, 374, 0),
(442, 260, 375, 0);

-- --------------------------------------------------------

--
-- Table structure for table `artist_bios`
--

CREATE TABLE `artist_bios` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` longtext DEFAULT NULL,
  `artist_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `artist_track`
--

CREATE TABLE `artist_track` (
  `id` int(10) UNSIGNED NOT NULL,
  `artist_id` int(10) UNSIGNED NOT NULL,
  `track_id` int(10) UNSIGNED NOT NULL,
  `primary` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `artist_track`
--

INSERT INTO `artist_track` (`id`, `artist_id`, `track_id`, `primary`) VALUES
(1, 22, 1, 0),
(2, 41, 2, 0),
(3, 30, 3, 0),
(4, 31, 3, 0),
(5, 33, 4, 0),
(6, 42, 5, 0),
(7, 33, 6, 0),
(8, 43, 7, 0),
(9, 44, 8, 0),
(10, 56, 8, 0),
(11, 36, 9, 0),
(12, 45, 10, 0),
(13, 46, 11, 0),
(14, 10, 12, 0),
(15, 47, 13, 0),
(16, 48, 13, 0),
(17, 49, 14, 0),
(18, 50, 15, 0),
(19, 51, 16, 0),
(20, 52, 17, 0),
(21, 53, 18, 0),
(22, 54, 19, 0),
(23, 55, 20, 0),
(24, 85, 21, 0),
(25, 86, 22, 0),
(26, 61, 23, 0),
(27, 28, 24, 0),
(28, 58, 25, 0),
(29, 77, 26, 0),
(30, 87, 27, 0),
(31, 88, 28, 0),
(32, 96, 28, 0),
(33, 89, 29, 0),
(34, 90, 30, 0),
(35, 91, 31, 0),
(36, 92, 32, 0),
(37, 93, 33, 0),
(38, 76, 34, 0),
(39, 85, 35, 0),
(40, 97, 35, 0),
(41, 94, 36, 0),
(42, 95, 37, 0),
(43, 98, 37, 0),
(48, 131, 41, 0),
(49, 140, 42, 0),
(50, 141, 43, 0),
(51, 142, 43, 0),
(52, 150, 43, 0),
(53, 143, 44, 0),
(54, 144, 45, 0),
(55, 145, 46, 0),
(56, 146, 47, 0),
(57, 147, 48, 0),
(58, 148, 49, 0),
(59, 149, 50, 0),
(60, 131, 51, 0),
(71, 187, 61, 0),
(72, 184, 62, 0),
(73, 187, 63, 0),
(74, 188, 63, 0),
(75, 186, 64, 0),
(76, 195, 65, 0),
(77, 196, 66, 0),
(78, 23, 67, 0),
(79, 24, 67, 0),
(80, 205, 67, 0),
(81, 187, 68, 0),
(82, 197, 69, 0),
(83, 43, 70, 0),
(84, 198, 71, 0),
(85, 199, 72, 0),
(86, 206, 72, 0),
(87, 184, 73, 0),
(88, 200, 74, 0),
(89, 201, 75, 0),
(90, 96, 76, 0),
(91, 202, 77, 0),
(92, 203, 78, 0),
(93, 201, 79, 0),
(94, 204, 80, 0),
(95, 235, 81, 0),
(96, 229, 82, 0),
(97, 52, 83, 0),
(98, 167, 83, 0),
(99, 166, 84, 0),
(100, 227, 84, 0),
(101, 236, 85, 0),
(102, 244, 85, 0),
(103, 195, 86, 0),
(104, 166, 87, 0),
(105, 245, 87, 0),
(106, 246, 87, 0),
(107, 237, 88, 0),
(108, 247, 88, 0),
(109, 238, 89, 0),
(110, 148, 90, 0),
(111, 239, 91, 0),
(112, 166, 92, 0),
(113, 227, 92, 0),
(114, 240, 93, 0),
(115, 241, 94, 0),
(116, 169, 95, 0),
(117, 242, 96, 0),
(118, 243, 97, 0),
(119, 166, 97, 0),
(123, 282, 101, 0),
(124, 283, 101, 0),
(125, 284, 101, 0),
(126, 261, 102, 0),
(127, 280, 102, 0),
(128, 261, 103, 0),
(129, 280, 103, 0),
(130, 261, 104, 0),
(131, 280, 104, 0),
(132, 261, 105, 0),
(133, 289, 105, 0),
(134, 290, 105, 0),
(135, 300, 106, 0),
(136, 301, 107, 0),
(137, 302, 107, 0),
(138, 294, 108, 0),
(139, 303, 109, 0),
(140, 261, 110, 0),
(141, 304, 111, 0),
(142, 295, 112, 0),
(143, 287, 113, 0),
(144, 307, 113, 0),
(145, 308, 113, 0),
(146, 261, 114, 0),
(147, 309, 114, 0),
(148, 310, 115, 0),
(149, 261, 116, 0),
(150, 281, 116, 0),
(151, 305, 117, 0),
(152, 261, 118, 0),
(153, 280, 118, 0),
(154, 306, 119, 0),
(155, 296, 120, 0),
(156, 261, 120, 0),
(157, 311, 120, 0),
(158, 166, 121, 0),
(159, 235, 122, 0),
(160, 334, 123, 0),
(161, 335, 124, 0),
(162, 195, 125, 0),
(163, 336, 126, 0),
(164, 337, 126, 0),
(165, 166, 127, 0),
(166, 166, 128, 0),
(167, 166, 129, 0),
(168, 331, 129, 0),
(169, 166, 130, 0),
(185, 23, 141, 0),
(186, 377, 142, 0),
(187, 387, 142, 0),
(188, 378, 143, 0),
(189, 379, 144, 0),
(190, 388, 145, 0),
(191, 380, 146, 0),
(192, 389, 146, 0),
(193, 354, 147, 0),
(194, 247, 148, 0),
(195, 236, 148, 0),
(196, 381, 149, 0),
(197, 382, 150, 0),
(198, 383, 151, 0),
(199, 388, 152, 0),
(200, 367, 153, 0),
(201, 368, 153, 0),
(202, 384, 154, 0),
(203, 385, 155, 0),
(204, 390, 155, 0),
(205, 386, 156, 0),
(206, 127, 157, 0),
(207, 362, 158, 0),
(287, 260, 204, 0),
(288, 260, 205, 0),
(289, 260, 206, 0),
(290, 260, 207, 0),
(291, 525, 207, 0),
(292, 260, 208, 0),
(293, 526, 208, 0),
(294, 260, 209, 0),
(295, 527, 209, 0),
(296, 260, 210, 0),
(297, 260, 211, 0),
(298, 528, 211, 0),
(299, 260, 212, 0),
(300, 260, 213, 0),
(301, 260, 214, 0),
(302, 529, 214, 0),
(303, 260, 215, 0),
(304, 260, 216, 0),
(305, 260, 217, 0),
(306, 260, 218, 0),
(307, 530, 218, 0),
(308, 260, 219, 0),
(309, 260, 220, 0),
(310, 260, 221, 0),
(311, 260, 222, 0),
(312, 260, 223, 0),
(313, 529, 223, 0),
(314, 260, 224, 0),
(315, 260, 225, 0),
(316, 531, 225, 0),
(317, 260, 226, 0),
(318, 532, 226, 0),
(319, 260, 227, 0),
(320, 260, 228, 0),
(321, 533, 228, 0),
(322, 260, 229, 0),
(323, 260, 230, 0),
(324, 260, 231, 0),
(325, 260, 232, 0),
(326, 260, 233, 0),
(327, 260, 234, 0),
(328, 534, 234, 0),
(329, 260, 235, 0),
(330, 260, 236, 0),
(331, 260, 237, 0),
(332, 260, 238, 0),
(333, 260, 239, 0),
(334, 260, 240, 0),
(335, 260, 241, 0),
(336, 260, 242, 0),
(337, 260, 243, 0),
(338, 260, 244, 0),
(339, 260, 245, 0),
(340, 260, 246, 0),
(341, 260, 247, 0),
(342, 260, 248, 0),
(343, 260, 249, 0),
(344, 260, 250, 0),
(345, 260, 251, 0),
(346, 260, 252, 0),
(347, 260, 253, 0),
(348, 260, 254, 0),
(349, 260, 255, 0),
(350, 260, 256, 0),
(351, 260, 257, 0),
(352, 535, 257, 0),
(353, 536, 257, 0),
(354, 260, 258, 0),
(355, 537, 258, 0),
(356, 538, 258, 0),
(357, 260, 259, 0),
(358, 260, 260, 0),
(359, 539, 261, 0),
(360, 540, 262, 0),
(361, 541, 262, 0),
(362, 260, 263, 0),
(363, 260, 264, 0),
(364, 542, 264, 0),
(365, 260, 265, 0),
(366, 542, 265, 0),
(367, 260, 266, 0),
(368, 260, 267, 0),
(369, 543, 267, 0),
(370, 260, 268, 0),
(371, 260, 269, 0),
(372, 544, 269, 0),
(373, 545, 269, 0),
(374, 260, 270, 0),
(375, 529, 270, 0),
(376, 260, 271, 0),
(377, 544, 271, 0),
(378, 546, 271, 0),
(379, 260, 272, 0),
(380, 547, 272, 0),
(381, 260, 273, 0),
(382, 260, 274, 0),
(383, 260, 275, 0),
(384, 548, 275, 0),
(385, 260, 276, 0),
(386, 260, 277, 0),
(387, 544, 277, 0),
(388, 260, 278, 0),
(389, 544, 278, 0),
(390, 260, 279, 0),
(391, 549, 279, 0),
(392, 260, 280, 0),
(393, 550, 280, 0),
(394, 260, 281, 0),
(395, 551, 281, 0),
(396, 260, 282, 0),
(397, 552, 282, 0),
(398, 260, 283, 0),
(399, 260, 284, 0),
(400, 553, 284, 0),
(401, 260, 285, 0),
(402, 551, 286, 0),
(403, 554, 286, 0),
(404, 260, 287, 0),
(405, 260, 288, 0),
(406, 555, 288, 0),
(407, 260, 289, 0),
(408, 555, 289, 0),
(409, 260, 290, 0),
(410, 556, 290, 0),
(411, 260, 291, 0),
(412, 557, 291, 0),
(413, 260, 292, 0),
(414, 558, 292, 0),
(415, 260, 293, 0),
(416, 559, 293, 0),
(417, 260, 294, 0),
(418, 560, 294, 0),
(419, 260, 295, 0),
(420, 260, 296, 0),
(421, 561, 296, 0),
(422, 260, 297, 0),
(423, 562, 298, 0),
(424, 260, 298, 0),
(425, 260, 299, 0),
(426, 260, 300, 0),
(427, 563, 300, 0),
(428, 564, 300, 0),
(429, 550, 301, 0),
(430, 260, 301, 0),
(431, 260, 302, 0),
(432, 260, 303, 0),
(433, 557, 303, 0),
(434, 565, 304, 0),
(435, 260, 304, 0);

-- --------------------------------------------------------

--
-- Table structure for table `backstage_requests`
--

CREATE TABLE `backstage_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'become-artist',
  `artist_name` varchar(191) DEFAULT NULL,
  `artist_id` bigint(20) UNSIGNED DEFAULT NULL,
  `data` text NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `billing_plans`
--

CREATE TABLE `billing_plans` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `amount` decimal(13,2) DEFAULT NULL,
  `currency` varchar(191) NOT NULL,
  `currency_symbol` varchar(191) NOT NULL DEFAULT '$',
  `interval` varchar(191) NOT NULL DEFAULT 'month',
  `interval_count` int(11) NOT NULL DEFAULT 1,
  `parent_id` int(11) DEFAULT NULL,
  `legacy_permissions` text DEFAULT NULL,
  `uuid` char(36) NOT NULL,
  `paypal_id` varchar(50) DEFAULT NULL,
  `recommended` tinyint(1) NOT NULL DEFAULT 0,
  `free` tinyint(1) NOT NULL DEFAULT 0,
  `show_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `features` text DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `available_space` bigint(20) UNSIGNED DEFAULT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `channelables`
--

CREATE TABLE `channelables` (
  `id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(11) NOT NULL,
  `channelable_type` varchar(20) NOT NULL,
  `channelable_id` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `channelables`
--

INSERT INTO `channelables` (`id`, `channel_id`, `channelable_type`, `channelable_id`, `order`) VALUES
(1, 5, 'App\\Channel', 6, 1),
(2, 5, 'App\\Channel', 8, 2),
(3, 5, 'App\\Channel', 7, 3),
(4, 9, 'App\\Channel', 1, 1),
(5, 9, 'App\\Channel', 3, 2),
(6, 9, 'App\\Channel', 2, 3),
(7, 9, 'App\\Channel', 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `channels`
--

CREATE TABLE `channels` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `config` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `channels`
--

INSERT INTO `channels` (`id`, `name`, `slug`, `user_id`, `created_at`, `updated_at`, `config`) VALUES
(1, 'Popular Albums', 'popular-albums', 1, '2023-05-09 00:33:57', '2023-05-09 00:33:57', '{\"contentType\":\"listAll\",\"contentModel\":\"album\",\"contentOrder\":\"popularity:desc\",\"layout\":\"grid\",\"carouselWhenNested\":true,\"seoTitle\":\"Popular Albums\",\"seoDescription\":\"Most popular albums from hottest artists today.\"}'),
(2, 'New Releases', 'new-releases', 1, '2023-05-09 00:33:57', '2023-05-09 00:33:57', '{\"contentType\":\"listAll\",\"contentModel\":\"album\",\"contentOrder\":\"created_at:desc\",\"layout\":\"grid\",\"carouselWhenNested\":true,\"seoTitle\":\"Latest Releases\",\"seoDescription\":\"Browse and listen to newest releases from popular artists.\"}'),
(3, 'Popular Tracks', 'popular-tracks', 1, '2023-05-09 00:33:57', '2023-05-09 00:33:57', '{\"contentType\":\"listAll\",\"contentModel\":\"track\",\"contentOrder\":\"popularity:desc\",\"layout\":\"trackTable\",\"seoTitle\":\"Popular Tracks\",\"seoDescription\":\"Global Top 50 chart of most popular songs.\"}'),
(4, 'Genres', 'genres', 1, '2023-05-09 00:33:57', '2023-05-09 00:33:57', '{\"contentType\":\"listAll\",\"contentModel\":\"genre\",\"contentOrder\":\"popularity:desc\",\"layout\":\"grid\",\"seoTitle\":\"Popular Genres\",\"seo_description\":\"Browse popular genres to discover new music.\"}'),
(5, '{{channel.genre.display_name}}', 'genre', 1, '2023-05-09 00:33:57', '2023-05-09 00:33:57', '{\"connectToGenreViaUrl\":true,\"lockSlug\":true,\"preventDeletion\":true,\"contentType\":\"manual\",\"contentModel\":\"channel\",\"contentOrder\":\"channelables.order:asc\",\"seoTitle\":\"{{channel.genre.display_name}} - {{site_name}}\",\"seoDescription\":\"Popular {{channel.genre.display_name}} artists, albums and tracks.\"}'),
(6, '{{channel.genre.display_name}} Artists', 'genre-artists', 1, '2023-05-09 00:33:57', '2023-05-09 00:33:57', '{\"connectToGenreViaUrl\":true,\"lockSlug\":true,\"preventDeletion\":true,\"contentType\":\"listAll\",\"contentModel\":\"artist\",\"carouselWhenNested\":true,\"contentOrder\":\"popularity:desc\",\"layout\":\"grid\",\"seoTitle\":\"{{channel.genre.display_name}} - {{site_name}}\",\"seoDescription\":\"Popular {{channel.genre.display_name}} artists.\"}'),
(7, '{{channel.genre.display_name}} Albums', 'genre-albums', 1, '2023-05-09 00:33:57', '2023-05-09 00:33:57', '{\"connectToGenreViaUrl\":true,\"lockSlug\":true,\"preventDeletion\":true,\"contentType\":\"listAll\",\"contentModel\":\"album\",\"carouselWhenNested\":true,\"contentOrder\":\"popularity:desc\",\"layout\":\"grid\",\"seoTitle\":\"{{channel.genre.display_name}} - {{site_name}}\",\"seoDescription\":\"Popular {{channel.genre.display_name}} albums.\"}'),
(8, '{{channel.genre.display_name}} Tracks', 'genre-tracks', 1, '2023-05-09 00:33:57', '2023-05-09 00:33:57', '{\"connectToGenreViaUrl\":true,\"lockSlug\":true,\"preventDeletion\":true,\"contentType\":\"listAll\",\"contentModel\":\"track\",\"carouselWhenNested\":false,\"contentOrder\":\"popularity:desc\",\"layout\":\"trackTable\",\"seoTitle\":\"{{channel.genre.display_name}} - {{site_name}}\",\"seoDescription\":\"Popular {{channel.genre.display_name}} tracks.\"}'),
(9, 'Discover', 'discover', 1, '2023-05-09 00:33:57', '2023-05-09 00:33:57', '{\"contentType\":\"manual\",\"contentModel\":\"channel\",\"hideTitle\":true,\"contentOrder\":\"channelables.order|asc\",\"layout\":\"grid\",\"seoTitle\":\"{{site_name}} - Listen to music for free\",\"seoDescription\":\"Find and listen to millions of songs, albums and artists, all completely free on {{SITE_NAME}}.\"}');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `path` varchar(191) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `commentable_id` int(10) UNSIGNED NOT NULL,
  `commentable_type` varchar(30) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `css_themes`
--

CREATE TABLE `css_themes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `is_dark` tinyint(1) NOT NULL DEFAULT 0,
  `default_light` tinyint(1) NOT NULL DEFAULT 0,
  `default_dark` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL,
  `colors` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `css_themes`
--

INSERT INTO `css_themes` (`id`, `name`, `is_dark`, `default_light`, `default_dark`, `user_id`, `colors`, `created_at`, `updated_at`) VALUES
(1, 'Dark', 1, 0, 1, 1, '{\"--be-foreground-base\":\"255 255 255\",\"--be-primary-light\":\"180 207 156\",\"--be-primary\":\"104 159 56\",\"--be-primary-dark\":\"82 126 44\",\"--be-on-primary\":\"255 255 255\",\"--be-background\":\"35 35 44\",\"--be-background-alt\":\"30 30 38\",\"--be-background-chip\":\"66 68 74\",\"--be-paper\":\"35 35 44\",\"--be-disabled-bg-opacity\":\"12%\",\"--be-disabled-fg-opacity\":\"30%\",\"--be-hover-opacity\":\"8%\",\"--be-focus-opacity\":\"12%\",\"--be-selected-opacity\":\"16%\",\"--be-text-main-opacity\":\"100%\",\"--be-text-muted-opacity\":\"70%\",\"--be-divider-opacity\":\"12%\"}', '2023-05-09 00:33:57', '2023-05-09 00:33:57'),
(2, 'Light', 0, 1, 0, 1, '{\"--be-foreground-base\":\"0 0 0\",\"--be-primary-light\":\"180 207 156\",\"--be-primary\":\"104 159 56\",\"--be-primary-dark\":\"82 126 44\",\"--be-on-primary\":\"255 255 255\",\"--be-background\":\"255 255 255\",\"--be-background-alt\":\"246 248 250\",\"--be-background-chip\":\"233 236 239\",\"--be-paper\":\"255 255 255\",\"--be-disabled-bg-opacity\":\"12%\",\"--be-disabled-fg-opacity\":\"26%\",\"--be-hover-opacity\":\"4%\",\"--be-focus-opacity\":\"12%\",\"--be-selected-opacity\":\"8%\",\"--be-text-main-opacity\":\"87%\",\"--be-text-muted-opacity\":\"60%\",\"--be-divider-opacity\":\"12%\"}', '2023-05-09 00:33:57', '2023-05-09 00:33:57');

-- --------------------------------------------------------

--
-- Table structure for table `csv_exports`
--

CREATE TABLE `csv_exports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cache_name` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `download_name` varchar(50) NOT NULL,
  `uuid` char(36) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_domains`
--

CREATE TABLE `custom_domains` (
  `id` int(10) UNSIGNED NOT NULL,
  `host` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `global` tinyint(1) NOT NULL DEFAULT 0,
  `resource_id` int(10) UNSIGNED DEFAULT NULL,
  `resource_type` varchar(20) DEFAULT NULL,
  `workspace_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_pages`
--

CREATE TABLE `custom_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `body` longtext NOT NULL,
  `slug` varchar(191) NOT NULL,
  `meta` text DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'default',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `hide_nav` tinyint(1) NOT NULL DEFAULT 0,
  `workspace_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_pages`
--

INSERT INTO `custom_pages` (`id`, `title`, `body`, `slug`, `meta`, `type`, `created_at`, `updated_at`, `user_id`, `hide_nav`, `workspace_id`) VALUES
(1, 'Privacy Policy', '<h1>Example Privacy Policy</h1><p>The standard Lorem Ipsum passage, used since the 1500s\n    \"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\n\n<p>Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC\n    \"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p>\n\n<p>1914 translation by H. Rackham\n    \"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>\n\n<p>Section 1.10.33 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC\n    \"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p>\n\n<p>1914 translation by H. Rackham\n    \"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"</p>', 'privacy-policy', NULL, 'default', '2023-05-09 00:33:57', '2023-05-09 00:33:57', NULL, 0, NULL),
(2, 'Terms of Service', '<h1>Example Terms of Service</h1><p>The standard Lorem Ipsum passage, used since the 1500s\n    \"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\n\n<p>Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC\n    \"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p>\n\n<p>1914 translation by H. Rackham\n    \"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>\n\n<p>Section 1.10.33 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC\n    \"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p>\n\n<p>1914 translation by H. Rackham\n    \"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"</p>', 'terms-of-service', NULL, 'default', '2023-05-09 00:33:57', '2023-05-09 00:33:57', NULL, 0, NULL),
(3, 'About Us', '<h1>Example About Us</h1><p>The standard Lorem Ipsum passage, used since the 1500s\n    \"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\n\n<p>Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC\n    \"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p>\n\n<p>1914 translation by H. Rackham\n    \"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>\n\n<p>Section 1.10.33 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC\n    \"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p>\n\n<p>1914 translation by H. Rackham\n    \"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"</p>', 'about-us', NULL, 'default', '2023-05-09 00:33:57', '2023-05-09 00:33:57', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `file_entries`
--

CREATE TABLE `file_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `file_name` varchar(50) NOT NULL,
  `file_size` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `mime` varchar(100) DEFAULT NULL,
  `extension` varchar(10) DEFAULT NULL,
  `user_id` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `public` tinyint(1) NOT NULL DEFAULT 0,
  `disk_prefix` varchar(191) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `description` varchar(150) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `path` varchar(191) DEFAULT NULL,
  `preview_token` varchar(15) DEFAULT NULL,
  `thumbnail` tinyint(1) NOT NULL DEFAULT 0,
  `workspace_id` int(10) UNSIGNED DEFAULT NULL,
  `owner_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `file_entry_models`
--

CREATE TABLE `file_entry_models` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_entry_id` int(10) UNSIGNED NOT NULL,
  `model_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(60) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `owner` tinyint(1) NOT NULL DEFAULT 0,
  `permissions` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `follows`
--

CREATE TABLE `follows` (
  `id` int(10) UNSIGNED NOT NULL,
  `follower_id` int(11) NOT NULL,
  `followed_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `genreables`
--

CREATE TABLE `genreables` (
  `id` int(10) UNSIGNED NOT NULL,
  `genre_id` int(11) NOT NULL,
  `genreable_id` int(11) NOT NULL,
  `genreable_type` varchar(10) NOT NULL DEFAULT 'App\\Artist'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genreables`
--

INSERT INTO `genreables` (`id`, `genre_id`, `genreable_id`, `genreable_type`) VALUES
(1, 1, 260, 'App\\Artist'),
(2, 2, 260, 'App\\Artist'),
(3, 3, 260, 'App\\Artist'),
(4, 4, 260, 'App\\Artist');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `popularity` int(10) UNSIGNED DEFAULT NULL,
  `display_name` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`, `created_at`, `updated_at`, `image`, `popularity`, `display_name`) VALUES
(1, 'desi-hip-hop', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL, 'desi hip hop'),
(2, 'desi-pop', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL, 'desi pop'),
(3, 'pakistani-hip-hop', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL, 'pakistani hip hop'),
(4, 'punjabi-hip-hop', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL, 'punjabi hip hop');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(10) UNSIGNED NOT NULL,
  `subscription_id` int(11) NOT NULL,
  `paid` tinyint(1) NOT NULL,
  `uuid` varchar(10) NOT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `likeable_id` int(10) UNSIGNED NOT NULL,
  `likeable_type` varchar(20) NOT NULL DEFAULT 'App\\Track',
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `localizations`
--

CREATE TABLE `localizations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `language` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `localizations`
--

INSERT INTO `localizations` (`id`, `name`, `created_at`, `updated_at`, `language`) VALUES
(1, 'English', '2023-05-09 00:33:57', '2023-05-09 00:33:57', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `lyrics`
--

CREATE TABLE `lyrics` (
  `id` int(10) UNSIGNED NOT NULL,
  `text` text NOT NULL,
  `track_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2015_04_127_156842_create_social_profiles_table', 1),
(4, '2015_04_127_156842_create_users_oauth_table', 1),
(5, '2015_05_29_131549_create_settings_table', 1),
(6, '2015_09_04_155015_create_artists_table', 1),
(7, '2015_09_06_161342_create_albums_table', 1),
(8, '2015_09_06_161348_create_tracks_table', 1),
(9, '2015_09_11_145318_create_similar_artists_table', 1),
(10, '2015_09_17_135717_create_track_user_table', 1),
(11, '2015_09_26_124652_create_playlists_table', 1),
(12, '2015_09_26_131215_create_playlist_track_table', 1),
(13, '2015_09_26_135719_create_playlist_user_table', 1),
(14, '2015_10_16_135253_create_genres_table', 1),
(15, '2015_10_16_135754_create_genre_artist', 1),
(16, '2015_10_23_164355_create_follows_table', 1),
(17, '2015_11_18_134303_add_temp_id_to_albums', 1),
(18, '2015_11_18_134303_add_temp_id_to_tracks', 1),
(19, '2015_11_19_134203_change_fully_scraped_default', 1),
(20, '2016_03_03_143235_add_position_to_playlist_track_table', 1),
(21, '2016_03_14_143858_add_url_to_tracks_table', 1),
(22, '2016_03_24_148503_add_fully_scraped_index_to_albums_table', 1),
(23, '2016_03_24_148503_add_fully_scraped_index_to_artists_table', 1),
(24, '2016_03_24_148503_add_public_index_to_playlists_table', 1),
(25, '2016_03_25_174157_create_sitemap_ids_table', 1),
(26, '2016_03_28_150334_add_image_and_description_to_playlists_table', 1),
(27, '2016_05_02_150429_change_artists_fully_scraped_default', 1),
(28, '2016_05_12_190852_create_tags_table', 1),
(29, '2016_05_12_190958_create_taggables_table', 1),
(30, '2016_05_26_170044_create_uploads_table', 1),
(31, '2016_05_27_143158_create_uploadables_table', 1),
(32, '2016_07_14_153703_create_groups_table', 1),
(33, '2016_07_14_153921_create_user_group_table', 1),
(34, '2017_07_02_120142_create_pages_table', 1),
(35, '2017_07_11_122825_create_localizations_table', 1),
(36, '2017_08_26_131330_add_private_field_to_settings_table', 1),
(37, '2017_08_26_155115_add_timestamps_to_artists_table', 1),
(38, '2017_09_12_134214_set_playlist_user_owner_column_default_to_zero', 1),
(39, '2017_09_16_155557_create_lyrics_table', 1),
(40, '2017_09_17_144728_add_columns_to_users_table', 1),
(41, '2017_09_17_152854_make_password_column_nullable', 1),
(42, '2017_09_30_152855_make_settings_value_column_nullable', 1),
(43, '2017_10_01_152856_add_views_column_to_artists_table', 1),
(44, '2017_10_01_152857_add_views_column_to_albums_table', 1),
(45, '2017_10_01_152858_add_plays_column_to_tracks_table', 1),
(46, '2017_10_01_152859_add_views_column_to_playlists_table', 1),
(47, '2017_10_01_152897_add_public_column_to_uploads_table', 1),
(48, '2017_12_04_132911_add_avatar_column_to_users_table', 1),
(49, '2018_01_10_140732_create_subscriptions_table', 1),
(50, '2018_01_10_140746_add_billing_to_users_table', 1),
(51, '2018_01_10_161706_create_billing_plans_table', 1),
(52, '2018_07_24_113757_add_available_space_to_billing_plans_table', 1),
(53, '2018_07_24_124254_add_available_space_to_users_table', 1),
(54, '2018_07_26_142339_rename_groups_to_roles', 1),
(55, '2018_07_26_142842_rename_user_role_table_columns_to_roles', 1),
(56, '2018_08_07_124200_rename_uploads_to_file_entries', 1),
(57, '2018_08_07_124327_refactor_file_entries_columns', 1),
(58, '2018_08_07_130653_add_folder_path_column_to_file_entries_table', 1),
(59, '2018_08_07_140440_migrate_file_entry_users_to_many_to_many', 1),
(60, '2018_08_15_132225_move_uploads_into_subfolders', 1),
(61, '2018_08_31_104145_rename_uploadables_table', 1),
(62, '2018_08_31_104325_rename_file_entry_models_table_columns', 1),
(63, '2018_09_30_113932_add_auto_update_columns', 1),
(64, '2018_10_01_090754_add_image_and_popularity_columns_to_genres_table', 1),
(65, '2018_11_26_171703_add_type_and_title_columns_to_pages_table', 1),
(66, '2018_12_01_144233_change_unique_index_on_tags_table', 1),
(67, '2019_02_16_150049_delete_old_seo_settings', 1),
(68, '2019_02_24_141457_create_jobs_table', 1),
(69, '2019_03_11_162627_add_preview_token_to_file_entries_table', 1),
(70, '2019_03_12_160803_add_thumbnail_column_to_file_entries_table', 1),
(71, '2019_03_16_161836_add_paypal_id_column_to_billing_plans_table', 1),
(72, '2019_05_14_120930_index_description_column_in_file_entries_table', 1),
(73, '2019_06_08_120504_create_custom_domains_table', 1),
(74, '2019_06_13_140318_add_user_id_column_to_pages_table', 1),
(75, '2019_06_15_114320_rename_pages_table_to_custom_pages', 1),
(76, '2019_06_18_133933_create_permissions_table', 1),
(77, '2019_06_18_134203_create_permissionables_table', 1),
(78, '2019_06_18_135822_rename_permissions_columns', 1),
(79, '2019_07_08_122001_create_css_themes_table', 1),
(80, '2019_07_20_141752_create_invoices_table', 1),
(81, '2019_08_19_121112_add_global_column_to_custom_domains_table', 1),
(82, '2019_09_13_141123_change_plan_amount_to_float', 1),
(83, '2019_09_17_134818_rename_track_artists_legacy_column', 1),
(84, '2019_09_18_131640_create_artist_track_table', 1),
(85, '2019_09_18_131837_migrate_inline_artists_to_pivot', 1),
(86, '2019_09_19_123359_add_spotify_id_to_tracks_table', 1),
(87, '2019_09_19_161230_add_spotify_id_to_artists_table', 1),
(88, '2019_09_19_161305_add_spotify_id_to_albums_table', 1),
(89, '2019_09_21_115840_remove_track_name_album_name_unique_index', 1),
(90, '2019_09_21_134409_add_timestamps_to_artists_albums_tracks', 1),
(91, '2019_09_22_131629_add_user_id_columns_to_tracks_table', 1),
(92, '2019_09_22_131758_rename_track_user_table_to_liked_tracks', 1),
(93, '2019_09_26_144547_update_albums_to_v2', 1),
(94, '2019_09_30_152608_update_genre_artist_table_to_v2', 1),
(95, '2019_10_02_192908_create_reposts_table', 1),
(96, '2019_10_04_140608_create_user_profiles_table', 1),
(97, '2019_10_04_140907_create_user_links_table', 1),
(98, '2019_10_06_122651_create_channels_table', 1),
(99, '2019_10_06_132717_create_channelables_table', 1),
(100, '2019_10_14_171943_add_index_to_username_column', 1),
(101, '2019_10_15_171019_create_plays_table', 1),
(102, '2019_10_20_143522_create_comments_table', 1),
(103, '2019_10_20_150654_add_columns_to_comments_table', 1),
(104, '2019_10_23_134520_create_notifications_table', 1),
(105, '2019_10_31_154623_artist_bios', 1),
(106, '2019_10_31_154730_create_bio_images_table', 1),
(107, '2019_11_02_151404_move_inline_artist_bios_to_separate_tables', 1),
(108, '2019_11_14_195518_add_name_index_to_artists_table', 1),
(109, '2019_11_15_183635_add_display_name_column_to_genres_table', 1),
(110, '2019_11_16_150409_add_indexes_to_genreables_table', 1),
(111, '2019_11_21_144956_add_resource_id_and_type_to_custom_domains_table', 1),
(112, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(113, '2019_12_14_194512_rename_public_path_column_to_disk_prefix', 1),
(114, '2019_12_24_165237_change_file_size_column_default_value_to_0', 1),
(115, '2019_12_28_190836_update_file_entry_models_table_to_v2', 1),
(116, '2019_12_28_191105_move_user_file_entry_table_records_to_file_entry_models', 1),
(117, '2020_01_26_143733_create_notification_subscriptions_table', 1),
(118, '2020_03_03_140720_add_language_col_to_localizations_table', 1),
(119, '2020_03_03_143142_add_lang_code_to_existing_localizations', 1),
(120, '2020_03_30_150052_index_created_at_in_tracks_table', 1),
(121, '2020_04_09_154139_delete_old_notifications', 1),
(122, '2020_04_14_163347_add_hidden_column_to_plans_table', 1),
(123, '2020_06_27_180040_add_verified_at_column_to_users_table', 1),
(124, '2020_06_27_180253_move_confirmed_column_to_email_verified_at', 1),
(125, '2020_07_15_144024_fix_issues_with_migration_to_laravel_7', 1),
(126, '2020_07_22_165126_create_workspaces_table', 1),
(127, '2020_07_23_145652_create_workspace_invites_table', 1),
(128, '2020_07_23_164502_create_workspace_user_table', 1),
(129, '2020_07_26_165349_add_columns_to_roles_table', 1),
(130, '2020_07_29_141418_add_workspace_id_column_to_workspaceable_models', 1),
(131, '2020_07_30_152330_add_type_column_to_permissions_table', 1),
(132, '2020_08_29_165057_add_hide_nav_column_to_custom_pages_table', 1),
(133, '2021_04_16_184910_add_artist_id_column_to_user_profiles_table', 1),
(134, '2021_04_16_185035_move_artist_bios_to_user_profiles', 1),
(135, '2021_04_17_175627_rename_bio_images_table_to_profile_images', 1),
(136, '2021_04_22_163240_create_backStage_requests_table', 1),
(137, '2021_04_22_172459_add_internal_columm_to_roles_table', 1),
(138, '2021_04_22_174550_add_artists_column_to_roles_table', 1),
(139, '2021_04_24_164138_create_user_artist_table', 1),
(140, '2021_04_25_173110_add_verified_column_to_artists_table', 1),
(141, '2021_04_28_153802_create_artist_album_table', 1),
(142, '2021_04_28_153950_migrate_albums_to_many_to_many_artist_relation', 1),
(143, '2021_05_01_174819_add_collaborative_column_to_playlists_table', 1),
(144, '2021_05_02_172541_add_added_by_column_to_playlist_track_table', 1),
(145, '2021_05_02_174158_add_owner_id_column_to_playlists_table', 1),
(146, '2021_05_02_174256_hydrate_empty_owner_id_column_in_playlist_table', 1),
(147, '2021_05_02_194925_rename_owner_column_to_editor_in_playlist_user_table', 1),
(148, '2021_05_03_173446_add_deleted_column_to_comments_table', 1),
(149, '2021_05_03_174006_hydrate_added_by_column_in_playlist_track_table', 1),
(150, '2021_05_05_195829_add_spotify_id_column_to_playlists_table', 1),
(151, '2021_05_07_165545_add_config_column_to_channels_table', 1),
(152, '2021_05_07_165903_move_channel_settings_into_config_column', 1),
(153, '2021_05_09_180332_rename_user_links_table_to_profile_links', 1),
(154, '2021_05_09_180652_add_columns_to_profile_links_table', 1),
(155, '2021_05_10_162145_migrate_user_artist_type_albums', 1),
(156, '2021_05_10_164700_migrate_user_artist_type_tracks', 1),
(157, '2021_05_12_164940_add_advanced_column_to_permissions_table', 1),
(158, '2021_05_12_170639_replace_album_artist_track_permission_with_music_one', 1),
(159, '2021_05_18_163931_add_plays_column_to_albums_table', 1),
(160, '2021_05_20_190631_create_failed_jobs_table', 1),
(161, '2021_05_22_143750_add_owner_id_column_to_tracks_and_albums_table', 1),
(162, '2021_06_04_143405_add_workspace_id_col_to_custom_domains_table', 1),
(163, '2021_06_04_143406_add_workspace_id_col_to_custom_pages_table', 1),
(164, '2021_06_04_143406_add_workspace_id_col_to_file_entries_table', 1),
(165, '2021_06_05_182202_create_csv_exports_table', 1),
(166, '2021_06_18_161030_rename_gateway_col_in_subscriptions_table', 1),
(167, '2021_06_19_111939_add_owner_id_column_to_file_entries_table', 1),
(168, '2021_06_19_112035_materialize_owner_id_in_file_entries_table', 1),
(169, '2021_07_17_093454_add_created_at_col_to_user_role_table', 1),
(170, '2021_09_30_123758_slugify_tag_name_column', 1),
(171, '2021_10_13_132915_add_token_cols_to_social_profiles_table', 1),
(172, '2022_04_08_122553_change_default_workspace_id_from_null_to_zero', 1),
(173, '2022_04_23_115027_add_id_to_all_menus', 1),
(174, '2022_08_10_200344_add_produce_id_column_to_subscriptions_table', 1),
(175, '2022_08_11_160401_create_prices_table', 1),
(176, '2022_08_11_170041_create_products_table', 1),
(177, '2022_08_11_170117_move_billing_plans_to_products_and_prices_tables', 1),
(178, '2022_08_17_184337_add_card_expires_column_to_users_table', 1),
(179, '2022_08_24_192127_migrate_common_settings_to_v3', 1),
(180, '2022_09_03_164633_add_expires_at_column_to_personal_access_tokens_table', 1),
(181, '2022_09_27_124344_change_available_space_column_to_big_int', 1),
(182, '2022_09_28_121423_migrate_notif_settings_from_array_to_obj', 1),
(183, '2022_11_06_115107_increase_file_name_column_length', 1),
(184, '2023_02_01_172721_add_admin_sorting_indexes', 1),
(185, '2023_03_10_165309_index_created_at_column_in_artists_table', 1),
(186, '2023_03_17_175502_add_user_id_to_tags_table', 1),
(187, '2023_03_17_180355_change_name_index_to_name_user_id_in_tags_table', 1),
(188, '2023_03_27_124108_slugify_genre_name_column', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(191) NOT NULL,
  `notifiable_type` varchar(191) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification_subscriptions`
--

CREATE TABLE `notification_subscriptions` (
  `id` char(36) NOT NULL,
  `notif_id` varchar(5) NOT NULL,
  `user_id` int(11) NOT NULL,
  `channels` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissionables`
--

CREATE TABLE `permissionables` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(11) NOT NULL,
  `permissionable_id` int(11) NOT NULL,
  `permissionable_type` varchar(40) NOT NULL,
  `restrictions` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissionables`
--

INSERT INTO `permissionables` (`id`, `permission_id`, `permissionable_id`, `permissionable_type`, `restrictions`) VALUES
(1, 3, 1, 'App\\User', NULL),
(2, 9, 1, 'Common\\Auth\\Roles\\Role', '[]'),
(3, 18, 1, 'Common\\Auth\\Roles\\Role', '[]'),
(4, 22, 1, 'Common\\Auth\\Roles\\Role', '[]'),
(5, 26, 1, 'Common\\Auth\\Roles\\Role', '[]'),
(6, 32, 1, 'Common\\Auth\\Roles\\Role', '[]'),
(7, 37, 1, 'Common\\Auth\\Roles\\Role', '[]'),
(8, 48, 1, 'Common\\Auth\\Roles\\Role', '[]'),
(9, 49, 1, 'Common\\Auth\\Roles\\Role', '[]'),
(10, 51, 1, 'Common\\Auth\\Roles\\Role', '[]'),
(11, 55, 1, 'Common\\Auth\\Roles\\Role', '[]'),
(12, 56, 1, 'Common\\Auth\\Roles\\Role', '[]'),
(13, 60, 1, 'Common\\Auth\\Roles\\Role', '[]'),
(14, 88, 1, 'Common\\Auth\\Roles\\Role', '[]'),
(15, 9, 2, 'Common\\Auth\\Roles\\Role', '[]'),
(16, 26, 2, 'Common\\Auth\\Roles\\Role', '[]'),
(17, 51, 2, 'Common\\Auth\\Roles\\Role', '[]'),
(18, 49, 2, 'Common\\Auth\\Roles\\Role', '[]'),
(19, 48, 2, 'Common\\Auth\\Roles\\Role', '[]'),
(20, 32, 2, 'Common\\Auth\\Roles\\Role', '[]'),
(21, 55, 2, 'Common\\Auth\\Roles\\Role', '[]'),
(22, 37, 2, 'Common\\Auth\\Roles\\Role', '[]'),
(23, 22, 2, 'Common\\Auth\\Roles\\Role', '[]'),
(24, 52, 3, 'Common\\Auth\\Roles\\Role', '[]'),
(25, 18, 1, 'Common\\Billing\\Models\\Product', '[]'),
(26, 52, 1, 'Common\\Billing\\Models\\Product', '[]'),
(27, 18, 2, 'Common\\Billing\\Models\\Product', '[]'),
(28, 52, 2, 'Common\\Billing\\Models\\Product', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `display_name` varchar(191) NOT NULL,
  `description` varchar(191) DEFAULT NULL,
  `group` varchar(30) NOT NULL,
  `restrictions` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'sitewide',
  `advanced` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `group`, `restrictions`, `created_at`, `updated_at`, `type`, `advanced`) VALUES
(1, 'admin.access', 'Access Admin', 'Required in order to access any admin area page.', 'admin', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 0),
(2, 'appearance.update', 'Update Appearance', 'Allows access to appearance editor.', 'admin', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 0),
(3, 'admin', 'Super Admin', 'Give all permissions to user.', 'admin', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 0),
(4, 'api.access', 'Access Api', 'Allow users to use the API and access API section in their account settings page.', 'api', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 0),
(5, 'roles.view', 'View Roles', 'Allow viewing ALL roles, regardless of who is the owner.', 'roles', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(6, 'roles.create', 'Create Roles', 'Allow creating new roles, regardless of who is the owner.', 'roles', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(7, 'roles.update', 'Update Roles', 'Allow updating ALL roles, regardless of who is the owner.', 'roles', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(8, 'roles.delete', 'Delete Roles', 'Allow deleting ALL roles, regardless of who is the owner.', 'roles', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(9, 'custom_pages.view', 'View Custom Pages', 'Allow viewing of all pages on the site, regardless of who created them. User can view their own pages without this permission.', 'custom_pages', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(10, 'custom_pages.create', 'Create Custom Pages', 'Allow creating new custom pages, regardless of who is the owner.', 'custom_pages', '[{\"name\":\"count\",\"type\":\"number\",\"description\":\"policies.count_description\"}]', '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(11, 'custom_pages.update', 'Update Custom Pages', 'Allow editing of all pages on the site, regardless of who created them. User can edit their own pages without this permission.', 'custom_pages', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(12, 'custom_pages.delete', 'Delete Custom Pages', 'Allow deleting of all pages on the site, regardless of who created them. User can delete their own pages without this permission.', 'custom_pages', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(13, 'custom_domains.view', 'View Custom Domains', 'Allow viewing all domains on the site, regardless of who created them. User can view their own domains without this permission.', 'custom_domains', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(14, 'custom_domains.create', 'Create Custom Domains', 'Allow user to connect their own custom domains.', 'custom_domains', '[{\"name\":\"count\",\"type\":\"number\",\"description\":\"policies.count_description\"}]', '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 0),
(15, 'custom_domains.update', 'Update Custom Domains', 'Allow editing all domains on the site, regardless of who created them. User can edit their own domains without this permission.', 'custom_domains', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(16, 'custom_domains.delete', 'Delete Custom Domains', 'Allow deleting all domains on the site, regardless of who created them. User can delete their own domains without this permission.', 'custom_domains', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(17, 'files.view', 'View Files', 'Allow viewing all uploaded files on the site. Users can view their own uploads without this permission.', 'files', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(18, 'files.create', 'Create Files', 'Allow uploading files on the site. This permission is used by any page where it is possible for user to upload files.', 'files', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(19, 'files.update', 'Update Files', 'Allow editing all uploaded files on the site. Users can edit their own uploads without this permission.', 'files', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(20, 'files.delete', 'Delete Files', 'Allow deleting all uploaded files on the site. Users can delete their own uploads (where applicable) without this permission.', 'files', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(21, 'files.download', 'Download Files', 'Allow downloading all uploaded files on the site. Users can download their own uploads (where applicable) without this permission.', 'files', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(22, 'users.view', 'View Users', 'Allow viewing user profile pages on the site. User can view their own profile without this permission.', 'users', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 0),
(23, 'users.create', 'Create Users', 'Allow creating users from admin area. Users can register for new accounts without this permission. Registration can be disabled from settings page.', 'users', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(24, 'users.update', 'Update Users', 'Allow editing details of any user on the site. User can edit their own details without this permission.', 'users', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(25, 'users.delete', 'Delete Users', 'Allow deleting any user on the site. User can request deletion of their own account without this permission.', 'users', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(26, 'localizations.view', 'View Localizations', 'Allow viewing ALL localizations, regardless of who is the owner.', 'localizations', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(27, 'localizations.create', 'Create Localizations', 'Allow creating new localizations, regardless of who is the owner.', 'localizations', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(28, 'localizations.update', 'Update Localizations', 'Allow updating ALL localizations, regardless of who is the owner.', 'localizations', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(29, 'localizations.delete', 'Delete Localizations', 'Allow deleting ALL localizations, regardless of who is the owner.', 'localizations', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(30, 'settings.view', 'View Settings', 'Allow viewing ALL settings, regardless of who is the owner.', 'settings', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(31, 'settings.update', 'Update Settings', 'Allow updating ALL settings, regardless of who is the owner.', 'settings', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(32, 'plans.view', 'View Plans', 'Allow viewing ALL plans, regardless of who is the owner.', 'plans', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(33, 'plans.create', 'Create Plans', 'Allow creating new plans, regardless of who is the owner.', 'plans', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(34, 'plans.update', 'Update Plans', 'Allow updating ALL plans, regardless of who is the owner.', 'plans', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(35, 'plans.delete', 'Delete Plans', 'Allow deleting ALL plans, regardless of who is the owner.', 'plans', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(36, 'invoices.view', 'View Invoices', 'Allow viewing ALL invoices, regardless of who is the owner.', 'invoices', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(37, 'tags.view', 'View Tags', 'Allow viewing ALL tags, regardless of who is the owner.', 'tags', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(38, 'tags.create', 'Create Tags', 'Allow creating new tags, regardless of who is the owner.', 'tags', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(39, 'tags.update', 'Update Tags', 'Allow updating ALL tags, regardless of who is the owner.', 'tags', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(40, 'tags.delete', 'Delete Tags', 'Allow deleting ALL tags, regardless of who is the owner.', 'tags', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(41, 'workspaces.view', 'View Workspaces', 'Allow viewing ALL workspaces, regardless of who is the owner.', 'workspaces', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 0),
(42, 'workspaces.create', 'Create Workspaces', 'Allow creating new workspaces, regardless of who is the owner.', 'workspaces', '[{\"name\":\"count\",\"type\":\"number\",\"description\":\"policies.count_description\"},{\"name\":\"member_count\",\"type\":\"number\",\"description\":\"Maximum number of members workspace is allowed to have.\"}]', '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 0),
(43, 'workspaces.update', 'Update Workspaces', 'Allow updating ALL workspaces, regardless of who is the owner.', 'workspaces', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 0),
(44, 'workspaces.delete', 'Delete Workspaces', 'Allow deleting ALL workspaces, regardless of who is the owner.', 'workspaces', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 0),
(45, 'workspace_members.invite', 'Invite Members', 'Allow user to invite new members into a workspace.', 'workspace_members', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'workspace', 0),
(46, 'workspace_members.update', 'Update Members', 'Allow user to change role of other members.', 'workspace_members', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'workspace', 0),
(47, 'workspace_members.delete', 'Delete Members', 'Allow user to remove members from workspace.', 'workspace_members', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'workspace', 0),
(48, 'music.view', 'View Music', 'Allows viewing of music content on the site (tracks, albums, artists, channels etc.)', 'music', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 0),
(49, 'music.play', 'Play Music', 'Allows playback of music and video on the site.', 'music', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 0),
(50, 'music.download', 'Download Music', 'Allows download of music and video on the site.', 'music', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 0),
(51, 'music.embed', 'Embed Music', 'Allows embedding of tracks, albums and playlists on external sites.', 'music', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 0),
(52, 'music.create', 'Create Music', 'Allows uploading and creating new tracks and albums on the site.', 'music', '[{\"name\":\"minutes\",\"type\":\"number\",\"description\":\"How many minutes all user tracks are allowed to take up. Leave empty for unlimited.\"},{\"name\":\"artist_selection\",\"type\":\"bool\",\"description\":\"Allows attaching track or album to any artist that exists on the site, instead of only the ones managed by current user.\"}]', '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 0),
(53, 'music.update', 'Update Music', 'Allows editing all media (album, track, artist etc.) on the site, even if user did not create them initially. User can edit their own media without this permission.', 'music', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 0),
(54, 'music.delete', 'Delete Music', 'Allows deleting any media item on the site, even if user did not create them initially. User can delete their own media without this permission.', 'music', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 0),
(55, 'playlists.view', 'View Playlists', 'Allow viewing and searching for playlists marked as public.', 'playlists', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 0),
(56, 'playlists.create', 'Create Playlists', 'Allow creating new playlists.', 'playlists', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 0),
(57, 'playlists.update', 'Update Playlists', 'Allow editing of all playlists, whether user is the owner or not. User can edit their own playlists without this permission.', 'playlists', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 0),
(58, 'playlists.delete', 'Delete Playlists', 'Allow deleting any playlist, whether user is the owner or not. User can delete their own playlists without this permission.', 'playlists', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 0),
(59, 'comments.view', 'View Comments', 'Allow viewing a single comment or list of comments on the site.', 'comments', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 0),
(60, 'comments.create', 'Create Comments', 'Allow creating new comments.', 'comments', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 0),
(61, 'comments.update', 'Update Comments', 'Allow editing of all comments, whether user created that comment or not. User can edit their own comments without this permission.', 'comments', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 0),
(62, 'comments.delete', 'Delete Comments', 'Allow deleting any comment, whether user created that comment or not. User can delete their own comments without this permission.', 'comments', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 0),
(63, 'artists.view', 'View Artists', 'Allow viewing artist page and searching for artists.', 'artists', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(64, 'artists.create', 'Create Artists', 'Allow creating new artists.', 'artists', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(65, 'artists.update', 'Update Artists', 'Allow editing of all artists, whether user has created them or not.', 'artists', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(66, 'artists.delete', 'Delete Artists', 'Allow deleting any artist, whether user has created them or not.', 'artists', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(67, 'albums.view', 'View Albums', 'Allow viewing album pages and searching for albums.', 'albums', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(68, 'albums.create', 'Create Albums', 'Allow creating new albums.', 'albums', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(69, 'albums.update', 'Update Albums', 'Allow editing of all albums, whether user has created them or not.', 'albums', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(70, 'albums.delete', 'Delete Albums', 'Allow deleting any album, whether user has created them or not.', 'albums', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(71, 'tracks.view', 'View Tracks', 'Allow viewing track page and searching for tracks.', 'tracks', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(72, 'tracks.create', 'Create Tracks', 'Allow creating new tracks.', 'tracks', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(73, 'tracks.update', 'Update Tracks', 'Allow editing of all tracks, whether user has created them or not.', 'tracks', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(74, 'tracks.delete', 'Delete Tracks', 'Allow deleting any track, whether user has created them or not.', 'tracks', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(75, 'genres.view', 'View Genres', 'Allow viewing genre pages and searching for genres.', 'genres', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(76, 'genres.create', 'Create Genres', 'Allow creating new genres.', 'genres', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(77, 'genres.update', 'Update Genres', 'Allow editing of all genres, whether user has created them or not.', 'genres', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(78, 'genres.delete', 'Delete Genres', 'Allow deleting any genre, whether user has created them or not.', 'genres', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(79, 'lyrics.view', 'View Lyrics', 'Allow viewing and searching for lyrics.', 'lyrics', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(80, 'lyrics.create', 'Create Lyrics', 'Allow creating new lyrics.', 'lyrics', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(81, 'lyrics.update', 'Update Lyrics', 'Allow editing of all lyrics, whether user has created them or not.', 'lyrics', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(82, 'lyrics.delete', 'Delete Lyrics', 'Allow deleting any lyric, whether user has created them or not.', 'lyrics', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(83, 'channels.view', 'View Channels', 'Allow viewing channels on the site.', 'channels', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(84, 'channels.create', 'Create Channels', 'Allow creating new channels in admin area.', 'channels', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(85, 'channels.update', 'Update Channels', 'Allow editing of all channels in admin area.', 'channels', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(86, 'channels.delete', 'Delete Channels', 'Allow deleting of all channels in admin area.', 'channels', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(87, 'backstageRequests.view', 'View BackstageRequests', 'Allow viewing backstage requests.', 'backstage_requests', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(88, 'backstageRequests.create', 'Create BackstageRequests', 'Allow creating new backstage requests.', 'backstage_requests', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(89, 'backstageRequests.update', 'Update BackstageRequests', 'Allow editing of all backstage requests, whether user has created them or not.', 'backstage_requests', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1),
(90, 'backstageRequests.delete', 'Delete BackstageRequests', 'Allow deleting any backstage request, whether user has created them or not.', 'backstage_requests', NULL, '2023-05-09 00:33:56', '2023-05-09 00:33:56', 'sitewide', 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE `playlists` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `public` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `collaborative` tinyint(1) NOT NULL DEFAULT 0,
  `plays` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `owner_id` bigint(20) UNSIGNED NOT NULL,
  `spotify_id` char(22) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `playlist_track`
--

CREATE TABLE `playlist_track` (
  `id` int(10) UNSIGNED NOT NULL,
  `playlist_id` int(10) UNSIGNED NOT NULL,
  `track_id` int(10) UNSIGNED NOT NULL,
  `position` int(11) NOT NULL DEFAULT 1,
  `added_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `playlist_user`
--

CREATE TABLE `playlist_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `playlist_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `editor` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

CREATE TABLE `prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(13,2) NOT NULL,
  `currency` varchar(191) NOT NULL,
  `interval` varchar(191) NOT NULL DEFAULT 'month',
  `interval_count` int(11) NOT NULL DEFAULT 1,
  `product_id` int(11) NOT NULL,
  `stripe_id` varchar(50) DEFAULT NULL,
  `paypal_id` varchar(50) DEFAULT NULL,
  `default` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prices`
--

INSERT INTO `prices` (`id`, `amount`, `currency`, `interval`, `interval_count`, `product_id`, `stripe_id`, `paypal_id`, `default`, `created_at`, `updated_at`) VALUES
(1, 8.00, 'USD', 'month', 1, 2, NULL, NULL, 0, '2023-05-09 00:33:57', '2023-05-09 00:33:57'),
(2, 43.00, 'USD', 'month', 6, 2, NULL, NULL, 0, '2023-05-09 00:33:57', '2023-05-09 00:33:57'),
(3, 76.00, 'USD', 'month', 12, 2, NULL, NULL, 0, '2023-05-09 00:33:57', '2023-05-09 00:33:57');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `uuid` char(36) NOT NULL,
  `feature_list` text DEFAULT NULL,
  `position` smallint(6) NOT NULL DEFAULT 0,
  `recommended` tinyint(1) NOT NULL DEFAULT 0,
  `free` tinyint(1) NOT NULL DEFAULT 0,
  `hidden` tinyint(1) NOT NULL DEFAULT 0,
  `available_space` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `uuid`, `feature_list`, `position`, `recommended`, `free`, `hidden`, `available_space`, `created_at`, `updated_at`) VALUES
(1, 'Basic', NULL, '40a8620f-4f5a-4818-8da5-6a75ec81892c', '[\"3h upload time\",\"Ad supported experience\",\"Listen on browser, phone, tablet or TV\",\"Stream unlimited music\",\"Cancel anytime\"]', 1, 0, 1, 0, NULL, '2023-05-09 00:33:57', '2023-05-09 00:33:57'),
(2, 'Pro Unlimited', NULL, '8f2630ff-a673-46ab-b847-5b35ca34e66a', '[\"Unlimited upload time\",\"No advertisements\",\"Download songs\",\"Pro badge\",\"Listen on browser, phone and tablet or TV\",\"Stream unlimited amount of music\",\"Cancel anytime\"]', 2, 1, 0, 0, NULL, '2023-05-09 00:33:57', '2023-05-09 00:33:57');

-- --------------------------------------------------------

--
-- Table structure for table `profile_images`
--

CREATE TABLE `profile_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` varchar(191) NOT NULL,
  `artist_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profile_images`
--

INSERT INTO `profile_images` (`id`, `url`, `artist_id`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'https://upload.wikimedia.org/wikipedia/commons/3/37/Dagger-14-plain.png', 260, '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL),
(2, 'https://upload.wikimedia.org/wikipedia/commons/b/b5/Sidhu_Moose_Wala%27s_cremation_by_JK_Photography_31.jpg', 260, '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL),
(3, 'https://upload.wikimedia.org/wikipedia/commons/a/ab/Sidhu_Moose_Wala%27s_cremation_by_JK_Photography_34.jpg', 260, '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL),
(4, 'https://upload.wikimedia.org/wikipedia/commons/1/14/Sidhu_Moose_Wala.jpg', 260, '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profile_links`
--

CREATE TABLE `profile_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` varchar(191) NOT NULL,
  `title` varchar(191) NOT NULL,
  `linkeable_id` int(11) NOT NULL,
  `linkeable_type` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reposts`
--

CREATE TABLE `reposts` (
  `id` int(10) UNSIGNED NOT NULL,
  `repostable_id` int(11) NOT NULL,
  `repostable_type` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `legacy_permissions` text DEFAULT NULL,
  `default` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `guests` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'sitewide',
  `internal` tinyint(1) NOT NULL DEFAULT 0,
  `artists` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `legacy_permissions`, `default`, `guests`, `created_at`, `updated_at`, `description`, `type`, `internal`, `artists`) VALUES
(1, 'users', NULL, 1, 0, '2023-05-09 00:33:57', '2023-05-09 00:33:57', NULL, 'sitewide', 0, 0),
(2, 'guests', NULL, 0, 1, '2023-05-09 00:33:57', '2023-05-09 00:33:57', NULL, 'sitewide', 0, 0),
(3, 'artists', NULL, 0, 0, '2023-05-09 00:33:57', '2023-05-09 00:33:57', 'Role assigned to a user when their \"become artist request\" is approved.', 'sitewide', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `private` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`, `private`) VALUES
(1, 'dates.format', 'short', '2023-05-09 00:33:57', '2023-05-09 00:33:57', 0),
(2, 'dates.locale', 'en_US', '2023-05-09 00:33:57', '2023-05-09 00:33:57', 0),
(3, 'dates.default_timezone', 'auto', '2023-05-09 00:33:57', '2023-05-09 00:33:57', 0),
(4, 'locale.default', 'auto', '2023-05-09 00:33:57', '2023-05-09 00:33:57', 0),
(5, 'social.google.enable', 'false', '2023-05-09 00:33:57', '2023-05-09 00:58:31', 0),
(6, 'social.twitter.enable', 'false', '2023-05-09 00:33:57', '2023-05-09 00:58:31', 0),
(7, 'social.facebook.enable', 'false', '2023-05-09 00:33:57', '2023-05-09 00:58:31', 0),
(8, 'realtime.enable', 'false', '2023-05-09 00:33:57', '2023-05-09 00:33:57', 0),
(9, 'registration.disable', 'true', '2023-05-09 00:33:57', '2023-05-09 00:58:31', 0),
(10, 'i18n.default_localization', 'en', '2023-05-09 00:33:57', '2023-05-09 00:33:57', 0),
(11, 'i18n.enable', 'true', '2023-05-09 00:33:57', '2023-05-09 00:33:57', 0),
(12, 'logging.sentry_public', '', '2023-05-09 00:33:57', '2023-05-09 00:33:57', 0),
(13, 'realtime.pusher_key', '', '2023-05-09 00:33:57', '2023-05-09 00:33:57', 0),
(14, 'themes.user_change', 'false', '2023-05-09 00:33:57', '2023-05-09 01:10:17', 0),
(15, 'themes.default_id', '1', '2023-05-09 00:33:57', '2023-05-09 00:46:15', 0),
(16, 'billing.enable', 'false', '2023-05-09 00:33:57', '2023-05-09 00:33:57', 0),
(17, 'billing.paypal_test_mode', 'true', '2023-05-09 00:33:57', '2023-05-09 00:33:57', 0),
(18, 'billing.stripe_test_mode', 'true', '2023-05-09 00:33:57', '2023-05-09 00:33:57', 0),
(19, 'billing.stripe.enable', 'false', '2023-05-09 00:33:57', '2023-05-09 00:33:57', 0),
(20, 'billing.paypal.enable', 'false', '2023-05-09 00:33:57', '2023-05-09 00:33:57', 0),
(21, 'billing.accepted_cards', '[\"visa\",\"mastercard\",\"american-express\",\"discover\"]', '2023-05-09 00:33:57', '2023-05-09 00:33:57', 0),
(22, 'custom_domains.default_host', 'http://localhost', '2023-05-09 00:33:57', '2023-05-09 00:33:57', 0),
(23, 'uploads.chunk', 'true', '2023-05-09 00:33:57', '2023-05-09 00:33:57', 0),
(24, 'uploads.chunk_size', '5242880', '2023-05-09 00:33:57', '2023-05-09 00:33:57', 0),
(25, 'cookie_notice.enable', 'true', '2023-05-09 00:33:57', '2023-05-09 00:33:57', 0),
(26, 'cookie_notice.position', 'bottom', '2023-05-09 00:33:57', '2023-05-09 00:33:57', 0),
(27, 'branding.logo_dark', 'images/logo-dark.svg', '2023-05-09 00:33:57', '2023-05-09 00:33:57', 0),
(28, 'branding.logo_light', 'images/logo-light.svg', '2023-05-09 00:33:57', '2023-05-09 00:33:57', 0),
(29, 'homepage.type', 'loginPage', '2023-05-09 00:33:57', '2023-05-09 01:10:00', 0),
(30, 'homepage.value', '9', '2023-05-09 00:33:57', '2023-05-09 00:33:57', 0),
(31, 'cache.report_minutes', '60', '2023-05-09 00:33:57', '2023-05-09 00:33:57', 0),
(32, 'cache.homepage_days', '1', '2023-05-09 00:33:57', '2023-05-09 00:33:57', 0),
(33, 'automation.artist_interval', '7', '2023-05-09 00:33:57', '2023-05-09 00:33:57', 0),
(34, 'artist_bio_provider', 'wikipedia', '2023-05-09 00:33:57', '2023-05-09 00:33:57', 0),
(35, 'wikipedia_language', 'en', '2023-05-09 00:33:57', '2023-05-09 00:33:57', 0),
(36, 'youtube.suggested_quality', 'default', '2023-05-09 00:33:57', '2023-05-09 00:33:57', 0),
(37, 'youtube.region_code', 'us', '2023-05-09 00:33:57', '2023-05-09 00:33:57', 0),
(38, 'youtube.search_method', 'site', '2023-05-09 00:33:57', '2023-05-09 00:33:57', 0),
(39, 'youtube.store_id', 'false', '2023-05-09 00:33:57', '2023-05-09 00:33:57', 0),
(40, 'player.default_volume', '30', '2023-05-09 00:33:57', '2023-05-09 00:33:57', 0),
(41, 'player.hide_queue', '0', '2023-05-09 00:33:57', '2023-05-09 00:33:57', 0),
(42, 'player.hide_video', '0', '2023-05-09 00:33:57', '2023-05-09 00:33:57', 0),
(43, 'player.hide_video_button', '0', '2023-05-09 00:33:57', '2023-05-09 00:33:57', 0),
(44, 'player.hide_lyrics', '0', '2023-05-09 00:33:57', '2023-05-09 00:33:57', 0),
(45, 'player.lyrics_automate', '0', '2023-05-09 00:33:57', '2023-05-09 00:33:57', 0),
(46, 'player.mobile.auto_open_overlay', '1', '2023-05-09 00:33:57', '2023-05-09 00:33:57', 0),
(47, 'player.enable_download', '0', '2023-05-09 00:33:57', '2023-05-09 00:33:57', 0),
(48, 'player.sort_method', 'external', '2023-05-09 00:33:57', '2023-05-09 00:33:57', 0),
(49, 'player.seekbar_type', 'line', '2023-05-09 00:33:57', '2023-05-09 00:33:57', 0),
(50, 'player.track_comments', 'false', '2023-05-09 00:33:57', '2023-05-09 00:33:57', 0),
(51, 'player.show_upload_btn', 'false', '2023-05-09 00:33:57', '2023-05-09 00:33:57', 0),
(52, 'uploads.autoMatch', 'true', '2023-05-09 00:33:57', '2023-05-09 00:33:57', 0),
(53, 'player.default_artist_view', 'list', '2023-05-09 00:33:57', '2023-05-09 00:33:57', 0),
(54, 'player.enable_repost', 'false', '2023-05-09 00:33:57', '2023-05-09 00:33:57', 0),
(55, 'artistPage.tabs', '[{\"id\":1,\"active\":true},{\"id\":2,\"active\":true},{\"id\":3,\"active\":true},{\"id\":4,\"active\":false},{\"id\":5,\"active\":false},{\"id\":6,\"active\":false}]', '2023-05-09 00:33:57', '2023-05-09 00:33:57', 0),
(56, 'menus', '[{\"name\":\"Primary\",\"id\":\"wGixKn\",\"positions\":[\"sidebar-primary\"],\"items\":[{\"type\":\"route\",\"label\":\"Popular Albums\",\"action\":\"\\/popular-albums\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M12 16.5q1.875 0 3.188-1.312Q16.5 13.875 16.5 12q0-1.875-1.312-3.188Q13.875 7.5 12 7.5q-1.875 0-3.188 1.312Q7.5 10.125 7.5 12q0 1.875 1.312 3.188Q10.125 16.5 12 16.5Zm0-3.5q-.425 0-.712-.288Q11 12.425 11 12t.288-.713Q11.575 11 12 11t.713.287Q13 11.575 13 12t-.287.712Q12.425 13 12 13Zm0 9q-2.075 0-3.9-.788-1.825-.787-3.175-2.137-1.35-1.35-2.137-3.175Q2 14.075 2 12t.788-3.9q.787-1.825 2.137-3.175 1.35-1.35 3.175-2.138Q9.925 2 12 2t3.9.787q1.825.788 3.175 2.138 1.35 1.35 2.137 3.175Q22 9.925 22 12t-.788 3.9q-.787 1.825-2.137 3.175-1.35 1.35-3.175 2.137Q14.075 22 12 22Zm0-2q3.35 0 5.675-2.325Q20 15.35 20 12q0-3.35-2.325-5.675Q15.35 4 12 4 8.65 4 6.325 6.325 4 8.65 4 12q0 3.35 2.325 5.675Q8.65 20 12 20Zm0-8Z\"}}],\"id\":168},{\"type\":\"route\",\"label\":\"Genres\",\"action\":\"\\/genres\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M14.25 21.4q-.575.575-1.425.575-.85 0-1.425-.575l-8.8-8.8q-.275-.275-.437-.65Q2 11.575 2 11.15V4q0-.825.588-1.413Q3.175 2 4 2h7.15q.425 0 .8.162.375.163.65.438l8.8 8.825q.575.575.575 1.412 0 .838-.575 1.413ZM12.825 20l7.15-7.15L11.15 4H4v7.15ZM6.5 8q.625 0 1.062-.438Q8 7.125 8 6.5t-.438-1.062Q7.125 5 6.5 5t-1.062.438Q5 5.875 5 6.5t.438 1.062Q5.875 8 6.5 8ZM4 4Z\"}}],\"id\":134},{\"type\":\"route\",\"label\":\"Popular songs\",\"action\":\"\\/popular-tracks\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M3.4 18 2 16.6l7.4-7.45 4 4L18.6 8H16V6h6v6h-2V9.4L13.4 16l-4-4Z\"}}],\"id\":833},{\"type\":\"route\",\"label\":\"New releases\",\"action\":\"\\/new-releases\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"m8.6 22.5-1.9-3.2-3.6-.8.35-3.7L1 12l2.45-2.8-.35-3.7 3.6-.8 1.9-3.2L12 2.95l3.4-1.45 1.9 3.2 3.6.8-.35 3.7L23 12l-2.45 2.8.35 3.7-3.6.8-1.9 3.2-3.4-1.45Zm.85-2.55 2.55-1.1 2.6 1.1 1.4-2.4 2.75-.65-.25-2.8 1.85-2.1-1.85-2.15.25-2.8-2.75-.6-1.45-2.4L12 5.15l-2.6-1.1L8 6.45l-2.75.6.25 2.8L3.65 12l1.85 2.1-.25 2.85 2.75.6ZM12 12Zm-1.05 3.55L16.6 9.9l-1.4-1.45-4.25 4.25-2.15-2.1L7.4 12Z\"}}],\"id\":566}]},{\"name\":\"Secondary\",\"id\":\"NODtKW\",\"positions\":[\"sidebar-secondary\"],\"items\":[{\"id\":878,\"type\":\"route\",\"label\":\"Songs\",\"action\":\"\\/library\\/songs\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M10 21q-1.65 0-2.825-1.175Q6 18.65 6 17q0-1.65 1.175-2.825Q8.35 13 10 13q.575 0 1.062.137.488.138.938.413V3h6v4h-4v10q0 1.65-1.175 2.825Q11.65 21 10 21Z\"}}]},{\"id\":574,\"type\":\"route\",\"label\":\"Albums\",\"action\":\"\\/library\\/albums\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M12 16.5q1.875 0 3.188-1.312Q16.5 13.875 16.5 12q0-1.875-1.312-3.188Q13.875 7.5 12 7.5q-1.875 0-3.188 1.312Q7.5 10.125 7.5 12q0 1.875 1.312 3.188Q10.125 16.5 12 16.5Zm0-3.5q-.425 0-.712-.288Q11 12.425 11 12t.288-.713Q11.575 11 12 11t.713.287Q13 11.575 13 12t-.287.712Q12.425 13 12 13Zm0 9q-2.075 0-3.9-.788-1.825-.787-3.175-2.137-1.35-1.35-2.137-3.175Q2 14.075 2 12t.788-3.9q.787-1.825 2.137-3.175 1.35-1.35 3.175-2.138Q9.925 2 12 2t3.9.787q1.825.788 3.175 2.138 1.35 1.35 2.137 3.175Q22 9.925 22 12t-.788 3.9q-.787 1.825-2.137 3.175-1.35 1.35-3.175 2.137Q14.075 22 12 22Zm0-2q3.35 0 5.675-2.325Q20 15.35 20 12q0-3.35-2.325-5.675Q15.35 4 12 4 8.65 4 6.325 6.325 4 8.65 4 12q0 3.35 2.325 5.675Q8.65 20 12 20Zm0-8Z\"}}]},{\"id\":933,\"type\":\"route\",\"label\":\"Artists\",\"action\":\"\\/library\\/artists\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M12 14q-1.25 0-2.125-.875T9 11V5q0-1.25.875-2.125T12 2q1.25 0 2.125.875T15 5v6q0 1.25-.875 2.125T12 14Zm0-6Zm-1 13v-3.075q-2.6-.35-4.3-2.325Q5 13.625 5 11h2q0 2.075 1.463 3.537Q9.925 16 12 16t3.538-1.463Q17 13.075 17 11h2q0 2.625-1.7 4.6-1.7 1.975-4.3 2.325V21Zm1-9q.425 0 .713-.288Q13 11.425 13 11V5q0-.425-.287-.713Q12.425 4 12 4t-.712.287Q11 4.575 11 5v6q0 .425.288.712.287.288.712.288Z\"}}]},{\"id\":775,\"type\":\"route\",\"label\":\"History\",\"action\":\"\\/library\\/history\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M12 21q-3.45 0-6.012-2.288Q3.425 16.425 3.05 13H5.1q.35 2.6 2.312 4.3Q9.375 19 12 19q2.925 0 4.962-2.038Q19 14.925 19 12t-2.038-4.963Q14.925 5 12 5q-1.725 0-3.225.8T6.25 8H9v2H3V4h2v2.35q1.275-1.6 3.113-2.475Q9.95 3 12 3q1.875 0 3.513.712 1.637.713 2.85 1.925 1.212 1.213 1.925 2.85Q21 10.125 21 12t-.712 3.512q-.713 1.638-1.925 2.85-1.213 1.213-2.85 1.926Q13.875 21 12 21Zm2.8-4.8L11 12.4V7h2v4.6l3.2 3.2Z\"}}]}]},{\"name\":\"Mobile\",\"id\":\"nKRHXG\",\"positions\":[\"mobile-bottom\"],\"items\":[{\"type\":\"route\",\"label\":\"Genres\",\"action\":\"\\/genres\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M14.25 21.4q-.575.575-1.425.575-.85 0-1.425-.575l-8.8-8.8q-.275-.275-.437-.65Q2 11.575 2 11.15V4q0-.825.588-1.413Q3.175 2 4 2h7.15q.425 0 .8.162.375.163.65.438l8.8 8.825q.575.575.575 1.412 0 .838-.575 1.413ZM12.825 20l7.15-7.15L11.15 4H4v7.15ZM6.5 8q.625 0 1.062-.438Q8 7.125 8 6.5t-.438-1.062Q7.125 5 6.5 5t-1.062.438Q5 5.875 5 6.5t.438 1.062Q5.875 8 6.5 8ZM4 4Z\"}}],\"id\":554},{\"type\":\"route\",\"label\":\"Top 50\",\"action\":\"\\/popular-tracks\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M3.4 18 2 16.6l7.4-7.45 4 4L18.6 8H16V6h6v6h-2V9.4L13.4 16l-4-4Z\"}}],\"id\":974},{\"type\":\"route\",\"label\":\"Search\",\"action\":\"\\/search\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"m19.6 21-6.3-6.3q-.75.6-1.725.95Q10.6 16 9.5 16q-2.725 0-4.612-1.887Q3 12.225 3 9.5q0-2.725 1.888-4.613Q6.775 3 9.5 3t4.613 1.887Q16 6.775 16 9.5q0 1.1-.35 2.075-.35.975-.95 1.725l6.3 6.3ZM9.5 14q1.875 0 3.188-1.312Q14 11.375 14 9.5q0-1.875-1.312-3.188Q11.375 5 9.5 5 7.625 5 6.312 6.312 5 7.625 5 9.5q0 1.875 1.312 3.188Q7.625 14 9.5 14Z\"}}],\"id\":849},{\"type\":\"route\",\"label\":\"Your Music\",\"action\":\"\\/library\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M12.5 15q1.05 0 1.775-.725Q15 13.55 15 12.5V7h3V5h-4v5.5q-.325-.25-.7-.375-.375-.125-.8-.125-1.05 0-1.775.725Q10 11.45 10 12.5q0 1.05.725 1.775Q11.45 15 12.5 15ZM8 18q-.825 0-1.412-.587Q6 16.825 6 16V4q0-.825.588-1.413Q7.175 2 8 2h12q.825 0 1.413.587Q22 3.175 22 4v12q0 .825-.587 1.413Q20.825 18 20 18Zm0-2h12V4H8v12Zm-4 6q-.825 0-1.412-.587Q2 20.825 2 20V6h2v14h14v2ZM8 4v12V4Z\"}}],\"id\":669}]},{\"name\":\"Auth Dropdown\",\"id\":\"h8r6vg\",\"items\":[{\"label\":\"Admin area\",\"id\":\"upm1rv\",\"action\":\"\\/admin\",\"type\":\"route\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M19 5v2h-4V5h4M9 5v6H5V5h4m10 8v6h-4v-6h4M9 17v2H5v-2h4M21 3h-8v6h8V3zM11 3H3v10h8V3zm10 8h-8v10h8V11zm-10 4H3v6h8v-6z\"}}],\"permissions\":[\"admin.access\"]},{\"label\":\"Web player\",\"id\":\"ehj0uk\",\"action\":\"\\/\",\"type\":\"route\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M10 21q-1.65 0-2.825-1.175Q6 18.65 6 17q0-1.65 1.175-2.825Q8.35 13 10 13q.575 0 1.062.137.488.138.938.413V3h6v4h-4v10q0 1.65-1.175 2.825Q11.65 21 10 21Z\"}}]},{\"label\":\"Account settings\",\"id\":\"6a89z5\",\"action\":\"\\/account-settings\",\"type\":\"route\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M19.43 12.98c.04-.32.07-.64.07-.98 0-.34-.03-.66-.07-.98l2.11-1.65c.19-.15.24-.42.12-.64l-2-3.46c-.09-.16-.26-.25-.44-.25-.06 0-.12.01-.17.03l-2.49 1c-.52-.4-1.08-.73-1.69-.98l-.38-2.65C14.46 2.18 14.25 2 14 2h-4c-.25 0-.46.18-.49.42l-.38 2.65c-.61.25-1.17.59-1.69.98l-2.49-1c-.06-.02-.12-.03-.18-.03-.17 0-.34.09-.43.25l-2 3.46c-.13.22-.07.49.12.64l2.11 1.65c-.04.32-.07.65-.07.98 0 .33.03.66.07.98l-2.11 1.65c-.19.15-.24.42-.12.64l2 3.46c.09.16.26.25.44.25.06 0 .12-.01.17-.03l2.49-1c.52.4 1.08.73 1.69.98l.38 2.65c.03.24.24.42.49.42h4c.25 0 .46-.18.49-.42l.38-2.65c.61-.25 1.17-.59 1.69-.98l2.49 1c.06.02.12.03.18.03.17 0 .34-.09.43-.25l2-3.46c.12-.22.07-.49-.12-.64l-2.11-1.65zm-1.98-1.71c.04.31.05.52.05.73 0 .21-.02.43-.05.73l-.14 1.13.89.7 1.08.84-.7 1.21-1.27-.51-1.04-.42-.9.68c-.43.32-.84.56-1.25.73l-1.06.43-.16 1.13-.2 1.35h-1.4l-.19-1.35-.16-1.13-1.06-.43c-.43-.18-.83-.41-1.23-.71l-.91-.7-1.06.43-1.27.51-.7-1.21 1.08-.84.89-.7-.14-1.13c-.03-.31-.05-.54-.05-.74s.02-.43.05-.73l.14-1.13-.89-.7-1.08-.84.7-1.21 1.27.51 1.04.42.9-.68c.43-.32.84-.56 1.25-.73l1.06-.43.16-1.13.2-1.35h1.39l.19 1.35.16 1.13 1.06.43c.43.18.83.41 1.23.71l.91.7 1.06-.43 1.27-.51.7 1.21-1.07.85-.89.7.14 1.13zM12 8c-2.21 0-4 1.79-4 4s1.79 4 4 4 4-1.79 4-4-1.79-4-4-4zm0 6c-1.1 0-2-.9-2-2s.9-2 2-2 2 .9 2 2-.9 2-2 2z\"}}]}],\"positions\":[\"auth-dropdown\"]},{\"name\":\"Admin Sidebar\",\"id\":\"2d43u1\",\"items\":[{\"label\":\"Analytics\",\"id\":\"886nz4\",\"action\":\"\\/admin\",\"type\":\"route\",\"condition\":\"admin\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M19 3H5c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2zm0 16H5V5h14v14z\"}},{\"tag\":\"path\",\"attr\":{\"d\":\"M7 12h2v5H7zm8-5h2v10h-2zm-4 7h2v3h-2zm0-4h2v2h-2z\"}}],\"role\":1,\"permissions\":[\"admin.access\"],\"roles\":[]},{\"label\":\"Appearance\",\"id\":\"slcqm0\",\"action\":\"\\/admin\\/appearance\",\"type\":\"route\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"m2.53 19.65 1.34.56v-9.03l-2.43 5.86c-.41 1.02.08 2.19 1.09 2.61zm19.5-3.7L17.07 3.98c-.31-.75-1.04-1.21-1.81-1.23-.26 0-.53.04-.79.15L7.1 5.95c-.75.31-1.21 1.03-1.23 1.8-.01.27.04.54.15.8l4.96 11.97c.31.76 1.05 1.22 1.83 1.23.26 0 .52-.05.77-.15l7.36-3.05c1.02-.42 1.51-1.59 1.09-2.6zm-9.2 3.8L7.87 7.79l7.35-3.04h.01l4.95 11.95-7.35 3.05z\"}},{\"tag\":\"circle\",\"attr\":{\"cx\":\"11\",\"cy\":\"9\",\"r\":\"1\"}},{\"tag\":\"path\",\"attr\":{\"d\":\"M5.88 19.75c0 1.1.9 2 2 2h1.45l-3.45-8.34v6.34z\"}}],\"permissions\":[\"appearance.update\"]},{\"label\":\"Settings\",\"id\":\"x5k484\",\"action\":\"\\/admin\\/settings\",\"type\":\"route\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M19.43 12.98c.04-.32.07-.64.07-.98 0-.34-.03-.66-.07-.98l2.11-1.65c.19-.15.24-.42.12-.64l-2-3.46c-.09-.16-.26-.25-.44-.25-.06 0-.12.01-.17.03l-2.49 1c-.52-.4-1.08-.73-1.69-.98l-.38-2.65C14.46 2.18 14.25 2 14 2h-4c-.25 0-.46.18-.49.42l-.38 2.65c-.61.25-1.17.59-1.69.98l-2.49-1c-.06-.02-.12-.03-.18-.03-.17 0-.34.09-.43.25l-2 3.46c-.13.22-.07.49.12.64l2.11 1.65c-.04.32-.07.65-.07.98 0 .33.03.66.07.98l-2.11 1.65c-.19.15-.24.42-.12.64l2 3.46c.09.16.26.25.44.25.06 0 .12-.01.17-.03l2.49-1c.52.4 1.08.73 1.69.98l.38 2.65c.03.24.24.42.49.42h4c.25 0 .46-.18.49-.42l.38-2.65c.61-.25 1.17-.59 1.69-.98l2.49 1c.06.02.12.03.18.03.17 0 .34-.09.43-.25l2-3.46c.12-.22.07-.49-.12-.64l-2.11-1.65zm-1.98-1.71c.04.31.05.52.05.73 0 .21-.02.43-.05.73l-.14 1.13.89.7 1.08.84-.7 1.21-1.27-.51-1.04-.42-.9.68c-.43.32-.84.56-1.25.73l-1.06.43-.16 1.13-.2 1.35h-1.4l-.19-1.35-.16-1.13-1.06-.43c-.43-.18-.83-.41-1.23-.71l-.91-.7-1.06.43-1.27.51-.7-1.21 1.08-.84.89-.7-.14-1.13c-.03-.31-.05-.54-.05-.74s.02-.43.05-.73l.14-1.13-.89-.7-1.08-.84.7-1.21 1.27.51 1.04.42.9-.68c.43-.32.84-.56 1.25-.73l1.06-.43.16-1.13.2-1.35h1.39l.19 1.35.16 1.13 1.06.43c.43.18.83.41 1.23.71l.91.7 1.06-.43 1.27-.51.7 1.21-1.07.85-.89.7.14 1.13zM12 8c-2.21 0-4 1.79-4 4s1.79 4 4 4 4-1.79 4-4-1.79-4-4-4zm0 6c-1.1 0-2-.9-2-2s.9-2 2-2 2 .9 2 2-.9 2-2 2z\"}}],\"permissions\":[\"settings.update\"]},{\"label\":\"Plans\",\"id\":\"7o42rt\",\"action\":\"\\/admin\\/plans\",\"type\":\"route\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M7 15h7v2H7zm0-4h10v2H7zm0-4h10v2H7zm12-4h-4.18C14.4 1.84 13.3 1 12 1c-1.3 0-2.4.84-2.82 2H5c-.14 0-.27.01-.4.04-.39.08-.74.28-1.01.55-.18.18-.33.4-.43.64-.1.23-.16.49-.16.77v14c0 .27.06.54.16.78s.25.45.43.64c.27.27.62.47 1.01.55.13.02.26.03.4.03h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2zm-7-.25c.41 0 .75.34.75.75s-.34.75-.75.75-.75-.34-.75-.75.34-.75.75-.75zM19 19H5V5h14v14z\"}}],\"permissions\":[\"plans.update\"]},{\"label\":\"Subscriptions\",\"action\":\"\\/admin\\/subscriptions\",\"type\":\"route\",\"id\":\"sdcb5a\",\"condition\":\"admin\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M4 6h16v2H4zm2-4h12v2H6zm14 8H4c-1.1 0-2 .9-2 2v8c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2v-8c0-1.1-.9-2-2-2zm0 10H4v-8h16v8zm-10-7.27v6.53L16 16z\"}}],\"permissions\":[\"subscriptions.update\"]},{\"label\":\"Users\",\"action\":\"\\/admin\\/users\",\"type\":\"route\",\"id\":\"fzfb45\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M12 6c1.1 0 2 .9 2 2s-.9 2-2 2-2-.9-2-2 .9-2 2-2m0 10c2.7 0 5.8 1.29 6 2H6c.23-.72 3.31-2 6-2m0-12C9.79 4 8 5.79 8 8s1.79 4 4 4 4-1.79 4-4-1.79-4-4-4zm0 10c-2.67 0-8 1.34-8 4v2h16v-2c0-2.66-5.33-4-8-4z\"}}],\"permissions\":[\"users.update\"]},{\"label\":\"Roles\",\"action\":\"\\/admin\\/roles\",\"type\":\"route\",\"id\":\"mwdkf0\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M9 13.75c-2.34 0-7 1.17-7 3.5V19h14v-1.75c0-2.33-4.66-3.5-7-3.5zM4.34 17c.84-.58 2.87-1.25 4.66-1.25s3.82.67 4.66 1.25H4.34zM9 12c1.93 0 3.5-1.57 3.5-3.5S10.93 5 9 5 5.5 6.57 5.5 8.5 7.07 12 9 12zm0-5c.83 0 1.5.67 1.5 1.5S9.83 10 9 10s-1.5-.67-1.5-1.5S8.17 7 9 7zm7.04 6.81c1.16.84 1.96 1.96 1.96 3.44V19h4v-1.75c0-2.02-3.5-3.17-5.96-3.44zM15 12c1.93 0 3.5-1.57 3.5-3.5S16.93 5 15 5c-.54 0-1.04.13-1.5.35.63.89 1 1.98 1 3.15s-.37 2.26-1 3.15c.46.22.96.35 1.5.35z\"}}],\"permissions\":[\"roles.update\"]},{\"id\":\"O3I9eJ\",\"label\":\"Upload\",\"action\":\"\\/admin\\/upload\",\"type\":\"route\",\"target\":\"_self\",\"permissions\":[\"music.create\"],\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M18 15v3H6v-3H4v3c0 1.1.9 2 2 2h12c1.1 0 2-.9 2-2v-3h-2zM7 9l1.41 1.41L11 7.83V16h2V7.83l2.59 2.58L17 9l-5-5-5 5z\"}}]},{\"id\":\"303113a\",\"type\":\"route\",\"label\":\"Channels\",\"action\":\"\\/admin\\/channels\",\"permissions\":[\"channels.update\"],\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M22 6h-5v8.18c-.31-.11-.65-.18-1-.18-1.66 0-3 1.34-3 3s1.34 3 3 3 3-1.34 3-3V8h3V6zm-7 0H3v2h12V6zm0 4H3v2h12v-2zm-4 4H3v2h8v-2z\"}}]},{\"id\":\"nVKg0I\",\"label\":\"Artists\",\"action\":\"\\/admin\\/artists\",\"permissions\":[\"artists.update\"],\"type\":\"route\",\"target\":\"_self\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M12 14c1.66 0 3-1.34 3-3V5c0-1.66-1.34-3-3-3S9 3.34 9 5v6c0 1.66 1.34 3 3 3z\"}},{\"tag\":\"path\",\"attr\":{\"d\":\"M17 11c0 2.76-2.24 5-5 5s-5-2.24-5-5H5c0 3.53 2.61 6.43 6 6.92V21h2v-3.08c3.39-.49 6-3.39 6-6.92h-2z\"}}]},{\"id\":\"Qq7wh9\",\"label\":\"Albums\",\"action\":\"\\/admin\\/albums\",\"permissions\":[\"albums.update\"],\"type\":\"route\",\"target\":\"_self\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm0 18c-4.41 0-8-3.59-8-8s3.59-8 8-8 8 3.59 8 8-3.59 8-8 8zm0-12.5c-2.49 0-4.5 2.01-4.5 4.5s2.01 4.5 4.5 4.5 4.5-2.01 4.5-4.5-2.01-4.5-4.5-4.5zm0 5.5c-.55 0-1-.45-1-1s.45-1 1-1 1 .45 1 1-.45 1-1 1z\"}}]},{\"id\":\"9_7Uip\",\"label\":\"Tracks\",\"permissions\":[\"tracks.update\"],\"action\":\"\\/admin\\/tracks\",\"type\":\"route\",\"target\":\"_self\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"m12 3 .01 10.55c-.59-.34-1.27-.55-2-.55C7.79 13 6 14.79 6 17s1.79 4 4.01 4S14 19.21 14 17V7h4V3h-6zm-1.99 16c-1.1 0-2-.9-2-2s.9-2 2-2 2 .9 2 2-.9 2-2 2z\"}}]},{\"id\":\"57IFvN\",\"label\":\"Genres\",\"permissions\":[\"genres.update\"],\"action\":\"\\/admin\\/genres\",\"type\":\"route\",\"target\":\"_self\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"m21.41 11.58-9-9C12.05 2.22 11.55 2 11 2H4c-1.1 0-2 .9-2 2v7c0 .55.22 1.05.59 1.42l9 9c.36.36.86.58 1.41.58s1.05-.22 1.41-.59l7-7c.37-.36.59-.86.59-1.41s-.23-1.06-.59-1.42zM13 20.01 4 11V4h7v-.01l9 9-7 7.02z\"}},{\"tag\":\"circle\",\"attr\":{\"cx\":\"6.5\",\"cy\":\"6.5\",\"r\":\"1.5\"}}]},{\"id\":\"5eGJwT\",\"label\":\"Lyrics\",\"permissions\":[\"lyrics.update\"],\"action\":\"\\/admin\\/lyrics\",\"type\":\"route\",\"target\":\"_self\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M2.5 4v3h5v12h3V7h5V4h-13zm19 5h-9v3h3v7h3v-7h3V9z\"}}]},{\"id\":\"zl5XVb\",\"label\":\"Playlists\",\"permissions\":[\"playlists.update\"],\"action\":\"\\/admin\\/playlists\",\"type\":\"route\",\"target\":\"_self\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M3 10h11v2H3zm0-4h11v2H3zm0 8h7v2H3zm13-1v8l6-4z\"}}]},{\"id\":\"UXtCU9\",\"label\":\"Requests\",\"action\":\"\\/admin\\/backstage-requests\",\"permissions\":[\"requests.update\"],\"type\":\"route\",\"target\":\"_self\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M14 2H6c-1.1 0-1.99.9-1.99 2L4 20c0 1.1.89 2 1.99 2H18c1.1 0 2-.9 2-2V8l-6-6zm4 18H6V4h7v5h5v11zm-9.18-6.95L7.4 14.46 10.94 18l5.66-5.66-1.41-1.41-4.24 4.24-2.13-2.12z\"}}]},{\"id\":\"31pLaw\",\"label\":\"Comments\",\"action\":\"\\/admin\\/comments\",\"permissions\":[\"comments.update\"],\"type\":\"route\",\"target\":\"_self\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M21.99 4c0-1.1-.89-2-1.99-2H4c-1.1 0-2 .9-2 2v12c0 1.1.9 2 2 2h14l4 4-.01-18zM20 4v13.17L18.83 16H4V4h16zM6 12h12v2H6zm0-3h12v2H6zm0-3h12v2H6z\"}}]},{\"label\":\"Pages\",\"action\":\"\\/admin\\/custom-pages\",\"type\":\"route\",\"id\":\"63bwv9\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M19 5v14H5V5h14m0-2H5c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2z\"}},{\"tag\":\"path\",\"attr\":{\"d\":\"M14 17H7v-2h7v2zm3-4H7v-2h10v2zm0-4H7V7h10v2z\"}}],\"permissions\":[\"custom_pages.update\"]},{\"label\":\"Tags\",\"action\":\"\\/admin\\/tags\",\"type\":\"route\",\"id\":\"2x0pzq\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M17.63 5.84C17.27 5.33 16.67 5 16 5L5 5.01C3.9 5.01 3 5.9 3 7v10c0 1.1.9 1.99 2 1.99L16 19c.67 0 1.27-.33 1.63-.84L22 12l-4.37-6.16zM16 17H5V7h11l3.55 5L16 17z\"}}],\"permissions\":[\"tags.update\"]},{\"label\":\"Files\",\"action\":\"\\/admin\\/files\",\"type\":\"route\",\"id\":\"vguvti\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M16 1H4c-1.1 0-2 .9-2 2v14h2V3h12V1zm-1 4H8c-1.1 0-1.99.9-1.99 2L6 21c0 1.1.89 2 1.99 2H19c1.1 0 2-.9 2-2V11l-6-6zM8 21V7h6v5h5v9H8z\"}}],\"permissions\":[\"files.update\"]},{\"label\":\"Localizations\",\"action\":\"\\/admin\\/localizations\",\"type\":\"route\",\"id\":\"w91yql\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"m12.87 15.07-2.54-2.51.03-.03c1.74-1.94 2.98-4.17 3.71-6.53H17V4h-7V2H8v2H1v1.99h11.17C11.5 7.92 10.44 9.75 9 11.35 8.07 10.32 7.3 9.19 6.69 8h-2c.73 1.63 1.73 3.17 2.98 4.56l-5.09 5.02L4 19l5-5 3.11 3.11.76-2.04zM18.5 10h-2L12 22h2l1.12-3h4.75L21 22h2l-4.5-12zm-2.62 7 1.62-4.33L19.12 17h-3.24z\"}}],\"permissions\":[\"localizations.update\"]},{\"label\":\"Ads\",\"action\":\"\\/admin\\/ads\",\"type\":\"route\",\"id\":\"ohj4qk\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M17 1H7c-1.1 0-2 .9-2 2v18c0 1.1.9 2 2 2h10c1.1 0 2-.9 2-2V3c0-1.1-.9-2-2-2zM7 4V3h10v1H7zm0 14V6h10v12H7zm0 3v-1h10v1H7z\"}},{\"tag\":\"path\",\"attr\":{\"d\":\"M16 7H8v2h8V7z\"}}],\"permissions\":[\"settings.update\"]}],\"positions\":[\"admin-sidebar\"]}]', '2023-05-09 00:33:57', '2023-05-09 00:33:57', 0),
(57, 'homepage.trending', 'true', '2023-05-09 00:33:57', '2023-05-09 00:33:57', 0),
(58, 'homepage.appearance', '{\"headerTitle\":\"Connect on BeMusic\",\"headerSubtitle\":\"Discover, stream, and share a constantly expanding mix of music from emerging and major artists around the world.\",\"headerImage\":\"images\\/landing\\/landing-header-bg.jpg\",\"headerOverlayColor1\":\"rgba(16,119,34,0.56)\",\"headerOverlayColor2\":\"rgba(42,148,71,1)\",\"headerImageOpacity\":\"0.2\",\"footerTitle\":\"Make music? Create audio?\",\"footerSubtitle\":\"Get on BeMusic to help you connect with fans and grow your audience.\",\"footerImage\":\"images\\/landing\\/landing-footer-bg.jpg\",\"actions\":{\"inputText\":\"Search for artists, albums and tracks...\",\"inputButton\":\"Search\",\"cta1\":{\"label\":\"Signup Now\",\"type\":\"route\",\"action\":\"\\/register\"},\"cta2\":{\"label\":\"Explore\",\"type\":\"route\",\"action\":\"\\/discover\"},\"cta3\":{\"label\":\"Sign up for free\",\"type\":\"route\",\"action\":\"\\/register\"}},\"primaryFeatures\":[],\"secondaryFeatures\":[{\"title\":\"Stream Anytime, Anywhere. From Any Device.\",\"subtitle\":\"Complete Freedom\",\"image\":\"images\\/landing\\/landing-feature-1.jpg\",\"description\":\"Stream music in the browser, on Phone, Tablet, Smart TVs, Consoles, Chromecast, Apple TV and more.\"},{\"title\":\"Get More From Bemusic With Pro\",\"subtitle\":\"BeMusic Pro\",\"image\":\"images\\/landing\\/landing-feature-2.jpg\",\"description\":\"Subscribe to BeMusic pro to hide ads, increase upload time and get access to other exclusive features.\"}],\"pricingTitle\":\"Simple pricing, for everyone.\",\"pricingSubtitle\":\"Choose the plan that works for you. No commitments, cancel anytime.\",\"channelIds\":[1]}', '2023-05-09 00:33:57', '2023-05-09 00:33:57', 0),
(59, 'artist_provider', 'spotify', '2023-05-09 00:54:14', '2023-05-09 00:54:14', 0),
(60, 'album_provider', 'spotify', '2023-05-09 00:54:14', '2023-05-09 00:54:14', 0),
(61, 'search_provider', 'spotify', '2023-05-09 00:54:14', '2023-05-09 00:54:14', 0);

-- --------------------------------------------------------

--
-- Table structure for table `similar_artists`
--

CREATE TABLE `similar_artists` (
  `id` int(10) UNSIGNED NOT NULL,
  `artist_id` int(10) UNSIGNED NOT NULL,
  `similar_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `similar_artists`
--

INSERT INTO `similar_artists` (`id`, `artist_id`, `similar_id`) VALUES
(7, 260, 567),
(19, 260, 568),
(13, 260, 569),
(10, 260, 570),
(9, 260, 571),
(4, 260, 572),
(8, 260, 573),
(16, 260, 574),
(17, 260, 575),
(20, 260, 576),
(1, 260, 577),
(11, 260, 578),
(3, 260, 579),
(14, 260, 580),
(15, 260, 581),
(12, 260, 582),
(6, 260, 583),
(18, 260, 584),
(2, 260, 585),
(5, 260, 586);

-- --------------------------------------------------------

--
-- Table structure for table `sitemap_ids`
--

CREATE TABLE `sitemap_ids` (
  `id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_profiles`
--

CREATE TABLE `social_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `service_name` varchar(20) NOT NULL,
  `user_service_id` varchar(191) NOT NULL,
  `username` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `access_token` varchar(250) DEFAULT NULL,
  `refresh_token` varchar(250) DEFAULT NULL,
  `access_expires_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `price_id` varchar(191) NOT NULL,
  `gateway_name` varchar(191) NOT NULL DEFAULT 'none',
  `gateway_id` varchar(191) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `description` text DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `renews_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taggables`
--

CREATE TABLE `taggables` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `taggable_id` int(10) UNSIGNED NOT NULL,
  `taggable_type` varchar(80) NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `display_name` varchar(191) DEFAULT NULL,
  `type` varchar(30) NOT NULL DEFAULT 'custom',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tracks`
--

CREATE TABLE `tracks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `album_name` varchar(191) DEFAULT NULL,
  `album_id` int(10) UNSIGNED DEFAULT NULL,
  `number` tinyint(3) UNSIGNED NOT NULL,
  `duration` int(10) UNSIGNED DEFAULT NULL,
  `youtube_id` varchar(191) DEFAULT NULL,
  `spotify_popularity` tinyint(3) UNSIGNED DEFAULT NULL,
  `owner_id` bigint(20) UNSIGNED DEFAULT NULL,
  `temp_id` varchar(8) DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL,
  `plays` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `auto_update` tinyint(1) NOT NULL DEFAULT 1,
  `spotify_id` char(22) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tracks`
--

INSERT INTO `tracks` (`id`, `name`, `album_name`, `album_id`, `number`, `duration`, `youtube_id`, `spotify_popularity`, `owner_id`, `temp_id`, `url`, `plays`, `auto_update`, `spotify_id`, `created_at`, `updated_at`, `description`, `image`) VALUES
(1, 'Here With Me', 'Here With Me', 2, 1, 242484, NULL, 94, NULL, NULL, NULL, 0, 1, '78Sw5GDo6AlGwTwanjXbGh', NULL, NULL, NULL, NULL),
(2, 'Here Comes The Sun - Remastered 2009', 'Abbey Road (Remastered)', 21, 7, 185733, NULL, 84, NULL, NULL, NULL, 0, 1, '6dGnYIeXmHdcikdzNNDMm2', NULL, NULL, NULL, NULL),
(3, 'Hero', 'Hero', 8, 1, 160714, NULL, 76, NULL, NULL, NULL, 0, 1, '4Wu62DoQg1ECGlDKDfo30R', NULL, NULL, NULL, NULL),
(4, 'Her Way', 'PARTYNEXTDOOR TWO', 22, 4, 216630, NULL, 79, NULL, NULL, NULL, 0, 1, '3JEJwjqLkg2Jbau5922CAb', NULL, NULL, NULL, NULL),
(5, 'Her', 'Traumazine', 23, 5, 137107, NULL, 71, NULL, NULL, NULL, 0, 1, '5hHvFrMnwic82WwRLr4WY0', NULL, NULL, NULL, NULL),
(6, 'Her Way (Sped Up)', 'Her Way (Sped Up)', 10, 1, 182164, NULL, 75, NULL, NULL, NULL, 0, 1, '0T7dLau2Ccr9CbeXtOB4vU', NULL, NULL, NULL, NULL),
(7, 'Here Without You', 'Away From The Sun', 24, 6, 238733, NULL, 77, NULL, NULL, NULL, 0, 1, '3NLrRZoMF0Lx6zTlYqeIo4', NULL, NULL, NULL, NULL),
(8, 'Hermosura de Mujer', 'DESVELADO', 25, 14, 224378, NULL, 66, NULL, NULL, NULL, 0, 1, '19vV1i1AluuK7mQcJmM5GZ', NULL, NULL, NULL, NULL),
(9, 'Here With Me - Sped Up', 'Here With Me (Sped Up)', 16, 1, 162470, NULL, 62, NULL, NULL, NULL, 0, 1, '29zR6NE1LpS8LV3EC45OiI', NULL, NULL, NULL, NULL),
(10, 'Hero', 'Awake', 26, 1, 186813, NULL, 74, NULL, NULL, NULL, 0, 1, '4CbKVDZkYKdv69I4bCaKUq', NULL, NULL, NULL, NULL),
(11, 'Here', 'Know-It-All', 27, 2, 199453, NULL, 71, NULL, NULL, NULL, 0, 1, '5zUQZjVB6bfewBXWqsP9PY', NULL, NULL, NULL, NULL),
(12, 'Here I Come', 'Doors (Original Game Soundtrack), Vol. 1', 20, 2, 112000, NULL, 64, NULL, NULL, NULL, 0, 1, '1p5gzYf7zbCuB639GrPhAx', NULL, NULL, NULL, NULL),
(13, 'Here With Me', 'Here With Me', 28, 1, 156346, NULL, 75, NULL, NULL, NULL, 0, 1, '5icOoE6VgqFKohjWWNp0Ac', NULL, NULL, NULL, NULL),
(14, 'Hermit the Frog', 'The Family Jewels', 29, 10, 213560, NULL, 61, NULL, NULL, NULL, 0, 1, '41P2Wi4vVI8hXxz5St5a4J', NULL, NULL, NULL, NULL),
(15, 'Here I Go Again - 2018 Remaster', 'Whitesnake (2018 Remaster)', 30, 4, 275395, NULL, 66, NULL, NULL, NULL, 0, 1, '1qOU8KzFifXE9YrgjVwYvc', NULL, NULL, NULL, NULL),
(16, 'Here For A Good Time', 'Here For A Good Time', 31, 5, 180266, NULL, 66, NULL, NULL, NULL, 0, 1, '11OFYsUK9EVJsQ6nutH32M', NULL, NULL, NULL, NULL),
(17, 'Her', 'Goblin', 32, 8, 211106, NULL, 54, NULL, NULL, NULL, 0, 1, '0XDfOOlscDrr50Q0PERrVd', NULL, NULL, NULL, NULL),
(18, 'Heroes - 2017 Remaster', '\"Heroes\" (2017 Remaster)', 33, 3, 371413, NULL, 76, NULL, NULL, NULL, 0, 1, '7Jh1bpe76CNTCgdgAdBw4Z', NULL, NULL, NULL, NULL),
(19, 'Hero', 'Music Box', 34, 2, 257733, NULL, 71, NULL, NULL, NULL, 0, 1, '4FCb4CUbFCMNRkI6lYc1zI', NULL, NULL, NULL, NULL),
(20, 'Herinneringen', 'Herinneringen', 35, 1, 172357, NULL, 73, NULL, NULL, NULL, 0, 1, '0CMYUXTTTmI6Lwc0opH2XG', NULL, NULL, NULL, NULL),
(21, 'Hell N Back', 'Hell N Back', 51, 1, 213573, NULL, 84, NULL, NULL, NULL, 0, 1, '3NRql0A1Ef4RCvT473iqgD', NULL, NULL, NULL, NULL),
(22, 'Heartless', '808s & Heartbreak', 52, 3, 211000, NULL, 86, NULL, NULL, NULL, 0, 1, '4EWCNWgDS8707fNSZ1oaA5', NULL, NULL, NULL, NULL),
(23, 'Hex', 'Hex', 36, 1, 122221, NULL, 83, NULL, NULL, NULL, 0, 1, '7D7e6hm2LiNd6nLuJF6K9Q', NULL, NULL, NULL, NULL),
(24, 'Heart To Heart', 'Here Comes The Cowboy', 5, 8, 211140, NULL, 87, NULL, NULL, NULL, 0, 1, '7EAMXbLcL0qXmciM5SwMh2', NULL, NULL, NULL, NULL),
(25, 'Heat Waves', 'Dreamland', 53, 14, 238805, NULL, 89, NULL, NULL, NULL, 0, 1, '3USxtqRwSYz57Ewm6wWRMp', NULL, NULL, NULL, NULL),
(26, 'Heading South', 'Heading South', 43, 1, 171692, NULL, 81, NULL, NULL, NULL, 0, 1, '2Dct3GykKZ58hpWRFfe2Qd', NULL, NULL, NULL, NULL),
(27, 'Hey, Mickey!', 'Hey, Mickey!', 54, 1, 115555, NULL, 83, NULL, NULL, NULL, 0, 1, '3RKjTYlQrtLXCq5ncswBPp', NULL, NULL, NULL, NULL),
(28, 'Heartless (feat. Morgan Wallen)', 'Diplo Presents Thomas Wesley: Chapter 1 - Snake Oil', 55, 3, 169226, NULL, 81, NULL, NULL, NULL, 0, 1, '3FU6urUVsgXa6RBuV2PdRk', NULL, NULL, NULL, NULL),
(29, 'Heathens', 'Heathens', 56, 1, 195920, NULL, 82, NULL, NULL, NULL, 0, 1, '6i0V12jOa3mr6uu4WYhUBr', NULL, NULL, NULL, NULL),
(30, 'Heather', 'Kid Krow', 57, 10, 198040, NULL, 87, NULL, NULL, NULL, 0, 1, '4xqrdfXkTW4T0RauPLv3WA', NULL, NULL, NULL, NULL),
(31, 'Heartless', 'After Hours', 58, 7, 198266, NULL, 86, NULL, NULL, NULL, 0, 1, '6bnF93Rx87YqUBLSgjiMU8', NULL, NULL, NULL, NULL),
(32, 'Hey Ya!', 'Speakerboxxx/The Love Below', 59, 9, 235213, NULL, 83, NULL, NULL, NULL, 0, 1, '2PpruBYCo4H7WOBJ7Q2EwM', NULL, NULL, NULL, NULL),
(33, 'Heaven', 'Heaven', 60, 1, 186043, NULL, 87, NULL, NULL, NULL, 0, 1, '1yHVHoz6Ny29gbbWJYVnFt', NULL, NULL, NULL, NULL),
(34, 'Heart Attack', 'Demi', 61, 1, 210840, NULL, 79, NULL, NULL, NULL, 0, 1, '1V6gIisPpYqgFeWbMLI0bA', NULL, NULL, NULL, NULL),
(35, 'Hell N Back - Sped Up', 'Hell N Back (Sped Up)', 62, 2, 164446, NULL, 64, NULL, NULL, NULL, 0, 1, '2kjdWC3cn0xYJ3Hg8Wo6DR', NULL, NULL, NULL, NULL),
(36, 'Hello', '25', 63, 1, 295502, NULL, 75, NULL, NULL, NULL, 0, 1, '62PaSfnXSMyLshYJrlTuL3', NULL, NULL, NULL, NULL),
(37, 'Hey Mor', 'OzuTochi', 64, 9, 196600, NULL, 91, NULL, NULL, NULL, 0, 1, '1zsPaEkglFvxjAhrM8yhpr', NULL, NULL, NULL, NULL),
(41, 'HOPE', 'HOPE', 73, 1, 264473, NULL, 80, NULL, NULL, NULL, 0, 1, '12cZWGf5ZgLcKubEW9mx5q', NULL, NULL, NULL, NULL),
(42, 'HDMI', 'Rotten', 87, 2, 139440, NULL, 77, NULL, NULL, NULL, 0, 1, '7I4ibsZgwuf46g0xHuTC8s', NULL, NULL, NULL, NULL),
(43, 'Hands up!', 'Hands up!', 88, 1, 134544, NULL, 74, NULL, NULL, NULL, 0, 1, '04gSLX5nUhkKiMe1geeqnA', NULL, NULL, NULL, NULL),
(44, 'H.', 'Ænima', 89, 3, 367133, NULL, 60, NULL, NULL, NULL, 0, 1, '5fYzuUxtcaJaRRaxMoM2DT', NULL, NULL, NULL, NULL),
(45, 'HOJE EU VOU COMER NOVINHA 02', 'HOJE EU VOU COMER NOVINHA', 90, 2, 107128, NULL, 76, NULL, NULL, NULL, 0, 1, '1vKRuWNMzYKX2MxdQawM0N', NULL, NULL, NULL, NULL),
(46, 'HUMBLE.', 'DAMN.', 91, 8, 177000, NULL, 86, NULL, NULL, NULL, 0, 1, '7KXjTSCq5nL1LoYtL7XAwS', NULL, NULL, NULL, NULL),
(47, 'H20', 'H20', 92, 1, 262524, NULL, 58, NULL, NULL, NULL, 0, 1, '2ydFzN4SEWprMz9zEPdopz', NULL, NULL, NULL, NULL),
(48, 'HONEST', 'DIE FOR MY BITCH', 93, 2, 172672, NULL, 82, NULL, NULL, NULL, 0, 1, '58k32my5lKofeZRtIvBDg9', NULL, NULL, NULL, NULL),
(49, 'HTAFL', 'Lost Files', 94, 1, 175621, NULL, 57, NULL, NULL, NULL, 0, 1, '0ezt3b76CRzJcmCMmCVmbw', NULL, NULL, NULL, NULL),
(50, 'HAHA', 'HAHA', 95, 1, 160000, NULL, 62, NULL, NULL, NULL, 0, 1, '18Gcl5bxdd8bpBhWOj1rCR', NULL, NULL, NULL, NULL),
(51, 'HAPPY', 'HOPE', 71, 5, 242691, NULL, 83, NULL, NULL, NULL, 0, 1, '3ZEno9fORwMA1HPecdLi0R', NULL, NULL, NULL, NULL),
(61, 'Kill Bill', 'SOS', 127, 2, 153946, NULL, 94, NULL, NULL, NULL, 0, 1, '1Qrg8KqiBpW07V7PNxwwwL', NULL, NULL, NULL, NULL),
(62, 'K.', 'Cigarettes After Sex', 128, 1, 319560, NULL, 78, NULL, NULL, NULL, 0, 1, '7LX4aXtvImhdgUHQBlo8Kp', NULL, NULL, NULL, NULL),
(63, 'Kill Bill (feat. Doja Cat)', 'Kill Bill (feat. Doja Cat)', 111, 1, 175836, NULL, 86, NULL, NULL, NULL, 0, 1, '0CrcwVLUe8wzLUIXgjXVZJ', NULL, NULL, NULL, NULL),
(64, 'KOD', 'KOD', 110, 2, 191436, NULL, 69, NULL, NULL, NULL, 0, 1, '7yotKA30dwTKNEGomV9ZsI', NULL, NULL, NULL, NULL),
(65, 'Karma', 'Midnights', 129, 11, 204852, NULL, 86, NULL, NULL, NULL, 0, 1, '7KokYm8cMIXCsGVmUvKtqf', NULL, NULL, NULL, NULL),
(66, 'K. - Sped Up', 'K. (Sped Up)', 130, 1, 251692, NULL, 57, NULL, NULL, NULL, 0, 1, '4LnDssNxzjPzNFBqJPlVpW', NULL, NULL, NULL, NULL),
(67, 'Knife Talk (with 21 Savage ft. Project Pat)', 'Certified Lover Boy', 131, 13, 242965, NULL, 83, NULL, NULL, NULL, 0, 1, '2BcMwX1MPV6ZHP4tUT9uq6', NULL, NULL, NULL, NULL),
(68, 'Kill Bill', 'SOS', 132, 2, 153946, NULL, 92, NULL, NULL, NULL, 0, 1, '3OHfY25tqY28d16oZczHc8', NULL, NULL, NULL, NULL),
(69, 'KING', 'KING', 133, 1, 134750, NULL, 53, NULL, NULL, NULL, 0, 1, '1y70lFnhDN7rPmrl15BtPd', NULL, NULL, NULL, NULL),
(70, 'Kryptonite', 'The Better Life', 134, 1, 233933, NULL, 81, NULL, NULL, NULL, 0, 1, '6ZOBP3NvffbU4SZcrnt1k6', NULL, NULL, NULL, NULL),
(71, 'KICK BACK', 'KICK BACK', 135, 1, 193495, NULL, 84, NULL, NULL, NULL, 0, 1, '3khEEPRyBeOUabbmOPJzAG', NULL, NULL, NULL, NULL),
(72, 'King For A Day', 'Collide With The Sky', 136, 4, 236293, NULL, 79, NULL, NULL, NULL, 0, 1, '1IT0WQk5J8NsaeII8ktdlZ', NULL, NULL, NULL, NULL),
(73, 'K.', 'K.', 108, 1, 319560, NULL, 50, NULL, NULL, NULL, 0, 1, '36Zs84njjWZD3TGYE77WPC', NULL, NULL, NULL, NULL),
(74, 'Kill Yourself (Part III)', 'My Liver Will Handle What My Heart Can\'t', 137, 12, 145078, NULL, 80, NULL, NULL, NULL, 0, 1, '0kEZlJh4mK1QRfb3CT5LPk', NULL, NULL, NULL, NULL),
(75, 'KAWAII', 'GOLDEN FLOWER', 138, 3, 127338, NULL, 63, NULL, NULL, NULL, 0, 1, '46AX8pgh331m7C7q2t9Jra', NULL, NULL, NULL, NULL),
(76, 'Keith Whitley', 'One Thing At A Time', 139, 14, 187518, NULL, 75, NULL, NULL, NULL, 0, 1, '1vcJdUJDM2NVXBsGncmLyh', NULL, NULL, NULL, NULL),
(77, 'KNOCK', 'Over The Moon', 140, 2, 173080, NULL, 75, NULL, NULL, NULL, 0, 1, '6KiEF5zqzHiFjzdm8gChz7', NULL, NULL, NULL, NULL),
(78, 'Kilby Girl', 'When We Were Friends', 141, 4, 282205, NULL, 78, NULL, NULL, NULL, 0, 1, '1170VohRSx6GwE6QDCHPPH', NULL, NULL, NULL, NULL),
(79, 'KAWAII - sped up', 'KAWAII', 142, 1, 110784, NULL, 59, NULL, NULL, NULL, 0, 1, '7AEHIOlDUm73JpPnuFcryy', NULL, NULL, NULL, NULL),
(80, 'Kickstart My Heart', 'Dr. Feelgood (Deluxe Version)', 143, 5, 284026, NULL, 80, NULL, NULL, NULL, 0, 1, '6imjJij6aCM0IbbODUzJQn', NULL, NULL, NULL, NULL),
(81, 'Karma', 'Last Day Of Summer', 162, 9, 188906, NULL, 75, NULL, NULL, NULL, 0, 1, '2Fyjjpg03fn7n5cj0Qm380', NULL, NULL, NULL, NULL),
(82, 'Lobby Music (Original Soundtrack)', 'Lobby Music (Original Soundtrack)', 150, 1, 144008, NULL, 54, NULL, NULL, NULL, 0, 1, '7IEdlE4ZwzPDxnoWFv10aj', NULL, NULL, NULL, NULL),
(83, 'See You Again (feat. Kali Uchis)', 'Flower Boy', 163, 4, 180386, NULL, 93, NULL, NULL, NULL, 0, 1, '7KA4W4McWYRpgf0fWsJZWB', NULL, NULL, NULL, NULL),
(84, 'TQG', 'TQG', 145, 1, 198360, NULL, 84, NULL, NULL, NULL, 0, 1, '2oMjKuKUEJFuLiVmTq7Vjx', NULL, NULL, NULL, NULL),
(85, 'Kant Nobody (feat. DMX)', 'Kant Nobody', 164, 1, 180359, NULL, 71, NULL, NULL, NULL, 0, 1, '2ehLKvUsJq3EUAPpvT5GOM', NULL, NULL, NULL, NULL),
(86, 'Karma', 'Midnights (3am Edition)', 165, 11, 204852, NULL, 56, NULL, NULL, NULL, 0, 1, '5GjkD2Xujig8TPty57wfsS', NULL, NULL, NULL, NULL),
(87, 'KÁRMIKA', 'MAÑANA SERÁ BONITO', 120, 11, 236586, NULL, 80, NULL, NULL, NULL, 0, 1, '3mFNc5EQn30irR983Wg9OD', NULL, NULL, NULL, NULL),
(88, 'KAPITOL DENIM', 'FLAWLESS LIKE ME', 166, 3, 117000, NULL, 70, NULL, NULL, NULL, 0, 1, '2P1oNlBGmFudn3ZyUrj7hJ', NULL, NULL, NULL, NULL),
(89, 'Karma Police', 'OK Computer', 167, 6, 264066, NULL, 77, NULL, NULL, NULL, 0, 1, '63OQupATfueTdZMWTxW03A', NULL, NULL, NULL, NULL),
(90, 'Kacey Talk', 'Top', 168, 6, 151248, NULL, 69, NULL, NULL, NULL, 0, 1, '1SF8piqsZWn86DajVKih8F', NULL, NULL, NULL, NULL),
(91, 'Karma', 'Neotheater', 169, 8, 245269, NULL, 62, NULL, NULL, NULL, 0, 1, '3VygfAvvgVaJUeaBUSzlZu', NULL, NULL, NULL, NULL),
(92, 'TQG', 'MAÑANA SERÁ BONITO', 120, 6, 197933, NULL, 97, NULL, NULL, NULL, 0, 1, '0DWdj2oZMBFSzRsi2Cvfzf', NULL, NULL, NULL, NULL),
(93, 'Kant rëlax', '2 Alivë (Geëk Pack)', 170, 22, 159893, NULL, 67, NULL, NULL, NULL, 0, 1, '48x1ElzLnuwi72ZpEbbt7L', NULL, NULL, NULL, NULL),
(94, 'Karma Chameleon - Remastered 2002', 'Colour By Numbers', 171, 1, 252773, NULL, 76, NULL, NULL, NULL, 0, 1, '2wSAWEYUHkt92X4SBAPqZE', NULL, NULL, NULL, NULL),
(95, 'Roar', 'PRISM (Deluxe)', 172, 1, 223546, NULL, 74, NULL, NULL, NULL, 0, 1, '6F5c58TMEs1byxUstkzVeM', NULL, NULL, NULL, NULL),
(96, 'Kaikai Kitan', 'Kaikai Kitan / Ao No Waltz', 173, 1, 221426, NULL, 75, NULL, NULL, NULL, 0, 1, '6y4GYuZszeXNOXuBFsJlos', NULL, NULL, NULL, NULL),
(97, 'MAMIII', 'MAMIII', 174, 1, 226088, NULL, 81, NULL, NULL, NULL, 0, 1, '1ri9ZUkBJVFUdgwzCnfcYs', NULL, NULL, NULL, NULL),
(101, 'Karanlığın', 'Karanlığın', 183, 1, 215940, NULL, 50, NULL, NULL, NULL, 0, 1, '2iPaXFJC1ggCQQ9s28uwBb', NULL, NULL, NULL, NULL),
(102, 'Fallin Apart', 'Four You', 181, 3, 198000, NULL, 70, NULL, NULL, NULL, 0, 1, '1bpzDsnW35B4QSRWXmatcc', NULL, NULL, NULL, NULL),
(103, '52 Bars', 'Four You', 181, 1, 214024, NULL, 76, NULL, NULL, NULL, 0, 1, '6rFckZb1cuJYzsZiGHgqks', NULL, NULL, NULL, NULL),
(104, 'Take It Easy', 'Four You', 181, 2, 210361, NULL, 76, NULL, NULL, NULL, 0, 1, '5si4xdFplkXAydKfFe1xXa', NULL, NULL, NULL, NULL),
(105, 'White Brown Black', 'White Brown Black', 189, 1, 175999, NULL, 76, NULL, NULL, NULL, 0, 1, '3nKQrVVlwbAQSnFbgZWdN0', NULL, NULL, NULL, NULL),
(106, 'Karan', 'Veragua', 201, 14, 120282, NULL, 33, NULL, NULL, NULL, 0, 1, '5r7ENAy7aBf1ScvocjTeUF', NULL, NULL, NULL, NULL),
(107, 'Karan', 'Amoro', 202, 3, 383918, NULL, 15, NULL, NULL, NULL, 0, 1, '0uAWUqpEuMo7b0ToNlSsQ4', NULL, NULL, NULL, NULL),
(108, 'Karanlıklar İçindeyim', 'Karanlıklar İçindeyim', 193, 1, 231044, NULL, 42, NULL, NULL, NULL, 0, 1, '44x9JZZXFPeshBkhUkJwRl', NULL, NULL, NULL, NULL),
(109, 'Karan', 'Escape', 203, 3, 196981, NULL, 2, NULL, NULL, NULL, 0, 1, '16GZ6kLMlN03uN2PZ1rmBN', NULL, NULL, NULL, NULL),
(110, 'On Top', 'On Top', 194, 1, 183428, NULL, 76, NULL, NULL, NULL, 0, 1, '4SJMuaIYcBS8ke96lDYOsw', NULL, NULL, NULL, NULL),
(111, 'Karan', 'Mousso Lou', 204, 9, 219792, NULL, 0, NULL, NULL, NULL, 0, 1, '0U4mdvCsEQyYIpmkCo6Pu4', NULL, NULL, NULL, NULL),
(112, 'Karantèn avew - Radio Edit', 'Karantèn avew', 195, 1, 218265, NULL, 40, NULL, NULL, NULL, 0, 1, '0tkuDjXiN1E9Y9LO6NkTDj', NULL, NULL, NULL, NULL),
(113, 'Karãn', 'Karãn', 187, 1, 695571, NULL, 0, NULL, NULL, NULL, 0, 1, '2brC6fxU79NRO5HkNKSUHB', NULL, NULL, NULL, NULL),
(114, 'Gangsta', 'Way Ahead', 184, 6, 190153, NULL, 72, NULL, NULL, NULL, 0, 1, '3Vmo13MxVRKBszmfK61ONH', NULL, NULL, NULL, NULL),
(115, 'Karan', '100', 205, 15, 290232, NULL, 1, NULL, NULL, NULL, 0, 1, '0YLwrdxnnEhv8OTONA5o6y', NULL, NULL, NULL, NULL),
(116, 'P.O.V (Point of View)', 'P.O.V (Point of View)', 182, 1, 185869, NULL, 74, NULL, NULL, NULL, 0, 1, '6h5cT4n75VWK95VDW07EFw', NULL, NULL, NULL, NULL),
(117, 'Karan', 'Son cœur est monté', 206, 7, 299735, NULL, 0, NULL, NULL, NULL, 0, 1, '33FrwrgBcFhBD9A4dWplKT', NULL, NULL, NULL, NULL),
(118, 'Yeah Naah', 'Four You', 181, 4, 182375, NULL, 71, NULL, NULL, NULL, 0, 1, '0uHpY2weZMUCUTqlf8OD74', NULL, NULL, NULL, NULL),
(119, 'Karan', 'Kora Talking', 207, 1, 244379, NULL, 0, NULL, NULL, NULL, 0, 1, '4I1U60FA15R0ALKhcXh6TH', NULL, NULL, NULL, NULL),
(120, 'Players', '3:00 AM Sessions', 208, 1, 171272, NULL, 73, NULL, NULL, NULL, 0, 1, '0MbOLfDcGk8ROHJYXJHu5c', NULL, NULL, NULL, NULL),
(121, 'MIENTRAS ME CURO DEL CORA', 'MAÑANA SERÁ BONITO', 120, 1, 164386, NULL, 90, NULL, NULL, NULL, 0, 1, '6otePxalBK8AVa20xhZYVQ', NULL, NULL, NULL, NULL),
(122, 'Karma - Sped Up', 'Last Day Of Summer (Sped Up)', 222, 9, 161540, NULL, 65, NULL, NULL, NULL, 0, 1, '0MwFC8WoPCjq2H3UES2aos', NULL, NULL, NULL, NULL),
(123, 'Karma', 'Karma', 212, 1, 176075, NULL, 60, NULL, NULL, NULL, 0, 1, '3qmm9AdG0TnShv0drgXNIQ', NULL, NULL, NULL, NULL),
(124, 'Karenia', 'Karenia', 213, 1, 61874, NULL, 59, NULL, NULL, NULL, 0, 1, '1KYCrmo3mZJig8FnnxfN8I', NULL, NULL, NULL, NULL),
(125, 'Karma', 'Midnights (3am Edition)', 223, 11, 204852, NULL, 78, NULL, NULL, NULL, 0, 1, '5oqDgw5VGBln5dSIOPWyBq', NULL, NULL, NULL, NULL),
(126, 'Karma', 'TV (Deluxe Edition)', 224, 16, 234715, NULL, 48, NULL, NULL, NULL, 0, 1, '1IB075Bmg6lIuDcD8IRJwC', NULL, NULL, NULL, NULL),
(127, 'PROVENZA', 'MAÑANA SERÁ BONITO', 120, 12, 207626, NULL, 84, NULL, NULL, NULL, 0, 1, '3HqcNJdZ2seoGxhn0wVNDK', NULL, NULL, NULL, NULL),
(128, 'BICHOTA', 'BICHOTA', 225, 1, 178946, NULL, 75, NULL, NULL, NULL, 0, 1, '7vrJn5hDSXRmdXoR30KgF1', NULL, NULL, NULL, NULL),
(129, 'X SI VOLVEMOS', 'MAÑANA SERÁ BONITO', 120, 2, 200120, NULL, 85, NULL, NULL, NULL, 0, 1, '4NoOME4Dhf4xgxbHDT7VGe', NULL, NULL, NULL, NULL),
(130, 'PROVENZA', 'PROVENZA', 160, 1, 210200, NULL, 84, NULL, NULL, NULL, 0, 1, '7dSZ6zGTQx66c2GF91xCrb', NULL, NULL, NULL, NULL),
(141, 'Karaoke', 'Thank Me Later', 255, 2, 227960, NULL, 50, NULL, NULL, NULL, 0, 1, '5bDEA48Dxyxoc3K4Dt7yRE', NULL, NULL, NULL, NULL),
(142, 'Karaoke (feat. Lizzo)', '3rd Ward Bounce', 256, 1, 185890, NULL, 52, NULL, NULL, NULL, 0, 1, '4nefFqiukTvjgt8hkv73PP', NULL, NULL, NULL, NULL),
(143, 'カラカラカラのカラ', 'きくおミク5', 257, 2, 481667, NULL, 54, NULL, NULL, NULL, 0, 1, '2LEe6g4jPbwHNDM3dJCyCF', NULL, NULL, NULL, NULL),
(144, 'KARATE', 'METAL RESISTANCE', 258, 2, 263173, NULL, 53, NULL, NULL, NULL, 0, 1, '2A4wfplwsIXUUD3UVirWDd', NULL, NULL, NULL, NULL),
(145, 'Karakuri Pierrot', 'Exit Tunes Presents 10 Dai Utattemita Live! Best 2', 259, 4, 249600, NULL, 41, NULL, NULL, NULL, 0, 1, '4HhBcYAKUh31STh1qroLBR', NULL, NULL, NULL, NULL),
(146, 'Karate Buddy (feat. BabyTron)', 'The Art of Spice Talk', 260, 13, 134533, NULL, 48, NULL, NULL, NULL, 0, 1, '0mzqc06Ai59732EjchaQWw', NULL, NULL, NULL, NULL),
(147, 'You\'re The Best', 'The Karate Kid: The Original Motion Picture Soundtrack', 216, 10, 179666, NULL, 63, NULL, NULL, NULL, 0, 1, '4zXa17K83Pp6N2yXdVc2sv', NULL, NULL, NULL, NULL),
(148, 'Karate Chop (Remix) (feat. Lil Wayne)', 'Honest', 261, 18, 276373, NULL, 47, NULL, NULL, NULL, 0, 1, '2Ih0U9yUuY0oU2In3h21If', NULL, NULL, NULL, NULL),
(149, 'Karate Frees', 'Whateva, Vol. 4', 262, 4, 161739, NULL, 49, NULL, NULL, NULL, 0, 1, '5ncc4PdO6UuPH4ViFKrK29', NULL, NULL, NULL, NULL),
(150, 'Karate', 'Declare War', 263, 3, 97000, NULL, 44, NULL, NULL, NULL, 0, 1, '29xDb9BJJfWBO8heRb5tqG', NULL, NULL, NULL, NULL),
(151, 'Karaoke', 'Thundering Hopes', 264, 5, 200000, NULL, 54, NULL, NULL, NULL, 0, 1, '2B2g136lFHdVblX24YhpAs', NULL, NULL, NULL, NULL),
(152, 'からくりピエロ -初音ミク「マジカルミライ 2014」Live-', '初音ミク「マジカルミライ 2014」 [Live]', 265, 6, 195048, NULL, 49, NULL, NULL, NULL, 0, 1, '0f6Z1Kbo3PzA1sTtoaBbqK', NULL, NULL, NULL, NULL),
(153, 'Karate', 'Karate', 245, 1, 210000, NULL, 52, NULL, NULL, NULL, 0, 1, '6dMHdkQmWuDuDltWjBLJBd', NULL, NULL, NULL, NULL),
(154, 'Karaoke', 'Emotional Creature', 266, 11, 197466, NULL, 43, NULL, NULL, NULL, 0, 1, '5ffTKmxQTh98b32m1brgeF', NULL, NULL, NULL, NULL),
(155, 'Karalis', 'Foremmi', 267, 3, 178920, NULL, 46, NULL, NULL, NULL, 0, 1, '3n4VPCzfVLBio8f7xe9nKn', NULL, NULL, NULL, NULL),
(156, 'Karate', 'Tenacious D', 268, 17, 65413, NULL, 44, NULL, NULL, NULL, 0, 1, '1pwiK1qCAXDcYvaY0jIh6k', NULL, NULL, NULL, NULL),
(157, 'KARATE CHOP', 'CHOP BOX EP', 269, 1, 189137, NULL, 40, NULL, NULL, NULL, 0, 1, '7k2CFLN4PmH655Bsf6841S', NULL, NULL, NULL, NULL),
(158, 'No Shelter', 'The Karate Kid: The Original Motion Picture Soundtrack', 216, 3, 238133, NULL, 37, NULL, NULL, NULL, 0, 1, '04rLT4KBoCtGpJSTp1sPjR', NULL, NULL, NULL, NULL),
(204, 'Moosetape (Intro)', 'Moosetape', 336, 1, 92000, NULL, NULL, NULL, NULL, NULL, 0, 1, '2VQ4UC9dNVPDLge8lr9USm', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(205, 'Bitch I\'m Back', 'Moosetape', 336, 2, 230400, NULL, NULL, NULL, NULL, NULL, 0, 1, '2mKvEIvd912eg3FZ8WamMS', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(206, 'Burberry', 'Moosetape', 336, 3, 203443, NULL, NULL, NULL, NULL, NULL, 0, 1, '3mVpbUvLXvzPH2zL0p7Q2U', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(207, 'Racks and Rounds (feat. Sikander Kahlon)', 'Moosetape', 336, 4, 225000, NULL, NULL, NULL, NULL, NULL, 0, 1, '4RbRZYPR7Dwg8WRNn4UA8m', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(208, 'US (feat. Raja Kumari)', 'Moosetape', 336, 5, 230068, NULL, NULL, NULL, NULL, NULL, 0, 1, '36cqlmc53NqlEUqPJdgUOx', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(209, 'Moosedrilla (feat. DIVINE)', 'Moosetape', 336, 6, 232173, NULL, NULL, NULL, NULL, NULL, 0, 1, '67KTXqxMEyBMq3LApqCgNV', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(210, 'Boo Call (Skit)', 'Moosetape', 336, 7, 43153, NULL, NULL, NULL, NULL, NULL, 0, 1, '2KVf9D4Ko2gcTEIHbeM3xp', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(211, 'Brown Shortie (feat. Sonam Bajwa)', 'Moosetape', 336, 8, 208000, NULL, NULL, NULL, NULL, NULL, 0, 1, '61gu4XQFyAfIUneEyW4EJu', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(212, 'Aroma', 'Moosetape', 336, 9, 256909, NULL, NULL, NULL, NULL, NULL, 0, 1, '2J2da9welNmoeeBDLl9fUk', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(213, 'Real One (Skit)', 'Moosetape', 336, 10, 44000, NULL, NULL, NULL, NULL, NULL, 0, 1, '14uKipECtBQCcwr8VnW5ey', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(214, 'GOAT', 'Moosetape', 336, 11, 214883, NULL, NULL, NULL, NULL, NULL, 0, 1, '1kJL5ouqpWRitSej8fdTor', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(215, 'Sidhu Son', 'Moosetape', 336, 12, 217142, NULL, NULL, NULL, NULL, NULL, 0, 1, '6cbW2scRULV7RnFT4u8gnA', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(216, 'Chacha Huu (Skit)', 'Moosetape', 336, 13, 46000, NULL, NULL, NULL, NULL, NULL, 0, 1, '2EZSGhx8JnhjjCTk8lkPkS', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(217, 'Me and My Girlfriend', 'Moosetape', 336, 14, 203544, NULL, NULL, NULL, NULL, NULL, 0, 1, '1cQQk3EyZsWrbIzRBz68P9', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(218, 'These Days (feat. Bohemia)', 'Moosetape', 336, 15, 209230, NULL, NULL, NULL, NULL, NULL, 0, 1, '2zQE8TE5BQDJA11ggnope9', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(219, 'Ultimatum (Intro)', 'Moosetape', 336, 16, 90352, NULL, NULL, NULL, NULL, NULL, 0, 1, '3d8LYMt3rSqipr706qumyl', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(220, 'Signed to God', 'Moosetape', 336, 17, 147741, NULL, NULL, NULL, NULL, NULL, 0, 1, '3lRzVvMNG1QJcHlhLXM0lA', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(221, 'Regret', 'Moosetape', 336, 18, 311428, NULL, NULL, NULL, NULL, NULL, 0, 1, '2TCrYxhFs1CTFupauXzbIm', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(222, 'Pind Hood Damn Good (RMG Intro)', 'Moosetape', 336, 19, 75000, NULL, NULL, NULL, NULL, NULL, 0, 1, '1JxGjonVZMfWUxorsVLYQQ', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(223, 'Malwa Block', 'Moosetape', 336, 20, 239294, NULL, NULL, NULL, NULL, NULL, 0, 1, '4d3tiblcaqGdji7XvPGHiq', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(224, 'B & W', 'Moosetape', 336, 21, 245454, NULL, NULL, NULL, NULL, NULL, 0, 1, '7JoI4RoMUdZXBgIs7ZkhHV', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(225, 'Celebrity Killer (feat. Tion Wayne)', 'Moosetape', 336, 22, 203333, NULL, NULL, NULL, NULL, NULL, 0, 1, '19EZKr7Kf0XWCcspyWL8Rp', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(226, 'Invincible (feat. Stefflon Don)', 'Moosetape', 336, 23, 244444, NULL, NULL, NULL, NULL, NULL, 0, 1, '2NBYiYtI4v1ujkhHZBq3xw', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(227, 'Amli Talk (Skit)', 'Moosetape', 336, 24, 44000, NULL, NULL, NULL, NULL, NULL, 0, 1, '7aYNptA8eHkzOvZ9jGNI9g', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(228, 'G-Shit (feat. Blockboi Twitch)', 'Moosetape', 336, 25, 233571, NULL, NULL, NULL, NULL, NULL, 0, 1, '5uuVGnkZEFHBz8unViC3iA', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(229, 'Built Different', 'Moosetape', 336, 26, 247578, NULL, NULL, NULL, NULL, NULL, 0, 1, '5tIr2cGQsj0oeqLk2tAU0L', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(230, 'Trial Day (Skit)', 'Moosetape', 336, 27, 119000, NULL, NULL, NULL, NULL, NULL, 0, 1, '5o7LU3rVbvGHiLCurybKJP', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(231, 'Calaboose', 'Moosetape', 336, 28, 245200, NULL, NULL, NULL, NULL, NULL, 0, 1, '2wHTMZwkLbpM6LNkUBs2Xt', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(232, 'Facts (Skit)', 'Moosetape', 336, 29, 71500, NULL, NULL, NULL, NULL, NULL, 0, 1, '6fVZ8htFHVg8eMA9k4vBaF', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(233, '295', 'Moosetape', 336, 30, 270000, NULL, NULL, NULL, NULL, NULL, 0, 1, '5W7DOVGQLTigu09afW7QMT', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(234, 'IDGAF (feat. Morrisson)', 'Moosetape', 336, 31, 176842, NULL, NULL, NULL, NULL, NULL, 0, 1, '7F5O2pMgNNjONTbdqQx9b3', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(235, 'Power', 'Moosetape', 336, 32, 228000, NULL, NULL, NULL, NULL, NULL, 0, 1, '63fNl8H9wgFG5pUdsSXZyF', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(236, 'Aj Kal Ve', 'Snitches Get Stitches', 337, 1, 203720, NULL, NULL, NULL, NULL, NULL, 0, 1, '0TYsZbl0ryJSUvyQeeLBRG', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(237, 'Baapu', 'Snitches Get Stitches', 337, 2, 366039, NULL, NULL, NULL, NULL, NULL, 0, 1, '5fGH7wUp2unAd9UxbA4eGq', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(238, 'When I Am Gone', 'Snitches Get Stitches', 337, 3, 126293, NULL, NULL, NULL, NULL, NULL, 0, 1, '3YQEHZPbfP8GL03ahSWycb', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(239, 'Pittal', 'Snitches Get Stitches', 337, 4, 85379, NULL, NULL, NULL, NULL, NULL, 0, 1, '1WaZWEPYIFcloAROLQvmSZ', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(240, 'Boss', 'Snitches Get Stitches', 337, 5, 187035, NULL, NULL, NULL, NULL, NULL, 0, 1, '63QfIuE04qJb4007goqQo3', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(241, 'Goat', 'Snitches Get Stitches', 337, 6, 80062, NULL, NULL, NULL, NULL, NULL, 0, 1, '1gTD1rUFgz05rRyMvPPRtX', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(242, 'Roti', 'Snitches Get Stitches', 337, 7, 190825, NULL, NULL, NULL, NULL, NULL, 0, 1, '1rB5GPPwqD8Euh0dCub8Ol', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(243, 'Confession', 'Snitches Get Stitches', 337, 8, 141246, NULL, NULL, NULL, NULL, NULL, 0, 1, '3ggxLxmnuLEpIO5c5V9S5c', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(244, 'Intro', 'Pbx 1', 338, 1, 30503, NULL, NULL, NULL, NULL, NULL, 0, 1, '3n6PXFC9p7U4FuNSfLXzfa', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(245, 'Jatt Da Muqabala', 'Pbx 1', 338, 2, 204360, NULL, NULL, NULL, NULL, NULL, 0, 1, '71Udwiv5GsZghU6XQ5LXQj', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(246, 'Death Route', 'Pbx 1', 338, 3, 217520, NULL, NULL, NULL, NULL, NULL, 0, 1, '2Uik6DjW1n5CWbRNdZilV5', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(247, 'Dawood', 'Pbx 1', 338, 4, 197102, NULL, NULL, NULL, NULL, NULL, 0, 1, '2erjvSbTPKGalbZZhPgcCL', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(248, 'Badfella', 'Pbx 1', 338, 5, 217531, NULL, NULL, NULL, NULL, NULL, 0, 1, '58prIObJ1GMpyG51jnMjeS', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(249, 'Kala Chashma - Skit', 'Pbx 1', 338, 6, 25170, NULL, NULL, NULL, NULL, NULL, 0, 1, '6L4doQNgFmMTlwg4APsF9u', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(250, 'Selfmade', 'Pbx 1', 338, 7, 179513, NULL, NULL, NULL, NULL, NULL, 0, 1, '5lNQ2M1yJ1HAQGHgUfLlY3', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(251, 'I\'m Better Now - Skit', 'Pbx 1', 338, 8, 90024, NULL, NULL, NULL, NULL, NULL, 0, 1, '34LciD7TE9j5vrDdOFvzQF', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(252, 'I\'m Better Now', 'Pbx 1', 338, 9, 265754, NULL, NULL, NULL, NULL, NULL, 0, 1, '64JIsojFxxjnBopLebDqO5', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(253, 'Devil - Skit', 'Pbx 1', 338, 10, 78838, NULL, NULL, NULL, NULL, NULL, 0, 1, '0WjXRmZiXvJnCf6egOnZ31', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(254, 'Devil', 'Pbx 1', 338, 11, 245524, NULL, NULL, NULL, NULL, NULL, 0, 1, '2gNC2UZGVSK0iW4Ymc56na', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(255, 'Trend', 'Pbx 1', 338, 12, 221818, NULL, NULL, NULL, NULL, NULL, 0, 1, '6ElANRiS4S25oIn361o8Ye', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(256, 'Outro', 'Pbx 1', 338, 13, 31924, NULL, NULL, NULL, NULL, NULL, 0, 1, '4do2DJwxaJNtKRbTlf2hZ8', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(257, 'I\'m Better Now Lofi Mix', 'I\'m Better Now Lofi Mix', 339, 1, 268153, NULL, NULL, NULL, NULL, NULL, 0, 1, '0obAzKm4QKvFqlLZvd0Xrm', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(258, 'Mera Na', 'Mera Na', 340, 1, 201200, NULL, NULL, NULL, NULL, NULL, 0, 1, '0TlGvDUBcIUGZOroftyVF4', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(259, 'Dark Love', 'Dark Love', 341, 1, 305168, NULL, NULL, NULL, NULL, NULL, 0, 1, '0VwS7a4bNOVUSvwxYmzqen', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(260, 'Jailaan', 'Moosa Jatt (Original Motion Picture Soundtrack)', 342, 1, 178604, NULL, NULL, NULL, NULL, NULL, 0, 1, '4QcMxH5LwgSviMVeqeiAQ7', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(261, 'Ikk Duje De', 'Moosa Jatt (Original Motion Picture Soundtrack)', 342, 2, 252000, NULL, NULL, NULL, NULL, NULL, 0, 1, '5etPcvYuYHQ4HJZ5nzPykI', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(262, 'Thapian', 'Moosa Jatt (Original Motion Picture Soundtrack)', 342, 3, 238181, NULL, NULL, NULL, NULL, NULL, 0, 1, '1XHYNFVhbQWSDD8JSOiAAN', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(263, 'Vaar', 'Vaar', 343, 1, 140714, NULL, NULL, NULL, NULL, NULL, 0, 1, '3GUKdxhGCMLRO6Cey7V2Dk', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(264, 'Bad - DJ Hardik Remix', 'Bad (DJ Hardik Remix)', 344, 1, 158490, NULL, NULL, NULL, NULL, NULL, 0, 1, '4wuga6Y18qTWMIUzLp3ITQ', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(265, 'Bad Remix By DJ Hardik', 'Bad Remix', 345, 1, 158490, NULL, NULL, NULL, NULL, NULL, 0, 1, '4jxYFHe5pa3L94YD223l8Y', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(266, 'Dollar - Lofi Version', 'Dollar (Lofi Version)', 346, 1, 193535, NULL, NULL, NULL, NULL, NULL, 0, 1, '3kPQKCCfJVRJ5oC1hUkD2X', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(267, 'Hathyar - From \"Sikander 2\"', 'Hathyar (From \"Sikander 2\")', 347, 1, 276279, NULL, NULL, NULL, NULL, NULL, 0, 1, '1iKqYeWSuNtpiv1L9IGAbB', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(268, 'SYL', 'SYL', 348, 1, 249662, NULL, NULL, NULL, NULL, NULL, 0, 1, '0JBnAsReYppHqCZJbqy5H8', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(269, 'Levels', 'Levels', 349, 1, 228705, NULL, NULL, NULL, NULL, NULL, 0, 1, '60YICjIPdL7LDBcCMK0tAk', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(270, 'The Last Ride', 'The Last Ride', 350, 1, 262247, NULL, NULL, NULL, NULL, NULL, 0, 1, '7B4uYqxTpTOS1sgxFB9Ann', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(271, 'Never Fold', 'No Name', 351, 1, 183225, NULL, 77, NULL, NULL, NULL, 1, 1, '3JkVYvxNoGf2HCWJo61462', '2023-05-09 01:10:58', '2023-05-09 01:11:00', NULL, NULL),
(272, 'Love Sick', 'No Name', 351, 2, 232258, NULL, 71, NULL, NULL, NULL, 4, 1, '1skGwRjc7wYY70PJCAkKMr', '2023-05-09 01:10:58', '2023-05-09 01:49:17', NULL, NULL),
(273, 'Everybody Hurts', 'No Name', 351, 3, 173333, NULL, 73, NULL, NULL, NULL, 0, 1, '1w3exvIgbRFV2ijf6qyWm8', '2023-05-09 01:10:58', '2023-05-09 01:10:58', NULL, NULL),
(274, '0 to 100', 'No Name', 351, 4, 108493, NULL, 73, NULL, NULL, NULL, 0, 1, '7cVe3mYMIfhOlz1NXFWv70', '2023-05-09 01:10:58', '2023-05-09 01:10:58', NULL, NULL),
(275, 'Bloodlust (feat. Mr. Capone-E)', 'No Name', 351, 5, 159085, NULL, 66, NULL, NULL, NULL, 0, 1, '1O00WM9qGLUBA5gq2yw0WF', '2023-05-09 01:10:58', '2023-05-09 01:10:58', NULL, NULL),
(276, 'Scapegoat', 'Scapegoat', 352, 1, 237176, NULL, NULL, NULL, NULL, NULL, 0, 1, '7fm1Nbus8X19wI4oz6FFcb', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(277, 'Fuck Em All', 'Fuck Em All', 353, 1, 234130, NULL, NULL, NULL, NULL, NULL, 0, 1, '0Z2SFlnXH9yMN36djUeqyE', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(278, 'Youngest In Charge', 'Youngest In Charge', 354, 1, 198409, NULL, NULL, NULL, NULL, NULL, 0, 1, '2V52mICuJnWB3C4lrJZd7v', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(279, 'Bad - UK Drill Remix', 'Bad (Uk Drill Remix)', 355, 1, 225024, NULL, NULL, NULL, NULL, NULL, 0, 1, '6OlywqMBiLXvuq09xhnhpm', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(280, 'Satisfy', 'Satisfy', 356, 1, 280464, NULL, NULL, NULL, NULL, NULL, 0, 1, '2SazZ5d4m9G5IWu5xdMjZf', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(281, 'Moh', 'Moh', 357, 1, 185110, NULL, NULL, NULL, NULL, NULL, 0, 1, '6V6DCdrDiQh9hw6jS6p7ge', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(282, 'Athra Style', 'Yes I Am Student (Original Motion Picture Soundtrack)', 358, 1, 240000, NULL, NULL, NULL, NULL, NULL, 0, 1, '0Jzwt6Joh8midX8F2riGja', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(283, 'Yaariyaan', 'Yes I Am Student (Original Motion Picture Soundtrack)', 358, 2, 192000, NULL, NULL, NULL, NULL, NULL, 0, 1, '3OML9IVUvNEoM86FM8nUmr', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(284, 'Saab', 'Yes I Am Student (Original Motion Picture Soundtrack)', 358, 3, 203076, NULL, NULL, NULL, NULL, NULL, 0, 1, '0Agnpwkx2bbvJfz8vr1WLj', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(285, 'Jaan', 'Yes I Am Student (Original Motion Picture Soundtrack)', 358, 4, 236000, NULL, NULL, NULL, NULL, NULL, 0, 1, '7GV8nJXoglVxFWwzTVWaBk', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(286, 'Pyaar', 'Yes I Am Student (Original Motion Picture Soundtrack)', 358, 5, 208767, NULL, NULL, NULL, NULL, NULL, 0, 1, '2uNiscc2rdfZYcsUd4L65y', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(287, 'Baapu', 'Yes I Am Student (Original Motion Picture Soundtrack)', 358, 6, 346000, NULL, NULL, NULL, NULL, NULL, 0, 1, '5PHWATZ1WSvlRkslnBdXRD', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(288, 'Paapi', 'Paapi', 359, 1, 268965, NULL, NULL, NULL, NULL, NULL, 0, 1, '1NfJeTcOCEarxeh9lVNLqR', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(289, 'Paapi (Explicit)', 'Paapi (Explicit)', 360, 1, 269640, NULL, NULL, NULL, NULL, NULL, 0, 1, '1RoXQjcGw2AWUcjl4xeZvf', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(290, 'Jailaan (From \"Moosa Jatt\")', 'Jailaan (From \"Moosa Jatt\")', 361, 1, 178604, NULL, NULL, NULL, NULL, NULL, 0, 1, '1fOK4kKr4lCqQDV4rhLVvq', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(291, 'Cadilac', 'Cadilac', 362, 1, 186666, NULL, NULL, NULL, NULL, NULL, 0, 1, '3KEQMJlFmj7tyKaSQDbD4B', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(292, 'Jatti Jeone Morh Wargi - Remix', 'Jatti Jeone Morh Wargi (Remix)', 363, 1, 203440, NULL, NULL, NULL, NULL, NULL, 0, 1, '5XEsZxHggs7j11gEGIVk0e', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(293, 'Unfuckwithable (Bonus Track from Moosetape)', 'Unfuckwithable (Bonus Track from Moosetape)', 364, 1, 283636, NULL, NULL, NULL, NULL, NULL, 0, 1, '4N0TO4VfONQDwynV2khBL1', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(294, 'Who\'s Bad', 'Who\'s Bad', 365, 1, 162580, NULL, NULL, NULL, NULL, NULL, 0, 1, '5iyON8oxpuuHytvcZFHkyj', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(295, 'Sin', 'Sin', 366, 1, 187764, NULL, NULL, NULL, NULL, NULL, 0, 1, '5vwpOLQh2PpIbuJSjHhFwZ', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(296, 'Bad - DJ Rink Remix', 'Bad (Remix)', 367, 1, 185666, NULL, NULL, NULL, NULL, NULL, 0, 1, '4aAj1Px9kqkff6Az0bkSE0', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(297, 'Panjab', 'Panjab', 368, 1, 200000, NULL, NULL, NULL, NULL, NULL, 0, 1, '1xMgcXSUBhbEIfcbaWdIwp', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(298, 'Bai Bai', 'Bai Bai', 369, 1, 273157, NULL, NULL, NULL, NULL, NULL, 0, 1, '4FuQxMZP3ToPrc17Jdh4r1', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(299, 'Bad', 'Bad', 370, 1, 185806, NULL, NULL, NULL, NULL, NULL, 0, 1, '6fcfIo1jxbMNtE99krlTiD', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(300, 'Badfella Remix', 'Badfella Remix', 371, 1, 198878, NULL, NULL, NULL, NULL, NULL, 0, 1, '3Sy73a76QVKSDB9zVKzVWQ', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(301, 'Game', 'Game', 372, 1, 274666, NULL, NULL, NULL, NULL, NULL, 0, 1, '0TNB0RJsCi4WmeYtRqyAdt', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(302, 'My Block', 'My Block', 373, 1, 221539, NULL, NULL, NULL, NULL, NULL, 0, 1, '4HEzmqZuqVk3qSwD6Dtk6K', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(303, 'No Worries', 'No Worries', 374, 1, 199253, NULL, NULL, NULL, NULL, NULL, 0, 1, '2yl3wAV91ddgyCZLkbXlbr', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL),
(304, 'Old Skool', 'Old Skool', 375, 1, 253636, NULL, NULL, NULL, NULL, NULL, 0, 1, '4V9rQZOGILc4YfBnCDXgTz', '2023-05-09 01:02:28', '2023-05-09 01:02:28', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `track_plays`
--

CREATE TABLE `track_plays` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `track_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `platform` varchar(30) DEFAULT NULL,
  `device` varchar(30) DEFAULT NULL,
  `browser` varchar(30) DEFAULT NULL,
  `location` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `track_plays`
--

INSERT INTO `track_plays` (`id`, `user_id`, `track_id`, `created_at`, `platform`, `device`, `browser`, `location`) VALUES
(1, 1, 271, '2023-05-09 01:11:00', 'linux', 'desktop', 'chrome', 'in'),
(2, 1, 272, '2023-05-09 01:13:08', 'linux', 'desktop', 'chrome', 'in'),
(3, 1, 272, '2023-05-09 01:24:22', 'linux', 'desktop', 'chrome', 'in'),
(4, 1, 272, '2023-05-09 01:26:18', 'androidos', 'mobile', 'chrome', 'in'),
(5, 1, 272, '2023-05-09 01:49:17', 'linux', 'desktop', 'chrome', 'in');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `avatar_url` varchar(191) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `legacy_permissions` text DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(60) DEFAULT NULL,
  `card_brand` varchar(30) DEFAULT NULL,
  `card_last_four` varchar(4) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `language` varchar(6) DEFAULT NULL,
  `country` varchar(40) DEFAULT NULL,
  `timezone` varchar(30) DEFAULT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `stripe_id` varchar(191) DEFAULT NULL,
  `available_space` bigint(20) UNSIGNED DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `card_expires` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `avatar_url`, `gender`, `legacy_permissions`, `email`, `password`, `card_brand`, `card_last_four`, `remember_token`, `created_at`, `updated_at`, `language`, `country`, `timezone`, `avatar`, `stripe_id`, `available_space`, `email_verified_at`, `card_expires`) VALUES
(1, 'admin_xpirate', NULL, NULL, NULL, NULL, NULL, 'piratedland@gmail.com', '$2y$10$VEQakz6ih3i6kGHeVg2j3.KGh.w1DOmTbem3iqg0srgcBlZaVO3VK', NULL, NULL, 'OHsD2yGwWkIStcEDlkr2IfzGYdoAQDfUQvb6PeJUqBgVlup6FFWjqLg0TBD0', '2023-05-09 00:33:56', '2023-05-09 00:33:56', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-09 00:33:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_oauth`
--

CREATE TABLE `users_oauth` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `service` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_artist`
--

CREATE TABLE `user_artist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `artist_id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(30) NOT NULL DEFAULT 'artist',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_profiles`
--

CREATE TABLE `user_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` text DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `artist_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_profiles`
--

INSERT INTO `user_profiles` (`id`, `description`, `city`, `country`, `user_id`, `created_at`, `updated_at`, `artist_id`) VALUES
(1, 'Shubhdeep Singh Sidhu (11 June 1993 – 29 May 2022), known professionally as Sidhu Moose Wala, was an Indo-Canadian rapper, singer and songwriter. He worked predominantly in Punjabi-language music and cinema. He is generally regarded to have been one of the greatest Punjabi artists of his generation and to many, amongst the greatest Punjabi artists of all time. Moreover, he was considered as a key figure in opening the door for Punjabi artists into mainstream music. \nIn 2020, Sidhu was named by The Guardian among 50 up and coming artists. He also became the first Punjabi and Indian singer to perform at Wireless Festival and won four awards at the Brit Asia TV Music Awards.Sidhu rose to the mainstream with his track \"So High\". In 2018, he released his debut album PBX 1, which peaked at number 66 on the Billboard Canadian Albums chart. His singles \"47\" and \"Mera Na\" were ranked on the UK Singles Chart. \nBorn in Moosa, Mansa district, Moose Wala started in 2016 as a songwriter for the song \"License\" by Ninja, and as lead artist in 2017 with Gurlez Akhtar for a duet song, \"G Wagon\". Following his debut, he collaborated with Brown Boyz for various tracks. His tracks peaked on the UK Asian Music chart. His song \"Bambiha Bole\" was among the top five on the Global YouTube music chart. In 2021, he released Moosetape, tracks from which charted globally including Billboard Global 200, Billboard Global Excl. US, Canadian Hot 100, UK Asian, and New Zealand Hot charts. He has the most number-one singles on the Billboard India Songs chart.\nIn 2021, he joined the Indian National Congress political party and unsuccessfully contested the 2022 Punjab Legislative Assembly election from Mansa.\nMoose Wala was shot dead by unidentified assailants on 29 May 2022; a Canada-based gangster, active in Punjab, claimed responsibility for the killing, which the police said was a culmination of inter-gang rivalry. On 23 June 2022, his first posthumous single, \"SYL\", was released.\nMoose Wala\'s lyrics and themes were often seen as controversial in India, and he was accused of promoting gun culture and of challenging religious establishments—as was the case related to Mai Bhago, a revered figure in Sikhism. He had faced legal challenges for his support of gun culture and his inflammatory lyrics.', NULL, NULL, NULL, '2023-05-09 01:02:28', '2023-05-09 01:02:28', 260);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `user_id`, `role_id`, `created_at`) VALUES
(1, 1, 1, '2023-05-09 00:33:57');

-- --------------------------------------------------------

--
-- Table structure for table `workspaces`
--

CREATE TABLE `workspaces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `owner_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `workspace_invites`
--

CREATE TABLE `workspace_invites` (
  `id` char(36) NOT NULL,
  `avatar` varchar(80) DEFAULT NULL,
  `workspace_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `email` varchar(80) NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `workspace_user`
--

CREATE TABLE `workspace_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `workspace_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `is_owner` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `albums_spotify_id_unique` (`spotify_id`),
  ADD KEY `albums_release_date_index` (`release_date`),
  ADD KEY `albums_spotify_popularity_index` (`spotify_popularity`),
  ADD KEY `albums_owner_id_index` (`owner_id`),
  ADD KEY `albums_temp_id_index` (`temp_id`),
  ADD KEY `albums_fully_scraped_index` (`fully_scraped`),
  ADD KEY `albums_views_index` (`views`),
  ADD KEY `albums_plays_index` (`plays`),
  ADD KEY `albums_updated_at_index` (`updated_at`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `artists_spotify_id_unique` (`spotify_id`),
  ADD KEY `artists_spotify_popularity_index` (`spotify_popularity`),
  ADD KEY `artists_fully_scraped_index` (`fully_scraped`),
  ADD KEY `artists_views_index` (`views`),
  ADD KEY `artists_plays_index` (`plays`),
  ADD KEY `artists_verified_index` (`verified`),
  ADD KEY `artists_updated_at_index` (`updated_at`),
  ADD KEY `artists_created_at_index` (`created_at`),
  ADD KEY `artists_image_small_index` (`image_small`);

--
-- Indexes for table `artist_album`
--
ALTER TABLE `artist_album`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `artist_album_artist_id_album_id_unique` (`artist_id`,`album_id`),
  ADD KEY `artist_album_artist_id_index` (`artist_id`),
  ADD KEY `artist_album_album_id_index` (`album_id`),
  ADD KEY `artist_album_primary_index` (`primary`);

--
-- Indexes for table `artist_bios`
--
ALTER TABLE `artist_bios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `artist_bios_artist_id_unique` (`artist_id`);

--
-- Indexes for table `artist_track`
--
ALTER TABLE `artist_track`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `artist_track_artist_id_track_id_unique` (`artist_id`,`track_id`),
  ADD KEY `artist_track_artist_id_index` (`artist_id`),
  ADD KEY `artist_track_track_id_index` (`track_id`),
  ADD KEY `artist_track_primary_index` (`primary`);

--
-- Indexes for table `backstage_requests`
--
ALTER TABLE `backstage_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `backstage_requests_type_index` (`type`),
  ADD KEY `backstage_requests_user_id_index` (`user_id`),
  ADD KEY `backstage_requests_status_index` (`status`);

--
-- Indexes for table `billing_plans`
--
ALTER TABLE `billing_plans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `billing_plans_hidden_index` (`hidden`);

--
-- Indexes for table `channelables`
--
ALTER TABLE `channelables`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `channelables_unique` (`channelable_type`,`channelable_id`,`channel_id`),
  ADD KEY `channelables_channel_id_index` (`channel_id`),
  ADD KEY `channelables_channelable_type_index` (`channelable_type`),
  ADD KEY `channelables_channelable_id_index` (`channelable_id`),
  ADD KEY `channelables_order_index` (`order`);

--
-- Indexes for table `channels`
--
ALTER TABLE `channels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `channels_slug_unique` (`slug`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_parent_id_index` (`parent_id`),
  ADD KEY `comments_path_index` (`path`),
  ADD KEY `comments_user_id_index` (`user_id`),
  ADD KEY `comments_commentable_id_index` (`commentable_id`),
  ADD KEY `comments_commentable_type_index` (`commentable_type`),
  ADD KEY `comments_deleted_index` (`deleted`);

--
-- Indexes for table `css_themes`
--
ALTER TABLE `css_themes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `css_themes_name_unique` (`name`),
  ADD KEY `css_themes_default_light_index` (`default_light`),
  ADD KEY `css_themes_default_dark_index` (`default_dark`),
  ADD KEY `css_themes_user_id_index` (`user_id`);

--
-- Indexes for table `csv_exports`
--
ALTER TABLE `csv_exports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `csv_exports_cache_name_unique` (`cache_name`),
  ADD KEY `csv_exports_user_id_index` (`user_id`);

--
-- Indexes for table `custom_domains`
--
ALTER TABLE `custom_domains`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `custom_domains_host_unique` (`host`),
  ADD KEY `custom_domains_user_id_index` (`user_id`),
  ADD KEY `custom_domains_created_at_index` (`created_at`),
  ADD KEY `custom_domains_updated_at_index` (`updated_at`),
  ADD KEY `custom_domains_global_index` (`global`),
  ADD KEY `custom_domains_resource_id_index` (`resource_id`),
  ADD KEY `custom_domains_resource_type_index` (`resource_type`),
  ADD KEY `custom_domains_workspace_id_index` (`workspace_id`);

--
-- Indexes for table `custom_pages`
--
ALTER TABLE `custom_pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`),
  ADD KEY `pages_type_index` (`type`),
  ADD KEY `pages_user_id_index` (`user_id`),
  ADD KEY `custom_pages_workspace_id_index` (`workspace_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `file_entries`
--
ALTER TABLE `file_entries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uploads_file_name_unique` (`file_name`),
  ADD KEY `uploads_name_index` (`name`),
  ADD KEY `uploads_user_id_index` (`user_id`),
  ADD KEY `uploads_public_index` (`public`),
  ADD KEY `file_entries_updated_at_index` (`updated_at`),
  ADD KEY `file_entries_parent_id_index` (`parent_id`),
  ADD KEY `file_entries_type_index` (`type`),
  ADD KEY `file_entries_deleted_at_index` (`deleted_at`),
  ADD KEY `file_entries_user_id_index` (`user_id`),
  ADD KEY `file_entries_path_index` (`path`),
  ADD KEY `file_entries_description_index` (`description`),
  ADD KEY `file_entries_workspace_id_index` (`workspace_id`),
  ADD KEY `file_entries_owner_id_index` (`owner_id`);

--
-- Indexes for table `file_entry_models`
--
ALTER TABLE `file_entry_models`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uploadable_unique` (`file_entry_id`,`model_id`,`model_type`),
  ADD KEY `file_entry_models_owner_index` (`owner`);

--
-- Indexes for table `follows`
--
ALTER TABLE `follows`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `follows_follower_id_followed_id_unique` (`follower_id`,`followed_id`);

--
-- Indexes for table `genreables`
--
ALTER TABLE `genreables`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `genre_artist_genreable_id_genreable_type_genre_id_unique` (`genreable_id`,`genreable_type`,`genre_id`),
  ADD KEY `genre_artist_genreable_type_index` (`genreable_type`),
  ADD KEY `genreables_genreable_id_index` (`genreable_id`),
  ADD KEY `genreables_genre_id_index` (`genre_id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `genres_name_unique` (`name`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_subscription_id_index` (`subscription_id`),
  ADD KEY `invoices_uuid_index` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `likes_likeable_id_likeable_type_user_id_unique` (`likeable_id`,`likeable_type`,`user_id`),
  ADD KEY `track_user_track_id_index` (`likeable_id`),
  ADD KEY `track_user_user_id_index` (`user_id`);

--
-- Indexes for table `localizations`
--
ALTER TABLE `localizations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `localizations_name_index` (`name`),
  ADD KEY `localizations_language_index` (`language`);

--
-- Indexes for table `lyrics`
--
ALTER TABLE `lyrics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lyrics_track_id_unique` (`track_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `notification_subscriptions`
--
ALTER TABLE `notification_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notification_subscriptions_notif_id_index` (`notif_id`),
  ADD KEY `notification_subscriptions_user_id_index` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissionables`
--
ALTER TABLE `permissionables`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissionable_unique` (`permission_id`,`permissionable_id`,`permissionable_type`),
  ADD KEY `permissionables_permission_id_index` (`permission_id`),
  ADD KEY `permissionables_permissionable_id_index` (`permissionable_id`),
  ADD KEY `permissionables_permissionable_type_index` (`permissionable_type`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`),
  ADD KEY `permissions_advanced_index` (`advanced`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `playlists_spotify_id_unique` (`spotify_id`),
  ADD KEY `playlists_public_index` (`public`),
  ADD KEY `playlists_views_index` (`views`),
  ADD KEY `playlists_collaborative_index` (`collaborative`),
  ADD KEY `playlists_plays_index` (`plays`),
  ADD KEY `playlists_owner_id_index` (`owner_id`);

--
-- Indexes for table `playlist_track`
--
ALTER TABLE `playlist_track`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `playlist_track_track_id_playlist_id_unique` (`track_id`,`playlist_id`),
  ADD KEY `playlist_track_added_by_index` (`added_by`);

--
-- Indexes for table `playlist_user`
--
ALTER TABLE `playlist_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `playlist_user_playlist_id_user_id_unique` (`playlist_id`,`user_id`),
  ADD KEY `playlist_user_owner_index` (`editor`);

--
-- Indexes for table `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prices_product_id_index` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_position_index` (`position`),
  ADD KEY `products_free_index` (`free`),
  ADD KEY `products_hidden_index` (`hidden`);

--
-- Indexes for table `profile_images`
--
ALTER TABLE `profile_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bio_images_artist_id_index` (`artist_id`),
  ADD KEY `profile_images_user_id_index` (`user_id`);

--
-- Indexes for table `profile_links`
--
ALTER TABLE `profile_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_links_user_id_index` (`linkeable_id`),
  ADD KEY `profile_links_linkeable_type_index` (`linkeable_type`);

--
-- Indexes for table `reposts`
--
ALTER TABLE `reposts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reposts_repostable_id_repostable_type_user_id_unique` (`repostable_id`,`repostable_type`,`user_id`),
  ADD KEY `reposts_repostable_id_index` (`repostable_id`),
  ADD KEY `reposts_repostable_type_index` (`repostable_type`),
  ADD KEY `reposts_user_id_index` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `groups_name_unique` (`name`),
  ADD KEY `groups_default_index` (`default`),
  ADD KEY `groups_guests_index` (`guests`),
  ADD KEY `roles_internal_index` (`internal`),
  ADD KEY `roles_artists_index` (`artists`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_name_unique` (`name`),
  ADD KEY `settings_private_index` (`private`);

--
-- Indexes for table `similar_artists`
--
ALTER TABLE `similar_artists`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `similar_artists_artist_id_similar_id_unique` (`artist_id`,`similar_id`);

--
-- Indexes for table `sitemap_ids`
--
ALTER TABLE `sitemap_ids`
  ADD KEY `sitemap_ids_id_index` (`id`);

--
-- Indexes for table `social_profiles`
--
ALTER TABLE `social_profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_profiles_user_id_service_name_unique` (`user_id`,`service_name`),
  ADD UNIQUE KEY `social_profiles_service_name_user_service_id_unique` (`service_name`,`user_service_id`),
  ADD KEY `social_profiles_user_id_index` (`user_id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscriptions_gateway_id_unique` (`gateway_id`),
  ADD KEY `subscriptions_user_id_index` (`user_id`),
  ADD KEY `subscriptions_plan_id_index` (`price_id`),
  ADD KEY `subscriptions_gateway_index` (`gateway_name`),
  ADD KEY `subscriptions_product_id_index` (`product_id`);

--
-- Indexes for table `taggables`
--
ALTER TABLE `taggables`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `taggable_unique` (`tag_id`,`taggable_id`,`user_id`,`taggable_type`),
  ADD KEY `taggables_tag_id_index` (`tag_id`),
  ADD KEY `taggables_taggable_id_index` (`taggable_id`),
  ADD KEY `taggables_taggable_type_index` (`taggable_type`),
  ADD KEY `taggables_user_id_index` (`user_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_name_user_id_type_unique` (`name`,`user_id`,`type`),
  ADD KEY `tags_type_index` (`type`),
  ADD KEY `tags_created_at_index` (`created_at`),
  ADD KEY `tags_updated_at_index` (`updated_at`),
  ADD KEY `tags_user_id_index` (`user_id`);

--
-- Indexes for table `tracks`
--
ALTER TABLE `tracks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tracks_spotify_id_unique` (`spotify_id`),
  ADD KEY `tracks_album_id_index` (`album_id`),
  ADD KEY `tracks_number_index` (`number`),
  ADD KEY `tracks_youtube_id_index` (`youtube_id`),
  ADD KEY `tracks_spotify_popularity_index` (`spotify_popularity`),
  ADD KEY `tracks_owner_id_index` (`owner_id`),
  ADD KEY `tracks_temp_id_index` (`temp_id`),
  ADD KEY `tracks_plays_index` (`plays`),
  ADD KEY `tracks_created_at_index` (`created_at`),
  ADD KEY `tracks_updated_at_index` (`updated_at`),
  ADD KEY `tracks_name_index` (`name`);

--
-- Indexes for table `track_plays`
--
ALTER TABLE `track_plays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `track_plays_user_id_index` (`user_id`),
  ADD KEY `track_plays_track_id_index` (`track_id`),
  ADD KEY `track_plays_platform_index` (`platform`),
  ADD KEY `track_plays_device_index` (`device`),
  ADD KEY `track_plays_browser_index` (`browser`),
  ADD KEY `track_plays_location_index` (`location`),
  ADD KEY `track_plays_created_at_index` (`created_at`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_created_at_index` (`created_at`),
  ADD KEY `users_updated_at_index` (`updated_at`),
  ADD KEY `users_username_index` (`username`);

--
-- Indexes for table `users_oauth`
--
ALTER TABLE `users_oauth`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_oauth_user_id_service_unique` (`user_id`,`service`),
  ADD UNIQUE KEY `users_oauth_token_unique` (`token`),
  ADD KEY `users_oauth_user_id_index` (`user_id`);

--
-- Indexes for table `user_artist`
--
ALTER TABLE `user_artist`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_artist_user_id_artist_id_unique` (`user_id`,`artist_id`),
  ADD KEY `user_artist_user_id_index` (`user_id`),
  ADD KEY `user_artist_artist_id_index` (`artist_id`),
  ADD KEY `user_artist_role_index` (`role`);

--
-- Indexes for table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_profiles_user_id_unique` (`user_id`),
  ADD UNIQUE KEY `user_profiles_artist_id_unique` (`artist_id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_group_user_id_group_id_unique` (`user_id`,`role_id`);

--
-- Indexes for table `workspaces`
--
ALTER TABLE `workspaces`
  ADD PRIMARY KEY (`id`),
  ADD KEY `workspaces_owner_id_index` (`owner_id`),
  ADD KEY `workspaces_created_at_index` (`created_at`),
  ADD KEY `workspaces_updated_at_index` (`updated_at`);

--
-- Indexes for table `workspace_invites`
--
ALTER TABLE `workspace_invites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `workspace_invites_workspace_id_index` (`workspace_id`),
  ADD KEY `workspace_invites_user_id_index` (`user_id`),
  ADD KEY `workspace_invites_email_index` (`email`),
  ADD KEY `workspace_invites_role_id_index` (`role_id`);

--
-- Indexes for table `workspace_user`
--
ALTER TABLE `workspace_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `workspace_user_workspace_id_user_id_unique` (`workspace_id`,`user_id`),
  ADD KEY `workspace_user_user_id_index` (`user_id`),
  ADD KEY `workspace_user_workspace_id_index` (`workspace_id`),
  ADD KEY `workspace_user_role_id_index` (`role_id`),
  ADD KEY `workspace_user_is_owner_index` (`is_owner`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=377;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=589;

--
-- AUTO_INCREMENT for table `artist_album`
--
ALTER TABLE `artist_album`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=443;

--
-- AUTO_INCREMENT for table `artist_bios`
--
ALTER TABLE `artist_bios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `artist_track`
--
ALTER TABLE `artist_track`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=437;

--
-- AUTO_INCREMENT for table `backstage_requests`
--
ALTER TABLE `backstage_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `billing_plans`
--
ALTER TABLE `billing_plans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `channelables`
--
ALTER TABLE `channelables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `channels`
--
ALTER TABLE `channels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `css_themes`
--
ALTER TABLE `css_themes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `csv_exports`
--
ALTER TABLE `csv_exports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_domains`
--
ALTER TABLE `custom_domains`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_pages`
--
ALTER TABLE `custom_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `file_entries`
--
ALTER TABLE `file_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `file_entry_models`
--
ALTER TABLE `file_entry_models`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `follows`
--
ALTER TABLE `follows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genreables`
--
ALTER TABLE `genreables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `localizations`
--
ALTER TABLE `localizations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lyrics`
--
ALTER TABLE `lyrics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissionables`
--
ALTER TABLE `permissionables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `playlist_track`
--
ALTER TABLE `playlist_track`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `playlist_user`
--
ALTER TABLE `playlist_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prices`
--
ALTER TABLE `prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `profile_images`
--
ALTER TABLE `profile_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `profile_links`
--
ALTER TABLE `profile_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reposts`
--
ALTER TABLE `reposts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `similar_artists`
--
ALTER TABLE `similar_artists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `social_profiles`
--
ALTER TABLE `social_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taggables`
--
ALTER TABLE `taggables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracks`
--
ALTER TABLE `tracks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=306;

--
-- AUTO_INCREMENT for table `track_plays`
--
ALTER TABLE `track_plays`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users_oauth`
--
ALTER TABLE `users_oauth`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_artist`
--
ALTER TABLE `user_artist`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `workspaces`
--
ALTER TABLE `workspaces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `workspace_user`
--
ALTER TABLE `workspace_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
