-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2021 at 08:59 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.3.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_country` text NOT NULL,
  `admin_job` varchar(255) NOT NULL,
  `admin_about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_contact`, `admin_country`, `admin_job`, `admin_about`) VALUES
(1, 'Shishir Sarder', 'admin.ecom@gmail.com', 'admin123', 'mee.jpg', '1723795078', 'Bangladesh', 'Web Developer', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cat_desc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_desc`) VALUES
(1, 'Điện thoại', ''),
(2, 'Laptop', ''),
(3, 'Tablet', '');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` varchar(100) NOT NULL,
  `customer_city` varchar(100) NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`) VALUES
(4, 'Shishir Sarder', 'shishir.srdr16@gmail.com', '123456', 'Bangladesh', 'Savar', '01723795078', 'RTH', 'mee.jpg', '::1'),
(5, 'Jarin Ritu', 'jarin.ritu@gmail.com', 'jarin123', 'Bangladesh', 'Dhaka', '01841795079', 'Fajilatunnessa Hall', 'ritu.jpg', '2'),
(7, 'Maruf Hossain', 'maruf@gmail.com', '12345', 'Bangladesh', 'Savar', '01723795045', 'RTH', 'sam.jpg', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` varchar(100) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `size`, `order_date`, `order_status`) VALUES
(3, 7, 11190000, 1348284012, 1, '', '2020-12-29 08:39:39', 'pending'),
(4, 7, 12990000, 1266037982, 1, '', '2020-12-29 19:50:52', 'pending'),
(5, 7, 38970000, 1391479917, 3, '', '2020-12-29 19:51:41', 'pending'),
(6, 7, 77940000, 280113251, 6, '', '2020-12-29 19:57:14', 'pending'),
(7, 7, 62970000, 50378523, 3, '', '2020-12-29 20:06:13', 'pending'),
(8, 7, 25980000, 1086801595, 2, '', '2020-12-30 00:40:43', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` varchar(100) NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(3, 358702546, 120, 'UBL/Omni Paisa', 32423423, 3432535, '2018-10-02'),
(4, 358702546, 248, 'Bank Code', 12345, 32145656, '2018-10-03'),
(6, 1998298965, 98, 'Bank Code', 4345654, 4564567, '2018-10-08'),
(7, 624563821, 100, 'Uestern Union', 4235325, 43534646, '2018-10-05'),
(8, 1862962682, 300, 'Bank Code', 2147483647, 3423424, '2018-10-07'),
(9, 1650288053, 360, 'Bank Code', 646554, 0, '2018-10-11'),
(10, 696263413, 100, 'Uestern Union', 21234325, 0, '2018-10-16'),
(11, 679423457, 68, 'Bank Code', 324235435, 2535345, '2018-10-01');

-- --------------------------------------------------------

--
-- Table structure for table `pending_orders`
--

CREATE TABLE `pending_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `product_id` int(10) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` varchar(100) NOT NULL,
  `order_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `size`, `order_status`) VALUES
(1, 5, 679423457, 4, 2, 'medium', 'Complete'),
(2, 5, 679423457, 10, 1, 'large', 'pending'),
(3, 7, 1348284012, 18, 1, '', 'pending'),
(4, 7, 1266037982, 20, 1, '', 'pending'),
(5, 7, 1391479917, 20, 3, '', 'pending'),
(6, 7, 280113251, 20, 6, '', 'pending'),
(7, 7, 50378523, 19, 3, '', 'pending'),
(8, 7, 1086801595, 20, 2, '', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `add_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `product_img1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `product_img2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `product_img3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `product_price` int(20) NOT NULL,
  `product_desc` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `product_keywords` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `add_date`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_desc`, `product_keywords`) VALUES
