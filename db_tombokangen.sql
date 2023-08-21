-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2022 at 04:43 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tombokangen`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id_cart` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `id_category` int(11) NOT NULL,
  `category` varchar(50) NOT NULL,
  `image` text NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`id_category`, `category`, `image`, `status`) VALUES
(1, 'Makanan', 'assets/makanan.png', 'on'),
(2, 'Minuman', 'assets/minuman.png', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `menu_rekomendasi`
--

CREATE TABLE `menu_rekomendasi` (
  `id` int(11) NOT NULL,
  `head_menu` int(11) NOT NULL,
  `detail_menu` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu_rekomendasi`
--

INSERT INTO `menu_rekomendasi` (`id`, `head_menu`, `detail_menu`, `jumlah`) VALUES
(1, 1, 6, 0),
(4, 2, 6, 0),
(7, 7, 6, 0),
(8, 12, 6, 0),
(9, 13, 6, 0),
(10, 14, 6, 0),
(11, 2, 14, 0),
(12, 7, 14, 0),
(13, 6, 14, 0),
(14, 6, 7, 0),
(15, 14, 7, 0),
(16, 6, 2, 0),
(17, 14, 2, 0),
(18, 6, 13, 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id_orders` int(11) NOT NULL,
  `invoice` varchar(20) NOT NULL,
  `id_user` int(11) NOT NULL,
  `order_at` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id_orders`, `invoice`, `id_user`, `order_at`, `status`) VALUES
(1, '20220203190925', 1, '2022-02-04 01:09:25', 1),
(2, '20220203192126', 1, '2022-02-04 01:21:26', 1),
(3, '20220203192126', 1, '2022-02-04 01:21:26', 1),
(4, '20220203212956', 8, '2022-02-04 03:29:56', 1),
(5, '20220203213200', 8, '2022-02-04 03:32:00', 1),
(6, '20220204013013', 1, '2022-02-04 07:30:13', 1),
(7, '20220204072825', 9, '2022-02-04 13:28:25', 1),
(8, '20220206161700', 1, '2022-02-06 22:17:00', 1),
(9, '20220206191120', 1, '2022-02-07 01:11:20', 1),
(10, '20220207090809', 1, '2022-02-07 15:08:09', 1),
(11, '20220207090809', 1, '2022-02-07 15:08:09', 1),
(12, '20220207154929', 1, '2022-02-07 21:49:29', 1),
(13, '20220207155108', 1, '2022-02-07 21:51:08', 1),
(14, '20220207155108', 1, '2022-02-07 21:51:08', 1),
(15, '20220207155459', 1, '2022-02-07 21:54:59', 1),
(16, '20220207155459', 1, '2022-02-07 21:54:59', 1),
(17, '20220207155744', 1, '2022-02-07 21:57:44', 1),
(18, '20220208025550', 1, '2022-02-08 08:55:50', 1),
(19, '20220208025550', 1, '2022-02-08 08:55:50', 1),
(20, '20220208111513', 1, '2022-02-08 17:15:13', 1),
(21, '20220208111513', 1, '2022-02-08 17:15:13', 1),
(22, '20220208121419', 1, '2022-02-08 18:14:19', 1),
(23, '20220208123533', 13, '2022-02-08 20:35:33', 1),
(24, '20220208191029', 14, '2022-02-09 03:10:29', 1),
(25, '20220208191056', 14, '2022-02-09 03:10:56', 1),
(26, '20220209014631', 14, '2022-02-09 09:46:31', 1),
(27, '20220209104726', 1, '2022-02-09 18:47:26', 1),
(28, '20220209104802', 1, '2022-02-09 18:48:02', 1),
(29, '20220209131454', 15, '2022-02-09 21:14:54', 1),
(30, '20220219100608', 1, '2022-02-19 18:06:08', 1),
(31, '20220223064719', 1, '2022-02-23 14:47:19', 1),
(32, '20220306123954', 17, '2022-03-06 20:39:54', 1),
(33, '20220306124004', 17, '2022-03-06 20:40:04', 1),
(34, '20220327023710', 1, '2022-03-27 10:37:10', 1),
(35, '20220327023730', 1, '2022-03-27 10:37:30', 1),
(36, '20220509221620', 1, '2022-05-10 03:16:20', 1),
(37, '20220509221643', 1, '2022-05-10 03:16:43', 1),
(38, '20220509221709', 1, '2022-05-10 03:17:09', 1),
(39, '20220509221948', 1, '2022-05-10 03:19:48', 1),
(40, '20220509222542', 1, '2022-05-10 03:25:42', 1),
(41, '20220509222911', 1, '2022-05-10 03:29:11', 1),
(42, '20220522143553', 1, '2022-05-22 19:35:53', 1),
(43, '20220522143840', 1, '2022-05-22 19:38:40', 1),
(44, '20220523113212', 1, '2022-05-23 16:32:12', 1),
(45, '20220523115649', 1, '2022-05-23 16:56:49', 1),
(46, '20220715205439', 1, '2022-07-16 01:54:39', 1),
(47, '20220731182605', 4, '2022-07-31 23:26:05', 1),
(48, '20220803093938', 4, '2022-08-03 14:39:38', 1),
(49, '20220815181420', 4, '2022-08-15 23:14:20', 1),
(50, '20220818112910', 4, '2022-08-18 16:29:10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id_orders` int(11) NOT NULL,
  `invoice` varchar(20) NOT NULL,
  `id_product` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id_orders`, `invoice`, `id_product`, `quantity`, `price`) VALUES
(1, '20220203190925', 2, 1, 13000),
(2, '20220203192126', 1, 1, 13000),
(3, '20220203192126', 1, 1, 13000),
(4, '20220203212956', 6, 3, 13000),
(5, '20220203212956', 3, 1, 13000),
(6, '20220203212956', 7, 1, 5000),
(7, '20220203213200', 3, 10, 13000),
(8, '20220204013013', 12, 5, 3000),
(9, '20220204072825', 2, 2, 13000),
(10, '20220206161700', 2, 3, 13000),
(11, '20220206191120', 1, 1, 13000),
(12, '20220206191120', 1, 1, 13000),
(13, '20220207090809', 1, 1, 13000),
(14, '20220207090809', 1, 1, 13000),
(15, '20220207154929', 10, 3, 2000),
(16, '20220207155108', 10, 1, 2000),
(17, '20220207155108', 10, 1, 2000),
(18, '20220207155459', 11, 5, 1000),
(19, '20220207155459', 11, 5, 1000),
(20, '20220207155744', 11, 4, 1000),
(21, '20220208025550', 10, 4, 2000),
(22, '20220208025550', 10, 4, 2000),
(23, '20220208111513', 11, 9, 1000),
(24, '20220208111513', 11, 9, 1000),
(25, '20220208111513', 1, 4, 13000),
(26, '20220208111513', 1, 4, 13000),
(27, '20220208121419', 1, 4, 13000),
(28, '20220208123533', 1, 4, 13000),
(29, '20220208191029', 10, 10, 2000),
(30, '20220208191056', 10, 5, 2000),
(31, '20220208191056', 11, 5, 1000),
(32, '20220209014631', 11, 11, 1000),
(33, '20220209104726', 2, 1, 13000),
(34, '20220209104726', 1, 1, 13000),
(35, '20220209104802', 10, 10, 2000),
(36, '20220209131454', 1, 1, 13000),
(37, '20220209131454', 11, 12, 1000),
(38, '20220219100608', 2, 3, 13000),
(39, '20220219100608', 1, 2, 13000),
(40, '20220223064719', 1, 1, 13000),
(41, '20220306123954', 1, 5, 13000),
(42, '20220306124004', 2, 1, 13000),
(43, '20220327023710', 1, 3, 13000),
(44, '20220327023730', 10, 10, 2000),
(45, '20220509221620', 10, 5, 2000),
(46, '20220509221643', 13, 7, 2000),
(47, '20220509221709', 13, 18, 2000),
(48, '20220509221948', 1, 5, 13000),
(49, '20220509221948', 11, 20, 1000),
(50, '20220509222542', 11, 5, 1000),
(51, '20220509222911', 10, 24, 2000),
(52, '20220522143553', 11, 10, 1000),
(53, '20220522143840', 10, 2, 2000),
(54, '20220523113212', 1, 1, 13000),
(55, '20220523113212', 11, 5, 1000),
(56, '20220523115649', 1, 1, 13000),
(57, '20220715205439', 1, 1, 13000),
(58, '20220731182605', 1, 2, 13000),
(59, '20220803093938', 1, 1, 13000),
(60, '20220815181420', 1, 1, 13000),
(61, '20220818112910', 1, 2, 13000);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id_product` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(300) NOT NULL,
  `image` text NOT NULL,
  `price` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id_product`, `id_category`, `name`, `description`, `image`, `price`, `status`, `jumlah`) VALUES
(1, 1, 'Ayam Bakar', 'Ayam bakar adalah sebuah hidangan Asia Tenggara Maritim, terutama hidangan Indonesia atau Malaysia, dari ayam yang dipanggang di atas arang.', 'assets/ayambakar.png', 13000, 1, 18),
(2, 1, 'Ayam Goreng', 'Ayam Goreng adalah hidangan Asia Tenggara yang merupakan ayam yang digoreng dalam minyak goreng.', 'assets/ayamgoreng.png', 13000, 1, 3),
(3, 1, 'Bebek Bakar', 'Bebek bakar merupakan salah satu menu makanan yang dibuat dari daging bebek yang pengolahannya dengan cara dibakar.', 'assets/bebekbakar.png', 13000, 1, 0),
(4, 1, 'Bebek Goreng', 'Bebek goreng adalah daging bebek yang digoreng dan dihidangkan dengan lalapan (sayuran segar).', 'assets/bebekgoreng.png', 13000, 1, 0),
(5, 1, 'Lele Bakar', 'Ikan Lele Bakar merujuk kepada ikan bakar khas Jawa Barat yang dipanggang di atas arang atau bara api.', 'assets/lelebakar.png', 13000, 1, 0),
(6, 1, 'Lele Goreng', 'Pecel lele atau pecek lele di Indonesia adalah nama sebuah makanan khas Jawa yang terdiri dari ikan lele dan sambal tomat.', 'assets/lelegoreng.png', 13000, 1, 0),
(7, 1, 'Nasi Putih', 'Nasi Putih adalah sumber karbohidrat utama yang menjadi makanan pokok di banyak negara, terutama Indonesia.', 'assets/nasiputih.png', 5000, 1, 0),
(8, 1, 'Sate Ati Ampela', 'Sate Ati Ampela diolah menjadi berbagai masakan dan sering disajikan bersama hati.', 'assets/sateatiampela.png', 5000, 1, 0),
(9, 1, 'Soto Ayam', 'Soto Ayam adalah makanan khas Indonesia yang berupa sejenis sup ayam dengan kuah yang berwarna kekuningan.', 'assets/sotoayam.png', 10000, 1, 0),
(10, 1, 'Tahu', 'Tahu adalah makanan yang dibuat dari endapan perasan biji kedelai yang mengalami koagulasi.', 'assets/tahu.png', 2000, 1, 11),
(11, 1, 'Tempe', 'Tempe merupakan makanan tradisional yang dihasilkan dari fermentasi biji kedelai atau beberapa bahan lainnya.', 'assets/tempe.png', 1000, 1, 12),
(12, 2, 'Teh Manis', 'Teh Manis adalah minuman yang terbuat dari larutan teh yang diberi pemanis, biasanya gula tebu, sebelum minuman ini siap disajikan.', 'assets/tehmanis.png', 3000, 1, 0),
(13, 2, 'Teh Tawar', 'Teh Tawar adalah minuman yang terbuat dari larutan teh dan tidak diberi pemanis.', 'assets/tehtawar.png', 2000, 1, 2),
(14, 2, 'Es Jeruk', 'Es Jeruk adalah minuman yang rasanya asam segar dengan tambahan bulir-bulir jeruk, dipercaya bisa menjadi pelepas dahaga.', 'assets/esjeruk.png', 5000, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `role` int(11) NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `fullname`, `address`, `phone`, `email`, `password`, `role`) VALUES
(1, 'Rafli Maulana', 'Jl. Raya Curug', '081285450524', 'raflimaou@gmail.com', '12345', 1),
(4, 'user2', 'Jl. Semangka 8', '0813880932157', 'user2@gmail.com', '1234567', 0),
(5, 'user3', 'Jl. Semangka 8', '08138809321', 'user3@gmail.com', '123456', 0),
(6, 'user4', 'Jl. Semangka 8', '08138809321', 'user4@gmail.com', '123456', 0),
(7, 'user9', 'Jl. Banjir Kanal', '0123456', 'user9@gmail.com', '12345', 0),
(8, 'Rafli 2', 'Jl. Semangka 99', '081294546789', 'rafli2@gmail.com', '12345', 0),
(9, 'Rafli Pol', 'Jl. Jalan', '0812345678', 'raflipol@gmail.com', '12345', 0),
(10, 'mut', '', '', '', '', 0),
(11, 'sky', 'jl', '', 'sky@gmail.com', '', 0),
(12, 'rio', 'rio', '123', 'rio@gmail.com', '12345', 0),
(13, 'nopal', 'cisauk', '012345', 'nopal@gmail.com', '12345', 0),
(14, 'rian', 'jl. jakarta', '08123', 'rian@gmail.com', '12345', 0),
(15, 'rapli', 'cijengir', '08123568', 'rapli@gmail.com', '12345', 0),
(16, 'nova', 'jl. bonbes', '123', 'nov@gmail.com', '12345', 0),
(17, 'lala', 'lulu', '019283746', 'alalak@gmail.com', '11111111', 0),
(18, 'hilman', 'jl. hilman', '1234', 'hilmansky@gmail.com', '12345', 0),
(19, 'hilman', 'jl. hilman', '1234', 'hilmanskasdasdy@gmail.com', '12345', 0),
(20, 'hilman', 'jl. hilman', '1234', 'hilmanskasdasdasdsasdy@gmail.com', '12345', 0),
(21, 'tisu', 'jl.tisu', '12323', 'tisu@gmail.com', '12345', 0),
(22, 'black', 'jl. black', '123', 'black@gmail.com', '123445', 0),
(23, 'kimi', 'kimi@gmail.com', '12345', 'kimi@gmail.com', '12345', 0),
(24, 'kiboy', 'jl.kimi', '12345', 'kiboy@gmail.com', '12345', 0),
(25, 'asadaf', 'asadaf', '123', 'asadaf@gmail.com', '12345', 0),
(26, 'eror', 'pasti eror', '12345', 'pastieror@gmail.com', '123456', 0),
(27, 'aramaki', 'jl.aramaki', '12345', 'aramaki@gmail.com', '12345', 0),
(28, 'allive', 'jl.jalan', '12345', 'allive@gmail.com', '12345', 0),
(29, 'anywhere', 'jl apapun', '12345', 'anywhere@gmail.com', '122345', 0),
(30, 'dummydummy', 'jl. dummy', '12345', 'dumay@gmail.com', '12345', 0),
(31, 'laptop', 'jl. laptop', '123', 'laptop@gmail.com', '12345', 1),
(32, 'sobri', 'jl. sobri', '12345', 'sobrisobri@gmail.com', '12345', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `menu_rekomendasi`
--
ALTER TABLE `menu_rekomendasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_orders`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id_orders`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_product`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_rekomendasi`
--
ALTER TABLE `menu_rekomendasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id_orders` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id_orders` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
