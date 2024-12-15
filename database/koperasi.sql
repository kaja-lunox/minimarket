-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Jan 2023 pada 10.16
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pet_shop_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart`
--

CREATE TABLE `cart` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `inventory_id` int(30) NOT NULL,
  `harga` varchar(50) NOT NULL,
  `quantity` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `cart`
--

INSERT INTO `cart` (`id`, `client_id`, `inventory_id`, `harga`, `quantity`, `date_created`) VALUES
(5, 1, 0, '0', 2, '2023-01-18 13:49:22'),
(6, 1, 7, '150', 1, '2023-01-19 13:33:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(30) NOT NULL,
  `category` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `category`, `description`, `status`, `date_created`) VALUES
(1, 'Produk lain-lain', 'Tersedia berbagai makanan,minuman dan lain-lain', 1, '2021-06-21 10:17:41'),
(4, 'Perlengkapan Rumah tangga', '&lt;p&gt;Sample Category&lt;/p&gt;', 1, '2021-06-21 16:34:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `clients`
--

CREATE TABLE `clients` (
  `id` int(30) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` text NOT NULL,
  `default_delivery_address` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `clients`
--

INSERT INTO `clients` (`id`, `firstname`, `lastname`, `gender`, `contact`, `email`, `password`, `default_delivery_address`, `date_created`) VALUES
(1, 'John', 'Smith', 'Male', '09123456789', 'jsmith@sample.com', '1254737c076cf867dc53d60a0364f38e', 'Sample Address', '2021-06-21 16:00:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `inventory`
--

CREATE TABLE `inventory` (
  `id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` double NOT NULL,
  `unit` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `size` varchar(250) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `inventory`
--

INSERT INTO `inventory` (`id`, `product_id`, `quantity`, `unit`, `price`, `size`, `date_created`, `date_updated`) VALUES
(2, 1, 20, 'pcs', 10500, 'GRAM', '2021-06-21 13:07:00', '2023-01-19 15:39:02'),
(3, 4, 3, 'pcs', 2190000, '32', '2021-06-21 16:50:37', '2023-01-19 15:15:02'),
(4, 3, 10, 'pack', 18000, 'NONE', '2021-06-21 16:51:12', '2023-01-19 15:42:37'),
(5, 5, 5, 'pcs', 111000, 'CM', '2021-06-21 16:51:35', '2023-01-19 15:02:28'),
(6, 4, 2, 'pcs', 4300000, '43', '2021-06-21 16:51:54', '2023-01-19 15:11:54'),
(8, 6, 10, 'pcs', 129000, 'NONE', '2021-06-22 15:51:13', '2023-01-19 14:52:30'),
(9, 8, 4, 'pcs', 310000, 'CM', '2023-01-19 15:19:20', NULL),
(10, 9, 3, 'unit', 5100000, 'L', '2023-01-19 15:30:03', NULL),
(11, 10, 12, 'pcs', 190000, '800 GR', '2023-01-19 16:04:26', '2023-01-19 16:06:00'),
(12, 10, 10, 'pcs', 140000, '400 GR', '2023-01-19 16:06:24', NULL),
(13, 11, 10, 'pcs', 148000, '908 GR', '2023-01-19 16:12:09', NULL),
(14, 11, 10, 'pcs', 17500, '150 GR', '2023-01-19 16:12:39', NULL),
(15, 12, 109, 'pcs', 140000, '800 GR', '2023-01-19 16:19:22', NULL),
(16, 12, 10, 'pcs', 79000, '400 GR', '2023-01-19 16:20:03', NULL),
(17, 13, 132, 'pcs', 81900, '908 GR', '2023-01-19 16:22:57', NULL),
(18, 13, 10, 'pcs', 41000, '400 GR', '2023-01-19 16:24:00', NULL),
(19, 14, 10, 'pcs', 280000, '800 GR', '2023-01-19 16:26:59', NULL),
(20, 14, 10, 'pcs', 81900, '200 GR', '2023-01-19 16:28:12', NULL),
(21, 15, 100, 'pcs', 10000, 'ISI 5 DONAT', '2023-01-19 16:32:05', NULL),
(22, 15, 100, 'pcs', 20000, 'ISI 10 DONAT', '2023-01-19 16:32:25', NULL),
(23, 16, 100, 'pcs', 9900, 'NONE', '2023-01-23 16:07:23', NULL),
(24, 17, 25, 'pcs', 38800, 'KALENG', '2023-01-23 16:14:29', NULL),
(25, 17, 120, 'pcs', 2500, '50 GRAMM', '2023-01-23 16:14:57', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `delivery_address` text NOT NULL,
  `payment_method` varchar(100) NOT NULL,
  `amount` double NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 0,
  `paid` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_list`
--

CREATE TABLE `order_list` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `size` varchar(20) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `quantity` int(30) NOT NULL,
  `price` double NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `sub_category_id` int(30) NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `product_name`, `description`, `status`, `date_created`) VALUES
(1, 1, 1, 'Piattos Snack Kentang Sapi Panggang', '&lt;p&gt;&lt;span style=&quot;color: rgb(65, 65, 65); font-family: ArialRoundedMT; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;Piattos adalah keripik kentang berbentuk segi enam yang unik dengan tekstur yang tebal dan rasa sapi panggang yang istimewa. Piattos dihasilkan dari kentang pilihan dan bumbu lezat yang akan menjadi kesukaanmu. Rasakan kerenyahan dalam setiap gigitan.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2021-06-21 11:19:31'),
(3, 1, 3, 'Sariroti', '&lt;p&gt;&lt;span style=&quot;color: rgb(65, 65, 65); font-family: ArialRoundedMT; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;Piattos adalah keripik kentang berbentuk segi enam yang unik dengan tekstur yang tebal dan rasa sapi panggang yang istimewa. Piattos dihasilkan dari kentang pilihan dan bumbu lezat yang akan menjadi kesukaanmu. Rasakan kerenyahan dalam setiap gigitan.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2021-06-21 16:48:16'),
(4, 4, 4, 'TV', '&lt;h2 class=&quot;pd-info__title&quot; style=&quot;margin: 16px 0px 0px; padding: 0px 36px 0px 0px; vertical-align: top; font-size: 24px; font-family: SamsungSharpSans, arial, sans-serif; color: rgb(0, 0, 0);&quot;&gt;43&quot; FHD Smart TV T6500 TV merek samsung&lt;/h2&gt;', 1, '2021-06-21 16:49:07'),
(5, 4, 5, 'MASPION Panci', '&lt;h1 style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; word-break: break-word; font-size: 28px; font-family: geomanistmedium, sans-serif; color: rgb(18, 18, 18); background-color: rgb(255, 255, 255);&quot;&gt;MASPION Panci Dutch Oven 24cm PCDO24&lt;/h1&gt;', 1, '2021-06-21 16:50:11'),
(6, 4, 4, 'Setrika maspion', '&lt;h1 style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; word-break: break-word; font-size: 28px; font-family: geomanistmedium, sans-serif; color: rgb(18, 18, 18); background-color: rgb(255, 255, 255);&quot;&gt;MASPION Setrika HA-110&lt;/h1&gt;', 1, '2021-06-22 15:50:16'),
(8, 4, 5, 'penggorengan', '&lt;p&gt;&lt;span style=&quot;color: rgba(0, 0, 0, 0.8); font-family: Roboto, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, 文泉驛正黑, &amp;quot;WenQuanYi Zen Hei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;儷黑 Pro&amp;quot;, &amp;quot;LiHei Pro&amp;quot;, &amp;quot;Heiti TC&amp;quot;, 微軟正黑體, &amp;quot;Microsoft JhengHei UI&amp;quot;, &amp;quot;Microsoft JhengHei&amp;quot;, sans-serif; font-size: 20px; background-color: rgb(255, 255, 255);&quot;&gt;Cypruz Kuali Wok Alum 3mm Induksi Marble 30cm KI-0645&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2023-01-19 15:18:50'),
(9, 4, 4, 'Kulkas 2 pintu', '&lt;h1 class=&quot;css-1320e6c&quot; data-testid=&quot;lblPDPDetailProductName&quot; style=&quot;box-sizing: inherit; font-size: 1.28571rem; margin-right: 0px; margin-bottom: 4px; margin-left: 0px; font-weight: 800; line-height: 24px; word-break: break-word; font-family: &amp;quot;Open Sauce One&amp;quot;, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;KULKAS LG 2 PIKULKAS LG 2 PINTU 260 L PREMIUM DARK SILVER INVERTER 272SQCB 272 SQCB&lt;/h1&gt;&lt;ul data-testid=&quot;lblPDPInfoProduk&quot; class=&quot;css-1ijyj3z eytdjj02&quot; style=&quot;box-sizing: inherit; display: flex; flex-flow: column wrap; height: 96px; margin-bottom: -4px; padding: 0px; color: rgba(0, 0, 0, 0.54); font-family: &amp;quot;Open Sauce One&amp;quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;li class=&quot;css-1dmo88g&quot; style=&quot;box-sizing: inherit; max-width: 100%; overflow: hidden; text-overflow: ellipsis; white-space: nowrap; margin: 0px 12px 4px 0px; padding: 0px; list-style-type: none; color: var(--N700,rgba(49,53,59,0.96)); font-size: 1rem; line-height: 20px;&quot;&gt;&lt;br&gt;&lt;/li&gt;&lt;/ul&gt;&lt;div class=&quot;css-1k1relq&quot; style=&quot;box-sizing: inherit; margin-top: 12px; font-size: 14px; line-height: 20px; color: var(--N700,rgba(49,53,59,0.96)); font-family: &amp;quot;Open Sauce One&amp;quot;, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span class=&quot;css-11oczh8 eytdjj00&quot; style=&quot;box-sizing: inherit; display: contents; overflow: hidden; max-height: 160px;&quot;&gt;&lt;span class=&quot;css-17zm3l eytdjj01&quot; style=&quot;box-sizing: inherit; display: -webkit-box; -webkit-line-clamp: 8; -webkit-box-orient: vertical; text-overflow: ellipsis; overflow: hidden; word-break: break-word;&quot;&gt;&lt;div data-testid=&quot;lblPDPDescriptionProduk&quot; style=&quot;box-sizing: inherit;&quot;&gt;Inverter Linear Compressor&lt;br style=&quot;box-sizing: inherit;&quot;&gt;Door Cooling+&trade;&lt;br style=&quot;box-sizing: inherit;&quot;&gt;Multi Air Flow&lt;br style=&quot;box-sizing: inherit;&quot;&gt;Pull Out Tray&lt;br style=&quot;box-sizing: inherit;&quot;&gt;LED Lighting&lt;br style=&quot;box-sizing: inherit;&quot;&gt;Moving Ice Maker&lt;br style=&quot;box-sizing: inherit;&quot;&gt;inverter LG garansi 10thn&lt;br style=&quot;box-sizing: inherit;&quot;&gt;&lt;/div&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;h1 class=&quot;css-1320e6c&quot; data-testid=&quot;lblPDPDetailProductName&quot; style=&quot;box-sizing: inherit; font-size: 1.28571rem; margin-right: 0px; margin-bottom: 4px; margin-left: 0px; font-weight: 800; line-height: 24px; word-break: break-word; font-family: &amp;quot;Open Sauce One&amp;quot;, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;color: var(--N700,rgba(49,53,59,0.96)); font-size: 14px; font-weight: 400;&quot;&gt;daya 50w&lt;/span&gt;NTU 260 L PREMIUM DARK SILVER INVERTER 272SQCB 272 SQCB&lt;/h1&gt;', 1, '2023-01-19 15:29:13'),
(10, 1, 7, 'Nutrilon Royal 4 ', '&lt;p&gt;&lt;span style=&quot;color: rgba(0, 0, 0, 0.8); font-family: Roboto, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, 文泉驛正黑, &amp;quot;WenQuanYi Zen Hei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;儷黑 Pro&amp;quot;, &amp;quot;LiHei Pro&amp;quot;, &amp;quot;Heiti TC&amp;quot;, 微軟正黑體, &amp;quot;Microsoft JhengHei UI&amp;quot;, &amp;quot;Microsoft JhengHei&amp;quot;, sans-serif; font-size: 20px; background-color: rgb(255, 255, 255);&quot;&gt;Nutrilon Royal 4 Actiduobio Madu Tin 800&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgba(0, 0, 0, 0.8); font-family: Roboto, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, 文泉驛正黑, &amp;quot;WenQuanYi Zen Hei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;儷黑 Pro&amp;quot;, &amp;quot;LiHei Pro&amp;quot;, &amp;quot;Heiti TC&amp;quot;, 微軟正黑體, &amp;quot;Microsoft JhengHei UI&amp;quot;, &amp;quot;Microsoft JhengHei&amp;quot;, sans-serif; font-size: 14px; white-space: pre-wrap; background-color: rgb(255, 255, 255);&quot;&gt;Susu anak anak yang baik untuk kesehatan buah hati anda  Aman di konsumsi  dari  Brand terpercaya di indonesia&lt;/span&gt;&lt;span style=&quot;color: rgba(0, 0, 0, 0.8); font-family: Roboto, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, 文泉驛正黑, &amp;quot;WenQuanYi Zen Hei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;儷黑 Pro&amp;quot;, &amp;quot;LiHei Pro&amp;quot;, &amp;quot;Heiti TC&amp;quot;, 微軟正黑體, &amp;quot;Microsoft JhengHei UI&amp;quot;, &amp;quot;Microsoft JhengHei&amp;quot;, sans-serif; font-size: 20px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2023-01-19 16:03:13'),
(11, 1, 1, 'Monde Butter Cookies', '&lt;p&gt;&lt;span style=&quot;color: rgba(0, 0, 0, 0.8); font-family: Roboto, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, 文泉驛正黑, &amp;quot;WenQuanYi Zen Hei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;儷黑 Pro&amp;quot;, &amp;quot;LiHei Pro&amp;quot;, &amp;quot;Heiti TC&amp;quot;, 微軟正黑體, &amp;quot;Microsoft JhengHei UI&amp;quot;, &amp;quot;Microsoft JhengHei&amp;quot;, sans-serif; font-size: 14px; white-space: pre-wrap; background-color: rgb(255, 255, 255);&quot;&gt;Monde Butter Cookies dibuat dari bahan-bahan pilihan dan bermutu tinggi dengan cita rasa yang nikmat dan harum. Warnai saat bersantai anda dengan kelezatannya.\r\n\r\nMondemart Official Shop adalah akun resmi dari Monde dan Nissin Biscuit Indonesia&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2023-01-19 16:10:41'),
(12, 1, 7, 'bebelac', '&lt;p&gt;&lt;span style=&quot;color: rgba(0, 0, 0, 0.8); font-family: Roboto, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, 文泉驛正黑, &amp;quot;WenQuanYi Zen Hei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;儷黑 Pro&amp;quot;, &amp;quot;LiHei Pro&amp;quot;, &amp;quot;Heiti TC&amp;quot;, 微軟正黑體, &amp;quot;Microsoft JhengHei UI&amp;quot;, &amp;quot;Microsoft JhengHei&amp;quot;, sans-serif; font-size: 14px; white-space: pre-wrap; background-color: rgb(255, 255, 255);&quot;&gt;Untuk nutrisi si Kecil, pilih yang sudah pasti dan terpercaya! Bebelac 3, susu pertumbuhan dengan nutrisi tepat, dukung Happy Tummy, Happy Brain, Happy Heart.? Nutrisi Tepat: Dengan formulasi unik, FOS:GOS 1:9, minyak ikan yang ditingkatkan, Omega 3 &amp;amp; 6, dan 13 Vitamin &amp;amp; 9 Mineral\r\n? Lebih lezat dengan berbagai pilihan rasa favorit si kecil: Vanila &amp;amp; Madu \r\n? Susu Pertumbuhan Anak: Usia 1-3 tahun \r\n? Nutrisi tepat Bebelac dan stimulasi Ibu, dukung si kecil tumbuh hebat dengan pencernaan yang baik, akal yang kreatif, dan hati yang besar.&quot; \r\n\r\nBebelac 3 - Susu pertumbuhan untuk anak usia 1-3 tahun \r\nDukung si Kecil Tumbuh Hebat, dengan Happy Tummy, Happy Brain, Happy Heart. \r\n\r\nHebatnya Bebelac 3 dilengkapi dengan:\r\n- SATU-SATUNYA kombinasi serat yang teruji klinis dengan FOS:GOS 1:9. Dukung pencernaan yang baik dengan pemberian nutrisi yang tepat dan kombinasi serat yang cukup\r\n- Minyak ikan Omega 3, Omega 6 \r\nBebelac dibuat dengan minyak ikan (0.33%) dan mengandung Asam a-linolenat (Omega 3) 83 mg/saji dan Asam linoleat (Omega 6) 1021 mg/saji. \r\n-14 Vitamin &amp;amp; 9 Mineral \r\nDengan kandungan Zat Besi, Zinc, Iodium, Vitamin A, dan Kalsium untuk pertumbuhan yang optimal. &lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2023-01-19 16:17:51'),
(13, 1, 7, 'SGM 3', '&lt;p&gt;&lt;span style=&quot;color: rgba(0, 0, 0, 0.8); font-family: Roboto, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, 文泉驛正黑, &amp;quot;WenQuanYi Zen Hei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;儷黑 Pro&amp;quot;, &amp;quot;LiHei Pro&amp;quot;, &amp;quot;Heiti TC&amp;quot;, 微軟正黑體, &amp;quot;Microsoft JhengHei UI&amp;quot;, &amp;quot;Microsoft JhengHei&amp;quot;, sans-serif; font-size: 14px; white-space: pre-wrap; background-color: rgb(255, 255, 255);&quot;&gt;Susu Anak Anak Yang Baik Untuk Kesehatan Buah Hati Anda Aman Di Konsumsi Dari Brand Terpercaya Di Indonesia&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2023-01-19 16:22:21'),
(14, 1, 7, 'Chil Kit', '&lt;p class=&quot;irIKAp&quot; style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, 文泉驛正黑, &amp;quot;WenQuanYi Zen Hei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;儷黑 Pro&amp;quot;, &amp;quot;LiHei Pro&amp;quot;, &amp;quot;Heiti TC&amp;quot;, 微軟正黑體, &amp;quot;Microsoft JhengHei UI&amp;quot;, &amp;quot;Microsoft JhengHei&amp;quot;, sans-serif; font-size: 14px; white-space: pre-wrap; background-color: rgb(255, 255, 255);&quot;&gt;Morinaga Chil Kid Platinum Vanila 200g Susu Formula Pertumbuhan Anak Usia 1-3 Tahun&lt;/p&gt;&lt;p class=&quot;irIKAp&quot; style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, 文泉驛正黑, &amp;quot;WenQuanYi Zen Hei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;儷黑 Pro&amp;quot;, &amp;quot;LiHei Pro&amp;quot;, &amp;quot;Heiti TC&amp;quot;, 微軟正黑體, &amp;quot;Microsoft JhengHei UI&amp;quot;, &amp;quot;Microsoft JhengHei&amp;quot;, sans-serif; font-size: 14px; white-space: pre-wrap; background-color: rgb(255, 255, 255);&quot;&gt;\r\n&lt;/p&gt;&lt;p class=&quot;irIKAp&quot; style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, 文泉驛正黑, &amp;quot;WenQuanYi Zen Hei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;儷黑 Pro&amp;quot;, &amp;quot;LiHei Pro&amp;quot;, &amp;quot;Heiti TC&amp;quot;, 微軟正黑體, &amp;quot;Microsoft JhengHei UI&amp;quot;, &amp;quot;Microsoft JhengHei&amp;quot;, sans-serif; font-size: 14px; white-space: pre-wrap; background-color: rgb(255, 255, 255);&quot;&gt;Morinaga Chil Kid Platinum MoriCare+ Triple Bifidus susu pertumbuhan untuk Si Kecil di usia 1 &ndash; 3 tahun. Memiliki Inovasi Unggulan yang mengandung Moricare Zigma berupa sinergi nutrisi antara faktor Kecerdasan Multitalenta (alfa laktalbumin, AA DHA, Kolin, Fosfolipid, Zat Besi, Omega 3 &amp;amp; Omega 6), faktor Pertahanan Tubuh (Triple Bifidus, Nukleotida &amp;amp; Serat GOS) dan faktor Tumbuh Kembang Optimal (Magnesium, Vitamin D, Kalsium, Vitamin &amp;amp; Mineral) dengan Formula Disempurnakan untuk mendukung Si Kecil meraih mimpi besarnya sejak dini karena #WaktuTakBisaKembali.&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;', 1, '2023-01-19 16:26:24'),
(15, 1, 3, 'donat', '&lt;p&gt;Tersedia berbagai macam donat pilihan&lt;/p&gt;', 1, '2023-01-19 16:30:34'),
(16, 1, 1, 'Kacang SUKRO', '&lt;h1 title=&quot;Kacang SUKRO original enak kacang atom tanpa pemutih (makanan ringan snack)&quot; aria-label=&quot;Kacang SUKRO original enak kacang atom tanpa pemutih (makanan ringan snack)&quot; class=&quot;c-main-product__title u-txt--large&quot; style=&quot;margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; font-size: 24px; word-break: break-word; color: rgb(51, 51, 51); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;Kacang SUKRO original enak kacang atom tanpa pemutih (makanan ringan snack)&lt;/h1&gt;', 1, '2023-01-23 16:06:32'),
(17, 1, 1, 'wafer nabati', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;wafer nabati crean keju dan cream coklat 50gram dan nabagti kaleng&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2023-01-23 16:11:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sales`
--

CREATE TABLE `sales` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `total_amount` double NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sizes`
--

CREATE TABLE `sizes` (
  `id` int(30) NOT NULL,
  `size` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sizes`
--

INSERT INTO `sizes` (`id`, `size`) VALUES
(1, 'xs'),
(2, 's'),
(3, 'm'),
(4, 'l'),
(5, 'xl'),
(6, 'None'),
(7, 'cm'),
(8, '43'),
(9, '32'),
(10, 'gram'),
(11, '400 gr'),
(12, '800 gr'),
(13, '908 gr'),
(14, '150 gr'),
(15, '500 gr'),
(16, '200 gr'),
(18, 'isi 5 donat'),
(19, 'isi 10 donat'),
(22, 'Kaleng'),
(23, '50 gramm');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(30) NOT NULL,
  `parent_id` int(30) NOT NULL,
  `sub_category` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `parent_id`, `sub_category`, `description`, `status`, `date_created`) VALUES
(1, 1, 'snack', '&lt;p&gt;Sample only&lt;/p&gt;', 1, '2021-06-21 10:58:32'),
(3, 1, 'roti', '&lt;p&gt;Sample&lt;/p&gt;', 1, '2021-06-21 16:34:59'),
(4, 4, 'electronik', '&lt;p&gt;Sample&amp;nbsp;&lt;/p&gt;', 1, '2021-06-21 16:35:26'),
(5, 4, 'alat masak', '&lt;p&gt;Menyediakan perlangkapan untuk memasak&lt;/p&gt;', 1, '2021-06-21 16:35:36'),
(6, 7, 'aqua', '&lt;p&gt;tersedia berbagai air minum kemasan&lt;/p&gt;', 1, '2023-01-18 13:42:19'),
(7, 1, 'susu', '&lt;p&gt;tersedia susu&lt;/p&gt;', 1, '2023-01-19 13:32:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Mini market Koperasi RSPJ'),
(6, 'short_name', 'Mini Market Koperasi RSPJ'),
(11, 'logo', 'mini.jfif'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'mini.jfif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1624240500_avatar.png', NULL, 1, '2021-01-20 14:02:37', '2021-06-21 09:55:07'),
(4, 'John', 'Smith', 'jsmith', '1254737c076cf867dc53d60a0364f38e', NULL, NULL, 0, '2021-06-19 08:36:09', '2021-06-19 10:53:12'),
(5, 'Claire', 'Blake', 'cblake', '4744ddea876b11dcb1d169fadf494418', NULL, NULL, 0, '2021-06-19 10:01:51', '2021-06-19 12:03:23');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
