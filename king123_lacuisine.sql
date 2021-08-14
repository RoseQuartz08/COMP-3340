-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 13, 2021 at 10:54 PM
-- Server version: 10.2.39-MariaDB-log
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `king123_lacuisine`
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'admin2', '202cb962ac59075b964b07152d234b70', 'asifayub836@gmail.com', 'QX5ZMN', '2021-07-27 21:35:22'),
(3, 'admin', '900150983cd24fb0d6963f7d28e17f72', 'admin@gmail.com', 'QMZR92', '2021-07-27 21:35:56');

-- --------------------------------------------------------

--
-- Table structure for table `admin_codes`
--

CREATE TABLE `admin_codes` (
  `id` int(222) NOT NULL,
  `codes` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_codes`
--

INSERT INTO `admin_codes` (`id`, `codes`) VALUES
(1, 'QX5ZMN'),
(3, 'QMZR92');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `c_id` varchar(255) NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`c_id`, `c_name`, `date`) VALUES
('1', 'Traditional', '2021-07-27 14:29:08'),
('2', 'Chinese', '2021-07-27 14:28:56'),
('3', 'Fast Food', '2021-07-27 14:28:41'),
('4', 'Indian', '2021-07-27 14:39:09'),
('5', 'Africa', '2021-08-03 19:40:12'),
('6', 'Mexican', '2021-08-05 04:45:08'),
('7', 'Italian', '2021-08-05 04:45:18');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `CNIC` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Phone` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`CNIC`, `Name`, `Phone`, `Email`) VALUES
('1210157236327', 'Muhammad Asif Ayub', '5022021200', 'asifayub836@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `D_ID` int(222) NOT NULL,
  `RS_ID` int(222) NOT NULL,
  `FName` varchar(222) NOT NULL,
  `Description` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`D_ID`, `RS_ID`, `FName`, `Description`, `price`, `img`) VALUES
