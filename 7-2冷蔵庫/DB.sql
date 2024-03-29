-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2021-11-07 04:17:23
-- サーバのバージョン： 10.4.21-MariaDB
-- PHP のバージョン: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `food_contein`
--
CREATE DATABASE IF NOT EXISTS `food_contein` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `food_contein`;

-- --------------------------------------------------------

--
-- テーブルの構造 `foods`
--

CREATE TABLE `foods` (
  `id` int(11) NOT NULL COMMENT 'foods_id',
  `name` varchar(255) NOT NULL COMMENT '食材名',
  `category_id` int(11) NOT NULL COMMENT 'カテゴリーid'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `foods`
--

INSERT INTO `foods` (`id`, `name`, `category_id`) VALUES
(1, 'ソーセージ', 1),
(2, 'ハム', 1),
(3, 'ひき肉', 1),
(4, 'ベーコン', 1),
(5, '鴨肉', 1),
(6, '牛肉', 1),
(7, '鶏むね肉', 1),
(8, '鶏もも肉', 1),
(9, '豚肉', 1),
(10, 'アボカド', 2),
(11, 'イチジク', 2),
(12, 'かいわれ', 2),
(13, 'カット野菜', 2),
(14, 'カボチャ', 2),
(15, 'カリフラワー', 2),
(16, 'きぬさや', 2),
(17, 'キャベツ', 2),
(18, 'きゅうり', 2),
(19, 'ゴーヤ', 2),
(20, 'ごぼう', 2),
(21, 'ごま', 2),
(22, 'さやいんげん', 2),
(23, 'ししとう', 2),
(24, 'スダチ', 2),
(25, 'セロリ', 2),
(26, 'たくあん', 2),
(27, 'たけのこ', 2),
(28, 'たまねぎ', 2),
(29, 'トウモロコシ', 2),
(30, 'トマト', 2),
(31, 'なす', 2),
(32, 'にんじん', 2),
(33, 'ニンニク', 2),
(34, 'パセリ', 2),
(35, 'パプリカ', 2),
(36, 'ピーマン', 2),
(37, 'ふき', 2),
(38, 'ほうれんそう', 2),
(39, 'もやし', 2),
(40, 'ゆず', 2),
(41, 'レタス', 2),
(42, 'レモン', 2),
(43, 'レンコン', 2),
(44, 'わさび', 2),
(45, '果物', 2),
(46, '柿', 2),
(47, '銀杏', 2),
(48, '菜の花', 2),
(49, '三つ葉', 2),
(50, '山椒', 2),
(51, '春菊', 2),
(52, '小松菜', 2),
(53, '生姜', 2),
(54, '大根', 2),
(55, '大葉', 2),
(56, '長ねぎ', 2),
(57, '唐辛子', 2),
(58, '梅干し', 2),
(59, '白菜', 2),
(60, 'あさり', 3),
(61, 'あら', 3),
(62, 'イカ', 3),
(63, 'いくら', 3),
(64, 'エビ', 3),
(65, 'おから', 3),
(66, 'かに', 3),
(67, 'かまぼこ', 3),
(68, 'カレイ', 3),
(69, 'がんもどき', 3),
(70, 'サーモン', 3),
(71, 'さつま揚げ', 3),
(72, 'さば', 3),
(73, 'サンマ', 3),
(74, 'シジミ', 3),
(75, 'しらす', 3),
(76, 'タコ', 3),
(77, 'たら', 3),
(78, 'ちくわ', 3),
(79, 'ツナ缶', 3),
(80, 'はまぐり', 3),
(81, 'ぶり', 3),
(82, 'ホタテ', 3),
(83, 'マグロ', 3),
(84, '鯵', 3),
(85, '鰯', 3),
(86, '牡蠣', 3),
(87, '鰹節', 3),
(88, '鮭', 3),
(89, '数の子', 3),
(90, '鯛', 3),
(91, '鰆', 3),
(92, '鱧', 3),
(93, 'にぼし', 4),
(94, 'はるさめ', 4),
(95, 'ひじき', 4),
(96, 'わかめ', 4),
(97, '海苔', 4),
(98, '寒天', 4),
(99, '干しシイタケ', 4),
(100, '昆布', 4),
(101, '麩', 4),
(102, 'えのきたけ', 5),
(103, 'エリンギ', 5),
(104, 'しいたけ', 5),
(105, 'しめじ', 5),
(106, 'まいたけ', 5),
(107, 'みょうが', 5),
(108, 'ウズラの卵', 6),
(109, '卵', 6),
(110, 'こんにゃく', 7),
(111, 'さつまいも', 7),
(112, 'じゃがいも', 7),
(113, 'しらたき', 7),
(114, '芋', 7),
(115, '栗', 7),
(116, '山芋', 7),
(117, '長芋', 7),
(118, '里芋', 7),
(119, 'フランスパン', 8),
(120, '食パン', 8),
(121, 'ごはん', 9),
(122, '餅', 9),
(123, 'チーズ', 10),
(124, 'バター', 10),
(125, 'ヨーグルト', 10),
(126, 'ラード', 10),
(127, '牛乳', 10),
(128, '生クリーム', 10),
(129, 'えだまめ', 11),
(130, '厚揚げ', 11),
(131, '高野豆腐', 11),
(132, '黒豆', 11),
(133, '大豆', 11),
(134, '豆乳', 11),
(135, '豆腐', 11),
(136, '納豆', 11),
(137, '味噌', 11),
(138, '油揚げ', 11),
(139, 'うどん', 12),
(140, 'そうめん', 12),
(141, 'そば', 12),
(142, 'パスタ', 12),
(143, '中華麺', 12);

-- --------------------------------------------------------

--
-- テーブルの構造 `foods_category`
--

CREATE TABLE `foods_category` (
  `id` int(11) NOT NULL COMMENT 'カテゴリid',
  `name` varchar(255) NOT NULL COMMENT 'カテゴリ名'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `foods_category`
--

INSERT INTO `foods_category` (`id`, `name`) VALUES
(1, '﻿肉類'),
(2, '野菜・果実類'),
(3, '魚介類'),
(4, '乾物・海藻類'),
(5, 'きのこ・山菜類'),
(6, '卵類'),
(7, 'いも類'),
(8, 'パン類'),
(9, 'ご飯類'),
(10, '乳製品類'),
(11, '豆類'),
(12, '麺類');

-- --------------------------------------------------------

--
-- テーブルの構造 `pairings`
--

CREATE TABLE `pairings` (
  `id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL COMMENT '料理id',
  `food_id` int(11) NOT NULL COMMENT '材料id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `pairings`
--

INSERT INTO `pairings` (`id`, `recipe_id`, `food_id`) VALUES
(1, 0, 0),
(2, 1, 8),
(3, 1, 109),
(4, 1, 121),
(5, 1, 49),
(6, 1, 28),
(7, 2, 109),
(8, 2, 54),
(9, 3, 8),
(10, 3, 33),
(11, 3, 53),
(12, 3, 109),
(13, 3, 42),
(14, 4, 9),
(15, 4, 112),
(16, 4, 32),
(17, 4, 28),
(18, 4, 16),
(19, 5, 64),
(20, 5, 54),
(21, 5, 109),
(22, 6, 20),
(23, 6, 32),
(24, 6, 62),
(25, 6, 21),
(26, 6, 57),
(27, 7, 8),
(28, 8, 121),
(29, 8, 8),
(30, 8, 138),
(31, 8, 32),
(32, 8, 20),
(33, 8, 104),
(34, 8, 49),
(35, 9, 27),
(36, 9, 138),
(37, 9, 121),
(38, 10, 54),
(39, 10, 78),
(40, 10, 69),
(41, 10, 71),
(42, 10, 109),
(43, 10, 100),
(44, 11, 135),
(45, 11, 113),
(46, 11, 56),
(47, 11, 104),
(48, 11, 102),
(49, 11, 28),
(50, 11, 51),
(51, 11, 54),
(52, 12, 78),
(53, 12, 95),
(54, 13, 8),
(55, 13, 32),
(56, 13, 81),
(57, 14, 54),
(58, 14, 72),
(59, 15, 53),
(60, 15, 56),
(61, 15, 137),
(62, 15, 9),
(63, 16, 53),
(64, 16, 28),
(65, 16, 17),
(66, 16, 41),
(67, 16, 20),
(68, 17, 121),
(69, 17, 109),
(70, 17, 49),
(71, 17, 137),
(72, 17, 8),
(73, 17, 32),
(74, 18, 20),
(75, 18, 118),
(76, 18, 104),
(77, 18, 110),
(78, 18, 43),
(79, 18, 16),
(80, 18, 118),
(81, 18, 40),
(82, 19, 83),
(83, 19, 76),
(84, 20, 54),
(85, 20, 8),
(86, 21, 53),
(87, 21, 56),
(88, 21, 137),
(89, 21, 135),
(90, 21, 20),
(91, 22, 28),
(92, 22, 56),
(93, 22, 18),
(94, 22, 80),
(95, 22, 96),
(96, 23, 24),
(97, 23, 53),
(98, 23, 14),
(99, 23, 65),
(100, 23, 32),
(101, 24, 56),
(102, 25, 104),
(103, 25, 20),
(104, 25, 110),
(105, 25, 3),
(106, 25, 109),
(107, 25, 56),
(108, 26, 22),
(109, 26, 121),
(110, 26, 21),
(111, 26, 97),
(112, 26, 54),
(113, 26, 62),
(114, 26, 56),
(115, 27, 38),
(116, 27, 21),
(117, 27, 68),
(118, 28, 31),
(119, 28, 53),
(120, 29, 50),
(121, 29, 9),
(122, 29, 54),
(123, 29, 32),
(124, 30, 104),
(125, 30, 20),
(126, 30, 28),
(127, 30, 112),
(128, 30, 56),
(129, 30, 110),
(130, 30, 137),
(131, 30, 8),
(132, 30, 24),
(133, 30, 53),
(134, 31, 84),
(135, 31, 56),
(136, 31, 32),
(137, 32, 57),
(138, 32, 97),
(139, 32, 26),
(140, 32, 83),
(141, 33, 121),
(142, 33, 55),
(143, 33, 80),
(144, 33, 100),
(145, 33, 48),
(146, 34, 109),
(147, 34, 8),
(148, 34, 64),
(149, 35, 47),
(150, 35, 97),
(151, 35, 121),
(152, 35, 63),
(153, 35, 64),
(154, 36, 63),
(155, 36, 27),
(156, 36, 57),
(157, 36, 137),
(158, 36, 83),
(159, 37, 121),
(160, 37, 97),
(161, 37, 44),
(162, 38, 84),
(163, 38, 53),
(164, 38, 55),
(165, 38, 80),
(166, 39, 90),
(167, 39, 100),
(168, 39, 32),
(169, 39, 44),
(170, 40, 19),
(171, 40, 135),
(172, 40, 9),
(173, 40, 109),
(174, 41, 126),
(175, 41, 121),
(176, 41, 32),
(177, 41, 67),
(178, 41, 9),
(179, 42, 104),
(180, 42, 126),
(181, 42, 115),
(182, 42, 121),
(183, 42, 121),
(184, 42, 100),
(185, 43, 21),
(186, 43, 73),
(187, 43, 55),
(188, 43, 56),
(189, 43, 141),
(190, 44, 8),
(191, 44, 105),
(192, 44, 56),
(193, 45, 141),
(194, 45, 49),
(195, 45, 111),
(196, 45, 115),
(197, 45, 132),
(198, 45, 92),
(199, 46, 109),
(200, 46, 132),
(201, 46, 85),
(202, 47, 53),
(203, 47, 137),
(204, 48, 20),
(205, 49, 56),
(206, 49, 61),
(207, 49, 56),
(208, 49, 100),
(209, 49, 81),
(210, 50, 137),
(211, 50, 73),
(212, 50, 131),
(213, 51, 90),
(214, 51, 53),
(215, 52, 131),
(216, 53, 54),
(217, 54, 53),
(218, 54, 57),
(219, 55, 31),
(220, 55, 64),
(221, 55, 88),
(222, 55, 53),
(223, 56, 80),
(224, 56, 55),
(225, 57, 21),
(226, 57, 97),
(227, 57, 44),
(228, 57, 52),
(229, 57, 38),
(230, 57, 100),
(231, 57, 21),
(232, 58, 57),
(233, 58, 135),
(234, 58, 44),
(235, 58, 54),
(236, 58, 135),
(237, 59, 21),
(238, 59, 32),
(239, 59, 18),
(240, 60, 104),
(241, 60, 110),
(242, 60, 72),
(243, 60, 8),
(244, 60, 54),
(245, 60, 56),
(246, 61, 57),
(247, 62, 140),
(248, 62, 141),
(249, 62, 64),
(250, 62, 56),
(251, 62, 38),
(252, 63, 67),
(253, 63, 57),
(254, 63, 141),
(255, 63, 56),
(256, 63, 38),
(257, 63, 67),
(258, 64, 21),
(259, 64, 20),
(260, 64, 21),
(261, 64, 54),
(262, 65, 32),
(263, 66, 46),
(264, 66, 89),
(265, 67, 100),
(266, 67, 37),
(267, 67, 87),
(268, 68, 62),
(269, 68, 42),
(270, 69, 86),
(271, 69, 56),
(272, 70, 97),
(273, 70, 121),
(274, 71, 83),
(275, 71, 18),
(276, 72, 26),
(277, 72, 77),
(278, 72, 137),
(279, 72, 27),
(280, 72, 139),
(281, 73, 122),
(282, 73, 56),
(283, 73, 40),
(284, 74, 3),
(285, 74, 117),
(286, 74, 43),
(287, 74, 32),
(288, 75, 23),
(289, 75, 118),
(290, 75, 54),
(291, 75, 12),
(292, 75, 87),
(293, 75, 100),
(294, 76, 5),
(295, 76, 31),
(296, 76, 56),
(297, 76, 104),
(298, 77, 31),
(299, 77, 3),
(300, 77, 137),
(301, 77, 53),
(302, 78, 21),
(303, 78, 31),
(304, 78, 64),
(305, 78, 53),
(306, 78, 55),
(307, 79, 91),
(308, 79, 121),
(309, 79, 21),
(310, 79, 97),
(311, 80, 135),
(312, 80, 20),
(313, 80, 116),
(314, 80, 55),
(315, 81, 53),
(316, 81, 80),
(317, 81, 96),
(318, 81, 27),
(319, 81, 20),
(320, 81, 32),
(321, 82, 110),
(322, 82, 133),
(323, 83, 22),
(324, 83, 112),
(325, 83, 28),
(326, 83, 32),
(327, 83, 129),
(328, 84, 2),
(329, 84, 58),
(330, 84, 137),
(331, 84, 134),
(332, 84, 3),
(333, 84, 135),
(334, 84, 28),
(335, 84, 137),
(336, 85, 55),
(337, 85, 54),
(338, 85, 28),
(339, 85, 18),
(340, 85, 104),
(341, 85, 15),
(342, 86, 54),
(343, 87, 11),
(344, 87, 23),
(345, 87, 54),
(346, 87, 2),
(347, 88, 28),
(348, 88, 109),
(349, 88, 121),
(350, 89, 124),
(351, 89, 109),
(352, 89, 28),
(353, 89, 34),
(354, 89, 127),
(355, 90, 33),
(356, 90, 25),
(357, 90, 28);

-- --------------------------------------------------------

--
-- テーブルの構造 `recipes`
--

CREATE TABLE `recipes` (
  `id` int(11) NOT NULL COMMENT 'レシピid',
  `name` varchar(255) NOT NULL COMMENT '料理名',
  `genre_id` int(11) NOT NULL COMMENT 'ジャンルid'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `recipes`
--

INSERT INTO `recipes` (`id`, `name`, `genre_id`) VALUES
(1, '﻿親子丼', 1),
(2, '卵焼き', 1),
(3, '鶏のから揚げ', 1),
(4, '肉じゃが', 1),
(5, '天ぷら', 1),
(6, 'きんぴらごぼう', 1),
(7, '鶏の照り焼き', 1),
(8, '五目炊き込みご飯', 1),
(9, '筍ごはん', 1),
(10, 'おでん', 1),
(11, 'すき焼き', 1),
(12, '切り干し大根の煮物', 1),
(13, 'ひじきの煮物', 1),
(14, 'ブリ大根', 1),
(15, 'サバの味噌煮', 1),
(16, '生姜焼き', 1),
(17, '牛丼', 1),
(18, '筑前煮', 1),
(19, '里芋の煮ころがし', 1),
(20, 'ぬた和え', 1),
(21, 'ふろふき大根', 1),
(22, '肉豆腐', 1),
(23, 'きゅうりとわかめの酢の物', 1),
(24, 'カボチャの煮物', 1),
(25, '卯の花', 1),
(26, '三色丼', 1),
(27, 'イカ大根', 1),
(28, 'ほうれん草のごまあえ', 1),
(29, 'カレイの煮つけ', 1),
(30, '豚汁', 1),
(31, '鶏の竜田揚げ', 1),
(32, '鯵の南蛮漬け', 1),
(33, '恵方巻', 1),
(34, 'はまぐりのお吸い物', 1),
(35, '茶碗蒸し', 1),
(36, '三色手まり寿司', 1),
(37, 'たけのこ西京土佐煮', 1),
(38, 'マグロ漬け丼', 1),
(39, '鯵のたたき', 1),
(40, '鯛の昆布じめ', 1),
(41, 'ゴーヤチャンプルー', 1),
(42, 'ジューシー', 1),
(43, '栗ご飯', 1),
(44, '秋刀魚のかば焼き', 1),
(45, '鶏南蛮そば', 1),
(46, '栗きんとん', 1),
(47, '伊達巻', 1),
(48, '黒豆艶煮', 1),
(49, '鰯のつみれ汁', 1),
(50, 'あら汁', 1),
(51, '西京焼き', 1),
(52, 'ちりめん山椒', 1),
(53, '高野豆腐の煮物', 1),
(54, '金目鯛の煮つけ', 1),
(55, '揚げ出し豆腐', 1),
(56, '茄子の旨煮', 1),
(57, '塩じゃけの冷やし茶漬け', 1),
(58, '青菜のお浸し', 1),
(59, 'ゴマ豆腐', 1),
(60, '野菜の白和え', 1),
(61, 'サバの幽庵焼', 1),
(62, '鶏と冬瓜のにゅうめん', 1),
(63, 'エビ天蕎麦', 1),
(64, 'きつね蕎麦', 1),
(65, '田作り', 1),
(66, '叩きごぼう', 1),
(67, 'なます', 1),
(68, '数の子', 1),
(69, 'ふき土佐煮', 1),
(70, '沖漬け', 1),
(71, '牡蠣釜飯', 1),
(72, '三色巻き', 1),
(73, 'タラの粕漬け', 1),
(74, '揚げ餅うどん', 1),
(75, '季節野菜の鶏そぼろ餡掛け', 1),
(76, '大根サラダ', 1),
(77, '治部煮', 1),
(78, 'なす田楽', 1),
(79, 'なすの丸焼き', 1),
(80, '鰆のごま茶漬け', 1),
(81, 'がんもどき', 1),
(82, '筍汁', 1),
(83, '五目豆', 1),
(84, '和風ポテトサラダ', 1),
(85, '豆腐入りハンバーグ', 1),
(86, '玉ねぎステーキ', 1),
(87, 'ゴマ酢和え', 1),
(88, 'イチジクのみぞれあん', 1),
(89, 'オムライス', 2),
(90, 'エビフライ', 2),
(91, 'ローストビーフ', 2),
(92, 'コールスロー', 2),
(93, 'ポテトサラダ', 2),
(94, 'マカロニグラタン', 2),
(95, 'ビーフポテトコロッケ', 2),
(96, 'ロールキャベツ', 2),
(97, 'ナポリタン', 2),
(98, 'エビピラフ', 2),
(99, 'ハンバーグステーキ', 2),
(100, 'マカロニサラダ', 2),
(101, 'カミカツ', 2),
(102, 'ドライカレー', 2),
(103, 'カニクリームコロッケ', 2),
(104, 'クリームシチュー', 2),
(105, 'コンソメスープ', 2),
(106, 'メンチカツ', 2),
(107, 'エッグベネディクト', 2),
(108, 'ハンバーガー', 2),
(109, 'スモークチキン', 2),
(110, 'チリコンカーン', 2),
(111, 'ムール貝の白ワイン蒸し', 2),
(112, 'フライドチキン', 2),
(113, 'ミートローフ', 2),
(114, '手作りあらびきソーセージ', 2),
(115, 'にんじんのポタージュ', 2),
(116, 'エビチリ', 3),
(117, '酢豚', 3),
(118, 'あんかけかに玉', 3),
(119, 'サンラータン', 3),
(120, 'にらたま', 3),
(121, 'チャーハン', 3),
(122, 'チンジャオロース', 3),
(123, 'タンタンメン', 3),
(124, '豚の角煮', 3),
(125, '水餃子', 3),
(126, '棒棒鶏', 3),
(127, '冷やし中華', 3),
(128, '肉団子', 3),
(129, 'アサリの中華粥', 3),
(130, '春巻き', 3),
(131, '卵スープ', 3),
(132, '麻婆豆腐', 3),
(133, '回鍋肉', 3),
(134, '焼きそば', 3),
(135, '白身魚の姿蒸し', 3),
(136, 'イカのミルク炒め', 3),
(137, '麻婆春雨', 3),
(138, '麻婆那須', 3),
(139, '鶏肉とカシューナッツのピリ辛炒め', 3),
(140, '中華ちまき', 3),
(141, '鶏肉のスパイシー炒め', 3),
(142, '卵とトマトの炒め物', 3),
(143, '八宝菜', 3),
(144, '茹でワンタン', 3),
(145, '揚げワンタン', 3),
(146, 'テリーヌ', 4),
(147, 'ムニエル', 4),
(148, 'ビーフシチュー', 4),
(149, 'コーンポタージュ', 4),
(150, 'ビーフストロガノフ', 4),
(151, 'レバーペースト', 4),
(152, 'カルパッチョ', 4),
(153, 'ポークソテー', 4),
(154, 'マッシュポテト', 4),
(155, '鶏のトマト煮込み', 4),
(156, 'グラタン', 4),
(157, 'ペペロンチーノ', 5),
(158, 'トマトの冷製パスタ', 5),
(159, 'バーニャカウダ', 5),
(160, 'カルボナーラ', 5),
(161, 'アクアパッツァ', 5),
(162, 'カポナータ', 5),
(163, 'ポモドーロ', 5),
(164, 'ジェノベーゼ', 5),
(165, 'カッスーラ', 5),
(166, 'ペンネアラビアータ', 5),
(167, 'ボンゴレビアンコ', 5),
(168, 'パエリア', 6),
(169, '鶏肉のアヒージョ', 6),
(170, 'エビのアヒージョ', 6),
(171, 'マッシュルームのアヒージョ', 6),
(172, '鶏肉のチリンドロン', 6),
(173, 'ビビンバ', 7),
(174, 'チャプチェ', 7),
(175, 'チジミ', 7),
(176, 'トッポギ', 7),
(177, 'グリーンカレー', 7),
(178, 'スンドゥブチゲ', 7),
(179, 'サムゲタン', 7),
(180, '生春巻き', 7),
(181, 'バターチキンカレー', 8),
(182, 'サグカレー', 8),
(183, 'キーマカレー', 8),
(184, 'フィッシュカレー', 8),
(185, '野菜のビリヤニ', 8),
(186, 'プリン', 9);

-- --------------------------------------------------------

--
-- テーブルの構造 `recipes_genre`
--

CREATE TABLE `recipes_genre` (
  `id` int(11) NOT NULL COMMENT 'ジャンルid',
  `genre` varchar(255) NOT NULL COMMENT 'ジャンル名'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `recipes_genre`
--

INSERT INTO `recipes_genre` (`id`, `genre`) VALUES
(1, '﻿和食'),
(2, '洋食'),
(3, '中華'),
(4, 'フレンチ'),
(5, 'イタリアン'),
(6, 'スパニッシュ'),
(7, 'アジアン'),
(8, 'エスニック'),
(9, 'デザート');

-- --------------------------------------------------------

--
-- テーブルの構造 `recipes_made`
--

CREATE TABLE `recipes_made` (
  `id` int(11) NOT NULL COMMENT '主キー',
  `user_id` int(11) NOT NULL COMMENT 'ユーザid',
  `recipes_id` int(11) NOT NULL COMMENT 'レシピid',
  `date` date NOT NULL DEFAULT current_timestamp() COMMENT '作成日時',
  `cook_image` varchar(255) DEFAULT NULL COMMENT '画像名保存用'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `recipes_made`
--

INSERT INTO `recipes_made` (`id`, `user_id`, `recipes_id`, `date`, `cook_image`) VALUES
(1, 1, 116, '2021-10-27', NULL),
(2, 1, 0, '2021-10-27', NULL),
(3, 1, 1, '2021-10-27', NULL),
(4, 1, 147, '2021-10-27', NULL),
(8, 1, 118, '2021-10-29', NULL),
(9, 1, 146, '2021-10-29', NULL),
(10, 1, 157, '2021-10-29', NULL),
(11, 1, 146, '2021-10-29', NULL),
(12, 1, 181, '2021-10-29', NULL),
(13, 7, 116, '2021-10-31', NULL),
(20, 9, 157, '2021-10-31', NULL),
(22, 8, 157, '2021-11-02', NULL),
(23, 8, 17, '2021-11-03', NULL),
(24, 8, 146, '2021-11-04', NULL),
(25, 8, 173, '2021-11-04', NULL),
(26, 15, 0, '2021-11-04', NULL),
(29, 15, 0, '2021-11-04', NULL),
(30, 15, 0, '2021-11-04', NULL),
(31, 15, 0, '2021-11-04', NULL),
(35, 15, 89, '2021-11-04', 'reizouko_akeppanashi_hakken.png'),
(36, 15, 1, '2021-11-04', '冷蔵庫.jpg'),
(37, 15, 19, '2021-11-04', 'ヘッダー.png'),
(38, 15, 19, '2021-11-04', 'reizouko_akeppanashi_hakken.png'),
(39, 15, 20, '2021-11-04', 'ヘッダー.png'),
(40, 15, 20, '2021-11-04', 'ヘッダー.png'),
(41, 15, 89, '2021-11-04', 'd4aa65e0ce7ef22ed265b2d711c24a0dbac5e8ac'),
(42, 15, 89, '2021-11-04', 'fb5594f084d8321090bd7234dfc12bdbc66f2d9e'),
(43, 15, 1, '2021-11-04', 'ff40d6a0906f2f436679518a55cb28f485832079'),
(44, 15, 116, '2021-11-04', '0d3b5abf1c64cb0329e613fee1e928bb6f7ccc35'),
(45, 15, 116, '2021-11-04', 'd4dbf13b330433066679961fab3f96ae94de0a0f'),
(46, 15, 89, '2021-11-04', '1298cd7733f22e4998cdf50f35e0273c12bf15ea'),
(47, 15, 169, '2021-11-04', '85de298ab23196cff6ebdcbd7a3cd62091ec8b37');

-- --------------------------------------------------------

--
-- テーブルの構造 `refrigerator`
--

CREATE TABLE `refrigerator` (
  `id` int(11) NOT NULL COMMENT '冷蔵庫の食材id',
  `refrigerator_user` int(11) NOT NULL COMMENT 'ユーザid',
  `date` date NOT NULL DEFAULT current_timestamp() COMMENT '更新日時',
  `foods_id` int(11) NOT NULL COMMENT '食材名'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `refrigerator`
--

INSERT INTO `refrigerator` (`id`, `refrigerator_user`, `date`, `foods_id`) VALUES
(2, 1, '0000-00-00', 2),
(3, 2, '2021-10-24', 2),
(4, 3, '2021-10-24', 3),
(5, 4, '2021-10-24', 4),
(6, 5, '2021-10-24', 5),
(7, 6, '2021-10-24', 6),
(8, 7, '2021-10-24', 7),
(10, 0, '2021-10-24', 1),
(18, 1, '2021-10-26', 0),
(19, 1, '2021-10-26', 0),
(34, 1, '2021-10-29', 108),
(35, 1, '2021-10-29', 60),
(36, 1, '2021-10-29', 93),
(37, 1, '2021-10-29', 108),
(38, 1, '2021-10-29', 10),
(39, 1, '2021-10-29', 1),
(40, 1, '2021-10-29', 1),
(41, 1, '2021-10-29', 10),
(42, 1, '2021-10-29', 108),
(43, 1, '2021-10-29', 93),
(44, 7, '2021-10-31', 93),
(45, 7, '2021-10-31', 110),
(49, 9, '2021-10-31', 102),
(50, 9, '2021-10-31', 0),
(51, 9, '2021-10-31', 121),
(52, 9, '2021-10-31', 108),
(53, 9, '2021-10-31', 9),
(54, 9, '2021-10-31', 65),
(71, 8, '2021-11-04', 102),
(72, 8, '2021-11-04', 93),
(73, 8, '2021-11-04', 108),
(74, 8, '2021-11-04', 93),
(75, 15, '2021-11-04', 10),
(76, 15, '2021-11-04', 121),
(77, 15, '2021-11-04', 1),
(78, 15, '2021-11-04', 0),
(82, 15, '2021-11-04', 6),
(83, 8, '2021-11-05', 88),
(84, 8, '2021-11-05', 130);

-- --------------------------------------------------------

--
-- テーブルの構造 `user_table`
--

CREATE TABLE `user_table` (
  `id` int(11) NOT NULL COMMENT 'id',
  `name` varchar(255) NOT NULL COMMENT '名前',
  `birth` date DEFAULT NULL COMMENT '生年月日',
  `gender` tinyint(1) DEFAULT NULL COMMENT '0男:1女',
  `email` varchar(255) NOT NULL COMMENT 'メールアドレス',
  `password` varchar(255) NOT NULL COMMENT 'パスワード',
  `role` int(11) NOT NULL DEFAULT 1 COMMENT '権限'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `user_table`
--

INSERT INTO `user_table` (`id`, `name`, `birth`, `gender`, `email`, `password`, `role`) VALUES
(7, 'root', '1997-04-26', 0, 'root@gmail.com', '$2y$10$/kOFmwZT6DNczvtcegtSReeXQOAnXdUCInrszVZS8aD4Ct5XNAuDq', 1),
(8, '垣内健太', '1997-04-26', 0, 'zpopfj@gmail.com', '$2y$10$8kX/ZsVp2X5GZ/LA4AyAy.YCVMM1LiqdILADDZFS40ZJDVG0ZQfYS', 1),
(9, 'uha-mika', '2021-04-26', 1, 'abcde@gmail.com', '$2y$10$F/GbvY1ObW3/gWdhXKqSr.cSQMOyO64cVSWMrUSV2kWfiX2p.1qv2', 1),
(13, 'aaaaaaaaaa', '1997-04-26', 0, 'ppap@gmail.com', '$2y$10$J.LwgLkuRyebClD6nhC0nuvc9VoHu.jqSBQUU68mi6f0PjwgdhYwi', 1),
(15, 'aygig', '1997-01-01', 0, 'oijoj@gmail.com', '$2y$10$0H5h435entf1ZNTNUCCXuetC3mUp1j82erb4IEnsGL/2Mc2Ay2g0K', 1);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `foods_category`
--
ALTER TABLE `foods_category`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `pairings`
--
ALTER TABLE `pairings`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `recipes_genre`
--
ALTER TABLE `recipes_genre`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `recipes_made`
--
ALTER TABLE `recipes_made`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `refrigerator`
--
ALTER TABLE `refrigerator`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `foods`
--
ALTER TABLE `foods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'foods_id', AUTO_INCREMENT=144;

--
-- テーブルの AUTO_INCREMENT `foods_category`
--
ALTER TABLE `foods_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'カテゴリid', AUTO_INCREMENT=13;

--
-- テーブルの AUTO_INCREMENT `pairings`
--
ALTER TABLE `pairings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=358;

--
-- テーブルの AUTO_INCREMENT `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'レシピid', AUTO_INCREMENT=187;

--
-- テーブルの AUTO_INCREMENT `recipes_genre`
--
ALTER TABLE `recipes_genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ジャンルid', AUTO_INCREMENT=10;

--
-- テーブルの AUTO_INCREMENT `recipes_made`
--
ALTER TABLE `recipes_made`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主キー', AUTO_INCREMENT=48;

--
-- テーブルの AUTO_INCREMENT `refrigerator`
--
ALTER TABLE `refrigerator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '冷蔵庫の食材id', AUTO_INCREMENT=85;

--
-- テーブルの AUTO_INCREMENT `user_table`
--
ALTER TABLE `user_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
