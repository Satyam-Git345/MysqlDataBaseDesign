-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2022 at 07:45 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rajhansh_hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `alltedboy`
--

CREATE TABLE `alltedboy` (
  `cid` int(5) DEFAULT NULL,
  `order_id` int(5) DEFAULT NULL,
  `empid` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Cid` int(5) NOT NULL,
  `cname` varchar(20) NOT NULL,
  `Cus_phone_no` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `pin_code` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Cid`, `cname`, `Cus_phone_no`, `address`, `state`, `city`, `pin_code`) VALUES
(1, 'Naman Pandey', '7578154698', 'Bhagwan ganj tulsi Nagar ward sagar madhya pradesh', 'Madhya Pradesh', 'Sagar', '470002');

-- --------------------------------------------------------

--
-- Table structure for table `delivers`
--

CREATE TABLE `delivers` (
  `empid` int(5) NOT NULL,
  `phone_no` varchar(12) NOT NULL,
  `Emp_name` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `vehical_no` varchar(20) NOT NULL,
  `incurence_no` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `delivers`
--

INSERT INTO `delivers` (`empid`, `phone_no`, `Emp_name`, `address`, `photo`, `vehical_no`, `incurence_no`) VALUES
(101, '6261852566', 'Amar Singn', 'Mp Nagar Bhopal Madhya Pradesh 470002', NULL, 'MP-5545', '9875TY432UE'),
(102, '9878456547', 'Rahul  Kumar', 'Bo-4, Plot No-9 , Zone-2,Bheema Kunj , Bhopal', NULL, 'MP-0976', '9875CEYH433'),
(103, '9845756547', 'Pavan Soni', 'Satellite Sampark Office, Lic , Plot No-1, Amaltas , Phase2, Kolar Road,Bhopal', NULL, 'MP-6543', '7675TY432UE'),
(104, '7645781465', 'Abshiak Singn', 'Lic Of India, Sso Royal Market, Bhopal', NULL, 'MP-7789', '7875TY982UE'),
(105, '9636124578', 'Sachin Rathore', 'Bo- Bhel, B-Sector, Nr. Health Center, Piplani, Bhopal', NULL, 'MP-9876', '7775TY552UE');

-- --------------------------------------------------------

--
-- Table structure for table `item_category`
--

CREATE TABLE `item_category` (
  `itemcatid` int(5) NOT NULL,
  `category_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item_category`
--

INSERT INTO `item_category` (`itemcatid`, `category_name`) VALUES
(1, 'Indian'),
(2, 'South Indian'),
(3, 'Chinese'),
(4, 'Franch'),
(5, 'Italian'),
(6, 'North Indian');

-- --------------------------------------------------------

--
-- Table structure for table `menu_item`
--

CREATE TABLE `menu_item` (
  `itemid` int(5) NOT NULL,
  `item_name` varchar(20) NOT NULL,
  `itemcatid` int(5) DEFAULT NULL,
  `price` decimal(5,2) NOT NULL,
  `type` varchar(10) NOT NULL,
  `qty` varchar(20) NOT NULL,
  `desp` varchar(200) DEFAULT NULL
) ;

--
-- Dumping data for table `menu_item`
--

INSERT INTO `menu_item` (`itemid`, `item_name`, `itemcatid`, `price`, `type`, `qty`, `desp`) VALUES
(1, 'Dal Fry', 1, '150.00', 'Veg', 'Full', 'Dal fry is a delicious and popular Indian lentil recipe. '),
(2, 'Sahi Paneer', 1, '80.00', 'Veg', 'Full', 'It is a delicious North Indian curry made with paneer (cottage cheese) and tomato.'),
(3, 'Kadhi Paneer', 1, '220.00', 'Veg', 'Full', 'This shahi paneer recipe uses cashew nut based tomato gravy.'),
(4, 'Jira Rice', 1, '150.00', 'Veg', 'Full', 'Rice with onions and Tomato sause.'),
(5, 'Butter Roti', 1, '15.00', 'Veg', 'Half', 'Roti with make in tandur and much more'),
(6, 'Masala Dosa', 2, '150.00', 'Veg', 'Full', 'Dosa and onions coconut chutney and much more.'),
(7, 'Idli', 2, '80.00', 'Veg', 'Full', 'Soft and delicious idli with sambhar and chutney.'),
(8, 'Uttpam', 2, '100.00', 'Veg', 'Full', 'Soft and delicious uttapam with butter. '),
(9, 'Sambhar Bada', 2, '100.00', 'Veg', 'Full', 'Soft bada with sambhar and chutny.'),
(10, 'Upma', 2, '150.00', 'Veg', 'Full', 'Soft Upma with onions and much more.'),
(11, 'Veg Noodles', 3, '150.00', 'Veg', 'Full', 'Noodles with tomato sauce and onions.'),
(12, 'Hakka Noodles', 3, '180.00', 'Veg', 'Full', 'Hakka noodles with tomato sauce.'),
(13, 'Momos', 3, '100.00', 'Veg', 'Full', 'Fresh Steam momos with extra spicy and different variety of chutney.'),
(14, 'Manchurian', 3, '150.00', 'Veg', 'Full', 'This Manchurian is delious and extra spicy with tomato chutney.'),
(15, 'Kothe', 3, '150.00', 'Veg', 'Full', 'This delicious Kothe with extra spicy and much more the taste of china.'),
(16, 'Soupe à l’oignon', 4, '300.00', 'Non-veg', 'Half', 'This is a traditional French soup made of onions and beef stock, usually served with croutons and melted cheese on top.'),
(17, 'Coq au vin', 4, '389.00', 'Veg', 'Full', 'This quintessential French food was popularized by Julia Child, becoming one of her signature dishes.'),
(18, 'Cassoulet', 4, '300.00', 'Non-veg', 'Half', 'Cassoulet is a comfort dish of white beans stewed slowly with meat. The dish typically uses pork or duck but can include sausages.'),
(19, 'Bœuf bourguignon', 4, '401.00', 'Non-veg', 'Half', 'Dishes don’t get much more typically French than bœuf bourguignon. The dish hails from the same region as coq au vin – that’s Burgundy in eastern France.'),
(20, 'Chocolate soufflé', 4, '150.00', 'Veg', 'Half', 'The word soufflé comes from the French verb ‘to blow’ and, as the name suggests, this is a light, airy dessert. '),
(21, 'Extra virgin olive o', 5, '300.00', 'Veg', 'Half', 'While olive oil is often used in cooking, higher quality extra virgin olive oil is used as a garnish to add a peppery flavor. '),
(22, 'Balsamic vinegar', 5, '300.00', 'Non-veg', 'Full', 'True balsamic vinegar is produced in the Italian region of Modena or Emilia-Romagna. '),
(23, 'Pasta sauce', 5, '170.00', 'Veg', 'Half', 'Think marinara (tomatoes, garlic, onion, olive oil, and basil; this is Italy’s most famous sauce).'),
(24, 'Porcini mushrooms', 5, '300.00', 'Veg', 'Full', ' In Italy, porcini mushrooms are found under pine and oak trees, especially in Tuscany. '),
(25, 'Oregano', 5, '170.00', 'Veg', 'Half', 'Dried oregano leaves add an earthy flavor to marinara sauce, pizza, salad dressing, or grilled meats.');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `Order_id` int(5) NOT NULL,
  `Mode` varchar(50) NOT NULL,
  `Amount` decimal(7,2) NOT NULL,
  `Payment_time` time DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `placeorder`
--

CREATE TABLE `placeorder` (
  `cid` int(5) DEFAULT NULL,
  `itemid` int(5) NOT NULL,
  `qty` int(5) NOT NULL,
  `order_dtime` datetime DEFAULT NULL,
  `order_id` int(5) NOT NULL,
  `status` varchar(10) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `cid` int(5) DEFAULT NULL,
  `item_id` int(5) DEFAULT NULL,
  `points` int(10) NOT NULL,
  `remark` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `cid` int(5) DEFAULT NULL,
  `order_id` int(5) DEFAULT NULL,
  `address` varchar(100) NOT NULL,
  `location` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alltedboy`
--
ALTER TABLE `alltedboy`
  ADD KEY `cid` (`cid`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `empid` (`empid`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Cid`),
  ADD UNIQUE KEY `Cus_phone_no` (`Cus_phone_no`),
  ADD UNIQUE KEY `address` (`address`);

--
-- Indexes for table `delivers`
--
ALTER TABLE `delivers`
  ADD PRIMARY KEY (`empid`),
  ADD UNIQUE KEY `phone_no` (`phone_no`);

--
-- Indexes for table `item_category`
--
ALTER TABLE `item_category`
  ADD PRIMARY KEY (`itemcatid`);

--
-- Indexes for table `menu_item`
--
ALTER TABLE `menu_item`
  ADD PRIMARY KEY (`itemid`),
  ADD KEY `itemcatid` (`itemcatid`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`Order_id`);

--
-- Indexes for table `placeorder`
--
ALTER TABLE `placeorder`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `cid` (`cid`),
  ADD KEY `itemid` (`itemid`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD KEY `cid` (`cid`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD KEY `cid` (`cid`),
  ADD KEY `order_id` (`order_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Cid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `item_category`
--
ALTER TABLE `item_category`
  MODIFY `itemcatid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `menu_item`
--
ALTER TABLE `menu_item`
  MODIFY `itemid` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `placeorder`
--
ALTER TABLE `placeorder`
  MODIFY `order_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alltedboy`
--
ALTER TABLE `alltedboy`
  ADD CONSTRAINT `alltedboy_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `customer` (`Cid`),
  ADD CONSTRAINT `alltedboy_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `placeorder` (`order_id`),
  ADD CONSTRAINT `alltedboy_ibfk_3` FOREIGN KEY (`empid`) REFERENCES `delivers` (`empid`);

--
-- Constraints for table `menu_item`
--
ALTER TABLE `menu_item`
  ADD CONSTRAINT `menu_item_ibfk_1` FOREIGN KEY (`itemcatid`) REFERENCES `item_category` (`itemcatid`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`Order_id`) REFERENCES `placeorder` (`order_id`);

--
-- Constraints for table `placeorder`
--
ALTER TABLE `placeorder`
  ADD CONSTRAINT `placeorder_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `customer` (`Cid`),
  ADD CONSTRAINT `placeorder_ibfk_2` FOREIGN KEY (`itemid`) REFERENCES `menu_item` (`itemid`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `customer` (`Cid`),
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `menu_item` (`itemid`);

--
-- Constraints for table `shipping`
--
ALTER TABLE `shipping`
  ADD CONSTRAINT `shipping_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `customer` (`Cid`),
  ADD CONSTRAINT `shipping_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `placeorder` (`order_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
