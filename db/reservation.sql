-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 31 Ara 2020, 13:41:11
-- Sunucu sürümü: 5.7.31
-- PHP Sürümü: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `reservation`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `address` text COLLATE utf8_turkish_ci,
  `phone` varchar(17) COLLATE utf8_turkish_ci DEFAULT NULL,
  `fax` varchar(17) COLLATE utf8_turkish_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `web` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `google_plus` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `mission` longtext COLLATE utf8_turkish_ci,
  `vision` longtext COLLATE utf8_turkish_ci,
  `about_us` longtext COLLATE utf8_turkish_ci,
  `logo` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `bank_account` text COLLATE utf8_turkish_ci,
  `tax_id` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `mersis_id` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `google_analytics` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `map_att` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `map_lat` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `meta_keyword` varchar(160) COLLATE utf8_turkish_ci DEFAULT NULL,
  `meta_description` varchar(260) COLLATE utf8_turkish_ci DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `contact`
--

INSERT INTO `contact` (`id`, `title`, `address`, `phone`, `fax`, `email`, `web`, `facebook`, `twitter`, `google_plus`, `instagram`, `youtube`, `linkedin`, `mission`, `vision`, `about_us`, `logo`, `bank_account`, `tax_id`, `mersis_id`, `google_analytics`, `map_att`, `map_lat`, `meta_keyword`, `meta_description`, `isActive`) VALUES
(1, 'otelli', 'Kadikoy', '05077158109', '#', 'admin@mail.com', 'www.otelli.com', '/kablosukedi', '/kablosukedi', '/kablosukedi', '/kablosukedi', '/kablosukedi', '/kablosukedi', 'miston', 'visyon', 'egitim oteli', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `room`
--

DROP TABLE IF EXISTS `room`;
CREATE TABLE IF NOT EXISTS `room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `detail` text COLLATE utf8_turkish_ci,
  `size` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `room_code` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `default_price` float DEFAULT NULL,
  `room_type_id` int(11) DEFAULT NULL,
  `bed_type` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `bed_count` int(11) DEFAULT NULL,
  `room_capacity` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `rank` int(11) DEFAULT '0',
  `room_properties` varchar(500) COLLATE utf8_turkish_ci DEFAULT NULL,
  `room_extra_services` varchar(500) COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `room`
--

INSERT INTO `room` (`id`, `title`, `detail`, `size`, `room_code`, `default_price`, `room_type_id`, `bed_type`, `bed_count`, `room_capacity`, `isActive`, `rank`, `room_properties`, `room_extra_services`) VALUES
(7, 'süit', '<p>a&ccedil;ıklama</p>\r\n', '50m2', '707', 100, 6, NULL, NULL, 1, 1, 0, '5', '1'),
(4, 'cift kişilik', '', '100m2', '101', 17, 6, NULL, NULL, 1, 1, 2, '5', 'Washington'),
(8, 'Aile Odası', '<p>fd</p>\r\n', '50m2', '303', 250, 11, NULL, NULL, 4, 1, 0, '1;5;6;7', '1;2;3;4');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `room_availability`
--

DROP TABLE IF EXISTS `room_availability`;
CREATE TABLE IF NOT EXISTS `room_availability` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `daily_date` date DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `room_availability`
--

INSERT INTO `room_availability` (`id`, `daily_date`, `room_id`, `status`) VALUES
(1, '2020-12-29', 6, 1),
(2, '2020-12-30', 6, 1),
(4, '2020-12-29', 5, 1),
(5, '2021-01-02', 5, 1),
(6, '2021-01-03', 5, 1),
(7, '2021-01-04', 5, 1),
(8, '2021-01-26', 4, 1),
(9, '2021-01-27', 4, 1),
(10, '2021-01-28', 4, 0),
(11, '2021-01-29', 4, 1),
(12, '2021-01-30', 4, 1),
(13, '2021-01-31', 4, 1),
(15, '2021-01-01', 7, 1),
(16, '2021-01-02', 7, 1),
(17, '2021-01-03', 7, 1),
(18, '2021-01-04', 7, 1),
(19, '2021-01-05', 7, 1),
(20, '2021-01-06', 7, 1),
(21, '2021-01-07', 7, 1),
(22, '2021-01-08', 7, 1),
(23, '2021-01-09', 7, 1),
(24, '2021-01-10', 7, 1),
(25, '2021-01-11', 7, 1),
(26, '2021-01-12', 7, 1),
(27, '2021-01-13', 7, 1),
(28, '2021-01-14', 7, 1),
(29, '2021-01-15', 7, 1),
(30, '2021-01-16', 7, 1),
(31, '2021-01-17', 7, 1),
(32, '2021-01-18', 7, 1),
(33, '2021-01-19', 7, 1),
(34, '2021-01-20', 7, 1),
(35, '2021-01-21', 7, 1),
(36, '2021-01-22', 7, 1),
(37, '2021-01-23', 7, 1),
(38, '2021-01-24', 7, 1),
(39, '2021-01-25', 7, 1),
(40, '2021-01-26', 7, 1),
(41, '2021-01-27', 7, 1),
(42, '2021-01-28', 7, 1),
(43, '2021-01-29', 7, 1),
(44, '2021-01-30', 7, 1),
(45, '2021-01-31', 7, 1),
(47, '2021-01-01', 4, 1),
(48, '2021-01-02', 4, 1),
(49, '2021-01-03', 4, 1),
(50, '2021-01-04', 4, 1),
(51, '2021-01-05', 4, 1),
(52, '2021-01-06', 4, 1),
(53, '2021-01-07', 4, 1),
(54, '2021-01-08', 4, 1),
(55, '2021-01-09', 4, 1),
(56, '2021-01-10', 4, 1),
(57, '2021-01-11', 4, 1),
(58, '2021-01-12', 4, 1),
(59, '2021-01-13', 4, 1),
(60, '2021-01-14', 4, 1),
(61, '2021-01-15', 4, 1),
(62, '2021-01-16', 4, 1),
(63, '2021-01-17', 4, 1),
(64, '2021-01-18', 4, 1),
(65, '2021-01-19', 4, 1),
(66, '2021-01-20', 4, 1),
(67, '2021-01-21', 4, 1),
(68, '2021-01-22', 4, 1),
(69, '2021-01-23', 4, 1),
(70, '2021-01-24', 4, 1),
(71, '2021-01-25', 4, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `room_extra_services`
--

DROP TABLE IF EXISTS `room_extra_services`;
CREATE TABLE IF NOT EXISTS `room_extra_services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `room_extra_services`
--

INSERT INTO `room_extra_services` (`id`, `title`, `icon`, `rank`, `isActive`) VALUES
(1, 'dublex', NULL, NULL, 1),
(2, 'Çift kişilik yatak', NULL, NULL, 1),
(3, 'Banyo', NULL, NULL, 1),
(4, 'Ferah ve geniş', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `room_image`
--

DROP TABLE IF EXISTS `room_image`;
CREATE TABLE IF NOT EXISTS `room_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_id` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isCover` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `room_image`
--

INSERT INTO `room_image` (`id`, `img_id`, `room_id`, `isActive`, `rank`, `isCover`) VALUES
(14, '0a1c9268cbb4de80ab39681d96a3def9.jpg', 4, 1, 0, 1),
(2, '4178794d9fc359251f48f61ff07aacac.jpg', 5, 1, 0, 1),
(3, '41f107ecbe1681688c8e748a40109fec.jpg', 5, 1, 1, 1),
(6, 'bcd2c0c43454ab8e248da3484b5c0ca0.jpg', 5, 1, 0, 1),
(13, '76ddce30034d472e1f60203119700f2f.jpg', 4, 1, 0, 1),
(8, '5c7fe90b92bf71e64b839f9a653d5e68.jpg', 5, 1, 0, 1),
(15, '3e8a07d3a204d33776cad0b0761e1669.jpg', 8, 1, 0, 1),
(11, '88b07fde7bcaaba30f96da1ef3b327c0.jpg', 7, 1, 0, 1),
(12, '880efd9c089e4a7de05ac014ea00e9c9.jpg', 7, 1, 0, 1),
(16, 'ff42d8c7a5b242ba2b147e9a99352873.jpg', 8, 1, 0, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `room_pricing`
--

DROP TABLE IF EXISTS `room_pricing`;
CREATE TABLE IF NOT EXISTS `room_pricing` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `price` double(10,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `room_pricing`
--

INSERT INTO `room_pricing` (`id`, `date`, `room_id`, `price`) VALUES
(40, '2020-12-30', 5, 55.00),
(41, '2021-01-01', 5, 45.00),
(42, '2021-01-02', 5, 45.00),
(43, '2021-01-03', 5, 45.00),
(44, '2021-01-01', 7, 125.00),
(45, '2021-01-02', 7, 125.00),
(46, '2021-01-01', 4, 30.00),
(47, '2021-01-02', 4, 30.00);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `room_properties`
--

DROP TABLE IF EXISTS `room_properties`;
CREATE TABLE IF NOT EXISTS `room_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `rank` int(11) DEFAULT '0',
  `isActive` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `room_properties`
--

INSERT INTO `room_properties` (`id`, `title`, `icon`, `rank`, `isActive`) VALUES
(1, 'Televizyon', 'sdfdghj', 2, 1),
(7, 'Güvenli Dolap', NULL, 0, 1),
(5, 'internet/wifi', NULL, 1, 1),
(6, 'Mutfak', NULL, 4, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `room_type`
--

DROP TABLE IF EXISTS `room_type`;
CREATE TABLE IF NOT EXISTS `room_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `rank` int(11) DEFAULT '0',
  `isActive` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `room_type`
--

INSERT INTO `room_type` (`id`, `title`, `rank`, `isActive`) VALUES
(6, 'kategori4', 4, 1),
(7, 'kategori3', 3, 1),
(8, 'kategori5', 0, 1),
(10, 'kategori2', 1, 1),
(11, 'kategori1', 2, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
