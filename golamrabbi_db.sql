-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2020 at 05:59 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `golamrabbi_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_photo`, `created_at`, `updated_at`) VALUES
(1, 'Men\'s Shopping', '1552056335shirt.jpg', '2019-03-08 08:45:35', '2019-03-08 08:45:35'),
(2, 'Women\'s Fashion', '1552127314thematic1.jpg', '2019-03-09 04:28:34', '2019-03-09 04:28:34'),
(4, 'Jewelry', '1552129906jewelary.jpg', '2019-03-09 05:11:46', '2019-03-09 05:11:46'),
(7, 'Electronics', '1553713020cosmetics.jpg', '2019-03-27 12:57:00', '2019-09-07 12:45:20'),
(8, 'Cosmetics', '1567882424cosmatics.jpg', '2019-09-07 12:53:44', '2019-09-07 12:53:44'),
(9, 'Household', '1567882441household.jpg', '2019-09-07 12:54:01', '2019-09-07 12:54:01'),
(10, 'Kids and babies', '1567882501babys.jpg', '2019-09-07 12:55:01', '2019-09-07 12:55:01'),
(11, 'Sports', '1567882514sports.png', '2019-09-07 12:55:14', '2019-09-07 12:55:14');

-- --------------------------------------------------------

--
-- Table structure for table `category_type`
--

CREATE TABLE `category_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d_addresses`
--

CREATE TABLE `d_addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fullAddress` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `d_addresses`
--

