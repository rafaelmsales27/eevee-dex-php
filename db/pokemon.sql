-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db:3306
-- Generation Time: Jul 12, 2023 at 05:27 PM
-- Server version: 8.0.33
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `pokemon`
--

CREATE TABLE `pokemon` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `height` int NOT NULL,
  `weight` int NOT NULL,
  `type1` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `type2` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `poke_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pokemon`
--

INSERT INTO `pokemon` (`id`, `name`, `image`, `height`, `weight`, `type1`, `type2`, `poke_id`) VALUES
(22, 'bulbasaur', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/1.gif', 7, 69, 'grass', 'poison', 1),
(23, 'ivysaur', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/2.gif', 10, 130, 'grass', 'poison', 2),
(24, 'venusaur', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/3.gif', 20, 1000, 'grass', 'poison', 3),
(25, 'charmander', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/4.gif', 6, 85, 'fire', NULL, 4),
(26, 'charmeleon', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/5.gif', 11, 190, 'fire', NULL, 5),
(27, 'charizard', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/6.gif', 17, 905, 'fire', 'flying', 6),
(28, 'squirtle', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/7.gif', 5, 90, 'water', NULL, 7),
(29, 'wartortle', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/8.gif', 10, 225, 'water', NULL, 8),
(30, 'blastoise', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/9.gif', 16, 855, 'water', NULL, 9),
(31, 'caterpie', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/10.gif', 3, 29, 'bug', NULL, 10),
(32, 'metapod', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/11.gif', 7, 99, 'bug', NULL, 11),
(33, 'butterfree', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/12.gif', 11, 320, 'bug', 'flying', 12),
(34, 'weedle', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/13.gif', 3, 32, 'bug', 'poison', 13),
(35, 'kakuna', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/14.gif', 6, 100, 'bug', 'poison', 14),
(36, 'beedrill', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/15.gif', 10, 295, 'bug', 'poison', 15),
(37, 'pidgey', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/16.gif', 3, 18, 'normal', 'flying', 16),
(38, 'pidgeotto', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/17.gif', 11, 300, 'normal', 'flying', 17),
(39, 'pidgeot', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/18.gif', 15, 395, 'normal', 'flying', 18),
(40, 'rattata', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/19.gif', 3, 35, 'normal', NULL, 19),
(41, 'raticate', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/20.gif', 7, 185, 'normal', NULL, 20),
(42, 'spearow', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/21.gif', 3, 20, 'normal', 'flying', 21),
(43, 'fearow', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/22.gif', 12, 380, 'normal', 'flying', 22),
(44, 'ekans', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/23.gif', 20, 69, 'poison', NULL, 23),
(45, 'arbok', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/24.gif', 35, 650, 'poison', NULL, 24),
(46, 'pikachu', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/25.gif', 4, 60, 'electric', NULL, 25),
(47, 'raichu', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/26.gif', 8, 300, 'electric', NULL, 26),
(48, 'sandshrew', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/27.gif', 6, 120, 'ground', NULL, 27),
(49, 'sandslash', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/28.gif', 10, 295, 'ground', NULL, 28),
(50, 'nidoran-f', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/29.gif', 4, 70, 'poison', NULL, 29),
(51, 'nidorina', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/30.gif', 8, 200, 'poison', NULL, 30),
(52, 'nidoqueen', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/31.gif', 13, 600, 'poison', 'ground', 31),
(53, 'nidoran-m', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/32.gif', 5, 90, 'poison', NULL, 32),
(54, 'nidorino', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/33.gif', 9, 195, 'poison', NULL, 33),
(55, 'nidoking', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/34.gif', 14, 620, 'poison', 'ground', 34),
(56, 'clefairy', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/35.gif', 6, 75, 'fairy', NULL, 35),
(57, 'clefable', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/36.gif', 13, 400, 'fairy', NULL, 36),
(58, 'vulpix', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/37.gif', 6, 99, 'fire', NULL, 37),
(59, 'ninetales', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/38.gif', 11, 199, 'fire', NULL, 38),
(60, 'jigglypuff', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/39.gif', 5, 55, 'normal', 'fairy', 39),
(61, 'wigglytuff', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/40.gif', 10, 120, 'normal', 'fairy', 40),
(62, 'zubat', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/41.gif', 8, 75, 'poison', 'flying', 41),
(63, 'golbat', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/42.gif', 16, 550, 'poison', 'flying', 42),
(64, 'oddish', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/43.gif', 5, 54, 'grass', 'poison', 43),
(65, 'gloom', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/44.gif', 8, 86, 'grass', 'poison', 44),
(66, 'vileplume', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/45.gif', 12, 186, 'grass', 'poison', 45),
(67, 'paras', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/46.gif', 3, 54, 'bug', 'grass', 46),
(68, 'parasect', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/47.gif', 10, 295, 'bug', 'grass', 47),
(69, 'venonat', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/48.gif', 10, 300, 'bug', 'poison', 48),
(70, 'venomoth', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/49.gif', 15, 125, 'bug', 'poison', 49),
(71, 'diglett', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/50.gif', 2, 8, 'ground', NULL, 50),
(72, 'dugtrio', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/51.gif', 7, 333, 'ground', NULL, 51),
(73, 'meowth', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/52.gif', 4, 42, 'normal', NULL, 52),
(74, 'persian', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/53.gif', 10, 320, 'normal', NULL, 53),
(75, 'psyduck', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/54.gif', 8, 196, 'water', NULL, 54),
(76, 'golduck', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/55.gif', 17, 766, 'water', NULL, 55),
(77, 'mankey', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/56.gif', 5, 280, 'fighting', NULL, 56),
(78, 'primeape', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/57.gif', 10, 320, 'fighting', NULL, 57),
(79, 'growlithe', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/58.gif', 7, 190, 'fire', NULL, 58),
(80, 'arcanine', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/59.gif', 19, 1550, 'fire', NULL, 59),
(81, 'poliwag', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/60.gif', 6, 124, 'water', NULL, 60),
(82, 'poliwhirl', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/61.gif', 10, 200, 'water', NULL, 61),
(83, 'poliwrath', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/62.gif', 13, 540, 'water', 'fighting', 62),
(84, 'abra', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/63.gif', 9, 195, 'psychic', NULL, 63),
(85, 'kadabra', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/64.gif', 13, 565, 'psychic', NULL, 64),
(86, 'alakazam', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/65.gif', 15, 480, 'psychic', NULL, 65),
(87, 'machop', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/66.gif', 8, 195, 'fighting', NULL, 66),
(88, 'machoke', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/67.gif', 15, 705, 'fighting', NULL, 67),
(89, 'machamp', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/68.gif', 16, 1300, 'fighting', NULL, 68),
(90, 'bellsprout', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/69.gif', 7, 40, 'grass', 'poison', 69),
(91, 'weepinbell', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/70.gif', 10, 64, 'grass', 'poison', 70),
(92, 'victreebel', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/71.gif', 17, 155, 'grass', 'poison', 71),
(93, 'tentacool', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/72.gif', 9, 455, 'water', 'poison', 72),
(94, 'tentacruel', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/73.gif', 16, 550, 'water', 'poison', 73),
(95, 'geodude', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/74.gif', 4, 200, 'rock', 'ground', 74),
(96, 'graveler', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/75.gif', 10, 1050, 'rock', 'ground', 75),
(97, 'golem', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/76.gif', 14, 3000, 'rock', 'ground', 76),
(98, 'ponyta', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/77.gif', 10, 300, 'fire', NULL, 77),
(99, 'rapidash', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/78.gif', 17, 950, 'fire', NULL, 78),
(100, 'slowpoke', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/79.gif', 12, 360, 'water', 'psychic', 79),
(101, 'slowbro', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/80.gif', 16, 785, 'water', 'psychic', 80),
(102, 'magnemite', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/81.gif', 3, 60, 'electric', 'steel', 81),
(103, 'magneton', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/82.gif', 10, 600, 'electric', 'steel', 82),
(104, 'farfetchd', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/83.gif', 8, 150, 'normal', 'flying', 83),
(105, 'doduo', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/84.gif', 14, 392, 'normal', 'flying', 84),
(106, 'dodrio', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/85.gif', 18, 852, 'normal', 'flying', 85),
(107, 'seel', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/86.gif', 11, 900, 'water', NULL, 86),
(108, 'dewgong', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/87.gif', 17, 1200, 'water', 'ice', 87),
(109, 'grimer', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/88.gif', 9, 300, 'poison', NULL, 88),
(110, 'muk', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/89.gif', 12, 300, 'poison', NULL, 89),
(111, 'shellder', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/90.gif', 3, 40, 'water', NULL, 90),
(112, 'cloyster', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/91.gif', 15, 1325, 'water', 'ice', 91),
(113, 'gastly', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/92.gif', 13, 1, 'ghost', 'poison', 92),
(114, 'haunter', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/93.gif', 16, 1, 'ghost', 'poison', 93),
(115, 'gengar', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/94.gif', 15, 405, 'ghost', 'poison', 94),
(116, 'onix', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/95.gif', 88, 2100, 'rock', 'ground', 95),
(117, 'drowzee', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/96.gif', 10, 324, 'psychic', NULL, 96),
(118, 'hypno', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/97.gif', 16, 756, 'psychic', NULL, 97),
(119, 'krabby', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/98.gif', 4, 65, 'water', NULL, 98),
(120, 'kingler', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/99.gif', 13, 600, 'water', NULL, 99),
(121, 'voltorb', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/100.gif', 5, 104, 'electric', NULL, 100),
(122, 'electrode', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/101.gif', 12, 666, 'electric', NULL, 101),
(123, 'exeggcute', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/102.gif', 4, 25, 'grass', 'psychic', 102),
(124, 'exeggutor', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/103.gif', 20, 1200, 'grass', 'psychic', 103),
(125, 'cubone', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/104.gif', 4, 65, 'ground', NULL, 104),
(126, 'marowak', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/105.gif', 10, 450, 'ground', NULL, 105),
(127, 'hitmonlee', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/106.gif', 15, 498, 'fighting', NULL, 106),
(128, 'hitmonchan', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/107.gif', 14, 502, 'fighting', NULL, 107),
(129, 'lickitung', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/108.gif', 12, 655, 'normal', NULL, 108),
(130, 'koffing', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/109.gif', 6, 10, 'poison', NULL, 109),
(131, 'weezing', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/110.gif', 12, 95, 'poison', NULL, 110),
(132, 'rhyhorn', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/111.gif', 10, 1150, 'ground', 'rock', 111),
(133, 'rhydon', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/112.gif', 19, 1200, 'ground', 'rock', 112),
(134, 'chansey', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/113.gif', 11, 346, 'normal', NULL, 113),
(135, 'tangela', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/114.gif', 10, 350, 'grass', NULL, 114),
(136, 'kangaskhan', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/115.gif', 22, 800, 'normal', NULL, 115),
(137, 'horsea', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/116.gif', 4, 80, 'water', NULL, 116),
(138, 'seadra', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/117.gif', 12, 250, 'water', NULL, 117),
(139, 'goldeen', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/118.gif', 6, 150, 'water', NULL, 118),
(140, 'seaking', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/119.gif', 13, 390, 'water', NULL, 119),
(141, 'staryu', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/120.gif', 8, 345, 'water', NULL, 120),
(142, 'starmie', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/121.gif', 11, 800, 'water', 'psychic', 121),
(143, 'mr-mime', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/122.gif', 13, 545, 'psychic', 'fairy', 122),
(144, 'scyther', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/123.gif', 15, 560, 'bug', 'flying', 123),
(145, 'jynx', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/124.gif', 14, 406, 'ice', 'psychic', 124),
(146, 'electabuzz', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/125.gif', 11, 300, 'electric', NULL, 125),
(147, 'magmar', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/126.gif', 13, 445, 'fire', NULL, 126),
(148, 'pinsir', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/127.gif', 15, 550, 'bug', NULL, 127),
(149, 'tauros', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/128.gif', 14, 884, 'normal', NULL, 128),
(150, 'magikarp', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/129.gif', 9, 100, 'water', NULL, 129),
(151, 'gyarados', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/130.gif', 65, 2350, 'water', 'flying', 130),
(152, 'lapras', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/131.gif', 25, 2200, 'water', 'ice', 131),
(153, 'ditto', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/132.gif', 3, 40, 'normal', NULL, 132),
(154, 'eevee', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/133.gif', 3, 65, 'normal', NULL, 133),
(155, 'vaporeon', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/134.gif', 10, 290, 'water', NULL, 134),
(156, 'jolteon', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/135.gif', 8, 245, 'electric', NULL, 135),
(157, 'flareon', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/136.gif', 9, 250, 'fire', NULL, 136),
(158, 'porygon', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/137.gif', 8, 365, 'normal', NULL, 137),
(159, 'omanyte', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/138.gif', 4, 75, 'rock', 'water', 138),
(160, 'omastar', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/139.gif', 10, 350, 'rock', 'water', 139),
(161, 'kabuto', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/140.gif', 5, 115, 'rock', 'water', 140),
(162, 'kabutops', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/141.gif', 13, 405, 'rock', 'water', 141),
(163, 'aerodactyl', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/142.gif', 18, 590, 'rock', 'flying', 142),
(164, 'snorlax', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/143.gif', 21, 4600, 'normal', NULL, 143),
(165, 'articuno', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/144.gif', 17, 554, 'ice', 'flying', 144),
(166, 'zapdos', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/145.gif', 16, 526, 'electric', 'flying', 145),
(167, 'moltres', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/146.gif', 20, 600, 'fire', 'flying', 146),
(168, 'dratini', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/147.gif', 18, 33, 'dragon', NULL, 147),
(169, 'dragonair', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/148.gif', 40, 165, 'dragon', NULL, 148),
(170, 'dragonite', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/149.gif', 22, 2100, 'dragon', 'flying', 149),
(171, 'mewtwo', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/150.gif', 20, 1220, 'psychic', NULL, 150),
(172, 'mew', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/151.gif', 4, 40, 'psychic', NULL, 151),
(173, 'chikorita', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/152.gif', 9, 64, 'grass', NULL, 152),
(174, 'bayleef', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/153.gif', 12, 158, 'grass', NULL, 153),
(175, 'meganium', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/154.gif', 18, 1005, 'grass', NULL, 154),
(176, 'cyndaquil', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/155.gif', 5, 79, 'fire', NULL, 155),
(177, 'quilava', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/156.gif', 9, 190, 'fire', NULL, 156),
(178, 'typhlosion', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/157.gif', 17, 795, 'fire', NULL, 157),
(179, 'totodile', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/158.gif', 6, 95, 'water', NULL, 158),
(180, 'croconaw', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/159.gif', 11, 250, 'water', NULL, 159),
(181, 'feraligatr', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/160.gif', 23, 888, 'water', NULL, 160),
(182, 'sentret', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/161.gif', 8, 60, 'normal', NULL, 161),
(183, 'furret', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/162.gif', 18, 325, 'normal', NULL, 162),
(184, 'hoothoot', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/163.gif', 7, 212, 'normal', 'flying', 163),
(185, 'noctowl', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/164.gif', 16, 408, 'normal', 'flying', 164),
(186, 'ledyba', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/165.gif', 10, 108, 'bug', 'flying', 165),
(187, 'ledian', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/166.gif', 14, 356, 'bug', 'flying', 166),
(188, 'spinarak', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/167.gif', 5, 85, 'bug', 'poison', 167),
(189, 'ariados', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/168.gif', 11, 335, 'bug', 'poison', 168),
(190, 'crobat', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/169.gif', 18, 750, 'poison', 'flying', 169),
(191, 'chinchou', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/170.gif', 5, 120, 'water', 'electric', 170),
(192, 'lanturn', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/171.gif', 12, 225, 'water', 'electric', 171),
(193, 'pichu', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/172.gif', 3, 20, 'electric', NULL, 172),
(194, 'cleffa', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/173.gif', 3, 30, 'fairy', NULL, 173),
(195, 'igglybuff', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/174.gif', 3, 10, 'normal', 'fairy', 174),
(196, 'togepi', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/175.gif', 3, 15, 'fairy', NULL, 175),
(197, 'togetic', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/176.gif', 6, 32, 'fairy', 'flying', 176),
(198, 'natu', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/177.gif', 2, 20, 'psychic', 'flying', 177),
(199, 'xatu', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/178.gif', 15, 150, 'psychic', 'flying', 178),
(200, 'mareep', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/179.gif', 6, 78, 'electric', NULL, 179),
(201, 'flaaffy', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/180.gif', 8, 133, 'electric', NULL, 180),
(202, 'ampharos', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/181.gif', 14, 615, 'electric', NULL, 181),
(203, 'bellossom', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/182.gif', 4, 58, 'grass', NULL, 182),
(204, 'marill', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/183.gif', 4, 85, 'water', 'fairy', 183),
(205, 'azumarill', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/184.gif', 8, 285, 'water', 'fairy', 184),
(206, 'sudowoodo', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/185.gif', 12, 380, 'rock', NULL, 185),
(207, 'politoed', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/186.gif', 11, 339, 'water', NULL, 186),
(208, 'hoppip', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/187.gif', 4, 5, 'grass', 'flying', 187),
(209, 'skiploom', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/188.gif', 6, 10, 'grass', 'flying', 188),
(210, 'jumpluff', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/189.gif', 8, 30, 'grass', 'flying', 189),
(211, 'aipom', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/190.gif', 8, 115, 'normal', NULL, 190),
(212, 'sunkern', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/191.gif', 3, 18, 'grass', NULL, 191),
(213, 'sunflora', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/192.gif', 8, 85, 'grass', NULL, 192),
(214, 'yanma', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/193.gif', 12, 380, 'bug', 'flying', 193),
(215, 'wooper', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/194.gif', 4, 85, 'water', 'ground', 194),
(216, 'quagsire', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/195.gif', 14, 750, 'water', 'ground', 195),
(217, 'espeon', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/196.gif', 9, 265, 'psychic', NULL, 196),
(218, 'umbreon', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/197.gif', 10, 270, 'dark', NULL, 197),
(219, 'murkrow', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/198.gif', 5, 21, 'dark', 'flying', 198),
(220, 'slowking', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/199.gif', 20, 795, 'water', 'psychic', 199),
(221, 'misdreavus', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/200.gif', 7, 10, 'ghost', NULL, 200),
(222, 'unown', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/201.gif', 5, 50, 'psychic', NULL, 201),
(223, 'wobbuffet', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/202.gif', 13, 285, 'psychic', NULL, 202),
(224, 'girafarig', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/203.gif', 15, 415, 'normal', 'psychic', 203),
(225, 'pineco', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/204.gif', 6, 72, 'bug', NULL, 204),
(226, 'forretress', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/205.gif', 12, 1258, 'bug', 'steel', 205),
(227, 'dunsparce', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/206.gif', 15, 140, 'normal', NULL, 206),
(228, 'gligar', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/207.gif', 11, 648, 'ground', 'flying', 207),
(229, 'steelix', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/208.gif', 92, 4000, 'steel', 'ground', 208),
(230, 'snubbull', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/209.gif', 6, 78, 'fairy', NULL, 209),
(231, 'granbull', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/210.gif', 14, 487, 'fairy', NULL, 210),
(232, 'qwilfish', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/211.gif', 5, 39, 'water', 'poison', 211),
(233, 'scizor', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/212.gif', 18, 1180, 'bug', 'steel', 212),
(234, 'shuckle', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/213.gif', 6, 205, 'bug', 'rock', 213),
(235, 'heracross', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/214.gif', 15, 540, 'bug', 'fighting', 214),
(236, 'sneasel', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/215.gif', 9, 280, 'dark', 'ice', 215),
(237, 'teddiursa', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/216.gif', 6, 88, 'normal', NULL, 216),
(238, 'ursaring', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/217.gif', 18, 1258, 'normal', NULL, 217),
(239, 'slugma', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/218.gif', 7, 350, 'fire', NULL, 218),
(240, 'magcargo', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/219.gif', 8, 550, 'fire', 'rock', 219),
(241, 'swinub', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/220.gif', 4, 65, 'ice', 'ground', 220),
(242, 'piloswine', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/221.gif', 11, 558, 'ice', 'ground', 221),
(243, 'corsola', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/222.gif', 6, 50, 'water', 'rock', 222),
(244, 'remoraid', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/223.gif', 6, 120, 'water', NULL, 223),
(245, 'octillery', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/224.gif', 9, 285, 'water', NULL, 224),
(246, 'delibird', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/225.gif', 9, 160, 'ice', 'flying', 225),
(247, 'mantine', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/226.gif', 21, 2200, 'water', 'flying', 226),
(248, 'skarmory', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/227.gif', 17, 505, 'steel', 'flying', 227),
(249, 'houndour', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/228.gif', 6, 108, 'dark', 'fire', 228),
(250, 'houndoom', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/229.gif', 14, 350, 'dark', 'fire', 229),
(251, 'kingdra', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/230.gif', 18, 1520, 'water', 'dragon', 230),
(252, 'phanpy', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/231.gif', 5, 335, 'ground', NULL, 231),
(253, 'donphan', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/232.gif', 11, 1200, 'ground', NULL, 232),
(254, 'porygon2', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/233.gif', 6, 325, 'normal', NULL, 233),
(255, 'stantler', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/234.gif', 14, 712, 'normal', NULL, 234),
(256, 'smeargle', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/235.gif', 12, 580, 'normal', NULL, 235),
(257, 'tyrogue', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/236.gif', 7, 210, 'fighting', NULL, 236),
(258, 'hitmontop', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/237.gif', 14, 480, 'fighting', NULL, 237),
(259, 'smoochum', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/238.gif', 4, 60, 'ice', 'psychic', 238),
(260, 'elekid', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/239.gif', 6, 235, 'electric', NULL, 239),
(261, 'magby', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/240.gif', 7, 214, 'fire', NULL, 240),
(262, 'miltank', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/241.gif', 12, 755, 'normal', NULL, 241),
(263, 'blissey', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/242.gif', 15, 468, 'normal', NULL, 242),
(264, 'raikou', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/243.gif', 19, 1780, 'electric', NULL, 243),
(265, 'entei', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/244.gif', 21, 1980, 'fire', NULL, 244),
(266, 'suicune', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/245.gif', 20, 1870, 'water', NULL, 245),
(267, 'larvitar', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/246.gif', 6, 720, 'rock', 'ground', 246),
(268, 'pupitar', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/247.gif', 12, 1520, 'rock', 'ground', 247),
(269, 'tyranitar', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/248.gif', 20, 2020, 'rock', 'dark', 248),
(270, 'lugia', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/249.gif', 52, 2160, 'psychic', 'flying', 249),
(271, 'ho-oh', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/250.gif', 38, 1990, 'fire', 'flying', 250),
(272, 'celebi', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/251.gif', 6, 50, 'psychic', 'grass', 251);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pokemon`
--
ALTER TABLE `pokemon`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
