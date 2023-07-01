-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Jul 2023 pada 06.34
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokokopijaya`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_menu`
--

CREATE TABLE `kategori_menu` (
  `NAMA_KATEGORI` varchar(25) NOT NULL,
  `FORB` varchar(20) DEFAULT NULL,
  `URUTAN` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori_menu`
--

INSERT INTO `kategori_menu` (`NAMA_KATEGORI`, `FORB`, `URUTAN`) VALUES
('Add - On', 'None', 11),
('Chicken Wings', 'Food', 10),
('Chocolate', 'Drink', 3),
('Coffee Based', 'Drink', 1),
('Main Course', 'Food', 8),
('Milk Based', 'Drink', 4),
('Pastry', 'Food', 7),
('Signature Coffee Milk', 'Drink', 0),
('Snack', 'Food', 9),
('Soda', 'Drink', 2),
('Tea', 'Drink', 5),
('Tradisional', 'Drink', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `memiliki`
--

CREATE TABLE `memiliki` (
  `ID_MEMILIKI` int(20) NOT NULL,
  `NAMA_OUTLET` varchar(20) NOT NULL,
  `NAMA_MENU` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `memiliki`
--

INSERT INTO `memiliki` (`ID_MEMILIKI`, `NAMA_OUTLET`, `NAMA_MENU`) VALUES
(12, 'BEGAWAN', 'Kopi Susu Mantap Jaya'),
(13, 'BEGAWAN', 'Kopi Susu Jaya'),
(14, 'BEGAWAN', 'Kopi Susu Gula Aren'),
(15, 'BEGAWAN', 'Kopi Susu Jaya Oat Milk'),
(16, 'BEGAWAN', 'Tubruk'),
(17, 'BEGAWAN', 'Tubruk Susu'),
(18, 'BEGAWAN', 'Americano'),
(19, 'BEGAWAN', 'Cappucino'),
(20, 'BEGAWAN', 'Caffe Latte'),
(21, 'BEGAWAN', 'Mochacino'),
(22, 'BEGAWAN', 'Coffee'),
(23, 'BEGAWAN', 'Sarsaparilla'),
(24, 'BEGAWAN', 'Blackcurrant'),
(25, 'BEGAWAN', 'Lychee'),
(26, 'BEGAWAN', 'Almond'),
(27, 'BEGAWAN', 'Hazelnut'),
(28, 'BEGAWAN', 'Original'),
(29, 'BEGAWAN', 'Green Tea Latte'),
(30, 'BEGAWAN', 'Thai Tea'),
(31, 'BEGAWAN', 'Rose Tea'),
(32, 'BEGAWAN', 'Chamomile'),
(33, 'BEGAWAN', 'Green Tea Jasmine'),
(34, 'BEGAWAN', 'Black Tea Jasmine'),
(35, 'BEGAWAN', 'Lemon Tea'),
(36, 'BEGAWAN', 'Butterfly Pea Flower'),
(37, 'BEGAWAN', 'Green Tea Lemon Mint'),
(38, 'BEGAWAN', 'Ice Shaken Apple Tea'),
(39, 'BEGAWAN', 'Ice Shaken Peach Tea'),
(40, 'BEGAWAN', 'Beras Kencur'),
(41, 'BEGAWAN', 'Kunir Asem'),
(42, 'BEGAWAN', 'Ginger Ale'),
(43, 'BEGAWAN', 'Danish Choco'),
(44, 'BEGAWAN', 'Danish Vanilla'),
(45, 'BEGAWAN', 'Honey Butter Rice Chicken'),
(46, 'BEGAWAN', 'Penang Curry Chicken'),
(47, 'BEGAWAN', 'Khanpunggi Rice'),
(48, 'BEGAWAN', 'Nasi Uduk Khas Jaya'),
(49, 'BEGAWAN', 'Nasi Goreng Kalio'),
(50, 'BEGAWAN', 'Chicken Spicy Mala'),
(51, 'BEGAWAN', 'Mie Maggie Tsedap'),
(52, 'BEGAWAN', 'Handcut Fries Coffee Sauce'),
(53, 'BEGAWAN', 'Potato Wedges'),
(54, 'BEGAWAN', 'Nachos Pargos'),
(55, 'BEGAWAN', 'Tahu Bakso'),
(56, 'BEGAWAN', 'Gyoza'),
(57, 'BEGAWAN', 'Spring Roll'),
(58, 'BEGAWAN', 'Pop Corn Classic'),
(59, 'BEGAWAN', 'Brownies'),
(60, 'BEGAWAN', 'Chicken Wings Isi 4'),
(61, 'BEGAWAN', 'Chicken Wings Isi 6'),
(62, 'BEGAWAN', 'Chicken Wings Isi 8'),
(63, 'BEGAWAN', 'Air Mineral'),
(64, 'BEGAWAN', 'Extra Nasi'),
(65, 'BEGAWAN', 'Extra Sunny Side Up'),
(66, 'BEGAWAN', 'Extra Saus BBQ'),
(67, 'BEGAWAN', 'Extra Saus Jaya'),
(68, 'BEGAWAN', 'Extra Saus Sambal'),
(69, 'BEGAWAN', 'Espresso'),
(70, 'IJEN', 'Kopi Susu Mantap Jaya'),
(71, 'IJEN', 'Kopi Susu Jaya'),
(72, 'IJEN', 'Kopi Susu Gula Aren'),
(73, 'IJEN', 'Kopi Susu Jaya Oat Milk'),
(74, 'IJEN', 'Tubruk'),
(75, 'IJEN', 'Tubruk Susu'),
(76, 'IJEN', 'Americano'),
(77, 'IJEN', 'Cappucino'),
(78, 'IJEN', 'Caffe Latte'),
(79, 'IJEN', 'Mochacino'),
(80, 'IJEN', 'Coffee'),
(81, 'IJEN', 'Sarsaparilla'),
(82, 'IJEN', 'Blackcurrant'),
(83, 'IJEN', 'Lychee'),
(84, 'IJEN', 'Almond'),
(85, 'IJEN', 'Hazelnut'),
(86, 'IJEN', 'Original'),
(87, 'IJEN', 'Green Tea Latte'),
(88, 'IJEN', 'Thai Tea'),
(89, 'IJEN', 'Rose Tea'),
(90, 'IJEN', 'Chamomile'),
(91, 'IJEN', 'Green Tea Jasmine'),
(92, 'IJEN', 'Black Tea Jasmine'),
(93, 'IJEN', 'Lemon Tea'),
(94, 'IJEN', 'Butterfly Pea Flower'),
(95, 'IJEN', 'Green Tea Lemon Mint'),
(96, 'IJEN', 'Ice Shaken Apple Tea'),
(97, 'IJEN', 'Ice Shaken Peach Tea'),
(98, 'IJEN', 'Beras Kencur'),
(99, 'IJEN', 'Kunir Asem'),
(100, 'IJEN', 'Ginger Ale'),
(101, 'IJEN', 'Handcut Fries Coffee Sauce'),
(102, 'IJEN', 'Potato Wedges'),
(103, 'IJEN', 'Tahu Bakso'),
(104, 'IJEN', 'Gyoza'),
(105, 'IJEN', 'Pop Corn Classic'),
(106, 'IJEN', 'Brownies'),
(107, 'IJEN', 'Chicken Wings Isi 4'),
(108, 'IJEN', 'Chicken Wings Isi 6'),
(109, 'IJEN', 'Chicken Wings Isi 8'),
(110, 'IJEN', 'Air Mineral'),
(111, 'IJEN', 'Extra Nasi'),
(112, 'IJEN', 'Extra Sunny Side Up'),
(113, 'IJEN', 'Extra Saus BBQ'),
(114, 'IJEN', 'Extra Saus Jaya'),
(115, 'IJEN', 'Extra Saus Sambal'),
(116, 'IJEN', 'Espresso'),
(117, 'KEPUNDUNG', 'Kopi Susu Mantap Jaya'),
(118, 'KEPUNDUNG', 'Kopi Susu Jaya'),
(119, 'KEPUNDUNG', 'Kopi Susu Gula Aren'),
(120, 'KEPUNDUNG', 'Kopi Susu Jaya Oat Milk'),
(121, 'KEPUNDUNG', 'Tubruk'),
(122, 'KEPUNDUNG', 'Tubruk Susu'),
(123, 'KEPUNDUNG', 'Americano'),
(124, 'KEPUNDUNG', 'Cappucino'),
(125, 'KEPUNDUNG', 'Caffe Latte'),
(126, 'KEPUNDUNG', 'Mochacino'),
(127, 'KEPUNDUNG', 'Coffee'),
(128, 'KEPUNDUNG', 'Sarsaparilla'),
(129, 'KEPUNDUNG', 'Blackcurrant'),
(130, 'KEPUNDUNG', 'Lychee'),
(131, 'KEPUNDUNG', 'Almond'),
(132, 'KEPUNDUNG', 'Hazelnut'),
(133, 'KEPUNDUNG', 'Original'),
(134, 'KEPUNDUNG', 'Green Tea Latte'),
(135, 'KEPUNDUNG', 'Thai Tea'),
(136, 'KEPUNDUNG', 'Rose Tea'),
(137, 'KEPUNDUNG', 'Chamomile'),
(138, 'KEPUNDUNG', 'Green Tea Jasmine'),
(139, 'KEPUNDUNG', 'Black Tea Jasmine'),
(140, 'KEPUNDUNG', 'Lemon Tea'),
(141, 'KEPUNDUNG', 'Butterfly Pea Flower'),
(142, 'KEPUNDUNG', 'Green Tea Lemon Mint'),
(143, 'KEPUNDUNG', 'Ice Shaken Apple Tea'),
(144, 'KEPUNDUNG', 'Ice Shaken Peach Tea'),
(145, 'KEPUNDUNG', 'Beras Kencur'),
(146, 'KEPUNDUNG', 'Kunir Asem'),
(147, 'KEPUNDUNG', 'Ginger Ale'),
(148, 'KEPUNDUNG', 'Danish Choco'),
(149, 'KEPUNDUNG', 'Danish Vanilla'),
(150, 'KEPUNDUNG', 'Honey Butter Rice Chicken'),
(151, 'KEPUNDUNG', 'Penang Curry Chicken'),
(152, 'KEPUNDUNG', 'Khanpunggi Rice'),
(153, 'KEPUNDUNG', 'Nasi Uduk Khas Jaya'),
(154, 'KEPUNDUNG', 'Nasi Goreng Kalio'),
(155, 'KEPUNDUNG', 'Chicken Spicy Mala'),
(156, 'KEPUNDUNG', 'Mie Maggie Tsedap'),
(157, 'KEPUNDUNG', 'Handcut Fries Coffee Sauce'),
(158, 'KEPUNDUNG', 'Potato Wedges'),
(159, 'KEPUNDUNG', 'Nachos Pargos'),
(160, 'KEPUNDUNG', 'Tahu Bakso'),
(161, 'KEPUNDUNG', 'Gyoza'),
(162, 'KEPUNDUNG', 'Spring Roll'),
(163, 'KEPUNDUNG', 'Pop Corn Classic'),
(164, 'KEPUNDUNG', 'Brownies'),
(165, 'KEPUNDUNG', 'Chicken Wings Isi 4'),
(166, 'KEPUNDUNG', 'Chicken Wings Isi 6'),
(167, 'KEPUNDUNG', 'Chicken Wings Isi 8'),
(168, 'KEPUNDUNG', 'Air Mineral'),
(169, 'KEPUNDUNG', 'Extra Nasi'),
(170, 'KEPUNDUNG', 'Extra Sunny Side Up'),
(171, 'KEPUNDUNG', 'Extra Saus BBQ'),
(172, 'KEPUNDUNG', 'Extra Saus Jaya'),
(173, 'KEPUNDUNG', 'Extra Saus Sambal'),
(174, 'KEPUNDUNG', 'Espresso'),
(175, 'KLOJEN', 'Kopi Susu Mantap Jaya'),
(176, 'KLOJEN', 'Kopi Susu Jaya'),
(177, 'KLOJEN', 'Kopi Susu Gula Aren'),
(178, 'KLOJEN', 'Kopi Susu Jaya Oat Milk'),
(179, 'KLOJEN', 'Tubruk'),
(180, 'KLOJEN', 'Tubruk Susu'),
(181, 'KLOJEN', 'Americano'),
(182, 'KLOJEN', 'Cappucino'),
(183, 'KLOJEN', 'Caffe Latte'),
(184, 'KLOJEN', 'Mochacino'),
(185, 'KLOJEN', 'Coffee'),
(186, 'KLOJEN', 'Sarsaparilla'),
(187, 'KLOJEN', 'Blackcurrant'),
(188, 'KLOJEN', 'Lychee'),
(189, 'KLOJEN', 'Almond'),
(190, 'KLOJEN', 'Hazelnut'),
(191, 'KLOJEN', 'Original'),
(192, 'KLOJEN', 'Green Tea Latte'),
(193, 'KLOJEN', 'Thai Tea'),
(194, 'KLOJEN', 'Rose Tea'),
(195, 'KLOJEN', 'Chamomile'),
(196, 'KLOJEN', 'Green Tea Jasmine'),
(197, 'KLOJEN', 'Black Tea Jasmine'),
(198, 'KLOJEN', 'Lemon Tea'),
(199, 'KLOJEN', 'Butterfly Pea Flower'),
(200, 'KLOJEN', 'Green Tea Lemon Mint'),
(201, 'KLOJEN', 'Ice Shaken Apple Tea'),
(202, 'KLOJEN', 'Ice Shaken Peach Tea'),
(203, 'KLOJEN', 'Beras Kencur'),
(204, 'KLOJEN', 'Kunir Asem'),
(205, 'KLOJEN', 'Ginger Ale'),
(206, 'KLOJEN', 'Handcut Fries Coffee Sauce'),
(207, 'KLOJEN', 'Potato Wedges'),
(208, 'KLOJEN', 'Tahu Bakso'),
(209, 'KLOJEN', 'Gyoza'),
(210, 'KLOJEN', 'Spring Roll'),
(211, 'KLOJEN', 'Pop Corn Classic'),
(212, 'KLOJEN', 'Brownies'),
(213, 'KLOJEN', 'Air Mineral'),
(214, 'KLOJEN', 'Extra Saus BBQ'),
(215, 'KLOJEN', 'Extra Saus Jaya'),
(216, 'KLOJEN', 'Extra Saus Sambal'),
(217, 'KLOJEN', 'Espresso'),
(218, 'MOJOLANGU', 'Kopi Susu Mantap Jaya'),
(219, 'MOJOLANGU', 'Kopi Susu Jaya'),
(220, 'MOJOLANGU', 'Kopi Susu Gula Aren'),
(221, 'MOJOLANGU', 'Kopi Susu Jaya Oat Milk'),
(222, 'MOJOLANGU', 'Coffee'),
(223, 'MOJOLANGU', 'Sarsaparilla'),
(224, 'MOJOLANGU', 'Blackcurrant'),
(225, 'MOJOLANGU', 'Lychee'),
(226, 'MOJOLANGU', 'Almond'),
(227, 'MOJOLANGU', 'Hazelnut'),
(228, 'MOJOLANGU', 'Original'),
(229, 'MOJOLANGU', 'Green Tea Latte'),
(230, 'MOJOLANGU', 'Thai Tea'),
(231, 'MOJOLANGU', 'Handcut Fries Coffee Sauce'),
(232, 'MOJOLANGU', 'Potato Wedges'),
(233, 'MOJOLANGU', 'Tahu Bakso'),
(234, 'MOJOLANGU', 'Gyoza'),
(235, 'SAWOJAJAR', 'Coffee'),
(236, 'SAWOJAJAR', 'Sarsaparilla'),
(237, 'SAWOJAJAR', 'Blackcurrant'),
(238, 'SAWOJAJAR', 'Lychee'),
(239, 'SAWOJAJAR', 'Almond'),
(240, 'SAWOJAJAR', 'Hazelnut'),
(241, 'SAWOJAJAR', 'Original'),
(242, 'SAWOJAJAR', 'Green Tea Latte'),
(243, 'SAWOJAJAR', 'Thai Tea'),
(244, 'SAWOJAJAR', 'Rose Tea'),
(245, 'SAWOJAJAR', 'Beras Kencur'),
(246, 'SAWOJAJAR', 'Kunir Asem'),
(247, 'SAWOJAJAR', 'Ginger Ale'),
(248, 'SAWOJAJAR', 'Air Mineral'),
(249, 'SAWOJAJAR', 'Espresso'),
(250, 'SMOORE', 'Kopi Susu Mantap Jaya'),
(251, 'SMOORE', 'Kopi Susu Jaya'),
(252, 'SMOORE', 'Kopi Susu Gula Aren'),
(253, 'SMOORE', 'Kopi Susu Jaya Oat Milk'),
(254, 'SMOORE', 'Tubruk'),
(255, 'SMOORE', 'Tubruk Susu'),
(256, 'SMOORE', 'Americano'),
(257, 'SMOORE', 'Cappucino'),
(258, 'SMOORE', 'Caffe Latte'),
(259, 'SMOORE', 'Mochacino'),
(260, 'SMOORE', 'Coffee'),
(261, 'SMOORE', 'Sarsaparilla'),
(262, 'SMOORE', 'Blackcurrant'),
(263, 'SMOORE', 'Lychee'),
(264, 'SMOORE', 'Almond'),
(265, 'SMOORE', 'Hazelnut'),
(266, 'SMOORE', 'Original'),
(267, 'SMOORE', 'Green Tea Latte'),
(268, 'SMOORE', 'Thai Tea'),
(269, 'SMOORE', 'Rose Tea'),
(270, 'SMOORE', 'Chamomile'),
(271, 'SMOORE', 'Green Tea Jasmine'),
(272, 'SMOORE', 'Black Tea Jasmine'),
(273, 'SMOORE', 'Lemon Tea'),
(274, 'SMOORE', 'Butterfly Pea Flower'),
(275, 'SMOORE', 'Green Tea Lemon Mint'),
(276, 'SMOORE', 'Ice Shaken Apple Tea'),
(277, 'SMOORE', 'Ice Shaken Peach Tea'),
(278, 'SMOORE', 'Beras Kencur'),
(279, 'SMOORE', 'Kunir Asem'),
(280, 'SMOORE', 'Ginger Ale'),
(281, 'SMOORE', 'Air Mineral'),
(282, 'SMOORE', 'Espresso'),
(283, 'SUKUN', 'Kopi Susu Mantap Jaya'),
(284, 'SUKUN', 'Kopi Susu Jaya'),
(285, 'SUKUN', 'Kopi Susu Gula Aren'),
(286, 'SUKUN', 'Kopi Susu Jaya Oat Milk'),
(287, 'SUKUN', 'Tubruk'),
(288, 'SUKUN', 'Tubruk Susu'),
(289, 'SUKUN', 'Americano'),
(290, 'SUKUN', 'Cappucino'),
(291, 'SUKUN', 'Caffe Latte'),
(292, 'SUKUN', 'Mochacino'),
(293, 'SUKUN', 'Coffee'),
(294, 'SUKUN', 'Sarsaparilla'),
(295, 'SUKUN', 'Blackcurrant'),
(296, 'SUKUN', 'Lychee'),
(297, 'SUKUN', 'Almond'),
(298, 'SUKUN', 'Hazelnut'),
(299, 'SUKUN', 'Original'),
(300, 'SUKUN', 'Green Tea Latte'),
(301, 'SUKUN', 'Thai Tea'),
(302, 'SUKUN', 'Rose Tea'),
(303, 'SUKUN', 'Chamomile'),
(304, 'SUKUN', 'Green Tea Jasmine'),
(305, 'SUKUN', 'Black Tea Jasmine'),
(306, 'SUKUN', 'Lemon Tea'),
(307, 'SUKUN', 'Butterfly Pea Flower'),
(308, 'SUKUN', 'Green Tea Lemon Mint'),
(309, 'SUKUN', 'Ice Shaken Apple Tea'),
(310, 'SUKUN', 'Ice Shaken Peach Tea'),
(311, 'SUKUN', 'Beras Kencur'),
(312, 'SUKUN', 'Kunir Asem'),
(313, 'SUKUN', 'Ginger Ale'),
(314, 'SUKUN', 'Danish Choco'),
(315, 'SUKUN', 'Danish Vanilla'),
(316, 'SUKUN', 'Honey Butter Rice Chicken'),
(317, 'SUKUN', 'Penang Curry Chicken'),
(318, 'SUKUN', 'Khanpunggi Rice'),
(319, 'SUKUN', 'Nasi Uduk Khas Jaya'),
(320, 'SUKUN', 'Nasi Goreng Kalio'),
(321, 'SUKUN', 'Chicken Spicy Mala'),
(322, 'SUKUN', 'Mie Maggie Tsedap'),
(323, 'SUKUN', 'Handcut Fries Coffee Sauce'),
(324, 'SUKUN', 'Potato Wedges'),
(325, 'SUKUN', 'Nachos Pargos'),
(326, 'SUKUN', 'Tahu Bakso'),
(327, 'SUKUN', 'Gyoza'),
(328, 'SUKUN', 'Spring Roll'),
(329, 'SUKUN', 'Pop Corn Classic'),
(330, 'SUKUN', 'Brownies'),
(331, 'SUKUN', 'Chicken Wings Isi 4'),
(332, 'SUKUN', 'Chicken Wings Isi 6'),
(333, 'SUKUN', 'Chicken Wings Isi 8'),
(334, 'SUKUN', 'Air Mineral'),
(335, 'SUKUN', 'Extra Nasi'),
(336, 'SUKUN', 'Extra Sunny Side Up'),
(337, 'SUKUN', 'Extra Saus BBQ'),
(338, 'SUKUN', 'Extra Saus Jaya'),
(339, 'SUKUN', 'Extra Saus Sambal'),
(340, 'SUKUN', 'Espresso');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `NAMA_MENU` varchar(50) NOT NULL,
  `NAMA_KATEGORI` varchar(25) NOT NULL,
  `DESKRIPSI` text DEFAULT NULL,
  `HARGA` int(10) NOT NULL,
  `GAMBAR` varchar(50) NOT NULL,
  `URUTAN` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`NAMA_MENU`, `NAMA_KATEGORI`, `DESKRIPSI`, `HARGA`, `GAMBAR`, `URUTAN`) VALUES
('Air Mineral', 'Add - On', '', 5000, '', 0),
('Almond', 'Chocolate', '', 15000, 'cokelat.jpg', 2),
('Americano', 'Coffee Based', '', 15000, 'americano.jpg', 2),
('Beras Kencur', 'Tradisional', '', 15000, 'beras_kencur.jpg', 0),
('Black Tea Jasmine', 'Tea', '', 15000, 'black_tea.jpg', 2),
('Blackcurrant', 'Soda', '', 15000, 'soda_black.jpg', 2),
('Brownies', 'Snack', '', 10000, '', 7),
('Butterfly Pea Flower', 'Tea', '', 18000, 'butterfly.jpg', 4),
('Caffe Latte', 'Coffee Based', '', 26000, 'coffee_late.jpg', 5),
('Cappucino', 'Coffee Based', '', 26000, 'coffee_late.jpg', 3),
('Chamomile', 'Tea', '', 15000, 'lemon_tea.jpg', 0),
('Chicken Spicy Mala', 'Main Course', '', 30000, '', 5),
('Chicken Wings Isi 4', 'Chicken Wings', '', 20000, 'chicken_wings.JPG', 0),
('Chicken Wings Isi 6', 'Chicken Wings', '', 30000, 'chicken_wings.JPG', 1),
('Chicken Wings Isi 8', 'Chicken Wings', '', 36000, 'chicken_wings.JPG', 2),
('Coffee', 'Soda', '', 15000, 'soda_kopi.jpg', 0),
('Danish Choco', 'Pastry', '', 15000, '', 0),
('Danish Vanilla', 'Pastry', '', 15000, '', 1),
('Espresso', 'Add - On', '', 8000, '', 7),
('Extra Nasi', 'Add - On', '', 5000, '', 1),
('Extra Saus BBQ', 'Add - On', '', 5000, '', 3),
('Extra Saus Jaya', 'Add - On', '', 5000, '', 4),
('Extra Saus Sambal', 'Add - On', '', 5000, '', 6),
('Extra Sunny Side Up', 'Add - On', '', 5000, '', 2),
('Ginger Ale', 'Tradisional', '', 15000, 'ginger_ale.jpg', 2),
('Green Tea Jasmine', 'Tea', '', 15000, 'lemon_tea.jpg', 1),
('Green Tea Latte', 'Milk Based', '', 15000, 'greentea_latte.jpg', 0),
('Green Tea Lemon Mint', 'Tea', '', 18000, 'greentea_lemon_mint.jpg', 5),
('Gyoza', 'Snack', '', 20000, 'gyoza.JPG', 4),
('Handcut Fries Coffee Sauce', 'Snack', '', 18000, 'hand_cut_fries.JPG', 0),
('Hazelnut', 'Chocolate', '', 15000, 'cokelat.jpg', 1),
('Honey Butter Rice Chicken', 'Main Course', '', 32000, '', 0),
('Ice Shaken Apple Tea', 'Tea', '', 18000, 'apple_tea.jpg', 6),
('Ice Shaken Peach Tea', 'Tea', '', 18000, 'peach.jpg', 7),
('Khanpunggi Rice', 'Main Course', '', 32000, '', 2),
('Kopi Susu Gula Aren', 'Signature Coffee Milk', '', 18000, 'kopi_jaya_gula_aren.jpg', 2),
('Kopi Susu Jaya', 'Signature Coffee Milk', 'single shoot espresso', 15000, 'kopi_susu_jaya.jpg', 0),
('Kopi Susu Jaya Oat Milk', 'Signature Coffee Milk', '', 24000, 'kopi_susu_jaya.jpg', 3),
('Kopi Susu Mantap Jaya', 'Signature Coffee Milk', 'double shoot espresso', 15000, 'kopi_susu_jaya.jpg', 1),
('Kunir Asem', 'Tradisional', '', 15000, 'kunir_asam.jpg', 1),
('Lemon Tea', 'Tea', '', 18000, 'lemon_tea.jpg', 3),
('Lychee', 'Soda', '', 15000, 'soda_leci.jpg', 3),
('Mie Maggie Tsedap', 'Main Course', '', 30000, '', 5),
('Mochacino', 'Coffee Based', '', 28000, 'coffee_late.jpg', 4),
('Nachos Pargos', 'Snack', '', 28000, 'nachos_pargos.JPG', 2),
('Nasi Goreng Kalio', 'Main Course', '', 30000, '', 4),
('Nasi Uduk Khas Jaya', 'Main Course', '', 30000, '', 3),
('Original', 'Chocolate', '', 15000, 'cokelat.jpg', 0),
('Penang Curry Chicken', 'Main Course', '', 32000, '', 1),
('Pop Corn Classic', 'Snack', '', 20000, 'popcorn.JPG', 6),
('Potato Wedges', 'Snack', '', 18000, 'potato_wedges.JPG', 1),
('Rose Tea', 'Milk Based', '', 15000, 'rose_tea.jpg', 2),
('Sarsaparilla', 'Soda', '', 15000, 'soda_sarsa.jpg', 1),
('Spring Roll', 'Snack', '', 20000, 'spring_roll.JPG', 5),
('Tahu Bakso', 'Snack', '', 18000, 'tahu_bakso.JPG', 3),
('Thai Tea', 'Milk Based', '', 15000, 'thai_tea.jpg', 1),
('Tubruk', 'Coffee Based', '', 15000, 'minuman_hangat.jpg', 0),
('Tubruk Susu', 'Coffee Based', '', 15000, 'minuman_hangat.jpg', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `outlet`
--

CREATE TABLE `outlet` (
  `NAMA_OUTLET` varchar(20) NOT NULL,
  `LINK_GMAPS` varchar(100) DEFAULT NULL,
  `GAMBAR` varchar(50) NOT NULL,
  `TIPE` varchar(50) NOT NULL,
  `SHOPEEFOOD` varchar(100) NOT NULL,
  `GOFOOD` varchar(100) NOT NULL,
  `GRABFOOD` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `outlet`
--

INSERT INTO `outlet` (`NAMA_OUTLET`, `LINK_GMAPS`, `GAMBAR`, `TIPE`, `SHOPEEFOOD`, `GOFOOD`, `GRABFOOD`) VALUES
('BEGAWAN', 'https://goo.gl/maps/9YinAjYENkj1d7Ua8', 'Begawan.jpg', 'Toko Kopi Jaya', 'https://shopee.co.id/universal-link/now-food/shop/20645769?deep_and_deferred=1&shareChannel=whatsapp', 'https://gofood.link/a/EjafzPf', ''),
('IJEN', 'https://goo.gl/maps/WCXZH97GWZxcyPmUA', 'Ijen.jpg', 'Toko Kopi Jaya', 'https://shopee.co.id/universal-link/now-food/shop/20010442?deep_and_deferred=1&shareChannel=whatsapp', '', ''),
('KEPUNDUNG', 'https://goo.gl/maps/qiuJ9Df9uYoxVD5o6', 'Kepundung.jpg', 'Toko Kopi Jaya', '', 'https://gofood.link/a/HCn6Xwy', ''),
('KLOJEN', 'https://goo.gl/maps/XJV2dxo8f5ZasDw96', 'Klojen.jpg', 'Jaya Bersama dan Melegenda', '', 'https://gofood.link/u/zzRww', ''),
('MOJOLANGU', '', 'Mojolangu.jpg', 'Toko Kopi Jaya', 'https://shopee.co.id/universal-link/now-food/shop/649842?deep_and_deferred=1&shareChannel=whatsapp', 'https://gofood.link/u/9BzrA', ''),
('SAWOJAJAR', 'https://goo.gl/maps/dhHH2K7Bdf5muD6A7', 'Sawojajar.jpg', 'Toko Kopi Jaya', 'https://shopee.co.id/universal-link/now-food/shop/20345516?deep_and_deferred=1&shareChannel=whatsapp', 'https://gofood.link/a/DmhVsiA', ''),
('SMOORE', '', 'Smoore.jpg', 'Toko Kopi Jaya', '', '', ''),
('SUKUN', 'https://goo.gl/maps/pTYNPLLP5yp4LzdQ9', 'Sukun.jpg', 'Toko Kopi Jaya', 'https://shopee.co.id/universal-link/now-food/shop/20998584?deep_and_deferred=1&shareChannel=whatsapp', 'https://gofood.link/a/FWUeRrN', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kategori_menu`
--
ALTER TABLE `kategori_menu`
  ADD PRIMARY KEY (`NAMA_KATEGORI`);

--
-- Indeks untuk tabel `memiliki`
--
ALTER TABLE `memiliki`
  ADD PRIMARY KEY (`ID_MEMILIKI`),
  ADD KEY `FK_MEMILIKI` (`NAMA_OUTLET`),
  ADD KEY `FK_MEMILIKI2` (`NAMA_MENU`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`NAMA_MENU`),
  ADD KEY `FK_DIPUNYAI` (`NAMA_KATEGORI`);

--
-- Indeks untuk tabel `outlet`
--
ALTER TABLE `outlet`
  ADD PRIMARY KEY (`NAMA_OUTLET`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `memiliki`
--
ALTER TABLE `memiliki`
  MODIFY `ID_MEMILIKI` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=341;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `memiliki`
--
ALTER TABLE `memiliki`
  ADD CONSTRAINT `FK_MEMILIKI` FOREIGN KEY (`NAMA_OUTLET`) REFERENCES `outlet` (`NAMA_OUTLET`),
  ADD CONSTRAINT `FK_MEMILIKI2` FOREIGN KEY (`NAMA_MENU`) REFERENCES `menu` (`NAMA_MENU`);

--
-- Ketidakleluasaan untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `FK_DIPUNYAI` FOREIGN KEY (`NAMA_KATEGORI`) REFERENCES `kategori_menu` (`NAMA_KATEGORI`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
