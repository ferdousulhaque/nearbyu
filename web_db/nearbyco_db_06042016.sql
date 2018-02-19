-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2016 at 08:38 PM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nearbyco_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(3) NOT NULL,
  `city_id` int(3) NOT NULL,
  `city_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `city_id`, `city_name`) VALUES
(1, 45, 'Dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `pref_db`
--

CREATE TABLE `pref_db` (
  `id_cnt` int(11) NOT NULL,
  `loc_usr_id` int(11) NOT NULL,
  `pref_id` int(5) NOT NULL,
  `type_id` int(5) NOT NULL,
  `time_start_pref` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pref_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pref_db`
--

INSERT INTO `pref_db` (`id_cnt`, `loc_usr_id`, `pref_id`, `type_id`, `time_start_pref`, `pref_active`) VALUES
(1, 1, 12, 15, '2014-06-25 10:53:41', 1),
(2, 1, 12, 16, '2014-06-26 17:36:18', 1);

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `region_id` int(2) NOT NULL,
  `city_id` int(5) NOT NULL,
  `region_name` varchar(100) NOT NULL,
  `def_lati` double NOT NULL,
  `def_longi` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`region_id`, `city_id`, `region_name`, `def_lati`, `def_longi`) VALUES
(15, 45, 'Banani', 93.22, 25.33),
(16, 45, 'Uttara', 93.12, 25.19),
(17, 45, 'Gulshan', 93.9, 25.12),
(18, 45, 'Dhanmondi', 93.22, 25.11);

-- --------------------------------------------------------

--
-- Table structure for table `store_gallery`
--

