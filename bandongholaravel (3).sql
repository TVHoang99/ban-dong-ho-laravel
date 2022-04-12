-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 25, 2021 lúc 12:38 PM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `bandongholaravel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(1, 'hungnq2609@gmail.com', 'e7415260bdbd9a154edaf04c1a009f58', 'Hung bat', '0932023992', NULL, NULL),
(2, 'hoangkl.th@gmail.com', '0b3bc9ce555f07d127c6da44337e364f', 'Hoang', '0123456789', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand`
--

CREATE TABLE `brand` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brand`
--

INSERT INTO `brand` (`brand_id`, `brand_name`, `brand_slug`, `brand_desc`, `brand_status`, `created_at`, `updated_at`) VALUES
(1, 'Casio', 'casio', 'Casio', 0, NULL, NULL),
(2, 'Citizen', 'citizen', 'Citizen', 0, NULL, NULL),
(3, 'Q&Q', 'q-q', 'Q&Q', 0, NULL, NULL),
(4, 'Smile Kid', 'smile-kid', 'Smild Kid', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_product`
--

CREATE TABLE `category_product` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_category_product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category_product`
--

INSERT INTO `category_product` (`category_id`, `category_name`, `slug_category_product`, `category_desc`, `category_status`, `created_at`, `updated_at`) VALUES
(3, 'Cặp đôi', 'cap-doi', 'Đồng hồ cho cặp đôi', 0, NULL, NULL),
(4, 'Trẻ em', 'tre-em', 'Đồng hồ trẻ em', 0, NULL, NULL),
(5, 'Nữ', 'nu', 'Đồng hồ nữ', 0, NULL, NULL),
(6, 'Nam', 'nam', 'Đồng hồ nam', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_password`, `customer_phone`, `created_at`, `updated_at`) VALUES
(4, 'hungbat', 'nva@gmail.com', '202cb962ac59075b964b07152d234b70', '0123834854', NULL, NULL),
(6, 'hoangtran', 'nva@gmail.com', '202cb962ac59075b964b07152d234b70', '0123456789', NULL, NULL),
(7, 'nguyễn quốc hùng', 'quochung@gmail.com', '2c31627250c215566d1e7b4890d9b934', '0369646269', NULL, NULL),
(8, 'hungbat112', 'aaaadsdsdsa@gmail.com', '2c31627250c215566d1e7b4890d9b934', '0369646269', NULL, NULL),
(9, 'hoangtran', 'nv111b@gmail.com', '0b3bc9ce555f07d127c6da44337e364f', '0123456789', NULL, NULL),
(10, 'hoangtran', 'hoangkl.th@gmail.com', '0b3bc9ce555f07d127c6da44337e364f', '0123456789', NULL, NULL),
(11, 'hoangtran123', 'hoangkl.th@gmail.com', '1820302ee6d5e41ffe02f4c520d1755e', '0123456789', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_total` int(50) NOT NULL,
  `order_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`order_id`, `customer_id`, `shipping_id`, `payment_id`, `order_total`, `order_status`, `order_type`, `order_date`, `created_at`, `updated_at`) VALUES
