-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 29 Ara 2020, 11:21:38
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
  `title` int(255) DEFAULT NULL,
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `room`
--

INSERT INTO `room` (`id`, `title`, `detail`, `size`, `room_code`, `default_price`, `room_type_id`, `bed_type`, `bed_count`, `room_capacity`, `isActive`, `rank`, `room_properties`, `room_extra_services`) VALUES
(6, 'yok', '', '', '404', 0, 6, NULL, NULL, 1, 1, 2, NULL, NULL),
(4, 'asdfgh', 'werdtfyguıhojlş', '100m2', '101', 17, 8, NULL, NULL, 5, 1, 1, '5', 'Washington'),
(5, 'odam', '', '100m2', '202', 25, 6, NULL, NULL, 1, 0, 0, '4;5', 'Alaska;Delaware');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

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
  `isCover` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `room_image`
--

INSERT INTO `room_image` (`id`, `img_id`, `room_id`, `isActive`, `rank`, `isCover`) VALUES
(1, '50dedc13c2aa999c04c40b121b2cc9f2.jpg', 4, 0, 0, NULL),
(2, '4178794d9fc359251f48f61ff07aacac.jpg', 5, 0, 0, 1),
(3, '41f107ecbe1681688c8e748a40109fec.jpg', 5, 1, 1, 0),
(6, 'bcd2c0c43454ab8e248da3484b5c0ca0.jpg', 5, 1, 0, NULL),
(5, '6e86f50813ebd83ad9b01a57802b98e7.jpg', 4, 1, 0, NULL);

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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `room_properties`
--

INSERT INTO `room_properties` (`id`, `title`, `icon`, `rank`, `isActive`) VALUES
(1, 'asdfg', 'sdfdghj', 2, 0),
(5, 'deneme', NULL, 1, 0),
(6, 'neresi', NULL, 4, 1);

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
(6, 'fdfdfd', 3, 1),
(7, 'asdfgh', 2, 1),
(8, 'mehmet hakim', 5, 1),
(10, 'hayati ttt', 1, 1),
(11, 'hayati', 0, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