CREATE TABLE `store_gallery` (
  `im_id` int(5) NOT NULL,
  `store_id` int(5) NOT NULL,
  `img_title` varchar(255) NOT NULL,
  `img_thumb` varchar(500) NOT NULL,
  `img_full` varchar(500) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_gallery`
--

INSERT INTO `store_gallery` (`im_id`, `store_id`, `img_title`, `img_thumb`, `img_full`, `active`) VALUES
(40001, 5001, 'Pizza - Pizza Hut Trinidad and Tobago', 'http://your-domain/mx9vp3/store_gallery/img_40001.jpg', 'http://your-domain/mx9vp3/store_gallery/img_40001.png', 1),
(40003, 5002, 'Second Image', 'http://your-domain/mx9vp3/store_gallery/img_40001.jpg', 'http://your-domain/mx9vp3/store_gallery/img_40001.png', 1),
(40004, 5001, 'Pizza - Pizza Hut Trinidad and Tobago', 'http://your-domain/mx9vp3/store_gallery/img_40001.jpg', 'http://your-domain/mx9vp3/store_gallery/img_40001.png', 1),
(40005, 5001, 'Pizza - Pizza Hut Trinidad and Tobago', 'http://your-domain/mx9vp3/store_gallery/img_40001.jpg', 'http://your-domain/mx9vp3/store_gallery/img_40001.png', 1),
(40006, 5002, 'Second Image', 'http://your-domain/mx9vp3/store_gallery/img_40001.jpg', 'http://your-domain/mx9vp3/store_gallery/img_40001.png', 1),
(40007, 5002, 'Second Image', 'http://your-domain/mx9vp3/store_gallery/img_40001.jpg', 'http://your-domain/mx9vp3/store_gallery/img_40001.png', 1),
(40008, 5000, 'Second Image', 'http://your-domain/mx9vp3/store_gallery/img_40001.jpg', 'http://your-domain/mx9vp3/store_gallery/img_40001.png', 1),
(40009, 5003, 'Second Image', 'http://your-domain/mx9vp3/store_gallery/img_40001.jpg', 'http://your-domain/mx9vp3/store_gallery/img_40001.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `store_info`
--

CREATE TABLE `store_info` (
  `store_id` int(5) NOT NULL,
  `type_id` int(5) NOT NULL,
  `store_owner_nm` varchar(100) NOT NULL,
  `store_owner_mob` varchar(15) NOT NULL,
  `open_from_to` varchar(300) NOT NULL,
  `store_name` varchar(250) NOT NULL,
  `store_icon` varchar(500) NOT NULL DEFAULT 'type_icon_15.png',
  `store_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `store_active` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_info`
--

INSERT INTO `store_info` (`store_id`, `type_id`, `store_owner_nm`, `store_owner_mob`, `open_from_to`, `store_name`, `store_icon`, `store_timestamp`, `store_active`) VALUES
(5000, 15, 'Shah', '01811080892', '10AM-10PM', 'KFC', 'http://your-domain/mx9vp3/store_logo/5000.jpg', '2014-06-25 10:12:07', 1),
(5001, 15, 'Rabita', '01811080893', '9AM-5PM', 'Nandoo''s Peri Peri Chicken', 'http://your-domain/mx9vp3/store_logo/5001.jpg', '2014-06-26 15:56:27', 1),
(5002, 15, 'Ferdous', '01711084714', '4PM-12AM', 'Pizza Hut Inc.', 'http://your-domain/mx9vp3/store_logo/5002.jpg', '2015-11-16 23:00:40', 1),
(5004, 16, 'Ferdous', '01711084714', '11AM-9PM', 'Fairy Cloth Store', 'http://your-domain/mx9vp3/store_logo/5002.jpg', '2015-12-11 23:37:06', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `store_info_woffer`
--
CREATE TABLE `store_info_woffer` (
`store_id` int(5)
,`store_name` varchar(250)
,`store_active` int(1)
,`type_id` int(5)
,`store_icon` varchar(500)
,`store_tnt` varchar(20)
,`store_mobile` varchar(20)
,`store_longi` double
,`store_lati` double
,`store_loc_active` int(1)
,`open` varchar(900)
,`close` varchar(2200)
,`sun` int(1)
,`mon` int(1)
,`tue` int(1)
,`wed` int(1)
,`thu` int(1)
,`fri` int(1)
,`sat` int(1)
,`sum_count` int(11)
,`sum_rating` int(11)
,`offer_id` int(5)
,`offer_discount` varchar(5)
,`offer_tagline` varchar(100)
,`offer_active` int(1)
);

-- --------------------------------------------------------

--
-- Table structure for table `store_loc`
--

CREATE TABLE `store_loc` (
  `id` int(5) NOT NULL,
  `store_id` int(5) NOT NULL,
  `store_longi` double NOT NULL,
  `store_lati` double NOT NULL,
  `store_address` text NOT NULL,
  `store_tnt` varchar(20) NOT NULL,
  `store_mobile` varchar(20) NOT NULL,
  `updated_on` datetime NOT NULL,
  `store_loc_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_loc`
--

INSERT INTO `store_loc` (`id`, `store_id`, `store_longi`, `store_lati`, `store_address`, `store_tnt`, `store_mobile`, `updated_on`, `store_loc_active`) VALUES
(1, 5000, 90.407806, 23.792496, 'Bir Uttam Mir Shawkat Sarak, Dhaka, Bangladesh', '+041720927', '+8801711084714', '2015-12-18 06:49:16', 1),
(2, 5001, 90.407806, 23.792496, 'Gulshan Plot SE(F)1 Gulshan South Avenue Biruttam Mir showkat ali Road Gulshan 1 Dhaka, Bangladesh.', '+028812121', '+8801711084712', '2015-12-16 11:21:38', 1),
(3, 5002, 90.374835, 23.756276, '475 Gulshan 1, Dhaka, Bangladesh', 'n/a', 'n/a', '2015-12-16 11:21:48', 1),
(4, 5004, 90.295949, 23.934947, 'House 23, Road 16(new) 27(old) Dhanmondi, Dhaka, Bangladesh.', '+028122720', '+8801711084712', '2015-12-16 11:21:30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `store_offr`
--

CREATE TABLE `store_offr` (
  `offer_id` int(5) NOT NULL,
  `store_id` int(11) NOT NULL,
  `offer_discount` varchar(5) NOT NULL DEFAULT '0',
  `offer_tagline` varchar(100) NOT NULL,
  `offer_tagline_detail` text NOT NULL,
  `start_from` int(11) NOT NULL,
  `expira_on` int(11) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `offer_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_offr`
--

INSERT INTO `store_offr` (`offer_id`, `store_id`, `offer_discount`, `offer_tagline`, `offer_tagline_detail`, `start_from`, `expira_on`, `added_on`, `offer_active`) VALUES
(2000, 5000, '12', 'KFC Bucket Chicken on discounted price', 'KFC Bucket Chicken on discounted price', 1444981980, 1452930780, '2014-06-25 10:39:56', 1),
(2001, 5001, '5', 'Special Discount on the Foods Check on next page', 'Special Discount on the Foods on Happy time from 1-3PM on lunch', 1444981980, 1452930780, '2014-06-26 18:12:04', 1),
(2002, 5002, '10', '3 Packages on Cheese Pizza. See details', '3 Packages on Cheese Pizza. 1. Pizza one 2. Pizza two 3. Pizza three', 1444981980, 1447660380, '2015-11-16 23:04:23', 1),
(2003, 5004, '15', 'Year end sale discount on specific clothes', 'Year end sale discount on specific clothes on total sales.\r\n\r\n1. Different women gown', 64365363, 64365363, '2015-12-11 23:43:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `store_openinfo`
--

CREATE TABLE `store_openinfo` (
  `store_id` int(5) NOT NULL,
  `open` varchar(900) NOT NULL DEFAULT '0900',
  `close` varchar(2200) NOT NULL DEFAULT '2200',
  `sun` int(1) NOT NULL DEFAULT '1',
  `mon` int(1) NOT NULL DEFAULT '1',
  `tue` int(1) NOT NULL DEFAULT '1',
  `wed` int(1) NOT NULL DEFAULT '1',
  `thu` int(1) NOT NULL DEFAULT '1',
  `fri` int(1) NOT NULL DEFAULT '1',
  `sat` int(1) NOT NULL DEFAULT '1',
  `last_update` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_openinfo`
--

INSERT INTO `store_openinfo` (`store_id`, `open`, `close`, `sun`, `mon`, `tue`, `wed`, `thu`, `fri`, `sat`, `last_update`) VALUES
(5000, '0900', '2200', 1, 1, 1, 1, 1, 0, 1, '2016-02-05 18:00:00'),
(5001, '0900', '2200', 1, 1, 1, 0, 0, 0, 1, '2016-02-06 05:57:41'),
(5002, '0900', '2200', 1, 1, 0, 1, 1, 0, 1, '2016-02-06 05:57:51'),
(5004, '0900', '2200', 1, 1, 1, 0, 1, 1, 1, '2016-02-06 05:57:55');

-- --------------------------------------------------------

--
-- Table structure for table `store_rating`
--

CREATE TABLE `store_rating` (
  `r_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `sum_count` int(11) NOT NULL DEFAULT '1',
  `sum_rating` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_rating`
--

INSERT INTO `store_rating` (`r_id`, `store_id`, `sum_count`, `sum_rating`) VALUES
(1, 5000, 5, 15),
(2, 5001, 2, 3),
(3, 5002, 1, 1),
(4, 5004, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `store_review`
--

CREATE TABLE `store_review` (
  `rev_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `offr_id` int(11) NOT NULL,
  `usr_id` int(11) NOT NULL,
  `usr_rating` double NOT NULL,
  `usr_comment` varchar(250) NOT NULL,
  `visible` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_review`
--

INSERT INTO `store_review` (`rev_id`, `store_id`, `offr_id`, `usr_id`, `usr_rating`, `usr_comment`, `visible`) VALUES
(1, 5000, 2000, 1, 3, 'Chicken masala Pizza is good here. Must try.', 1),
(2, 5001, 2003, 1, 4.5, 'KFC foods are awesome', 1),
(3, 5002, 2004, 2, 4, 'Food are good here have to check them all.', 1),
(4, 5001, 2003, 1, 4, 'Very Good Food.', 0),
(5, 5001, 2003, 1, 3, 'Good Food', 0);

-- --------------------------------------------------------

--
-- Table structure for table `store_type`
--

CREATE TABLE `store_type` (
  `id` int(5) NOT NULL,
  `type_id` int(5) NOT NULL,
  `type_desc` varchar(200) NOT NULL,
  `type_desc_long` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_type`
--

INSERT INTO `store_type` (`id`, `type_id`, `type_desc`, `type_desc_long`) VALUES
(1, 15, 'Restaurant', 'Mostly the well known restaurants in Dhaka are in the list.'),
(2, 16, 'Cloth Store', 'Cloth and boutique store offers nearby'),
(3, 17, 'Fast Food', 'Spicy fast food shops nearby'),
(4, 18, 'Concerts', 'Nearby concerts and musical events'),
(5, 19, 'Grocery', 'Grocery shops nearby');

-- --------------------------------------------------------

--
-- Table structure for table `user_claimed`
--

CREATE TABLE `user_claimed` (
  `id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `offr_id` int(11) NOT NULL,
  `usr_id` int(11) NOT NULL,
  `payment_code` varchar(200) NOT NULL,
  `payment_amount` int(5) NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_claimed`
--

INSERT INTO `user_claimed` (`id`, `shop_id`, `offr_id`, `usr_id`, `payment_code`, `payment_amount`, `time_stamp`) VALUES
(1, 5002, 20004, 23, 'ds3434dfs45fsdsasar3', 1200, '2015-12-16 10:48:34');

-- --------------------------------------------------------

--
-- Table structure for table `user_claim_queue`
--

CREATE TABLE `user_claim_queue` (
  `id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `offr_id` int(11) NOT NULL,
  `usr_id` int(11) NOT NULL,
  `payment_code` varchar(200) NOT NULL,
  `payment_amount` int(5) NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_claim_queue`
--

INSERT INTO `user_claim_queue` (`id`, `shop_id`, `offr_id`, `usr_id`, `payment_code`, `payment_amount`, `time_stamp`) VALUES
(1, 5002, 20004, 23, 'ds3434dfs45fsdsasar3', 1200, '2015-12-16 10:48:34');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `id` int(20) NOT NULL,
  `username` varchar(70) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `user_mob` varchar(11) NOT NULL,
  `user_imei` varchar(15) NOT NULL,
  `user_img` varchar(100) DEFAULT NULL,
  `usr_occu` varchar(30) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_login` timestamp NULL DEFAULT NULL,
  `active` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`id`, `username`, `password`, `email`, `user_mob`, `user_imei`, `user_img`, `usr_occu`, `created_on`, `last_login`, `active`) VALUES
(1, 'ferdous', 'cc03e747a6afbbcbf8be7668acfebee5', 'ferdous@gmail.com', '01711084714', '355490062509355', 'http://your-domain/mx9vp3/mx10vp3/cc03e7.png', 'Engineer', '2016-02-06 10:27:56', '2016-02-06 10:27:56', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_new_queue`
--

CREATE TABLE `user_new_queue` (
  `id` int(20) NOT NULL,
  `username` varchar(70) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `user_mob` varchar(11) NOT NULL,
  `user_imei` varchar(15) NOT NULL,
  `usr_occu` varchar(30) DEFAULT NULL,
  `activation_link` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_new_queue`
--

INSERT INTO `user_new_queue` (`id`, `username`, `password`, `email`, `user_mob`, `user_imei`, `usr_occu`, `activation_link`) VALUES
(23, 'rest', 'cc03e747a6afbbcbf8be7668acfebee5', 'rest@gmail.com', '01711448989', '355490062509363', 'Student', 'http://your-domain/activate/validate?ot=jFegdg');

-- --------------------------------------------------------

--
-- Table structure for table `usr_loc`
--

CREATE TABLE `usr_loc` (
  `loc_usr_id` int(11) NOT NULL,
  `usr_name` varchar(70) NOT NULL,
  `usr_msisdn` varchar(25) NOT NULL,
  `usr_imei` varchar(25) DEFAULT NULL,
  `usr_email` varchar(70) NOT NULL,
  `usr_occupation` varchar(70) DEFAULT NULL,
  `usr_longi` double DEFAULT NULL,
  `usr_lati` double DEFAULT NULL,
  `usr_rad` int(2) DEFAULT NULL,
  `last_check_time` int(11) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `usr_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usr_loc`
--

INSERT INTO `usr_loc` (`loc_usr_id`, `usr_name`, `usr_msisdn`, `usr_imei`, `usr_email`, `usr_occupation`, `usr_longi`, `usr_lati`, `usr_rad`, `last_check_time`, `created_on`, `usr_active`) VALUES
(1, 'Haque', '+8801711084714', '355490062509355', 'cipher@gmail.com', 'Engineer', 93.54, 25.67, 2, 1403703780, '2015-12-08 13:21:28', 1),
(2, 'ferdous', '+8801711084713', '355490062509355', 'ferdous@gmail.com', 'Accountant', 90.4379188, 23.8232349, NULL, 1403703780, '2015-12-08 13:22:26', 1);

-- --------------------------------------------------------

--
-- Structure for view `store_info_woffer`
--
DROP TABLE IF EXISTS `store_info_woffer`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `store_info_woffer`  AS  (select `store_info`.`store_id` AS `store_id`,`store_info`.`store_name` AS `store_name`,`store_info`.`store_active` AS `store_active`,`store_info`.`type_id` AS `type_id`,`store_info`.`store_icon` AS `store_icon`,`store_loc`.`store_tnt` AS `store_tnt`,`store_loc`.`store_mobile` AS `store_mobile`,`store_loc`.`store_longi` AS `store_longi`,`store_loc`.`store_lati` AS `store_lati`,`store_loc`.`store_loc_active` AS `store_loc_active`,`store_openinfo`.`open` AS `open`,`store_openinfo`.`close` AS `close`,`store_openinfo`.`sun` AS `sun`,`store_openinfo`.`mon` AS `mon`,`store_openinfo`.`tue` AS `tue`,`store_openinfo`.`wed` AS `wed`,`store_openinfo`.`thu` AS `thu`,`store_openinfo`.`fri` AS `fri`,`store_openinfo`.`sat` AS `sat`,`store_rating`.`sum_count` AS `sum_count`,`store_rating`.`sum_rating` AS `sum_rating`,`store_offr`.`offer_id` AS `offer_id`,`store_offr`.`offer_discount` AS `offer_discount`,`store_offr`.`offer_tagline` AS `offer_tagline`,`store_offr`.`offer_active` AS `offer_active` from ((((`store_loc` join `store_offr` on((`store_offr`.`store_id` = `store_loc`.`store_id`))) join `store_info` on((`store_info`.`store_id` = `store_loc`.`store_id`))) join `store_rating` on((`store_rating`.`store_id` = `store_info`.`store_id`))) join `store_openinfo` on((`store_openinfo`.`store_id` = `store_info`.`store_id`)))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pref_db`
--
ALTER TABLE `pref_db`
  ADD PRIMARY KEY (`id_cnt`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`region_id`),
  ADD UNIQUE KEY `region_id` (`region_id`);

--
-- Indexes for table `store_gallery`
--
ALTER TABLE `store_gallery`
  ADD PRIMARY KEY (`im_id`);

--
-- Indexes for table `store_info`
--
ALTER TABLE `store_info`
  ADD PRIMARY KEY (`store_id`),
  ADD UNIQUE KEY `store_id` (`store_id`);

--
-- Indexes for table `store_loc`
--
ALTER TABLE `store_loc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `store_offr`
--
ALTER TABLE `store_offr`
  ADD PRIMARY KEY (`offer_id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `store_openinfo`
--
ALTER TABLE `store_openinfo`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `store_rating`
--
ALTER TABLE `store_rating`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `store_review`
--
ALTER TABLE `store_review`
  ADD PRIMARY KEY (`rev_id`);

--
-- Indexes for table `store_type`
--
ALTER TABLE `store_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_claimed`
--
ALTER TABLE `user_claimed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_claim_queue`
--
ALTER TABLE `user_claim_queue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_new_queue`
--
ALTER TABLE `user_new_queue`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `usr_loc`
--
ALTER TABLE `usr_loc`
  ADD PRIMARY KEY (`usr_msisdn`),
  ADD KEY `id` (`loc_usr_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pref_db`
--
ALTER TABLE `pref_db`
  MODIFY `id_cnt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
  MODIFY `region_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `store_gallery`
--
ALTER TABLE `store_gallery`
  MODIFY `im_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40010;
--
-- AUTO_INCREMENT for table `store_info`
--
ALTER TABLE `store_info`
  MODIFY `store_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5005;
--
-- AUTO_INCREMENT for table `store_loc`
--
ALTER TABLE `store_loc`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `store_offr`
--
ALTER TABLE `store_offr`
  MODIFY `offer_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2004;
--
-- AUTO_INCREMENT for table `store_rating`
--
ALTER TABLE `store_rating`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `store_review`
--
ALTER TABLE `store_review`
  MODIFY `rev_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `store_type`
--
ALTER TABLE `store_type`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user_claimed`
--
ALTER TABLE `user_claimed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_claim_queue`
--
ALTER TABLE `user_claim_queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_new_queue`
--
ALTER TABLE `user_new_queue`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `usr_loc`
--
ALTER TABLE `usr_loc`
  MODIFY `loc_usr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
