-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2024 at 08:03 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_rest`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'admin', 'admin123', 'admin123@gmail.com', '1', '2023-10-10 02:40:28');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(1, 1, 'Spring Rolls', 'Lightly Seasoned shredded cabbage, onion and carrots, warpped in house made spring roll wrapper, depp fried to golden brown.', 240.00, '657888beadca0.jpg'),
(3, 1, 'Cheesy Mashed Potato ', 'Covered with moxxarella cheese.', 250.00, '6578a527aae7d.jpg'),
(4, 3, 'Buffalo Wings', 'Fried chicken wings tossed in spicy Buffalo sauce.', 450.00, '659d76013bcef.jpg'),
(5, 3, 'Crispy Chicken Strips', 'Fried chicken strips, served with special honey mustard sauce.', 340.00, '659d76ce30847.jpg'),
(6, 3, 'Lemon Grilled Chicken And Pasta ', 'Marinated rosemary grilled chicken breast served with mashed potatoes.', 320.00, '659d776806eec.jpg'),
(7, 3, 'Vegetable Fried Rice ', 'Chicken rice with cabbage, beans, carrots and spring onions.', 180.00, '659d77ded1c0a.jpg'),
(8, 3, 'Mutton Kacchi', 'Mutton tender meat cut with or without bones ', 250.00, '659d7c9a9843b.jpg'),
(9, 3, 'Chicken Pasta', 'This Creamy Chicken Pasta has the most flavorful cream sauce tossed with crispy seared chicken.', 180.00, '659d7d9773b39.jpg'),
(10, 1, 'Murgh Zafrani Kabab', 'A plateful of succulent preces of meat, straight out of tandoor, is tough to resist.', 345.00, '659d7e35a4c1d.jpg'),
(11, 1, 'Mutton Kacchi', 'Mutton tender meat cut with or without bones ', 240.00, '659d7ef2949eb.jpg'),
(12, 1, 'Crispy Fried Chicken Burger', 'This burger consists of a super crispy & flakey chicken patty.', 170.00, '659d808530e47.jpg'),
(13, 1, 'Meatballs Pasta', 'Garlic-herb beef meatballs tossed in our house-made marinara sauce and penne pasta topped with fresh parsley.', 290.00, '659d812f1fcf3.jpg'),
(14, 4, 'Spring Rolls', 'Lightly seasoned shredded cabbage, onion and carrot.', 160.00, '659d92ee3f977.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `modarator`
--

CREATE TABLE `modarator` (
  `m_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modarator`
--

INSERT INTO `modarator` (`m_id`, `username`, `password`, `email`, `date`) VALUES
(1001, 'Anas', 'mod1001', 'anas123@gmail.com', '2024-01-09 16:15:24'),
(1002, 'Emon', 'mod1002', 'emon123@gmail.com', '2024-01-09 16:15:24');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(1, 1, 'in process', 'Wait for 15 min.', '2023-12-12 18:28:46'),
(2, 1, 'closed', 'Thanks.', '2023-12-12 18:29:19'),
(3, 2, 'rejected', 'Sorry not available now.', '2023-12-12 18:31:18'),
(4, 3, 'closed', 'Thanks', '2023-12-12 19:29:09'),
(5, 5, 'rejected', 'Sorry', '2023-12-12 19:29:47'),
(6, 6, 'closed', 'Thanks for order.', '2024-01-09 17:26:50'),
(7, 12, 'closed', 'Delivered', '2024-01-09 17:27:38'),
(8, 11, 'closed', 'Delivered', '2024-01-09 17:27:50'),
(9, 10, 'closed', 'Delivered', '2024-01-09 17:28:01'),
(10, 9, 'closed', 'Delivered', '2024-01-09 17:28:13'),
(11, 8, 'closed', 'Delivered', '2024-01-09 17:28:22'),
(12, 7, 'closed', 'Delivered', '2024-01-09 17:28:35'),
(13, 13, 'in process', 'Please wait 15 min.', '2024-01-09 17:38:53'),
(14, 14, 'in process', 'Please Wait 15 min.', '2024-01-09 17:39:15'),
(15, 13, 'closed', 'Thanks.', '2024-01-09 17:39:47'),
(16, 14, 'closed', 'Thanks.', '2024-01-09 17:40:06'),
(17, 15, 'in process', 'Please wait 15 min.', '2024-01-09 18:26:41'),
(18, 16, 'in process', 'Please wait 15 min.', '2024-01-09 18:26:52'),
(19, 17, 'in process', 'Please wait 15 min.', '2024-01-09 18:27:02'),
(20, 15, 'closed', 'Thanks.', '2024-01-09 18:27:29'),
(21, 16, 'closed', 'Thanks.', '2024-01-09 18:27:41'),
(22, 17, 'closed', 'Thanks.', '2024-01-09 18:27:53'),
(23, 18, 'closed', 'Thanks.', '2024-01-09 18:41:30'),
(24, 19, 'closed', 'Thanks.', '2024-01-09 18:41:54'),
(25, 20, 'closed', 'Thanks.', '2024-01-09 18:42:10');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(1, 1, 'EatZone', 'eatzone@gmail.com', '01981380806', 'eatzon.com.bd', '11am', '8pm', '24hr-x7', 'Progoti Sharani, 1st Floor, Badda, Dhaka-1212.', '659d74b6d0f7c.jpg', '2024-01-09 16:30:46'),
(3, 1, 'FoodGhor', 'foodghor@gmail.com', '01770923690', 'Eatzone.com', '10am', '8pm', '24hr-x7', ' 12/A, 6/57, Pallabi, Mirpur, Mirpur-12. ', '659d75323610e.jpg', '2024-01-09 16:32:50'),
(4, 1, 'PritomCafe', 'pritomcafe.bd@gmail.com', '01627136953', 'foodzone.com', '12pm', '1am', '24hr-x7', '120/B- Sector-7, Uttora, Dhaka', '659d921e86145.jpg', '2024-01-09 18:36:14');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(1, 'Eatzone', '2023-12-12 15:40:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(50) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `password` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(1, 'anas', 'Md Anas', 'Khan', 'anas.bd20@gmail.com', '01981380806', '60b348bb250144900f8c45be7f1284f8', 'house #10, Road #5, Satarkul, Badda, Dhaka-1212', 1, '2023-10-28 20:45:01'),
(2, 'emon', 'Emon', 'Hossin', 'emon@gmail.com', '01811871884', '6bac962066b17bd2375208fa34bf3279', 'house #111, Road #4, Satarkul, Badda, Dhaka-1212', 1, '2023-10-28 20:45:39'),
(3, 'tamanna', 'Nura', 'Anha', 'nura@gmail.com', '01676168027', 'ce0849a11d3eea5bdf9f1c5ebb885421', 'house #1, Road #15, Notun Bazar, Badda, Dhaka-1212', 1, '2023-10-28 20:49:03'),
(4, 'Rahul', 'Rahul', 'Islam', 'rahul@gmail.com', '01780569151', '2acb7811397a5c3bea8cba57b0388b79', 'dhaka', 1, '2023-12-06 03:01:41'),
(6, 'anis', 'Md Anis ', 'Khan', 'anis@gmail.com', '01624903666', '432574eb722f0b57f568e4f99eedd4fd', 'Badda, Dhaka-1212', 1, '2023-12-12 16:43:33'),
(7, 'ena', 'Ena ', 'Tasnim', 'ean123@gmail.com', '01744444411', '8e32e9201be77b8708540fc2836790a5', 'Notun Bazar', 1, '2023-12-12 19:26:08'),
(8, 'Joy', 'Joy ', 'Islam', 'joy@gmail.com', '01811871886', '0d5425118d7aaa57e0f18a9e0d87104b', 'Badda-Dhaka', 1, '2023-12-13 03:05:34'),
(10, 'ayaan', 'Md Ayaan', 'Khan', 'ayaan.bd20@gmail.com', '01824693669', '32c2e23506971d6e6aeeb6981fa36c50', '512/ka-Uttor-Badda-Dhaka-1212.', 1, '2024-01-09 18:24:26');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(1, 1, 'Spring Rolls', 1, 240.00, 'closed', '2023-12-12 18:29:19'),
(3, 1, 'Cheesy Mashed Potato ', 1, 250.00, 'closed', '2023-12-12 19:29:09'),
(6, 8, 'Spring Rolls', 1, 240.00, 'closed', '2024-01-09 17:26:50'),
(7, 8, 'Vegetable Fried Rice', 1, 350.00, 'closed', '2024-01-09 17:28:35'),
(8, 8, 'Cheesy Mashed Potato ', 4, 250.00, 'closed', '2024-01-09 17:28:22'),
(9, 1, 'Spring Rolls', 5, 240.00, 'closed', '2024-01-09 17:28:13'),
(10, 1, 'Vegetable Fried Rice', 2, 350.00, 'closed', '2024-01-09 17:28:01'),
(11, 1, 'Spring Rolls', 3, 240.00, 'closed', '2024-01-09 17:27:50'),
(12, 1, 'Cheesy Mashed Potato ', 4, 250.00, 'closed', '2024-01-09 17:27:38'),
(13, 9, 'Crispy Fried Chicken Burger', 2, 170.00, 'closed', '2024-01-09 17:39:47'),
(14, 9, 'Meatballs Pasta', 2, 290.00, 'closed', '2024-01-09 17:40:06'),
(15, 10, 'Meatballs Pasta', 2, 290.00, 'closed', '2024-01-09 18:27:29'),
(16, 10, 'Spring Rolls', 2, 240.00, 'closed', '2024-01-09 18:27:41'),
(17, 10, 'Crispy Fried Chicken Burger', 2, 170.00, 'closed', '2024-01-09 18:27:53'),
(18, 1, 'Spring Rolls', 1, 160.00, 'closed', '2024-01-09 18:41:30'),
(19, 1, 'Mutton Kacchi', 1, 240.00, 'closed', '2024-01-09 18:41:54'),
(20, 1, 'Crispy Fried Chicken Burger', 1, 170.00, 'closed', '2024-01-09 18:42:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