(14, 1, 1, '2021-01-03 07:56:47', 'Điện thoại iPhone 12 64GB Chính Hãng', 'iphone-12-do-new-600x600-600x600.jpg', 'iphone-12-blue-1020x680-org.jpg', 'iphone-12-do-1-org.jpg', 22990000, 'Điện thoại IPhone 12', 'IPhone'),
(15, 2, 1, '2021-01-03 07:51:54', 'Điện thoại Samsung Galaxy 3GB/32GB', 'samsung-galaxy-a02s-600x600-600x600.jpg', 'samsung-galaxy-a02s-trang-1020x680-org.jpg', 'samsung-galaxy-a02s-xanh-duong-1-org.jpg', 3190000, 'Màn hình: PLS TFT LCD, 6.5\", HD+ </br>\r\nHệ điều hành: Android 10 </br>\r\nCamera sau: Chính 13 MP & Phụ 2 MP, 2 MP </br>\r\nCamera trước: 5 MP </br>\r\nCPU: Snapdragon 450 8 nhân </br>\r\nRAM: 3 GB </br>\r\nBộ nhớ trong: 32 GB </br>\r\nThẻ nhớ: MicroSD, hỗ trợ tối đa 1 TB </br>\r\nThẻ SIM: 2 Nano SIM, Hỗ trợ 4G,Vietnamobile siêu sim (5GB/ngày)', 'SamSung'),
(16, 3, 1, '2021-01-03 07:51:24', 'Điện thoại OPPO Find X2 12GB/256 GB', 'oppo-find-x2-blue-600x600-600x600.jpg', 'oppo-find-x2-den-1-org.jpg', 'oppo-find-x2-den-4-org.jpg', 19990000, 'Màn hình: AMOLED, 6.78\", Quad HD+ (2K+) </br>\r\nHệ điều hành: Android 10 </br>\r\nCamera sau: Chính 48 MP & Phụ 13 MP, 12 MP </br>\r\nCamera trước: 32 MP </br>\r\nCPU: Snapdragon 865 8 nhân </br>\r\nRAM: 12 GB </br>\r\nBộ nhớ trong: 256 GB </br>\r\nThẻ SIM: 2 Nano SIM, Hỗ trợ 5G, Vietnamobile siêu sim (5GB/ngày) </br>\r\nDung lượng pin:4200 mAh, có sạc nhanh', 'Oppo'),
(17, 4, 2, '2021-01-03 07:50:46', 'Laptop Apple MacBook Air SSD: 128 GB', 'apple-macbook-air-mqd32sa-a-i5-5350u-(3).jpg', 'apple-macbook-air-mqd32sa-a-i5-5350u-bac-1-org.jpg', 'apple-macbook-air-mqd32sa-a-i5-5350u-bac-2-org.jpg', 18490000, 'CPU: Intel Core i5 Broadwell, 1.80 GHz </br>\r\nRAM: 8 GB, DDR3L(On board), 1600 MHz </br>\r\nỔ cứng: SSD: 128 GB </br>\r\nMàn hình: 13.3 inch, WXGA+(1440 x 900) </br>\r\nCard màn hình: Card đồ họa tích hợp, Intel HD Graphics 6000 </br>\r\nCổng kết nối: MagSafe 2, 2 x USB 3.0, Thunderbolt 2 </br>\r\nĐặc biệt: Có đèn bàn phím </br>\r\nHệ điều hành: Mac OS </br>\r\nThiết kế: Vỏ kim loại nguyên khối, PIN liền </br>\r\nKích thước:Dày 17 mm, 1.35 Kg </br>\r\nThời điểm ra mắt:2017', ''),
(18, 5, 2, '2021-01-03 07:45:52', 'Laptop HP 348 G7 i3 8130U/4GB/256GB/Win10', 'hp-348-g7-i3-9pg83pa-221511-600x600.jpg', 'hp-348-g7-i3-9pg83pa-2-org.jpg', 'hp-348-g7-i3-9pg83pa-3-org.jpg', 11190000, 'CPU: Intel Core i3 Coffee Lake, 8130U, 2.20 GHz </br>\r\nRAM: 4 GB, DDR4 (2 khe), 2666 MHz </br>\r\nỔ cứng: SSD 256GB NVMe PCIe, Hỗ trợ khe cắm HDD SATA </br>\r\nMàn hình: 14 inch, Full HD (1920 x 1080) </br>\r\nCard màn hình: Card đồ họa tích hợp, Intel® UHD Graphics 620 </br>\r\nCổng kết nối: 3 x USB 3.1, HDMI, LAN (RJ45), USB Type-C </br>\r\nHệ điều hành: Windows 10 Home SL </br>\r\nThiết kế: Vỏ nhựa, PIN liền </br>\r\nKích thước: Dày 1.99 mm, 1.5 kg', 'Laptop HP'),
(19, 6, 2, '2021-01-03 07:45:30', 'Laptop Dell Vostro 3590 i7 10510U/8GB/256GB/2GB', 'dell-vostro-3590-i7-grmgk2-220718-220718-600x600.jpg', 'dell-vostro-3590-i7-grmgk2-mau-den-1-org.jpg', 'dell-vostro-3590-i7-grmgk2-mau-den-2-org.jpg', 20990000, 'CPU: Intel Core i7 Comet Lake, 10510U, 1.80 GHz </br>\r\nRAM: 8 GB, DDR4 (On board +1 khe), 2666 MHz </br>\r\nỔ cứng: SSD 256GB NVMe PCIe, Hỗ trợ khe cắm HDD SATA </br>\r\nMàn hình: 15.6 inch, Full HD (1920 x 1080) </br>\r\nCard màn hình: Card đồ họa rời, AMD Radeon 610R5, 2GB </br>\r\nCổng kết nối: 2 x USB 3.1, HDMI, LAN (RJ45), USB 2.0, VGA (D-Sub) </br>\r\nHệ điều hành: Windows 10 Home SL </br>\r\nThiết kế: Vỏ nhựa, PIN liền </br>\r\nKích thước: Dày 19.8 mm, 1.99 kg', 'Laptop DELL'),
(20, 7, 3, '2020-12-30 00:57:32', 'Máy tính bảng iPad 8 Wifi Cellular 32GB', 'ipad-gen-8-cellular-vang-new-600x600-600x600.jpg', 'ipad-8-wifi-cellular-32gb-2020-bac-1020-org.jpg', 'ipad-8-wifi-cellular-32gb-2020-xam-1020-org.jpg', 12990000, 'Màn hình: Retina IPS LCD, 10.2\" </br>\r\nHệ điều hành: iPadOS 14 </br>\r\nCPU: Apple A12 Bionic 6 nhân </br>\r\nRAM: 3 GB </br>\r\nBộ nhớ trong: 32 GB </br>\r\nCamera sau: 8 MP </br>\r\nCamera trước: 1.2 MP </br>\r\nKết nối mạng: Hỗ trợ 4G </br>\r\nHỗ trợ SIM: 1 Nano SIM hoặc 1 eSIM </br>\r\nĐàm thoại: FaceTime </br>\r\nTrọng lượng: Khoảng 490 g </br>\r\nDung lượng pin: 32.4 Wh (Khoảng 8600 mAh)', 'Tablet iPad'),
(21, 1, 1, '2021-01-03 07:50:17', 'Điện thoại iPhone 12 Pro 3 camera sau 12 MP\r\n', 'iphone-12-pro-512gb-190720-020739-200x200.jpg', '1020x680-silver1-1-org.jpg', '1020x680-den1-1-org.jpg', 36990000, 'Màn hình: OLED, 6.1\", Super Retina XDR </br>\r\nHệ điều hành: iOS 14 </br>\r\nCamera sau: 3 camera 12 MP </br>\r\nCamera trước: 12 MP </br>\r\nCPU: Apple A14 Bionic 6 nhân </br>\r\nRAM: 6 GB </br>\r\nBộ nhớ trong: 512 GB </br>\r\nThẻ SIM: 1 Nano SIM & 1 eSIM, Hỗ trợ 5G,HOTSim Vietnamobile siêu sim (5GB/ngày) </br>\r\nDung lượng pin: 2815 mAh, có sạc nhanh', 'IPhone'),
(22, 4, 2, '2021-01-03 07:55:10', 'Laptop Apple MacBook Air Intel Core i5 ', 'apple-macbook-air-mqd32sa-a-i5-5350u-(3).jpg', 'apple-macbook-air-mqd32sa-a-i5-5350u-bac-1-org.jpg', 'apple-macbook-air-mqd32sa-a-i5-5350u-bac-2-org.jpg', 18490000, 'CPU: Intel Core i5 Broadwell, , 1.80 GHz </br>\r\nRAM: 8 GB, DDR3L(On board), 1600 MHz </br>\r\nỔ cứng: SSD: 128 GB </br>\r\nMàn hình: 13.3 inch, WXGA+(1440 x 900) </br>\r\nCard màn hình: Card đồ họa tích hợp, Intel HD Graphics 6000 </br>\r\nCổng kết nối: MagSafe 2, 2 x USB 3.0, Thunderbolt 2 </br>\r\nĐặc biệt: Có đèn bàn phím </br>\r\nHệ điều hành: Mac OS </br>\r\nThiết kế: Vỏ kim loại nguyên khối, PIN liền </br>\r\nKích thước:Dày 17 mm, 1.35 Kg </br>\r\nThời điểm ra mắt:2017', '');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `p_cat_desc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_desc`) VALUES
(1, 'IPhone', ''),
(2, 'SamSung', ''),
(3, 'Oppo', ''),
(4, 'MacBook - IMac', ''),
(5, 'HP', ''),
(6, 'Dell', ''),
(7, 'IPad', '');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slide_id` int(10) NOT NULL,
  `slide_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slide_image` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slide_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slide_text` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`, `slide_title`, `slide_text`) VALUES
(17, 'Slide 1', '690-300-690x300-15.png', '', ''),
(18, 'Slide 2', '690-300-690x300-21.png', '', ''),
(19, 'Slide 3', 'Xa-hang-CE-690x300.png', '', ''),
(20, 'Slide 4', '690-300-690x300-12.png', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slide_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slide_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