(1, 4, 3, 3, 150000, 'Đang chờ xử lý', 'chưa giao', '2021-04-22', NULL, NULL),
(2, 4, 3, 4, 150000, 'Đang chờ xử lý', 'chưa giao', '2021-04-22', NULL, NULL),
(3, 4, 3, 5, 150000, 'Đang chờ xử lý', 'chưa giao', '2021-04-25', NULL, NULL),
(5, 4, 4, 7, 50000, 'Đã xử lý', 'đã giao', '2021-04-22', NULL, NULL),
(6, 4, 5, 8, 100000, 'Đang chờ xử lý', 'chưa giao', '2021-04-22', NULL, NULL),
(7, 4, 5, 9, 5000000, 'Đang chờ xử lý', 'chưa giao', '2021-04-22', NULL, NULL),
(8, 4, 6, 10, 110000, 'Đang chờ xử lý', 'chưa giao', '2021-04-25', NULL, NULL),
(9, 4, 8, 11, 5000000, 'Đang chờ xử lý', 'chưa giao', '2021-04-25', NULL, NULL),
(10, 4, 8, 12, 5000000, 'Đang chờ xử lý', 'chưa giao', '2021-04-22', NULL, NULL),
(11, 4, 9, 13, 50000, 'Đã xử lý', 'đang giao', '2021-04-25', NULL, NULL),
(13, 4, 10, 15, 5000000, 'Đã xử lý', 'đang giao', '2021-04-25', NULL, NULL),
(14, 4, 10, 16, 5000000, 'Đã xử lý', 'đang giao', '2021-04-22', NULL, NULL),
(15, 6, 11, 17, 50000, 'Đã xử lý', 'đang giao', '2021-04-25', NULL, NULL),
(16, 6, 12, 18, 150000, 'Đã xử lý', 'đang giao', '2021-04-22', NULL, NULL),
(19, 8, 14, 21, 100000, 'Đã xử lý', 'đang giao', '2021-04-26', NULL, NULL),
(27, 4, 20, 29, 1, 'Đã xử lý', 'đang giao', '2021-05-03', NULL, NULL),
(28, 4, 21, 30, 1, 'Đã xử lý', 'đã giao', '2021-05-03', NULL, NULL),
(29, 4, 22, 31, 12, 'Đang chờ xử lý', 'chưa giao', '2021-05-03', NULL, NULL),
(31, 4, 25, 33, 2, 'Đang chờ xử lý', 'chưa giao', '2021-05-18', NULL, NULL),
(32, 10, 26, 34, 2, 'Đang chờ xử lý', 'chưa giao', '2021-05-19', NULL, NULL),
(33, 10, 27, 35, 2, 'Đang chờ xử lý', 'chưa giao', '2021-05-19', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `order_details_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_sales_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_sales_quantity`, `created_at`, `updated_at`) VALUES
(34, 31, 22, 'Q&Q S399J212Y/S398J212Y', '2119000', 1, NULL, NULL),
(35, 32, 22, 'Q&Q S399J212Y/S398J212Y', '2119000', 1, NULL, NULL),
(36, 33, 22, 'Q&Q S399J212Y/S398J212Y', '2119000', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(50) CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `payment`
--

INSERT INTO `payment` (`payment_id`, `payment_method`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, '1', 'Đang chờ xử lý', NULL, NULL),
(2, '1', 'Đang chờ xử lý', NULL, NULL),
(3, '1', 'Đang chờ xử lý', NULL, NULL),
(4, '1', 'Đang chờ xử lý', NULL, NULL),
(5, '2', 'Đang chờ xử lý', NULL, NULL),
(6, '2', 'Đang chờ xử lý', NULL, NULL),
(7, '2', 'Đang chờ xử lý', NULL, NULL),
(8, '2', 'Đang chờ xử lý', NULL, NULL),
(9, '2', 'Đang chờ xử lý', NULL, NULL),
(10, '2', 'Đang chờ xử lý', NULL, NULL),
(11, '1', 'Đang chờ xử lý', NULL, NULL),
(12, '1', 'Đang chờ xử lý', NULL, NULL),
(13, '2', 'Đang chờ xử lý', NULL, NULL),
(14, '2', 'Đang chờ xử lý', NULL, NULL),
(15, '3', 'Đang chờ xử lý', NULL, NULL),
(16, '2', 'Đang chờ xử lý', NULL, NULL),
(17, '2', 'Đang chờ xử lý', NULL, NULL),
(18, '2', 'Đang chờ xử lý', NULL, NULL),
(19, '1', 'Đang chờ xử lý', NULL, NULL),
(20, '2', 'Đang chờ xử lý', NULL, NULL),
(21, '2', 'Đang chờ xử lý', NULL, NULL),
(22, '2', 'Đang chờ xử lý', NULL, NULL),
(23, '2', 'Đang chờ xử lý', NULL, NULL),
(24, '2', 'Đang chờ xử lý', NULL, NULL),
(25, '2', 'Đang chờ xử lý', NULL, NULL),
(26, '2', 'Đang chờ xử lý', NULL, NULL),
(27, '2', 'Đang chờ xử lý', NULL, NULL),
(28, '2', 'Đang chờ xử lý', NULL, NULL),
(29, '2', 'Đang chờ xử lý', NULL, NULL),
(30, '2', 'Đang chờ xử lý', NULL, NULL),
(31, '1', 'Đang chờ xử lý', NULL, NULL),
(32, '2', 'Đang chờ xử lý', NULL, NULL),
(33, '2', 'Đang chờ xử lý', NULL, NULL),
(34, '2', 'Đang chờ xử lý', NULL, NULL),
(35, '2', 'Đang chờ xử lý', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_number` int(11) DEFAULT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_import_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_slug`, `category_id`, `brand_id`, `product_desc`, `product_content`, `product_number`, `product_price`, `product_import_price`, `product_image`, `product_status`, `created_at`, `updated_at`) VALUES
(1, 'Casio MTP-E321B-1AVDF', 'casio-mtp-e321b-1avdf-nam', 6, 1, 'Đồng hồ Nam Casio MTP-E321B-1AVDF', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 15, '3220000', '1932000', 'casio-mtp-e321b-1avdf-nam-600x600.jpg', 0, NULL, NULL),
(2, 'Casio LTP-E413RL-5ADF', 'casio-ltp-e413rl-5adf-nu', 5, 1, 'Đồng hồ Nữ Casio LTP-E413RL-5ADF', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 12, '2350000', '1410000', 'casio-ltp-e413rl-5adf-nu-600x600.jpg', 0, NULL, NULL),
(9, 'Casio MTP-E172-1AVDF', 'dong-ho-deo-tay/casio-mtp-e172-1avdf', 6, 1, 'Đồng hồ Nam Casio MTP-E172-1AVDF', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 15, '2515000', '1509000', 'casio-mtp-e172-1avdf-nam-600x600.jpg', 0, NULL, NULL),
(10, 'Casio LTP-E145L-5B2DF', 'dong-ho-deo-tay/casio-ltp-e145l-5b2df-nu', 5, 1, 'Đồng hồ Nữ Casio LTP-E145L-5B2DF', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 20, '1645000', '987000', 'casio-ltp-e145l-5b2df-nu-600x600.jpg', 0, NULL, NULL),
(11, 'Citizen BI5096-53L', 'citizen-bi5096-53l-nam', 6, 2, 'Đồng hồ Nam Citizen BI5096-53L', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 23, '4160000', '2496000', 'citizen-bi5096-53l-nam1-600x600.jpg', 0, NULL, NULL),
(12, 'Citizen ER0212-50Y', 'citizen-er0212-50y-nu', 5, 2, 'Đồng hồ Nữ Citizen ER0212-50Y', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 14, '4370000', '2622000', 'citizen-er0212-50y-nu1-600x600.jpg', 0, NULL, NULL),
(13, 'Citizen BI5092-03E', 'citizen-bi5092-03e-nam', 6, 2, 'Đồng hồ Nam Citizen BI5092-03E', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 25, '3530000', '2118000', 'citizen-bi5092-03e-nam1-600x600.jpg', 0, NULL, NULL),
(14, 'Citizen EZ7013-58A', 'citizen-ez7013-58a-nu', 5, 2, 'Đồng hồ Nữ Citizen EZ7013-58A', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 31, '4580000', '2748000', 'citizen-ez7013-58a-nu1-600x600.jpg', 0, NULL, NULL),
(15, 'Smile Kid SL068-01', 'smile-kid-sl068-01-tre-em', 4, 4, 'Đồng hồ trẻ em Smile Kid SL068-01', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 47, '349000', '209000', 'smile-kid-sl068-01-tre-em-1-600x600.jpg', 0, NULL, NULL),
(16, 'Smile Kid SL069-01', 'smile-kid-sl069-01-tre-em', 4, 4, 'Đồng hồ trẻ em Smile Kid SL069-01', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 32, '349000', '209000', 'smile-kid-sl069-01-tre-em-1-600x600.jpg', 0, NULL, NULL),
(17, 'Smile Kid SL065-01', 'smile-kid-sl065-01-tre-em', 4, 4, 'Đồng hồ trẻ em Smile Kid SL065-01', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 27, '349000', '209000', 'smile-kid-sl065-01-tre-em-1-600x600.jpg', 0, NULL, NULL),
(18, 'Smile Kid SL064-02', 'smile-kid-sl064-02-tre-em', 4, 4, 'Đồng hồ trẻ em Smile Kid SL064-02', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 36, '349000', '209000', 'smile-kid-sl064-02-tre-em-1-600x600.jpg', 0, NULL, NULL),
(19, 'Citizen BH3002-03A/EJ6122-08A', 'citizen-bh3002-03a-ej6122-08a', 3, 2, 'Đồng hồ đôi Citizen BH3002-03A/EJ6122-08A', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 19, '7040000', '4928000', 'ava-600x600.jpg', 0, NULL, NULL),
(20, 'Q&Q S392J202Y/S393J202Y', 'q-q-s392j202y-s393j202y-nam-nu', 3, 3, 'Đồng hồ đôi Q&Q S392J202Y/S393J202Y', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 21, '1958000', '1566000', 'qq-s392j202y-s393j202y-nam-nu-1-600x600.jpg', 0, NULL, NULL),
(21, 'Q&Q S399J001Y/S398J001Y', 'q-q-s399j001y-s398j001y-nam-nu', 3, 3, 'Đồng hồ đôi Q&Q S399J001Y/S398J001Y', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 34, '2780000', '2224000', 'qq-s399j001y-s398j001y-nam-nu-600x600.jpg', 0, NULL, NULL),
(22, 'Q&Q S399J212Y/S398J212Y', 'q-q-s399j212y-s398j212y-nam-nu', 3, 3, 'Đồng hồ đôi Q&Q S399J212Y/S398J212Y', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 38, '2119000', '1695000', 'qq-s399j212y-s398j212y-nam-nu-1-600x600.jpg', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shipping`
--

CREATE TABLE `shipping` (
  `shipping_id` int(11) NOT NULL,
  `shipping_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_notes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shipping`
--

INSERT INTO `shipping` (`shipping_id`, `shipping_name`, `shipping_address`, `shipping_phone`, `shipping_email`, `shipping_notes`, `created_at`, `updated_at`) VALUES
(1, 'Hieu truong', '123/123 TPHCM', '0932023992', 'hieutruong@gmail.com', 'Đơn hàng giao trong ngày', NULL, NULL),
(2, 'Hieu truong', 'dasdas', '0932023992', 'hieutruong@gmail.com', 'dasdadas', NULL, NULL),
(3, 'Châu', '123/123 TPHCM', '0932023992', 'chau@gmail.com', 'Dơn hàng giao nhanh', NULL, NULL),
(4, 'Hieu truong', '123/123 TPHCM', '0932023992', 'hieutruong@gmail.com', 'dasdasdas', NULL, NULL),
(5, 'Hoàng Sa Trường Sa', '123/123 TPHCM', '0932023992', 'hieutruong@gmail.com', 'Đơn hàng đặt', NULL, NULL),
(6, 'Hieu truong', '123/123 TPHCM', '0932023992', 'hieutruong@gmail.com', 'dasdasdasdasd', NULL, NULL),
(7, 'aaaaa', 'aaaaaa', '12134229892', 'abc@!gmail.com', 'fwwfqwefwgfwrgvwefbebessfdvsfv', NULL, NULL),
(8, 'aaaaa', 'aaaaaa', '12134229892', 'abc@!gmail.com', 'qeqeqfqfqefqefqefqfqe', NULL, NULL),
(9, 'aaaaa', 'aaaaaa', '12134229892', 'abc@!gmail.com', '1213114r24r24r', NULL, NULL),
(10, 'aaaaa', 'aaaaaa', '12134229892', 'abc@!gmail.com', 'qe13131r1r11r1131', NULL, NULL),
(11, 'aaaaa', 'aaaaaa', '12134229892', 'abc@!gmail.com', '1213124324t35r', NULL, NULL),
(12, 'aaaaa', 'aaaaaa', '12134229892', 'abc@!gmail.com', '1243242wsrgwrgwethetheth', NULL, NULL),
(13, 'nguyễn quốc hùng', 'số 2', '0369646269', 'hungbat@gmail.com', 'test mua hàng', NULL, NULL),
(14, 'nguyễn quốc hùng', 'số 2', '0369646269', 'hungbat@gmail.com', 'sdgfvdsvsd', NULL, NULL),
(15, 'hungbat', 'hanoi1', '0123456789', 'abc131312@gmail.com', '1131f1efwerfwr', NULL, NULL),
(16, 'hungbatgdndgndgnd', 'aaaaaadndgndgndgndn', '0123456789', 'abc1313.fA12@gmail.com', 'pkojojoaalaalalalalalalall1218271837868641318681', NULL, NULL),
(17, 'hungbatgdndgndgnd', 'aaaaaadndgndgndgndn', '0123456789', 'abc1313.fA12@gmail.com', 'addddddddd', NULL, NULL),
(18, 'hungbatgdndgndgnd', 'aaaaaadndgndgndgndn', '0123456789', 'abc131312@gmail.com', 'a', NULL, NULL),
(19, 'hungbatgdndgndgnd', 'aaaaaadndgndgndgndn', '0123456789', 'abc1313.fA12@gmail.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, NULL),
(20, 'hungbatgdndgndgnd', 'aaaaaadndgndgndgndn', '0123456789', 'abc131312@gmail.com', 'xd', NULL, NULL),
(21, 'hungbatgdndgndgnd', 'aaaaaadndgndgndgndn', '0123456789', 'abc1313.fA12@gmail.com', 'adadda', NULL, NULL),
(22, 'hungbeooccho', 'deoobietodau', '01021020120210', 'hungbeooccho@gmail.com', 'nsvnfnvksfvnskfvn213135415', NULL, NULL),
(23, 'hungbeooccho', 'deoobietodau', '0123456789', 'hungbeooccho@gmail.com', 'lorem ipsum', NULL, NULL),
(24, 'hungbatgdndgndgnd', 'aaaaaadndgndgndgndn', '0123456789', 'abc131312@gmail.com', '131541351dsds', NULL, NULL),
(25, 'hungbeooccho', 'aaaaaadndgndgndgndn', '0123456789', 'hungbeooccho@gmail.com', 'lorem ipsum', NULL, NULL),
(26, 'hungbatgdndgndgnd', 'aaaaaadndgndgndgndn', '0123456789', 'abc1313.fA12@gmail.com', '11qqqqqqqqqqqq', NULL, NULL),
(27, 'hungbatgdndgndgnd', 'aaaaaadndgndgndgndn', '0123456789', 'abc131312adaadf.hjh@gmail.com', '11212asasaas', NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Chỉ mục cho bảng `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `customer_id_2` (`customer_id`,`shipping_id`,`payment_id`),
  ADD KEY `shipping_id` (`shipping_id`),
  ADD KEY `payment_id` (`payment_id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_details_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `order_id_2` (`order_id`);

--
-- Chỉ mục cho bảng `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `brand_id` (`brand_id`),
  ADD KEY `brand_id_2` (`brand_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `category_product`
--
ALTER TABLE `category_product`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `shipping`
--
ALTER TABLE `shipping`
  MODIFY `shipping_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`shipping_id`) REFERENCES `shipping` (`shipping_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`payment_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_ibfk_3` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`brand_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category_product` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