(1, 1, 'Bonefish', 'Three ounces of lightly seasoned fresh fish', '8.00', '61007e16a94f4.jpg'),
(2, 1, 'Hard Rock Cafe', 'A mix of chopped lettuces, shredded cheese, chicken cubes', '10.00', '61007dd2d87cf.jpg'),
(3, 1, 'Uno Pizzeria & Grill', 'Kids can choose their pasta shape, type of sauce, favorite veggies (like broccoli or mushrooms)', '13.00', '61007d7addbd3.jpg'),
(4, 2, 'Red Robins Chick on a Stick', 'Plain grilled chicken breast', '12.00', '610072f769a25.jpg'),
(6, 3, 'Cheeseburger', 'Creekstone Farms, where no antibiotics or growth hormones are used', '10.00', '610b661bc36c9.jpg'),
(8, 3, 'Chicken Shawarma', 'spicy chicken and sausage', '9.99', '6100742b1fc0a.jpg'),
(9, 2, 'Chicken Biryani', 'spicy Chicken Biryani with grilled egg and sauces', '16.20', '610072a859af8.jpg'),
(10, 3, 'Chicken Spring Rolls', 'Filled with a variety of fresh veggies like carrots, bamboo shoots, bell pepper, and cabbage.', '10.00', '6100794ebf2d3.jpg'),
(11, 3, 'Fish Cracker', 'Fish crackers are deep fried crackers made from fish and spices that serve as flavouring, originated from Indonesia. ', '10.00', '610078306275b.jpg'),
(12, 3, 'Margarita Pizza', 'margherita pizza sauce is a made of fire roasted canned tomatoes, garlic, olive oil and salt.', '12.00', '6100779ed2242.jpg'),
(13, 3, 'Chicken Fajita', 'Seasoned shredded chicken, peppers, onions, and cheese create a simple, flavorful pizza. ', '15.00', '610074f693308.jpg'),
(14, 2, 'Special Chicken Manchurian', 'Boneless chicken, spring onion, lemon, chili garlic sauce, corn', '20.00', '61007251a8d09.jpg'),
(15, 2, 'Bater Roast', 'Hung curd, green chili paste, parmesan cheese, fresh cream, cashew nut', '14.99', '61006f2deccb6.jpg'),
(16, 2, 'Chicken Chow Mein', 'Chow mein noodles, chicken breast, soy sauce', '9.99', '61006add31a0a.jpg'),
(17, 1, 'Chicken Masala Rice', 'Boneless chicken thighs, coconut milk, basmati rice, tomato sauce,', '11.00', '61007c0287c24.jpg'),
(18, 1, 'Vegetable Rice', 'Basmati rice, green peas, french beans, garam masala powder, tomato', '5.99', '61007b5407cea.jpg'),
(19, 1, 'Mutton bonless handi', 'Citric acid, cream, yogurt, masala, boneless mutton,Cinnamon, garlic, green chilli, coriander seeds, black pepper', '16.40', '61007b0f367e2.jpg'),
(20, 4, 'Curry Chicken', 'Curry, Chicken, Garlic, Ginger, Onion', '13.00', '61007e5d45f45.jpg'),
(21, 4, 'Biryani', 'Filled with a variety of fresh veggies like carrots, bamboo shoots, bell pepper, and cabbage.', '10.00', '610081a5b8e8a.jpg'),
(22, 4, 'Samosa', 'A samosa is a South Asian fried or baked pastry with a savory filling like spiced potatoes, onions, peas, chicken and other meats, or lentils. ', '6.99', '6100824ce9785.jpg'),
(23, 4, 'Butter chicken', 'Butter chicken or murgh makhani is a curry of chicken in a spiced tomato, butter and cream sauce.', '9.99', '610f3f715a4a6.jpg'),
(24, 5, 'Jollof Rice with Peppered Chicen and Fried Plantain', 'Jollof Rice with Peppered Chicen and Fried Plantain', '14.99', '6109a9c7519a7.jpg'),
(25, 5, 'Pounded Yam and Equsi Soup', 'Pounded Yam and Equsi Soup', '20.00', '6109abe6d0c16.jpg'),
(26, 5, 'Peppered Gizzard', 'Peppered Gizzard', '9.99', '6109aecf71ddd.jpg'),
(27, 5, 'Amala and Ewedu Soup', 'Amala and Ewedu Soup', '20.00', '6109aff80cbf7.jpg'),
(28, 5, 'Akara and pap', 'Akara and pap', '13.00', '6109b26d03466.jpg'),
(29, 5, 'Ofada Rice and Stew', 'Ofada Rice and Stew', '14.99', '6109b3952f7a3.jpg'),
(30, 5, 'Efo Riro', 'Efo Riro', '9.99', '6109bf9abb50b.jpg'),
(31, 5, 'Pepper Soup and Assorted Meat ', 'Pepper Soup and Assorted Meat ', '10.00', '6109bfdfdb12b.jpg'),
(32, 5, 'Banga Soup with Fresh Fish', 'Banga Soup with Fresh Fish', '20.00', '6109c2cc44c11.jpg'),
(33, 5, 'Yam Porridge', 'Yam Porridge', '10.00', '6109c47729517.jpg'),
(34, 5, 'Yam Porridge', 'Yam Porridge', '10.00', '610af883d806b.jpg'),
(35, 2, 'Chicken Fried Rice', 'Chicken Fried Rice', '9.99', '610b541797d60.jpg'),
(36, 2, 'Wonton soup', 'Wonton soup', '9.99', '610b5991edbc0.jpg'),
(37, 2, 'Sesame-Ginger Beef', 'Sesame-Ginger Beef', '14.99', '610b5aded3844.jpg'),
(38, 2, 'Sweet and Sour Chicken', 'Sweet and Sour Chicken', '8.99', '610b5c0ad2c36.jpg'),
(39, 2, 'Beef and Broccoli Stir-Fry', 'Beef and Broccoli Stir-Fry', '10.00', '610b5ce9ba605.jpg'),
(40, 3, 'Buffalo Wings', '15 pcs', '13.00', '610b5f92022cd.jpg'),
(41, 3, 'Doughnuts', '8 pcs', '10.00', '610b6087b80b3.jpg'),
(42, 1, 'Tacos', 'A taco is a traditional Mexican dish consisting of a small hand-sized corn or wheat tortilla topped with a filling.', '12.00', '610b61ee514ac.jpg'),
(43, 1, 'Sushi Rolls', 'Prepared vinegared rice, usually with some sugar and salt, accompanying a variety of ingredients, such as seafood, often raw, and vegetables. ', '10.00', '610b6323b027a.jpg'),
(44, 1, 'Gyro', 'A gyro or gyros is a Greek dish made from meat cooked on a vertical rotisserie.', '9.99', '610b63b6bf2f0.jpg'),
(45, 1, 'Ramen', 'A Japanese noodle soup', '9.99', '610b646fce050.jpg'),
(46, 3, 'Hot dog', 'consisting of a grilled or steamed sausage served in the slit of a partially sliced bun.', '5.99', '610b6563dd639.jpg'),
(47, 3, 'French Fries', 'French fries, or simply fries, chips, finger chips, hot chips or French-fried potatoes', '4.99', '610b66e4085a3.jpg'),
(48, 4, 'Aloo gobi', 'a vegetarian dish from the Indian subcontinent made with potatoes, cauliflower, and Indian spices.', '10.00', '610f3fe548200.jpg'),
(49, 4, 'Beef Vindaloo', 'vindaloo is a dish of meat (usually pork) marinated in vinegar and garlic.', '13.00', '610f41529478f.jpg'),
(50, 4, 'Aloo Matar', 'Aloo mutter is a dish which is made from potatoes and peas in a spiced creamy tomato based sauce. It is a vegetarian dish.', '9.99', '610f43033563f.jpg'),
(51, 4, 'Dhokla', 'A vegetarian culinary dish that is made with a fermented batter derived from rice, ground urad dal, and chickpea flour.', '12.00', '610f4581cf754.jpg'),
(52, 4, 'Lamb Kebabs', 'Boneless lamb shoulder, lamb sirloin', '7.99', '610f48744cea2.jpg'),
(53, 4, 'Kulfi', 'A frozen dairy dessert originating in the Indian subcontinent in the 16th century.', '5.99', '610f48b7b560c.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `PID` varchar(255) NOT NULL,
  `OID` varchar(255) NOT NULL,
  `FPrice` varchar(255) NOT NULL,
  `DCharge` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(62, 32, 'in process', 'hi', '2018-04-18 17:35:52'),
(63, 32, 'closed', 'cc', '2018-04-18 17:36:46'),
(64, 32, 'in process', 'fff', '2018-04-18 18:01:37'),
(65, 32, 'closed', 'its delv', '2018-04-18 18:08:55'),
(66, 34, 'in process', 'on a way', '2018-04-18 18:56:32'),
(67, 35, 'closed', 'ok', '2018-04-18 18:59:08'),
(68, 37, 'in process', 'on the way!', '2018-04-18 19:50:06'),
(69, 37, 'rejected', 'if admin cancel for any reason this box is for remark only for buter perposes', '2018-04-18 19:51:19'),
(70, 37, 'closed', 'delivered success', '2018-04-18 19:51:50'),
(71, 39, 'in process', 'please wait for a while', '2020-09-10 19:13:24'),
(72, 41, 'closed', 'delivered', '2020-09-10 19:14:24'),
(73, 41, 'rejected', 'a', '2020-09-13 05:27:09'),
(74, 57, 'closed', 'Delivered', '2020-09-14 15:22:39'),
(75, 63, 'closed', 'warka dang', '2020-09-14 16:49:29'),
(76, 65, 'in process', 'Sent out', '2021-07-27 14:55:04'),
(77, 87, 'closed', 'Closed', '2021-08-10 21:16:24');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `RS_ID` int(255) NOT NULL,
  `c_id` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `o_hr` varchar(255) NOT NULL,
  `c_hr` varchar(255) NOT NULL,
  `o_days` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`RS_ID`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(1, 1, 'International Eats Traditional', 'traditional@gmail.com', '0966710282', 'www.trad.com', '9am', '8pm', 'mon-sat', '24 Poplar ln. Windsor, Ontario', '6100667a579e2.jpg', '2021-07-27 20:03:06'),
(2, 2, 'International Eats Chinese', 'chinese@gmail.com', '0966710711', 'www.iechinese.com', '8am', '8pm', 'mon-sat', '24 Poplar ln. Windsor, Ontario', '610060246c955.jpg', '2021-07-27 19:36:04'),
(3, 3, 'International Eats Fast Food', 'Fastfood@gmail.com', '0966710713', 'www.fastfood.com', '10am', '8pm', '24hr-x7', '24 Poplar ln. Windsor, Ontario', '610064dabb74d.jpg', '2021-07-27 19:56:10'),
(4, 4, 'International Eats Indian', 'ieindian@tasty.com', '1-(519) 354 2123', 'ieindian.net', '9am', '8pm', 'mon-tue', '24 Poplar ln. Windsor, Ontario', '61001b22c9f4c.jpg', '2021-07-27 14:41:38'),
(5, 5, 'International Eats Africa', 'africa@yahoo.com', '2265062165', 'www.naijafood.com', '10am', '8pm', 'mon-sat', '24 Poplar ln. Windsor, Ontario', '61099d879f1c8.jpg', '2021-08-03 19:48:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `CNIC` varchar(255) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`CNIC`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
('1111111111111', 'robert123', 'Robert', 'Odoh', 'odoh@uwindsor.ca', '12265062165', '7ac66c0f148de9519b8bd264312c4d64', '24 Poplar ln. Windsor, Ontario', 1, '2021-07-28 03:05:54'),
('1210116647065', 'asad', 'Assad Ullah', 'Khan', 'assadullahkhan700@gmail.com', '03494983200', '7675b4c2eb034cc30d82d044e5a4b13c', 'basti barkat abad himmat dera ismail khan', 1, '2021-07-27 14:24:37'),
('1210157236327', 'asif', 'Asif', 'Ayub', 'asifayub836@gmail.com', '03489155239', '818121b51acaf5c90408131dcd38d8e4', 'Shah Wali Ullah Hostel # 3 University of Engineering & Technology, Peshawar, Pakistan', 1, '2020-09-14 12:27:39'),
('1213213123122', 'Sawyer', 'King', 'Sawyer', 'king123@uwindsor.ca', '5555555555', '900150983cd24fb0d6963f7d28e17f72', 'Queensway 24, Windsor, Ontario', 1, '2021-07-27 22:43:09'),
('1234', 'lambkinq', 'Quentin', 'Lambkin', 'q@yahoo.com', '2262461144', '8f57a76ccffbf50c44de8805345f991b', '321 radnallf st', 1, '2021-07-27 19:31:42'),
('1342343242342', 'yoboyfoodlover', 'jake', 'tiller', 'jtiller@tiller.ca', '5555555556', '8f036369a5cd26454949e594fb9e0a2d', '57 Drive, Windsor, Ontario', 1, '2021-07-27 14:20:50');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `OID` int(222) NOT NULL,
  `CNIC` varchar(222) NOT NULL,
  `FName` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`OID`, `CNIC`, `FName`, `quantity`, `price`, `status`, `date`) VALUES
(78, '1213213123122', 'Bonefish', 2, '8.00', NULL, '2021-07-27 22:43:38'),
(79, '1213213123122', 'Hard Rock Cafe', 1, '10.00', NULL, '2021-07-27 22:43:38'),
(80, '1213213123122', 'Uno Pizzeria & Grill', 1, '13.00', NULL, '2021-07-27 22:43:38'),
(81, '1213213123122', 'Special Chicken Manchurian', 1, '20.00', NULL, '2021-07-27 22:56:46'),
(82, '1213213123122', 'Red Robins Chick on a Stick', 1, '12.00', NULL, '2021-07-27 22:56:46'),
(85, '1213213123122', 'Special Chicken Manchurian', 1, '20.00', NULL, '2021-07-28 15:34:43'),
(86, '1213213123122', 'Red Robins Chick on a Stick', 1, '12.00', NULL, '2021-07-28 15:34:43'),
(87, '1210157236327', 'Hard Rock Cafe', 1, '10.00', 'closed', '2021-08-10 21:16:24'),
(88, '1111111111111', 'Hard Rock Cafe', 1, '10.00', NULL, '2021-08-09 02:28:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `admin_codes`
--
ALTER TABLE `admin_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`CNIC`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`D_ID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`PID`),
  ADD KEY `OID` (`OID`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`RS_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`CNIC`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`OID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `admin_codes`
--
ALTER TABLE `admin_codes`
  MODIFY `id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `D_ID` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `RS_ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `OID` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`OID`) REFERENCES `orders` (`OID`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
