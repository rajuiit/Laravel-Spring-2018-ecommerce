-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 19, 2020 at 12:49 PM
-- Server version: 5.6.47-log
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proconfl_ecommerce`
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
(13, 'Cargo Vessel', '1584269493ugc.jpg', '2020-03-15 04:51:33', '2020-03-15 04:51:33'),
(14, 'Launch', '1584269537ugc.jpg', '2020-03-15 04:52:17', '2020-03-15 04:52:17'),
(15, 'Steamer', '1584269561ugc.jpg', '2020-03-15 04:52:41', '2020-03-15 04:52:41'),
(16, 'Tug Boat', '1584269576ugc.jpg', '2020-03-15 04:52:56', '2020-03-15 04:52:56'),
(17, 'Mother vessel', '1584269591ugc.jpg', '2020-03-15 04:53:11', '2020-03-15 04:53:11'),
(18, 'Vassel', '1585582618banner-2.jpg', '2020-03-30 09:36:58', '2020-03-30 09:36:58');

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
(18, 'ntest', 14, 'ntest@gmail.com', '09876543211', 'savar', 'savar, dhaka , bangladesh', '2019-09-17 11:34:22', '2019-09-17 11:34:22', 35),
(19, 'ritaroy', 11, 'ritaroy158@diu.edu.bd', '01688912137', 'savar', 'savar', '2019-09-18 00:13:42', '2019-09-18 00:13:42', 36),
(20, 'Md. Mahfujur Rahman', 15, 'mrrajuiit@gmail.com', '01827593387', 'Dhaka', 'Savar', '2019-09-18 08:31:24', '2019-09-18 08:31:24', 37),
(21, 'Md. Mahfujur Rahman', 15, 'mrrajuiit@gmail.com', '01827593387', 'Dhaka', 'Savar', '2019-09-18 08:31:34', '2019-09-18 08:31:34', 38),
(22, 'Md. Mahfujur Rahman', 15, 'mrrajuiit@gmail.com', '01827593387', 'Dhaka', 'Savar', '2019-09-18 08:31:40', '2019-09-18 08:31:40', 39),
(23, 'Md. Mahfujur Rahman', 15, 'mrrajuiit@gmail.com', '01827593387', 'Dhaka', 'Savar', '2019-09-18 08:31:44', '2019-09-18 08:31:44', 40),
(24, 'Md. Mahfujur Rahman', 15, 'mrrajuiit@gmail.com', '01827593387', 'Dhaka', 'Savar', '2019-09-18 08:34:04', '2019-09-18 08:34:04', 41),
(25, 'Md. Mahfujur Rahman', 15, 'mrrajuiit@gmail.com', '01827593387', 'Dhaka', 'Savar', '2019-09-18 08:34:10', '2019-09-18 08:34:10', 42),
(26, 'rita roy', 11, 'ritaroy158@diu.edu.bd', '01308042989', 'savar', 'baipail', '2019-10-17 00:07:59', '2019-10-17 00:07:59', 43),
(27, 'Md. Mahfujur Rahman', 16, 'mrrajuiit@gmail.com', '01827593387', 'hgnnddd', 'bbgb', '2019-12-10 10:01:05', '2019-12-10 10:01:05', 44),
(28, 'Md. Mahfujur Rahman', 16, 'mrrajuiit@gmail.com', '01827593387', 'hgnnddd', 'bbgb', '2019-12-10 10:01:05', '2019-12-10 10:01:05', 44),
(29, 'reazul', 17, 'reaz.diu.cse@gmail.com', '01749911888', 'savar', 'savar', '2020-02-25 01:46:59', '2020-02-25 01:46:59', 46),
(30, 'MD. ASHIQUR RAHMAN', 18, 'redit@gmail.com', '01778207719', 'dsasfdfds', 'dadsd', '2020-02-26 12:44:42', '2020-02-26 12:44:42', 47),
(31, 'Msdfafafafa', 19, 'm@gmail.com', '0976', 'dsccd', 'dsfsfsf', '2020-04-02 23:30:40', '2020-04-02 23:30:40', 2),
(32, 'Msdfafafafa', 19, 'm@gmail.com', '0976', 'dsccd', 'dsfsfsf', '2020-04-02 23:31:15', '2020-04-02 23:31:15', 3);

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
(1, 0, '0', 'pending', NULL, NULL),
(2, 19, '40,000.00', 'delivered', '2020-04-02 23:30:40', '2020-04-02 23:42:30');

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
(1, 2, 38, 8, 40000);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('ritaroy158@diu.edu.bd', '$2y$10$YJxiUM65EV/3At9OWlTZE.g9gzuLH2mIrhVzASuYmm9Kaq3rMBnzC', '2019-10-16 23:59:23');

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
  `discount_price` double(8,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `type_id`, `title`, `price`, `quantity`, `product_status`, `product_quality`, `description`, `product_photo`, `created_at`, `updated_at`, `discount_price`) VALUES
(37, 15, 'Bulk Carrier, Bulker', 4000.00, 5, 'active', 'regular', 'A bulk carrier, bulker is a merchant ship specially designed to transport unpackaged bulk cargo, such as grains, coal, ore, steel coils and cement, in its cargo holds. Since the first specialized bulk carrier was built in 1852, economic forces have led to continued development of these ships, resulting in increased size and sophistication. Today\'s bulk carriers are specially designed to maximize capacity, safety, efficiency, and durability.', '15844292091.jpg', '2020-03-17 01:13:29', '2020-03-17 01:13:29', 2.00),
(38, 14, 'Container Vessels', 5000.00, 50, 'active', 'hot deals', 'Container ships emerged during the 1960s when the idea of combining land routes with sea routes came about. Such a decision necessitated vessels that could carry standard size containers. With container ships, the loading and unloading occurs in specially-equipped ports. There are many sizes available, the largest of which are 400 m, and have a capacity over 18,000 TEU’s. These ships travel at very high speeds, with an average speed of 21 knots.', '15844293552.jpg', '2020-03-17 01:15:55', '2020-03-17 01:16:46', 0.00),
(39, 16, 'vasel_element_1', 120.00, 12, 'active', 'hot deals', 'v', '1585582807banner-3.jpg', '2020-03-30 09:40:07', '2020-03-30 09:40:07', 10.00),
(40, 16, 'vasel_element_2', 300.00, 20, 'active', 'hot deals', 'v', '15855829402.jpg', '2020-03-30 09:42:20', '2020-03-30 09:42:20', 20.00);

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
(14, 'Cargo Vessel', '2020-03-17 01:12:23', '2020-03-17 01:12:23', 13),
(15, 'Bulk Carrier', '2020-03-17 01:12:38', '2020-03-17 01:12:38', 14),
(16, 'Vassel', '2020-03-30 09:37:19', '2020-03-30 09:37:19', 18);

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
(1, 'Rabby', 'rabbi@gmail.com', '$2y$10$kct1JxP70FZf92jCob/WL.0oTJy1YPQC.jj/LRagTiRal02gLA6U2', 'administrator', 'dhaka', '15858930341552077196baby-reading.jpg', 'active', 'vriDHwT1ZAASvmdeCVNzckurf1PzbHLyOC3FtYXLBUsVkxz5bfW7uY3tTMzf', '2019-03-20 18:00:00', '2020-04-02 23:51:36', '01832675434'),
(13, 'newuser', 'newuser@gmail.com', '$2y$10$FgC2UgeDhYJg12K0Vbfh1uhZHCJgqRlTEQwZuCO4qzl9FWHBZBaFa', NULL, NULL, NULL, NULL, 'R70Qlb2fEQ8ekBjlPOSlyrEsS9k2m24YaiVMZJvVk2TM9HEgoV8RoVVu9BbI', '2019-09-08 05:50:29', '2019-09-08 05:50:29', '01982345678'),
(14, 'ntest', 'ntest@gmail.com', '$2y$10$ubX93JwElZGr09AXov.1kOVaOhIvuxrDT0PEQTLJSSopIUQylXjjW', NULL, NULL, NULL, NULL, NULL, '2019-09-17 11:33:38', '2019-09-17 11:33:38', '09876543211'),
(15, 'Md. Mahfujur Rahman', 'mrrajuiit@gmail.com', '$2y$10$e5GFC23TCZaDzsNCXhcFC.eskQRVdzTyZTaahOhZWraY8Vo1Q11Xy', NULL, NULL, NULL, NULL, NULL, '2019-09-18 08:30:43', '2019-09-18 08:30:43', '01827593387'),
(17, 'reaz', 'reaz.diu.cse@gmail.com', '$2y$10$RqpJ9CfBiQoeM4OJQr54ReSO4RJnxzhQgI1ZbbSt6p4d8C4QIF1iW', NULL, NULL, NULL, NULL, 'qJcJcuDQou3C613Ioys6EkswLvFT7D8AeuMUPtmF3FrkvpsC7oYYLrPWQdbI', '2020-02-25 01:40:23', '2020-02-25 01:40:23', '01749911888'),
(18, 'MD. ASHIQUR RAHMAN', 'redit@gmail.com', '$2y$10$yUibpnuNjVnZmuczkoUW7OhAF2bxxqMEAAjECZaL5on6W5LRMrpma', NULL, NULL, NULL, NULL, NULL, '2020-02-26 12:43:36', '2020-02-26 12:43:36', '01778207719'),
(19, 'Md. Mahfujur Rahman', 'mrrajuiit2@gmail.com', '$2y$10$eMOrjezMktyM8ZGnR0WMZeUNyOaIhgIk5Q8CEFTssVyObkIguEFqm', NULL, NULL, NULL, NULL, 'RQ8bQCyRM9ntbZJvhJCC0JT35TcSDwa2WUJYCdJ0nlOPFv5PIpdmpEbJazgY', '2020-04-02 22:52:44', '2020-04-02 22:52:44', '01827593387');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `category_type`
--
ALTER TABLE `category_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d_addresses`
--
ALTER TABLE `d_addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