INSERT INTO `d_addresses` (`id`, `name`, `user_id`, `email`, `phone`, `city`, `fullAddress`, `created_at`, `updated_at`, `order_id`) VALUES
(1, 'Golam Rabbi', 1, 'golamrabbi@gmail.com', '1762337526', 'Savar', 'Savar,Dhaka', '2019-03-08 14:22:12', '2019-03-08 14:22:12', 0),
(2, 'kumol', 4, 'kumol@gmail.com', '1762337526', 'Savar', 'Savar,Dhaka', '2019-03-08 15:16:47', '2019-03-08 15:16:47', 0),
(3, 'MH Abid', 5, 'dmabid2050@gmail.com', '01521448076', 'savar, Dhaka', 'khagan bazar,daffodil Road, Binary pathshala 1341\r\nsecond floor.', '2019-03-11 02:42:23', '2019-03-11 02:42:23', 0),
(5, 'asif ahmed', 6, 'asif@gmail.com', '1762337526', 'natore', 'natore, rajshahi', '2019-03-11 11:54:16', '2019-03-11 11:54:16', 0),
(6, 'gs bondhon', 7, 'gs@gmail.com', '176238345873', 'Savar', 'Savar,Dhaka', '2019-03-12 13:01:18', '2019-03-12 13:01:18', 0),
(7, 'jnjj uhuhhhh', 8, 'jjjjjj@gmail.com', '01762337526', 'Savar', 'Savar,Dhaka', '2019-03-19 03:30:23', '2019-03-19 03:30:23', 0),
(8, 'Golam Rabbi', 1, 'golamrabbi@gmail.com', '1762337526', 'Savar', 'Savar,Dhaka', '2019-03-27 13:40:20', '2019-03-27 13:40:20', 0),
(10, 'Golam', 1, 'golamrabbi@gmail.com', '1762337526', 'Savar,update', 'Savar,Dhaka,bangladesh', '2019-04-02 12:45:19', '2019-04-02 14:49:57', 27),
(12, 'golam rabbi', 1, 'golamrabbi@gmail.com', '01762337526', 'Savar', 'saver Dhaka', '2019-04-02 16:26:38', '2019-04-02 16:26:38', 2),
(13, 'test user', 1, 'tes@gmail.com', '01762337526', 'testt', 'test', '2019-04-02 16:40:56', '2019-04-02 16:40:56', 30),
(14, 'opu khan', 11, 'opu@gmail.com', '12345678901', 'natore', 'natore,bangladesh', '2019-04-11 13:47:02', '2019-04-11 13:47:02', 31),
(15, 'parvez', 12, 'parvez@gmail.com', '01762555555', 'savar', 'savar, dhaka', '2019-09-04 08:48:09', '2019-09-04 08:48:09', 32),
(16, 'parvez', 12, 'parvez@gmail.com', '01762555555', 'savar', 'savar, dhaka', '2019-09-04 09:11:57', '2019-09-04 09:11:57', 33),
(17, 'newuser', 13, 'newuser@gmail.com', '01982345678', 'dhaka', 'dhaka,bangladesh', '2019-09-08 05:51:01', '2019-09-08 05:51:01', 34),
(18, 'Golam Rabbi', 1, 'golamrabbi@gmail.com', '1762337526', 'Savar', 'Savar,Dhaka', '2020-04-02 22:56:27', '2020-04-02 22:56:27', 35),
(19, 'Golam Rabbi', 1, 'golamrabbi@gmail.com', '1762337526', 'Savar', 'Savar,Dhaka', '2020-04-02 22:57:02', '2020-04-02 22:57:02', 36),
(20, 'Golam Rabbi', 1, 'golamrabbi@gmail.com', '1762337526', 'Savar', 'Savar,Dhaka', '2020-04-02 23:03:25', '2020-04-02 23:03:25', 37),
(21, 'Golam Rabbi', 1, 'golamrabbi@gmail.com', '1762337526', 'Savar', 'Savar,Dhaka', '2020-04-02 23:14:23', '2020-04-02 23:14:23', 38),
(22, 'Golam Rabbi', 1, 'golamrabbi@gmail.com', '1762337526', 'Savar', 'Savar,Dhaka', '2020-04-02 23:40:43', '2020-04-02 23:40:43', 39);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(42, '2014_10_12_000000_create_users_table', 1),
(43, '2014_10_12_100000_create_password_resets_table', 1),
(44, '2019_02_12_113928_create_products_table', 1),
(45, '2019_02_12_154349_create_types_table', 1),
(46, '2019_02_14_095611_create_categories_table', 1),
(47, '2019_02_14_121312_create_category_type_table', 1),
(48, '2019_02_16_131909_create_sizes_table', 1),
(49, '2019_02_17_172415_create_payments_table', 1),
(50, '2019_02_17_172512_create_orders_table', 2),
(51, '2019_02_19_203433_add_category_id_to_types', 2),
(52, '2019_03_08_172441_create_d_addresses_table', 3),
(53, '2019_03_10_223543_create_order_products_table', 4),
(54, '2019_03_31_202719_add_phone_to_users_table', 5),
(55, '2019_04_02_183716_add_order_id_to_d_addresses_table', 6),
(56, '2019_09_08_063242_add_discount_price_to_products', 7);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `total` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `total`, `status`, `created_at`, `updated_at`) VALUES
(11, 1, '968.00', 'delivered', '2019-03-08 10:14:08', '2019-03-29 14:41:52'),
(12, 2, '1,331.00', 'delivered', '2019-03-08 10:16:00', '2019-04-05 05:09:53'),
(13, 2, '800.00', 'pending', '2019-03-08 10:17:23', '2019-03-08 10:17:23'),
(14, 2, '1,100.00', 'delivered', '2019-03-08 10:49:57', '2019-03-29 14:36:37'),
(15, 1, '1,600.00', 'pending', '2019-03-08 14:22:13', '2019-03-08 14:22:13'),
(16, 4, '800.00', 'pending', '2019-03-08 15:16:48', '2019-03-08 15:16:48'),
(17, 5, '4,433.00', 'pending', '2019-03-11 02:42:23', '2019-03-11 02:42:23'),
(18, 1, '789.00', 'pending', '2019-03-11 09:01:02', '2019-03-11 09:01:02'),
(19, 6, '2,422.00', 'pending', '2019-03-11 11:54:16', '2019-03-11 11:54:16'),
(20, 7, '13,332.00', 'pending', '2019-03-12 13:01:18', '2019-03-12 13:01:18'),
(21, 8, '222.00', 'pending', '2019-03-19 03:30:23', '2019-03-19 03:30:23'),
(22, 1, '800.00', 'pending', '2019-03-27 13:40:20', '2019-03-27 13:40:20'),
(24, 1, '1,600.00', 'pending', '2019-04-02 11:00:15', '2019-04-02 11:00:15'),
(25, 1, '1,600.00', 'pending', '2019-04-02 11:00:58', '2019-04-02 11:00:58'),
(26, 1, '1,600.00', 'pending', '2019-04-02 11:01:34', '2019-04-02 11:01:34'),
(27, 1, '1,600.00', 'pending', '2019-04-02 12:45:20', '2019-04-02 12:45:20'),
(29, 1, '444.00', 'delivered', '2019-04-02 16:26:38', '2019-04-11 13:38:32'),
(30, 1, '800.00', 'delivered', '2019-04-02 16:40:56', '2019-04-05 05:41:34'),
(31, 11, '200.00', 'pending', '2019-04-11 13:47:03', '2019-04-11 13:47:03'),
(32, 12, '670.00', 'pending', '2019-09-04 08:48:09', '2019-09-04 08:48:09'),
(33, 12, '1,145.00', 'pending', '2019-09-04 09:11:57', '2019-09-04 09:11:57'),
(34, 13, '600.00', 'pending', '2019-09-08 05:51:02', '2019-09-08 05:51:02'),
(35, 1, '4,000.00', 'pending', '2020-04-02 22:56:27', '2020-04-02 22:56:27'),
(37, 1, '1,600.00', 'pending', '2020-04-02 23:03:26', '2020-04-02 23:03:26'),
(38, 1, '3,000.00', 'pending', '2020-04-02 23:14:23', '2020-04-02 23:14:23'),
(39, 1, '3,200.00', 'pending', '2020-04-02 23:40:43', '2020-04-02 23:40:43');

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`id`, `order_id`, `product_id`, `qty`, `total`) VALUES
(8, 11, 1, 1, 800),
(9, 12, 2, 1, 300),
(10, 12, 3, 1, 800),
(11, 13, 1, 1, 800),
(12, 14, 1, 1, 800),
(13, 14, 2, 1, 300),
(14, 15, 1, 1, 800),
(15, 15, 3, 1, 800),
(16, 16, 1, 1, 800),
(17, 17, 22, 1, 3333),
(18, 17, 2, 1, 300),
(19, 17, 1, 1, 800),
(20, 18, 9, 1, 444),
(21, 18, 19, 1, 345),
(22, 19, 7, 1, 200),
(23, 19, 10, 1, 2222),
(24, 20, 22, 4, 13332),
(25, 21, 11, 1, 222),
(26, 22, 29, 1, 800),
(28, 24, 3, 1, 800),
(29, 24, 8, 1, 800),
(30, 25, 3, 1, 800),
(31, 25, 8, 1, 800),
(32, 26, 3, 1, 800),
(33, 26, 8, 1, 800),
(34, 27, 3, 1, 800),
(35, 27, 8, 1, 800),
(37, 29, 9, 1, 444),
(38, 30, 3, 1, 800),
(39, 31, 7, 1, 200),
(40, 32, 6, 2, 670),
(41, 33, 3, 1, 800),
(42, 33, 5, 1, 345),
(43, 34, 32, 2, 600),
(44, 35, 3, 5, 4000),
(45, 37, 3, 2, 1600),
(46, 38, 16, 10, 3000),
(47, 39, 3, 1, 800),
(48, 39, 2, 8, 2400);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `product_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_quality` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `product_photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `discount_price` double(8,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `type_id`, `title`, `price`, `quantity`, `product_status`, `product_quality`, `description`, `product_photo`, `created_at`, `updated_at`, `discount_price`) VALUES
(2, 1, 'Design T-shirt', 300.00, 343, 'active', 'hot deals', 'dsfnmdsklfnsklf', '1552056425tshirt2.jpg', '2019-03-08 08:47:05', '2019-04-04 12:21:15', 0.00),
(3, 1, 'Design T-shirt', 800.00, 45, 'active', 'hot deals', 'dfsldakjfsaklfdskfldsjkflhaf', '1552056458tshirt.jpg', '2019-03-08 08:47:38', '2019-04-04 12:21:31', 0.00),
(5, 1, 'Thematic T-shirt', 345.00, 45, 'active', 'hot deals', 'thematic t-shirt', '1552127025thematic2.jpg', '2019-03-09 04:23:45', '2019-04-04 12:21:48', 0.00),
(6, 1, 'text T-shirt', 335.00, 50, 'active', 'hot deals', 'simple text t-shirt', '1552127120nopanin.jpg', '2019-03-09 04:25:20', '2019-04-04 12:23:18', 0.00),
(7, 1, 'solid color T-shirt', 200.00, 33, 'active', 'regular', 'solid color t-shirt', '1552127188solidcolor2.jpg', '2019-03-09 04:26:28', '2019-04-04 12:23:30', 0.00),
(8, 2, 'Burka & Abaya', 800.00, 45, 'active', 'hot deals', 'Burka & Abaya', '1552127411burkha1.jpg', '2019-03-09 04:30:11', '2019-03-09 04:30:11', 0.00),
(9, 2, 'Hijab & Hijab Caps', 444.00, 33, 'active', 'hot deals', 'Hijab & Hijab Caps', '1552127657Hijab&HijabCaps.jpg', '2019-03-09 04:34:17', '2019-03-09 13:35:01', 0.00),
(10, 2, 'Burka & Abaya', 2222.00, 5, 'active', 'hot deals', 'burkha', '1552127774burkh2.jpg', '2019-03-09 04:36:14', '2019-03-09 04:36:14', 0.00),
(12, 2, 'Halal perfumes', 300.00, 45, 'active', 'regular', 'Halal perfumes', '1552128012Halalperfumes.jpg', '2019-03-09 04:40:12', '2019-03-09 04:40:12', 0.00),
(13, 2, 'Burka', 5000.00, 33, 'active', 'hot deals', 'burkha', '1552128123burkha3.jpeg', '2019-03-09 04:42:03', '2019-03-09 04:42:03', 0.00),
(14, 2, 'Burka & Abaya', 5666.00, 45, 'active', 'hot deals', 'burkha', '1552128191burkha4.jpg', '2019-03-09 04:43:11', '2019-03-09 04:43:11', 0.00),
(15, 3, 'Necklace&Pendants', 666.00, 45, 'active', 'hot deals', 'Necklace and Pendants', '1552130057jawlery7.jpg', '2019-03-09 05:14:17', '2019-03-09 05:36:34', 0.00),
(16, 3, 'Finger Ring', 300.00, 343, 'active', 'hot deals', 'Finger ring', '1552130156jawlery6.jpg', '2019-03-09 05:15:56', '2019-03-09 05:15:56', 0.00),
(17, 3, 'Clip and Band', 155.00, 343, 'active', 'regular', 'clip  and band', '1552130285clip2.jpg', '2019-03-09 05:18:05', '2019-03-09 05:18:05', 0.00),
(18, 3, 'Tikli and west chain', 800.00, 25, 'active', 'hot deals', 'Tikli and west chain', '1552130431Tikli_and_ west_chain.jpeg', '2019-03-09 05:20:31', '2019-03-09 05:20:31', 0.00),
(19, 3, 'Finger Ring & Ear ring', 345.00, 25, 'active', 'hot deals', 'finger ring and ear ring', '1552130608jawlery4.jpg', '2019-03-09 05:23:28', '2019-03-09 05:23:28', 0.00),
(20, 3, 'Necklace&Pendants', 800.00, 45, 'active', 'hot deals', 'Necklace and Pendants', '1552130709nackles.jpeg', '2019-03-09 05:25:09', '2019-03-09 05:37:12', 0.00),
(21, 4, 'jeans', 800.00, 45, 'active', 'hot deals', 'pant', '1552132041pants1.jpg', '2019-03-09 05:47:21', '2019-03-09 05:47:21', 0.00),
(22, 4, 'Scratched Jeans', 3333.00, 45, 'active', 'hot deals', 'Scratched Jeans', '1552132171jens2.jpg', '2019-03-09 05:49:31', '2019-03-09 05:49:31', 0.00),
(23, 4, 'formal pant', 1555.00, 25, 'active', 'hot deals', 'formal pant', '1552132222formalpant1.jpg', '2019-03-09 05:50:22', '2019-03-09 05:50:22', 0.00),
(24, 4, 'Jeans', 800.00, 45, 'active', 'hot deals', 'Jeans', '1552132496jeans.jpg', '2019-03-09 05:54:56', '2019-03-09 05:54:56', 0.00),
(27, 4, 'colorful pants', 800.00, 45, 'active', 'hot deals', 'colorful pant', '1553710614pants3.jpg', '2019-03-27 12:16:54', '2019-03-27 12:16:54', 0.00),
(29, 4, 'colorful pants', 800.00, 33, 'active', 'hot deals', 'colorful pant', '1553711237colorPant.jpg', '2019-03-27 12:27:17', '2019-03-27 12:27:17', 0.00),
(30, 1, 'Design', 300.00, 45, 'active', 'hot deals', 'design t-shirts', '1553711539download.jpg', '2019-03-27 12:32:19', '2019-03-27 12:32:19', 0.00),
(32, 4, 'jeans', 300.00, 10, 'active', 'regular', 'discounted products', '1567937436jeans.jpeg', '2019-09-08 04:10:36', '2019-09-08 04:11:03', 50.00),
(33, 1, 't-shirt', 300.00, 19, 'active', 'regular', 'Discount t-shirt', '1567943718tshirt.jpeg', '2019-09-08 05:55:18', '2019-09-08 05:55:18', 80.00),
(34, 1, 't-shirt', 300.00, 12, 'active', 'regular', 'discount product', '1567944120tshirt3.jpg', '2019-09-08 06:02:00', '2019-09-08 06:02:00', 70.00);

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `type_name`, `created_at`, `updated_at`, `category_id`) VALUES
(1, 'T-shirts', '2019-03-08 08:45:51', '2019-03-08 08:45:51', 1),
(2, 'Muslim Fashion', '2019-03-09 04:28:46', '2019-03-09 04:28:46', 2),
(3, 'Jewelry', '2019-03-09 05:10:23', '2019-03-09 05:11:57', 4),
(4, 'Pants', '2019-03-09 05:45:50', '2019-03-09 05:45:50', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `address`, `photo`, `is_active`, `remember_token`, `created_at`, `updated_at`, `phone`) VALUES
(1, 'golamrabbi', 'golamrabbi@gmail.com', '$2y$10$DTIK3IdTSqXN6E2.RNTMvOkID4Zde8DMcaTihpmXRU0r3kRbGnyIe', 'administrator', 'dhaka', '1552244593golamrabbi.jpg', 'active', 'DZsSwy84AH9ohZbv7xRNOPDBBg3Zqp30mxQDYeodFtCCosobxlaUABHVY98m', '2019-03-20 18:00:00', '2019-03-31 14:52:10', '01762337526'),
(10, 'Shahin', 'shahin@gmail.com', '$2y$10$F2FfPlhh1EYvmDVWLT.fl.jKMmYgm4dyrLT3h3U46VEDl.HdTG7Uy', 'moderator', 'Savar,Dhaka', '1553024281shahin.jpg', 'active', NULL, '2019-03-19 13:38:01', '2019-03-31 14:52:26', '01762337526'),
(11, 'opu', 'opu@gmail.com', '$2y$10$2YjEQsuGJjhnRlHvPN0KT.CHjDmvp4KFBaOZYcfSrdD1Y86SfOZgK', NULL, NULL, NULL, NULL, '0yXKxmPTEseNPmrpw46RiA7PGTvafxCbRVMGyZZFZOWD3nV4GvcUeDHvR8hw', '2019-04-11 13:39:19', '2019-04-11 13:39:19', '12345678901'),
(12, 'parvez', 'parvez@gmail.com', '$2y$10$3zGMrzi2yOVxebwCHYYzvuLJLeYDXeq/q9HCUpge0PiU0ixCJnxvq', NULL, NULL, NULL, NULL, NULL, '2019-09-04 08:47:13', '2019-09-04 08:47:13', '01762555555'),
(13, 'newuser', 'newuser@gmail.com', '$2y$10$FgC2UgeDhYJg12K0Vbfh1uhZHCJgqRlTEQwZuCO4qzl9FWHBZBaFa', NULL, NULL, NULL, NULL, 'R70Qlb2fEQ8ekBjlPOSlyrEsS9k2m24YaiVMZJvVk2TM9HEgoV8RoVVu9BbI', '2019-09-08 05:50:29', '2019-09-08 05:50:29', '01982345678');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_type`
--
ALTER TABLE `category_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `d_addresses`
--
ALTER TABLE `d_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `category_type`
--
ALTER TABLE `category_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d_addresses`
--
ALTER TABLE `d_addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
