-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 09, 2021 at 03:37 PM
-- Server version: 10.3.31-MariaDB-log-cll-lve
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `techvqgu_wp784`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_activities`
--

CREATE TABLE `activity_activities` (
  `id` int(11) NOT NULL,
  `activity_id` int(11) NOT NULL,
  `activity_name` varchar(100) NOT NULL,
  `activity_description` varchar(500) NOT NULL,
  `service_type` varchar(100) NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `activity_categories`
--

CREATE TABLE `activity_categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_description` varchar(500) NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `activity_details`
--

CREATE TABLE `activity_details` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_activity` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `activity_type` int(11) NOT NULL,
  `activity_title` varchar(100) NOT NULL,
  `activity_description` text NOT NULL,
  `activity_image` varchar(255) NOT NULL,
  `activity_check_in` varchar(63) NOT NULL,
  `activity_check_out` varchar(63) NOT NULL,
  `activity_location` varchar(111) NOT NULL,
  `activity_email` varchar(63) NOT NULL,
  `activity_phone_no` varchar(111) NOT NULL,
  `activity_price` varchar(111) NOT NULL,
  `video` varchar(500) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `available_rooms`
--

CREATE TABLE `available_rooms` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `total_room` int(11) NOT NULL,
  `room_title` varchar(100) NOT NULL,
  `room_description` text NOT NULL,
  `room_image` varchar(255) NOT NULL,
  `room_check_in` varchar(63) NOT NULL,
  `room_check_out` varchar(63) NOT NULL,
  `room_location` varchar(111) NOT NULL,
  `room_email` varchar(63) NOT NULL,
  `room_phone_no` varchar(111) NOT NULL,
  `room_price` varchar(111) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `available_rooms`
--

INSERT INTO `available_rooms` (`id`, `user_id`, `hotel_id`, `total_room`, `room_title`, `room_description`, `room_image`, `room_check_in`, `room_check_out`, `room_location`, `room_email`, `room_phone_no`, `room_price`, `date_added`) VALUES
(6, 1, 18, 6, 'STANDARD DOUBLE ROOM', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '', '2019-07-21', '2019-07-30', '', 'room@email.com', '+955855547775', '6963', '2019-07-20 15:11:06'),
(7, 1, 18, 6, 'STANDARD DOUBLE ROOM', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '', '2019-07-21', '2019-07-29', '', 'room@email.com', '+955855547775', '6963', '2019-07-20 15:14:38'),
(8, 1, 20, 5, 'room type one', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', '', '2019-07-22', '2019-07-31', '', 'roomone@test.com', '13132131', '100', '2019-07-21 17:10:55'),
(9, 1, 21, 10, 'Rabi test  rooms  ', 'Rabi test  rooms  Rabi test  rooms  Rabi test  rooms  Rabi test  rooms  Rabi test  rooms  Rabi test  rooms  Rabi test  rooms  Rabi test  rooms  Rabi test  rooms  Rabi test  rooms  Rabi test  rooms  Rabi test  rooms  Rabi test  rooms  ', '', '2019-07-16', '2019-07-31', '', 'm.rabiul09@gmail.com', '01717677966', '400', '2019-07-21 18:15:55');

-- --------------------------------------------------------

--
-- Table structure for table `booking_info`
--

CREATE TABLE `booking_info` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `u_city` varchar(255) NOT NULL,
  `u_bed` varchar(111) NOT NULL,
  `u_adults` varchar(11) NOT NULL,
  `u_name` varchar(255) NOT NULL,
  `u_children` varchar(111) NOT NULL,
  `u_infants` varchar(111) NOT NULL,
  `u_lname` varchar(111) NOT NULL,
  `u_cell` varchar(111) NOT NULL,
  `u_email` varchar(111) NOT NULL,
  `u_address` varchar(111) NOT NULL,
  `u_ucity` varchar(111) NOT NULL,
  `u_comments` varchar(111) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking_info`
--

INSERT INTO `booking_info` (`id`, `user_id`, `post_id`, `u_city`, `u_bed`, `u_adults`, `u_name`, `u_children`, `u_infants`, `u_lname`, `u_cell`, `u_email`, `u_address`, `u_ucity`, `u_comments`, `date_added`) VALUES
(1, 2, 196, 'Gujranwala', 'Triple Bed', '1', 'abdus ', '1', '1', 'sattar', '01822346983', 'sattar.3001@gmail.com', 'dhaka', 'dhaka', 'test', '2019-10-26 15:04:08');

-- --------------------------------------------------------

--
-- Table structure for table `car_details`
--

CREATE TABLE `car_details` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_car` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `car_title` varchar(100) NOT NULL,
  `car_description` text NOT NULL,
  `car_image` varchar(255) NOT NULL,
  `car_check_in` varchar(63) NOT NULL,
  `car_check_out` varchar(63) NOT NULL,
  `car_location` varchar(111) NOT NULL,
  `car_email` varchar(63) NOT NULL,
  `car_phone_no` varchar(111) NOT NULL,
  `car_price` varchar(111) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car_details`
--

INSERT INTO `car_details` (`id`, `user_id`, `total_car`, `package_id`, `car_title`, `car_description`, `car_image`, `car_check_in`, `car_check_out`, `car_location`, `car_email`, `car_phone_no`, `car_price`, `date_added`) VALUES
(5, 1, 0, 8, '', 'The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.\r\n\r\nIn 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car’s performance but to improve its overall quality, which had been neglected in the haste to start production.\r\n\r\nThe following year, while waiting for the Countach prototype to be developed to a stage that would enable its production, the Espada was further modified and perfected, and the new series was presented in October 1972. New wheels as well as perfected detailing of the entire body, the dashboard, the central instrument panel and various components characterised this well-made Series III. This last series essentially represented the decisive peak in the evolution of this outstanding four-seater, which is still in great demand among Lamborghini fans around the world. Its production would reach the respectable figure of 1226 units, quite a large number for a carmaker of this size selling at top-level list prices.\r\n\r\nThe production model of the Countach was codenamed LP 400 because its V12 – positioned longitudinally behind the cockpit – was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.', '', '', '', 'New York City', 'car@mail.com', '+9133633644474', '1900', '2019-07-22 08:05:28'),
(6, 1, 20, 8, '', 'Arrive at your destination in style with this air-conditioned automatic. With room for 4 passengers and 2 pieces of luggage, it\\\'s ideal for small groups looking to get from A to B in comfort. Price can change at any moment so book now to avoid disappointment!', '', '', '', 'New York City', 'car@mail.com', '+9133633644474', '1900', '2019-07-22 08:06:40'),
(7, 1, 20, 2, '', 'The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.\r\n\r\nIn 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car’s performance but to improve its overall quality, which had been neglected in the haste to start production.\r\n\r\nThe following year, while waiting for the Countach prototype to be developed to a stage that would enable its production, the Espada was further modified and perfected, and the new series was presented in October 1972. New wheels as well as perfected detailing of the entire body, the dashboard, the central instrument panel and various components characterised this well-made Series III. This last series essentially represented the decisive peak in the evolution of this outstanding four-seater, which is still in great demand among Lamborghini fans around the world. Its production would reach the respectable figure of 1226 units, quite a large number for a carmaker of this size selling at top-level list prices.\r\n\r\nThe production model of the Countach was codenamed LP 400 because its V12 – positioned longitudinally behind the cockpit – was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.', '', '', '', 'New York City', 'car@mail.com', '+9133633644474', '1900', '2019-07-22 08:07:43'),
(8, 1, 50, 2, '', 'The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.\r\n\r\nIn 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car’s performance but to improve its overall quality, which had been neglected in the haste to start production.\r\n\r\nThe following year, while waiting for the Countach prototype to be developed to a stage that would enable its production, the Espada was further modified and perfected, and the new series was presented in October 1972. New wheels as well as perfected detailing of the entire body, the dashboard, the central instrument panel and various components characterised this well-made Series III. This last series essentially represented the decisive peak in the evolution of this outstanding four-seater, which is still in great demand among Lamborghini fans around the world. Its production would reach the respectable figure of 1226 units, quite a large number for a carmaker of this size selling at top-level list prices.\r\n\r\nThe production model of the Countach was codenamed LP 400 because its V12 – positioned longitudinally behind the cockpit – was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.', '', '', '', 'New York City', 'car@mail.com', '+9133633644474', '1900', '2019-07-22 08:08:22');

-- --------------------------------------------------------

--
-- Table structure for table `car_packages`
--

CREATE TABLE `car_packages` (
  `id` int(11) NOT NULL,
  `package_name` varchar(100) NOT NULL,
  `package_description` varchar(500) NOT NULL,
  `service_type` varchar(100) NOT NULL,
  `package_price` int(10) NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car_packages`
--

INSERT INTO `car_packages` (`id`, `package_name`, `package_description`, `service_type`, `package_price`, `status`, `added_date`) VALUES
(1, 'CAr Package 1', '', 'car', 600, 0, '2019-07-10 18:34:54'),
(2, 'Car Package 2', '', 'car', 500, 0, '2019-07-10 18:34:48'),
(3, 'aaaaaaaaaaa', 'bbbbbbbbbb', 'aaaaaaaaaaaa', 400, 0, '2019-07-10 18:34:58'),
(4, 'ttttttttttt', '', '', 0, 0, '2019-07-08 17:06:36'),
(5, 'aaa', 'aaaaaa', '', 0, 0, '2019-07-08 17:07:17'),
(6, 'qqq', 'qqqqqqqqqqqqqqqqqq', 'cars', 0, 0, '2019-07-08 17:08:01'),
(7, 'eeee', 'eeeeeeeee', 'cars', 0, 0, '2019-07-08 17:08:44'),
(8, 'Package One', 'This itinerary is subject to change without prior notice according to weather conditions, strikes, roadblocks, or force majeure events which are beyond our control. We will always do our best to follow the itinerary as close as possible.', 'cars', 0, 0, '2019-07-22 08:03:21');

-- --------------------------------------------------------

--
-- Table structure for table `city_list`
--

CREATE TABLE `city_list` (
  `id` int(11) NOT NULL,
  `city_name` varchar(100) NOT NULL,
  `service_type` varchar(100) NOT NULL,
  `status` int(2) NOT NULL DEFAULT 1,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city_list`
--

INSERT INTO `city_list` (`id`, `city_name`, `service_type`, `status`, `added_date`) VALUES
(1, 'Dhaka', 'cars', 0, '2019-10-04 15:44:26'),
(2, 'Dhaka', 'hotels', 0, '2019-10-13 19:17:02'),
(3, 'dhakaa', 'restaurants', 0, '2019-10-17 00:40:26'),
(4, 'Dhaka2', 'hotels', 0, '2019-10-13 20:17:02'),
(5, 'Dhaka3', 'cars', 0, '2019-10-13 20:17:23'),
(6, 'Dhaka4', 'activities', 1, '2019-10-17 00:30:32'),
(7, 'Khulna', 'tours', 1, '2019-10-17 00:28:57'),
(8, 'Rajshai', 'guides', 1, '2019-10-15 19:19:22'),
(9, 'Jasore', 'transports', 1, '2019-10-17 00:31:39');

-- --------------------------------------------------------

--
-- Table structure for table `guide_categories`
--

CREATE TABLE `guide_categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_description` varchar(500) NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guide_categories`
--

INSERT INTO `guide_categories` (`id`, `category_name`, `category_description`, `status`, `added_date`) VALUES
(1, 'Guide Category 1 ', 'Tour Category 1 Tour Category 1 Tour Category 1 Tour Category 1 Tour Category 1 Tour Category 1 Tour Category 1 Tour Category 1 Tour Category 1 Tour Category 1 Tour Category 1 Tour Category 1 Tour Category 1 Tour Category 1 Tour Category 1 Tour Category 1 Tour Category 1 Tour Category 1 ', 0, '2019-07-25 19:45:13'),
(2, 'Guide  Categiry 2 ', 'Tour Categiry 2 Tour Categiry 2 Tour Categiry 2 Tour Categiry 2 Tour Categiry 2 Tour Categiry 2 Tour Categiry 2 Tour Categiry 2 Tour Categiry 2 Tour Categiry 2 Tour Categiry 2 Tour Categiry 2 Tour Categiry 2 Tour Categiry 2 Tour Categiry 2 ', 0, '2019-07-25 19:45:18'),
(3, 'gude name ', 'gude name gude name gude name gude name gude name gude name gude name gude name gude name gude name gude name gude name gude name gude name gude name gude name gude name gude name gude name gude name gude name gude name gude name gude name gude name gude name gude name gude name gude name gude name gude name gude name ', 0, '2019-07-25 16:33:45');

-- --------------------------------------------------------

--
-- Table structure for table `guide_details`
--

CREATE TABLE `guide_details` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_guide` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `guide_type` int(11) NOT NULL,
  `guide_title` varchar(100) NOT NULL,
  `guide_description` text NOT NULL,
  `guide_image` varchar(255) NOT NULL,
  `guide_check_in` varchar(63) NOT NULL,
  `guide_check_out` varchar(63) NOT NULL,
  `guide_location` varchar(111) NOT NULL,
  `guide_email` varchar(63) NOT NULL,
  `guide_phone_no` varchar(111) NOT NULL,
  `guide_price` varchar(111) NOT NULL,
  `video` varchar(500) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `guide_packages`
--

CREATE TABLE `guide_packages` (
  `id` int(11) NOT NULL,
  `guide_id` int(11) NOT NULL,
  `package_name` varchar(100) NOT NULL,
  `package_description` varchar(500) NOT NULL,
  `service_type` varchar(100) NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hotel_details`
--

CREATE TABLE `hotel_details` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `hotel_title` varchar(100) NOT NULL,
  `hotel_description` text NOT NULL,
  `hotel_image` varchar(255) NOT NULL,
  `hotel_check_in` varchar(63) NOT NULL,
  `hotel_check_out` varchar(63) NOT NULL,
  `hotel_location` varchar(111) NOT NULL,
  `hotel_email` varchar(63) NOT NULL,
  `hotel_phone_no` varchar(111) NOT NULL,
  `hotel_price` varchar(111) NOT NULL,
  `hotel_website` varchar(111) NOT NULL,
  `hotel_cancelled_repayment` text NOT NULL,
  `hotel_children_and_extrabed` varchar(111) NOT NULL,
  `hotel_pets` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel_details`
--

INSERT INTO `hotel_details` (`id`, `user_id`, `hotel_id`, `hotel_title`, `hotel_description`, `hotel_image`, `hotel_check_in`, `hotel_check_out`, `hotel_location`, `hotel_email`, `hotel_phone_no`, `hotel_price`, `hotel_website`, `hotel_cancelled_repayment`, `hotel_children_and_extrabed`, `hotel_pets`) VALUES
(15, 1, 0, 'InterContinental New York Barclay', 'This boutique hotel in the Manhattan neighborhood of Nolita features a private rooftop and rooms with free WiFi. The Bowery subway station is 1 block from this New York hotel.\n\nGuest rooms at the Nolitan Hotel provide a 37-inch flat-screen cable TV and an iPod dock. The bathrooms provide bathrobes and slippers.\n\nThe hotel provides free bike rentals and a local gym membership for guests. There is also on-site dining at the French bistro Cantine Parisienne. A complimentary wine and cheese hour is served every Monday through Saturday.\n\nTimes Square, Rockefeller Center and Madison Square Garden are 4.8 km from The Nolitan Hotel. The hotel is bordered by SoHo, Little Italy and Chinatown.\n\nNoLita is a great choice for travelers interested in nightlife, food and culture.\nIn this area you can shop ’til you drop for popular brands like Apple, H&M, Zara, Prada, Ralph Lauren.\n\nWe speak your language!', '', '2019-07-20', '2019-07-23', '111 East 48th Street, New York, New York 10017', 'info@hotel.com', '+999854447584', '1300', 'www.hotel.com', 'Repayment', 'Yes', ''),
(16, 1, 0, 'The Pearl Hotel NewYork City', 'This boutique hotel in the Manhattan neighborhood of Nolita features a private rooftop and rooms with free WiFi. The Bowery subway station is 1 block from this New York hotel.\n\nGuest rooms at the Nolitan Hotel provide a 37-inch flat-screen cable TV and an iPod dock. The bathrooms provide bathrobes and slippers.\n\nThe hotel provides free bike rentals and a local gym membership for guests. There is also on-site dining at the French bistro Cantine Parisienne. A complimentary wine and cheese hour is served every Monday through Saturday.\n\nTimes Square, Rockefeller Center and Madison Square Garden are 4.8 km from The Nolitan Hotel. The hotel is bordered by SoHo, Little Italy and Chinatown.\n\nNoLita is a great choice for travelers interested in nightlife, food and culture.\nIn this area you can shop ’til you drop for popular brands like Apple, H&M, Zara, Prada, Ralph Lauren.\n\nWe speak your language!', '', '2019-07-21', '2019-07-31', '111 East 48th Street, New York, New York 10017', 'info@hotel.com', '+999854447584', '1300', 'www.hotel.com', 'Repayment', 'Yes', ''),
(17, 1, 0, 'Grand Hyatt Hotel', 'This boutique hotel in the Manhattan neighborhood of Nolita features a private rooftop and rooms with free WiFi. The Bowery subway station is 1 block from this New York hotel.\n\nGuest rooms at the Nolitan Hotel provide a 37-inch flat-screen cable TV and an iPod dock. The bathrooms provide bathrobes and slippers.\n\nThe hotel provides free bike rentals and a local gym membership for guests. There is also on-site dining at the French bistro Cantine Parisienne. A complimentary wine and cheese hour is served every Monday through Saturday.\n\nTimes Square, Rockefeller Center and Madison Square Garden are 4.8 km from The Nolitan Hotel. The hotel is bordered by SoHo, Little Italy and Chinatown.\n\nNoLita is a great choice for travelers interested in nightlife, food and culture.\nIn this area you can shop ’til you drop for popular brands like Apple, H&M, Zara, Prada, Ralph Lauren.\n\nWe speak your language!', '', '2019-07-21', '2019-07-30', '111 East 48th Street, New York, New York 10017', 'info@hotel.com', '+999854447584', '1300', 'www.hotel.com', 'Repayment', 'Yes', ''),
(18, 1, 0, 'Wyndham Hotels and Resorts', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '', '2019-07-21', '2019-07-30', '111 East 48th Street, New York, New York 10017', 'info@hotel.com', '+999854447584', '1300', 'www.hotel.com', 'Repayment', 'Yes', ''),
(19, 1, 0, 'eee', 'eeee', '', '2019-07-17', '2019-07-27', 'dhaka', 'm.rabiul09@gmail.com', '01717677966', '2323', 'wewewe', 'eeee', 'wewew', ''),
(20, 1, 0, 'test hotel 21st july', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. \r\n\r\nIt has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', '', '2019-07-22', '2019-08-21', 'dhaka', 'hotel@test.com', '032132121', '1000', 'www.hotel.com', '100', '100', ''),
(21, 1, 0, 'rabi test hotels  ', 'rabi test hotels  rabi test hotels  rabi test hotels  rabi test hotels  rabi test hotels  rabi test hotels  rabi test hotels  rabi test hotels  rabi test hotels  rabi test hotels  rabi test hotels  rabi test hotels  rabi test hotels  rabi test hotels  rabi test hotels  rabi test hotels  ', '', '2019-07-01', '2019-07-25', 'dhaka', 'm.rabiul09@gmail.com', '01717677966', '200', 'www.rabitesthotels .com', 'yes', '22', '');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_offers`
--

CREATE TABLE `hotel_offers` (
  `id` int(11) NOT NULL,
  `service_name` varchar(500) NOT NULL,
  `service_img` varchar(100) NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel_offers`
--

INSERT INTO `hotel_offers` (`id`, `service_name`, `service_img`, `status`, `added_date`) VALUES
(1, 'Airport Transport', 'Shuttle Bus Service.jpg', 0, '2019-07-18 16:54:55'),
(2, 'Shuttle Bus Service', 'Restaurant.jpg', 0, '2019-07-18 16:55:07'),
(3, 'Wi-Fi Internet', 'Wi-Fi Internet.jpg', 0, '2019-07-18 16:55:07'),
(4, 'Shuttle Bus Service', 'Wi-Fi Internet.jpg', 0, '2019-07-18 16:55:07'),
(5, 'Outdoor pool (all year)', 'Shuttle Bus Service.jpg', 0, '2019-07-18 16:54:55'),
(6, 'Shuttle Bus Service', 'Restaurant.jpg', 0, '2019-07-18 16:55:07'),
(7, 'Wi-Fi Internet', 'Wi-Fi Internet.jpg', 0, '2019-07-18 16:55:07'),
(8, 'Shuttle Bus Service', 'Wi-Fi Internet.jpg', 0, '2019-07-18 16:55:07'),
(9, 'Bathrobe', 'Shuttle Bus Service.jpg', 0, '2019-07-18 16:54:55');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_offers_relation`
--

CREATE TABLE `hotel_offers_relation` (
  `id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `service_type` varchar(100) NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel_offers_relation`
--

INSERT INTO `hotel_offers_relation` (`id`, `hotel_id`, `service_id`, `service_type`, `status`, `added_date`) VALUES
(1, 0, 0, '', 0, '2019-06-23 18:31:29'),
(2, 0, 0, '', 0, '2019-06-23 18:31:07'),
(3, 1, 2, '', 0, '2019-06-23 18:50:56'),
(4, 1, 1, '', 0, '2019-06-23 18:50:56'),
(5, 1, 0, 'rooms', 0, '2019-06-24 16:03:30'),
(6, 1, 1, 'rooms', 0, '2019-06-24 16:09:07'),
(7, 1, 1, 'rooms', 0, '2019-06-24 16:09:08'),
(8, 1, 1, 'rooms', 0, '2019-06-27 15:02:36'),
(9, 1, 1, 'rooms', 0, '2019-06-30 16:04:12'),
(10, 1, 1, 'rooms', 0, '2019-06-30 16:04:13'),
(11, 1, 1, 'rooms', 0, '2019-06-30 16:29:25'),
(12, 1, 1, 'rooms', 0, '2019-06-30 16:29:25'),
(14, 5, 5, 'hotels', 0, '2019-07-18 19:19:22'),
(15, 6, 6, 'hotels', 0, '2019-07-18 19:40:31'),
(16, 6, 6, 'hotels', 0, '2019-07-18 19:40:31'),
(17, 6, 6, 'hotels', 0, '2019-07-18 19:40:31'),
(18, 7, 7, 'hotels', 0, '2019-07-18 19:42:52'),
(19, 7, 7, 'hotels', 0, '2019-07-18 19:42:52'),
(20, 7, 7, 'hotels', 0, '2019-07-18 19:42:52'),
(21, 8, 8, 'hotels', 0, '2019-07-18 20:02:17'),
(22, 8, 8, 'hotels', 0, '2019-07-18 20:02:17'),
(23, 9, 9, 'hotels', 0, '2019-07-19 18:01:54'),
(24, 9, 9, 'hotels', 0, '2019-07-19 18:01:54'),
(25, 10, 10, 'hotels', 0, '2019-07-19 18:34:07'),
(26, 11, 11, 'hotels', 0, '2019-07-19 18:37:57'),
(27, 12, 12, 'hotels', 0, '2019-07-19 19:33:45'),
(28, 12, 12, 'hotels', 0, '2019-07-19 19:33:45'),
(29, 12, 12, 'hotels', 0, '2019-07-19 19:33:45'),
(30, 12, 12, 'hotels', 0, '2019-07-19 19:33:45'),
(31, 13, 13, 'hotels', 0, '2019-07-19 19:34:34'),
(32, 14, 14, 'hotels', 0, '2019-07-20 14:55:03'),
(33, 14, 14, 'hotels', 0, '2019-07-20 14:55:03'),
(34, 14, 14, 'hotels', 0, '2019-07-20 14:55:03'),
(35, 14, 14, 'hotels', 0, '2019-07-20 14:55:03'),
(36, 14, 14, 'hotels', 0, '2019-07-20 14:55:03'),
(37, 14, 14, 'hotels', 0, '2019-07-20 14:55:03'),
(38, 14, 14, 'hotels', 0, '2019-07-20 14:55:03'),
(39, 15, 15, 'hotels', 0, '2019-07-20 15:01:54'),
(40, 15, 15, 'hotels', 0, '2019-07-20 15:01:54'),
(41, 15, 15, 'hotels', 0, '2019-07-20 15:01:54'),
(42, 16, 16, 'hotels', 0, '2019-07-20 15:03:31'),
(43, 16, 16, 'hotels', 0, '2019-07-20 15:03:31'),
(44, 16, 16, 'hotels', 0, '2019-07-20 15:03:31'),
(45, 16, 16, 'hotels', 0, '2019-07-20 15:03:31'),
(46, 16, 16, 'hotels', 0, '2019-07-20 15:03:31'),
(47, 16, 16, 'hotels', 0, '2019-07-20 15:03:31'),
(48, 16, 16, 'hotels', 0, '2019-07-20 15:03:31'),
(49, 17, 17, 'hotels', 0, '2019-07-20 15:04:44'),
(50, 17, 17, 'hotels', 0, '2019-07-20 15:04:44'),
(51, 17, 17, 'hotels', 0, '2019-07-20 15:04:44'),
(52, 17, 17, 'hotels', 0, '2019-07-20 15:04:44'),
(53, 17, 17, 'hotels', 0, '2019-07-20 15:04:44'),
(54, 18, 18, 'hotels', 0, '2019-07-20 15:06:43'),
(55, 18, 18, 'hotels', 0, '2019-07-20 15:06:43'),
(56, 18, 18, 'hotels', 0, '2019-07-20 15:06:43'),
(57, 18, 18, 'hotels', 0, '2019-07-20 15:06:43'),
(58, 18, 18, 'hotels', 0, '2019-07-20 15:06:43'),
(59, 18, 18, 'hotels', 0, '2019-07-20 15:06:43'),
(60, 19, 19, 'hotels', 0, '2019-07-21 17:01:42'),
(61, 19, 19, 'hotels', 0, '2019-07-21 17:01:42'),
(62, 19, 19, 'hotels', 0, '2019-07-21 17:01:42'),
(63, 20, 20, 'hotels', 0, '2019-07-21 17:07:40'),
(64, 20, 20, 'hotels', 0, '2019-07-21 17:07:40'),
(65, 20, 20, 'hotels', 0, '2019-07-21 17:07:40'),
(66, 20, 20, 'hotels', 0, '2019-07-21 17:07:40'),
(67, 20, 20, 'hotels', 0, '2019-07-21 17:07:40'),
(68, 20, 20, 'hotels', 0, '2019-07-21 17:07:40'),
(69, 20, 20, 'hotels', 0, '2019-07-21 17:07:40'),
(70, 20, 20, 'hotels', 0, '2019-07-21 17:07:40'),
(71, 20, 20, 'hotels', 0, '2019-07-21 17:07:40'),
(72, 21, 21, 'hotels', 0, '2019-07-21 18:14:28'),
(73, 21, 21, 'hotels', 0, '2019-07-21 18:14:28'),
(74, 21, 21, 'hotels', 0, '2019-07-21 18:14:28');

-- --------------------------------------------------------

--
-- Table structure for table `main_booking_details`
--

CREATE TABLE `main_booking_details` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_parent_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `booking_total` int(11) NOT NULL,
  `u_name` varchar(255) NOT NULL,
  `check_in` varchar(60) NOT NULL,
  `check_out` varchar(60) NOT NULL,
  `u_rooms` int(11) NOT NULL,
  `u_adults` varchar(20) NOT NULL,
  `u_children` varchar(111) NOT NULL,
  `u_infants` varchar(111) NOT NULL,
  `u_cell` varchar(111) NOT NULL,
  `u_email` varchar(111) NOT NULL,
  `u_address` varchar(111) NOT NULL,
  `u_address2` varchar(200) NOT NULL,
  `u_city` varchar(111) NOT NULL,
  `u_state` varchar(100) NOT NULL,
  `u_zip` varchar(100) NOT NULL,
  `u_country` varchar(100) NOT NULL,
  `pickup_location` varchar(200) NOT NULL,
  `drop_off_location` varchar(200) NOT NULL,
  `date_of_journey` varchar(100) NOT NULL,
  `time_of_journey` varchar(100) NOT NULL,
  `is_different` int(2) NOT NULL DEFAULT 0,
  `u_comments` varchar(111) NOT NULL,
  `payment_status` int(2) NOT NULL DEFAULT 0,
  `payment_type` varchar(20) NOT NULL,
  `service_type` varchar(100) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main_booking_details`
--

INSERT INTO `main_booking_details` (`id`, `user_id`, `post_parent_id`, `post_id`, `booking_total`, `u_name`, `check_in`, `check_out`, `u_rooms`, `u_adults`, `u_children`, `u_infants`, `u_cell`, `u_email`, `u_address`, `u_address2`, `u_city`, `u_state`, `u_zip`, `u_country`, `pickup_location`, `drop_off_location`, `date_of_journey`, `time_of_journey`, `is_different`, `u_comments`, `payment_status`, `payment_type`, `service_type`, `date_added`) VALUES
(1, 1, 1, 3, 5, 'aaa', '2019-06-28', '2019-06-21', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 1, '', 'hotels', '2019-07-03 18:05:53'),
(2, 1, 2, 4, 10, 'bbb', '2019-06-23', '2019-06-21', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 1, '', 'hotels', '2019-07-03 19:00:10'),
(3, 1, 3, 5, 2, 'ccc', '2019-06-31', '2019-06-21', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 1, '', 'hotels', '2019-07-04 16:08:40'),
(4, 1, 1, 3, 0, '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '2019-07-09 17:35:47'),
(5, 1, 1, 3, 0, '', '2019-07-20', '2019-05-14', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '2019-07-09 17:36:56'),
(6, 1, 1, 3, 0, '', '2019-07-20', '2019-05-14', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '2019-07-09 17:38:10'),
(7, 1, 1, 3, 2222222, 'aaaaaaaaaaaaa', '2019-07-20', '2019-05-14', 3, '3', '2', '', 'aaaaaaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaa', 'aaaaaaaaaaaaaa', '', 'aaaaaaaaaaaaaaa', '', '', '', '', '', '', '', 0, '', 0, '', '', '2019-07-09 17:39:28'),
(8, 1, 1, 3, 2147483647, '', '2019-07-20', '2019-05-14', 3, '3', '2', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '2019-07-09 17:40:34'),
(9, 1, 1, 3, 2147483647, 'aaaaaaaaaaa', '2019-07-20', '2019-05-14', 3, '3', '2', '', '01717677966', 'm.rabiul09@gmail.com', 'Banglamotor, Kawran Bazar', '', 'Dhaka', '', '', '', '', '', '', '', 0, '', 0, '', '', '2019-07-09 17:41:03'),
(10, 1, 1, 3, 2147483647, '', '2019-07-20', '2019-05-14', 3, '3', '2', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '2019-07-09 17:41:11'),
(11, 1, 1, 3, 2147483647, '', '2019-07-20', '2019-05-14', 3, '3', '2', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '2019-07-09 17:42:26'),
(12, 1, 1, 3, 2147483647, '', '2019-07-20', '2019-05-14', 3, '3', '2', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '2019-07-09 17:43:09'),
(13, 1, 2, 1, 333, 'Mr Rabiul Islam', '', '', 0, '', '', '', '01717677966', 'm.rabiul09@gmail.com', '', '', '', '', '', '', 'dhaka', 'khulna', '07/11/2019', '6 PM<', 1, '', 0, '', 'cars', '2019-07-10 17:11:04'),
(14, 1, 2, 1, 333, 'Mr Rabiul Islam', '', '', 0, '', '', '', '01717677966', 'm.rabiul09@gmail.com', '', '', '', '', '', '', 'dhaka', 'khulna', '07/11/2019', '6 PM<', 1, '', 0, '', 'cars', '2019-07-10 17:13:09'),
(15, 0, 2, 1, 0, 'Mr Rabiul Islam', '', '', 0, '', '', '', '01717677966', 'm.rabiul09@gmail.com', '', '', '', '', '', '', 'www', 'www', '07/31/2019', '6 PM', 0, '', 0, '', 'cars', '2019-07-11 15:18:39'),
(16, 0, 2, 1, 600, 'Mr Rabiul Islam', '', '', 0, '', '', '', '01717677966', 'm.rabiul09@gmail.com', '', '', '', '', '', '', 'www', 'www', '07/31/2019', '6 PM', 0, '', 0, '', 'cars', '2019-07-11 15:20:04'),
(17, 0, 2, 1, 600, 'Mr Rabiul Islam', '', '', 0, '', '', '', '01717677966', 'm.rabiul09@gmail.com', '', '', '', '', '', '', 'www', 'www', '07/31/2019', '6 PM', 0, '', 0, '', 'cars', '2019-07-11 15:20:37'),
(18, 0, 2, 1, 600, 'Mr Rabiul Islam', '', '', 0, '', '', '', '01717677966', 'm.rabiul09@gmail.com', '', '', '', '', '', '', 'www', 'www', '07/31/2019', '6 PM', 0, '', 0, '', 'cars', '2019-07-11 15:21:07'),
(19, 0, 2, 1, 600, 'Mr Rabiul Islam', '', '', 0, '', '', '', '01717677966', 'm.rabiul09@gmail.com', '', '', '', '', '', '', 'www', 'www', '07/31/2019', '6 PM', 0, '', 0, '', 'cars', '2019-07-11 15:21:24'),
(20, 0, 2, 1, 600, 'Mr Rabiul Islam', '', '', 0, '', '', '', '01717677966', 'm.rabiul09@gmail.com', '', '', '', '', '', '', 'www', 'www', '07/31/2019', '6 PM', 0, '', 0, '', 'cars', '2019-07-11 15:21:41'),
(21, 0, 2, 1, 600, 'Mr Rabiul Islam', '', '', 0, '', '', '', '01717677966', 'm.rabiul09@gmail.com', '', '', '', '', '', '', 'www', 'www', '07/31/2019', '6 PM', 0, '', 0, '', 'cars', '2019-07-11 15:22:05'),
(22, 0, 2, 1, 600, 'Mr Rabiul Islam', '', '', 0, '', '', '', '01717677966', 'm.rabiul09@gmail.com', '', '', '', '', '', '', 'www', 'www', '07/31/2019', '6 PM', 0, '', 0, '', 'cars', '2019-07-11 15:22:24'),
(23, 0, 2, 1, 600, 'Mr Rabiul Islam', '', '', 0, '', '', '', '01717677966', 'm.rabiul09@gmail.com', '', '', '', '', '', '', 'www', 'www', '07/31/2019', '6 PM', 0, '', 0, '', 'cars', '2019-07-11 15:23:10'),
(24, 0, 4, 2, 500, 'Mr Rabiul Islam', '', '', 0, '', '', '', '01717677966', 'm.rabiul09@gmail.com', '', '', '', '', '', '', 'dhaka', 'www', '07/19/2019', '6 PM', 0, '', 0, '', 'cars', '2019-07-11 15:48:48'),
(25, 1, 11, 2, 2222, 'aaaaaaaaaa', '2019-07-03', '', 0, '', '', '', '01717677966', 'm.rabiul09@gmail.com', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', 'tours', '2019-07-16 18:07:06'),
(26, 1, 11, 2, 2222, 'Mr Rabiul Islam', '2019-07-03', '', 0, '', '', '', '01717677966', 'm.rabiul09@gmail.com', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', 'tours', '2019-07-16 18:16:10');

-- --------------------------------------------------------

--
-- Table structure for table `newpluginform`
--

CREATE TABLE `newpluginform` (
  `id` int(11) NOT NULL,
  `desti` varchar(122) NOT NULL,
  `datefist` varchar(212) NOT NULL,
  `datetwo` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newpluginform`
--

INSERT INTO `newpluginform` (`id`, `desti`, `datefist`, `datetwo`) VALUES
(1, 'wewew', 'wwewew', 'sdsds');

-- --------------------------------------------------------

--
-- Table structure for table `new_order_img`
--

CREATE TABLE `new_order_img` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `img_name` varchar(500) NOT NULL,
  `service_type` varchar(100) NOT NULL,
  `img_url` varchar(500) NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `new_order_img`
--

INSERT INTO `new_order_img` (`id`, `service_id`, `user_id`, `img_name`, `service_type`, `img_url`, `status`, `added_date`) VALUES
(2, 4, 1, '62647957_2466997336697120_2993306194849824768_n.jpg', 'hotels', '/uploads/hotels/gallary/image_1/62647957_2466997336697120_2993306194849824768_n.jpg', 0, '2019-07-13 17:04:12'),
(3, 0, 1, '242-150x150.jpg', '1', '/uploads/hotels/gallary/image_1/242-150x150.jpg', 0, '2019-06-23 18:50:56'),
(4, 0, 1, '242-150x150.jpg', '1', '/uploads/hotels/gallary/image_1/242-150x150.jpg', 0, '2019-06-23 18:50:56'),
(6, 1, 1, '62647957_2466997336697120_2993306194849824768_n.jpg', 'rooms', '/uploads/rooms/gallary/image_1/62647957_2466997336697120_2993306194849824768_n.jpg', 0, '2019-06-24 16:09:08'),
(12, 0, 1, '242-150x150.jpg', 'cars', '/uploads/cars/gallary/image_/242-150x150.jpg', 0, '2019-07-08 17:19:53'),
(13, 0, 1, '62647957_2466997336697120_2993306194849824768_n.jpg', 'cars', '/uploads/cars/gallary/image_/62647957_2466997336697120_2993306194849824768_n.jpg', 0, '2019-07-08 17:19:53'),
(14, 0, 1, '62647957_2466997336697120_2993306194849824768_n.jpg', 'cars', '/uploads/cars/gallary/image_/62647957_2466997336697120_2993306194849824768_n.jpg', 0, '2019-07-08 17:24:25'),
(15, 0, 1, '62647957_2466997336697120_2993306194849824768_n.jpg', 'cars', '/uploads/cars/gallary/image_/62647957_2466997336697120_2993306194849824768_n.jpg', 0, '2019-07-08 17:36:19'),
(16, 0, 1, '22933164_0_working-(1).png', 'tours', '/uploads/tours/gallary/image_/22933164_0_working-(1).png', 0, '2019-07-12 16:21:18'),
(17, 0, 1, 'bg.jpg', 'tours', '/uploads/tours/gallary/image_/bg.jpg', 0, '2019-07-12 16:21:18'),
(18, 0, 1, 'clippingpath.png', 'tours', '/uploads/tours/gallary/image_/clippingpath.png', 0, '2019-07-12 16:21:18'),
(19, 0, 1, 'natural-shadow.png', 'tours', '/uploads/tours/gallary/image_/natural-shadow.png', 0, '2019-07-12 16:21:18'),
(20, 0, 1, '22933164_0_working-(1).png', 'tours', '/uploads/tours/gallary/image_/22933164_0_working-(1).png', 0, '2019-07-12 16:24:06'),
(21, 0, 1, 'clippingpath.png', 'tours', '/uploads/tours/gallary/image_/clippingpath.png', 0, '2019-07-12 16:24:06'),
(22, 0, 1, 'natural-shadow.png', 'tours', '/uploads/tours/gallary/image_/natural-shadow.png', 0, '2019-07-12 16:24:06'),
(23, 0, 1, '22933164_0_working-(1).png', 'tours', '/uploads/tours/gallary/image_/22933164_0_working-(1).png', 0, '2019-07-12 16:26:16'),
(24, 0, 1, 'natural-shadow.png', 'tours', '/uploads/tours/gallary/image_/natural-shadow.png', 0, '2019-07-12 16:26:17'),
(25, 0, 1, '22933164_0_working-(1).png', 'tours', '/uploads/tours/gallary/image_/22933164_0_working-(1).png', 0, '2019-07-12 16:29:32'),
(26, 0, 1, 'natural-shadow.png', 'tours', '/uploads/tours/gallary/image_/natural-shadow.png', 0, '2019-07-12 16:29:32'),
(41, 11, 1, 'after befor.jpg', 'tours', '/uploads/tours/gallary/image_11/after befor.jpg', 0, '2019-07-15 15:49:18'),
(52, 1, 1, 'mm_gal_item_c2_5.img_resize.img_stage._0-800x600.jpg', 'cars', '/uploads/cars/gallary/image_1/mm_gal_item_c2_5.img_resize.img_stage._0-800x600.jpg', 0, '2019-07-19 17:44:30'),
(59, 15, 1, 'lhotel_porto_bay_sao_paulo_suite_lhotel_living_room_800x600-800x600.jpg', 'hotels', '/uploads/hotels/gallary/image_15/lhotel_porto_bay_sao_paulo_suite_lhotel_living_room_800x600-800x600.jpg', 0, '2019-07-20 15:01:54'),
(60, 16, 1, 'lhotel_porto_bay_sao_paulo_suite_lhotel_living_room_800x600-800x600.jpg', 'hotels', '/uploads/hotels/gallary/image_16/lhotel_porto_bay_sao_paulo_suite_lhotel_living_room_800x600-800x600.jpg', 0, '2019-07-20 15:03:31'),
(61, 17, 1, 'in_the_bokeh_forest_800x600-800x600.jpg', 'hotels', '/uploads/hotels/gallary/image_17/in_the_bokeh_forest_800x600-800x600.jpg', 0, '2019-07-20 15:04:44'),
(62, 18, 1, 'hotel_the_cliff_bay_spa_suite_800x600-800x600.jpg', 'hotels', '/uploads/hotels/gallary/image_18/hotel_the_cliff_bay_spa_suite_800x600-800x600.jpg', 0, '2019-07-20 15:06:43'),
(63, 19, 1, 'aaa -bbb.jpg', 'hotels', '/uploads/hotels/gallary/image_19/aaa -bbb.jpg', 0, '2019-07-21 17:01:42'),
(64, 19, 1, 'aa-bb.jpg', 'hotels', '/uploads/hotels/gallary/image_19/aa-bb.jpg', 0, '2019-07-21 17:01:42'),
(65, 19, 1, 'a-b.jpg', 'hotels', '/uploads/hotels/gallary/image_19/a-b.jpg', 0, '2019-07-21 17:01:42'),
(66, 19, 1, 'after befor.jpg', 'hotels', '/uploads/hotels/gallary/image_19/after befor.jpg', 0, '2019-07-21 17:01:42'),
(67, 20, 1, 'Chrysanthemum.jpg', 'hotels', '/uploads/hotels/gallary/image_20/Chrysanthemum.jpg', 0, '2019-07-21 17:07:40'),
(68, 20, 1, 'Desert.jpg', 'hotels', '/uploads/hotels/gallary/image_20/Desert.jpg', 0, '2019-07-21 17:07:40'),
(69, 20, 1, 'Hydrangeas.jpg', 'hotels', '/uploads/hotels/gallary/image_20/Hydrangeas.jpg', 0, '2019-07-21 17:07:40'),
(70, 20, 1, 'Koala.jpg', 'hotels', '/uploads/hotels/gallary/image_20/Koala.jpg', 0, '2019-07-21 17:07:40'),
(71, 8, 1, 'Lighthouse.jpg', 'rooms', '/uploads/rooms/gallary/image_8/Lighthouse.jpg', 0, '2019-07-21 17:10:55'),
(72, 8, 1, 'Penguins.jpg', 'rooms', '/uploads/rooms/gallary/image_8/Penguins.jpg', 0, '2019-07-21 17:10:55'),
(73, 8, 1, 'Tulips.jpg', 'rooms', '/uploads/rooms/gallary/image_8/Tulips.jpg', 0, '2019-07-21 17:10:55'),
(74, 21, 1, '242-150x150.jpg', 'hotels', '/uploads/hotels/gallary/image_21/242-150x150.jpg', 0, '2019-07-21 18:14:28'),
(75, 9, 1, 'experience-plx-bg.jpg', 'rooms', '/uploads/rooms/gallary/image_9/experience-plx-bg.jpg', 0, '2019-07-21 18:15:55'),
(76, 9, 1, 'Team-work-250x215.png', 'rooms', '/uploads/rooms/gallary/image_9/Team-work-250x215.png', 0, '2019-07-21 18:15:55'),
(77, 15, 1, 'clippingpath.jpg', 'tours', '/uploads/tours/gallary/image_15/clippingpath.jpg', 0, '2019-07-22 07:53:25'),
(79, 17, 1, 'clippingpath.jpg', 'tours', '/uploads/tours/gallary/image_17/clippingpath.jpg', 0, '2019-07-22 08:00:12'),
(81, 5, 1, 'clippingpath.jpg', 'cars', '/uploads/cars/gallary/image_5/clippingpath.jpg', 0, '2019-07-22 08:05:28'),
(82, 6, 1, 'aaa -bbb.jpg', 'cars', '/uploads/cars/gallary/image_6/aaa -bbb.jpg', 0, '2019-07-22 08:06:40'),
(83, 7, 1, 'Image Manipulation 1.jpg', 'cars', '/uploads/cars/gallary/image_7/Image Manipulation 1.jpg', 0, '2019-07-22 08:07:43'),
(84, 8, 1, 'Photoshop-drop-shadow.jpg', 'cars', '/uploads/cars/gallary/image_8/Photoshop-drop-shadow.jpg', 0, '2019-07-22 08:08:22'),
(85, 9, 1, '', 'cars', '/uploads/cars/gallary/image_9/', 0, '2019-07-23 09:44:22'),
(86, 10, 1, '', 'cars', '/uploads/cars/gallary/image_10/', 0, '2019-07-23 09:53:49'),
(87, 1, 1, '', 'transports', '/uploads/transports/gallary/image_1/', 0, '2019-09-24 14:55:34'),
(88, 1, 1, 'Chrysanthemum.jpg', 'restaurants', '/uploads/restaurants/gallary/image_1/Chrysanthemum.jpg', 0, '2019-09-24 15:20:13'),
(89, 1, 1, 'Desert.jpg', 'restaurants', '/uploads/restaurants/gallary/image_1/Desert.jpg', 0, '2019-09-24 15:20:13'),
(90, 1, 1, 'Hydrangeas.jpg', 'restaurants', '/uploads/restaurants/gallary/image_1/Hydrangeas.jpg', 0, '2019-09-24 15:20:13'),
(91, 1, 1, 'Jellyfish.jpg', 'restaurants', '/uploads/restaurants/gallary/image_1/Jellyfish.jpg', 0, '2019-09-24 15:20:13'),
(92, 1, 1, 'Koala.jpg', 'restaurants', '/uploads/restaurants/gallary/image_1/Koala.jpg', 0, '2019-09-24 15:20:13');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `ratings_val` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_added` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `user_id`, `service_id`, `ratings_val`, `service_type`, `date_added`) VALUES
(1, 1, 2, '4', 'hotels', NULL),
(2, 2, 2, '4', 'hotels', NULL),
(3, 3, 2, '4', 'hotels', NULL),
(4, 1, 20, '5', 'hotels', NULL),
(5, 1, 16, '4', 'hotels', NULL),
(6, 1, 15, '3', 'hotels', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_details`
--

CREATE TABLE `restaurant_details` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_restaurant` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `restaurant_type` int(11) NOT NULL,
  `restaurant_title` varchar(100) NOT NULL,
  `restaurant_description` text NOT NULL,
  `restaurant_image` varchar(255) NOT NULL,
  `restaurant_check_in` varchar(63) NOT NULL,
  `restaurant_check_out` varchar(63) NOT NULL,
  `restaurant_location` varchar(111) NOT NULL,
  `restaurant_email` varchar(63) NOT NULL,
  `restaurant_phone_no` varchar(111) NOT NULL,
  `restaurant_price` varchar(111) NOT NULL,
  `video` varchar(500) NOT NULL,
  `restaurant_time` varchar(100) NOT NULL,
  `restaurant_am_pm` varchar(63) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant_details`
--

INSERT INTO `restaurant_details` (`id`, `user_id`, `total_restaurant`, `category_id`, `restaurant_type`, `restaurant_title`, `restaurant_description`, `restaurant_image`, `restaurant_check_in`, `restaurant_check_out`, `restaurant_location`, `restaurant_email`, `restaurant_phone_no`, `restaurant_price`, `video`, `restaurant_time`, `restaurant_am_pm`, `date_added`) VALUES
(1, 1, 0, 0, 0, '', 'description here', '', '', '', 'dhanmondi, dhaka', 'test@test.com', '3434343434', '', 'https://www.youtube.com/watch?v=fGk5ufZ-Ekk', '', '', '2019-09-24 15:20:13');

-- --------------------------------------------------------

--
-- Table structure for table `star`
--

CREATE TABLE `star` (
  `id` int(11) NOT NULL,
  `id_post` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `rate` int(11) NOT NULL,
  `dt_rated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tour_activities`
--

CREATE TABLE `tour_activities` (
  `id` int(11) NOT NULL,
  `tour_id` int(11) NOT NULL,
  `activity_name` varchar(100) NOT NULL,
  `activity_description` varchar(500) NOT NULL,
  `service_type` varchar(100) NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tour_activities`
--

INSERT INTO `tour_activities` (`id`, `tour_id`, `activity_name`, `activity_description`, `service_type`, `status`, `added_date`) VALUES
(1, 12, 'sss', 'sss', '', 0, '2019-07-15 18:48:30'),
(2, 12, 'ddd', 'ddd', '', 0, '2019-07-15 18:48:31'),
(3, 12, 'fff', 'fff', '', 0, '2019-07-15 18:48:31'),
(4, 13, 'aaa', 'aaaaaaaaaaaaaaaa', '', 0, '2019-07-15 18:49:25'),
(5, 13, 'ssss', 'ssssssssssssssssss', '', 0, '2019-07-15 18:49:25'),
(6, 13, 'dddd', 'ddddddddddddd', '', 0, '2019-07-15 18:49:25'),
(7, 14, 'aaaa', 'sss', '', 0, '2019-07-16 15:21:58'),
(8, 15, 'Long Tour', 'Varius massa maecenas et id dictumst mattis\\\" Donec fringilla ac parturient posuere id phasellus erat elementum nullam lacus cursus rhoncus parturient vitae praesent quisque nascetur molestie quis', '', 0, '2019-07-22 07:53:25'),
(9, 16, 'Long Tour', 'Aenean eu leo quam pellentesque ornare. \r\nSem lacinia quam venenatis vestibulum. \r\nDonec ullamcorper nulla non metus auctor fringilla.', '', 0, '2019-07-22 07:58:54'),
(10, 17, 'Long Tour', 'At qui elit nobis legimus, at eum partiendo disputando. Sit id dicunt viderer, animal suscipit voluptaria est te. Ad mollis scriptorem eos, pri id velit ludus. Cum minim nostro constituto in, ex vim bonorum tacimates referrentur. Eum ut quodsi regione adolescens. Vel ei partem accommodare, mucius facete atomorum ius no, cu quo sonet eligendi officiis', '', 0, '2019-07-22 08:00:12'),
(11, 18, 'Long Tour', '	This itinerary is subject to change without prior notice according to weather conditions, strikes, roadblocks, or force majeure events which are beyond our control. We will always do our best to follow the itinerary as close as possible.', '', 0, '2019-07-22 08:01:31');

-- --------------------------------------------------------

--
-- Table structure for table `tour_categories`
--

CREATE TABLE `tour_categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_description` varchar(500) NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tour_categories`
--

INSERT INTO `tour_categories` (`id`, `category_name`, `category_description`, `status`, `added_date`) VALUES
(1, 'Tour Category 1 ', 'Tour Category 1 Tour Category 1 Tour Category 1 Tour Category 1 Tour Category 1 Tour Category 1 Tour Category 1 Tour Category 1 Tour Category 1 Tour Category 1 Tour Category 1 Tour Category 1 Tour Category 1 Tour Category 1 Tour Category 1 Tour Category 1 Tour Category 1 Tour Category 1 ', 0, '2019-07-12 15:55:53'),
(2, 'Tour Categiry 2 ', 'Tour Categiry 2 Tour Categiry 2 Tour Categiry 2 Tour Categiry 2 Tour Categiry 2 Tour Categiry 2 Tour Categiry 2 Tour Categiry 2 Tour Categiry 2 Tour Categiry 2 Tour Categiry 2 Tour Categiry 2 Tour Categiry 2 Tour Categiry 2 Tour Categiry 2 ', 0, '2019-07-12 15:58:37'),
(3, 'test', 'asas', 0, '2019-11-04 12:59:53');

-- --------------------------------------------------------

--
-- Table structure for table `tour_details`
--

CREATE TABLE `tour_details` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_tour` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `tour_type` int(11) NOT NULL,
  `tour_title` varchar(100) NOT NULL,
  `tour_description` text NOT NULL,
  `tour_image` varchar(255) NOT NULL,
  `tour_check_in` varchar(63) NOT NULL,
  `tour_check_out` varchar(63) NOT NULL,
  `tour_location` varchar(111) NOT NULL,
  `tour_email` varchar(63) NOT NULL,
  `tour_phone_no` varchar(111) NOT NULL,
  `tour_price` varchar(111) NOT NULL,
  `video` varchar(500) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tour_details`
--

INSERT INTO `tour_details` (`id`, `user_id`, `total_tour`, `category_id`, `tour_type`, `tour_title`, `tour_description`, `tour_image`, `tour_check_in`, `tour_check_out`, `tour_location`, `tour_email`, `tour_phone_no`, `tour_price`, `video`, `date_added`) VALUES
(15, 1, 0, 2, 0, '', 'Morbi mollis vestibulum sollicitudin. Nunc in eros a justo facilisis rutrum. Aenean id ullamcorper libero. Vestibulum imperdiet nibh vel magna lacinia ultrices. Sed id interdum urna. Nam ac elit a ante commodo tristique. Duis lacus urna, condimentum a vehicula a, hendrerit ac nisi Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vulputate, tortor nec commodo ultricies, lectus nisl facilisis enim, vitae viverra urna nulla sed turpis. Nullam lacinia faucibus risus, a euismod lorem tincidunt id. Donec maximus placerat tempor.\r\n\r\nClass aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse faucibus sed dolor eget posuere.Sed id interdum urna. Nam ac elit a ante commodo tristique. Duis lacus urna, condimentum a vehicula a, hendrerit ac nisi Lorem ipsum dolor sit ametVestibulum imperdiet nibh vel magna lacinia ultrices. Sed id interdum urna. Nam ac elit a ante commodo tristique. Duis lacus urna, condimentum a vehicula a, hendrerit ac nisi Lorem ipsum dolor sit amet, consectetur adipiscing elit. faucibus risus, a euismod lorem tincidunt id.\r\n\r\nMorbi mollis vestibulum sollicitudin. Nunc in eros a justo facilisis rutrum. Aenean id ullamcorper libero. Vestibulum imperdiet nibh vel magna lacinia ultrices. Sed id interdum urna. Nam ac elit a ante commodo tristique. Duis lacus urna, condimentum a vehicula a, hendrerit ac nisi Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vulputate, tortor nec commodo ultricies,viverra urna nulla sed turpis. Nullam lacinia\r\n\r\n', '', '', '', 'Champs-Elysées, Paris France', 'tour@gmail.com', '+985558555447558', '95585', 'https://www.youtube.com/watch?v=C3Cb2ZFulI0', '2019-07-22 07:53:25'),
(17, 1, 0, 2, 0, '', 'Ridens reprimique sed ei, ei qui dicta officiis. Dicat intellegebat vim in, at fastidii prodesset gloriatur qui, sed dicam eripuit necessitatibus an. Has ex enim adolescens vituperata. Nam malorum debitis reprimique no, quaestio percipitur referrentur pro te.\r\n\r\nAt qui elit nobis legimus, at eum partiendo disputando. Sit id dicunt viderer, animal suscipit voluptaria est te. Ad mollis scriptorem eos, pri id velit ludus. Cum minim nostro constituto in, ex vim bonorum tacimates referrentur. Eum ut quodsi regione adolescens. Vel ei partem accommodare, mucius facete atomorum ius no, cu quo sonet eligendi officiis', '', '', '', 'Champs-Elysées, Paris France', 'tour@gmail.com', '+985558555447558', '5687', 'https://www.youtube.com/watch?v=C3Cb2ZFulI0', '2019-07-22 08:00:12');

-- --------------------------------------------------------

--
-- Table structure for table `transport_details`
--

CREATE TABLE `transport_details` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_transport` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `transport_type` int(11) NOT NULL,
  `transport_title` varchar(100) NOT NULL,
  `transport_description` text NOT NULL,
  `transport_image` varchar(255) NOT NULL,
  `transport_check_in` varchar(63) NOT NULL,
  `transport_check_out` varchar(63) NOT NULL,
  `transport_location` varchar(111) NOT NULL,
  `transport_email` varchar(63) NOT NULL,
  `transport_phone_no` varchar(111) NOT NULL,
  `transport_price` varchar(111) NOT NULL,
  `video` varchar(500) NOT NULL,
  `transport_time` varchar(100) NOT NULL,
  `transport_am_pm` varchar(63) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transport_details`
--

INSERT INTO `transport_details` (`id`, `user_id`, `total_transport`, `category_id`, `transport_type`, `transport_title`, `transport_description`, `transport_image`, `transport_check_in`, `transport_check_out`, `transport_location`, `transport_email`, `transport_phone_no`, `transport_price`, `video`, `transport_time`, `transport_am_pm`, `date_added`) VALUES
(1, 1, 0, 0, 0, '', 'description here', '', '', '', 'dhaka', 'test@test.com', '3123123123123', '1000', '', '', '', '2019-09-24 14:55:34');

-- --------------------------------------------------------

--
-- Table structure for table `transport_packages`
--

CREATE TABLE `transport_packages` (
  `id` int(11) NOT NULL,
  `guide_id` int(11) NOT NULL,
  `package_name` varchar(100) NOT NULL,
  `package_description` varchar(500) NOT NULL,
  `service_type` varchar(100) NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transport_stopage`
--

CREATE TABLE `transport_stopage` (
  `id` int(11) NOT NULL,
  `stopage_name` varchar(100) NOT NULL,
  `stopage_description` varchar(500) NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0,
  `added_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transport_stopage`
--

INSERT INTO `transport_stopage` (`id`, `stopage_name`, `stopage_description`, `status`, `added_date`) VALUES
(10, 'aaaaaaa', 'aaaaa', 0, '2019-10-01T14:01'),
(11, '', '', 0, '2019-10-03T02:01'),
(12, 'asas', 'asasas', 0, '2019-10-09T01:00'),
(13, 'erer', 'ererer', 0, '2019-10-1513:00'),
(14, 'df', 'dfdf', 0, '2019-10-08  01:00'),
(15, 'asas', 'asa', 0, '2019-10-15  14:00'),
(16, 'wewe', 'wewe', 0, '2019-10-09  13:00'),
(17, 'asas', 'asasa', 0, '  14:01'),
(18, '', '', 0, '2019-10-01 02:00 PM');

-- --------------------------------------------------------

--
-- Table structure for table `transport_stopage_relations`
--

CREATE TABLE `transport_stopage_relations` (
  `id` int(11) NOT NULL,
  `transport_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `service_type` varchar(100) NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transport_stopage_relations`
--

INSERT INTO `transport_stopage_relations` (`id`, `transport_id`, `service_id`, `service_type`, `status`, `added_date`) VALUES
(1, 1, 4, 'transports', 0, '2019-09-24 14:55:34'),
(2, 1, 3, 'transports', 0, '2019-09-24 14:55:34'),
(3, 1, 2, 'transports', 0, '2019-09-24 14:55:34'),
(4, 1, 1, 'transports', 0, '2019-09-24 14:55:34');

-- --------------------------------------------------------

--
-- Table structure for table `umratinguser`
--

CREATE TABLE `umratinguser` (
  `id` int(11) NOT NULL,
  `upostid` int(12) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `umratinguser`
--

INSERT INTO `umratinguser` (`id`, `upostid`, `rating`) VALUES
(1, 196, 3),
(2, 595, 4),
(3, 597, 3),
(4, 614, 5);

-- --------------------------------------------------------

--
-- Table structure for table `wp_awebooking_availability`
--

CREATE TABLE `wp_awebooking_availability` (
  `room_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `year` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `month` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `d1` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d2` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d3` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d4` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d5` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d6` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d7` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d8` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d9` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d10` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d11` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d12` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d13` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d14` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d15` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d16` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d17` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d18` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d19` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d20` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d21` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d22` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d23` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d24` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d25` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d26` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d27` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d28` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d29` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d30` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d31` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_awebooking_booking`
--

CREATE TABLE `wp_awebooking_booking` (
  `room_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `year` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `month` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `d1` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d2` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d3` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d4` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d5` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d6` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d7` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d8` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d9` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d10` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d11` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d12` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d13` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d14` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d15` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d16` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d17` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d18` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d19` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d20` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d21` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d22` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d23` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d24` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d25` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d26` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d27` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d28` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d29` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d30` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d31` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_awebooking_booking_itemmeta`
--

CREATE TABLE `wp_awebooking_booking_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `booking_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_awebooking_booking_items`
--

CREATE TABLE `wp_awebooking_booking_items` (
  `booking_item_id` bigint(20) UNSIGNED NOT NULL,
  `booking_item_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `booking_item_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `booking_item_parent` bigint(20) UNSIGNED NOT NULL,
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `booking_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_awebooking_pricing`
--

CREATE TABLE `wp_awebooking_pricing` (
  `rate_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `year` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `month` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `d1` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d2` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d3` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d4` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d5` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d6` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d7` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d8` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d9` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d10` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d11` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d12` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d13` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d14` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d15` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d16` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d17` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d18` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d19` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d20` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d21` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d22` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d23` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d24` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d25` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d26` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d27` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d28` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d29` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d30` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `d31` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_awebooking_rooms`
--

CREATE TABLE `wp_awebooking_rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `room_type` bigint(20) UNSIGNED NOT NULL,
  `order` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_awebooking_tax_rates`
--

CREATE TABLE `wp_awebooking_tax_rates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `priority` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `compound` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_booking`
--

CREATE TABLE `wp_booking` (
  `booking_id` bigint(20) UNSIGNED NOT NULL,
  `trash` bigint(10) NOT NULL DEFAULT 0,
  `sync_gid` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `is_new` bigint(10) NOT NULL DEFAULT 1,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sort_date` datetime DEFAULT NULL,
  `modification_date` datetime DEFAULT NULL,
  `form` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `booking_type` bigint(10) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_booking`
--

INSERT INTO `wp_booking` (`booking_id`, `trash`, `sync_gid`, `is_new`, `status`, `sort_date`, `modification_date`, `form`, `booking_type`) VALUES
(1, 0, '', 1, '', '2019-04-05 00:00:00', '2019-04-03 12:56:36', 'text^name1^Jony~text^secondname1^Smith~text^email1^example-free@wpbookingcalendar.com~text^phone1^458-77-77~textarea^details1^Reserve a room with sea view', 1),
(2, 0, '', 1, '', '2019-04-04 00:00:00', '2019-04-03 06:58:36', 'text^name1^Milon~text^secondname1^Hossain~email^email1^milondiucse@gmail.com~text^phone1^01736699819~textarea^details1^Booking Calendar', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_bookingdates`
--

CREATE TABLE `wp_bookingdates` (
  `booking_id` bigint(20) UNSIGNED NOT NULL,
  `booking_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `approved` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_bookingdates`
--

INSERT INTO `wp_bookingdates` (`booking_id`, `booking_date`, `approved`) VALUES
(1, '2019-04-05 00:00:00', 0),
(1, '2019-04-06 00:00:00', 0),
(1, '2019-04-07 00:00:00', 0),
(2, '2019-04-04 00:00:00', 0),
(2, '2019-04-08 00:00:00', 0),
(2, '2019-04-09 00:00:00', 0),
(2, '2019-04-10 00:00:00', 0),
(2, '2019-04-11 00:00:00', 0),
(2, '2019-04-12 00:00:00', 0),
(2, '2019-04-13 00:00:00', 0),
(2, '2019-04-14 00:00:00', 0),
(2, '2019-04-15 00:00:00', 0),
(2, '2019-04-16 00:00:00', 0),
(2, '2019-04-17 00:00:00', 0),
(2, '2019-04-18 00:00:00', 0),
(2, '2019-04-19 00:00:00', 0),
(2, '2019-04-20 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_booking_package_calendaraccount`
--

CREATE TABLE `wp_booking_package_calendaraccount` (
  `key` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'day',
  `cost` int(11) DEFAULT 0,
  `maxAccountScheduleDay` int(11) DEFAULT 30,
  `unavailableDaysFromToday` int(11) DEFAULT 1,
  `numberOfRoomsAvailable` int(11) DEFAULT 1,
  `numberOfPeopleInRoom` int(11) DEFAULT 2,
  `includeChildrenInRoom` int(1) DEFAULT 0,
  `expressionsCheck` int(1) DEFAULT 0,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `courseTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `courseBool` int(1) DEFAULT 0,
  `hasMultipleServices` int(1) DEFAULT 0,
  `created` int(11) DEFAULT NULL,
  `googleCalendarID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idForGoogleWebhook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expirationForGoogleWebhook` int(1) DEFAULT 0,
  `uploadDate` int(11) DEFAULT NULL,
  `enableFixCalendar` int(11) DEFAULT 0,
  `yearForFixCalendar` int(11) DEFAULT 0,
  `monthForFixCalendar` int(11) DEFAULT 0,
  `displayRemainingCapacity` int(11) DEFAULT 0,
  `subscriptionIdForStripe` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `enableSubscriptionForStripe` int(11) DEFAULT 0,
  `termsOfServiceForSubscription` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `enableTermsOfServiceForSubscription` int(11) DEFAULT 0,
  `privacyPolicyForSubscription` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `enablePrivacyPolicyForSubscription` int(11) DEFAULT 0,
  `displayRemainingCapacityInCalendar` int(1) DEFAULT 0,
  `displayThresholdOfRemainingCapacity` int(3) DEFAULT 50,
  `displayRemainingCapacityInCalendarAsNumber` int(1) DEFAULT 0,
  `displayRemainingCapacityHasMoreThenThreshold` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `displayRemainingCapacityHasLessThenThreshold` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `displayRemainingCapacityHas0` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `startOfWeek` int(1) DEFAULT 0,
  `ical` int(1) DEFAULT 0,
  `icalToken` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `cancellationOfBooking` int(1) DEFAULT 0,
  `displayDetailsOfCanceled` int(1) DEFAULT 1,
  `allowCancellationVisitor` int(1) DEFAULT 0,
  `allowCancellationUser` int(1) DEFAULT 0,
  `refuseCancellationOfBooking` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'not_refuse',
  `preparationTime` int(1) DEFAULT 0,
  `positionPreparationTime` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'before_after',
  `timezone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'none'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_booking_package_calendaraccount`
--

INSERT INTO `wp_booking_package_calendaraccount` (`key`, `name`, `type`, `cost`, `maxAccountScheduleDay`, `unavailableDaysFromToday`, `numberOfRoomsAvailable`, `numberOfPeopleInRoom`, `includeChildrenInRoom`, `expressionsCheck`, `status`, `courseTitle`, `courseBool`, `hasMultipleServices`, `created`, `googleCalendarID`, `idForGoogleWebhook`, `expirationForGoogleWebhook`, `uploadDate`, `enableFixCalendar`, `yearForFixCalendar`, `monthForFixCalendar`, `displayRemainingCapacity`, `subscriptionIdForStripe`, `enableSubscriptionForStripe`, `termsOfServiceForSubscription`, `enableTermsOfServiceForSubscription`, `privacyPolicyForSubscription`, `enablePrivacyPolicyForSubscription`, `displayRemainingCapacityInCalendar`, `displayThresholdOfRemainingCapacity`, `displayRemainingCapacityInCalendarAsNumber`, `displayRemainingCapacityHasMoreThenThreshold`, `displayRemainingCapacityHasLessThenThreshold`, `displayRemainingCapacityHas0`, `startOfWeek`, `ical`, `icalToken`, `cancellationOfBooking`, `displayDetailsOfCanceled`, `allowCancellationVisitor`, `allowCancellationUser`, `refuseCancellationOfBooking`, `preparationTime`, `positionPreparationTime`, `timezone`) VALUES
(1, 'First Calendar', 'day', 0, 30, 1, 1, 2, 0, 0, 'open', NULL, 0, 0, 1554286000, NULL, NULL, 0, 1554286000, 0, 0, 0, 0, '', 0, '', 0, '', 0, 0, 50, 0, '', '', '', 0, 0, '969fdd54dd343a80cb85cf9c5a42115898c43e37', 0, 1, 0, 0, 'not_refuse', 0, 'before_after', 'UTC'),
(2, 'First Calendar for hotel', 'hotel', 0, 30, 1, 5, 2, 1, 0, 'open', NULL, 0, 0, 1554286000, NULL, NULL, 0, 1554286000, 0, 0, 0, 0, '', 0, '', 0, '', 0, 0, 50, 0, '', '', '', 0, 0, '969fdd54dd343a80cb85cf9c5a42115898c43e37', 0, 1, 0, 0, 'not_refuse', 0, 'before_after', 'UTC'),
(3, 'New Calendar', 'day', 0, 30, 0, 1, 2, 0, 0, 'open', '', 0, 0, 1554286333, NULL, NULL, 0, 1554286333, 0, 2019, 0, 0, '', 0, '', 0, '', 0, 0, 10, 0, '{\"symbol\":\"\",\"color\":\"#969696\"}', '{\"symbol\":\"\",\"color\":\"#969696\"}', '{\"symbol\":\"\",\"color\":\"#969696\"}', 0, 0, '9222dbf17e0815039dd37606f9cb0735a1889b8d', 0, 1, 0, 0, 'not_refuse', 0, 'before_after', 'UTC'),
(4, 'New Calendar', 'hotel', 0, 30, 0, 58, 2, 1, 2, 'open', '', 0, 0, 1554286775, NULL, NULL, 0, 1554286775, 1, 2019, 0, 0, '', 0, '', 0, '', 0, 0, 10, 0, '{\"symbol\":\"A phrase or symbol on a day when the remaining capacity has more than threshold\",\"color\":\"#969696\"}', '{\"symbol\":\"A phrase or symbol on a day when the remaining capacity has more than threshold\",\"color\":\"#969696\"}', '{\"symbol\":\"10\",\"color\":\"#969696\"}', 0, 0, '63587c6dca0066fd05c4823ea2ebddaa9b11c47d', 0, 1, 0, 0, 'not_refuse', 0, 'before_after', 'UTC'),
(5, 'First Calendar for hotel', 'hotel', 0, 30, 1, 5, 2, 1, 0, 'open', NULL, 0, 0, 1554286000, NULL, NULL, 0, 1554286000, 0, 0, 0, 0, '', 0, '', 0, '', 0, 0, 50, 0, '', '', '', 0, 0, '969fdd54dd343a80cb85cf9c5a42115898c43e37', 0, 1, 0, 0, 'not_refuse', 0, 'before_after', 'UTC');

-- --------------------------------------------------------

--
-- Table structure for table `wp_booking_package_coursedata`
--

CREATE TABLE `wp_booking_package_coursedata` (
  `key` int(11) NOT NULL,
  `accountKey` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `cost` float DEFAULT NULL,
  `active` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ranking` int(11) NOT NULL,
  `selectOptions` int(11) DEFAULT 0,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timeToProvide` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_booking_package_emailsetting`
--

CREATE TABLE `wp_booking_package_emailsetting` (
  `key` int(11) NOT NULL,
  `accountKey` int(11) NOT NULL,
  `mail_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable` int(1) DEFAULT 1,
  `format` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_booking_package_emailsetting`
--

INSERT INTO `wp_booking_package_emailsetting` (`key`, `accountKey`, `mail_id`, `enable`, `format`, `subject`, `content`, `data`) VALUES
(1, 1, 'mail_new_admin', 1, 'text', NULL, NULL, '1554286016'),
(2, 1, 'mail_approved', 1, 'text', NULL, NULL, '1554286016'),
(3, 1, 'mail_pending', 1, 'text', NULL, NULL, '1554286016'),
(4, 1, 'mail_deleted', 1, 'text', NULL, NULL, '1554286016'),
(5, 1, 'mail_canceled_by_visitor_user', 1, 'text', NULL, NULL, '1554286016'),
(6, 2, 'mail_new_admin', 1, 'text', NULL, NULL, '1554286025'),
(7, 2, 'mail_approved', 1, 'text', NULL, NULL, '1554286025'),
(8, 2, 'mail_pending', 1, 'text', NULL, NULL, '1554286025'),
(9, 2, 'mail_deleted', 1, 'text', NULL, NULL, '1554286025'),
(10, 2, 'mail_canceled_by_visitor_user', 1, 'text', NULL, NULL, '1554286025'),
(11, 3, 'mail_new_admin', 1, 'text', NULL, NULL, '1554286412'),
(12, 3, 'mail_approved', 1, 'text', NULL, NULL, '1554286412'),
(13, 3, 'mail_pending', 1, 'text', NULL, NULL, '1554286413'),
(14, 3, 'mail_deleted', 1, 'text', NULL, NULL, '1554286413'),
(15, 3, 'mail_canceled_by_visitor_user', 1, 'text', NULL, NULL, '1554286413'),
(16, 4, 'mail_new_admin', 1, 'text', NULL, NULL, '1554286889'),
(17, 4, 'mail_approved', 1, 'text', NULL, NULL, '1554286889'),
(18, 4, 'mail_pending', 1, 'text', NULL, NULL, '1554286889'),
(19, 4, 'mail_deleted', 1, 'text', NULL, NULL, '1554286889'),
(20, 4, 'mail_canceled_by_visitor_user', 1, 'text', NULL, NULL, '1554286889'),
(21, 5, 'mail_new_admin', 1, 'text', NULL, NULL, '1554286025'),
(22, 5, 'mail_approved', 1, 'text', NULL, NULL, '1554286025'),
(23, 5, 'mail_pending', 1, 'text', NULL, NULL, '1554286025'),
(24, 5, 'mail_deleted', 1, 'text', NULL, NULL, '1554286025'),
(25, 5, 'mail_canceled_by_visitor_user', 1, 'text', NULL, NULL, '1554286025');

-- --------------------------------------------------------

--
-- Table structure for table `wp_booking_package_form`
--

CREATE TABLE `wp_booking_package_form` (
  `key` int(11) NOT NULL,
  `accountKey` int(11) NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_booking_package_form`
--

INSERT INTO `wp_booking_package_form` (`key`, `accountKey`, `data`) VALUES
(1, 1, '[{\"id\":\"firstname\",\"name\":\"First name\",\"value\":\"\",\"type\":\"TEXT\",\"active\":\"true\",\"options\":\"\",\"required\":\"true\",\"isName\":\"true\",\"isAddress\":\"false\",\"isEmail\":\"false\",\"isTerms\":\"false\"},{\"id\":\"lastname\",\"name\":\"Last name\",\"value\":\"\",\"type\":\"TEXT\",\"active\":\"true\",\"options\":\"\",\"required\":\"true\",\"isName\":\"true\",\"isAddress\":\"false\",\"isEmail\":\"false\",\"isTerms\":\"false\"},{\"id\":\"email\",\"name\":\"Email\",\"value\":\"\",\"type\":\"TEXT\",\"active\":\"true\",\"options\":\"\",\"required\":\"true\",\"isName\":\"false\",\"isAddress\":\"false\",\"isEmail\":\"true\",\"isTerms\":\"false\"},{\"id\":\"phone\",\"name\":\"Phone\",\"value\":\"\",\"type\":\"TEXT\",\"active\":\"true\",\"options\":\"\",\"required\":\"true\",\"isName\":\"false\",\"isAddress\":\"false\",\"isEmail\":\"false\",\"isTerms\":\"false\"},{\"id\":\"zip\",\"name\":\"Zip\",\"value\":\"\",\"type\":\"TEXT\",\"options\":\"\",\"required\":\"false\",\"isName\":\"false\",\"isAddress\":\"false\",\"isEmail\":\"false\",\"isTerms\":\"false\"},{\"id\":\"address\",\"name\":\"Address\",\"value\":\"\",\"type\":\"TEXT\",\"active\":\"true\",\"options\":\"\",\"required\":\"false\",\"isName\":\"false\",\"isAddress\":\"true\",\"isEmail\":\"false\",\"isTerms\":\"false\"},{\"id\":\"terms\",\"name\":\"Terms of Service\",\"value\":\"\",\"type\":\"CHECK\",\"active\":\"true\",\"options\":\"I agree\",\"required\":\"false\",\"isName\":\"false\",\"isAddress\":\"true\",\"isEmail\":\"false\",\"isTerms\":\"true\"}]'),
(2, 2, '[{\"id\":\"firstname\",\"name\":\"First name\",\"value\":\"\",\"type\":\"TEXT\",\"active\":\"true\",\"options\":\"\",\"required\":\"true\",\"isName\":\"true\",\"isAddress\":\"false\",\"isEmail\":\"false\",\"isTerms\":\"false\"},{\"id\":\"lastname\",\"name\":\"Last name\",\"value\":\"\",\"type\":\"TEXT\",\"active\":\"true\",\"options\":\"\",\"required\":\"true\",\"isName\":\"true\",\"isAddress\":\"false\",\"isEmail\":\"false\",\"isTerms\":\"false\"},{\"id\":\"email\",\"name\":\"Email\",\"value\":\"\",\"type\":\"TEXT\",\"active\":\"true\",\"options\":\"\",\"required\":\"true\",\"isName\":\"false\",\"isAddress\":\"false\",\"isEmail\":\"true\",\"isTerms\":\"false\"},{\"id\":\"phone\",\"name\":\"Phone\",\"value\":\"\",\"type\":\"TEXT\",\"active\":\"true\",\"options\":\"\",\"required\":\"true\",\"isName\":\"false\",\"isAddress\":\"false\",\"isEmail\":\"false\",\"isTerms\":\"false\"},{\"id\":\"zip\",\"name\":\"Zip\",\"value\":\"\",\"type\":\"TEXT\",\"options\":\"\",\"required\":\"false\",\"isName\":\"false\",\"isAddress\":\"false\",\"isEmail\":\"false\",\"isTerms\":\"false\"},{\"id\":\"address\",\"name\":\"Address\",\"value\":\"\",\"type\":\"TEXT\",\"active\":\"true\",\"options\":\"\",\"required\":\"false\",\"isName\":\"false\",\"isAddress\":\"true\",\"isEmail\":\"false\",\"isTerms\":\"false\"},{\"id\":\"terms\",\"name\":\"Terms of Service\",\"value\":\"\",\"type\":\"CHECK\",\"active\":\"true\",\"options\":\"I agree\",\"required\":\"false\",\"isName\":\"false\",\"isAddress\":\"true\",\"isEmail\":\"false\",\"isTerms\":\"true\"}]'),
(3, 3, '[{\"id\":\"firstname\",\"name\":\"First name\",\"value\":\"\",\"type\":\"TEXT\",\"active\":\"true\",\"options\":\"\",\"required\":\"true\",\"isName\":\"true\",\"isAddress\":\"false\",\"isEmail\":\"false\",\"isTerms\":\"false\"},{\"id\":\"lastname\",\"name\":\"Last name\",\"value\":\"\",\"type\":\"TEXT\",\"active\":\"true\",\"options\":\"\",\"required\":\"true\",\"isName\":\"true\",\"isAddress\":\"false\",\"isEmail\":\"false\",\"isTerms\":\"false\"},{\"id\":\"email\",\"name\":\"Email\",\"value\":\"\",\"type\":\"TEXT\",\"active\":\"true\",\"options\":\"\",\"required\":\"true\",\"isName\":\"false\",\"isAddress\":\"false\",\"isEmail\":\"true\",\"isTerms\":\"false\"},{\"id\":\"phone\",\"name\":\"Phone\",\"value\":\"\",\"type\":\"TEXT\",\"active\":\"true\",\"options\":\"\",\"required\":\"true\",\"isName\":\"false\",\"isAddress\":\"false\",\"isEmail\":\"false\",\"isTerms\":\"false\"},{\"id\":\"zip\",\"name\":\"Zip\",\"value\":\"\",\"type\":\"TEXT\",\"options\":\"\",\"required\":\"false\",\"isName\":\"false\",\"isAddress\":\"false\",\"isEmail\":\"false\",\"isTerms\":\"false\"},{\"id\":\"address\",\"name\":\"Address\",\"value\":\"\",\"type\":\"TEXT\",\"active\":\"true\",\"options\":\"\",\"required\":\"false\",\"isName\":\"false\",\"isAddress\":\"true\",\"isEmail\":\"false\",\"isTerms\":\"false\"},{\"id\":\"terms\",\"name\":\"Terms of Service\",\"value\":\"\",\"type\":\"CHECK\",\"active\":\"true\",\"options\":\"I agree\",\"required\":\"false\",\"isName\":\"false\",\"isAddress\":\"true\",\"isEmail\":\"false\",\"isTerms\":\"true\"}]'),
(4, 4, '[{\"id\":\"firstname\",\"name\":\"First name\",\"value\":\"\",\"type\":\"TEXT\",\"active\":\"true\",\"options\":\"\",\"required\":\"true\",\"isName\":\"true\",\"isAddress\":\"false\",\"isEmail\":\"false\",\"isTerms\":\"false\"},{\"id\":\"lastname\",\"name\":\"Last name\",\"value\":\"\",\"type\":\"TEXT\",\"active\":\"true\",\"options\":\"\",\"required\":\"true\",\"isName\":\"true\",\"isAddress\":\"false\",\"isEmail\":\"false\",\"isTerms\":\"false\"},{\"id\":\"email\",\"name\":\"Email\",\"value\":\"\",\"type\":\"TEXT\",\"active\":\"true\",\"options\":\"\",\"required\":\"true\",\"isName\":\"false\",\"isAddress\":\"false\",\"isEmail\":\"true\",\"isTerms\":\"false\"},{\"id\":\"phone\",\"name\":\"Phone\",\"value\":\"\",\"type\":\"TEXT\",\"active\":\"true\",\"options\":\"\",\"required\":\"true\",\"isName\":\"false\",\"isAddress\":\"false\",\"isEmail\":\"false\",\"isTerms\":\"false\"},{\"id\":\"zip\",\"name\":\"Zip\",\"value\":\"\",\"type\":\"TEXT\",\"options\":\"\",\"required\":\"false\",\"isName\":\"false\",\"isAddress\":\"false\",\"isEmail\":\"false\",\"isTerms\":\"false\"},{\"id\":\"address\",\"name\":\"Address\",\"value\":\"\",\"type\":\"TEXT\",\"active\":\"true\",\"options\":\"\",\"required\":\"false\",\"isName\":\"false\",\"isAddress\":\"true\",\"isEmail\":\"false\",\"isTerms\":\"false\"},{\"id\":\"terms\",\"name\":\"Terms of Service\",\"value\":\"\",\"type\":\"CHECK\",\"active\":\"true\",\"options\":\"I agree\",\"required\":\"false\",\"isName\":\"false\",\"isAddress\":\"true\",\"isEmail\":\"false\",\"isTerms\":\"true\"}]'),
(5, 5, '[{\"id\":\"firstname\",\"name\":\"First name\",\"value\":\"\",\"type\":\"TEXT\",\"active\":\"true\",\"options\":\"\",\"required\":\"true\",\"isName\":\"true\",\"isAddress\":\"false\",\"isEmail\":\"false\",\"isTerms\":\"false\"},{\"id\":\"lastname\",\"name\":\"Last name\",\"value\":\"\",\"type\":\"TEXT\",\"active\":\"true\",\"options\":\"\",\"required\":\"true\",\"isName\":\"true\",\"isAddress\":\"false\",\"isEmail\":\"false\",\"isTerms\":\"false\"},{\"id\":\"email\",\"name\":\"Email\",\"value\":\"\",\"type\":\"TEXT\",\"active\":\"true\",\"options\":\"\",\"required\":\"true\",\"isName\":\"false\",\"isAddress\":\"false\",\"isEmail\":\"true\",\"isTerms\":\"false\"},{\"id\":\"phone\",\"name\":\"Phone\",\"value\":\"\",\"type\":\"TEXT\",\"active\":\"true\",\"options\":\"\",\"required\":\"true\",\"isName\":\"false\",\"isAddress\":\"false\",\"isEmail\":\"false\",\"isTerms\":\"false\"},{\"id\":\"zip\",\"name\":\"Zip\",\"value\":\"\",\"type\":\"TEXT\",\"options\":\"\",\"required\":\"false\",\"isName\":\"false\",\"isAddress\":\"false\",\"isEmail\":\"false\",\"isTerms\":\"false\"},{\"id\":\"address\",\"name\":\"Address\",\"value\":\"\",\"type\":\"TEXT\",\"active\":\"true\",\"options\":\"\",\"required\":\"false\",\"isName\":\"false\",\"isAddress\":\"true\",\"isEmail\":\"false\",\"isTerms\":\"false\"},{\"id\":\"terms\",\"name\":\"Terms of Service\",\"value\":\"\",\"type\":\"CHECK\",\"active\":\"true\",\"options\":\"I agree\",\"required\":\"false\",\"isName\":\"false\",\"isAddress\":\"true\",\"isEmail\":\"false\",\"isTerms\":\"true\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `wp_booking_package_guests`
--

CREATE TABLE `wp_booking_package_guests` (
  `key` int(11) NOT NULL,
  `accountKey` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'adult',
  `json` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ranking` int(11) NOT NULL,
  `required` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_booking_package_guests`
--

INSERT INTO `wp_booking_package_guests` (`key`, `accountKey`, `name`, `target`, `json`, `ranking`, `required`) VALUES
(1, 2, 'Number of adults', 'adult', '[{\"number\":1,\"price\":0,\"name\":\"1 adult\"},{\"number\":2,\"price\":0,\"name\":\"2 adults\"}]', 1, 1),
(2, 2, 'Number of children', 'children', '[{\"number\":1,\"price\":0,\"name\":\"1 child\"},{\"number\":2,\"price\":0,\"name\":\"2 children\"}]', 2, 0),
(3, 3, 'Number of adults', 'adult', '[{\"number\":1,\"price\":0,\"name\":\"1 adult\"},{\"number\":2,\"price\":0,\"name\":\"2 adults\"}]', 1, 1),
(4, 3, 'Number of children', 'children', '[{\"number\":1,\"price\":0,\"name\":\"1 child\"},{\"number\":2,\"price\":0,\"name\":\"2 children\"}]', 2, 0),
(5, 4, 'Number of adults', 'adult', '[{\"number\":1,\"price\":0,\"name\":\"1 adult\"},{\"number\":2,\"price\":0,\"name\":\"2 adults\"}]', 1, 1),
(6, 4, 'Number of children', 'children', '[{\"number\":1,\"price\":0,\"name\":\"1 child\"},{\"number\":2,\"price\":0,\"name\":\"2 children\"}]', 2, 0),
(7, 5, 'Number of adults', 'adult', '[{\"number\":1,\"price\":0,\"name\":\"1 adult\"},{\"number\":2,\"price\":0,\"name\":\"2 adults\"}]', 1, 1),
(8, 5, 'Number of children', 'children', '[{\"number\":1,\"price\":0,\"name\":\"1 child\"},{\"number\":2,\"price\":0,\"name\":\"2 children\"}]', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_booking_package_regular_holidays`
--

CREATE TABLE `wp_booking_package_regular_holidays` (
  `key` int(11) NOT NULL,
  `accountKey` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day` int(1) DEFAULT NULL,
  `month` int(2) NOT NULL,
  `year` int(4) NOT NULL,
  `unixTime` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `update` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_booking_package_schedule`
--

CREATE TABLE `wp_booking_package_schedule` (
  `key` int(11) NOT NULL,
  `accountKey` int(11) NOT NULL,
  `unixTime` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `weekKey` int(11) NOT NULL,
  `hour` int(11) NOT NULL,
  `min` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost` float DEFAULT NULL,
  `capacity` int(11) NOT NULL,
  `remainder` int(11) NOT NULL,
  `deadlineTime` int(11) NOT NULL DEFAULT 0,
  `waitingRemainder` int(11) NOT NULL DEFAULT 0,
  `stop` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `holiday` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uploadDate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_booking_package_schedule`
--

INSERT INTO `wp_booking_package_schedule` (`key`, `accountKey`, `unixTime`, `year`, `month`, `day`, `weekKey`, `hour`, `min`, `title`, `cost`, `capacity`, `remainder`, `deadlineTime`, `waitingRemainder`, `stop`, `holiday`, `uploadDate`) VALUES
(102, 2, 1557273600, 2019, 5, 8, 3, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1554784212),
(105, 4, 1557273600, 2019, 5, 8, 3, 0, 0, '', 0, 58, 58, 0, 0, 'false', 'false', 1554784212),
(108, 5, 1557273600, 2019, 5, 8, 3, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1554784212),
(109, 2, 1557360000, 2019, 5, 9, 4, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1554873035),
(110, 4, 1557360000, 2019, 5, 9, 4, 0, 0, '', 0, 58, 58, 0, 0, 'false', 'false', 1554873035),
(111, 5, 1557360000, 2019, 5, 9, 4, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1554873035),
(112, 2, 1557532800, 2019, 5, 11, 6, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(113, 2, 1557619200, 2019, 5, 12, 0, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(114, 2, 1557705600, 2019, 5, 13, 1, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(115, 2, 1557792000, 2019, 5, 14, 2, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(116, 2, 1557878400, 2019, 5, 15, 3, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(117, 2, 1557964800, 2019, 5, 16, 4, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(118, 2, 1558051200, 2019, 5, 17, 5, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(119, 2, 1558137600, 2019, 5, 18, 6, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(120, 2, 1558224000, 2019, 5, 19, 0, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(121, 2, 1558310400, 2019, 5, 20, 1, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(122, 2, 1558396800, 2019, 5, 21, 2, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(123, 2, 1558483200, 2019, 5, 22, 3, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(124, 2, 1558569600, 2019, 5, 23, 4, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(125, 2, 1558656000, 2019, 5, 24, 5, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(126, 2, 1558742400, 2019, 5, 25, 6, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(127, 2, 1558828800, 2019, 5, 26, 0, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(128, 2, 1558915200, 2019, 5, 27, 1, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(129, 2, 1559001600, 2019, 5, 28, 2, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(130, 2, 1559088000, 2019, 5, 29, 3, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(131, 2, 1559174400, 2019, 5, 30, 4, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(132, 2, 1559260800, 2019, 5, 31, 5, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(133, 2, 1559347200, 2019, 6, 1, 6, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(134, 2, 1559433600, 2019, 6, 2, 0, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(135, 2, 1559520000, 2019, 6, 3, 1, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(136, 2, 1559606400, 2019, 6, 4, 2, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(137, 2, 1559692800, 2019, 6, 5, 3, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(138, 2, 1559779200, 2019, 6, 6, 4, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(139, 2, 1559865600, 2019, 6, 7, 5, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(140, 2, 1559952000, 2019, 6, 8, 6, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(141, 2, 1560038400, 2019, 6, 9, 0, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(142, 4, 1557532800, 2019, 5, 11, 6, 0, 0, '', 0, 58, 58, 0, 0, 'false', 'false', 1557569829),
(143, 4, 1557619200, 2019, 5, 12, 0, 0, 0, '', 0, 58, 58, 0, 0, 'false', 'false', 1557569829),
(144, 4, 1557705600, 2019, 5, 13, 1, 0, 0, '', 0, 58, 58, 0, 0, 'false', 'false', 1557569829),
(145, 4, 1557792000, 2019, 5, 14, 2, 0, 0, '', 0, 58, 58, 0, 0, 'false', 'false', 1557569829),
(146, 4, 1557878400, 2019, 5, 15, 3, 0, 0, '', 0, 58, 58, 0, 0, 'false', 'false', 1557569829),
(147, 4, 1557964800, 2019, 5, 16, 4, 0, 0, '', 0, 58, 58, 0, 0, 'false', 'false', 1557569829),
(148, 4, 1558051200, 2019, 5, 17, 5, 0, 0, '', 0, 58, 58, 0, 0, 'false', 'false', 1557569829),
(149, 4, 1558137600, 2019, 5, 18, 6, 0, 0, '', 0, 58, 58, 0, 0, 'false', 'false', 1557569829),
(150, 4, 1558224000, 2019, 5, 19, 0, 0, 0, '', 0, 58, 58, 0, 0, 'false', 'false', 1557569829),
(151, 4, 1558310400, 2019, 5, 20, 1, 0, 0, '', 0, 58, 58, 0, 0, 'false', 'false', 1557569829),
(152, 4, 1558396800, 2019, 5, 21, 2, 0, 0, '', 0, 58, 58, 0, 0, 'false', 'false', 1557569829),
(153, 4, 1558483200, 2019, 5, 22, 3, 0, 0, '', 0, 58, 58, 0, 0, 'false', 'false', 1557569829),
(154, 4, 1558569600, 2019, 5, 23, 4, 0, 0, '', 0, 58, 58, 0, 0, 'false', 'false', 1557569829),
(155, 4, 1558656000, 2019, 5, 24, 5, 0, 0, '', 0, 58, 58, 0, 0, 'false', 'false', 1557569829),
(156, 4, 1558742400, 2019, 5, 25, 6, 0, 0, '', 0, 58, 58, 0, 0, 'false', 'false', 1557569829),
(157, 4, 1558828800, 2019, 5, 26, 0, 0, 0, '', 0, 58, 58, 0, 0, 'false', 'false', 1557569829),
(158, 4, 1558915200, 2019, 5, 27, 1, 0, 0, '', 0, 58, 58, 0, 0, 'false', 'false', 1557569829),
(159, 4, 1559001600, 2019, 5, 28, 2, 0, 0, '', 0, 58, 58, 0, 0, 'false', 'false', 1557569829),
(160, 4, 1559088000, 2019, 5, 29, 3, 0, 0, '', 0, 58, 58, 0, 0, 'false', 'false', 1557569829),
(161, 4, 1559174400, 2019, 5, 30, 4, 0, 0, '', 0, 58, 58, 0, 0, 'false', 'false', 1557569829),
(162, 4, 1559260800, 2019, 5, 31, 5, 0, 0, '', 0, 58, 58, 0, 0, 'false', 'false', 1557569829),
(163, 4, 1559347200, 2019, 6, 1, 6, 0, 0, '', 0, 58, 58, 0, 0, 'false', 'false', 1557569829),
(164, 4, 1559433600, 2019, 6, 2, 0, 0, 0, '', 0, 58, 58, 0, 0, 'false', 'false', 1557569829),
(165, 4, 1559520000, 2019, 6, 3, 1, 0, 0, '', 0, 58, 58, 0, 0, 'false', 'false', 1557569829),
(166, 4, 1559606400, 2019, 6, 4, 2, 0, 0, '', 0, 58, 58, 0, 0, 'false', 'false', 1557569829),
(167, 4, 1559692800, 2019, 6, 5, 3, 0, 0, '', 0, 58, 58, 0, 0, 'false', 'false', 1557569829),
(168, 4, 1559779200, 2019, 6, 6, 4, 0, 0, '', 0, 58, 58, 0, 0, 'false', 'false', 1557569829),
(169, 4, 1559865600, 2019, 6, 7, 5, 0, 0, '', 0, 58, 58, 0, 0, 'false', 'false', 1557569829),
(170, 4, 1559952000, 2019, 6, 8, 6, 0, 0, '', 0, 58, 58, 0, 0, 'false', 'false', 1557569829),
(171, 4, 1560038400, 2019, 6, 9, 0, 0, 0, '', 0, 58, 58, 0, 0, 'false', 'false', 1557569829),
(172, 5, 1557532800, 2019, 5, 11, 6, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(173, 5, 1557619200, 2019, 5, 12, 0, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(174, 5, 1557705600, 2019, 5, 13, 1, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(175, 5, 1557792000, 2019, 5, 14, 2, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(176, 5, 1557878400, 2019, 5, 15, 3, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(177, 5, 1557964800, 2019, 5, 16, 4, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(178, 5, 1558051200, 2019, 5, 17, 5, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(179, 5, 1558137600, 2019, 5, 18, 6, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(180, 5, 1558224000, 2019, 5, 19, 0, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(181, 5, 1558310400, 2019, 5, 20, 1, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(182, 5, 1558396800, 2019, 5, 21, 2, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(183, 5, 1558483200, 2019, 5, 22, 3, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(184, 5, 1558569600, 2019, 5, 23, 4, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(185, 5, 1558656000, 2019, 5, 24, 5, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(186, 5, 1558742400, 2019, 5, 25, 6, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(187, 5, 1558828800, 2019, 5, 26, 0, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(188, 5, 1558915200, 2019, 5, 27, 1, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(189, 5, 1559001600, 2019, 5, 28, 2, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(190, 5, 1559088000, 2019, 5, 29, 3, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(191, 5, 1559174400, 2019, 5, 30, 4, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(192, 5, 1559260800, 2019, 5, 31, 5, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(193, 5, 1559347200, 2019, 6, 1, 6, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(194, 5, 1559433600, 2019, 6, 2, 0, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(195, 5, 1559520000, 2019, 6, 3, 1, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(196, 5, 1559606400, 2019, 6, 4, 2, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(197, 5, 1559692800, 2019, 6, 5, 3, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(198, 5, 1559779200, 2019, 6, 6, 4, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(199, 5, 1559865600, 2019, 6, 7, 5, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(200, 5, 1559952000, 2019, 6, 8, 6, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(201, 5, 1560038400, 2019, 6, 9, 0, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557569829),
(202, 2, 1560124800, 2019, 6, 10, 1, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557655709),
(203, 4, 1560124800, 2019, 6, 10, 1, 0, 0, '', 0, 58, 58, 0, 0, 'false', 'false', 1557655709),
(204, 5, 1560124800, 2019, 6, 10, 1, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557655709),
(205, 2, 1560211200, 2019, 6, 11, 2, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557987180),
(206, 2, 1560297600, 2019, 6, 12, 3, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557987180),
(207, 2, 1560384000, 2019, 6, 13, 4, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557987180),
(208, 2, 1560470400, 2019, 6, 14, 5, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557987180),
(209, 4, 1560211200, 2019, 6, 11, 2, 0, 0, '', 0, 58, 58, 0, 0, 'false', 'false', 1557987180),
(210, 4, 1560297600, 2019, 6, 12, 3, 0, 0, '', 0, 58, 58, 0, 0, 'false', 'false', 1557987180),
(211, 4, 1560384000, 2019, 6, 13, 4, 0, 0, '', 0, 58, 58, 0, 0, 'false', 'false', 1557987180),
(212, 4, 1560470400, 2019, 6, 14, 5, 0, 0, '', 0, 58, 58, 0, 0, 'false', 'false', 1557987180),
(213, 5, 1560211200, 2019, 6, 11, 2, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557987180),
(214, 5, 1560297600, 2019, 6, 12, 3, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557987180),
(215, 5, 1560384000, 2019, 6, 13, 4, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557987180),
(216, 5, 1560470400, 2019, 6, 14, 5, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1557987180),
(217, 2, 1560556800, 2019, 6, 15, 6, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1558254765),
(218, 2, 1560643200, 2019, 6, 16, 0, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1558254765),
(219, 2, 1560729600, 2019, 6, 17, 1, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1558254765),
(220, 4, 1560556800, 2019, 6, 15, 6, 0, 0, '', 0, 58, 58, 0, 0, 'false', 'false', 1558254765),
(221, 4, 1560643200, 2019, 6, 16, 0, 0, 0, '', 0, 58, 58, 0, 0, 'false', 'false', 1558254765),
(222, 4, 1560729600, 2019, 6, 17, 1, 0, 0, '', 0, 58, 58, 0, 0, 'false', 'false', 1558254765),
(223, 5, 1560556800, 2019, 6, 15, 6, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1558254765),
(224, 5, 1560643200, 2019, 6, 16, 0, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1558254765),
(225, 5, 1560729600, 2019, 6, 17, 1, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1558254765),
(226, 2, 1560816000, 2019, 6, 18, 2, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1558505244),
(227, 2, 1560902400, 2019, 6, 19, 3, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1558505244),
(228, 2, 1560988800, 2019, 6, 20, 4, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1558505244),
(229, 4, 1560816000, 2019, 6, 18, 2, 0, 0, '', 0, 58, 58, 0, 0, 'false', 'false', 1558505244),
(230, 4, 1560902400, 2019, 6, 19, 3, 0, 0, '', 0, 58, 58, 0, 0, 'false', 'false', 1558505244),
(231, 4, 1560988800, 2019, 6, 20, 4, 0, 0, '', 0, 58, 58, 0, 0, 'false', 'false', 1558505244),
(232, 5, 1560816000, 2019, 6, 18, 2, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1558505244),
(233, 5, 1560902400, 2019, 6, 19, 3, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1558505244),
(234, 5, 1560988800, 2019, 6, 20, 4, 0, 0, '', 0, 5, 5, 0, 0, 'false', 'false', 1558505244);

-- --------------------------------------------------------

--
-- Table structure for table `wp_booking_package_subscriptions`
--

CREATE TABLE `wp_booking_package_subscriptions` (
  `key` int(11) NOT NULL,
  `accountKey` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subscription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ranking` int(11) DEFAULT 1,
  `renewal` int(11) DEFAULT 1,
  `limit` int(11) DEFAULT 1,
  `numberOfTimes` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_booking_package_taxes`
--

CREATE TABLE `wp_booking_package_taxes` (
  `key` int(11) NOT NULL,
  `accountKey` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'tax',
  `tax` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'tax_inclusive',
  `method` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'addition',
  `target` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'guest',
  `scope` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'day',
  `value` float DEFAULT 0,
  `ranking` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_booking_package_templateschedule`
--

CREATE TABLE `wp_booking_package_templateschedule` (
  `key` int(11) NOT NULL,
  `accountKey` int(11) NOT NULL,
  `weekKey` int(11) NOT NULL,
  `hour` int(11) NOT NULL,
  `min` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `capacity` int(11) NOT NULL,
  `deadlineTime` int(11) NOT NULL DEFAULT 0,
  `stop` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `holiday` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uploadDate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_booking_package_userpraivatedata`
--

CREATE TABLE `wp_booking_package_userpraivatedata` (
  `key` int(11) NOT NULL,
  `reserveTime` int(11) NOT NULL,
  `remainderTime` int(11) DEFAULT NULL,
  `remainderBool` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'false',
  `maintenanceTime` int(11) DEFAULT 0,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'private',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'day',
  `accountKey` int(11) NOT NULL,
  `accountName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accountCost` int(11) DEFAULT NULL,
  `checkIn` int(11) DEFAULT 0,
  `checkOut` int(11) DEFAULT 0,
  `scheduleUnixTime` int(11) DEFAULT 0,
  `scheduleWeek` int(11) DEFAULT 0,
  `scheduleTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scheduleCost` int(11) DEFAULT NULL,
  `scheduleKey` int(11) DEFAULT NULL,
  `applicantCount` int(11) DEFAULT 1,
  `courseKey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `courseTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `courseName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `courseTime` int(11) DEFAULT NULL,
  `courseCost` int(11) DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` int(11) DEFAULT 0,
  `payMode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payToken` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT 'usd',
  `praivateData` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accommodationDetails` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iCalUIDforGoogleCalendar` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iCalIDforGoogleCalendar` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resultOfGoogleCalendar` int(1) DEFAULT NULL,
  `resultModeOfGoogleCalendar` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancellationToken` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permalink` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preparation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `taxes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_booking_package_users`
--

CREATE TABLE `wp_booking_package_users` (
  `key` int(11) NOT NULL,
  `status` int(1) DEFAULT NULL,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_activation_key` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `subscription_list` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_booking_package_webhook`
--

CREATE TABLE `wp_booking_package_webhook` (
  `key` int(11) NOT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `server` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `json` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bs_bookings`
--

CREATE TABLE `wp_bs_bookings` (
  `bookingID` int(10) NOT NULL,
  `calendarID` int(10) NOT NULL DEFAULT 0,
  `formID` int(10) NOT NULL DEFAULT 0,
  `startDate` int(11) NOT NULL DEFAULT 0,
  `endDate` int(11) NOT NULL DEFAULT 0,
  `createdDate` int(11) NOT NULL DEFAULT 0,
  `bookingData` text NOT NULL,
  `bookingStatus` tinytext NOT NULL,
  `bookingRead` varchar(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='WP Booking System - Bookings';

--
-- Dumping data for table `wp_bs_bookings`
--

INSERT INTO `wp_bs_bookings` (`bookingID`, `calendarID`, `formID`, `startDate`, `endDate`, `createdDate`, `bookingData`, `bookingStatus`, `bookingRead`) VALUES
(1, 1, 1, 1551830400, 1552003200, 1551851036, '{\"car\":\"bfdgfdgf\"}', 'accepted', '1'),
(2, 1, 1, 1552003200, 1552089600, 1551851579, '{\"car\":\"ghgh\"}', 'accepted', '1'),
(3, 1, 1, 1552089600, 1552176000, 1551858432, '{\"First Name\":\"Milon\",\"Last Name\":\"ho\",\"Call\":\"1222\",\"Email\":\"milondiucse@gmail.com\",\"Address\":\"mirpur\",\"City\":\"Dhaka\",\"Comments\":\"mirpur\"}', 'accepted', '1'),
(4, 1, 1, 1561939200, 1562198400, 1558803427, '{\"First Name\":\"fghfgh\",\"Last Name\":\"fghgfh\",\"Call\":\"2255\",\"Email\":\"milon@admin.com\",\"Address\":\"mirpur\",\"City\":\"dhaka\",\"Comments\":\"test\"}', 'accepted', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_bs_calendars`
--

CREATE TABLE `wp_bs_calendars` (
  `calendarID` int(10) NOT NULL,
  `calendarTitle` text DEFAULT NULL,
  `createdDate` int(11) DEFAULT NULL,
  `modifiedDate` int(11) DEFAULT NULL,
  `calendarData` text DEFAULT NULL,
  `calendarLegend` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='WP Booking System - Calendars';

--
-- Dumping data for table `wp_bs_calendars`
--

INSERT INTO `wp_bs_calendars` (`calendarID`, `calendarTitle`, `createdDate`, `modifiedDate`, `calendarData`, `calendarLegend`) VALUES
(1, 'Umrah Cars Available & Booked', 1551847530, 1558803557, '{\"2019\":{\"3\":{\"2\":\"1\",\"3\":\"1\",\"7\":\"1\",\"9\":\"default\",\"10\":\"default\",\"11\":\"1\",\"description-8\":\"1500\",\"description-9\":\"200\",\"description-10\":\"100\"}}}', '{\"default\":{\"name\":{\"default\":\"Available\",\"hr\":\"Slobodno\",\"cs\":\"Volno\",\"da\":\"Ledigt\",\"nl\":\"Vrij\",\"en\":\"Available\",\"fr\":\"Libre\",\"de\":\"Frei\",\"hu\":\"Szabad\",\"it\":\"Libero\",\"ro\":\"Disponobil\",\"ru\":\"\\u0414\\u043e\\u0441\\u0442\\u0443\\u043f\\u043d\\u043e\",\"sk\":\"Vo\\u013en\\u00fd\",\"es\":\"Libre\",\"sv\":\"Ledigt\",\"uk\":\"B\\u0456\\u043b\\u044c\\u043d\\u043e\",\"no\":\"\"},\"color\":\"#DDFFCC\",\"splitColor\":false,\"bookable\":\"yes\"},\"1\":{\"name\":{\"default\":\"Booked\",\"hr\":\"Zauzeto\",\"cs\":\"Obsazeno\",\"da\":\"Booket\",\"nl\":\"Bezet\",\"en\":\"Booked\",\"fr\":\"Occup\\u00e9\",\"de\":\"Belegt\",\"hu\":\"Foglalt\",\"it\":\"Prenotato\",\"ro\":\"Rezervat\",\"ru\":\"\\u0417\\u0430\\u043d\\u044f\\u0442\\u043e\",\"sk\":\"Obsaden\\u00fd\",\"es\":\"Reservado\",\"sv\":\"Bokat\",\"uk\":\"\\u0417\\u0430\\u0439\\u043d\\u044f\\u0442\\u043e\",\"no\":\"\"},\"color\":\"#FFC0BD\",\"splitColor\":false,\"bookable\":false}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_bs_forms`
--

CREATE TABLE `wp_bs_forms` (
  `formID` int(10) NOT NULL,
  `formTitle` text DEFAULT NULL,
  `formData` text DEFAULT NULL,
  `formOptions` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='WP Booking System - Forms';

--
-- Dumping data for table `wp_bs_forms`
--

INSERT INTO `wp_bs_forms` (`formID`, `formTitle`, `formData`, `formOptions`) VALUES
(1, 'Book my Car', '{\"1\":{\"fieldId\":1,\"fieldName\":\"First Name\",\"fieldType\":\"text\",\"fieldOptions\":\"\",\"fieldRequired\":true,\"fieldLanguages\":{\"en\":\"First Name\"},\"fieldOptionsLanguages\":{\"en\":\"\"}},\"2\":{\"fieldId\":2,\"fieldName\":\"Last Name\",\"fieldType\":\"text\",\"fieldOptions\":\"\",\"fieldRequired\":true,\"fieldLanguages\":{\"en\":\"Last Name\"},\"fieldOptionsLanguages\":{\"en\":\"\"}},\"3\":{\"fieldId\":3,\"fieldName\":\"Call\",\"fieldType\":\"text\",\"fieldOptions\":\"\",\"fieldRequired\":\"false\",\"fieldLanguages\":{\"en\":\"call\"},\"fieldOptionsLanguages\":{\"en\":\"\"}},\"4\":{\"fieldId\":4,\"fieldName\":\"Email\",\"fieldType\":\"email\",\"fieldOptions\":\"\",\"fieldRequired\":true,\"fieldLanguages\":{\"en\":\"email\"},\"fieldOptionsLanguages\":{\"en\":\"\"}},\"5\":{\"fieldId\":5,\"fieldName\":\"Address\",\"fieldType\":\"text\",\"fieldOptions\":\"\",\"fieldRequired\":\"false\",\"fieldLanguages\":{\"en\":\"Address\"},\"fieldOptionsLanguages\":{\"en\":\"\"}},\"6\":{\"fieldId\":6,\"fieldName\":\"City\",\"fieldType\":\"text\",\"fieldOptions\":\"\",\"fieldRequired\":\"false\",\"fieldLanguages\":{\"en\":\"City\"},\"fieldOptionsLanguages\":{\"en\":\"\"}},\"7\":{\"fieldId\":7,\"fieldName\":\"Comments\",\"fieldType\":\"textarea\",\"fieldOptions\":\"\",\"fieldRequired\":\"false\",\"fieldLanguages\":{\"en\":\"Comments\"},\"fieldOptionsLanguages\":{\"en\":\"\"}}}', '{\"sendTo\":\"admin@admin.com\",\"confirmationMessage\":\"An order confirmation email tells your customer that you\\u2019ve received their order, you\\u2019re processing it, and that their order will be with them shortly.\",\"submitLabel\":{\"default\":\"button class=\\\\\\\\\\\\&quot;btn btn-primary\\\\\\\\\\\\&quot;\",\"en\":\"Book Now\"}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_commentmeta`
--

INSERT INTO `wp_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(6, 3, 'rating', '4'),
(7, 3, 'verified', '0');

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`, `comment_title`) VALUES
(1, 2, 'Admiv', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'asasas aasasas aasasas aasasas aasasas aasasas aasasas aasasas aasasas aasasas aasasas aasasas aasasas aasasas aasasas aasasas aasasas aasasas aasasas aasasas aasasas aasasas aasasas aasasas a', 0, '1', '', 'hotels', 0, 1, 'excelant'),
(2, 2, 'user', 'm.rabiul09@gmail.com', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'asasas aasasas aasasas aasasas aasasas aasasas aasasas aasasas aasasas aasasas aasasas aasasas aasasas aasasas aasasas aasasas aasasas aasasas aasasas aasasas aasasas aasasas aasasas aasasas aasasas aasasas aasasas aasasas aasasas aasasas aasasas aasasas a', 0, '1', '', 'hotels', 0, 1, 'good'),
(3, 20, '', 'm.rabiul09@gmail.com', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'sdsd', 0, '1', '', 'hotels', 0, 1, 'sdsd'),
(4, 20, '', 'm.rabiul09@gmail.com', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'good good good good good good good good good good good good good good good good good good good good good good good good good good good good good good good good good good good good good good good good good good good good good good good good good good good good good good good good ', 0, '1', '', 'hotels', 0, 1, 'ravj'),
(5, 16, '', 'm.rabiul09@gmail.com', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'asasas', 0, '1', '', 'hotels', 0, 1, 'asas'),
(6, 17, '', 'sdsd@gmail.com', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'sdsd', 0, '1', '', 'tours', 0, 0, 'sdsd');

-- --------------------------------------------------------

--
-- Table structure for table `wp_galcategory`
--

CREATE TABLE `wp_galcategory` (
  `catid` int(11) NOT NULL,
  `categorynm` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catimage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `publish` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_galimage`
--

CREATE TABLE `wp_galimage` (
  `imgid` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `imagenm` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagecrop` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish` int(11) NOT NULL,
  `catpub` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_gdgallerygalleries`
--

CREATE TABLE `wp_gdgallerygalleries` (
  `id_gallery` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `order_by` int(1) NOT NULL DEFAULT 0,
  `sort_by` int(1) NOT NULL DEFAULT 0,
  `show_title` int(1) NOT NULL DEFAULT 0,
  `display_type` int(1) NOT NULL DEFAULT 0,
  `view_type` int(1) NOT NULL DEFAULT 0,
  `position` enum('center','left','right') DEFAULT 'center',
  `hover_effect` int(1) NOT NULL DEFAULT 0,
  `items_per_page` int(3) NOT NULL DEFAULT 5,
  `custom_css` text DEFAULT NULL,
  `ctime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_gdgallerygalleries`
--

INSERT INTO `wp_gdgallerygalleries` (`id_gallery`, `name`, `description`, `ordering`, `order_by`, `sort_by`, `show_title`, `display_type`, `view_type`, `position`, `hover_effect`, `items_per_page`, `custom_css`, `ctime`) VALUES
(1, 'My First Gallery', NULL, 0, 0, 0, 0, 0, 0, 'center', 0, 5, '#gdgallery_container_1{}', '2019-05-25 19:17:32');

-- --------------------------------------------------------

--
-- Table structure for table `wp_gdgalleryimages`
--

CREATE TABLE `wp_gdgalleryimages` (
  `id_image` int(11) UNSIGNED NOT NULL,
  `id_gallery` int(11) UNSIGNED NOT NULL,
  `id_post` int(11) UNSIGNED DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `link` varchar(255) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `target` enum('_blank','_self','_top','_parent') DEFAULT '_blank',
  `type` enum('image','youtube','vimeo') DEFAULT 'image',
  `ctime` timestamp NOT NULL DEFAULT current_timestamp(),
  `video_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_gdgalleryimages`
--

INSERT INTO `wp_gdgalleryimages` (`id_image`, `id_gallery`, `id_post`, `name`, `description`, `ordering`, `link`, `url`, `target`, `type`, `ctime`, `video_id`) VALUES
(1, 1, 604, '1', NULL, 1, NULL, 'https://technovicinity.com/development/wordpress/milon/travel/wp-content/plugins/photo-gallery-image/resources/assets/images/project/1.jpg', '_blank', 'image', '2019-05-25 19:17:32', NULL),
(2, 1, 603, '2', NULL, 2, NULL, 'https://technovicinity.com/development/wordpress/milon/travel/wp-content/plugins/photo-gallery-image/resources/assets/images/project/2.jpg', '_blank', 'image', '2019-05-25 19:17:32', NULL),
(3, 1, 377, '3', NULL, 3, NULL, 'https://technovicinity.com/development/wordpress/milon/travel/wp-content/plugins/photo-gallery-image/resources/assets/images/project/3.jpg', '_blank', 'image', '2019-05-25 19:17:32', NULL),
(4, 1, 351, '4', NULL, 4, NULL, 'https://technovicinity.com/development/wordpress/milon/travel/wp-content/plugins/photo-gallery-image/resources/assets/images/project/4.jpg', '_blank', 'image', '2019-05-25 19:17:32', NULL),
(5, 1, 348, '5', NULL, 5, NULL, 'https://technovicinity.com/development/wordpress/milon/travel/wp-content/plugins/photo-gallery-image/resources/assets/images/project/5.jpg', '_blank', 'image', '2019-05-25 19:17:32', NULL),
(6, 1, 347, '6', NULL, 6, NULL, 'https://technovicinity.com/development/wordpress/milon/travel/wp-content/plugins/photo-gallery-image/resources/assets/images/project/6.jpg', '_blank', 'image', '2019-05-25 19:17:32', NULL),
(7, 1, 345, '7', NULL, 7, NULL, 'https://technovicinity.com/development/wordpress/milon/travel/wp-content/plugins/photo-gallery-image/resources/assets/images/project/7.jpg', '_blank', 'image', '2019-05-25 19:17:32', NULL),
(8, 1, 177, '8', NULL, 8, NULL, 'https://technovicinity.com/development/wordpress/milon/travel/wp-content/plugins/photo-gallery-image/resources/assets/images/project/8.jpg', '_blank', 'image', '2019-05-25 19:17:32', NULL),
(9, 1, 176, '9', NULL, 9, NULL, 'https://technovicinity.com/development/wordpress/milon/travel/wp-content/plugins/photo-gallery-image/resources/assets/images/project/9.jpg', '_blank', 'image', '2019-05-25 19:17:32', NULL),
(10, 1, 604, 'o-RUSSIA-VIRTUALPRIDE-facebook-263x197', NULL, 0, NULL, 'https://technovicinity.com/development/wordpress/milon/travel/wp-content/uploads/2019/04/o-RUSSIA-VIRTUALPRIDE-facebook-263x197.jpg', '_blank', 'image', '2019-06-14 15:30:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_gdgallerysettings`
--

CREATE TABLE `wp_gdgallerysettings` (
  `id` int(11) UNSIGNED NOT NULL,
  `option_key` varchar(200) NOT NULL,
  `option_value` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_gdgallerysettings`
--

INSERT INTO `wp_gdgallerysettings` (`id`, `option_key`, `option_value`) VALUES
(1, 'RemoveTablesUninstall', 'off'),
(2, 'lightbox_type_justified', 'wide'),
(3, 'show_title_justified', '0'),
(4, 'title_position_justified', 'center'),
(5, 'title_vertical_position_justified', 'inside_bottom'),
(6, 'title_appear_type_justified', 'slide'),
(7, 'title_size_justified', '16'),
(8, 'title_color_justified', 'FFFFFF'),
(9, 'title_background_color_justified', '333333'),
(10, 'title_background_opacity_justified', '70'),
(11, 'margin_justified', '10'),
(12, 'border_width_justified', '0'),
(13, 'border_color_justified', '333333'),
(14, 'border_radius_justified', '0'),
(15, 'on_hover_overlay_justified', 'b:1;'),
(16, 'show_icons_justified', 'b:1;'),
(17, 'show_link_icon_justified', 'b:1;'),
(18, 'item_as_link_justified', 'b:0;'),
(19, 'link_new_tab_justified', 'b:1;'),
(20, 'image_hover_effect_justified', 'blur'),
(21, 'image_hover_effect_reverse_justified', 'b:0;'),
(22, 'shadow_justified', 'b:0;'),
(23, 'load_more_text_justified', 'Load More'),
(24, 'load_more_position_justified', 'center'),
(25, 'load_more_font_size_justified', '15'),
(26, 'load_more_vertical_padding_justified', '8'),
(27, 'load_more_horisontal_padding_justified', '13'),
(28, 'load_more_border_width_justified', '1'),
(29, 'load_more_border_radius_justified', '0'),
(30, 'load_more_color_justified', 'FFFFFF'),
(31, 'load_more_background_color_justified', '333333'),
(32, 'load_more_border_color_justified', '333333'),
(33, 'load_more_font_family_justified', 'monospace'),
(34, 'load_more_hover_color_justified', '333333'),
(35, 'load_more_hover_background_color_justified', 'FFFFFF'),
(36, 'load_more_hover_border_color_justified', '333333'),
(37, 'load_more_loader_justified', 'b:1;'),
(38, 'load_more_loader_color_justified', '333333'),
(39, 'pagination_position_justified', 'center'),
(40, 'pagination_font_size_justified', '15'),
(41, 'pagination_vertical_padding_justified', '8'),
(42, 'pagination_horisontal_padding_justified', '13'),
(43, 'pagination_margin_justified', '3'),
(44, 'pagination_border_width_justified', '1'),
(45, 'pagination_border_radius_justified', '0'),
(46, 'pagination_border_color_justified', '333333'),
(47, 'pagination_color_justified', '333333'),
(48, 'pagination_background_color_justified', 'FFFFFF'),
(49, 'pagination_font_family_justified', 'monospace'),
(50, 'pagination_hover_border_color_justified', '333333'),
(51, 'pagination_hover_color_justified', 'FFFFFF'),
(52, 'pagination_hover_background_color_justified', '333333'),
(53, 'pagination_nav_type_justified', '0'),
(54, 'pagination_nav_text_justified', 'first,prev,next,last'),
(55, 'pagination_nearby_pages_justified', '2'),
(56, 'lightbox_type_tiles', 'wide'),
(57, 'show_title_tiles', '0'),
(58, 'title_position_tiles', 'center'),
(59, 'title_vertical_position_tiles', 'inside_bottom'),
(60, 'title_appear_type_tiles', 'slide'),
(61, 'title_size_tiles', '16'),
(62, 'title_color_tiles', 'FFFFFF'),
(63, 'title_background_color_tiles', 'f00'),
(64, 'title_background_opacity_tiles', '70'),
(65, 'margin_tiles', '10'),
(66, 'col_width_tiles', '250'),
(67, 'min_col_tiles', '2'),
(68, 'border_width_tiles', '0'),
(69, 'border_color_tiles', '333333'),
(70, 'border_radius_tiles', '0'),
(71, 'on_hover_overlay_tiles', 'b:1;'),
(72, 'show_icons_tiles', 'b:1;'),
(73, 'show_link_icon_tiles', 'b:1;'),
(74, 'item_as_link_tiles', 'b:0;'),
(75, 'link_new_tab_tiles', 'b:1;'),
(76, 'image_hover_effect_tiles', 'blur'),
(77, 'image_hover_effect_reverse_tiles', 'b:0;'),
(78, 'shadow_tiles', 'b:0;'),
(79, 'load_more_text_tiles', 'Load More'),
(80, 'load_more_position_tiles', 'center'),
(81, 'load_more_font_size_tiles', '15'),
(82, 'load_more_vertical_padding_tiles', '8'),
(83, 'load_more_horisontal_padding_tiles', '13'),
(84, 'load_more_border_width_tiles', '1'),
(85, 'load_more_border_radius_tiles', '0'),
(86, 'load_more_color_tiles', 'FFFFFF'),
(87, 'load_more_background_color_tiles', '333333'),
(88, 'load_more_border_color_tiles', '333333'),
(89, 'load_more_font_family_tiles', 'monospace'),
(90, 'load_more_hover_color_tiles', '333333'),
(91, 'load_more_hover_background_color_tiles', 'FFFFFF'),
(92, 'load_more_hover_border_color_tiles', '333333'),
(93, 'load_more_loader_tiles', 'b:1;'),
(94, 'load_more_loader_color_tiles', '333333'),
(95, 'pagination_position_tiles', 'center'),
(96, 'pagination_font_size_tiles', '15'),
(97, 'pagination_vertical_padding_tiles', '8'),
(98, 'pagination_horisontal_padding_tiles', '13'),
(99, 'pagination_margin_tiles', '3'),
(100, 'pagination_border_width_tiles', '1'),
(101, 'pagination_border_radius_tiles', '0'),
(102, 'pagination_border_color_tiles', '333333'),
(103, 'pagination_color_tiles', '333333'),
(104, 'pagination_background_color_tiles', 'FFFFFF'),
(105, 'pagination_font_family_tiles', 'monospace'),
(106, 'pagination_hover_border_color_tiles', '333333'),
(107, 'pagination_hover_color_tiles', 'FFFFFF'),
(108, 'pagination_hover_background_color_tiles', '333333'),
(109, 'pagination_nav_type_tiles', '0'),
(110, 'pagination_nav_text_tiles', 'first,prev,next,last'),
(111, 'pagination_nearby_pages_tiles', '2'),
(112, 'lightbox_type_carousel', 'wide'),
(113, 'show_title_carousel', '0'),
(114, 'title_position_carousel', 'center'),
(115, 'title_vertical_position_carousel', 'inside_bottom'),
(116, 'title_appear_type_carousel', 'slide'),
(117, 'title_size_carousel', '16'),
(118, 'title_color_carousel', 'FFFFFF'),
(119, 'title_background_color_carousel', '333333'),
(120, 'title_background_opacity_carousel', '70'),
(121, 'width_carousel', '200'),
(122, 'height_carousel', '200'),
(123, 'margin_carousel', '10'),
(124, 'position_carousel', 'center'),
(125, 'show_background_carousel', 'b:0;'),
(126, 'background_color_carousel', 'FFFFFF'),
(127, 'border_width_carousel', '0'),
(128, 'border_color_carousel', '333333'),
(129, 'border_radius_carousel', '0'),
(130, 'on_hover_overlay_carousel', 'b:1;'),
(131, 'show_icons_carousel', 'b:1;'),
(132, 'show_link_icon_carousel', 'b:1;'),
(133, 'item_as_link_carousel', 'b:0;'),
(134, 'link_new_tab_carousel', 'b:1;'),
(135, 'image_hover_effect_carousel', 'blur'),
(136, 'image_hover_effect_reverse_carousel', 'b:0;'),
(137, 'shadow_carousel', 'b:0;'),
(138, 'nav_num_carousel', '1'),
(139, 'scroll_duration_carousel', '500'),
(140, 'autoplay_carousel', 'b:1;'),
(141, 'autoplay_timeout_carousel', '3000'),
(142, 'autoplay_direction_carousel', 'right'),
(143, 'autoplay_pause_hover_carousel', 'b:1;'),
(144, 'enable_nav_carousel', 'b:1;'),
(145, 'nav_vertical_position_carousel', 'bottom'),
(146, 'nav_horisontal_position_carousel', 'center'),
(147, 'play_icon_carousel', 'b:1;'),
(148, 'icon_space_carousel', '20'),
(149, 'lightbox_type_grid', 'wide'),
(150, 'width_grid', '200'),
(151, 'height_grid', '200'),
(152, 'space_cols_grid', '20'),
(153, 'space_rows_grid', '20'),
(154, 'gallery_width_grid', '100'),
(155, 'gallery_bg_grid', 'b:1;'),
(156, 'gallery_bg_color_grid', 'FFFFFF'),
(157, 'num_rows_grid', '3'),
(158, 'show_title_grid', '1'),
(159, 'title_position_grid', 'left'),
(160, 'title_vertical_position_grid', 'bottom'),
(161, 'title_appear_type_grid', 'slide'),
(162, 'title_size_grid', '16'),
(163, 'title_color_grid', 'FFFFFF'),
(164, 'title_background_color_grid', '333333'),
(165, 'title_background_opacity_grid', '70'),
(166, 'border_width_grid', '1'),
(167, 'border_color_grid', '333333'),
(168, 'border_radius_grid', '3'),
(169, 'on_hover_overlay_grid', 'b:1;'),
(170, 'show_icons_grid', 'b:1;'),
(171, 'show_link_icon_grid', 'b:1;'),
(172, 'item_as_link_grid', 'b:0;'),
(173, 'link_new_tab_grid', 'b:1;'),
(174, 'image_hover_effect_grid', 'blur'),
(175, 'image_hover_effect_reverse_grid', 'b:0;'),
(176, 'shadow_grid', 'b:1;'),
(177, 'nav_type_grid', 'bullets'),
(178, 'bullets_margin_grid', '50'),
(179, 'bullets_color_grid', 'gray'),
(180, 'bullets_space_between_grid', '15'),
(181, 'arrows_margin_grid', '50'),
(182, 'arrows_space_between_grid', '20'),
(183, 'nav_position_grid', 'center'),
(184, 'nav_offset_grid', '0'),
(185, 'width_slider', '900'),
(186, 'height_slider', '500'),
(187, 'autoplay_slider', 'b:1;'),
(188, 'play_interval_slider', '5000'),
(189, 'pause_on_hover_slider', 'b:1;'),
(190, 'scale_mode_slider', 'fill'),
(191, 'transition_slider', 'slide'),
(192, 'transition_speed_slider', '1500'),
(193, 'zoom_slider', 'b:1;'),
(194, 'loader_type_slider', '1'),
(195, 'loader_color_slider', 'white'),
(196, 'bullets_slider', 'b:1;'),
(197, 'bullets_horisontal_position_slider', 'center'),
(198, 'bullets_vertical_position_slider', 'bottom'),
(199, 'arrows_slider', 'b:1;'),
(200, 'progress_indicator_slider', 'b:1;'),
(201, 'progress_indicator_type_slider', 'pie'),
(202, 'progress_indicator_horisontal_position_slider', 'right'),
(203, 'progress_indicator_vertical_position_slider', 'top'),
(204, 'play_slider', 'b:0;'),
(205, 'play_horizontal_position_slider', 'left'),
(206, 'play_vertical_position_slider', 'top'),
(207, 'fullscreen_slider', 'b:0;'),
(208, 'fullscreen_horisontal_position_slider', 'left'),
(209, 'fullscreen_vertical_position_slider', 'top'),
(210, 'zoom_panel_slider', 'b:0;'),
(211, 'zoom_horisontal_panel_position_slider', 'left'),
(212, 'zoom_vertical_panel_position_slider', 'top'),
(213, 'controls_always_on_slider', 'b:0;'),
(214, 'video_play_type_slider', 'round'),
(215, 'text_panel_slider', 'b:1;'),
(216, 'text_panel_always_on_slider', 'b:0;'),
(217, 'text_title_slider', 'b:1;'),
(218, 'text_description_slider', 'b:1;'),
(219, 'text_panel_bg_slider', 'b:1;'),
(220, 'carousel_slider', 'b:1;'),
(221, 'text_panel_bg_color_slider', '000000'),
(222, 'text_panel_bg_opacity_slider', '70'),
(223, 'text_panel_title_size_slider', '17'),
(224, 'text_panel_title_color_slider', 'FFFFFF'),
(225, 'text_panel_desc_size_slider', '14'),
(226, 'text_panel_desc_color_slider', 'FFFFFF'),
(227, 'playlist_slider', 'b:0;'),
(228, 'thumb_width_slider', '88'),
(229, 'thumb_height_slider', '50'),
(230, 'playlist_bg_slider', '000000'),
(231, 'arrows_offset_wide', '0'),
(232, 'overlay_color_wide', '000000'),
(233, 'overlay_opacity_wide', '100'),
(234, 'top_panel_bg_color_wide', '000000'),
(235, 'top_panel_opacity_wide', '100'),
(236, 'show_numbers_wide', 'b:1;'),
(237, 'number_size_wide', '15'),
(238, 'number_color_wide', 'FFFFFF'),
(239, 'image_border_width_wide', '0'),
(240, 'image_border_color_wide', 'FFFFFF'),
(241, 'image_border_radius_wide', '0'),
(242, 'image_shadow_wide', 'b:1;'),
(243, 'swipe_control_wide', 'b:1;'),
(244, 'zoom_control_wide', 'b:1;'),
(245, 'show_text_panel_wide', 'b:1;'),
(246, 'enable_title_wide', 'b:1;'),
(247, 'enable_desc_wide', 'b:0;'),
(248, 'texpanel_paddind_vert_wide', '5'),
(249, 'texpanel_paddind_hor_wide', '5'),
(250, 'text_position_wide', 'center'),
(251, 'title_color_wide', 'FFFFFF'),
(252, 'title_font_size_wide', '16'),
(253, 'desc_color_wide', 'FFFFFF'),
(254, 'desc_font_size_wide', '14'),
(255, 'arrows_offset_compact', '0'),
(256, 'overlay_color_compact', '000000'),
(257, 'overlay_opacity_compact', '50'),
(258, 'show_numbers_compact', 'b:1;'),
(259, 'number_size_compact', '15'),
(260, 'number_color_compact', 'FFFFFF'),
(261, 'image_border_width_compact', '0'),
(262, 'image_border_color_compact', 'FFFFFF'),
(263, 'image_border_radius_compact', '0'),
(264, 'image_shadow_compact', 'b:1;'),
(265, 'swipe_control_compact', 'b:1;'),
(266, 'zoom_control_compact', 'b:1;'),
(267, 'show_text_panel_compact', 'b:1;'),
(268, 'enable_title_compact', 'b:1;'),
(269, 'enable_desc_compact', 'b:0;'),
(270, 'texpanel_paddind_vert_compact', '5'),
(271, 'texpanel_paddind_hor_compact', '5'),
(272, 'text_position_compact', 'left'),
(273, 'title_color_compact', '333333'),
(274, 'title_font_size_compact', '16'),
(275, 'desc_color_compact', '333333'),
(276, 'desc_font_size_compact', '14');

-- --------------------------------------------------------

--
-- Table structure for table `wp_hotel_booking_order_itemmeta`
--

CREATE TABLE `wp_hotel_booking_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `hotel_booking_order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_hotel_booking_order_items`
--

CREATE TABLE `wp_hotel_booking_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_parent` bigint(20) DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_hotel_booking_plans`
--

CREATE TABLE `wp_hotel_booking_plans` (
  `plan_id` bigint(20) UNSIGNED NOT NULL,
  `room_id` bigint(20) UNSIGNED NOT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `pricing` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_hotel_booking_plans`
--

INSERT INTO `wp_hotel_booking_plans` (`plan_id`, `room_id`, `start_time`, `end_time`, `pricing`) VALUES
(1, 417, NULL, NULL, 'a:7:{i:1;s:3:\"300\";i:2;s:3:\"200\";i:3;s:3:\"200\";i:4;s:3:\"200\";i:5;s:3:\"200\";i:6;s:3:\"250\";i:0;s:3:\"300\";}'),
(2, 416, NULL, NULL, 'a:7:{i:1;s:3:\"300\";i:2;s:3:\"200\";i:3;s:3:\"200\";i:4;s:3:\"200\";i:5;s:3:\"200\";i:6;s:3:\"250\";i:0;s:3:\"300\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_mphb_sync_logs`
--

CREATE TABLE `wp_mphb_sync_logs` (
  `log_id` int(11) NOT NULL,
  `queue_id` int(11) NOT NULL,
  `log_status` varchar(30) NOT NULL,
  `log_message` text NOT NULL,
  `log_context` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_mphb_sync_queue`
--

CREATE TABLE `wp_mphb_sync_queue` (
  `queue_id` int(11) NOT NULL,
  `queue_name` tinytext NOT NULL,
  `queue_status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_mphb_sync_stats`
--

CREATE TABLE `wp_mphb_sync_stats` (
  `stat_id` int(11) NOT NULL,
  `queue_id` int(11) NOT NULL,
  `stat_total` int(11) NOT NULL,
  `stat_succeed` int(11) NOT NULL,
  `stat_skipped` int(11) NOT NULL,
  `stat_failed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://technovicinity.com/development/wordpress/milon/travel/', 'yes'),
(2, 'home', 'https://technovicinity.com/development/wordpress/milon/travel/', 'yes'),
(3, 'blogname', 'projct new development', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'admin@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:8:{i:0;s:19:\"akismet/akismet.php\";i:1;s:33:\"duplicate-post/duplicate-post.php\";i:2;s:29:\"photo-gallery-image/index.php\";i:3;s:25:\"profile-builder/index.php\";i:4;s:29:\"site-reviews/site-reviews.php\";i:5;s:29:\"theme-editor/theme_editor.php\";i:6;s:33:\"theme-my-login/theme-my-login.php\";i:7;s:37:\"user-role-editor/user-role-editor.php\";}', 'yes'),
(34, 'category_base', '/taxonomy', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:109:\"/home/techvqgu/public_html/development/wordpress/milon/travel/wp-content/themes/hazproject/inc/pages_link.php\";i:1;s:104:\"/home/techvqgu/public_html/development/wordpress/milon/travel/wp-content/themes/hazproject/functions.php\";i:3;s:100:\"/home/techvqgu/public_html/development/wordpress/milon/travel/wp-content/themes/hazproject/style.css\";i:4;s:115:\"/home/techvqgu/public_html/development/wordpress/milon/travel/wp-content/themes/hazproject/admin-page/add_rooms.php\";i:5;s:115:\"/home/techvqgu/public_html/development/wordpress/milon/travel/wp-content/themes/hazproject/admin-page/add_hotel.php\";}', 'no'),
(40, 'template', 'hazproject', 'yes'),
(41, 'stylesheet', 'hazproject', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'taibur', 'yes'),
(48, 'db_version', '43764', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '0', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:8:\"Category\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:44:\"wp-custom-taxonomy-meta/wp-texonomy-meta.php\";s:15:\"wpaft_uninstall\";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '582', 'yes'),
(84, 'page_on_front', '9', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '363', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '43764', 'yes'),
(94, 'wp_user_roles', 'a:21:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:105:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:16:\"edit_attachments\";b:1;s:18:\"delete_attachments\";b:1;s:23:\"read_others_attachments\";b:1;s:23:\"edit_others_attachments\";b:1;s:25:\"delete_others_attachments\";b:1;s:23:\"edit_users_higher_level\";b:1;s:25:\"delete_users_higher_level\";b:1;s:26:\"promote_users_higher_level\";b:1;s:29:\"promote_users_to_higher_level\";b:1;s:9:\"add_users\";b:1;s:10:\"list_roles\";b:1;s:12:\"create_roles\";b:1;s:10:\"edit_roles\";b:1;s:12:\"delete_roles\";b:1;s:15:\"edit_role_menus\";b:1;s:27:\"edit_posts_role_permissions\";b:1;s:27:\"edit_pages_role_permissions\";b:1;s:25:\"edit_nav_menu_permissions\";b:1;s:23:\"edit_content_shortcodes\";b:1;s:25:\"delete_content_shortcodes\";b:1;s:20:\"edit_login_redirects\";b:1;s:22:\"delete_login_redirects\";b:1;s:15:\"bulk_edit_roles\";b:1;s:23:\"edit_widget_permissions\";b:1;s:14:\"ure_edit_roles\";b:1;s:16:\"ure_create_roles\";b:1;s:16:\"ure_delete_roles\";b:1;s:23:\"ure_create_capabilities\";b:1;s:23:\"ure_delete_capabilities\";b:1;s:18:\"ure_manage_options\";b:1;s:15:\"ure_reset_roles\";b:1;s:26:\"wpcf_custom_post_type_view\";b:1;s:26:\"wpcf_custom_post_type_edit\";b:1;s:33:\"wpcf_custom_post_type_edit_others\";b:1;s:25:\"wpcf_custom_taxonomy_view\";b:1;s:25:\"wpcf_custom_taxonomy_edit\";b:1;s:32:\"wpcf_custom_taxonomy_edit_others\";b:1;s:22:\"wpcf_custom_field_view\";b:1;s:22:\"wpcf_custom_field_edit\";b:1;s:29:\"wpcf_custom_field_edit_others\";b:1;s:25:\"wpcf_user_meta_field_view\";b:1;s:25:\"wpcf_user_meta_field_edit\";b:1;s:32:\"wpcf_user_meta_field_edit_others\";b:1;s:12:\"capabilities\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:80:{s:16:\"activate_plugins\";b:1;s:12:\"create_users\";b:1;s:19:\"delete_others_pages\";b:1;s:19:\"delete_others_posts\";b:1;s:12:\"delete_pages\";b:1;s:14:\"delete_plugins\";b:1;s:12:\"delete_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:13:\"delete_themes\";b:1;s:12:\"delete_users\";b:1;s:14:\"edit_dashboard\";b:1;s:17:\"edit_others_pages\";b:1;s:17:\"edit_others_posts\";b:1;s:10:\"edit_pages\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_posts\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:18:\"edit_theme_options\";b:1;s:11:\"edit_themes\";b:1;s:10:\"edit_users\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:15:\"install_plugins\";b:1;s:14:\"install_themes\";b:1;s:7:\"level_0\";b:1;s:7:\"level_1\";b:1;s:7:\"level_2\";b:1;s:10:\"list_users\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:13:\"promote_users\";b:1;s:13:\"publish_pages\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:12:\"remove_users\";b:1;s:13:\"switch_themes\";b:1;s:15:\"unfiltered_html\";b:1;s:17:\"unfiltered_upload\";b:1;s:11:\"update_core\";b:1;s:14:\"update_plugins\";b:1;s:13:\"update_themes\";b:1;s:12:\"upload_files\";b:1;s:23:\"ure_create_capabilities\";b:1;s:16:\"ure_create_roles\";b:1;s:23:\"ure_delete_capabilities\";b:1;s:16:\"ure_delete_roles\";b:1;s:14:\"ure_edit_roles\";b:1;s:18:\"ure_manage_options\";b:1;s:15:\"ure_reset_roles\";b:1;s:16:\"edit_attachments\";b:1;s:18:\"delete_attachments\";b:1;s:23:\"read_others_attachments\";b:1;s:23:\"edit_others_attachments\";b:1;s:25:\"delete_others_attachments\";b:1;s:23:\"edit_users_higher_level\";b:1;s:25:\"delete_users_higher_level\";b:1;s:26:\"promote_users_higher_level\";b:1;s:29:\"promote_users_to_higher_level\";b:1;s:26:\"wpcf_custom_post_type_view\";b:1;s:26:\"wpcf_custom_post_type_edit\";b:1;s:33:\"wpcf_custom_post_type_edit_others\";b:1;s:25:\"wpcf_custom_taxonomy_view\";b:1;s:25:\"wpcf_custom_taxonomy_edit\";b:1;s:32:\"wpcf_custom_taxonomy_edit_others\";b:1;s:22:\"wpcf_custom_field_view\";b:1;s:22:\"wpcf_custom_field_edit\";b:1;s:29:\"wpcf_custom_field_edit_others\";b:1;s:25:\"wpcf_user_meta_field_view\";b:1;s:25:\"wpcf_user_meta_field_edit\";b:1;s:32:\"wpcf_user_meta_field_edit_others\";b:1;}}s:11:\"bbp_blocked\";a:2:{s:4:\"name\";s:7:\"Blocked\";s:12:\"capabilities\";a:0:{}}s:19:\"wphb_booking_editor\";a:2:{s:4:\"name\";s:14:\"Booking Editor\";s:12:\"capabilities\";a:26:{s:4:\"read\";b:1;s:10:\"edit_posts\";b:1;s:16:\"publish_hb_rooms\";b:1;s:15:\"delete_hb_rooms\";b:1;s:25:\"delete_published_hb_rooms\";b:1;s:23:\"delete_private_hb_rooms\";b:1;s:22:\"delete_others_hb_rooms\";b:1;s:20:\"edit_others_hb_rooms\";b:1;s:13:\"edit_hb_rooms\";b:1;s:23:\"edit_published_hb_rooms\";b:1;s:21:\"edit_private_hb_rooms\";b:1;s:19:\"publish_hb_bookings\";b:1;s:18:\"delete_hb_bookings\";b:1;s:28:\"delete_published_hb_bookings\";b:1;s:26:\"delete_private_hb_bookings\";b:1;s:25:\"delete_others_hb_bookings\";b:1;s:23:\"edit_others_hb_bookings\";b:1;s:16:\"edit_hb_bookings\";b:1;s:26:\"edit_published_hb_bookings\";b:1;s:24:\"edit_private_hb_bookings\";b:1;s:12:\"upload_files\";b:1;s:16:\"edit_attachments\";b:1;s:18:\"delete_attachments\";b:1;s:23:\"read_others_attachments\";b:1;s:23:\"edit_others_attachments\";b:1;s:25:\"delete_others_attachments\";b:1;}}s:22:\"booking_package_member\";a:2:{s:4:\"name\";s:15:\"Booking Package\";s:12:\"capabilities\";a:3:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;s:15:\"booking_package\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:20:{s:19:\"delete_others_posts\";b:1;s:12:\"delete_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:10:\"edit_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:7:\"level_0\";b:1;s:7:\"level_1\";b:1;s:7:\"level_2\";b:1;s:7:\"level_3\";b:1;s:7:\"level_4\";b:1;s:7:\"level_5\";b:1;s:7:\"level_6\";b:1;s:7:\"level_7\";b:1;s:17:\"manage_categories\";b:1;s:17:\"moderate_comments\";b:1;s:13:\"publish_posts\";b:1;s:18:\"read_private_posts\";b:1;}}s:19:\"awebooking_customer\";a:2:{s:4:\"name\";s:14:\"Hotel Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:18:\"wphb_hotel_manager\";a:2:{s:4:\"name\";s:13:\"Hotel Manager\";s:12:\"capabilities\";a:27:{s:4:\"read\";b:1;s:10:\"edit_posts\";b:1;s:15:\"delete_hb_rooms\";b:1;s:16:\"publish_hb_rooms\";b:1;s:25:\"delete_published_hb_rooms\";b:1;s:23:\"delete_private_hb_rooms\";b:1;s:22:\"delete_others_hb_rooms\";b:1;s:20:\"edit_others_hb_rooms\";b:1;s:13:\"edit_hb_rooms\";b:1;s:23:\"edit_published_hb_rooms\";b:1;s:21:\"edit_private_hb_rooms\";b:1;s:19:\"publish_hb_bookings\";b:1;s:18:\"delete_hb_bookings\";b:1;s:28:\"delete_published_hb_bookings\";b:1;s:26:\"delete_private_hb_bookings\";b:1;s:25:\"delete_others_hb_bookings\";b:1;s:23:\"edit_others_hb_bookings\";b:1;s:16:\"edit_hb_bookings\";b:1;s:26:\"edit_published_hb_bookings\";b:1;s:24:\"edit_private_hb_bookings\";b:1;s:12:\"upload_files\";b:1;s:17:\"manage_hb_booking\";b:1;s:16:\"edit_attachments\";b:1;s:18:\"delete_attachments\";b:1;s:23:\"read_others_attachments\";b:1;s:23:\"edit_others_attachments\";b:1;s:25:\"delete_others_attachments\";b:1;}}s:18:\"awebooking_manager\";a:2:{s:4:\"name\";s:13:\"Hotel Manager\";s:12:\"capabilities\";a:115:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:17:\"manage_awebooking\";b:1;s:26:\"manage_awebooking_settings\";b:1;s:15:\"edit_awebooking\";b:1;s:15:\"read_awebooking\";b:1;s:17:\"delete_awebooking\";b:1;s:16:\"edit_awebookings\";b:1;s:23:\"edit_others_awebookings\";b:1;s:19:\"publish_awebookings\";b:1;s:24:\"read_private_awebookings\";b:1;s:18:\"delete_awebookings\";b:1;s:26:\"delete_private_awebookings\";b:1;s:28:\"delete_published_awebookings\";b:1;s:25:\"delete_others_awebookings\";b:1;s:24:\"edit_private_awebookings\";b:1;s:26:\"edit_published_awebookings\";b:1;s:23:\"manage_awebooking_terms\";b:1;s:21:\"edit_awebooking_terms\";b:1;s:23:\"delete_awebooking_terms\";b:1;s:23:\"assign_awebooking_terms\";b:1;s:14:\"edit_room_type\";b:1;s:14:\"read_room_type\";b:1;s:16:\"delete_room_type\";b:1;s:15:\"edit_room_types\";b:1;s:22:\"edit_others_room_types\";b:1;s:18:\"publish_room_types\";b:1;s:23:\"read_private_room_types\";b:1;s:17:\"delete_room_types\";b:1;s:25:\"delete_private_room_types\";b:1;s:27:\"delete_published_room_types\";b:1;s:24:\"delete_others_room_types\";b:1;s:23:\"edit_private_room_types\";b:1;s:25:\"edit_published_room_types\";b:1;s:22:\"manage_room_type_terms\";b:1;s:20:\"edit_room_type_terms\";b:1;s:22:\"delete_room_type_terms\";b:1;s:22:\"assign_room_type_terms\";b:1;s:18:\"edit_hotel_service\";b:1;s:18:\"read_hotel_service\";b:1;s:20:\"delete_hotel_service\";b:1;s:19:\"edit_hotel_services\";b:1;s:26:\"edit_others_hotel_services\";b:1;s:22:\"publish_hotel_services\";b:1;s:27:\"read_private_hotel_services\";b:1;s:21:\"delete_hotel_services\";b:1;s:29:\"delete_private_hotel_services\";b:1;s:31:\"delete_published_hotel_services\";b:1;s:28:\"delete_others_hotel_services\";b:1;s:27:\"edit_private_hotel_services\";b:1;s:29:\"edit_published_hotel_services\";b:1;s:26:\"manage_hotel_service_terms\";b:1;s:24:\"edit_hotel_service_terms\";b:1;s:26:\"delete_hotel_service_terms\";b:1;s:26:\"assign_hotel_service_terms\";b:1;s:19:\"edit_hotel_location\";b:1;s:19:\"read_hotel_location\";b:1;s:21:\"delete_hotel_location\";b:1;s:20:\"edit_hotel_locations\";b:1;s:27:\"edit_others_hotel_locations\";b:1;s:23:\"publish_hotel_locations\";b:1;s:28:\"read_private_hotel_locations\";b:1;s:22:\"delete_hotel_locations\";b:1;s:30:\"delete_private_hotel_locations\";b:1;s:32:\"delete_published_hotel_locations\";b:1;s:29:\"delete_others_hotel_locations\";b:1;s:28:\"edit_private_hotel_locations\";b:1;s:30:\"edit_published_hotel_locations\";b:1;s:27:\"manage_hotel_location_terms\";b:1;s:25:\"edit_hotel_location_terms\";b:1;s:27:\"delete_hotel_location_terms\";b:1;s:27:\"assign_hotel_location_terms\";b:1;s:16:\"edit_attachments\";b:1;s:18:\"delete_attachments\";b:1;s:23:\"read_others_attachments\";b:1;s:23:\"edit_others_attachments\";b:1;s:25:\"delete_others_attachments\";b:1;s:23:\"edit_users_higher_level\";b:1;}}s:23:\"awebooking_receptionist\";a:2:{s:4:\"name\";s:18:\"Hotel Receptionist\";s:12:\"capabilities\";a:88:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_awebooking\";b:1;s:15:\"edit_awebooking\";b:1;s:15:\"read_awebooking\";b:1;s:17:\"delete_awebooking\";b:1;s:16:\"edit_awebookings\";b:1;s:23:\"edit_others_awebookings\";b:1;s:19:\"publish_awebookings\";b:1;s:24:\"read_private_awebookings\";b:1;s:18:\"delete_awebookings\";b:1;s:26:\"delete_private_awebookings\";b:1;s:28:\"delete_published_awebookings\";b:1;s:25:\"delete_others_awebookings\";b:1;s:24:\"edit_private_awebookings\";b:1;s:26:\"edit_published_awebookings\";b:1;s:23:\"manage_awebooking_terms\";b:1;s:21:\"edit_awebooking_terms\";b:1;s:23:\"delete_awebooking_terms\";b:1;s:23:\"assign_awebooking_terms\";b:1;s:14:\"edit_room_type\";b:1;s:14:\"read_room_type\";b:1;s:16:\"delete_room_type\";b:1;s:15:\"edit_room_types\";b:1;s:22:\"edit_others_room_types\";b:1;s:18:\"publish_room_types\";b:1;s:23:\"read_private_room_types\";b:1;s:17:\"delete_room_types\";b:1;s:25:\"delete_private_room_types\";b:1;s:27:\"delete_published_room_types\";b:1;s:24:\"delete_others_room_types\";b:1;s:23:\"edit_private_room_types\";b:1;s:25:\"edit_published_room_types\";b:1;s:22:\"manage_room_type_terms\";b:1;s:20:\"edit_room_type_terms\";b:1;s:22:\"delete_room_type_terms\";b:1;s:22:\"assign_room_type_terms\";b:1;s:18:\"edit_hotel_service\";b:1;s:18:\"read_hotel_service\";b:1;s:20:\"delete_hotel_service\";b:1;s:19:\"edit_hotel_services\";b:1;s:26:\"edit_others_hotel_services\";b:1;s:22:\"publish_hotel_services\";b:1;s:27:\"read_private_hotel_services\";b:1;s:21:\"delete_hotel_services\";b:1;s:29:\"delete_private_hotel_services\";b:1;s:31:\"delete_published_hotel_services\";b:1;s:28:\"delete_others_hotel_services\";b:1;s:27:\"edit_private_hotel_services\";b:1;s:29:\"edit_published_hotel_services\";b:1;s:26:\"manage_hotel_service_terms\";b:1;s:24:\"edit_hotel_service_terms\";b:1;s:26:\"delete_hotel_service_terms\";b:1;s:26:\"assign_hotel_service_terms\";b:1;s:19:\"edit_hotel_location\";b:1;s:19:\"read_hotel_location\";b:1;s:21:\"delete_hotel_location\";b:1;s:20:\"edit_hotel_locations\";b:1;s:27:\"edit_others_hotel_locations\";b:1;s:23:\"publish_hotel_locations\";b:1;s:28:\"read_private_hotel_locations\";b:1;s:22:\"delete_hotel_locations\";b:1;s:30:\"delete_private_hotel_locations\";b:1;s:32:\"delete_published_hotel_locations\";b:1;s:29:\"delete_others_hotel_locations\";b:1;s:28:\"edit_private_hotel_locations\";b:1;s:30:\"edit_published_hotel_locations\";b:1;s:27:\"manage_hotel_location_terms\";b:1;s:25:\"edit_hotel_location_terms\";b:1;s:27:\"delete_hotel_location_terms\";b:1;s:27:\"assign_hotel_location_terms\";b:1;}}s:13:\"bbp_keymaster\";a:2:{s:4:\"name\";s:9:\"Keymaster\";s:12:\"capabilities\";a:0:{}}s:13:\"bbp_moderator\";a:2:{s:4:\"name\";s:9:\"Moderator\";s:12:\"capabilities\";a:0:{}}s:15:\"bbp_participant\";a:2:{s:4:\"name\";s:11:\"Participant\";s:12:\"capabilities\";a:0:{}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:97:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:16:\"edit_attachments\";b:1;s:18:\"delete_attachments\";b:1;s:23:\"read_others_attachments\";b:1;s:23:\"edit_others_attachments\";b:1;s:25:\"delete_others_attachments\";b:1;}}s:13:\"bbp_spectator\";a:2:{s:4:\"name\";s:9:\"Spectator\";s:12:\"capabilities\";a:0:{}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:18:\"wp-travel-customer\";a:2:{s:4:\"name\";s:18:\"WP Travel Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:5:\"milon\";a:2:{s:4:\"name\";s:5:\"milon\";s:12:\"capabilities\";a:18:{s:12:\"create_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:12:\"delete_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:10:\"edit_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:18:\"read_private_posts\";b:1;s:12:\"upload_files\";b:1;s:16:\"edit_attachments\";b:1;s:18:\"delete_attachments\";b:1;s:23:\"read_others_attachments\";b:1;s:23:\"edit_others_attachments\";b:1;s:25:\"delete_others_attachments\";b:1;}}s:6:\"taibur\";a:2:{s:4:\"name\";s:6:\"taibur\";s:12:\"capabilities\";a:19:{s:12:\"create_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:12:\"delete_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:10:\"edit_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:12:\"edit_product\";b:1;s:20:\"edit_published_posts\";b:1;s:16:\"edit_shop_coupon\";b:1;s:15:\"edit_shop_order\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:18:\"read_private_posts\";b:1;s:12:\"read_product\";b:1;s:16:\"read_shop_coupon\";b:1;s:15:\"read_shop_order\";b:1;s:12:\"capabilities\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:9:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:6:\"meta-2\";}s:7:\"footer1\";a:0:{}s:7:\"footer2\";a:0:{}s:7:\"footer3\";a:0:{}s:7:\"footer4\";a:1:{i:0;s:12:\"categories-2\";}s:18:\"footerbottom-right\";a:0:{}s:12:\"page_sidebar\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:12:{i:1611582286;a:1:{s:29:\"wp_session_garbage_collection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1611582400;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1611584361;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1611590486;a:1:{s:35:\"site-reviews/schedule/session/purge\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1611595161;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1611596251;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1611601034;a:1:{s:24:\"akismet_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1611619200;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1611639521;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1611639999;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1611659961;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1550564502;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(123, 'can_compress_scripts', '1', 'no'),
(144, 'current_theme', 'venox', 'yes'),
(145, 'theme_mods_twentyseventeen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:3:\"top\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1557979090;s:4:\"data\";a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:25:\"wp-travel-archive-sidebar\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(146, 'theme_switched', '', 'yes'),
(149, 'theme_mods_twentysixteen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1559503883;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(151, 'theme_mods_hazproject', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:9:\"main_menu\";i:2;s:6:\"menu-1\";i:2;s:11:\"footer_menu\";i:204;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1560702394;s:4:\"data\";a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:6:\"meta-2\";}s:7:\"footer1\";a:0:{}s:7:\"footer2\";a:0:{}s:7:\"footer3\";a:0:{}s:7:\"footer4\";a:1:{i:0;s:12:\"categories-2\";}s:18:\"footerbottom-right\";a:0:{}s:12:\"page_sidebar\";a:0:{}}}s:10:\"redux_demo\";a:1:{s:4:\"logo\";a:5:{s:3:\"url\";s:103:\"https://technovicinity.com/development/wordpress/milon/travel/wp-content/uploads/2019/02/logo-white.png\";s:2:\"id\";s:2:\"37\";s:6:\"height\";s:2:\"20\";s:5:\"width\";s:2:\"95\";s:9:\"thumbnail\";s:0:\"\";}}}', 'yes'),
(153, 'redux_version_upgraded_from', '3.6.5', 'yes'),
(157, 'r_notice_data', '{\"type\":\"redux-message\",\"title\":\"<strong>Redux v4 Beta:  We Need Your Help!<\\/strong><br\\/>\\r\\n\\r\\n\",\"message\":\"The long in-development Redux v4 Beta is nearing completion and we could really use your help!  To learn how to do so, please read our latest blog post: <a href=\\\"https:\\/\\/reduxframework.com\\/2018\\/11\\/redux-4-0-we-need-your-help\\/\\\">Redux 4.0 - We Need Your Help!<\\/a>\",\"color\":\"rgba(0,162,227,1)\"}\n', 'yes'),
(158, 'redux_blast', '1550567399', 'yes'),
(159, 'acf_version', '4.4.12', 'yes'),
(160, 'redux_demo', 'a:1:{s:4:\"logo\";a:5:{s:3:\"url\";s:103:\"https://technovicinity.com/development/wordpress/milon/travel/wp-content/uploads/2019/02/logo-white.png\";s:2:\"id\";s:2:\"37\";s:6:\"height\";s:2:\"20\";s:5:\"width\";s:2:\"95\";s:9:\"thumbnail\";s:0:\"\";}}', 'yes'),
(161, 'redux_demo-transients', 'a:2:{s:14:\"changed_values\";a:0:{}s:9:\"last_save\";i:1569339456;}', 'yes'),
(162, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(259, 'Airline company_children', 'a:0:{}', 'yes'),
(278, 'Room Type_children', 'a:0:{}', 'yes'),
(283, 'recently_activated', 'a:2:{s:25:\"wp-user-frontend/wpuf.php\";i:1572103812;s:33:\"wp-user-frontend-pro/wpuf-pro.php\";i:1572103812;}', 'yes'),
(306, 'Expert Rating_children', 'a:0:{}', 'yes'),
(310, 'Room Facilities_children', 'a:0:{}', 'yes'),
(314, 'Promotions_children', 'a:0:{}', 'yes'),
(339, 'Package Class_children', 'a:0:{}', 'yes'),
(431, 'RoomType_children', 'a:0:{}', 'yes'),
(439, 'Location_children', 'a:0:{}', 'yes'),
(442, 'Hotel Name_children', 'a:0:{}', 'yes'),
(445, 'Price Range_children', 'a:0:{}', 'yes'),
(449, 'No of Days_children', 'a:0:{}', 'yes'),
(503, 'HotelName_children', 'a:0:{}', 'yes'),
(506, 'PriceRange_children', 'a:0:{}', 'yes'),
(508, 'RoomFacilities_children', 'a:0:{}', 'yes'),
(513, 'NoofDays_children', 'a:0:{}', 'yes'),
(518, 'PackageClass_children', 'a:0:{}', 'yes'),
(575, 'woocommerce_store_address', 'Mirpur', 'yes'),
(576, 'woocommerce_store_address_2', 'Kalshi road', 'yes'),
(577, 'woocommerce_store_city', 'Dhaka', 'yes'),
(578, 'woocommerce_default_country', 'AX', 'yes'),
(579, 'woocommerce_store_postcode', '1216', 'yes'),
(580, 'woocommerce_allowed_countries', 'all', 'yes'),
(581, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(582, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(583, 'woocommerce_ship_to_countries', '', 'yes'),
(584, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(585, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(586, 'woocommerce_calc_taxes', 'no', 'yes'),
(587, 'woocommerce_currency', 'BDT', 'yes'),
(588, 'woocommerce_currency_pos', 'left', 'yes'),
(589, 'woocommerce_price_thousand_sep', ',', 'yes'),
(590, 'woocommerce_price_decimal_sep', '.', 'yes'),
(591, 'woocommerce_price_num_decimals', '2', 'yes'),
(592, 'woocommerce_shop_page_id', '197', 'yes'),
(593, 'woocommerce_cart_redirect_after_add', 'yes', 'yes'),
(594, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(595, 'woocommerce_weight_unit', 'kg', 'yes'),
(596, 'woocommerce_dimension_unit', 'in', 'yes'),
(597, 'woocommerce_enable_reviews', 'yes', 'yes'),
(598, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(599, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(600, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(601, 'woocommerce_review_rating_required', 'yes', 'no'),
(602, 'woocommerce_manage_stock', 'yes', 'yes'),
(603, 'woocommerce_hold_stock_minutes', '60', 'no'),
(604, 'woocommerce_notify_low_stock', 'yes', 'no'),
(605, 'woocommerce_notify_no_stock', 'yes', 'no'),
(606, 'woocommerce_stock_email_recipient', 'admin@gmail.com', 'no'),
(607, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(608, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(609, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(610, 'woocommerce_stock_format', '', 'yes'),
(611, 'woocommerce_file_download_method', 'xsendfile', 'no'),
(612, 'woocommerce_downloads_require_login', 'no', 'no'),
(613, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(614, 'woocommerce_prices_include_tax', 'no', 'yes'),
(615, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(616, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(617, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(618, 'woocommerce_tax_classes', 'Reduced rate\r\nZero rate', 'yes'),
(619, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(620, 'woocommerce_tax_display_cart', 'excl', 'no'),
(621, 'woocommerce_price_display_suffix', '', 'yes'),
(622, 'woocommerce_tax_total_display', 'itemized', 'no'),
(623, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(624, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(625, 'woocommerce_ship_to_destination', 'billing', 'no'),
(626, 'woocommerce_shipping_debug_mode', 'no', 'no'),
(627, 'woocommerce_enable_coupons', 'yes', 'yes'),
(628, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(629, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(630, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(631, 'woocommerce_unforce_ssl_checkout', 'yes', 'yes'),
(632, 'woocommerce_cart_page_id', '198', 'yes'),
(633, 'woocommerce_checkout_page_id', '290', 'yes'),
(634, 'woocommerce_terms_page_id', '198', 'no'),
(635, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(636, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(637, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(638, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(639, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(640, 'woocommerce_myaccount_page_id', '197', 'yes'),
(641, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(642, 'woocommerce_enable_myaccount_registration', 'yes', 'no'),
(643, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(644, 'woocommerce_registration_generate_username', 'yes', 'no'),
(645, 'woocommerce_registration_generate_password', 'yes', 'no'),
(646, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(647, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(648, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(649, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(650, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(651, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(652, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(653, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(654, 'woocommerce_email_from_name', 'projct new development', 'no'),
(655, 'woocommerce_email_from_address', 'admin@gmail.com', 'no'),
(656, 'woocommerce_email_header_image', '', 'no'),
(657, 'woocommerce_email_footer_text', '{site_title}', 'no'),
(658, 'woocommerce_email_base_color', '#96588a', 'no'),
(659, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(660, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(661, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(662, 'woocommerce_api_enabled', 'yes', 'yes'),
(663, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(664, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(665, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(668, 'default_product_cat', '73', 'yes'),
(673, 'woocommerce_admin_notices', 'a:1:{i:0;s:20:\"no_secure_connection\";}', 'yes'),
(674, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(675, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(676, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(677, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(678, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(679, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(680, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(681, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(682, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(683, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(684, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(685, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(686, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(689, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(690, 'woocommerce_product_type', 'both', 'yes'),
(691, 'woocommerce_allow_tracking', 'yes', 'yes'),
(692, 'woocommerce_tracker_last_send', '1554204060', 'yes'),
(693, 'woocommerce_ppec_paypal_settings', 'a:2:{s:16:\"reroute_requests\";b:0;s:5:\"email\";b:0;}', 'yes'),
(694, 'woocommerce_cheque_settings', 'a:4:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:14:\"Check payments\";s:11:\"description\";s:98:\"Please send a check to Store Name, Store Street, Store Town, Store State / County, Store Postcode.\";s:12:\"instructions\";s:0:\"\";}', 'yes'),
(695, 'woocommerce_bacs_settings', 'a:1:{s:7:\"enabled\";s:3:\"yes\";}', 'yes'),
(696, 'woocommerce_cod_settings', 'a:1:{s:7:\"enabled\";s:3:\"yes\";}', 'yes'),
(698, '_transient_shipping-transient-version', '1551549411', 'yes'),
(705, 'theme_mods_storefront', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:2;s:9:\"secondary\";i:204;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1559503859;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}}', 'yes'),
(706, 'storefront_nux_fresh_site', '0', 'yes'),
(707, 'woocommerce_catalog_rows', '3', 'yes'),
(708, 'woocommerce_catalog_columns', '4', 'yes'),
(709, 'woocommerce_maybe_regenerate_images_hash', 'f261099d5ac7c38b838790cc120ec5ff', 'yes'),
(725, '_transient_product_query-transient-version', '1554372095', 'yes'),
(730, 'storefront_nux_dismissed', '1', 'yes'),
(731, 'storefront_nux_guided_tour', '1', 'yes'),
(739, '_transient_product-transient-version', '1554372095', 'yes'),
(815, '_transient_orders-transient-version', '1551470204', 'yes'),
(820, 'woocommerce_tracker_ua', 'a:9:{i:0;s:77:\"mozilla/5.0 (windows nt 6.1; win64; x64; rv:65.0) gecko/20100101 firefox/65.0\";i:1;s:73:\"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:66.0) Gecko/20100101 Firefox/66.0\";i:2;s:77:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0\";i:3;s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36\";i:4;s:73:\"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:67.0) Gecko/20100101 Firefox/67.0\";i:5;s:77:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0\";i:6;s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36\";i:7;s:113:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36\";i:8;s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36\";}', 'yes'),
(844, '_transient_wc_attribute_taxonomies', 'a:1:{i:0;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"1\";s:14:\"attribute_name\";s:6:\"gfdgfd\";s:15:\"attribute_label\";s:6:\"gdfgfd\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}}', 'yes'),
(856, 'product_cat_children', 'a:0:{}', 'yes'),
(901, 'bbpress_shortcodes', 'a:1:{s:24:\"bbpress_shortcodes_posts\";a:9:{s:4:\"post\";s:4:\"post\";s:4:\"page\";s:4:\"page\";s:10:\"attachment\";s:10:\"attachment\";s:7:\"product\";s:7:\"product\";s:5:\"umrah\";s:5:\"umrah\";s:4:\"cars\";s:4:\"cars\";s:5:\"tours\";s:5:\"tours\";s:6:\"rental\";s:6:\"rental\";s:7:\"flights\";s:7:\"flights\";}}', 'yes'),
(902, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.0.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1551523045;s:7:\"version\";s:5:\"5.0.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(905, 'user_role_editor', 'a:8:{s:11:\"ure_version\";s:6:\"4.50.2\";s:19:\"ure_hide_pro_banner\";i:1;s:15:\"show_admin_role\";i:0;s:17:\"ure_caps_readable\";i:0;s:24:\"ure_show_deprecated_caps\";i:0;s:23:\"ure_confirm_role_update\";s:1:\"1\";s:14:\"edit_user_caps\";s:1:\"1\";s:18:\"caps_columns_quant\";i:1;}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(906, 'wp_backup_user_roles', 'a:12:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:13:\"bbp_keymaster\";a:2:{s:4:\"name\";s:9:\"Keymaster\";s:12:\"capabilities\";a:29:{s:9:\"keep_gate\";b:1;s:8:\"spectate\";b:1;s:11:\"participate\";b:1;s:8:\"moderate\";b:1;s:8:\"throttle\";b:1;s:10:\"view_trash\";b:1;s:14:\"publish_forums\";b:1;s:11:\"edit_forums\";b:1;s:18:\"edit_others_forums\";b:1;s:13:\"delete_forums\";b:1;s:20:\"delete_others_forums\";b:1;s:19:\"read_private_forums\";b:1;s:18:\"read_hidden_forums\";b:1;s:14:\"publish_topics\";b:1;s:11:\"edit_topics\";b:1;s:18:\"edit_others_topics\";b:1;s:13:\"delete_topics\";b:1;s:20:\"delete_others_topics\";b:1;s:19:\"read_private_topics\";b:1;s:15:\"publish_replies\";b:1;s:12:\"edit_replies\";b:1;s:19:\"edit_others_replies\";b:1;s:14:\"delete_replies\";b:1;s:21:\"delete_others_replies\";b:1;s:20:\"read_private_replies\";b:1;s:17:\"manage_topic_tags\";b:1;s:15:\"edit_topic_tags\";b:1;s:17:\"delete_topic_tags\";b:1;s:17:\"assign_topic_tags\";b:1;}}s:13:\"bbp_moderator\";a:2:{s:4:\"name\";s:9:\"Moderator\";s:12:\"capabilities\";a:25:{s:8:\"spectate\";b:1;s:11:\"participate\";b:1;s:8:\"moderate\";b:1;s:8:\"throttle\";b:1;s:10:\"view_trash\";b:1;s:14:\"publish_forums\";b:1;s:11:\"edit_forums\";b:1;s:19:\"read_private_forums\";b:1;s:18:\"read_hidden_forums\";b:1;s:14:\"publish_topics\";b:1;s:11:\"edit_topics\";b:1;s:18:\"edit_others_topics\";b:1;s:13:\"delete_topics\";b:1;s:20:\"delete_others_topics\";b:1;s:19:\"read_private_topics\";b:1;s:15:\"publish_replies\";b:1;s:12:\"edit_replies\";b:1;s:19:\"edit_others_replies\";b:1;s:14:\"delete_replies\";b:1;s:21:\"delete_others_replies\";b:1;s:20:\"read_private_replies\";b:1;s:17:\"manage_topic_tags\";b:1;s:15:\"edit_topic_tags\";b:1;s:17:\"delete_topic_tags\";b:1;s:17:\"assign_topic_tags\";b:1;}}s:15:\"bbp_participant\";a:2:{s:4:\"name\";s:11:\"Participant\";s:12:\"capabilities\";a:8:{s:8:\"spectate\";b:1;s:11:\"participate\";b:1;s:19:\"read_private_forums\";b:1;s:14:\"publish_topics\";b:1;s:11:\"edit_topics\";b:1;s:15:\"publish_replies\";b:1;s:12:\"edit_replies\";b:1;s:17:\"assign_topic_tags\";b:1;}}s:13:\"bbp_spectator\";a:2:{s:4:\"name\";s:9:\"Spectator\";s:12:\"capabilities\";a:1:{s:8:\"spectate\";b:1;}}s:11:\"bbp_blocked\";a:2:{s:4:\"name\";s:7:\"Blocked\";s:12:\"capabilities\";a:28:{s:8:\"spectate\";b:0;s:11:\"participate\";b:0;s:8:\"moderate\";b:0;s:8:\"throttle\";b:0;s:10:\"view_trash\";b:0;s:14:\"publish_forums\";b:0;s:11:\"edit_forums\";b:0;s:18:\"edit_others_forums\";b:0;s:13:\"delete_forums\";b:0;s:20:\"delete_others_forums\";b:0;s:19:\"read_private_forums\";b:0;s:18:\"read_hidden_forums\";b:0;s:14:\"publish_topics\";b:0;s:11:\"edit_topics\";b:0;s:18:\"edit_others_topics\";b:0;s:13:\"delete_topics\";b:0;s:20:\"delete_others_topics\";b:0;s:19:\"read_private_topics\";b:0;s:15:\"publish_replies\";b:0;s:12:\"edit_replies\";b:0;s:19:\"edit_others_replies\";b:0;s:14:\"delete_replies\";b:0;s:21:\"delete_others_replies\";b:0;s:20:\"read_private_replies\";b:0;s:17:\"manage_topic_tags\";b:0;s:15:\"edit_topic_tags\";b:0;s:17:\"delete_topic_tags\";b:0;s:17:\"assign_topic_tags\";b:0;}}}', 'no'),
(907, 'ure_tasks_queue', 'a:0:{}', 'yes'),
(908, 'wsl_settings_welcome_panel_enabled', '1', 'yes'),
(909, 'wsl_settings_redirect_url', 'http://localhost/project', 'yes'),
(910, 'wsl_settings_force_redirect_url', '2', 'yes'),
(911, 'wsl_settings_connect_with_label', 'Connect with:', 'yes'),
(912, 'wsl_settings_users_avatars', '1', 'yes'),
(913, 'wsl_settings_use_popup', '2', 'yes'),
(914, 'wsl_settings_widget_display', '1', 'yes'),
(915, 'wsl_settings_authentication_widget_css', '.wp-social-login-connect-with {}\n.wp-social-login-provider-list {}\n.wp-social-login-provider-list a {}\n.wp-social-login-provider-list img {}\n.wsl_connect_with_provider {}', 'yes'),
(916, 'wsl_settings_bouncer_registration_enabled', '1', 'yes'),
(917, 'wsl_settings_bouncer_authentication_enabled', '1', 'yes'),
(918, 'wsl_settings_bouncer_accounts_linking_enabled', '1', 'yes'),
(919, 'wsl_settings_bouncer_profile_completion_require_email', '2', 'yes'),
(920, 'wsl_settings_bouncer_profile_completion_change_username', '2', 'yes'),
(921, 'wsl_settings_bouncer_profile_completion_hook_extra_fields', '2', 'yes'),
(922, 'wsl_settings_bouncer_new_users_moderation_level', '1', 'yes'),
(923, 'wsl_settings_bouncer_new_users_membership_default_role', 'default', 'yes'),
(924, 'wsl_settings_bouncer_new_users_restrict_domain_enabled', '2', 'yes'),
(925, 'wsl_settings_bouncer_new_users_restrict_domain_text_bounce', '<strong>This website is restricted to invited readers only.</strong><p>It doesn\'t look like you have been invited to access this site. If you think this is a mistake, you might want to contact the website owner and request an invitation.<p>', 'yes'),
(926, 'wsl_settings_bouncer_new_users_restrict_email_enabled', '2', 'yes'),
(927, 'wsl_settings_bouncer_new_users_restrict_email_text_bounce', '<strong>This website is restricted to invited readers only.</strong><p>It doesn\'t look like you have been invited to access this site. If you think this is a mistake, you might want to contact the website owner and request an invitation.<p>', 'yes'),
(928, 'wsl_settings_bouncer_new_users_restrict_profile_enabled', '2', 'yes'),
(929, 'wsl_settings_bouncer_new_users_restrict_profile_text_bounce', '<strong>This website is restricted to invited readers only.</strong><p>It doesn\'t look like you have been invited to access this site. If you think this is a mistake, you might want to contact the website owner and request an invitation.<p>', 'yes'),
(930, 'wsl_settings_contacts_import_facebook', '2', 'yes'),
(931, 'wsl_settings_contacts_import_google', '2', 'yes'),
(932, 'wsl_settings_contacts_import_twitter', '2', 'yes'),
(933, 'wsl_settings_contacts_import_live', '2', 'yes'),
(934, 'wsl_settings_contacts_import_linkedin', '2', 'yes'),
(935, 'wsl_settings_buddypress_enable_mapping', '2', 'yes'),
(936, 'wsl_settings_buddypress_xprofile_map', '', 'yes'),
(937, 'wsl_settings_Facebook_enabled', '1', 'yes'),
(938, 'wsl_settings_Google_enabled', '1', 'yes'),
(939, 'wsl_settings_Twitter_enabled', '1', 'yes'),
(940, 'wsl_components_core_enabled', '1', 'yes'),
(941, 'wsl_components_networks_enabled', '1', 'yes'),
(942, 'wsl_components_login-widget_enabled', '1', 'yes'),
(943, 'wsl_components_bouncer_enabled', '1', 'yes'),
(944, 'wplc_db_version', '8.0.07', 'yes'),
(945, 'WPLC_SETTINGS', 'a:46:{s:19:\"wplc_settings_align\";s:1:\"2\";s:21:\"wplc_settings_enabled\";s:1:\"1\";s:20:\"wplc_powered_by_link\";s:1:\"0\";s:18:\"wplc_settings_fill\";s:6:\"ed832f\";s:18:\"wplc_settings_font\";s:6:\"FFFFFF\";s:20:\"wplc_settings_color1\";s:6:\"ED832F\";s:20:\"wplc_settings_color2\";s:6:\"FFFFFF\";s:20:\"wplc_settings_color3\";s:6:\"EEEEEE\";s:20:\"wplc_settings_color4\";s:6:\"666666\";s:10:\"wplc_theme\";s:13:\"theme-default\";s:13:\"wplc_newtheme\";s:7:\"theme-2\";s:22:\"wplc_require_user_info\";s:1:\"1\";s:23:\"wplc_loggedin_user_info\";s:1:\"1\";s:26:\"wplc_user_alternative_text\";s:60:\"Please click \\\'Start Chat\\\' to initiate a chat with an agent\";s:30:\"wplc_user_default_visitor_name\";s:5:\"Guest\";s:22:\"wplc_enabled_on_mobile\";s:1:\"1\";s:17:\"wplc_display_name\";s:1:\"1\";s:22:\"wplc_record_ip_address\";s:1:\"1\";s:27:\"wplc_pro_chat_email_address\";s:15:\"admin@gmail.com\";s:13:\"wplc_pro_fst1\";s:10:\"Questions?\";s:13:\"wplc_pro_fst2\";s:12:\"Chat with us\";s:13:\"wplc_pro_fst3\";s:15:\"Start live chat\";s:13:\"wplc_pro_sst1\";s:10:\"Start Chat\";s:20:\"wplc_pro_sst1_survey\";s:23:\"Or chat to an agent now\";s:21:\"wplc_pro_sst1e_survey\";s:10:\"Chat ended\";s:13:\"wplc_pro_sst2\";s:32:\"Connecting. Please be patient...\";s:13:\"wplc_pro_tst1\";s:34:\"Reactivating your previous chat...\";s:11:\"wplc_pro_na\";s:29:\"Chat offline. Leave a message\";s:14:\"wplc_pro_intro\";s:56:\"Hello. Please input your details so that I may help you.\";s:17:\"wplc_pro_offline1\";s:83:\"We are currently offline. Please leave a message and we\'ll get back to you shortly.\";s:17:\"wplc_pro_offline2\";s:18:\"Sending message...\";s:17:\"wplc_pro_offline3\";s:55:\"Thank you for your message. We will be in contact soon.\";s:20:\"wplc_pro_offline_btn\";s:15:\"Leave a message\";s:25:\"wplc_pro_offline_btn_send\";s:12:\"Send message\";s:15:\"wplc_user_enter\";s:32:\"Press ENTER to send your message\";s:20:\"wplc_text_chat_ended\";s:40:\"The chat has been ended by the operator.\";s:19:\"wplc_close_btn_text\";s:5:\"close\";s:22:\"wplc_user_welcome_chat\";s:28:\"Welcome. How may I help you?\";s:16:\"wplc_welcome_msg\";s:84:\"Please standby for an agent. While you wait for the agent you may type your message.\";s:20:\"wplc_use_node_server\";i:1;s:27:\"wplc_preferred_gif_provider\";i:1;s:18:\"wplc_giphy_api_key\";s:0:\"\";s:18:\"wplc_tenor_api_key\";s:0:\"\";s:21:\"wplc_enable_msg_sound\";s:1:\"1\";s:24:\"wplc_enable_font_awesome\";s:1:\"1\";s:30:\"wplc_using_localization_plugin\";i:0;}', 'yes'),
(946, 'WPLC_HIDE_CHAT', 'true', 'yes'),
(947, 'wplc_api_secret_token', '77cc6f8f99fef0defadaae7decebbaa8', 'yes'),
(948, 'wplc_node_server_secret_token', '00b415b34f1464d577954ed94ddc5b1f', 'yes'),
(949, 'wpuf_installed', '1551523053', 'yes'),
(953, 'wpuf_version', '2.8.7', 'yes'),
(956, 'widget_akismet_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(957, 'widget_bbp_login_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(958, 'widget_bbp_views_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(959, 'widget_bbp_search_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(960, 'widget_bbp_forums_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(961, 'widget_bbp_topics_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(962, 'widget_bbp_replies_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(963, 'widget_bbp_stats_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(964, 'widget_wpuf_login_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(965, 'widget_mc4wp_form_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(966, 'vc_version', '5.4.7', 'yes'),
(968, 'WPLC_V8_FIRST_TIME', '1', 'yes'),
(969, 'wplc_current_version', '8.0.07', 'yes'),
(970, 'WPLC_ET_SETTINGS', 'a:6:{s:23:\"wplc_enable_transcripts\";i:1;s:24:\"wplc_send_transcripts_to\";s:4:\"user\";s:36:\"wplc_send_transcripts_when_chat_ends\";i:0;s:18:\"wplc_et_email_body\";s:2090:\"\n<!DOCTYPE HTML PUBLIC \\\"-//W3C//DTD HTML 4.01 Transitional//EN\\\" \\\"http://www.w3.org/TR/html4/loose.dtd\\\">		\n	<html>\n	\n	<body>\n\n\n\n		<table id=\"\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"background-color: #ec822c;\">\n	    <tbody>\n	      <tr>\n	        <td width=\"100%\" style=\"padding: 30px 20px 100px 20px;\">\n	          <table align=\"center\" cellpadding=\"0\" cellspacing=\"0\" class=\"\" width=\"100%\" style=\"border-collapse: separate; max-width:600px;\">\n	            <tbody>\n	              <tr>\n	                <td style=\"text-align: center; padding-bottom: 20px;\">\n	                  \n	                  <p>[wplc_et_transcript_header_text]</p>\n	                </td>\n	              </tr>\n	            </tbody>\n	          </table>\n\n	          <table id=\"\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" class=\"\" width=\"100%\" style=\"border-collapse: separate; max-width: 600px; font-family: Georgia, serif; font-size: 12px; color: rgb(51, 62, 72); border: 0px solid rgb(255, 255, 255); border-radius: 10px; background-color: rgb(255, 255, 255);\">\n	          <tbody>\n	              <tr>\n	                <td class=\"sortable-list ui-sortable\" style=\"padding:20px;\">\n	                    [wplc_et_transcript]\n	                </td>\n	              </tr>\n	            </tbody>\n	          </table>\n\n	          <table align=\"center\" cellpadding=\"0\" cellspacing=\"0\" class=\"\" width=\"100%\" style=\"border-collapse: separate; max-width:100%;\">\n	            <tbody>\n	              <tr>\n	                <td style=\"padding:20px;\">\n	                  <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"\" width=\"100%\">\n	                    <tbody>\n	                      <tr>\n	                        <td id=\"\" align=\"center\">\n	                         <p>[wplc_et_transcript_footer_text]</p>\n	                        </td>\n	                      </tr>\n	                    </tbody>\n	                  </table>\n	                </td>\n	              </tr>\n	            </tbody>\n	          </table>\n	        </td>\n	      </tr>\n	    </tbody>\n	  </table>\n\n\n		\n		</div>\n	</body>\n</html>\n			\";s:20:\"wplc_et_email_header\";s:220:\"<a title=\"projct new development\" href=\"http://localhost/project\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #FFF; font-weight: bold; text-decoration: underline;\">projct new development</a>\";s:20:\"wplc_et_email_footer\";s:372:\"<span style=\'font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #FFF; font-weight: normal;\'>Thank you for chatting with us. If you have any questions, please <a href=\"mailto:admin@gmail.com\" target=\"_blank\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #FFF; font-weight: bold; text-decoration: underline;\">contact us</a></span>\";}', 'yes'),
(971, 'WPLC_ET_FIRST_RUN', '1', 'yes'),
(973, 'wpuf_expiry_posts_last_cleaned', 'October 26, 2019 1:30 pm', 'yes'),
(974, 'option_tree_settings', 'a:2:{s:8:\"sections\";a:1:{i:0;a:2:{s:2:\"id\";s:7:\"general\";s:5:\"title\";s:7:\"General\";}}s:8:\"settings\";a:1:{i:0;a:10:{s:2:\"id\";s:11:\"sample_text\";s:5:\"label\";s:23:\"Sample Text Field Label\";s:4:\"desc\";s:38:\"Description for the sample text field.\";s:7:\"section\";s:7:\"general\";s:4:\"type\";s:4:\"text\";s:3:\"std\";s:0:\"\";s:5:\"class\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:7:\"choices\";a:0:{}}}}', 'yes'),
(975, '_bbp_private_forums', 'a:0:{}', 'yes'),
(976, '_bbp_hidden_forums', 'a:0:{}', 'yes'),
(977, '_bbp_db_version', '250', 'yes'),
(978, 'duplicate_post_copytitle', '1', 'yes'),
(979, 'duplicate_post_copydate', '0', 'yes'),
(980, 'duplicate_post_copystatus', '0', 'yes'),
(981, 'duplicate_post_copyslug', '0', 'yes'),
(982, 'duplicate_post_copyexcerpt', '1', 'yes'),
(983, 'duplicate_post_copycontent', '1', 'yes'),
(984, 'duplicate_post_copythumbnail', '1', 'yes'),
(985, 'duplicate_post_copytemplate', '1', 'yes'),
(986, 'duplicate_post_copyformat', '1', 'yes'),
(987, 'duplicate_post_copyauthor', '0', 'yes'),
(988, 'duplicate_post_copypassword', '0', 'yes'),
(989, 'duplicate_post_copyattachments', '0', 'yes'),
(990, 'duplicate_post_copychildren', '0', 'yes'),
(991, 'duplicate_post_copycomments', '0', 'yes'),
(992, 'duplicate_post_copymenuorder', '1', 'yes'),
(993, 'duplicate_post_taxonomies_blacklist', 'a:0:{}', 'yes'),
(994, 'duplicate_post_blacklist', '', 'yes'),
(995, 'duplicate_post_types_enabled', 'a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}', 'yes'),
(996, 'duplicate_post_show_row', '1', 'yes'),
(997, 'duplicate_post_show_adminbar', '1', 'yes'),
(998, 'duplicate_post_show_submitbox', '1', 'yes'),
(999, 'duplicate_post_show_bulkactions', '1', 'yes'),
(1000, 'duplicate_post_version', '3.2.2', 'yes'),
(1001, 'duplicate_post_show_notice', '0', 'no'),
(1002, 'mc4wp_version', '4.2.1', 'yes'),
(1003, 'wpuf_general', 'a:9:{s:14:\"show_admin_bar\";a:1:{i:0;s:6:\"taibur\";}s:12:\"admin_access\";s:4:\"read\";s:17:\"override_editlink\";s:2:\"no\";s:22:\"wpuf_compatibility_acf\";s:2:\"no\";s:11:\"load_script\";s:2:\"on\";s:16:\"recaptcha_public\";s:0:\"\";s:17:\"recaptcha_private\";s:0:\"\";s:10:\"custom_css\";s:0:\"\";s:18:\"install_wpuf_pages\";s:2:\"on\";}', 'yes'),
(1004, 'wpuf_frontend_posting', 'a:2:{s:12:\"edit_page_id\";i:523;s:17:\"default_post_form\";i:525;}', 'yes'),
(1005, 'wpuf_dashboard', 'a:9:{s:16:\"enable_post_edit\";s:3:\"yes\";s:15:\"enable_post_del\";s:3:\"yes\";s:20:\"disable_pending_edit\";s:2:\"on\";s:8:\"per_page\";s:2:\"10\";s:13:\"show_user_bio\";s:2:\"on\";s:15:\"show_post_count\";s:2:\"on\";s:13:\"show_ft_image\";s:2:\"on\";s:11:\"ft_img_size\";s:9:\"thumbnail\";s:11:\"un_auth_msg\";s:0:\"\";}', 'yes'),
(1006, 'wpuf_my_account', 'a:3:{s:12:\"account_page\";s:3:\"511\";s:18:\"show_subscriptions\";s:2:\"on\";s:20:\"show_billing_address\";s:2:\"on\";}', 'yes'),
(1007, 'wpuf_profile', 'a:7:{s:28:\"autologin_after_registration\";s:2:\"on\";s:22:\"register_link_override\";s:2:\"on\";s:17:\"reg_override_page\";s:3:\"535\";s:10:\"login_page\";s:3:\"524\";s:25:\"redirect_after_login_page\";s:3:\"522\";s:25:\"wp_default_login_redirect\";s:2:\"on\";s:5:\"roles\";a:21:{s:13:\"administrator\";s:0:\"\";s:6:\"author\";s:0:\"\";s:11:\"bbp_blocked\";s:0:\"\";s:19:\"wphb_booking_editor\";s:0:\"\";s:22:\"booking_package_member\";s:0:\"\";s:11:\"contributor\";s:0:\"\";s:8:\"customer\";s:0:\"\";s:6:\"editor\";s:0:\"\";s:19:\"awebooking_customer\";s:0:\"\";s:18:\"wphb_hotel_manager\";s:0:\"\";s:18:\"awebooking_manager\";s:0:\"\";s:23:\"awebooking_receptionist\";s:0:\"\";s:13:\"bbp_keymaster\";s:0:\"\";s:13:\"bbp_moderator\";s:0:\"\";s:15:\"bbp_participant\";s:0:\"\";s:12:\"shop_manager\";s:0:\"\";s:13:\"bbp_spectator\";s:0:\"\";s:10:\"subscriber\";s:0:\"\";s:18:\"wp-travel-customer\";s:0:\"\";s:5:\"milon\";s:3:\"532\";s:6:\"taibur\";s:0:\"\";}}', 'yes'),
(1008, 'wpuf_payment', 'a:4:{s:17:\"subscription_page\";i:528;s:12:\"payment_page\";i:529;s:15:\"payment_success\";i:530;s:12:\"bank_success\";i:531;}', 'yes'),
(1009, 'wpuf_mails', '', 'yes'),
(1010, 'wpuf_payment_invoices', '', 'yes'),
(1011, 'wsl_settings_Facebook_app_scope', 'email, public_profile, user_friends', 'yes'),
(1012, 'wsl_settings_Google_app_scope', 'profile https://www.googleapis.com/auth/plus.profile.emails.read', 'yes'),
(1013, 'wsl_settings_GitHub_app_scope', 'user:email', 'yes'),
(1014, 'option_tree', 'a:1:{s:11:\"sample_text\";s:0:\"\";}', 'yes'),
(1015, 'ot_media_post_ID', '252', 'yes'),
(1016, 'mc4wp_flash_messages', 'a:0:{}', 'no'),
(1040, 'woocommerce_placeholder_image', '', 'yes'),
(1041, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(1042, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(1043, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(1044, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(1045, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(1046, 'woocommerce_trash_pending_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(1047, 'woocommerce_trash_failed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(1048, 'woocommerce_trash_cancelled_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(1049, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(1050, 'woocommerce_single_image_width', '600', 'yes'),
(1051, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(1052, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(1053, 'woocommerce_demo_store', 'no', 'no'),
(1054, 'woocommerce_version', '3.5.5', 'yes'),
(1059, 'rewrite_rules', 'a:154:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:11:\"log-in-2/?$\";s:22:\"index.php?action=login\";s:9:\"logout/?$\";s:23:\"index.php?action=logout\";s:11:\"register/?$\";s:43:\"index.php?action=register&pagename=register\";s:15:\"lostpassword/?$\";s:29:\"index.php?action=lostpassword\";s:12:\"resetpass/?$\";s:26:\"index.php?action=resetpass\";s:16:\"confirmaction/?$\";s:30:\"index.php?action=confirmaction\";s:8:\"umrah/?$\";s:25:\"index.php?post_type=umrah\";s:38:\"umrah/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=umrah&feed=$matches[1]\";s:33:\"umrah/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=umrah&feed=$matches[1]\";s:25:\"umrah/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=umrah&paged=$matches[1]\";s:47:\"taxonomy/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"taxonomy/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"taxonomy/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"taxonomy/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"taxonomy/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:39:\"site-review/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"site-review/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"site-review/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"site-review/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"site-review/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"site-review/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"site-review/([^/]+)/embed/?$\";s:44:\"index.php?site-review=$matches[1]&embed=true\";s:32:\"site-review/([^/]+)/trackback/?$\";s:38:\"index.php?site-review=$matches[1]&tb=1\";s:40:\"site-review/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?site-review=$matches[1]&paged=$matches[2]\";s:47:\"site-review/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?site-review=$matches[1]&cpage=$matches[2]\";s:36:\"site-review/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?site-review=$matches[1]&page=$matches[2]\";s:28:\"site-review/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"site-review/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"site-review/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"site-review/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"site-review/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"site-review/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:61:\"site-review-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?site-review-category=$matches[1]&feed=$matches[2]\";s:56:\"site-review-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?site-review-category=$matches[1]&feed=$matches[2]\";s:37:\"site-review-category/([^/]+)/embed/?$\";s:53:\"index.php?site-review-category=$matches[1]&embed=true\";s:49:\"site-review-category/([^/]+)/page/?([0-9]{1,})/?$\";s:60:\"index.php?site-review-category=$matches[1]&paged=$matches[2]\";s:31:\"site-review-category/([^/]+)/?$\";s:42:\"index.php?site-review-category=$matches[1]\";s:45:\"wppb-roles-editor/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:55:\"wppb-roles-editor/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:75:\"wppb-roles-editor/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"wppb-roles-editor/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"wppb-roles-editor/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:51:\"wppb-roles-editor/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"wppb-roles-editor/([^/]+)/embed/?$\";s:50:\"index.php?wppb-roles-editor=$matches[1]&embed=true\";s:38:\"wppb-roles-editor/([^/]+)/trackback/?$\";s:44:\"index.php?wppb-roles-editor=$matches[1]&tb=1\";s:46:\"wppb-roles-editor/([^/]+)/page/?([0-9]{1,})/?$\";s:57:\"index.php?wppb-roles-editor=$matches[1]&paged=$matches[2]\";s:53:\"wppb-roles-editor/([^/]+)/comment-page-([0-9]{1,})/?$\";s:57:\"index.php?wppb-roles-editor=$matches[1]&cpage=$matches[2]\";s:42:\"wppb-roles-editor/([^/]+)(?:/([0-9]+))?/?$\";s:56:\"index.php?wppb-roles-editor=$matches[1]&page=$matches[2]\";s:34:\"wppb-roles-editor/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"wppb-roles-editor/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"wppb-roles-editor/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"wppb-roles-editor/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"wppb-roles-editor/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"wppb-roles-editor/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:31:\"umrah/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"umrah/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"umrah/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"umrah/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"umrah/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"umrah/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:20:\"umrah/(.+?)/embed/?$\";s:38:\"index.php?umrah=$matches[1]&embed=true\";s:24:\"umrah/(.+?)/trackback/?$\";s:32:\"index.php?umrah=$matches[1]&tb=1\";s:44:\"umrah/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?umrah=$matches[1]&feed=$matches[2]\";s:39:\"umrah/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?umrah=$matches[1]&feed=$matches[2]\";s:32:\"umrah/(.+?)/page/?([0-9]{1,})/?$\";s:45:\"index.php?umrah=$matches[1]&paged=$matches[2]\";s:39:\"umrah/(.+?)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?umrah=$matches[1]&cpage=$matches[2]\";s:28:\"umrah/(.+?)(?:/([0-9]+))?/?$\";s:44:\"index.php?umrah=$matches[1]&page=$matches[2]\";s:46:\"genre/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?package_class=$matches[1]&feed=$matches[2]\";s:41:\"genre/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?package_class=$matches[1]&feed=$matches[2]\";s:22:\"genre/([^/]+)/embed/?$\";s:46:\"index.php?package_class=$matches[1]&embed=true\";s:34:\"genre/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?package_class=$matches[1]&paged=$matches[2]\";s:16:\"genre/([^/]+)/?$\";s:35:\"index.php?package_class=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=9&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(1104, 'package_city_children', 'a:0:{}', 'yes'),
(1110, 'package_class_children', 'a:0:{}', 'yes'),
(1118, 'no_of_days_children', 'a:0:{}', 'yes'),
(1120, 'price_range_children', 'a:0:{}', 'yes'),
(1171, 'woocommerce_db_version', '3.5.5', 'yes'),
(1193, 'woocommerce_free_shipping_1_settings', 'a:3:{s:5:\"title\";s:13:\"Free shipping\";s:8:\"requires\";s:6:\"coupon\";s:10:\"min_amount\";s:1:\"0\";}', 'yes'),
(1194, 'woocommerce_flat_rate_2_settings', 'a:3:{s:5:\"title\";s:9:\"Flat rate\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:3:\"100\";}', 'yes'),
(1201, 'woocommerce_paypal_settings', 'a:23:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:6:\"PayPal\";s:11:\"description\";s:85:\"Pay via PayPal; you can pay with your credit card if you don\'t have a PayPal account.\";s:5:\"email\";s:15:\"admin@gmail.com\";s:8:\"advanced\";s:0:\"\";s:8:\"testmode\";s:2:\"no\";s:5:\"debug\";s:2:\"no\";s:16:\"ipn_notification\";s:3:\"yes\";s:14:\"receiver_email\";s:15:\"admin@gmail.com\";s:14:\"identity_token\";s:0:\"\";s:14:\"invoice_prefix\";s:3:\"WC-\";s:13:\"send_shipping\";s:3:\"yes\";s:16:\"address_override\";s:2:\"no\";s:13:\"paymentaction\";s:4:\"sale\";s:10:\"page_style\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:11:\"api_details\";s:0:\"\";s:12:\"api_username\";s:0:\"\";s:12:\"api_password\";s:0:\"\";s:13:\"api_signature\";s:0:\"\";s:20:\"sandbox_api_username\";s:0:\"\";s:20:\"sandbox_api_password\";s:0:\"\";s:21:\"sandbox_api_signature\";s:0:\"\";}', 'yes'),
(1202, 'woocommerce_gateway_order', 'a:4:{s:4:\"bacs\";i:0;s:6:\"cheque\";i:1;s:3:\"cod\";i:2;s:6:\"paypal\";i:3;}', 'yes'),
(1621, 'Car Category_children', 'a:0:{}', 'yes'),
(1655, 'wpbs_db_version', '1.0', 'yes'),
(1656, 'wpbs-languages', '{\"en\":\"English\"}', 'yes'),
(1657, 'wpbs-options', '{\"selectedColor\":\"#3399cc\",\"selectedBorder\":\"#336699\",\"historyColor\":\"#e823e8\",\"dateFormat\":\"j F Y\"}', 'yes'),
(1658, 'wpbs-default-legend', '{\"default\":{\"name\":{\"default\":\"Available\",\"hr\":\"Slobodno\",\"cs\":\"Volno\",\"da\":\"Ledigt\",\"nl\":\"Vrij\",\"en\":\"Available\",\"fr\":\"Libre\",\"de\":\"Frei\",\"hu\":\"Szabad\",\"it\":\"Libero\",\"ro\":\"Disponobil\",\"ru\":\"\\u0414\\u043e\\u0441\\u0442\\u0443\\u043f\\u043d\\u043e\",\"sk\":\"Vo\\u013en\\u00fd\",\"es\":\"Libre\",\"sv\":\"Ledigt\",\"uk\":\"B\\u0456\\u043b\\u044c\\u043d\\u043e\",\"no\":\"\"},\"color\":\"#DDFFCC\",\"splitColor\":false,\"bookable\":\"yes\"},\"1\":{\"name\":{\"default\":\"Booked\",\"hr\":\"Zauzeto\",\"cs\":\"Obsazeno\",\"da\":\"Booket\",\"nl\":\"Bezet\",\"en\":\"Booked\",\"fr\":\"Occup\\u00e9\",\"de\":\"Belegt\",\"hu\":\"Foglalt\",\"it\":\"Prenotato\",\"ro\":\"Rezervat\",\"ru\":\"\\u0417\\u0430\\u043d\\u044f\\u0442\\u043e\",\"sk\":\"Obsaden\\u00fd\",\"es\":\"Reservado\",\"sv\":\"Bokat\",\"uk\":\"\\u0417\\u0430\\u0439\\u043d\\u044f\\u0442\\u043e\",\"no\":\"\"},\"color\":\"#FFC0BD\",\"splitColor\":false,\"bookable\":false}}', 'yes'),
(1659, 'widget_wpbs_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(2011, 'CarsName_children', 'a:0:{}', 'yes'),
(2015, 'CarsFeatures_children', 'a:0:{}', 'yes'),
(2019, 'CarsLocation_children', 'a:0:{}', 'yes'),
(2058, 'DefaultEquipment_children', 'a:0:{}', 'yes'),
(2349, 'tour_categories_children', 'a:0:{}', 'yes'),
(2665, 'hotel_name_children', 'a:0:{}', 'yes'),
(2752, 'wp_travel_wp-travel-cart_page_id', '354', 'yes'),
(2753, 'wp_travel_wp-travel-checkout_page_id', '355', 'yes'),
(2754, 'wp_travel_wp-travel-dashboard_page_id', '356', 'yes'),
(2755, 'wp_travel_version', '1.8.9', 'yes'),
(2758, 'widget_wp_travel_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(2759, 'widget_wp_travel_featured', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(2760, 'widget_wp_travel_location', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(2761, 'widget_wp_travel_trip_type', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(2762, 'widget_wp_travel_sale_itineraries', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(2763, 'widget_wp_travel_trip_enquiry_form_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(2764, 'widget_wp_travel_filter_search_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2786, 'wp_travel_settings', 'a:38:{s:17:\"myaccount_page_id\";s:0:\"\";s:37:\"enable_checkout_customer_registration\";s:3:\"yes\";s:39:\"enable_my_account_customer_registration\";s:3:\"yes\";s:28:\"generate_username_from_email\";s:3:\"yes\";s:22:\"generate_user_password\";s:3:\"yes\";s:8:\"currency\";s:3:\"USD\";s:13:\"wp_travel_map\";s:10:\"google-map\";s:18:\"google_map_api_key\";s:0:\"\";s:21:\"google_map_zoom_level\";s:2:\"15\";s:22:\"hide_related_itinerary\";s:3:\"yes\";s:26:\"enable_multiple_travellers\";s:3:\"yes\";s:27:\"trip_pricing_options_layout\";s:17:\"by-pricing-option\";s:27:\"send_booking_email_to_admin\";s:3:\"yes\";s:31:\"booking_admin_template_settings\";a:4:{s:13:\"admin_subject\";s:11:\"New Booking\";s:11:\"admin_title\";s:11:\"New Booking\";s:18:\"admin_header_color\";s:7:\"#dd3333\";s:13:\"email_content\";s:6013:\"&nbsp;\r\n<table class=\"wp-travel-wrapper\" style=\"color: #5d5d5d; font-family: Roboto, sans-serif; margin: auto;\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td class=\"wp-travel-content-top\" style=\"background: #fff; box-sizing: border-box; margin: 0; padding: 20px 25px;\" colspan=\"2\" align=\"left\">\r\n<p style=\"line-height: 1.55; font-size: 14px;\">Hello {sitename} Admin,</p>\r\n<p style=\"line-height: 1.55; font-size: 14px;\">You have received bookings from {customer_name}:</p>\r\n<p style=\"line-height: 1.55; font-size: 14px;\"><b>Booking ID: <a style=\"color: #5a418b; text-decoration: none;\" href=\"{booking_edit_link}\" target=\"_blank\" rel=\"noopener\">#{booking_id}</a> ({booking_arrival_date})</b></p>\r\n</td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td class=\"wp-travel-content-title\" style=\"background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" colspan=\"2\" align=\"left\">\r\n<h3 style=\"font-size: 16px; line-height: 1; margin: 0; margin-top: 30px;\"><b>Booking Details:</b></h3>\r\n</td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\"><b>Itinerary</b></td>\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\"><a style=\"color: #5a418b; text-decoration: none;\" href=\"{itinerary_link}\" target=\"_blank\" rel=\"noopener\">{itinerary_title}</a></td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\"><b>Pax</b></td>\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\">{booking_no_of_pax}</td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\"><b>Scheduled Date</b></td>\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\">{booking_scheduled_date}</td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\"><b>Arrival Date</b></td>\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\">{booking_arrival_date}</td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\"><b>Departure Date</b></td>\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\">{booking_departure_date}</td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td class=\"wp-travel-content-title\" style=\"background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" colspan=\"2\" align=\"left\">\r\n<h3 style=\"font-size: 16px; line-height: 1; margin: 0; margin-top: 30px;\"><b>Customer Details:</b></h3>\r\n</td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\"><b>Name</b></td>\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\">{customer_name}</td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\"><b>Country</b></td>\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\">{customer_country}</td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\"><b>Address</b></td>\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\">{customer_address}</td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\"><b>Phone</b></td>\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\">{customer_phone}</td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\"><b>Email</b></td>\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\">{customer_email}</td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" colspan=\"2\" align=\"left\"><b>Note</b></td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" colspan=\"2\" align=\"left\">{customer_note}</td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td colspan=\"2\" align=\"center\"><a class=\"wp-travel-veiw-more\" style=\"color: #fcfffd; text-decoration: none; background: #dd402e; border-radius: 3px; display: block; font-size: 14px; margin: 20px auto; padding: 10px 20px; text-align: center; height: 30px; line-height: 30px; width: 200px;\" href=\"{booking_edit_link}\" target=\"_blank\" rel=\"noopener\">View details on site</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\";}s:31:\"payment_admin_template_settings\";a:4:{s:13:\"admin_subject\";s:11:\"New Booking\";s:11:\"admin_title\";s:11:\"New Booking\";s:18:\"admin_header_color\";s:0:\"\";s:13:\"email_content\";s:7803:\"&nbsp;\r\n<table class=\"wp-travel-wrapper\" style=\"color: #5d5d5d; font-family: Roboto, sans-serif; margin: auto;\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td class=\"wp-travel-content-top\" style=\"background: #fff; box-sizing: border-box; margin: 0; padding: 20px 25px;\" colspan=\"2\" align=\"left\">\r\n<p style=\"line-height: 1.55; font-size: 14px;\">Hello {sitename} Admin,</p>\r\n<p style=\"line-height: 1.55; font-size: 14px;\">You have received payment from {customer_name}:</p>\r\n<p style=\"line-height: 1.55; font-size: 14px;\"><b>Booking ID: <a style=\"color: #5a418b; text-decoration: none;\" href=\"{booking_edit_link}\" target=\"_blank\" rel=\"noopener\">#{booking_id}</a> ({booking_arrival_date})</b></p>\r\n</td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td class=\"wp-travel-content-title\" style=\"background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" colspan=\"2\" align=\"left\">\r\n<h3 style=\"font-size: 16px; line-height: 1; margin: 0; margin-top: 30px;\"><b>Booking Details:</b></h3>\r\n</td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\"><b>Itinerary</b></td>\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\"><a style=\"color: #5a418b; text-decoration: none;\" href=\"{itinerary_link}\" target=\"_blank\" rel=\"noopener\">{itinerary_title}</a></td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\"><b>Pax</b></td>\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\">{booking_no_of_pax}</td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\"><b>Scheduled Date</b></td>\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\">{booking_scheduled_date}</td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\"><b>Arrival Date</b></td>\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\">{booking_arrival_date}</td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\"><b>Departure Date</b></td>\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\">{booking_departure_date}</td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td class=\"wp-travel-content-title\" style=\"background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" colspan=\"2\" align=\"left\">\r\n<h3 style=\"font-size: 16px; line-height: 1; margin: 0; margin-top: 30px;\"><b>Customer Details:</b></h3>\r\n</td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\"><b>Name</b></td>\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\">{customer_name}</td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\"><b>Country</b></td>\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\">{customer_country}</td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\"><b>Address</b></td>\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\">{customer_address}</td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\"><b>Phone</b></td>\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\">{customer_phone}</td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\"><b>Email</b></td>\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\">{customer_email}</td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" colspan=\"2\" align=\"left\"><b>Note</b></td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" colspan=\"2\" align=\"left\">{customer_note}</td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td class=\"wp-travel-content-title\" style=\"background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" colspan=\"2\" align=\"left\">\r\n<h3 style=\"font-size: 16px; line-height: 1; margin: 0; margin-top: 30px;\"><b>Payment Details:</b></h3>\r\n</td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\"><b>Payment Status</b></td>\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\">{payment_status}</td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\"><b>Payment Mode</b></td>\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\">{payment_mode}</td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\"><b>Trip Price</b></td>\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\">{currency_symbol} {trip_price}</td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\"><b>Payment Amount</b></td>\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\">{currency_symbol} {payment_amount}</td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td colspan=\"2\" align=\"center\"><a class=\"wp-travel-veiw-more\" style=\"color: #fcfffd; text-decoration: none; background: #dd402e; border-radius: 3px; display: block; font-size: 14px; margin: 20px auto; padding: 10px 20px; text-align: center; height: 30px; line-height: 30px; width: 200px;\" href=\"{booking_edit_link}\" target=\"_blank\" rel=\"noopener\">View details on site</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\";}s:31:\"enquiry_admin_template_settings\";a:4:{s:13:\"admin_subject\";s:11:\"New Enquiry\";s:11:\"admin_title\";s:11:\"New Enquiry\";s:18:\"admin_header_color\";s:0:\"\";s:13:\"email_content\";s:2878:\"&nbsp;\r\n<table class=\"wp-travel-wrapper\" style=\"color: #5d5d5d; font-family: Roboto, sans-serif; margin: auto;\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td class=\"wp-travel-content-top\" style=\"background: #fff; box-sizing: border-box; margin: 0; padding: 20px 25px;\" colspan=\"2\" align=\"left\">\r\n<p style=\"line-height: 1.55; font-size: 14px;\">Hello {sitename} Admin,</p>\r\n<p style=\"line-height: 1.55; font-size: 14px;\">You have received trip enquiry from {customer_name}:</p>\r\n</td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td class=\"wp-travel-content-title\" style=\"background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" colspan=\"2\" align=\"left\">\r\n<h3 style=\"font-size: 16px; line-height: 1; margin: 0; margin-top: 30px;\"><b>Enquiry Details:</b></h3>\r\n</td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\"><b>Itinerary</b></td>\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\"><a style=\"color: #5a418b; text-decoration: none;\" href=\"{itinerary_link}\" target=\"_blank\" rel=\"noopener\">{itinerary_title}</a></td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\"><b>Name</b></td>\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\">{customer_name}</td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\"><b>E-mail</b></td>\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\">{customer_email}</td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\"><b>Enquiry Message</b></td>\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\">{customer_note}</td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td colspan=\"2\" align=\"center\"><a class=\"wp-travel-veiw-more\" style=\"color: #fcfffd; text-decoration: none; background: #dd402e; border-radius: 3px; display: block; font-size: 14px; margin: 20px auto; padding: 10px 20px; text-align: center; height: 30px; line-height: 30px; width: 200px;\" href=\"{enquery_edit_link}\" target=\"_blank\" rel=\"noopener\">View details on site </a></td>\r\n</tr>\r\n</tbody>\r\n</table>\";}s:32:\"booking_client_template_settings\";a:4:{s:14:\"client_subject\";s:16:\"Booking Recieved\";s:12:\"client_title\";s:16:\"Booking Recieved\";s:19:\"client_header_color\";s:7:\"#81d742\";s:13:\"email_content\";s:5630:\"&nbsp;\r\n<table class=\"wp-travel-wrapper\" style=\"color: #5d5d5d; font-family: Roboto, sans-serif; margin: auto;\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td class=\"wp-travel-content-top\" style=\"background: #fff; box-sizing: border-box; margin: 0; padding: 20px 25px;\" colspan=\"2\" align=\"left\">\r\n<p style=\"line-height: 1.55; font-size: 14px;\">Hello {customer_name},</p>\r\n<p style=\"line-height: 1.55; font-size: 14px;\">Your booking has been received and is now being processed. Your order details are shown below for your reference:</p>\r\n<p style=\"line-height: 1.55; font-size: 14px;\"><b>Booking ID: <a style=\"color: #5a418b; text-decoration: none;\" href=\"{booking_edit_link}\" target=\"_blank\" rel=\"noopener\">#{booking_id}</a> ({booking_arrival_date})</b></p>\r\n</td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td class=\"wp-travel-content-title\" style=\"background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" colspan=\"2\" align=\"left\">\r\n<h3 style=\"font-size: 16px; line-height: 1; margin: 0; margin-top: 30px;\"><b>Booking Details:</b></h3>\r\n</td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\"><b>Itinerary</b></td>\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\"><a style=\"color: #5a418b; text-decoration: none;\" href=\"{itinerary_link}\" target=\"_blank\" rel=\"noopener\">{itinerary_title}</a></td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\"><b>Pax</b></td>\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\">{booking_no_of_pax}</td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\"><b>Scheduled Date</b></td>\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\">{booking_scheduled_date}</td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\"><b>Arrival Date</b></td>\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\">{booking_arrival_date}</td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\"><b>Departure Date</b></td>\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\">{booking_departure_date}</td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td class=\"wp-travel-content-title\" style=\"background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" colspan=\"2\" align=\"left\">\r\n<h3 style=\"font-size: 16px; line-height: 1; margin: 0; margin-top: 30px;\"><b>Your Details:</b></h3>\r\n</td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\"><b>Name</b></td>\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\">{customer_name}</td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\"><b>Country</b></td>\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\">{customer_country}</td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\"><b>Address</b></td>\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\">{customer_address}</td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\"><b>Phone</b></td>\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\">{customer_phone}</td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\"><b>Email</b></td>\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\">{customer_email}</td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" colspan=\"2\" align=\"left\"><b>Note</b></td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" colspan=\"2\" align=\"left\">{customer_note}</td>\r\n</tr>\r\n</tbody>\r\n</table>\";}s:32:\"payment_client_template_settings\";a:4:{s:14:\"client_subject\";s:16:\"Payment Recieved\";s:12:\"client_title\";s:16:\"Payment Recieved\";s:19:\"client_header_color\";s:0:\"\";s:13:\"email_content\";s:2572:\"&nbsp;\r\n<table class=\"wp-travel-wrapper\" style=\"color: #5d5d5d; font-family: Roboto, sans-serif; margin: auto;\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td class=\"wp-travel-content-top\" style=\"background: #fff; box-sizing: border-box; margin: 0; padding: 20px 25px;\" colspan=\"2\" align=\"left\">\r\n<p style=\"line-height: 1.55; font-size: 14px;\">Hello {customer_name},</p>\r\n<p style=\"line-height: 1.55; font-size: 14px;\">Your payment has been received.</p>\r\n<p style=\"line-height: 1.55; font-size: 14px;\"><b>Booking ID: <a style=\"color: #5a418b; text-decoration: none;\" href=\"{booking_edit_link}\" target=\"_blank\" rel=\"noopener\">#{booking_id}</a> ({booking_arrival_date})</b></p>\r\n</td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td class=\"wp-travel-content-title\" style=\"background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" colspan=\"2\" align=\"left\">\r\n<h3 style=\"font-size: 16px; line-height: 1; margin: 0; margin-top: 30px;\"><b>Payment Details:</b></h3>\r\n</td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\"><b>Payment Status</b></td>\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\">{payment_status}</td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\"><b>Payment Mode</b></td>\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\">{payment_mode}</td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\"><b>Trip Price</b></td>\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\">{currency_symbol} {trip_price}</td>\r\n</tr>\r\n<tr class=\"wp-travel-content\" style=\"background: #fff;\">\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\"><b>Payment Amount</b></td>\r\n<td style=\"font-size: 14px; background: #fff; box-sizing: border-box; margin: 0; padding: 0px 0px 8px 25px;\" align=\"left\">{currency_symbol} {payment_amount}</td>\r\n</tr>\r\n</tbody>\r\n</table>\";}s:19:\"global_tab_settings\";a:8:{s:8:\"overview\";a:2:{s:5:\"label\";s:8:\"Overview\";s:12:\"show_in_menu\";s:3:\"yes\";}s:12:\"trip_outline\";a:2:{s:5:\"label\";s:12:\"Trip Outline\";s:12:\"show_in_menu\";s:3:\"yes\";}s:13:\"trip_includes\";a:2:{s:5:\"label\";s:13:\"Trip Includes\";s:12:\"show_in_menu\";s:3:\"yes\";}s:13:\"trip_excludes\";a:2:{s:5:\"label\";s:13:\"Trip Excludes\";s:12:\"show_in_menu\";s:3:\"yes\";}s:7:\"gallery\";a:2:{s:5:\"label\";s:7:\"Gallery\";s:12:\"show_in_menu\";s:3:\"yes\";}s:7:\"reviews\";a:2:{s:5:\"label\";s:7:\"Reviews\";s:12:\"show_in_menu\";s:3:\"yes\";}s:7:\"booking\";a:2:{s:5:\"label\";s:7:\"Booking\";s:12:\"show_in_menu\";s:3:\"yes\";}s:3:\"faq\";a:2:{s:5:\"label\";s:3:\"FAQ\";s:12:\"show_in_menu\";s:3:\"yes\";}}s:26:\"enable_trip_enquiry_option\";s:3:\"yes\";s:14:\"enable_og_tags\";s:3:\"yes\";s:12:\"wt_test_mode\";s:3:\"yes\";s:13:\"wt_test_email\";s:0:\"\";s:15:\"partial_payment\";s:3:\"yes\";s:22:\"minimum_partial_payout\";s:4:\"24.6\";s:15:\"trip_tax_enable\";s:0:\"\";s:19:\"trip_tax_percentage\";s:0:\"\";s:24:\"trip_tax_price_inclusive\";s:3:\"yes\";s:12:\"paypal_email\";s:0:\"\";s:21:\"payment_option_paypal\";s:3:\"yes\";s:27:\"wp_travel_trip_facts_enable\";s:3:\"yes\";s:29:\"wp_travel_trip_facts_settings\";a:1:{i:736107;a:4:{s:4:\"name\";s:4:\"test\";s:4:\"type\";s:8:\"multiple\";s:7:\"options\";s:0:\"\";s:4:\"icon\";s:0:\"\";}}s:12:\"cart_page_id\";s:3:\"354\";s:16:\"checkout_page_id\";s:3:\"355\";s:17:\"dashboard_page_id\";s:3:\"356\";s:22:\"wp_travel_gdpr_message\";s:35:\"By contacting us, you agree to our \";s:20:\"open_gdpr_in_new_tab\";s:3:\"yes\";s:20:\"wp_travel_from_email\";s:15:\"admin@gmail.com\";}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2805, '_transient_wp_travel_marketplace_addons_list', '{\n    \"products\": [\n        {\n            \"info\": {\n                \"id\": 12512,\n                \"slug\": \"wp-travel-mailchimp\",\n                \"title\": \"WP Travel MailChimp\",\n                \"create_date\": \"2019-03-25 11:53:59\",\n                \"modified_date\": \"2019-03-29 07:45:50\",\n                \"status\": \"publish\",\n                \"link\": \"https:\\/\\/wptravel.io\\/?post_type=download&p=12512\",\n                \"content\": \"<img class=\\\"alignright size-full wp-image-12643\\\" src=\\\"http:\\/\\/wptravel.io\\/wp-content\\/uploads\\/edd\\/2019\\/03\\/mail-chimp-main-banner-1.jpg\\\" alt=\\\"\\\" width=\\\"1497\\\" height=\\\"614\\\" \\/>\\r\\n\\r\\nLooking for easy-to-install and use MailChimp WordPress Plugin for your travel website? Install WP Travel MailChimp addon on your travel site today &amp; launch your email campaign in minutes.\\r\\n\\r\\nThe WP Travel WordPress MailChimp Plugin add on integrates a site\\u2019s signup with MailChimp and lets travel and tour operator websites to launch effective email campaigns.\\r\\n\\r\\nSend occasional newsletters to your subscribers informing them about your seasonal and special offers. Let them know about your new launches and all your events in which they might be interested. Such periodic and targeted email campaigns help you build a good rapport with the users and increase increasing sales. MailChimp is one of the best email tools that helps you send such emails to 2000 users for free. And that is why we created this plugin.\\r\\n\\r\\nTo launch your email campaign using this plugin follow here is a quick summary of steps:\\r\\n<ul>\\r\\n \\t<li>Create a MailChimp account, if you haven\'t one already - it\'s free for a start<\\/li>\\r\\n \\t<li>Install the WP Travel MailChimp WordPress plugin on your website - make sure you already have a WP Travel Plugin installed.<\\/li>\\r\\n \\t<li>Integrate the MailChimp WordPress plugin with your MailChimp Addon<\\/li>\\r\\n \\t<li>Style the opt-in forms, subscribe forms and signup forms and place them on the sections of your website where you think your users are likely to subscribe.<\\/li>\\r\\n \\t<li>Setup additional settings for users that book your tours or could contact you using forms on your contact us and other pages.<\\/li>\\r\\n<\\/ul>\\r\\n<strong>NOTE:<\\/strong>\\r\\n\\r\\nThis is NOT a standalone plugin. It works ONLY in conjunction with its parent plugin - WP Travel, the best tour operator plugin on WordPress. The WP Travel Plugin is made exclusively to serve travel and tour websites\\u2019 needs and requirements.\\r\\n\\r\\nHere are some cool features of this WP Travel MailChimp Plugin:\\r\\n\\r\\n<strong>1. Seamless Integration<\\/strong>\\r\\n\\r\\nThis add on can be configured to sync all your inquiries and booking emails to your MailChimp account. In your MailChimp account, you can create focused email listings that correspond to sign up forms. The MailChimp lists are an easy way for you to classify signups and interest groups to prepare customized email marketing templates each of these listings.\\r\\n\\r\\n<strong>2. Compliant with Anti Spam Requirements<\\/strong>\\r\\n\\r\\nTo comply with email marketing norms and making your email campaign compliant with anti-spam initiatives comes with the opt-in or opt-out feature. Enabling this feature will let you verify the validity of the email and also powers your user to confirm if they want to receive periodic newsletters from you or not.\\r\\n\\r\\n<strong>3. Sync MailChimp Email List to your Travel site<\\/strong>\\r\\n\\r\\nAnother robust feature of this plugin is the ability that it provides to the website owner to assign specific forms to specific MailChimp email campaign listings from their own website\\u2019s backend. Once connected with the MailChimp account, the plugin syncs all the email listings created in MailChimp.\",\n                \"excerpt\": \"\",\n                \"thumbnail\": \"https:\\/\\/wptravel.io\\/wp-content\\/uploads\\/edd\\/2019\\/03\\/mail-chimp-thumbnail.jpg\",\n                \"category\": [\n                    {\n                        \"term_id\": 2017,\n                        \"name\": \"Miscellaneous\",\n                        \"slug\": \"miscellaneous\",\n                        \"term_group\": 0,\n                        \"term_taxonomy_id\": 2017,\n                        \"taxonomy\": \"download_category\",\n                        \"description\": \"\",\n                        \"parent\": 0,\n                        \"count\": 5,\n                        \"filter\": \"raw\"\n                    }\n                ],\n                \"tags\": false\n            },\n            \"pricing\": {\n                \"amount\": \"15.99\"\n            }\n        },\n        {\n            \"info\": {\n                \"id\": 6673,\n                \"slug\": \"wp-travel-utilities\",\n                \"title\": \"WP Travel Utilities\",\n                \"create_date\": \"2018-05-21 04:02:21\",\n                \"modified_date\": \"2019-03-08 08:57:08\",\n                \"status\": \"publish\",\n                \"link\": \"http:\\/\\/wptravel.io\\/?post_type=download&p=6673\",\n                \"content\": \"WP Travel utilities is a bundle of basic features which enhances the WP travel plugin. The plugin basically addresses the minimal but important feature that is not available in the free version of WP Travel plugin. It lets you define your own custom trip code, enable\\/disable WP Travel \\\"Powered By Branding\\\" text or define your custom text. Likewise, it also has an option to send an email related to Trip Booking, Trip Payments and Trip Enquiry to your multiple recipients and more <a href=\\\"http:\\/\\/wptravel.io\\/downloads\\/wp-travel-utilities\\/#features\\\">features<\\/a>. WP Travel plugin must be installed and activated to use this addon. After you activate the plugin, a Utilities Option field will be added in the settings section of WP Travel plugin.\",\n                \"excerpt\": \"\",\n                \"thumbnail\": \"https:\\/\\/wptravel.io\\/wp-content\\/uploads\\/edd\\/2018\\/05\\/wp-travel-utilities-thumbnail.png\",\n                \"category\": false,\n                \"tags\": false\n            },\n            \"pricing\": {\n                \"amount\": \"22.99\"\n            }\n        },\n        {\n            \"info\": {\n                \"id\": 8351,\n                \"slug\": \"wp-travel-tour-extras\",\n                \"title\": \"WP Travel Tour Extras\",\n                \"create_date\": \"2018-10-30 07:51:33\",\n                \"modified_date\": \"2019-03-19 06:52:18\",\n                \"status\": \"publish\",\n                \"link\": \"http:\\/\\/wptravel.io\\/?post_type=download&p=8351\",\n                \"content\": \"<img class=\\\"size-full wp-image-12348 aligncenter\\\" src=\\\"http:\\/\\/wptravel.io\\/wp-content\\/uploads\\/edd\\/2019\\/03\\/ws-travel-tour-extras_2.jpg\\\" alt=\\\"\\\" width=\\\"1920\\\" height=\\\"800\\\" \\/>\\r\\n\\r\\nIf you are thinking of adding the additional services to your trips then you can go for WP Travel Tour Extras. It is an exciting plugin now available as an add-on for the WP Travel plugin. You can add any services like flight, vehicle service, insurance or any other custom you want. You can add paid or free service that user can select.\\u00a0 Additionally, you can add a gallery for the service, description and sale price.\\r\\n\\r\\nYou can download and use the plugin from the <a href=\\\"https:\\/\\/themepalace.com\\/downloads\\/wp-travel-tour-extras\\/\\\">Theme Place<\\/a> with our WP Travel plugin in one-click installation.\\r\\n\\r\\nIf you spot any issue then please post them directly in our official support forum.\\r\\n\\r\\n&nbsp;\\r\\n<p style=\\\"text-align: center;\\\">[wp_travel_site_get_purchase_button]<\\/p>\\r\\n&nbsp;\\r\\n<h2>Features of add-ons:<\\/h2>\\r\\n&nbsp;\\r\\n<h4>CREATE ADDITIONAL SERVICES FOR TRIPS:<\\/h4>\\r\\n<img class=\\\"size-full wp-image-12349 aligncenter\\\" src=\\\"http:\\/\\/wptravel.io\\/wp-content\\/uploads\\/edd\\/2019\\/03\\/easily-add-extra-products-services-to-a-trip.jpg\\\" alt=\\\"\\\" width=\\\"880\\\" height=\\\"330\\\" \\/>\\r\\n\\r\\nCreate additional services for trips. You can add any services like flight, vehicle service, insurance or any other custom you want. You can add paid or free service that user can select.\\u00a0\\u00a0Additionally you can add gallery for the service, description and sale price.\\r\\n<h4>SALE PRICES FOR EXTRA PRODUCT OR SERVICES:<\\/h4>\\r\\n<img class=\\\"size-full wp-image-12352 aligncenter\\\" src=\\\"http:\\/\\/wptravel.io\\/wp-content\\/uploads\\/edd\\/2019\\/03\\/sale-prices-for-extra-products-services.jpg\\\" alt=\\\"\\\" width=\\\"880\\\" height=\\\"330\\\" \\/>\\r\\n\\r\\nYou can specify the price of extra services and products that a trip packages offers.\\r\\n<h4>INTUITIVE AND EASY FRONT-END UI:<\\/h4>\\r\\n<img class=\\\"size-full wp-image-12353 aligncenter\\\" src=\\\"http:\\/\\/wptravel.io\\/wp-content\\/uploads\\/edd\\/2019\\/03\\/intuitive-and-easy-front-end-UI.jpg\\\" alt=\\\"\\\" width=\\\"880\\\" height=\\\"330\\\" \\/>\\r\\n\\r\\nWP Travel Tour Extras is designed to be intuitive and easy to use, while keeping your WordPress site healthy. The interface is made appealing, easy and efficient so that it does not get in between you and your work.\\r\\n<h4>EXTRAS GALLERY:<\\/h4>\\r\\n<img class=\\\"size-full wp-image-12350 aligncenter\\\" src=\\\"http:\\/\\/wptravel.io\\/wp-content\\/uploads\\/edd\\/2019\\/03\\/extras-gallery.jpg\\\" alt=\\\"\\\" width=\\\"880\\\" height=\\\"330\\\" \\/>\\r\\n\\r\\nYou can show off different images and stuffs related to the specific product, service or whatever in elegant gallery format.\\r\\n<h4>REGULAR PRICE AND SALE PRICE:<\\/h4>\\r\\n<img class=\\\"size-full wp-image-12355 aligncenter\\\" src=\\\"http:\\/\\/wptravel.io\\/wp-content\\/uploads\\/edd\\/2019\\/03\\/regular-price-and-sale-price.jpg\\\" alt=\\\"\\\" width=\\\"880\\\" height=\\\"330\\\" \\/>\\r\\n\\r\\nYou can input both regular price and sale price for the extra service or product that you offer along with the trips.\",\n                \"excerpt\": \"\",\n                \"thumbnail\": \"https:\\/\\/wptravel.io\\/wp-content\\/uploads\\/edd\\/2018\\/10\\/wp-travel-tour-extras-thumbnail-1.jpg\",\n                \"category\": [\n                    {\n                        \"term_id\": 2017,\n                        \"name\": \"Miscellaneous\",\n                        \"slug\": \"miscellaneous\",\n                        \"term_group\": 0,\n                        \"term_taxonomy_id\": 2017,\n                        \"taxonomy\": \"download_category\",\n                        \"description\": \"\",\n                        \"parent\": 0,\n                        \"count\": 5,\n                        \"filter\": \"raw\"\n                    }\n                ],\n                \"tags\": false\n            },\n            \"pricing\": {\n                \"amount\": \"15.99\"\n            }\n        },\n        {\n            \"info\": {\n                \"id\": 5353,\n                \"slug\": \"wp-travel-stripe-checkout\",\n                \"title\": \"WP Travel Stripe Checkout\",\n                \"create_date\": \"2018-02-28 10:04:21\",\n                \"modified_date\": \"2019-03-28 06:54:39\",\n                \"status\": \"publish\",\n                \"link\": \"http:\\/\\/wptravel.io\\/?post_type=download&p=5353\",\n                \"content\": \"<img class=\\\"alignright size-full wp-image-12711\\\" src=\\\"http:\\/\\/wptravel.io\\/wp-content\\/uploads\\/edd\\/2019\\/03\\/stripe-banner.jpg\\\" alt=\\\"\\\" width=\\\"1500\\\" height=\\\"700\\\" \\/>\\r\\n\\r\\n<span style=\\\"font-weight: 400;\\\">WP Travel Stripe WordPress Plugin add on is a payment plugin that helps you receive payments on WordPress travel site through Stripe. As one of the largest payment companies in the world, Stripe is a convenient way to accept online payments. It provides better user payment experience on every device including mobile, tablet and desktop. All the transactions are done on-site, and it allows you to provide one-time payment as well as recurring payment options for your customers. So, you don\\u2019t need to worry about losing a customer in an external page.<\\/span>\\r\\n\\r\\n<span style=\\\"font-weight: 400;\\\">Running an online travel business can be an uphill battle if you have not integrated online payment modules like Stripe that work with a wide range of credit cards. Creating a strategic plan, engineering the best site that satisfies your customer needs and delivering them with a wide range of options to pay for the tour and trip bookings, can be very costly for your programmer to custom code it. So, we created this simple but powerful Stripe payment plugin for your travel site. When coupled with its parent travel plugin, WP Travel, this addon will further boost the growth of your travel business.<\\/span>\\r\\n\\r\\n<span style=\\\"font-weight: 400;\\\">Stripe Checkout add-on is very easy to set up. You don\\u2019t need programming skills to integrate it on your site. Once you have merchant account on Stripe (which is also very easy), it requires very less time to integrate your website with your Stripe account. We have made the integration process very simple, saving your time with working with stripe php codes and all. It involves some drag and drops and some toggling with buttons to integrate. With this add-on, you can focus more on making better products and let it handle the payment part.<\\/span>\\r\\n\\r\\n<span style=\\\"font-weight: 400;\\\">\\u00a0<\\/span>\\r\\n\\r\\n<b>Why Stripe Checkout WordPress plugin?<\\/b>\\r\\n\\r\\n<span style=\\\"font-weight: 400;\\\">\\u00a0<\\/span>\\r\\n\\r\\n<span style=\\\"font-weight: 400;\\\">WP Travel Stripe Payment Plugin is renowned for its safety features and ease of use for both customers and merchants. Stripe payment is famous as \\u201cPayment form done right\\u201d because of its seamless transaction experience to the customer all around the world.<\\/span>\\r\\n\\r\\n<span style=\\\"font-weight: 400;\\\">As an owner of a travel business, you can<\\/span><a href=\\\"https:\\/\\/dashboard.stripe.com\\/register\\\"><span style=\\\"font-weight: 400;\\\"> set up a Stripe merchant account<\\/span><\\/a><span style=\\\"font-weight: 400;\\\"> in just a few minutes. It has no setup fees, no monthly fees, and no hidden costs. It accepts all major debit and credit cards across the world, giving your would-be customers a wide array of choices to make the payment through.<\\/span>\\r\\n\\r\\n<span style=\\\"font-weight: 400;\\\">Stripe Checkout is fully optimized for all sizes of mobile screens and the best site it works on your site \\u2013 without the user ever leaving it. The customer can pay instantly without being redirected away to payment gateway site. As such this provides you with the opportunity to upsell more products to these customers.<\\/span>\\r\\n\\r\\n<b>What do you need to install the WP Travel Stripe Payment plugin?<\\/b>\\r\\n\\r\\n<span style=\\\"font-weight: 400;\\\">\\u00a0<\\/span>\\r\\n\\r\\n<span style=\\\"font-weight: 400;\\\">Before installing the WP Travel Stripe Payment plugin on your site, you should create a Stripe merchant account. This is relevantly easy. In addition to that, you should install WP Travel plugin on the site as the Stripe payment plugin works ONLY with it. With these basics done, install the stripe payment plugin and follow onscreen instructions or i<\\/span><a href=\\\"http:\\/\\/wptravel.io\\/documentations\\/wp-travel-stripe-checkout\\/\\\"><span style=\\\"font-weight: 400;\\\">nstructions given here.<\\/span><\\/a>\\r\\n\\r\\n<b>NOTE:<\\/b>\\r\\n<ul>\\r\\n \\t<li style=\\\"font-weight: 400;\\\"><span style=\\\"font-weight: 400;\\\">The WP Travel Payment plugin only works if the WP Travel plugin is installed.<\\/span><\\/li>\\r\\n \\t<li style=\\\"font-weight: 400;\\\"><span style=\\\"font-weight: 400;\\\">WP Travel is a plugin exclusively made for travel and tour agency WordPress websites.<\\/span><\\/li>\\r\\n \\t<li style=\\\"font-weight: 400;\\\"><span style=\\\"font-weight: 400;\\\">Stripe works only pages with HTTPs connection.<\\/span><\\/li>\\r\\n<\\/ul>\\r\\n<span style=\\\"font-weight: 400;\\\">\\u00a0<\\/span>\\r\\n\\r\\n<b>WP Travel Stripe Payment Plugin Features:<\\/b><span style=\\\"font-weight: 400;\\\">\\u00a0<\\/span>\\r\\n\\r\\n<b>Frictionless Onsite Checkout:<\\/b>\\r\\n\\r\\n<span style=\\\"font-weight: 400;\\\">WP Travel Stripe Payment plugin add-on offers the ability to have single page checkout for your customers. Nothing is frustrating than going to multiple pages to pay. Users simply hate this, as we do. With this option, visitors can quickly click on the stripe payment button and make the payment without leaving your site. As such it helps to decrease the shopping cart abandonment rates and increase the volume of trip bookings.<\\/span>\\r\\n\\r\\n<b>Highly Secured <\\/b>\\r\\n\\r\\n<span style=\\\"font-weight: 400;\\\">This Stripe payment plugin uses the Stripe API that provides a highly secure environment for the users to make the transaction. It comes loaded with Stripe Radar, fraud protection tools along with other security features. It helps in detecting and preventing fraud along with counterfeit transactions. Stripe uses advanced machine learning infrastructure that allows it to identify shifting fraud patterns and control them constantly.<\\/span>\\r\\n\\r\\n<b>Wide range of debit and credit card options<\\/b>\\r\\n\\r\\n<span style=\\\"font-weight: 400;\\\">The Stripe Payment plugin allows your users to pay for your trips and tour bookings using Stripe account or their debit and credit cards. This add-on accepts most of the debit and credit card. You can easily prompt them to enter the credit card number. It provides real-time feedback. So your visitor can easily identify error while filling stripe forms.<\\/span>\\r\\n\\r\\n<b>Highly customizable settings<\\/b>\\r\\n\\r\\n<span style=\\\"font-weight: 400;\\\">The WP Travel Stripe Payment plugin is engineered to allow customization to checkout form and add custom fields. As such, no matter what your website\\u2019s design or color scheme is, you can adapt Stripe checkout forms to it. This helps to maintain consistent branding on your website. The UI toolkit provided by Stripe gives collective experience for the front end and design. You can easily access the setting page from your WordPress site.<\\/span>\\r\\n\\r\\n<b>Built-in mobile support (Responsive)<\\/b>\\r\\n\\r\\n<span style=\\\"font-weight: 400;\\\">Our Stripe Checkout WordPress plugin has built-in mobile support. It automatically adapts to mobile devices. This checkout lets your customers save their time by providing easy navigation in mobile devices. It adjusts to the different screen sizes of the mobile, tablet and desktop.<\\/span>\\r\\n\\r\\n<span style=\\\"font-weight: 400;\\\">Power your tour and travel agency website with the all-in-one solution, WP Travel, and boost your abilities to receive online payment through Stripe today. Download it now.<\\/span>\\r\\n\\r\\n<span style=\\\"font-weight: 400;\\\">\\u00a0<\\/span>\",\n                \"excerpt\": \"\",\n                \"thumbnail\": \"https:\\/\\/wptravel.io\\/wp-content\\/uploads\\/2018\\/05\\/stripe-checkout.png\",\n                \"category\": [\n                    {\n                        \"term_id\": 166,\n                        \"name\": \"Payment\",\n                        \"slug\": \"payment\",\n                        \"term_group\": 0,\n                        \"term_taxonomy_id\": 166,\n                        \"taxonomy\": \"download_category\",\n                        \"description\": \"\",\n                        \"parent\": 0,\n                        \"count\": 8,\n                        \"filter\": \"raw\"\n                    }\n                ],\n                \"tags\": false\n            },\n            \"pricing\": {\n                \"amount\": \"19.99\"\n            }\n        },\n        {\n            \"info\": {\n                \"id\": 5042,\n                \"slug\": \"wp-travel-paypal-express-checkout\",\n                \"title\": \"WP Travel PayPal Express Checkout\",\n                \"create_date\": \"2018-02-21 07:14:20\",\n                \"modified_date\": \"2019-03-28 06:52:26\",\n                \"status\": \"publish\",\n                \"link\": \"http:\\/\\/wptravel.io\\/?post_type=download&p=5042\",\n                \"content\": \"<img class=\\\"alignright size-full wp-image-12709\\\" src=\\\"http:\\/\\/wptravel.io\\/wp-content\\/uploads\\/edd\\/2019\\/03\\/paypal-banner.jpg\\\" alt=\\\"\\\" width=\\\"1500\\\" height=\\\"700\\\" \\/>\\r\\n\\r\\n<span style=\\\"font-weight: 400;\\\">Install the best PayPal Checkout WordPress plugin addon for WP Travel plugin on your travel and tour website and increase your sales. This PayPal Checkout plugin helps your users to book any trek and tour packages on your site and pay for it without going through loads of forms and signups. <\\/span>\\r\\n\\r\\n<span style=\\\"font-weight: 400;\\\">Powered by PayPal and integrated with WP Travel, the<\\/span><a href=\\\"http:\\/\\/wptravel.io\\/\\\"><span style=\\\"font-weight: 400;\\\"> best plugin for tour and travel websites<\\/span><\\/a><span style=\\\"font-weight: 400;\\\">, this add-on provides better user experience and secure environment for your website users to make a transaction. With increasing security issues on the internet to create an online purchase, PayPal\\u2019s express checkout plugin add on for WordPress provides an optimum on-site environment and helps in building trust with your brand. This additional trust dramatically increases their probability of booking a travel and tour packages online.<\\/span>\\r\\n\\r\\n<span style=\\\"font-weight: 400;\\\">If you are a developer who wants to integrate PayPal Express Checkout on your client\\u2019s travel agency site built on WordPress, then you have come to the right place. Instead of working for hours on studying the PayPal API integration documentation, programming and fixing bugs, buy and install this plugin and invest your time in other productive activities.<\\/span>\\r\\n\\r\\n<b>NOTE: <\\/b>\\r\\n\\r\\n<span style=\\\"font-weight: 400;\\\">The PayPal Checkout WordPress Plugin for WP Travel works ONLY with WP Travel plugin.<\\/span>\\r\\n\\r\\n<span style=\\\"font-weight: 400;\\\">The WP Travel plugin is FREE &amp; made for travel and tour websites ONLY.<\\/span>\\r\\n\\r\\n<b>Why should you have PayPal Express Checkout on your travel site? <\\/b>\\r\\n\\r\\n<b>Maximizing Sales:<\\/b>\\r\\n\\r\\n<span style=\\\"font-weight: 400;\\\">Many studies, including <\\/span><a href=\\\"https:\\/\\/www.braintreepayments.com\\/blog\\/a-new-study-shows-paypal-helps-improve-checkout-conversion\\/\\\"><span style=\\\"font-weight: 400;\\\">this one<\\/span><\\/a><span style=\\\"font-weight: 400;\\\">, have pointed that having PayPal on checkout helps increase checkout conversions significantly. PayPal Express Checkout eliminates one of the significant causes of checkout abandonment by giving buyers seamless experience and avoiding them to add your products in cart page. With a single click on PayPal button, buyers can provide their detail in a go, thereby speeding the checkout experience.\\u00a0<\\/span>\\r\\n\\r\\n<b>On-Site Checkout:<\\/b>\\r\\n\\r\\n<span style=\\\"font-weight: 400;\\\">On-Site checkout means single-page checkout. It guarantees that the user does not have to go through a lot of form fillups. When the user clicks on the payment option of PayPal Express at your checkout page, it redirects to a standard PayPal login form. Where they can finish the transactions swiftly.<\\/span>\\r\\n\\r\\n<b>UpSell Additional Products<\\/b>\\r\\n\\r\\n<span style=\\\"font-weight: 400;\\\">After finishing the payment, the customer is redirected to your page where they can engage in other activities.\\u00a0 This opens the possibilities to up-sell additional products along with reducing the risk of abandonment of shopping cart.<\\/span>\\r\\n\\r\\n<b>Highly Secured<\\/b>\\r\\n\\r\\n<span style=\\\"font-weight: 400;\\\">Our PayPal Express Checkout plugin provides a highly secure environment and customizable security options for a site owner to configure. Any information exchanged is secured and encrypted. Powered by the PayPal API, users sensitive information like credit card, billing address or bank number transmitted through secure channels. This way, user don\\u2019t have to worry about paying from your site. <\\/span>\\r\\n\\r\\n&nbsp;\\r\\n\\r\\n<b>Credit Card Options<\\/b>\\r\\n\\r\\n<span style=\\\"font-weight: 400;\\\">While the PayPal standard payment service does not allow users to sign out using their credit card, the PayPal Express Checkout provides it. With the Express Checkout, a user can make the payment with their credit card, without ever logging into their PayPal account.\\u00a0 This feature has proven to increase conversion rates as well as payment options at your travel site. As it can be your main payment options at all times.<\\/span>\\r\\n\\r\\n&nbsp;\\r\\n\\r\\n<b>Partial Payment <\\/b>\\r\\n\\r\\n<span style=\\\"font-weight: 400;\\\">This PayPal Express Checkout plugin provides the option of making a partial payment to your users. Under this option, your client can opt to pay for all the booking charges or to pay only a partial amount. This is an excellent feature for potential customers as it helps them to book the tour by paying partially.<\\/span>\\r\\n\\r\\n<span style=\\\"font-weight: 400;\\\">Running a travel agency business can be a daunting task, but we have made making a travel site and accepting international payments from the customer easy. Install our PayPal Express Checkout Plugin on your travel website today. <\\/span>\",\n                \"excerpt\": \"\",\n                \"thumbnail\": \"https:\\/\\/wptravel.io\\/wp-content\\/uploads\\/2018\\/05\\/paypal-checkout.png\",\n                \"category\": [\n                    {\n                        \"term_id\": 166,\n                        \"name\": \"Payment\",\n                        \"slug\": \"payment\",\n                        \"term_group\": 0,\n                        \"term_taxonomy_id\": 166,\n                        \"taxonomy\": \"download_category\",\n                        \"description\": \"\",\n                        \"parent\": 0,\n                        \"count\": 8,\n                        \"filter\": \"raw\"\n                    }\n                ],\n                \"tags\": [\n                    {\n                        \"term_id\": 168,\n                        \"name\": \"PayPal\",\n                        \"slug\": \"paypal\",\n                        \"term_group\": 0,\n                        \"term_taxonomy_id\": 168,\n                        \"taxonomy\": \"download_tag\",\n                        \"description\": \"\",\n                        \"parent\": 0,\n                        \"count\": 1,\n                        \"filter\": \"raw\"\n                    }\n                ]\n            },\n            \"pricing\": {\n                \"amount\": \"19.99\"\n            }\n        },\n        {\n            \"info\": {\n                \"id\": 12008,\n                \"slug\": \"wp-travel-custom-filter\",\n                \"title\": \"WP Travel Custom Filter\",\n                \"create_date\": \"2019-03-25 11:20:43\",\n                \"modified_date\": \"2019-03-29 06:49:23\",\n                \"status\": \"publish\",\n                \"link\": \"https:\\/\\/wptravel.io\\/?post_type=download&p=12008\",\n                \"content\": \"<img class=\\\"size-full wp-image-12582 aligncenter\\\" src=\\\"http:\\/\\/wptravel.io\\/wp-content\\/uploads\\/edd\\/2019\\/03\\/custom-filter.png\\\" alt=\\\"\\\" width=\\\"1497\\\" height=\\\"614\\\" \\/>\\r\\n\\r\\nCustom Filter is easy\\u00a0 way to provide your visitors with filtering for your post types. With this you get a complete solution for adding filtering based on custom taxonomy.\\r\\n\\r\\nWith the added filters, user can categorize the trips more conveniently with the filter label that they want.\\r\\n\\r\\n&nbsp;\\r\\n<h2>Features of add-ons:<\\/h2>\\r\\n<h4>Flexibility in adding multiple filters:<\\/h4>\\r\\nWith a single click, user can add the filters which makes the grouping of the created trips super easy and fast!\\r\\n<h4>Easy Classification of trips through clean categorization:<\\/h4>\\r\\nWith the added filters, user can categorize the trips more conveniently with the filter label that they want.\\r\\n<h4>User Friendly experience to enhance site through additional filters:<\\/h4>\\r\\n\\u2018Single Click\\u2019 and the filter is there with full functionality of the manually created filters.\\r\\nCollapse\",\n                \"excerpt\": \"\",\n                \"thumbnail\": false,\n                \"category\": [\n                    {\n                        \"term_id\": 2017,\n                        \"name\": \"Miscellaneous\",\n                        \"slug\": \"miscellaneous\",\n                        \"term_group\": 0,\n                        \"term_taxonomy_id\": 2017,\n                        \"taxonomy\": \"download_category\",\n                        \"description\": \"\",\n                        \"parent\": 0,\n                        \"count\": 5,\n                        \"filter\": \"raw\"\n                    }\n                ],\n                \"tags\": false\n            },\n            \"pricing\": {\n                \"amount\": \"19.00\"\n            }\n        },\n        {\n            \"info\": {\n                \"id\": 11488,\n                \"slug\": \"wp-travel-paystack-checkout\",\n                \"title\": \"WP Travel Paystack Checkout\",\n                \"create_date\": \"2019-03-08 07:56:36\",\n                \"modified_date\": \"2019-03-28 06:49:22\",\n                \"status\": \"publish\",\n                \"link\": \"https:\\/\\/wptravel.io\\/?post_type=download&p=11488\",\n                \"content\": \"<img class=\\\"alignright wp-image-12013 size-full\\\" src=\\\"http:\\/\\/wptravel.io\\/wp-content\\/uploads\\/edd\\/2019\\/03\\/banner.png\\\" alt=\\\"WP Travel Paystack Payment Plugin\\\" width=\\\"2910\\\" height=\\\"1162\\\" \\/>\\r\\n\\r\\nWP Travel Paystack Checkout is the fastest, simplest and safest Paystack WordPress plugin add-on for travel and tour websites. It is specially built to help travel and tour websites in Africa to accept online reservations and bookings from users across the world and receive online payments in their local Naira currency.\\r\\n\\r\\nThough Paystack provides extensive documentation on integrating its payment gateway, integrating it takes hours of work for developers. Our team worked together and came up with this little yet powerful Paystack plugin for WordPress to put an end to this repetitive task (and sometimes monotonous).\\u00a0 It integrates Paystack payment gateway to your travel website like a charm.\\r\\n\\r\\nAs part of our mission to make the life of WordPress developers and travel and tour sites entrepreneurs easy, we introduced this payment plugin. It offers a safe and convenient payment experience to local and international customers and site owners. With the plugin, travel operators will be able to accept an online reservation from their domestic and international clients, without having to bother about currency exchange or dollar accounts. All the site owners will need to have is a Paystack account and its integration details.\\r\\n<h2>What do you need to install?<strong>\\r\\n<\\/strong><\\/h2>\\r\\nApart from the Paystack account details, the other thing you will need is to install WP Travel plugin on your site, enable it and then install this addon. Once you install and set up all your account details in the backend of the WP Travel Paystack Payment, you are all set to local and international payments in Naira.\\r\\n\\r\\nThis simple and powerful plugin offers you the flexibility to configure transaction settings in the backend to tailor the user experience on checkout and assist you in your conversion rate optimization game. So up your game with Paystack payment plugin now and crush your competitors.\\r\\n\\r\\n&nbsp;\\r\\n<p style=\\\"text-align: center;\\\">[wp_travel_site_get_purchase_button]<\\/p>\\r\\n\\r\\n<h2>Points to be noted:<\\/h2>\\r\\n<ul>\\r\\n \\t<li>This payment gateway add-ons work only with Nigerian currency (Naira).<\\/li>\\r\\n \\t<li>This payment add-ons only work in conjunction with our parent plugin WP Travel plugin installed; it does not work as a stand-alone plugin. You can download <a href=\\\"http:\\/\\/wptravel.io\\\">WP Travel plugin<\\/a> for free.<\\/li>\\r\\n<\\/ul>\\r\\n<h2>Features of add-ons:<\\/h2>\\r\\n<h3>Highly Secure<strong>:<\\/strong><\\/h3>\\r\\n<img class=\\\"alignright size-full wp-image-12706\\\" src=\\\"http:\\/\\/wptravel.io\\/wp-content\\/uploads\\/edd\\/2019\\/03\\/secure-payment-paystack.jpg\\\" alt=\\\"\\\" width=\\\"1652\\\" height=\\\"661\\\" \\/>\\r\\n\\r\\n<img class=\\\"aligncenter wp-image-11797 size-full\\\" src=\\\"http:\\/\\/wptravelsite.local\\/wp-content\\/uploads\\/2019\\/03\\/secure-payment.jpg\\\" alt=\\\"\\\" width=\\\"1652\\\" height=\\\"661\\\" \\/>\\r\\n\\r\\nOur Paystack WordPress plugin provides a highly secure environment and customizable security options for site owners to configure. Powered by the secure Paystack API, this plugin comes with in-built automated, and manual fraud system saves your customers from the fraudulent transaction and associated chargeback claims.\\r\\n<h3>Multiple Payment Options<\\/h3>\\r\\n<img class=\\\"alignright size-full wp-image-12014\\\" src=\\\"http:\\/\\/wptravel.io\\/wp-content\\/uploads\\/edd\\/2019\\/03\\/E-banking-payment.jpg\\\" alt=\\\"\\\" width=\\\"1652\\\" height=\\\"661\\\" \\/>\\r\\n\\r\\nThis add-on provides multiple choices to make the payment including MasterCard, Visa card and direct bank transaction. It lets your customers pay you however they want. It automatically routes payments through the most optimal channels, ensuring the highest transaction success rates in the market. With this add-on, you can accept payment from international customers, wherever they are in the world and of course your local customers too in Nigeria!\\r\\n<h3>Single Page Checkout<\\/h3>\\r\\n&nbsp;\\r\\n\\r\\nThe Paystack add-on supports one-page-checkout function. As such it helps you make your checkout process seamless for your users and decrease cart abandonment rates. This payment plugin facilitates quick authentication of the transaction for the user without ever needing them to leave the checkout page. After paying customer is returned to your site. Enable the single page checkout experience for Paystack to provide customers with a better experience on your site.\\r\\n<h3>Why Paystack?<\\/h3>\\r\\nThe WP Travel Paystack Checkout is powered by <a href=\\\"https:\\/\\/paystack.com\\/\\\">Paystack<\\/a>, a well-trusted payment gateway. Paystack has one of the best transaction success rates in industry history. It helps millions of business in Nigeria to receive payment in local currencies from anywhere in the world. With transparent pricing and commission rates, it is must-have online payment gateway on your travel site. With this add-on customer easily book your tour and trekking packages using MasterCard, Visa, and Bank Account.\\r\\n\\r\\nUp your game, today, use the smartest Paystack payment plugin on WordPress for travel and tour sites and save loads of your programming hours.\",\n                \"excerpt\": \"\",\n                \"thumbnail\": \"https:\\/\\/wptravel.io\\/wp-content\\/uploads\\/edd\\/2019\\/03\\/thumbnail-with-header.png\",\n                \"category\": [\n                    {\n                        \"term_id\": 166,\n                        \"name\": \"Payment\",\n                        \"slug\": \"payment\",\n                        \"term_group\": 0,\n                        \"term_taxonomy_id\": 166,\n                        \"taxonomy\": \"download_category\",\n                        \"description\": \"\",\n                        \"parent\": 0,\n                        \"count\": 8,\n                        \"filter\": \"raw\"\n                    }\n                ],\n                \"tags\": false\n            },\n            \"pricing\": {\n                \"amount\": \"19.00\"\n            }\n        },\n        {\n            \"info\": {\n                \"id\": 11475,\n                \"slug\": \"wp-travel-partial-payment\",\n                \"title\": \"WP Travel Partial Payment\",\n                \"create_date\": \"2019-03-06 10:33:50\",\n                \"modified_date\": \"2019-03-10 03:03:20\",\n                \"status\": \"publish\",\n                \"link\": \"https:\\/\\/wptravel.io\\/?post_type=download&p=11475\",\n                \"content\": \"Customers might make a partial payment initially because of the uncertainty, insecurities or simply they just don\'t have enough to pay in full at a time. Now the question is \\\"How to make the remaining payment ?\\\".\\r\\n\\r\\nSo, we are very excited to announce the release of our much-awaited addon \\\"WP Travel Partial Payment\\\" which will let go off all our worries of finding the easy way to make the payment of the remaining amount.\\r\\n\\r\\nWP Travel Partial payment provides better control over how you collect payments by allowing your customers to make payments of remaining parts via the payment addon that they prefer.\",\n                \"excerpt\": \"\",\n                \"thumbnail\": \"https:\\/\\/wptravel.io\\/wp-content\\/uploads\\/edd\\/2019\\/03\\/partial_payment_thumbnail.jpg\",\n                \"category\": [\n                    {\n                        \"term_id\": 166,\n                        \"name\": \"Payment\",\n                        \"slug\": \"payment\",\n                        \"term_group\": 0,\n                        \"term_taxonomy_id\": 166,\n                        \"taxonomy\": \"download_category\",\n                        \"description\": \"\",\n                        \"parent\": 0,\n                        \"count\": 8,\n                        \"filter\": \"raw\"\n                    }\n                ],\n                \"tags\": false\n            },\n            \"pricing\": {\n                \"amount\": \"19.00\"\n            }\n        },\n        {\n            \"info\": {\n                \"id\": 9263,\n                \"slug\": \"wp-travel-khalti-checkout\",\n                \"title\": \"WP Travel Khalti Checkout\",\n                \"create_date\": \"2019-02-27 05:39:57\",\n                \"modified_date\": \"2019-03-28 06:42:09\",\n                \"status\": \"publish\",\n                \"link\": \"http:\\/\\/wptravel.io\\/?post_type=download&p=9263\",\n                \"content\": \"<img class=\\\"alignright size-full wp-image-12699\\\" src=\\\"http:\\/\\/wptravel.io\\/wp-content\\/uploads\\/edd\\/2019\\/03\\/wp-travel-khalti-checkout-banner.jpg\\\" alt=\\\"\\\" width=\\\"1920\\\" height=\\\"800\\\" \\/>\\r\\n\\r\\n<span style=\\\"font-weight: 400;\\\">WP Travel Khalti Payment plugin is made for Nepali travel and tour websites built on WordPress to accept local payments in Nepali rupees. All transactions are done on a single page checkout. The process is instant, secure and hassle-free. It gives multiple payment options which include debit cards of various Nepali banks, Khalti wallet, and e-banking payment.<\\/span>\\r\\n\\r\\n<span style=\\\"font-weight: 400;\\\">Nepal has always been one of the best tourist destinations for both foreign and local tourists. With the globalization of digital platform, people are also looking for comfortable and secure online payment gateway in Nepal. Online travel agencies and websites are expected to have their payment options for local users. So, the travel operator who has their site powered by WordPress has an excellent opportunity to convert a local visitor into paying customer by integrating our add-on.<\\/span>\\r\\n\\r\\n<b>Why Khalti Checkout?<\\/b>\\r\\n\\r\\n<span style=\\\"font-weight: 400;\\\">Our Khalti checkout plugin is powered by the Khalti payment gateway, one of the most widely used online wallets in Nepal. It is specially designed for Nepali currency. So, travel agencies can boost their ability to take bookings and payments from domestic tourists by providing the standard mode of payment for all Nepali customers. Khalti is associated with numbers of Banks. Therefore, loading the funds from a bank account using e-banks or mobile banking is comfortable and convenient for your website users to pay for the bookings.<\\/span>\\r\\n\\r\\n<span style=\\\"font-weight: 400;\\\">WP Travel, as one of the <\\/span><a href=\\\"http:\\/\\/wptravel.io\\/\\\"><span style=\\\"font-weight: 400;\\\">best WordPress plugin for travel and tour websites<\\/span><\\/a><span style=\\\"font-weight: 400;\\\">, powers many travel and tour websites in Nepal and across the globe. With the addition of WP Travel Khalti payment add-on to WP Travel plugin, now your Nepali clients can seamlessly pay for their travels and tours online through their Khalti account. This add-on is very easy to set up and can be integrated even if you are not well versed in coding and programming. With this add-on, you can focus more on your products and let the plugin handle the payment part.<\\/span>\\r\\n\\r\\n<b>Points to be noted:<\\/b>\\r\\n<ul>\\r\\n \\t<li style=\\\"font-weight: 400;\\\"><span style=\\\"font-weight: 400;\\\">This add-on works only in Nepal and with the Nepalese currency.<\\/span><\\/li>\\r\\n \\t<li style=\\\"font-weight: 400;\\\"><span style=\\\"font-weight: 400;\\\">This payment add on works on WordPress site and ONLY with <\\/span><a href=\\\"http:\\/\\/wptravel.io\\/\\\"><span style=\\\"font-weight: 400;\\\">WP Travel plugin.<\\/span><\\/a><span style=\\\"font-weight: 400;\\\">\\u00a0<\\/span><\\/li>\\r\\n<\\/ul>\\r\\n<b>Secure Payment Gateway:<\\/b>\\r\\n\\r\\n<img class=\\\"alignright size-full wp-image-12700\\\" src=\\\"http:\\/\\/wptravel.io\\/wp-content\\/uploads\\/edd\\/2019\\/03\\/secure-payment-gateway-1-1.jpg\\\" alt=\\\"\\\" width=\\\"880\\\" height=\\\"330\\\" \\/>\\r\\n\\r\\n<span style=\\\"font-weight: 400;\\\">WP Travel Khalti payment provides a highly secure environment with robust security options. All connections to Khalti through the website are encrypted. So, all of the transactions and personal card details are always safe and secure. They are not stored on the host website as the transaction is carried out using the Khalti Payment gateway.<\\/span>\\r\\n\\r\\n<b>Multiple payment options:<\\/b>\\r\\n\\r\\n<img class=\\\"alignright size-full wp-image-12701\\\" src=\\\"http:\\/\\/wptravel.io\\/wp-content\\/uploads\\/edd\\/2019\\/03\\/debit-card-wallet-and-e-banking-payment-1.jpg\\\" alt=\\\"\\\" width=\\\"880\\\" height=\\\"330\\\" \\/>\\r\\n\\r\\n<span style=\\\"font-weight: 400;\\\">The payment method in this add-on is highly flexible and efficient. The users can use their Debit (ATM) card as well as e-banking system to pay for their bookings. Also, the customer load funds from a bank account into their Khalti digital wallet and then pay from it for the tour and trekking packages.<\\/span>\\r\\n\\r\\n<b>On-Site Checkout:<\\/b>\\r\\n\\r\\n<img class=\\\"alignright size-full wp-image-12702\\\" src=\\\"http:\\/\\/wptravel.io\\/wp-content\\/uploads\\/edd\\/2019\\/03\\/seamless-and-on-site-checkout-1.jpg\\\" alt=\\\"\\\" width=\\\"880\\\" height=\\\"330\\\" \\/>\\r\\n\\r\\n<span style=\\\"font-weight: 400;\\\">This add-on provides a single page checkout facility enabling your customers to pay you without ever leaving your site. With the single click, the user can fill checkout form on-site. After finishing the transaction, the customer is left on your site which gives further opportunity to up-sell more products.<\\/span>\\r\\n\\r\\n<b>Highly Customizable Settings:<\\/b>\\r\\n\\r\\n<img class=\\\"alignright size-full wp-image-12703\\\" src=\\\"http:\\/\\/wptravel.io\\/wp-content\\/uploads\\/edd\\/2019\\/03\\/customizable-settings-1.jpg\\\" alt=\\\"\\\" width=\\\"880\\\" height=\\\"330\\\" \\/>\\r\\n\\r\\n<span style=\\\"font-weight: 400;\\\">This add-on provides highly customizable settings. It enables you to customize or make changes to checkout form according to the specific needs by configuring layout and system functionality. It allows you to show consistent branding by creating a custom layout concerning your site.<\\/span>\\r\\n\\r\\n<span style=\\\"font-weight: 400;\\\">Up your game today by installing WP Travel Khalti Checkout on your travel site and open the opportunity for your Nepali customers to pay you online using their Khalti digital wallet.<\\/span>\",\n                \"excerpt\": \"\",\n                \"thumbnail\": \"https:\\/\\/wptravel.io\\/wp-content\\/uploads\\/2019\\/02\\/wp-travel-khalti-checkout-thumbnail.jpg\",\n                \"category\": [\n                    {\n                        \"term_id\": 166,\n                        \"name\": \"Payment\",\n                        \"slug\": \"payment\",\n                        \"term_group\": 0,\n                        \"term_taxonomy_id\": 166,\n                        \"taxonomy\": \"download_category\",\n                        \"description\": \"\",\n                        \"parent\": 0,\n                        \"count\": 8,\n                        \"filter\": \"raw\"\n                    }\n                ],\n                \"tags\": false\n            },\n            \"pricing\": {\n                \"amount\": \"19.99\"\n            }\n        },\n        {\n            \"info\": {\n                \"id\": 10243,\n                \"slug\": \"wp-travel-field-editor\",\n                \"title\": \"WP Travel Field Editor\",\n                \"create_date\": \"2019-02-06 10:11:53\",\n                \"modified_date\": \"2019-03-08 09:57:18\",\n                \"status\": \"publish\",\n                \"link\": \"http:\\/\\/wptravel.io\\/?post_type=download&p=10243\",\n                \"content\": \"If you are wondering how to add a new fields in the forms of the WP Travel plugin then you are at right place. The WP Travel Field Editor provides an interface to add, edit and remove fields that are displayed in Trip Enquiry fields, Traveler info fields, and Billing fields.\\r\\n\\r\\nFields can be added, edited and removed from the billing and traveler info and trip\\u00a0enquiry form sections.\\r\\n\\r\\nNote:\\u00a0This plugin requires WP Travel plugin to be installed, activated.\",\n                \"excerpt\": \"\",\n                \"thumbnail\": \"https:\\/\\/wptravel.io\\/wp-content\\/uploads\\/edd\\/2019\\/02\\/wp-travel-field-editor-logo.png\",\n                \"category\": [\n                    {\n                        \"term_id\": 2018,\n                        \"name\": \"Forms\",\n                        \"slug\": \"forms\",\n                        \"term_group\": 0,\n                        \"term_taxonomy_id\": 2018,\n                        \"taxonomy\": \"download_category\",\n                        \"description\": \"\",\n                        \"parent\": 0,\n                        \"count\": 1,\n                        \"filter\": \"raw\"\n                    },\n                    {\n                        \"term_id\": 2017,\n                        \"name\": \"Miscellaneous\",\n                        \"slug\": \"miscellaneous\",\n                        \"term_group\": 0,\n                        \"term_taxonomy_id\": 2017,\n                        \"taxonomy\": \"download_category\",\n                        \"description\": \"\",\n                        \"parent\": 0,\n                        \"count\": 5,\n                        \"filter\": \"raw\"\n                    }\n                ],\n                \"tags\": false\n            },\n            \"pricing\": {\n                \"amount\": \"15.99\"\n            }\n        }\n    ],\n    \"request_speed\": 0.0072100162506103515625\n}', 'yes'),
(2849, '_site_transient__transient_wt_booking_count_360', '0', 'no'),
(3088, 'itinerary_types_children', 'a:0:{}', 'yes'),
(3112, 'activity_children', 'a:0:{}', 'yes'),
(3252, 'travel_locations_children', 'a:2:{i:120;a:1:{i:0;i:123;}i:123;a:1:{i:0;i:124;}}', 'yes'),
(3690, 'price_children', 'a:0:{}', 'yes'),
(3721, 'tourhotelname_children', 'a:0:{}', 'yes'),
(3731, 'facilities_children', 'a:0:{}', 'yes'),
(3738, 'departuretime_children', 'a:0:{}', 'yes'),
(4929, 'hotelfacilities_children', 'a:0:{}', 'yes'),
(5291, 'hotelrating_children', 'a:0:{}', 'yes'),
(6105, 'mphb_registered_attributes', 'a:0:{}', 'yes'),
(6106, 'widget_mphb_rooms_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(6107, 'widget_mphb_search_availability_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(6124, 'mphb_db_version', '3.2.0', 'yes'),
(6125, 'mphb_max_stay_length', 'a:1:{i:0;a:3:{s:15:\"max_stay_length\";i:15;s:13:\"room_type_ids\";a:1:{i:0;i:0;}s:10:\"season_ids\";a:1:{i:0;i:0;}}}', 'no'),
(6128, 'mphb_email_hotel_admin_email', 'milon@gmail.com', 'yes'),
(6129, 'mphb_email_from_email', 'test@gmail.com', 'yes'),
(6161, 'mphb_room_type_facility_children', 'a:0:{}', 'yes'),
(6164, 'mphb_search_results_page', '382', 'yes'),
(6165, 'mphb_checkout_page', '385', 'yes'),
(6166, 'mphb_booking_confirmation_page', '386', 'yes'),
(6167, 'mphb_user_cancel_redirect_page', '387', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(6168, 'mphb_payment_success_page', '388', 'yes'),
(6169, 'mphb_payment_failed_page', '389', 'yes'),
(6170, 'mphb_wizard_passed', '1', 'yes'),
(6256, 'mphb_terms_and_conditions_page', '382', 'yes'),
(6257, 'mphb_confirmation_mode', 'payment', 'yes'),
(6258, 'mphb_user_approval_time', '20', 'yes'),
(6259, 'mphb_require_country', '1', 'yes'),
(6260, 'mphb_require_full_address', '0', 'yes'),
(6261, 'mphb_default_country', 'BD', 'yes'),
(6262, 'mphb_unfold_price_breakdown', '1', 'yes'),
(6263, 'mphb_user_can_cancel_booking', '1', 'yes'),
(6264, 'mphb_search_max_adults', '30', 'yes'),
(6265, 'mphb_search_max_children', '10', 'yes'),
(6266, 'mphb_children_age', '3', 'yes'),
(6267, 'mphb_direct_booking', '0', 'yes'),
(6268, 'mphb_guest_management', 'allow-all', 'yes'),
(6269, 'mphb_hide_guests_on_search', '0', 'yes'),
(6270, 'mphb_square_unit', 'm2', 'yes'),
(6271, 'mphb_currency_symbol', 'USD', 'yes'),
(6272, 'mphb_currency_position', 'before', 'yes'),
(6273, 'mphb_datepicker_date_format', 'd/m/Y', 'yes'),
(6274, 'mphb_check_out_time', '10:00', 'yes'),
(6275, 'mphb_check_in_time', '11:00', 'yes'),
(6276, 'mphb_bed_types', 'a:0:{}', 'yes'),
(6277, 'mphb_average_price_period', '7', 'yes'),
(6278, 'mphb_enable_recommendation', '1', 'yes'),
(6279, 'mphb_enable_coupons', '0', 'yes'),
(6280, 'mphb_template_mode', 'theme', 'yes'),
(6281, 'mphb_checkout_text', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>', 'yes'),
(6282, 'mphb_booking_disabled', '0', 'yes'),
(6283, 'mphb_disabled_booking_text', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>', 'yes'),
(6284, 'mphb_single_room_type_gallery_use_magnific', '1', 'yes'),
(6285, 'mphb_datepicker_theme', '', 'yes'),
(6286, 'mphb_use_block_editor_for_room_types', '1', 'yes'),
(6287, 'mphb_use_block_editor_for_services', '1', 'yes'),
(6298, 'mphb_email_from_name', 'test', 'yes'),
(6299, 'mphb_email_logo', 'nh', 'yes'),
(6300, 'mphb_email_footer_text', '<p><a href=\"http://localhost/project\">projct new development</a></p>', 'yes'),
(6301, 'mphb_email_reserved_room_details', '<h4>Accommodation #%room_key%</h4>\r\n<p>Adults: %adults%<br />Children: %children%<br />Accommodation: <a href=\"%room_type_link%\">%room_type_title%</a><br />Accommodation Rate: %room_rate_title%<br />%room_rate_description% <br />Bed Type: %room_type_bed_type%</p>\r\n<h4>Additional Services</h4>\r\n<p>%services% </p>', 'yes'),
(6302, 'mphb_email_base_color', '#557da1', 'yes'),
(6303, 'mphb_email_bg_color', '#f5f5f5', 'yes'),
(6304, 'mphb_email_body_bg_color', '#fdfdfd', 'yes'),
(6305, 'mphb_email_body_text_color', '#505050', 'yes'),
(7028, '_mphb_wp_session_dc1847569bb318e8ca444217ffc1b0df', 'a:1:{s:22:\"mphb_search_parameters\";s:151:\"a:4:{s:11:\"mphb_adults\";s:1:\"1\";s:13:\"mphb_children\";s:1:\"0\";s:18:\"mphb_check_in_date\";s:10:\"2019-04-03\";s:19:\"mphb_check_out_date\";s:10:\"2019-04-17\";}\";}', 'no'),
(7055, '_mphb_wp_session_expires_dc1847569bb318e8ca444217ffc1b0df', '1554195892', 'no'),
(7075, 'tp_hotel_booking_single_purchase', '1', 'yes'),
(7076, 'tp_hotel_booking_currency', 'USD', 'yes'),
(7077, 'tp_hotel_booking_price_currency_position', 'left', 'yes'),
(7078, 'tp_hotel_booking_price_thousands_separator', ',', 'yes'),
(7079, 'tp_hotel_booking_price_decimals_separator', '.', 'yes'),
(7080, 'tp_hotel_booking_price_number_of_decimal', '1', 'yes'),
(7081, 'tp_hotel_booking_minimum_booking_day', '1', 'yes'),
(7082, 'tp_hotel_booking_tax', '10', 'yes'),
(7083, 'tp_hotel_booking_price_including_tax', '1', 'yes'),
(7084, 'tp_hotel_booking_price_display', 'min', 'yes'),
(7085, 'tp_hotel_booking_advance_payment', '50', 'yes'),
(7086, 'tp_hotel_booking_hotel_name', 'Hanoi Daewoo Hotel', 'yes'),
(7087, 'tp_hotel_booking_hotel_address', 'Ha Noi', 'yes'),
(7088, 'tp_hotel_booking_hotel_city', 'Ha Noi', 'yes'),
(7089, 'tp_hotel_booking_hotel_state', 'Hanoi Daewoo Hotel', 'yes'),
(7090, 'tp_hotel_booking_hotel_country', 'Vietnam', 'yes'),
(7091, 'tp_hotel_booking_hotel_zip_code', '10000', 'yes'),
(7092, 'tp_hotel_booking_hotel_phone_number', '', 'yes'),
(7093, 'tp_hotel_booking_hotel_fax_number', '', 'yes'),
(7094, 'tp_hotel_booking_hotel_email_address', '', 'yes'),
(7095, 'tp_hotel_booking_email_general_from_name', 'projct new development', 'yes'),
(7096, 'tp_hotel_booking_email_general_from_email', 'admin@gmail.com', 'yes'),
(7097, 'tp_hotel_booking_email_general_subject', 'Reservation', 'yes'),
(7098, 'tp_hotel_booking_cancel_payment', '12', 'yes'),
(7099, 'tp_hotel_booking_guest_checkout', '1', 'yes'),
(7100, 'tp_hotel_booking_catalog_number_column', '4', 'yes'),
(7101, 'tp_hotel_booking_posts_per_page', '8', 'yes'),
(7102, 'tp_hotel_booking_catalog_image', 'a:2:{s:5:\"width\";i:270;s:6:\"height\";i:270;}', 'yes'),
(7103, 'tp_hotel_booking_catalog_display_rating', '1', 'yes'),
(7104, 'tp_hotel_booking_room_image_gallery', 'a:2:{s:5:\"width\";i:270;s:6:\"height\";i:270;}', 'yes'),
(7105, 'tp_hotel_booking_room_thumbnail', 'a:2:{s:5:\"width\";i:150;s:6:\"height\";i:150;}', 'yes'),
(7106, 'tp_hotel_booking_display_pricing_plans', '1', 'yes'),
(7107, 'tp_hotel_booking_enable_review_rating', '1', 'yes'),
(7108, 'tp_hotel_booking_review_rating_required', '1', 'yes'),
(7109, 'tp_hotel_booking_enable_gallery_lightbox', '1', 'yes'),
(7110, 'hotel_booking_version', '1.9.8.7', 'yes'),
(7114, 'widget_hb_widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(7115, 'widget_hb_widget_carousel', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(7116, 'widget_hb_widget_best_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(7117, 'widget_hb_widget_lastest_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(7118, 'widget_hb_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(7122, 'hotel_booking_rooms_page_id', '400', 'yes'),
(7123, 'tp_hotel_booking_rooms_page_id', '400', 'yes'),
(7124, 'hotel_booking_cart_page_id', '401', 'yes'),
(7125, 'tp_hotel_booking_cart_page_id', '401', 'yes'),
(7126, 'hotel_booking_checkout_page_id', '402', 'yes'),
(7127, 'tp_hotel_booking_checkout_page_id', '402', 'yes'),
(7128, 'hotel_booking_search_page_id', '403', 'yes'),
(7129, 'tp_hotel_booking_search_page_id', '403', 'yes'),
(7130, 'hotel_booking_account_page_id', '404', 'yes'),
(7131, 'tp_hotel_booking_account_page_id', '404', 'yes'),
(7132, 'hotel_booking_terms_page_id', '405', 'yes'),
(7133, 'tp_hotel_booking_terms_page_id', '405', 'yes'),
(7134, 'hotel_booking_thankyou_page_id', '406', 'yes'),
(7135, 'tp_hotel_booking_thankyou_page_id', '406', 'yes'),
(7390, '_mphb_wp_session_expires_53ae0c29b9f277521dce04b404cda5ee', '1554265342', 'no'),
(7449, 'mphb_room_type_category_children', 'a:0:{}', 'yes'),
(7545, '_mphb_wp_session_53ae0c29b9f277521dce04b404cda5ee', 'a:1:{s:22:\"mphb_search_parameters\";s:151:\"a:4:{s:11:\"mphb_adults\";s:1:\"2\";s:13:\"mphb_children\";s:1:\"3\";s:18:\"mphb_check_in_date\";s:10:\"2019-04-03\";s:19:\"mphb_check_out_date\";s:10:\"2019-04-04\";}\";}', 'no'),
(7594, 'tp_hotel_booking_custom_process', '1', 'yes'),
(7622, 'hb_room_type_children', 'a:0:{}', 'yes'),
(7718, 'tp_hotel_booking_catalog_image_width', '270', 'yes'),
(7719, 'tp_hotel_booking_catalog_image_height', '270', 'yes'),
(7720, 'tp_hotel_booking_room_image_gallery_width', '1000', 'yes'),
(7721, 'tp_hotel_booking_room_image_gallery_height', '1000', 'yes'),
(7722, 'tp_hotel_booking_room_thumbnail_width', '150', 'yes'),
(7723, 'tp_hotel_booking_room_thumbnail_height', '150', 'yes'),
(7982, '_transient_timeout__redux_activation_redirect', '1611578926', 'no'),
(7983, '_transient__redux_activation_redirect', '1', 'no'),
(8143, 'booking_activation_process', 'Off', 'yes'),
(8144, 'booking_admin_cal_count', '2', 'yes'),
(8145, 'booking_skin', '/css/skins/traditional.css', 'yes'),
(8146, 'booking_num_per_page', '10', 'yes'),
(8147, 'booking_sort_order', '', 'yes'),
(8148, 'booking_default_toolbar_tab', 'filter', 'yes'),
(8149, 'booking_listing_default_view_mode', 'vm_calendar', 'yes'),
(8150, 'booking_view_days_num', '90', 'yes'),
(8151, 'booking_max_monthes_in_calendar', '1y', 'yes'),
(8152, 'booking_client_cal_count', '1', 'yes'),
(8153, 'booking_start_day_weeek', '0', 'yes'),
(8154, 'booking_title_after_reservation', 'Thank you for your online booking.  We will send confirmation of your booking as soon as possible.', 'yes'),
(8155, 'booking_title_after_reservation_time', '7000', 'yes'),
(8156, 'booking_type_of_thank_you_message', 'message', 'yes'),
(8157, 'booking_thank_you_page_URL', '/thank-you', 'yes'),
(8158, 'booking_is_use_autofill_4_logged_user', 'Off', 'yes'),
(8159, 'booking_date_format', 'F j, Y', 'yes'),
(8160, 'booking_date_view_type', 'short', 'yes'),
(8161, 'booking_is_delete_if_deactive', 'Off', 'yes'),
(8162, 'booking_dif_colors_approval_pending', 'On', 'yes'),
(8163, 'booking_is_use_hints_at_admin_panel', 'On', 'yes'),
(8164, 'booking_is_not_load_bs_script_in_client', 'Off', 'yes'),
(8165, 'booking_is_not_load_bs_script_in_admin', 'Off', 'yes'),
(8166, 'booking_is_load_js_css_on_specific_pages', 'Off', 'yes'),
(8167, 'booking_is_show_system_debug_log', 'Off', 'yes'),
(8168, 'booking_pages_for_load_js_css', '', 'yes'),
(8169, 'booking_type_of_day_selections', 'multiple', 'yes'),
(8170, 'booking_timeslot_day_bg_as_available', 'On', 'yes'),
(8171, 'booking_form_is_using_bs_css', 'On', 'yes'),
(8172, 'booking_form_format_type', 'vertical', 'yes'),
(8173, 'booking_form_field_active1', 'On', 'yes'),
(8174, 'booking_form_field_required1', 'On', 'yes'),
(8175, 'booking_form_field_label1', 'First Name', 'yes'),
(8176, 'booking_form_field_active2', 'On', 'yes'),
(8177, 'booking_form_field_required2', 'On', 'yes'),
(8178, 'booking_form_field_label2', 'Last Name', 'yes'),
(8179, 'booking_form_field_active3', 'On', 'yes'),
(8180, 'booking_form_field_required3', 'On', 'yes'),
(8181, 'booking_form_field_label3', 'Email', 'yes'),
(8182, 'booking_form_field_active4', 'On', 'yes'),
(8183, 'booking_form_field_required4', 'Off', 'yes'),
(8184, 'booking_form_field_label4', 'Phone', 'yes'),
(8185, 'booking_form_field_active5', 'On', 'yes'),
(8186, 'booking_form_field_required5', 'Off', 'yes'),
(8187, 'booking_form_field_label5', 'Details', 'yes'),
(8188, 'booking_form_field_active6', 'Off', 'yes'),
(8189, 'booking_form_field_required6', 'Off', 'yes'),
(8190, 'booking_form_field_label6', 'Visitors', 'yes'),
(8191, 'booking_form_field_values6', '1\n2\n3\n4', 'yes'),
(8192, 'booking_is_days_always_available', 'Off', 'yes'),
(8193, 'booking_is_show_pending_days_as_available', 'Off', 'yes'),
(8194, 'booking_check_on_server_if_dates_free', 'Off', 'yes'),
(8195, 'booking_unavailable_days_num_from_today', '0', 'yes'),
(8196, 'booking_unavailable_day0', 'On', 'yes'),
(8197, 'booking_unavailable_day1', 'On', 'yes'),
(8198, 'booking_unavailable_day2', 'On', 'yes'),
(8199, 'booking_unavailable_day3', 'On', 'yes'),
(8200, 'booking_unavailable_day4', 'On', 'yes'),
(8201, 'booking_unavailable_day5', 'On', 'yes'),
(8202, 'booking_unavailable_day6', 'On', 'yes'),
(8203, 'booking_menu_position', 'top', 'yes'),
(8204, 'booking_user_role_booking', 'editor', 'yes'),
(8205, 'booking_user_role_addbooking', 'editor', 'yes'),
(8206, 'booking_user_role_resources', 'editor', 'yes'),
(8207, 'booking_user_role_settings', 'administrator', 'yes'),
(8208, 'booking_is_email_reservation_adress', 'On', 'yes'),
(8209, 'booking_email_reservation_adress', '&quot;Booking system&quot; &lt;admin@gmail.com&gt;', 'yes'),
(8210, 'booking_email_reservation_from_adress', '[visitoremail]', 'yes'),
(8211, 'booking_email_reservation_subject', 'New booking', 'yes'),
(8212, 'booking_email_reservation_content', 'You need to approve a new booking [bookingtype] for: [dates]&lt;br/&gt;&lt;br/&gt; Person detail information:&lt;br/&gt; [content]&lt;br/&gt;&lt;br/&gt; Currently a new booking is waiting for approval. Please visit the moderation panel [moderatelink]&lt;br/&gt;&lt;br/&gt;Thank you, projct new development&lt;br/&gt;[siteurl]', 'yes'),
(8213, 'booking_is_email_newbookingbyperson_adress', 'Off', 'yes'),
(8214, 'booking_email_newbookingbyperson_adress', '&quot;Booking system&quot; &lt;admin@gmail.com&gt;', 'yes'),
(8215, 'booking_email_newbookingbyperson_subject', 'New booking', 'yes'),
(8216, 'booking_email_newbookingbyperson_content', 'Your reservation [bookingtype] for: [dates] is processing now! We will send confirmation by email. &lt;br/&gt;&lt;br/&gt;[content]&lt;br/&gt;&lt;br/&gt; Thank you, projct new development&lt;br/&gt;[siteurl]', 'yes'),
(8217, 'booking_is_email_approval_adress', 'On', 'yes'),
(8218, 'booking_is_email_approval_send_copy_to_admin', 'Off', 'yes'),
(8219, 'booking_email_approval_adress', '&quot;Booking system&quot; &lt;admin@gmail.com&gt;', 'yes'),
(8220, 'booking_email_approval_subject', 'Your booking has been approved', 'yes'),
(8221, 'booking_email_approval_content', 'Your booking [bookingtype] for: [dates] has been approved.&lt;br/&gt;&lt;br/&gt;[content]&lt;br/&gt;&lt;br/&gt;Thank you, projct new development&lt;br/&gt;[siteurl]', 'yes'),
(8222, 'booking_is_email_deny_adress', 'On', 'yes'),
(8223, 'booking_is_email_deny_send_copy_to_admin', 'Off', 'yes'),
(8224, 'booking_email_deny_adress', '&quot;Booking system&quot; &lt;admin@gmail.com&gt;', 'yes'),
(8225, 'booking_email_deny_subject', 'Your booking has been declined', 'yes'),
(8226, 'booking_email_deny_content', 'Your booking [bookingtype] for: [dates] has been  canceled. &lt;br/&gt;[denyreason]&lt;br/&gt;&lt;br/&gt;[content]&lt;br/&gt;&lt;br/&gt;Thank you, projct new development&lt;br/&gt;[siteurl]', 'yes'),
(8227, 'booking_widget_title', 'Booking form', 'yes'),
(8228, 'booking_widget_show', 'booking_form', 'yes'),
(8229, 'booking_widget_type', '1', 'yes'),
(8230, 'booking_widget_calendar_count', '1', 'yes'),
(8231, 'booking_widget_last_field', '', 'yes'),
(8232, 'booking_wpdev_copyright_adminpanel', 'On', 'yes'),
(8233, 'booking_is_show_powered_by_notice', 'On', 'yes'),
(8234, 'booking_is_use_captcha', 'Off', 'yes'),
(8235, 'booking_is_show_legend', 'Off', 'yes'),
(8236, 'booking_legend_is_show_item_available', 'On', 'yes'),
(8237, 'booking_legend_text_for_item_available', 'Available', 'yes'),
(8238, 'booking_legend_is_show_item_pending', 'On', 'yes'),
(8239, 'booking_legend_text_for_item_pending', 'Pending', 'yes'),
(8240, 'booking_legend_is_show_item_approved', 'On', 'yes'),
(8241, 'booking_legend_text_for_item_approved', 'Booked', 'yes'),
(8242, 'booking_legend_is_show_numbers', 'Off', 'yes'),
(8243, 'booking_email_new_admin', 'a:15:{s:7:\"enabled\";s:2:\"On\";s:2:\"to\";s:15:\"admin@gmail.com\";s:7:\"to_name\";s:14:\"Booking system\";s:4:\"from\";s:15:\"admin@gmail.com\";s:9:\"from_name\";s:14:\"Booking system\";s:7:\"subject\";s:11:\"New booking\";s:7:\"content\";s:277:\"You need to approve a new booking [bookingtype] for: [dates]<br/><br/> Person detail information:<br/> [content]<br/><br/> Currently a new booking is waiting for approval. Please visit the moderation panel [moderatelink]<br/><br/>Thank you, projct new development<br/>[siteurl]\";s:14:\"header_content\";s:0:\"\";s:14:\"footer_content\";s:0:\"\";s:13:\"template_file\";s:5:\"plain\";s:10:\"base_color\";s:7:\"#557da1\";s:16:\"background_color\";s:7:\"#f5f5f5\";s:10:\"body_color\";s:7:\"#fdfdfd\";s:10:\"text_color\";s:7:\"#505050\";s:18:\"email_content_type\";s:4:\"html\";}', 'yes'),
(8244, 'booking_email_new_visitor', 'a:13:{s:7:\"enabled\";s:2:\"On\";s:4:\"from\";s:15:\"admin@gmail.com\";s:9:\"from_name\";s:14:\"Booking system\";s:7:\"subject\";s:11:\"New booking\";s:7:\"content\";s:176:\"Your reservation [bookingtype] for: [dates] is processing now! We will send confirmation by email. <br/><br/>[content]<br/><br/> Thank you, projct new development<br/>[siteurl]\";s:14:\"header_content\";s:0:\"\";s:14:\"footer_content\";s:0:\"\";s:13:\"template_file\";s:5:\"plain\";s:10:\"base_color\";s:7:\"#557da1\";s:16:\"background_color\";s:7:\"#f5f5f5\";s:10:\"body_color\";s:7:\"#fdfdfd\";s:10:\"text_color\";s:7:\"#505050\";s:18:\"email_content_type\";s:4:\"html\";}', 'yes'),
(8245, 'booking_email_approved', 'a:16:{s:7:\"enabled\";s:2:\"On\";s:13:\"copy_to_admin\";s:3:\"Off\";s:2:\"to\";s:15:\"admin@gmail.com\";s:7:\"to_name\";s:14:\"Booking system\";s:4:\"from\";s:15:\"admin@gmail.com\";s:9:\"from_name\";s:14:\"Booking system\";s:7:\"subject\";s:30:\"Your booking has been approved\";s:7:\"content\";s:134:\"Your booking [bookingtype] for: [dates] has been approved.<br/><br/>[content]<br/><br/>Thank you, projct new development<br/>[siteurl]\";s:14:\"header_content\";s:0:\"\";s:14:\"footer_content\";s:0:\"\";s:13:\"template_file\";s:5:\"plain\";s:10:\"base_color\";s:7:\"#557da1\";s:16:\"background_color\";s:7:\"#f5f5f5\";s:10:\"body_color\";s:7:\"#fdfdfd\";s:10:\"text_color\";s:7:\"#505050\";s:18:\"email_content_type\";s:4:\"html\";}', 'yes'),
(8246, 'booking_email_deleted', 'a:16:{s:7:\"enabled\";s:2:\"On\";s:13:\"copy_to_admin\";s:3:\"Off\";s:2:\"to\";s:15:\"admin@gmail.com\";s:7:\"to_name\";s:14:\"Booking system\";s:4:\"from\";s:15:\"admin@gmail.com\";s:9:\"from_name\";s:14:\"Booking system\";s:7:\"subject\";s:30:\"Your booking has been declined\";s:7:\"content\";s:153:\"Your booking [bookingtype] for: [dates] has been  canceled. <br/>[denyreason]<br/><br/>[content]<br/><br/>Thank you, projct new development<br/>[siteurl]\";s:14:\"header_content\";s:0:\"\";s:14:\"footer_content\";s:0:\"\";s:13:\"template_file\";s:5:\"plain\";s:10:\"base_color\";s:7:\"#557da1\";s:16:\"background_color\";s:7:\"#f5f5f5\";s:10:\"body_color\";s:7:\"#fdfdfd\";s:10:\"text_color\";s:7:\"#505050\";s:18:\"email_content_type\";s:4:\"html\";}', 'yes'),
(8247, 'booking_email_deny', 'a:16:{s:7:\"enabled\";s:2:\"On\";s:13:\"copy_to_admin\";s:3:\"Off\";s:2:\"to\";s:15:\"admin@gmail.com\";s:7:\"to_name\";s:14:\"Booking system\";s:4:\"from\";s:15:\"admin@gmail.com\";s:9:\"from_name\";s:14:\"Booking system\";s:7:\"subject\";s:30:\"Your booking has been declined\";s:7:\"content\";s:153:\"Your booking [bookingtype] for: [dates] has been  canceled. <br/>[denyreason]<br/><br/>[content]<br/><br/>Thank you, projct new development<br/>[siteurl]\";s:14:\"header_content\";s:0:\"\";s:14:\"footer_content\";s:0:\"\";s:13:\"template_file\";s:5:\"plain\";s:10:\"base_color\";s:7:\"#557da1\";s:16:\"background_color\";s:7:\"#f5f5f5\";s:10:\"body_color\";s:7:\"#fdfdfd\";s:10:\"text_color\";s:7:\"#505050\";s:18:\"email_content_type\";s:4:\"html\";}', 'yes'),
(8248, 'booking_email_trash', 'a:16:{s:7:\"enabled\";s:2:\"On\";s:13:\"copy_to_admin\";s:3:\"Off\";s:2:\"to\";s:15:\"admin@gmail.com\";s:7:\"to_name\";s:14:\"Booking system\";s:4:\"from\";s:15:\"admin@gmail.com\";s:9:\"from_name\";s:14:\"Booking system\";s:7:\"subject\";s:30:\"Your booking has been declined\";s:7:\"content\";s:153:\"Your booking [bookingtype] for: [dates] has been  canceled. <br/>[denyreason]<br/><br/>[content]<br/><br/>Thank you, projct new development<br/>[siteurl]\";s:14:\"header_content\";s:0:\"\";s:14:\"footer_content\";s:0:\"\";s:13:\"template_file\";s:5:\"plain\";s:10:\"base_color\";s:7:\"#557da1\";s:16:\"background_color\";s:7:\"#f5f5f5\";s:10:\"body_color\";s:7:\"#fdfdfd\";s:10:\"text_color\";s:7:\"#505050\";s:18:\"email_content_type\";s:4:\"html\";}', 'yes'),
(8249, 'booking_form_structure_type', 'vertical', 'yes'),
(8250, 'booking_menu_go_pro', 'show', 'yes'),
(8251, 'booking_form', '<div class=\"wpbc_booking_form_structure wpbc_vertical\">\n  <div class=\"wpbc_structure_calendar\">\n    [calendar]\n  </div>\n  <div class=\"wpbc_structure_form\">\n     <p>First Name*:<br />[text* name]</p>\n     <p>Last Name*:<br />[text* secondname]</p>\n     <p>Email*:<br />[email* email]</p>\n     <p>Phone:<br />[text phone]</p>\n     <p>Details:<br />[textarea details]</p>\n     <p>[captcha]</p>\n     <p>[submit class:btn \"Send\"]</p>\n  </div>\n</div>\n<div class=\"wpbc_booking_form_footer\"></div>', 'yes'),
(8252, 'booking_form_show', '<div style=\"text-align:left;word-wrap: break-word;\">\n  <strong>First Name</strong>: <span class=\"fieldvalue\">[name]</span><br/>\n  <strong>Last Name</strong>: <span class=\"fieldvalue\">[secondname]</span><br/>\n  <strong>Email</strong>: <span class=\"fieldvalue\">[email]</span><br/>\n  <strong>Phone</strong>: <span class=\"fieldvalue\">[phone]</span><br/>\n  <strong>Details</strong>: <span class=\"fieldvalue\">[details]</span><br/>\n</div>', 'yes'),
(8253, 'booking_form_visual', 'a:9:{i:0;a:2:{s:4:\"type\";s:8:\"calendar\";s:10:\"obligatory\";s:2:\"On\";}i:1;a:6:{s:4:\"type\";s:4:\"text\";s:4:\"name\";s:4:\"name\";s:10:\"obligatory\";s:3:\"Off\";s:6:\"active\";s:2:\"On\";s:8:\"required\";s:2:\"On\";s:5:\"label\";s:10:\"First Name\";}i:2;a:6:{s:4:\"type\";s:4:\"text\";s:4:\"name\";s:10:\"secondname\";s:10:\"obligatory\";s:3:\"Off\";s:6:\"active\";s:2:\"On\";s:8:\"required\";s:2:\"On\";s:5:\"label\";s:9:\"Last Name\";}i:3;a:6:{s:4:\"type\";s:5:\"email\";s:4:\"name\";s:5:\"email\";s:10:\"obligatory\";s:2:\"On\";s:6:\"active\";s:2:\"On\";s:8:\"required\";s:2:\"On\";s:5:\"label\";s:5:\"Email\";}i:4;a:7:{s:4:\"type\";s:6:\"select\";s:4:\"name\";s:8:\"visitors\";s:10:\"obligatory\";s:3:\"Off\";s:6:\"active\";s:3:\"Off\";s:8:\"required\";s:3:\"Off\";s:5:\"label\";s:8:\"Visitors\";s:5:\"value\";s:7:\"1\n2\n3\n4\";}i:5;a:6:{s:4:\"type\";s:4:\"text\";s:4:\"name\";s:5:\"phone\";s:10:\"obligatory\";s:3:\"Off\";s:6:\"active\";s:2:\"On\";s:8:\"required\";s:3:\"Off\";s:5:\"label\";s:5:\"Phone\";}i:6;a:6:{s:4:\"type\";s:8:\"textarea\";s:4:\"name\";s:7:\"details\";s:10:\"obligatory\";s:3:\"Off\";s:6:\"active\";s:2:\"On\";s:8:\"required\";s:3:\"Off\";s:5:\"label\";s:7:\"Details\";}i:7;a:6:{s:4:\"type\";s:7:\"captcha\";s:4:\"name\";s:7:\"captcha\";s:10:\"obligatory\";s:2:\"On\";s:6:\"active\";s:3:\"Off\";s:8:\"required\";s:2:\"On\";s:5:\"label\";s:0:\"\";}i:8;a:6:{s:4:\"type\";s:6:\"submit\";s:4:\"name\";s:6:\"submit\";s:10:\"obligatory\";s:2:\"On\";s:6:\"active\";s:2:\"On\";s:8:\"required\";s:2:\"On\";s:5:\"label\";s:4:\"Send\";}}', 'yes'),
(8254, 'booking_gcal_feed', '', 'yes'),
(8255, 'booking_gcal_events_from', 'month-start', 'yes'),
(8256, 'booking_gcal_events_from_offset', '', 'yes'),
(8257, 'booking_gcal_events_from_offset_type', '', 'yes'),
(8258, 'booking_gcal_events_until', 'any', 'yes'),
(8259, 'booking_gcal_events_until_offset', '', 'yes'),
(8260, 'booking_gcal_events_until_offset_type', '', 'yes'),
(8261, 'booking_gcal_events_max', '25', 'yes'),
(8262, 'booking_gcal_api_key', '', 'yes'),
(8263, 'booking_gcal_timezone', '', 'yes'),
(8264, 'booking_gcal_is_send_email', 'Off', 'yes'),
(8265, 'booking_gcal_auto_import_is_active', 'Off', 'yes'),
(8266, 'booking_gcal_auto_import_time', '24', 'yes'),
(8267, 'booking_gcal_events_form_fields', 's:101:\"a:3:{s:5:\"title\";s:9:\"text^name\";s:11:\"description\";s:16:\"textarea^details\";s:5:\"where\";s:5:\"text^\";}\";', 'yes'),
(8268, 'booking_version_num', '8.4.6', 'yes'),
(8272, 'widget_bookingwidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(8276, 'booking_activation_redirect_for_version', '8.4.6', 'yes'),
(8404, 'widget_wpsimplebookingcalendar_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(8416, 'wp-simple-booking-calendar-options', 'a:1:{s:9:\"calendars\";a:1:{i:1;a:4:{s:12:\"calendarName\";s:13:\"Hotel Booking\";s:12:\"calendarJson\";s:113:\"{\"year2019\":{\"month4\":{\"day1\":\"booked\",\"day2\":\"booked\",\"day3\":\"booked\",\"day4\":\"changeover\",\"day5\":\"changeover\"}}}\";s:11:\"dateCreated\";i:1554275383;s:12:\"dateModified\";i:1554275500;}}}', 'yes'),
(8649, 'wpbooking_update_1_0_7', 'updated', 'yes'),
(8650, 'wpbooking_update_1_0_7_hotel_room_order', 'updated', 'yes'),
(8651, 'wpbooking_service_version', '1.2', 'yes'),
(8652, 'wpbooking_order_version', '1.0.5', 'yes'),
(8653, 'wpbooking_order_hotel_room_version', '1.3', 'yes'),
(8654, 'wpbooking_availability_version', '1.2', 'yes'),
(8655, 'wpbooking_payment_version', '1.0', 'yes'),
(8656, 'wpbooking_favorite_version', '1.0', 'yes'),
(8657, 'wpbooking_review_helpful_version', '1.0.1', 'yes'),
(8658, 'wpbooking_availability_tour_version', '1.3', 'yes'),
(8659, 'widget_wpbooking_widget_form_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(8667, 'wpbooking_taxonomies', 'a:2:{s:13:\"wb_tax_1_star\";a:5:{s:5:\"label\";s:6:\"1 star\";s:4:\"name\";s:13:\"wb_tax_1_star\";s:12:\"hierarchical\";i:1;s:12:\"service_type\";a:2:{i:0;s:13:\"accommodation\";i:1;s:4:\"tour\";}s:4:\"slug\";s:6:\"1-star\";}s:13:\"wb_tax_2_star\";a:5:{s:5:\"label\";s:6:\"2 star\";s:4:\"name\";s:13:\"wb_tax_2_star\";s:12:\"hierarchical\";i:1;s:12:\"service_type\";b:0;s:4:\"slug\";s:6:\"2-star\";}}', 'yes'),
(8697, 'wb_tax_1_star_children', 'a:0:{}', 'yes'),
(8703, 'wb_hotel_room_type_children', 'a:0:{}', 'yes'),
(8704, 'tax_meta_156', 'a:1:{s:24:\"featured_image_room_type\";s:0:\"\";}', 'yes'),
(8709, 'wb_hotel_room_facilities_children', 'a:0:{}', 'yes'),
(8712, 'wb_tour_type_children', 'a:0:{}', 'yes'),
(8713, 'tax_meta_158', 'a:1:{s:24:\"featured_image_tour_type\";s:0:\"\";}', 'yes'),
(8719, 'wpbooking_amenity_children', 'a:0:{}', 'yes'),
(8725, 'wpbooking_extra_service_children', 'a:0:{}', 'yes'),
(8800, 'wpbooking_location_children', 'a:0:{}', 'yes'),
(8801, 'wb_tax_2_star_children', 'a:0:{}', 'yes'),
(8854, 'wpbooking_update_availability_tour', 'updated', 'no'),
(8855, 'wpbooking_update_availability_car', 'updated', 'no'),
(8856, 'wpbooking_update_base_price_tour', 'updated', 'no'),
(8857, 'wpbooking_update_status_order_hotel', 'updated', 'no'),
(8858, 'wpbooking_update_num_total_room', 'updated', 'no'),
(8859, 'wpbooking_update_num_total_room_in_hotel', 'updated', 'no'),
(8860, 'wpbooking_update_max_people_tour', 'updated', 'no'),
(9057, 'awebooking_version', '3.2.11', 'yes'),
(9058, 'awebooking_db_version', '3.2.11', 'yes'),
(9060, 'widget_awebooking_check_availability', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(9064, 'awebooking_admin_notices', 'a:0:{}', 'yes'),
(9065, 'awebooking_settings', 'a:74:{s:10:\"hotel_name\";s:22:\"projct new development\";s:10:\"calc_taxes\";s:2:\"on\";s:14:\"tax_rate_model\";s:6:\"single\";s:18:\"prices_include_tax\";s:2:\"no\";s:30:\"gateway_direct_payment_enabled\";s:3:\"off\";s:28:\"gateway_direct_payment_title\";s:12:\"Pay at Hotel\";s:20:\"gateway_bacs_enabled\";s:2:\"on\";s:18:\"gateway_bacs_title\";s:20:\"Direct bank transfer\";s:24:\"gateway_bacs_description\";s:102:\"Make your payment directly into our bank account. Please use your Booking ID as the payment reference.\";s:25:\"gateway_bacs_instructions\";s:0:\"\";s:21:\"gateway_bacs_accounts\";s:0:\"\";s:29:\"display_search_form_on_search\";s:2:\"on\";s:19:\"display_filter_form\";s:2:\"on\";s:20:\"use_experiment_style\";s:3:\"off\";s:22:\"search_form_max_adults\";s:1:\"6\";s:24:\"search_form_max_children\";s:1:\"6\";s:23:\"search_form_max_infants\";s:1:\"6\";s:18:\"archive_image_size\";a:3:{s:5:\"width\";i:600;s:6:\"height\";i:400;s:4:\"crop\";s:2:\"on\";}s:17:\"single_image_size\";a:3:{s:5:\"width\";i:900;s:6:\"height\";i:600;s:4:\"crop\";s:2:\"on\";}s:20:\"thumbnail_image_size\";a:3:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"crop\";s:2:\"on\";}s:24:\"email_invoice_email_type\";s:4:\"html\";s:23:\"email_invoice_recipient\";s:15:\"admin@gmail.com\";s:21:\"email_invoice_subject\";s:0:\"\";s:21:\"email_invoice_content\";s:0:\"\";s:25:\"email_new_booking_enabled\";s:2:\"on\";s:28:\"email_new_booking_email_type\";s:4:\"html\";s:27:\"email_new_booking_recipient\";s:15:\"admin@gmail.com\";s:25:\"email_new_booking_subject\";s:70:\"[{site_title}] New customer booking #{booking_number} - {booking_date}\";s:25:\"email_new_booking_content\";s:82:\"You have received a booking from {customer_first_name}. The booking is as follows:\";s:22:\"email_reserved_enabled\";s:2:\"on\";s:25:\"email_reserved_email_type\";s:4:\"html\";s:22:\"email_reserved_subject\";s:53:\"Your {site_title} booking receipt from {date_created}\";s:22:\"email_reserved_content\";s:125:\"Your booking is reserved until we confirm payment has been received. Your booking details are shown below for your reference:\";s:24:\"email_processing_enabled\";s:2:\"on\";s:27:\"email_processing_email_type\";s:4:\"html\";s:24:\"email_processing_subject\";s:53:\"Your {site_title} booking receipt from {date_created}\";s:24:\"email_processing_content\";s:115:\"Your booking has been received and is now being processed. Your booking details are shown below for your reference:\";s:23:\"email_completed_enabled\";s:2:\"on\";s:26:\"email_completed_email_type\";s:4:\"html\";s:23:\"email_completed_subject\";s:65:\"Your {site_title} booking receipt from {date_created} is complete\";s:23:\"email_completed_content\";s:122:\"Hi there. Your recent booking on {site_title} has been completed. Your booking details are shown below for your reference:\";s:23:\"email_cancelled_enabled\";s:2:\"on\";s:26:\"email_cancelled_email_type\";s:4:\"html\";s:23:\"email_cancelled_subject\";s:35:\"Cancelled booking #{booking_number}\";s:23:\"email_cancelled_content\";s:50:\"Your booking #{booking_number} has been cancelled!\";s:27:\"email_customer_note_enabled\";s:2:\"on\";s:30:\"email_customer_note_email_type\";s:4:\"html\";s:27:\"email_customer_note_subject\";s:39:\"Note added to your {site_title} booking\";s:27:\"email_customer_note_content\";s:67:\"Hello, a note has just been added to your booking:\n\n{customer_note}\";s:18:\"email_from_address\";s:15:\"admin@gmail.com\";s:16:\"email_base_color\";s:7:\"#2196f3\";s:21:\"email_body_text_color\";s:7:\"#74787E\";s:14:\"email_bg_color\";s:7:\"#ffffff\";s:19:\"email_body_bg_color\";s:7:\"#f7f7f7\";s:8:\"api_code\";s:0:\"\";s:15:\"enable_location\";s:2:\"on\";s:17:\"children_bookable\";s:2:\"on\";s:16:\"infants_bookable\";s:2:\"on\";s:16:\"reservation_mode\";s:13:\"multiple_room\";s:12:\"measure_unit\";s:2:\"m2\";s:23:\"page_check_availability\";i:382;s:13:\"page_checkout\";i:13;s:10:\"page_terms\";i:62;s:8:\"currency\";s:3:\"USD\";s:17:\"currency_position\";s:4:\"left\";s:24:\"price_thousand_separator\";s:1:\",\";s:23:\"price_decimal_separator\";s:1:\".\";s:21:\"price_number_decimals\";i:2;s:26:\"scheduler_display_duration\";i:30;s:28:\"display_datepicker_minnights\";i:1;s:28:\"display_datepicker_maxnights\";i:0;s:26:\"display_datepicker_mindate\";i:0;s:31:\"display_datepicker_disabledates\";s:0:\"\";s:30:\"display_datepicker_disabledays\";a:7:{i:0;i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;i:5;i:6;i:6;}}', 'yes'),
(9068, '_wp_session_awebooking_356a192b7913b04c54574d18c28d46e6395428ab', 'a:2:{s:7:\"payload\";a:1:{s:6:\"_flash\";a:2:{s:3:\"old\";a:0:{}s:3:\"new\";a:0:{}}}s:13:\"last_activity\";i:1554285951;}', 'no'),
(9093, 'hotel_amenity_children', 'a:0:{}', 'yes'),
(9137, '_transient_as_comment_count', 'O:8:\"stdClass\":7:{s:8:\"approved\";s:1:\"4\";s:14:\"total_comments\";i:4;s:3:\"all\";i:4;s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(9276, '_wp_session_awebooking_ZjRj56NEkxoKw1oif1gE2ljYBYtFtAeo3Xv5x2v4', 'a:2:{s:7:\"payload\";a:1:{s:6:\"_flash\";a:2:{s:3:\"old\";a:0:{}s:3:\"new\";a:0:{}}}s:13:\"last_activity\";i:1554285420;}', 'no'),
(9323, 'booking_package_timezone', 'UTC', 'yes'),
(9324, 'booking_package_javascriptSyntaxErrorNotification', '1', 'yes'),
(9325, 'booking_package_db_version', '0.4.4', 'yes'),
(9326, 'booking_package_activation_id', '0', 'yes'),
(9328, 'widget_booking_package_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(9331, 'booking_package_home_path', 'F:/xampp/htdocs/project/', 'yes'),
(9332, 'booking_package_version', '1.3.40', 'yes'),
(9340, 'booking_package_read_member_limit', '10', 'yes'),
(9341, 'booking_package_function_for_member', '0', 'yes'),
(9342, 'booking_package_reject_non_membder', '0', 'yes'),
(9343, 'booking_package_visitors_registration_for_member', '0', 'yes'),
(9344, 'booking_package_check_email_for_member', '0', 'yes'),
(9345, 'booking_package_accept_subscribers_as_users', '0', 'yes'),
(9346, 'booking_package_subject_email_for_member', '', 'yes'),
(9347, 'booking_package_body_email_for_member', '', 'yes'),
(9354, 'booking_package_ical_token', 'b1a2ce85e374f68632d64360c59619cf70247ab6', 'yes'),
(9355, '_booking-package_css_v', '1554286119', 'yes'),
(9357, 'booking_package_site_name', 'Site name', 'yes'),
(9358, 'booking_package_email_to', 'milon@gmail.com', 'yes'),
(9359, 'booking_package_email_title_to', 'milon@gmail.com', 'yes'),
(9360, 'booking_package_email_from', 'milon@gmail.com', 'yes'),
(9361, 'booking_package_email_title_from', 'milon@gmail.com', 'yes'),
(9362, 'booking_package_country', 'US', 'yes'),
(9363, 'booking_package_currency', 'usd', 'yes'),
(9364, 'booking_package_dateFormat', '0', 'yes'),
(9365, 'booking_package_positionOfWeek', 'before', 'yes'),
(9366, 'booking_package_automaticApprove', '1', 'yes'),
(9367, 'booking_package_headingPosition', '1', 'yes'),
(9368, 'booking_package_fontSize', '14px', 'yes'),
(9369, 'booking_package_backgroundColor', '#FFF', 'yes'),
(9370, 'booking_package_calendarBackgroundColorWithSchedule', '#FFF', 'yes'),
(9371, 'booking_package_calendarBackgroundColorWithNoSchedule', '#EEE', 'yes'),
(9372, 'booking_package_backgroundColorOfRegularHolidays', '#FFD5D5', 'yes'),
(9373, 'booking_package_scheduleAndServiceBackgroundColor', '#FFF', 'yes'),
(9374, 'booking_package_backgroundColorOfSelectedLabel', '#EAEDF3', 'yes'),
(9375, 'booking_package_mouseHover', '#EAEDF3', 'yes'),
(9376, 'booking_package_borderColor', '#ddd', 'yes'),
(9377, 'booking_package_paypal_active', '0', 'yes'),
(9378, 'booking_package_paypal_live', '0', 'yes'),
(9379, 'booking_package_paypal_client_id', '', 'yes'),
(9380, 'booking_package_paypal_secret_key', '', 'yes'),
(9462, 'booking_package_ical_active', '1', 'yes'),
(11302, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:4;s:3:\"all\";i:4;s:8:\"approved\";s:1:\"4\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(11604, '_site_transient__transient_wt_booking_stat_data', 'a:0:{}', 'no'),
(11605, '_site_transient__transient_wt_booking_top_country', 'a:1:{i:0;O:8:\"stdClass\":2:{s:8:\"wt_total\";s:1:\"1\";s:7:\"country\";s:2:\"AF\";}}', 'no'),
(11606, '_site_transient__transient_wt_booking_top_itinerary', 'a:1:{i:0;O:8:\"stdClass\":2:{s:8:\"wt_total\";s:1:\"1\";s:12:\"itinerary_id\";s:1:\"0\";}}', 'no'),
(12770, 'locationto_children', 'a:0:{}', 'yes'),
(12785, 'locationform_children', 'a:0:{}', 'yes'),
(12836, 'passenger_children', 'a:0:{}', 'yes'),
(14638, 'airlines_children', 'a:0:{}', 'yes'),
(14640, 'stops_children', 'a:0:{}', 'yes'),
(15045, 'roundtrip_children', 'a:0:{}', 'yes'),
(17734, 'hotelprice_children', 'a:0:{}', 'yes'),
(17834, 'hotellocation_children', 'a:0:{}', 'yes'),
(18782, 'ure_role_additional_options_values', 'a:4:{s:6:\"taibur\";a:1:{s:14:\"hide_admin_bar\";i:1;}s:6:\"author\";a:0:{}s:6:\"editor\";a:0:{}s:5:\"milon\";a:0:{}}', 'yes'),
(20478, 'site_reviews_v3', 'a:5:{s:8:\"settings\";a:2:{s:7:\"general\";a:2:{s:20:\"notification_message\";s:173:\"<strong>A new {review_rating}-star review has been submitted:</strong>\n\n{review_title}\n\n{review_content}\n\n{review_author} &lt;{review_email}&gt; - {review_ip}\n\n{review_link}\";s:13:\"notifications\";a:0:{}}s:11:\"submissions\";a:1:{s:8:\"required\";a:0:{}}}s:7:\"version\";s:5:\"3.5.4\";s:21:\"version_upgraded_from\";s:5:\"0.0.0\";s:6:\"counts\";a:1:{s:5:\"local\";a:6:{i:0;i:0;i:1;i:0;i:2;i:3;i:3;i:3;i:4;i:5;i:5;i:1;}}s:17:\"last_review_count\";i:1558238488;}', 'yes'),
(20480, 'widget_site-reviews_site-reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(20481, 'widget_site-reviews_site-reviews-form', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(20482, 'widget_site-reviews_site-reviews-summary', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(22119, 'wp_travel_permalinks', 'a:4:{s:19:\"wp_travel_trip_base\";s:9:\"itinerary\";s:24:\"wp_travel_trip_type_base\";s:9:\"trip-type\";s:26:\"wp_travel_destination_base\";s:16:\"travel-locations\";s:23:\"wp_travel_activity_base\";s:8:\"activity\";}', 'yes'),
(22567, 'wp_user_disable_signup', '0', 'yes'),
(22568, 'wp_user_disable_admin_bar', '1', 'yes'),
(22569, 'wp_user_appearance_skin', 'horizontal', 'yes'),
(22570, 'wp_user_language', 'English', 'yes'),
(22571, 'wp_user_appearance_icon', '0', 'yes'),
(22572, 'wp_user_appearance_custom_css', '', 'yes'),
(22573, 'wp_user_login_limit_enable', '1', 'yes'),
(22574, 'wp_user_login_limit', '5', 'yes'),
(22575, 'wp_user_login_limit_time', '10', 'yes'),
(22576, 'wp_user_login_limit_admin_notify', '1', 'yes'),
(22577, 'wpuser_site_key', 'c8593704c0435a2642ecbb5b7edd3b6e23ce012c24d3d0e5c95e1ca7fc747c9d', 'yes'),
(22578, 'wpuser_api_key', '03300de3c975be0f78fc67764c381131', 'yes'),
(22579, 'wp_user_enable_rest_api', '0', 'yes'),
(22580, 'wp_user_enable_rest_api_key_auth', '0', 'yes'),
(22581, 'wp_user_login_limit_password_enable', '1', 'yes'),
(22582, 'wp_user_login_limit_password', '$\\S*(?=\\S{8,})(?=\\S*[a-z])(?=\\S*[A-Z])(?=\\S*[\\d])(?=\\S*[\\W])\\S*$', 'yes'),
(22583, 'wp_user_login_password_valid_message', 'Password containing at least one lowercase letter,uppercase letter,special character (non-word characters),one number and at least length 8', 'yes'),
(22584, 'wp_user_security_reCaptcha_enable', '0', 'yes'),
(22585, 'wp_user_security_reCaptcha_secretkey', '', 'yes'),
(22586, 'wp_user_email_name', 'projct new development', 'yes'),
(22587, 'wp_user_email_id', 'admin@gmail.com', 'yes'),
(22588, 'wp_user_email_admin_register_enable', '1', 'yes'),
(22589, 'wp_user_email_admin_register_subject', 'New User Registration', 'yes'),
(22590, 'wp_user_email_admin_register_content', 'Hi there,<br>\r\n{WPUSER_USERNAME} has just created a new account at {WPUSER_BLOGNAME}.', 'yes'),
(22591, 'wp_user_email_user_register_enable', '1', 'yes'),
(22592, 'wp_user_email_user_register_subject', 'Welcome', 'yes'),
(22593, 'wp_user_email_user_register_content', 'To login please visit the following URL:\r\n{WPUSER_LOGIN_URL}<br><br>\r\nYour account e-mail: {WPUSER_EMAIL}<br>\r\nYour account username: {WPUSER_USERNAME}<br><br>\r\nIf you have any problems, please contact us at {WPUSER_ADMIN_EMAIL}.<br><br>\r\nBest Regards!', 'yes'),
(22594, 'wp_user_email_user_forgot_subject', 'Your new password', 'yes'),
(22595, 'wp_user_email_user_forgot_content', 'Dear <strong style=\"font-family:Arial;margin:0px;padding:0px\"> {WPUSER_USERNAME}</strong>, <br><br>\r\n                <h3>Your password changed successfully. Details as follow</h3>\r\n                <br><br>\r\n                Login url :{WPUSER_LOGIN_URL}\r\n                <br> <br>\r\n                User Name : {WPUSER_USERNAME}\r\n                <br>\r\n                Your new password is: {WPUSER_NEW_PASSWORD}', 'yes'),
(22596, 'wp_user_truncate_login_entries', '0', 'yes'),
(22597, 'wp_user_default_status', '1', 'yes'),
(22598, 'wp_user_disable_user_sidebar', '1', 'yes'),
(22599, 'wp_user_tab_position_is_vertical', '0', 'yes'),
(22600, 'wp_user_page', '508', 'yes'),
(22602, 'widget_wpusersearchwidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(22603, 'widget_wpuserwidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(22769, '_wpuf_page_created', '1', 'yes'),
(22772, 'wpuf_whats_new', 'a:1:{s:5:\"2.8.7\";b:1;}', 'yes'),
(22961, 'weforms_settings', 'a:3:{s:13:\"email_gateway\";s:9:\"wordpress\";s:6:\"credit\";b:0;s:9:\"recaptcha\";a:2:{s:3:\"key\";s:0:\"\";s:6:\"secret\";s:0:\"\";}}', 'yes'),
(22962, 'weforms_installed', '1558505712', 'yes'),
(22967, 'weforms_version', '1.3.9', 'yes'),
(22969, 'widget_weforms_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(23156, 'widget_wppb-login-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(23157, 'wppb_version', '2.9.9', 'yes'),
(23158, 'wppb_manage_fields', 'a:13:{i:0;a:21:{s:2:\"id\";i:1;s:5:\"field\";s:24:\"Default - Name (Heading)\";s:9:\"meta-name\";s:0:\"\";s:11:\"field-title\";s:4:\"Name\";s:11:\"description\";s:0:\"\";s:8:\"required\";s:2:\"No\";s:18:\"overwrite-existing\";s:2:\"No\";s:9:\"row-count\";s:1:\"5\";s:24:\"allowed-image-extensions\";s:2:\".*\";s:25:\"allowed-upload-extensions\";s:2:\".*\";s:11:\"avatar-size\";s:3:\"100\";s:11:\"date-format\";s:8:\"mm/dd/yy\";s:18:\"terms-of-agreement\";s:0:\"\";s:7:\"options\";s:0:\"\";s:6:\"labels\";s:0:\"\";s:10:\"public-key\";s:0:\"\";s:11:\"private-key\";s:0:\"\";s:13:\"default-value\";s:0:\"\";s:14:\"default-option\";s:0:\"\";s:15:\"default-options\";s:0:\"\";s:15:\"default-content\";s:0:\"\";}i:1;a:21:{s:2:\"id\";i:2;s:5:\"field\";s:18:\"Default - Username\";s:9:\"meta-name\";s:0:\"\";s:11:\"field-title\";s:8:\"Username\";s:11:\"description\";s:0:\"\";s:8:\"required\";s:3:\"Yes\";s:18:\"overwrite-existing\";s:2:\"No\";s:9:\"row-count\";s:1:\"5\";s:24:\"allowed-image-extensions\";s:2:\".*\";s:25:\"allowed-upload-extensions\";s:2:\".*\";s:11:\"avatar-size\";s:3:\"100\";s:11:\"date-format\";s:8:\"mm/dd/yy\";s:18:\"terms-of-agreement\";s:0:\"\";s:7:\"options\";s:0:\"\";s:6:\"labels\";s:0:\"\";s:10:\"public-key\";s:0:\"\";s:11:\"private-key\";s:0:\"\";s:13:\"default-value\";s:0:\"\";s:14:\"default-option\";s:0:\"\";s:15:\"default-options\";s:0:\"\";s:15:\"default-content\";s:0:\"\";}i:2;a:21:{s:2:\"id\";i:3;s:5:\"field\";s:20:\"Default - First Name\";s:9:\"meta-name\";s:10:\"first_name\";s:11:\"field-title\";s:10:\"First Name\";s:11:\"description\";s:0:\"\";s:8:\"required\";s:2:\"No\";s:18:\"overwrite-existing\";s:2:\"No\";s:9:\"row-count\";s:1:\"5\";s:24:\"allowed-image-extensions\";s:2:\".*\";s:25:\"allowed-upload-extensions\";s:2:\".*\";s:11:\"avatar-size\";s:3:\"100\";s:11:\"date-format\";s:8:\"mm/dd/yy\";s:18:\"terms-of-agreement\";s:0:\"\";s:7:\"options\";s:0:\"\";s:6:\"labels\";s:0:\"\";s:10:\"public-key\";s:0:\"\";s:11:\"private-key\";s:0:\"\";s:13:\"default-value\";s:0:\"\";s:14:\"default-option\";s:0:\"\";s:15:\"default-options\";s:0:\"\";s:15:\"default-content\";s:0:\"\";}i:3;a:21:{s:2:\"id\";i:4;s:5:\"field\";s:19:\"Default - Last Name\";s:9:\"meta-name\";s:9:\"last_name\";s:11:\"field-title\";s:9:\"Last Name\";s:11:\"description\";s:0:\"\";s:8:\"required\";s:2:\"No\";s:18:\"overwrite-existing\";s:2:\"No\";s:9:\"row-count\";s:1:\"5\";s:24:\"allowed-image-extensions\";s:2:\".*\";s:25:\"allowed-upload-extensions\";s:2:\".*\";s:11:\"avatar-size\";s:3:\"100\";s:11:\"date-format\";s:8:\"mm/dd/yy\";s:18:\"terms-of-agreement\";s:0:\"\";s:7:\"options\";s:0:\"\";s:6:\"labels\";s:0:\"\";s:10:\"public-key\";s:0:\"\";s:11:\"private-key\";s:0:\"\";s:13:\"default-value\";s:0:\"\";s:14:\"default-option\";s:0:\"\";s:15:\"default-options\";s:0:\"\";s:15:\"default-content\";s:0:\"\";}i:4;a:21:{s:2:\"id\";i:5;s:5:\"field\";s:18:\"Default - Nickname\";s:9:\"meta-name\";s:8:\"nickname\";s:11:\"field-title\";s:8:\"Nickname\";s:11:\"description\";s:0:\"\";s:8:\"required\";s:2:\"No\";s:18:\"overwrite-existing\";s:2:\"No\";s:9:\"row-count\";s:1:\"5\";s:24:\"allowed-image-extensions\";s:2:\".*\";s:25:\"allowed-upload-extensions\";s:2:\".*\";s:11:\"avatar-size\";s:3:\"100\";s:11:\"date-format\";s:8:\"mm/dd/yy\";s:18:\"terms-of-agreement\";s:0:\"\";s:7:\"options\";s:0:\"\";s:6:\"labels\";s:0:\"\";s:10:\"public-key\";s:0:\"\";s:11:\"private-key\";s:0:\"\";s:13:\"default-value\";s:0:\"\";s:14:\"default-option\";s:0:\"\";s:15:\"default-options\";s:0:\"\";s:15:\"default-content\";s:0:\"\";}i:5;a:21:{s:2:\"id\";i:6;s:5:\"field\";s:34:\"Default - Display name publicly as\";s:9:\"meta-name\";s:0:\"\";s:11:\"field-title\";s:24:\"Display name publicly as\";s:11:\"description\";s:0:\"\";s:8:\"required\";s:2:\"No\";s:18:\"overwrite-existing\";s:2:\"No\";s:9:\"row-count\";s:1:\"5\";s:24:\"allowed-image-extensions\";s:2:\".*\";s:25:\"allowed-upload-extensions\";s:2:\".*\";s:11:\"avatar-size\";s:3:\"100\";s:11:\"date-format\";s:8:\"mm/dd/yy\";s:18:\"terms-of-agreement\";s:0:\"\";s:7:\"options\";s:0:\"\";s:6:\"labels\";s:0:\"\";s:10:\"public-key\";s:0:\"\";s:11:\"private-key\";s:0:\"\";s:13:\"default-value\";s:0:\"\";s:14:\"default-option\";s:0:\"\";s:15:\"default-options\";s:0:\"\";s:15:\"default-content\";s:0:\"\";}i:6;a:21:{s:2:\"id\";i:7;s:5:\"field\";s:32:\"Default - Contact Info (Heading)\";s:9:\"meta-name\";s:0:\"\";s:11:\"field-title\";s:12:\"Contact Info\";s:11:\"description\";s:0:\"\";s:8:\"required\";s:2:\"No\";s:18:\"overwrite-existing\";s:2:\"No\";s:9:\"row-count\";s:1:\"5\";s:24:\"allowed-image-extensions\";s:2:\".*\";s:25:\"allowed-upload-extensions\";s:2:\".*\";s:11:\"avatar-size\";s:3:\"100\";s:11:\"date-format\";s:8:\"mm/dd/yy\";s:18:\"terms-of-agreement\";s:0:\"\";s:7:\"options\";s:0:\"\";s:6:\"labels\";s:0:\"\";s:10:\"public-key\";s:0:\"\";s:11:\"private-key\";s:0:\"\";s:13:\"default-value\";s:0:\"\";s:14:\"default-option\";s:0:\"\";s:15:\"default-options\";s:0:\"\";s:15:\"default-content\";s:0:\"\";}i:7;a:21:{s:2:\"id\";i:8;s:5:\"field\";s:16:\"Default - E-mail\";s:9:\"meta-name\";s:0:\"\";s:11:\"field-title\";s:6:\"E-mail\";s:11:\"description\";s:0:\"\";s:8:\"required\";s:3:\"Yes\";s:18:\"overwrite-existing\";s:2:\"No\";s:9:\"row-count\";s:1:\"5\";s:24:\"allowed-image-extensions\";s:2:\".*\";s:25:\"allowed-upload-extensions\";s:2:\".*\";s:11:\"avatar-size\";s:3:\"100\";s:11:\"date-format\";s:8:\"mm/dd/yy\";s:18:\"terms-of-agreement\";s:0:\"\";s:7:\"options\";s:0:\"\";s:6:\"labels\";s:0:\"\";s:10:\"public-key\";s:0:\"\";s:11:\"private-key\";s:0:\"\";s:13:\"default-value\";s:0:\"\";s:14:\"default-option\";s:0:\"\";s:15:\"default-options\";s:0:\"\";s:15:\"default-content\";s:0:\"\";}i:8;a:21:{s:2:\"id\";i:9;s:5:\"field\";s:17:\"Default - Website\";s:9:\"meta-name\";s:0:\"\";s:11:\"field-title\";s:7:\"Website\";s:11:\"description\";s:0:\"\";s:8:\"required\";s:2:\"No\";s:18:\"overwrite-existing\";s:2:\"No\";s:9:\"row-count\";s:1:\"5\";s:24:\"allowed-image-extensions\";s:2:\".*\";s:25:\"allowed-upload-extensions\";s:2:\".*\";s:11:\"avatar-size\";s:3:\"100\";s:11:\"date-format\";s:8:\"mm/dd/yy\";s:18:\"terms-of-agreement\";s:0:\"\";s:7:\"options\";s:0:\"\";s:6:\"labels\";s:0:\"\";s:10:\"public-key\";s:0:\"\";s:11:\"private-key\";s:0:\"\";s:13:\"default-value\";s:0:\"\";s:14:\"default-option\";s:0:\"\";s:15:\"default-options\";s:0:\"\";s:15:\"default-content\";s:0:\"\";}i:9;a:21:{s:2:\"id\";i:10;s:5:\"field\";s:34:\"Default - About Yourself (Heading)\";s:9:\"meta-name\";s:0:\"\";s:11:\"field-title\";s:14:\"About Yourself\";s:11:\"description\";s:0:\"\";s:8:\"required\";s:2:\"No\";s:18:\"overwrite-existing\";s:2:\"No\";s:9:\"row-count\";s:1:\"5\";s:24:\"allowed-image-extensions\";s:2:\".*\";s:25:\"allowed-upload-extensions\";s:2:\".*\";s:11:\"avatar-size\";s:3:\"100\";s:11:\"date-format\";s:8:\"mm/dd/yy\";s:18:\"terms-of-agreement\";s:0:\"\";s:7:\"options\";s:0:\"\";s:6:\"labels\";s:0:\"\";s:10:\"public-key\";s:0:\"\";s:11:\"private-key\";s:0:\"\";s:13:\"default-value\";s:0:\"\";s:14:\"default-option\";s:0:\"\";s:15:\"default-options\";s:0:\"\";s:15:\"default-content\";s:0:\"\";}i:10;a:21:{s:2:\"id\";i:11;s:5:\"field\";s:27:\"Default - Biographical Info\";s:9:\"meta-name\";s:11:\"description\";s:11:\"field-title\";s:17:\"Biographical Info\";s:11:\"description\";s:0:\"\";s:8:\"required\";s:2:\"No\";s:18:\"overwrite-existing\";s:2:\"No\";s:9:\"row-count\";s:1:\"5\";s:24:\"allowed-image-extensions\";s:2:\".*\";s:25:\"allowed-upload-extensions\";s:2:\".*\";s:11:\"avatar-size\";s:3:\"100\";s:11:\"date-format\";s:8:\"mm/dd/yy\";s:18:\"terms-of-agreement\";s:0:\"\";s:7:\"options\";s:0:\"\";s:6:\"labels\";s:0:\"\";s:10:\"public-key\";s:0:\"\";s:11:\"private-key\";s:0:\"\";s:13:\"default-value\";s:0:\"\";s:14:\"default-option\";s:0:\"\";s:15:\"default-options\";s:0:\"\";s:15:\"default-content\";s:0:\"\";}i:11;a:21:{s:2:\"id\";i:12;s:5:\"field\";s:18:\"Default - Password\";s:9:\"meta-name\";s:0:\"\";s:11:\"field-title\";s:8:\"Password\";s:11:\"description\";s:0:\"\";s:8:\"required\";s:3:\"Yes\";s:18:\"overwrite-existing\";s:2:\"No\";s:9:\"row-count\";s:1:\"5\";s:24:\"allowed-image-extensions\";s:2:\".*\";s:25:\"allowed-upload-extensions\";s:2:\".*\";s:11:\"avatar-size\";s:3:\"100\";s:11:\"date-format\";s:8:\"mm/dd/yy\";s:18:\"terms-of-agreement\";s:0:\"\";s:7:\"options\";s:0:\"\";s:6:\"labels\";s:0:\"\";s:10:\"public-key\";s:0:\"\";s:11:\"private-key\";s:0:\"\";s:13:\"default-value\";s:0:\"\";s:14:\"default-option\";s:0:\"\";s:15:\"default-options\";s:0:\"\";s:15:\"default-content\";s:0:\"\";}i:12;a:21:{s:2:\"id\";i:13;s:5:\"field\";s:25:\"Default - Repeat Password\";s:9:\"meta-name\";s:0:\"\";s:11:\"field-title\";s:15:\"Repeat Password\";s:11:\"description\";s:0:\"\";s:8:\"required\";s:3:\"Yes\";s:18:\"overwrite-existing\";s:2:\"No\";s:9:\"row-count\";s:1:\"5\";s:24:\"allowed-image-extensions\";s:2:\".*\";s:25:\"allowed-upload-extensions\";s:2:\".*\";s:11:\"avatar-size\";s:3:\"100\";s:11:\"date-format\";s:8:\"mm/dd/yy\";s:18:\"terms-of-agreement\";s:0:\"\";s:7:\"options\";s:0:\"\";s:6:\"labels\";s:0:\"\";s:10:\"public-key\";s:0:\"\";s:11:\"private-key\";s:0:\"\";s:13:\"default-value\";s:0:\"\";s:14:\"default-option\";s:0:\"\";s:15:\"default-options\";s:0:\"\";s:15:\"default-content\";s:0:\"\";}}', 'yes'),
(23159, 'wppb_general_settings', 'a:7:{s:17:\"extraFieldsLayout\";s:7:\"default\";s:17:\"emailConfirmation\";s:2:\"no\";s:21:\"activationLandingPage\";s:0:\"\";s:11:\"rolesEditor\";s:3:\"yes\";s:9:\"loginWith\";s:13:\"usernameemail\";s:23:\"minimum_password_length\";s:0:\"\";s:25:\"minimum_password_strength\";s:0:\"\";}', 'yes'),
(23166, 'wppb_display_admin_settings', 'a:20:{s:13:\"Administrator\";s:7:\"default\";s:6:\"Author\";s:7:\"default\";s:7:\"Blocked\";s:7:\"default\";s:14:\"Booking Editor\";s:7:\"default\";s:15:\"Booking Package\";s:7:\"default\";s:11:\"Contributor\";s:7:\"default\";s:8:\"Customer\";s:7:\"default\";s:6:\"Editor\";s:7:\"default\";s:14:\"Hotel Customer\";s:7:\"default\";s:13:\"Hotel Manager\";s:7:\"default\";s:18:\"Hotel Receptionist\";s:7:\"default\";s:9:\"Keymaster\";s:7:\"default\";s:9:\"Moderator\";s:7:\"default\";s:11:\"Participant\";s:7:\"default\";s:12:\"Shop manager\";s:7:\"default\";s:9:\"Spectator\";s:7:\"default\";s:10:\"Subscriber\";s:7:\"default\";s:18:\"WP Travel Customer\";s:7:\"default\";s:5:\"milon\";s:7:\"default\";s:6:\"taibur\";s:4:\"show\";}', 'yes'),
(23176, 'wppb_content_restriction_settings', 'a:6:{s:13:\"restrict_type\";s:7:\"message\";s:12:\"redirect_url\";s:0:\"\";s:18:\"message_logged_out\";s:0:\"\";s:17:\"message_logged_in\";s:0:\"\";s:12:\"post_preview\";s:4:\"none\";s:19:\"post_preview_length\";s:2:\"20\";}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(23178, 'wppb_private_website_settings', 'a:4:{s:15:\"private_website\";s:2:\"no\";s:11:\"redirect_to\";s:0:\"\";s:13:\"allowed_pages\";a:0:{}s:10:\"hide_menus\";s:2:\"no\";}', 'yes'),
(23181, 'wppb_pages_created', 'true', 'yes'),
(23261, 'wppb_roles_editor_capabilities', 'a:7:{s:7:\"general\";a:3:{s:5:\"label\";s:7:\"General\";s:4:\"icon\";s:19:\"dashicons-wordpress\";s:12:\"capabilities\";a:10:{i:0;s:14:\"edit_dashboard\";i:1;s:10:\"edit_files\";i:2;s:6:\"export\";i:3;s:6:\"import\";i:4;s:12:\"manage_links\";i:5;s:14:\"manage_options\";i:6;s:17:\"moderate_comments\";i:7;s:4:\"read\";i:8;s:15:\"unfiltered_html\";i:9;s:11:\"update_core\";}}s:10:\"post_types\";a:5:{s:4:\"post\";a:3:{s:5:\"label\";s:5:\"Posts\";s:4:\"icon\";s:20:\"dashicons-admin-post\";s:12:\"capabilities\";a:11:{i:0;s:10:\"edit_posts\";i:1;s:17:\"edit_others_posts\";i:2;s:13:\"publish_posts\";i:3;s:18:\"read_private_posts\";i:4;s:4:\"read\";i:5;s:12:\"delete_posts\";i:6;s:20:\"delete_private_posts\";i:7;s:22:\"delete_published_posts\";i:8;s:19:\"delete_others_posts\";i:9;s:18:\"edit_private_posts\";i:10;s:20:\"edit_published_posts\";}}s:4:\"page\";a:3:{s:5:\"label\";s:5:\"Pages\";s:4:\"icon\";s:20:\"dashicons-admin-page\";s:12:\"capabilities\";a:11:{i:0;s:10:\"edit_pages\";i:1;s:17:\"edit_others_pages\";i:2;s:13:\"publish_pages\";i:3;s:18:\"read_private_pages\";i:4;s:4:\"read\";i:5;s:12:\"delete_pages\";i:6;s:20:\"delete_private_pages\";i:7;s:22:\"delete_published_pages\";i:8;s:19:\"delete_others_pages\";i:9;s:18:\"edit_private_pages\";i:10;s:20:\"edit_published_pages\";}}s:10:\"attachment\";a:3:{s:5:\"label\";s:5:\"Media\";s:4:\"icon\";s:21:\"dashicons-admin-media\";s:12:\"capabilities\";a:2:{i:11;s:12:\"upload_files\";i:12;s:17:\"unfiltered_upload\";}}s:8:\"wp_block\";a:3:{s:5:\"label\";s:6:\"Blocks\";s:4:\"icon\";s:20:\"dashicons-admin-post\";s:12:\"capabilities\";a:6:{i:0;s:11:\"edit_blocks\";i:2;s:14:\"publish_blocks\";i:3;s:19:\"read_private_blocks\";i:5;s:13:\"delete_blocks\";i:6;s:21:\"delete_private_blocks\";i:9;s:19:\"edit_private_blocks\";}}s:11:\"site-review\";a:3:{s:5:\"label\";s:7:\"Reviews\";s:4:\"icon\";s:19:\"dashicons-star-half\";s:12:\"capabilities\";a:1:{i:11;s:18:\"create_site-review\";}}}s:10:\"taxonomies\";a:3:{s:5:\"label\";s:10:\"Taxonomies\";s:4:\"icon\";s:0:\"\";s:12:\"capabilities\";a:8:{i:0;s:17:\"manage_categories\";i:1;s:15:\"edit_categories\";i:2;s:17:\"delete_categories\";i:3;s:17:\"assign_categories\";i:4;s:16:\"manage_post_tags\";i:5;s:14:\"edit_post_tags\";i:6;s:16:\"delete_post_tags\";i:7;s:16:\"assign_post_tags\";}}s:10:\"appearance\";a:3:{s:5:\"label\";s:10:\"Appearance\";s:4:\"icon\";s:26:\"dashicons-admin-appearance\";s:12:\"capabilities\";a:6:{i:0;s:13:\"delete_themes\";i:1;s:18:\"edit_theme_options\";i:2;s:11:\"edit_themes\";i:3;s:14:\"install_themes\";i:4;s:13:\"switch_themes\";i:5;s:13:\"update_themes\";}}s:7:\"plugins\";a:3:{s:5:\"label\";s:7:\"Plugins\";s:4:\"icon\";s:23:\"dashicons-admin-plugins\";s:12:\"capabilities\";a:5:{i:0;s:16:\"activate_plugins\";i:1;s:14:\"delete_plugins\";i:2;s:12:\"edit_plugins\";i:3;s:15:\"install_plugins\";i:4;s:14:\"update_plugins\";}}s:5:\"users\";a:3:{s:5:\"label\";s:5:\"Users\";s:4:\"icon\";s:21:\"dashicons-admin-users\";s:12:\"capabilities\";a:11:{i:0;s:9:\"add_users\";i:1;s:12:\"create_roles\";i:2;s:12:\"create_users\";i:3;s:12:\"delete_roles\";i:4;s:12:\"delete_users\";i:5;s:10:\"edit_roles\";i:6;s:10:\"edit_users\";i:7;s:10:\"list_roles\";i:8;s:10:\"list_users\";i:9;s:13:\"promote_users\";i:10;s:12:\"remove_users\";}}s:6:\"custom\";a:3:{s:5:\"label\";s:6:\"Custom\";s:4:\"icon\";s:0:\"\";s:12:\"capabilities\";a:191:{i:0;s:14:\"ure_edit_roles\";i:1;s:16:\"ure_create_roles\";i:2;s:16:\"ure_delete_roles\";i:3;s:23:\"ure_create_capabilities\";i:4;s:23:\"ure_delete_capabilities\";i:5;s:18:\"ure_manage_options\";i:6;s:15:\"ure_reset_roles\";i:7;s:13:\"wplc_ma_agent\";i:8;s:24:\"edit_wplc_quick_response\";i:9;s:30:\"edit_other_wplc_quick_response\";i:10;s:27:\"publish_wplc_quick_response\";i:11;s:24:\"read_wplc_quick_response\";i:12;s:32:\"read_private_wplc_quick_response\";i:13;s:26:\"delete_wplc_quick_response\";i:14;s:10:\"copy_posts\";i:15;s:18:\"manage_woocommerce\";i:16;s:24:\"view_woocommerce_reports\";i:17;s:12:\"edit_product\";i:18;s:12:\"read_product\";i:19;s:14:\"delete_product\";i:20;s:13:\"edit_products\";i:21;s:20:\"edit_others_products\";i:22;s:16:\"publish_products\";i:23;s:21:\"read_private_products\";i:24;s:15:\"delete_products\";i:25;s:23:\"delete_private_products\";i:26;s:25:\"delete_published_products\";i:27;s:22:\"delete_others_products\";i:28;s:21:\"edit_private_products\";i:29;s:23:\"edit_published_products\";i:30;s:20:\"manage_product_terms\";i:31;s:18:\"edit_product_terms\";i:32;s:20:\"delete_product_terms\";i:33;s:20:\"assign_product_terms\";i:34;s:15:\"edit_shop_order\";i:35;s:15:\"read_shop_order\";i:36;s:17:\"delete_shop_order\";i:37;s:16:\"edit_shop_orders\";i:38;s:23:\"edit_others_shop_orders\";i:39;s:19:\"publish_shop_orders\";i:40;s:24:\"read_private_shop_orders\";i:41;s:18:\"delete_shop_orders\";i:42;s:26:\"delete_private_shop_orders\";i:43;s:28:\"delete_published_shop_orders\";i:44;s:25:\"delete_others_shop_orders\";i:45;s:24:\"edit_private_shop_orders\";i:46;s:26:\"edit_published_shop_orders\";i:47;s:23:\"manage_shop_order_terms\";i:48;s:21:\"edit_shop_order_terms\";i:49;s:23:\"delete_shop_order_terms\";i:50;s:23:\"assign_shop_order_terms\";i:51;s:16:\"edit_shop_coupon\";i:52;s:16:\"read_shop_coupon\";i:53;s:18:\"delete_shop_coupon\";i:54;s:17:\"edit_shop_coupons\";i:55;s:24:\"edit_others_shop_coupons\";i:56;s:20:\"publish_shop_coupons\";i:57;s:25:\"read_private_shop_coupons\";i:58;s:19:\"delete_shop_coupons\";i:59;s:27:\"delete_private_shop_coupons\";i:60;s:29:\"delete_published_shop_coupons\";i:61;s:26:\"delete_others_shop_coupons\";i:62;s:25:\"edit_private_shop_coupons\";i:63;s:27:\"edit_published_shop_coupons\";i:64;s:24:\"manage_shop_coupon_terms\";i:65;s:22:\"edit_shop_coupon_terms\";i:66;s:24:\"delete_shop_coupon_terms\";i:67;s:24:\"assign_shop_coupon_terms\";i:68;s:16:\"publish_hb_rooms\";i:69;s:15:\"delete_hb_rooms\";i:70;s:25:\"delete_published_hb_rooms\";i:71;s:23:\"delete_private_hb_rooms\";i:72;s:22:\"delete_others_hb_rooms\";i:73;s:20:\"edit_others_hb_rooms\";i:74;s:13:\"edit_hb_rooms\";i:75;s:23:\"edit_published_hb_rooms\";i:76;s:21:\"edit_private_hb_rooms\";i:77;s:19:\"publish_hb_bookings\";i:78;s:18:\"delete_hb_bookings\";i:79;s:28:\"delete_published_hb_bookings\";i:80;s:26:\"delete_private_hb_bookings\";i:81;s:25:\"delete_others_hb_bookings\";i:82;s:23:\"edit_others_hb_bookings\";i:83;s:16:\"edit_hb_bookings\";i:84;s:26:\"edit_published_hb_bookings\";i:85;s:24:\"edit_private_hb_bookings\";i:86;s:17:\"manage_hb_booking\";i:87;s:17:\"manage_awebooking\";i:88;s:26:\"manage_awebooking_settings\";i:89;s:15:\"edit_awebooking\";i:90;s:15:\"read_awebooking\";i:91;s:17:\"delete_awebooking\";i:92;s:16:\"edit_awebookings\";i:93;s:23:\"edit_others_awebookings\";i:94;s:19:\"publish_awebookings\";i:95;s:24:\"read_private_awebookings\";i:96;s:18:\"delete_awebookings\";i:97;s:26:\"delete_private_awebookings\";i:98;s:28:\"delete_published_awebookings\";i:99;s:25:\"delete_others_awebookings\";i:100;s:24:\"edit_private_awebookings\";i:101;s:26:\"edit_published_awebookings\";i:102;s:23:\"manage_awebooking_terms\";i:103;s:21:\"edit_awebooking_terms\";i:104;s:23:\"delete_awebooking_terms\";i:105;s:23:\"assign_awebooking_terms\";i:106;s:14:\"edit_room_type\";i:107;s:14:\"read_room_type\";i:108;s:16:\"delete_room_type\";i:109;s:15:\"edit_room_types\";i:110;s:22:\"edit_others_room_types\";i:111;s:18:\"publish_room_types\";i:112;s:23:\"read_private_room_types\";i:113;s:17:\"delete_room_types\";i:114;s:25:\"delete_private_room_types\";i:115;s:27:\"delete_published_room_types\";i:116;s:24:\"delete_others_room_types\";i:117;s:23:\"edit_private_room_types\";i:118;s:25:\"edit_published_room_types\";i:119;s:22:\"manage_room_type_terms\";i:120;s:20:\"edit_room_type_terms\";i:121;s:22:\"delete_room_type_terms\";i:122;s:22:\"assign_room_type_terms\";i:123;s:18:\"edit_hotel_service\";i:124;s:18:\"read_hotel_service\";i:125;s:20:\"delete_hotel_service\";i:126;s:19:\"edit_hotel_services\";i:127;s:26:\"edit_others_hotel_services\";i:128;s:22:\"publish_hotel_services\";i:129;s:27:\"read_private_hotel_services\";i:130;s:21:\"delete_hotel_services\";i:131;s:29:\"delete_private_hotel_services\";i:132;s:31:\"delete_published_hotel_services\";i:133;s:28:\"delete_others_hotel_services\";i:134;s:27:\"edit_private_hotel_services\";i:135;s:29:\"edit_published_hotel_services\";i:136;s:26:\"manage_hotel_service_terms\";i:137;s:24:\"edit_hotel_service_terms\";i:138;s:26:\"delete_hotel_service_terms\";i:139;s:26:\"assign_hotel_service_terms\";i:140;s:19:\"edit_hotel_location\";i:141;s:19:\"read_hotel_location\";i:142;s:21:\"delete_hotel_location\";i:143;s:20:\"edit_hotel_locations\";i:144;s:27:\"edit_others_hotel_locations\";i:145;s:23:\"publish_hotel_locations\";i:146;s:28:\"read_private_hotel_locations\";i:147;s:22:\"delete_hotel_locations\";i:148;s:30:\"delete_private_hotel_locations\";i:149;s:32:\"delete_published_hotel_locations\";i:150;s:29:\"delete_others_hotel_locations\";i:151;s:28:\"edit_private_hotel_locations\";i:152;s:30:\"edit_published_hotel_locations\";i:153;s:27:\"manage_hotel_location_terms\";i:154;s:25:\"edit_hotel_location_terms\";i:155;s:27:\"delete_hotel_location_terms\";i:156;s:27:\"assign_hotel_location_terms\";i:157;s:15:\"booking_package\";i:158;s:12:\"create_posts\";i:159;s:16:\"edit_attachments\";i:160;s:18:\"delete_attachments\";i:161;s:23:\"read_others_attachments\";i:162;s:23:\"edit_others_attachments\";i:163;s:25:\"delete_others_attachments\";i:164;s:23:\"edit_users_higher_level\";i:165;s:25:\"delete_users_higher_level\";i:166;s:26:\"promote_users_higher_level\";i:167;s:29:\"promote_users_to_higher_level\";i:168;s:15:\"edit_role_menus\";i:169;s:27:\"edit_posts_role_permissions\";i:170;s:27:\"edit_pages_role_permissions\";i:171;s:25:\"edit_nav_menu_permissions\";i:172;s:23:\"edit_content_shortcodes\";i:173;s:25:\"delete_content_shortcodes\";i:174;s:20:\"edit_login_redirects\";i:175;s:22:\"delete_login_redirects\";i:176;s:15:\"bulk_edit_roles\";i:177;s:23:\"edit_widget_permissions\";i:178;s:26:\"wpcf_custom_post_type_view\";i:179;s:26:\"wpcf_custom_post_type_edit\";i:180;s:33:\"wpcf_custom_post_type_edit_others\";i:181;s:25:\"wpcf_custom_taxonomy_view\";i:182;s:25:\"wpcf_custom_taxonomy_edit\";i:183;s:32:\"wpcf_custom_taxonomy_edit_others\";i:184;s:22:\"wpcf_custom_field_view\";i:185;s:22:\"wpcf_custom_field_edit\";i:186;s:29:\"wpcf_custom_field_edit_others\";i:187;s:25:\"wpcf_user_meta_field_view\";i:188;s:25:\"wpcf_user_meta_field_edit\";i:189;s:32:\"wpcf_user_meta_field_edit_others\";i:190;s:12:\"capabilities\";}}}', 'yes'),
(23523, 'WPLANG', '', 'yes'),
(23524, 'new_admin_email', 'admin@gmail.com', 'yes'),
(25055, 'Tourlocation_children', 'a:0:{}', 'yes'),
(25061, 'Tourprice_children', 'a:0:{}', 'yes'),
(26022, 'gdgallery_version', '1.1.0', 'yes'),
(26023, 'widget_gdgallery_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(27623, '_wp_session_expires_aa363a59acec1c70fe9c12e46cae6f93', '1559119085', 'no'),
(27631, '_wp_session_4c16c89334e3ccd2648b408a5e3d7f4f', 'a:0:{}', 'no'),
(27632, '_wp_session_expires_4c16c89334e3ccd2648b408a5e3d7f4f', '1559119086', 'no'),
(27661, '_wp_session_expires_8e9b703991fe20514990ca5ddd49b2ae', '1559119145', 'no'),
(27908, '_wp_session_8e9b703991fe20514990ca5ddd49b2ae', 'a:0:{}', 'no'),
(27909, '_wp_session_aa363a59acec1c70fe9c12e46cae6f93', 'a:0:{}', 'no'),
(28023, 'wpaft_db_version', '0.0.1', 'yes'),
(28024, 'wpaft_configuration', 'a:3:{s:9:\"checkedin\";a:2:{s:4:\"type\";s:4:\"text\";s:8:\"taxonomy\";s:8:\"category\";}s:10:\"checkedin2\";a:2:{s:4:\"type\";s:5:\"image\";s:8:\"taxonomy\";s:8:\"category\";}s:8:\"tesstttt\";a:2:{s:4:\"type\";s:4:\"text\";s:8:\"taxonomy\";s:8:\"category\";}}', 'yes'),
(28031, 'category_children', 'a:0:{}', 'yes'),
(28081, 'theme_mods_hazproject23.05.2019', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1559504133;s:4:\"data\";a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:6:\"meta-2\";}s:7:\"footer1\";a:0:{}s:7:\"footer2\";a:0:{}s:7:\"footer3\";a:0:{}s:7:\"footer4\";a:1:{i:0;s:12:\"categories-2\";}s:18:\"footerbottom-right\";a:0:{}s:12:\"page_sidebar\";a:0:{}}}}', 'yes'),
(28134, 'hotels_children', 'a:0:{}', 'yes'),
(28135, 'destino_children', 'a:0:{}', 'yes'),
(28163, 'cptui_new_install', 'false', 'yes'),
(28164, 'cptui_post_types', 'a:0:{}', 'yes'),
(28170, 'WPCF_VERSION', '2.3.5', 'no'),
(28171, 'wpcf-version', '2.3.5', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(28172, 'wp_installer_settings', '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', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(28173, 'toolset_executed_upgrade_commands', 'a:3:{i:0;s:55:\"Toolset_Upgrade_Command_Delete_Obsolete_Upgrade_Options\";i:1;s:57:\"Toolset_Upgrade_Command_M2M_V1_Database_Structure_Upgrade\";i:2;s:57:\"Toolset_Upgrade_Command_M2M_V2_Database_Structure_Upgrade\";}', 'no'),
(28174, 'toolset_data_structure_version', '3', 'yes'),
(28175, 'wpcf-messages', 'a:1:{i:1;a:0:{}}', 'yes'),
(28176, 'wpcf_users_options', '1', 'yes'),
(28177, 'wpcf-custom-taxonomies', 'a:3:{s:8:\"category\";a:25:{s:4:\"name\";s:8:\"category\";s:5:\"label\";s:10:\"Categories\";s:6:\"labels\";a:23:{s:4:\"name\";s:10:\"Categories\";s:13:\"singular_name\";s:8:\"Category\";s:12:\"search_items\";s:17:\"Search Categories\";s:13:\"popular_items\";N;s:9:\"all_items\";s:14:\"All Categories\";s:11:\"parent_item\";s:15:\"Parent Category\";s:17:\"parent_item_colon\";s:16:\"Parent Category:\";s:9:\"edit_item\";s:13:\"Edit Category\";s:9:\"view_item\";s:13:\"View Category\";s:11:\"update_item\";s:15:\"Update Category\";s:12:\"add_new_item\";s:16:\"Add New Category\";s:13:\"new_item_name\";s:17:\"New Category Name\";s:26:\"separate_items_with_commas\";N;s:19:\"add_or_remove_items\";N;s:21:\"choose_from_most_used\";N;s:9:\"not_found\";s:20:\"No categories found.\";s:8:\"no_terms\";s:13:\"No categories\";s:21:\"items_list_navigation\";s:26:\"Categories list navigation\";s:10:\"items_list\";s:15:\"Categories list\";s:9:\"most_used\";s:9:\"Most Used\";s:13:\"back_to_items\";s:25:\"&larr; Back to Categories\";s:9:\"menu_name\";s:10:\"Categories\";s:14:\"name_admin_bar\";s:8:\"category\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:18:\"publicly_queryable\";b:1;s:12:\"hierarchical\";b:1;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"show_in_nav_menus\";b:1;s:13:\"show_tagcloud\";b:1;s:18:\"show_in_quick_edit\";b:1;s:17:\"show_admin_column\";b:1;s:11:\"meta_box_cb\";s:24:\"post_categories_meta_box\";s:11:\"object_type\";a:1:{i:0;s:4:\"post\";}s:3:\"cap\";a:4:{s:12:\"manage_terms\";s:17:\"manage_categories\";s:10:\"edit_terms\";s:15:\"edit_categories\";s:12:\"delete_terms\";s:17:\"delete_categories\";s:12:\"assign_terms\";s:17:\"assign_categories\";}s:7:\"rewrite\";a:4:{s:10:\"with_front\";b:0;s:12:\"hierarchical\";b:1;s:7:\"ep_mask\";i:512;s:4:\"slug\";s:8:\"taxonomy\";}s:9:\"query_var\";s:13:\"category_name\";s:21:\"update_count_callback\";s:0:\"\";s:12:\"show_in_rest\";b:1;s:9:\"rest_base\";s:10:\"categories\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Terms_Controller\";s:8:\"_builtin\";b:1;s:4:\"slug\";s:8:\"category\";s:8:\"supports\";a:1:{s:4:\"post\";i:1;}}s:8:\"post_tag\";a:25:{s:4:\"name\";s:8:\"post_tag\";s:5:\"label\";s:4:\"Tags\";s:6:\"labels\";a:23:{s:4:\"name\";s:4:\"Tags\";s:13:\"singular_name\";s:3:\"Tag\";s:12:\"search_items\";s:11:\"Search Tags\";s:13:\"popular_items\";s:12:\"Popular Tags\";s:9:\"all_items\";s:8:\"All Tags\";s:11:\"parent_item\";N;s:17:\"parent_item_colon\";N;s:9:\"edit_item\";s:8:\"Edit Tag\";s:9:\"view_item\";s:8:\"View Tag\";s:11:\"update_item\";s:10:\"Update Tag\";s:12:\"add_new_item\";s:11:\"Add New Tag\";s:13:\"new_item_name\";s:12:\"New Tag Name\";s:26:\"separate_items_with_commas\";s:25:\"Separate tags with commas\";s:19:\"add_or_remove_items\";s:18:\"Add or remove tags\";s:21:\"choose_from_most_used\";s:30:\"Choose from the most used tags\";s:9:\"not_found\";s:14:\"No tags found.\";s:8:\"no_terms\";s:7:\"No tags\";s:21:\"items_list_navigation\";s:20:\"Tags list navigation\";s:10:\"items_list\";s:9:\"Tags list\";s:9:\"most_used\";s:9:\"Most Used\";s:13:\"back_to_items\";s:19:\"&larr; Back to Tags\";s:9:\"menu_name\";s:4:\"Tags\";s:14:\"name_admin_bar\";s:8:\"post_tag\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:18:\"publicly_queryable\";b:1;s:12:\"hierarchical\";b:0;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"show_in_nav_menus\";b:1;s:13:\"show_tagcloud\";b:1;s:18:\"show_in_quick_edit\";b:1;s:17:\"show_admin_column\";b:1;s:11:\"meta_box_cb\";s:18:\"post_tags_meta_box\";s:11:\"object_type\";a:1:{i:0;s:4:\"post\";}s:3:\"cap\";a:4:{s:12:\"manage_terms\";s:16:\"manage_post_tags\";s:10:\"edit_terms\";s:14:\"edit_post_tags\";s:12:\"delete_terms\";s:16:\"delete_post_tags\";s:12:\"assign_terms\";s:16:\"assign_post_tags\";}s:7:\"rewrite\";a:4:{s:10:\"with_front\";b:1;s:12:\"hierarchical\";b:0;s:7:\"ep_mask\";i:1024;s:4:\"slug\";s:3:\"tag\";}s:9:\"query_var\";s:3:\"tag\";s:21:\"update_count_callback\";s:0:\"\";s:12:\"show_in_rest\";b:1;s:9:\"rest_base\";s:4:\"tags\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Terms_Controller\";s:8:\"_builtin\";b:1;s:4:\"slug\";s:8:\"post_tag\";s:8:\"supports\";a:1:{s:4:\"post\";i:1;}}s:23:\"main_hotel_informations\";a:19:{s:4:\"icon\";s:10:\"admin-post\";s:6:\"labels\";a:15:{s:4:\"name\";s:23:\"Main Hotel Informations\";s:13:\"singular_name\";s:23:\"Main Hotel Informations\";s:12:\"search_items\";s:9:\"Search %s\";s:13:\"popular_items\";s:10:\"Popular %s\";s:9:\"all_items\";s:6:\"All %s\";s:11:\"parent_item\";s:9:\"Parent %s\";s:17:\"parent_item_colon\";s:10:\"Parent %s:\";s:9:\"edit_item\";s:7:\"Edit %s\";s:11:\"update_item\";s:9:\"Update %s\";s:12:\"add_new_item\";s:10:\"Add New %s\";s:13:\"new_item_name\";s:11:\"New %s Name\";s:26:\"separate_items_with_commas\";s:23:\"Separate %s with commas\";s:19:\"add_or_remove_items\";s:16:\"Add or remove %s\";s:21:\"choose_from_most_used\";s:28:\"Choose from the most used %s\";s:9:\"menu_name\";s:2:\"%s\";}s:4:\"slug\";s:23:\"main_hotel_informations\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:6:\"public\";s:12:\"hierarchical\";s:12:\"hierarchical\";s:8:\"supports\";a:0:{}s:7:\"rewrite\";a:4:{s:7:\"enabled\";s:1:\"1\";s:4:\"slug\";s:0:\"\";s:10:\"with_front\";s:1:\"1\";s:12:\"hierarchical\";s:1:\"1\";}s:7:\"show_ui\";s:1:\"1\";s:17:\"show_in_nav_menus\";s:1:\"1\";s:13:\"show_tagcloud\";s:1:\"1\";s:17:\"query_var_enabled\";s:1:\"1\";s:9:\"query_var\";s:0:\"\";s:21:\"update_count_callback\";s:0:\"\";s:9:\"rest_base\";s:0:\"\";s:11:\"meta_box_cb\";a:1:{s:8:\"callback\";s:0:\"\";}s:18:\"_toolset_edit_last\";i:1560793257;s:15:\"_wpcf_author_id\";i:1;s:4:\"name\";b:0;}}', 'yes'),
(28178, 'wpcf-custom-types', 'a:0:{}', 'yes'),
(28179, 'wpcf_post_relationship', 'a:0:{}', 'yes'),
(28180, '_wpcf_promo_tabs', 'a:2:{s:8:\"selected\";i:2;s:4:\"time\";i:1560698973;}', 'yes'),
(28182, 'wpcf-termmeta', 'a:17:{s:15:\"hotel_gallery_1\";a:8:{s:2:\"id\";s:15:\"hotel_gallery_1\";s:4:\"slug\";s:15:\"hotel_gallery_1\";s:4:\"type\";s:5:\"image\";s:4:\"name\";s:15:\"hotel_gallery_1\";s:11:\"description\";s:0:\"\";s:4:\"data\";a:7:{s:11:\"placeholder\";s:0:\"\";s:18:\"user_default_value\";s:0:\"\";s:10:\"repetitive\";s:1:\"0\";s:19:\"conditional_display\";a:0:{}s:10:\"submit-key\";s:16:\"image-1546501370\";s:16:\"disabled_by_type\";i:0;s:8:\"validate\";a:1:{s:4:\"url2\";a:3:{s:6:\"active\";s:1:\"1\";s:7:\"message\";s:60:\"Please enter a valid URL address pointing to the image file.\";s:17:\"suppress_for_cred\";b:1;}}}s:8:\"meta_key\";s:20:\"wpcf-hotel_gallery_1\";s:9:\"meta_type\";s:8:\"termmeta\";}s:15:\"hotel_gallery_2\";a:8:{s:2:\"id\";s:15:\"hotel_gallery_2\";s:4:\"slug\";s:15:\"hotel_gallery_2\";s:4:\"type\";s:5:\"image\";s:4:\"name\";s:15:\"hotel_gallery_2\";s:11:\"description\";s:0:\"\";s:4:\"data\";a:7:{s:11:\"placeholder\";s:0:\"\";s:18:\"user_default_value\";s:0:\"\";s:10:\"repetitive\";s:1:\"0\";s:19:\"conditional_display\";a:0:{}s:10:\"submit-key\";s:15:\"image-407397921\";s:16:\"disabled_by_type\";i:0;s:8:\"validate\";a:1:{s:4:\"url2\";a:3:{s:6:\"active\";s:1:\"1\";s:7:\"message\";s:60:\"Please enter a valid URL address pointing to the image file.\";s:17:\"suppress_for_cred\";b:1;}}}s:8:\"meta_key\";s:20:\"wpcf-hotel_gallery_2\";s:9:\"meta_type\";s:8:\"termmeta\";}s:15:\"hotel_gallery_3\";a:8:{s:2:\"id\";s:15:\"hotel_gallery_3\";s:4:\"slug\";s:15:\"hotel_gallery_3\";s:4:\"type\";s:5:\"image\";s:4:\"name\";s:15:\"hotel_gallery_3\";s:11:\"description\";s:0:\"\";s:4:\"data\";a:7:{s:11:\"placeholder\";s:0:\"\";s:18:\"user_default_value\";s:0:\"\";s:10:\"repetitive\";s:1:\"0\";s:19:\"conditional_display\";a:0:{}s:10:\"submit-key\";s:16:\"image-1084980070\";s:16:\"disabled_by_type\";i:0;s:8:\"validate\";a:1:{s:4:\"url2\";a:3:{s:6:\"active\";s:1:\"1\";s:7:\"message\";s:60:\"Please enter a valid URL address pointing to the image file.\";s:17:\"suppress_for_cred\";b:1;}}}s:8:\"meta_key\";s:20:\"wpcf-hotel_gallery_3\";s:9:\"meta_type\";s:8:\"termmeta\";}s:15:\"hotel_gallery_4\";a:8:{s:2:\"id\";s:15:\"hotel_gallery_4\";s:4:\"slug\";s:15:\"hotel_gallery_4\";s:4:\"type\";s:5:\"image\";s:4:\"name\";s:15:\"hotel_gallery_4\";s:11:\"description\";s:0:\"\";s:4:\"data\";a:7:{s:11:\"placeholder\";s:0:\"\";s:18:\"user_default_value\";s:0:\"\";s:10:\"repetitive\";s:1:\"0\";s:19:\"conditional_display\";a:0:{}s:10:\"submit-key\";s:15:\"image-347572006\";s:16:\"disabled_by_type\";i:0;s:8:\"validate\";a:1:{s:4:\"url2\";a:3:{s:6:\"active\";s:1:\"1\";s:7:\"message\";s:60:\"Please enter a valid URL address pointing to the image file.\";s:17:\"suppress_for_cred\";b:1;}}}s:8:\"meta_key\";s:20:\"wpcf-hotel_gallery_4\";s:9:\"meta_type\";s:8:\"termmeta\";}s:15:\"hotel_gallery_5\";a:8:{s:2:\"id\";s:15:\"hotel_gallery_5\";s:4:\"slug\";s:15:\"hotel_gallery_5\";s:4:\"type\";s:5:\"image\";s:4:\"name\";s:15:\"hotel_gallery_5\";s:11:\"description\";s:0:\"\";s:4:\"data\";a:7:{s:11:\"placeholder\";s:0:\"\";s:18:\"user_default_value\";s:0:\"\";s:10:\"repetitive\";s:1:\"0\";s:19:\"conditional_display\";a:0:{}s:10:\"submit-key\";s:16:\"image-1933859469\";s:16:\"disabled_by_type\";i:0;s:8:\"validate\";a:1:{s:4:\"url2\";a:3:{s:6:\"active\";s:1:\"1\";s:7:\"message\";s:60:\"Please enter a valid URL address pointing to the image file.\";s:17:\"suppress_for_cred\";b:1;}}}s:8:\"meta_key\";s:20:\"wpcf-hotel_gallery_5\";s:9:\"meta_type\";s:8:\"termmeta\";}s:15:\"hotel_gallery_6\";a:8:{s:2:\"id\";s:15:\"hotel_gallery_6\";s:4:\"slug\";s:15:\"hotel_gallery_6\";s:4:\"type\";s:5:\"image\";s:4:\"name\";s:15:\"hotel_gallery_6\";s:11:\"description\";s:0:\"\";s:4:\"data\";a:7:{s:11:\"placeholder\";s:0:\"\";s:18:\"user_default_value\";s:0:\"\";s:10:\"repetitive\";s:1:\"0\";s:19:\"conditional_display\";a:0:{}s:10:\"submit-key\";s:15:\"image-201762415\";s:16:\"disabled_by_type\";i:0;s:8:\"validate\";a:1:{s:4:\"url2\";a:3:{s:6:\"active\";s:1:\"1\";s:7:\"message\";s:60:\"Please enter a valid URL address pointing to the image file.\";s:17:\"suppress_for_cred\";b:1;}}}s:8:\"meta_key\";s:20:\"wpcf-hotel_gallery_6\";s:9:\"meta_type\";s:8:\"termmeta\";}s:8:\"check_in\";a:8:{s:2:\"id\";s:8:\"check_in\";s:4:\"slug\";s:8:\"check_in\";s:4:\"type\";s:4:\"date\";s:4:\"name\";s:10:\"Check - in\";s:11:\"description\";s:0:\"\";s:4:\"data\";a:8:{s:13:\"slug-pre-save\";s:8:\"check_in\";s:11:\"placeholder\";s:0:\"\";s:13:\"date_and_time\";s:4:\"date\";s:10:\"repetitive\";s:1:\"0\";s:10:\"custom_use\";s:0:\"\";s:19:\"conditional_display\";a:0:{}s:10:\"submit-key\";s:8:\"check_in\";s:16:\"disabled_by_type\";i:0;}s:8:\"meta_key\";s:13:\"wpcf-check_in\";s:9:\"meta_type\";s:8:\"termmeta\";}s:9:\"check_out\";a:8:{s:2:\"id\";s:9:\"check_out\";s:4:\"slug\";s:9:\"check_out\";s:4:\"type\";s:4:\"date\";s:4:\"name\";s:11:\"Check - out\";s:11:\"description\";s:0:\"\";s:4:\"data\";a:8:{s:13:\"slug-pre-save\";s:9:\"check_out\";s:11:\"placeholder\";s:0:\"\";s:13:\"date_and_time\";s:4:\"date\";s:10:\"repetitive\";s:1:\"0\";s:10:\"custom_use\";s:0:\"\";s:19:\"conditional_display\";a:0:{}s:10:\"submit-key\";s:9:\"check_out\";s:16:\"disabled_by_type\";i:0;}s:8:\"meta_key\";s:14:\"wpcf-check_out\";s:9:\"meta_type\";s:8:\"termmeta\";}s:14:\"hotel_location\";a:8:{s:2:\"id\";s:14:\"hotel_location\";s:4:\"slug\";s:14:\"hotel_location\";s:4:\"type\";s:9:\"textfield\";s:4:\"name\";s:14:\"Hotel Location\";s:11:\"description\";s:0:\"\";s:4:\"data\";a:8:{s:13:\"slug-pre-save\";s:14:\"hotel_location\";s:11:\"placeholder\";s:0:\"\";s:18:\"user_default_value\";s:0:\"\";s:10:\"repetitive\";s:1:\"0\";s:10:\"custom_use\";s:0:\"\";s:19:\"conditional_display\";a:0:{}s:10:\"submit-key\";s:14:\"hotel_location\";s:16:\"disabled_by_type\";i:0;}s:8:\"meta_key\";s:19:\"wpcf-hotel_location\";s:9:\"meta_type\";s:8:\"termmeta\";}s:11:\"hotel_email\";a:8:{s:2:\"id\";s:11:\"hotel_email\";s:4:\"slug\";s:11:\"hotel_email\";s:4:\"type\";s:9:\"textfield\";s:4:\"name\";s:11:\"Hotel Email\";s:11:\"description\";s:0:\"\";s:4:\"data\";a:8:{s:13:\"slug-pre-save\";s:11:\"hotel_email\";s:11:\"placeholder\";s:0:\"\";s:18:\"user_default_value\";s:0:\"\";s:10:\"repetitive\";s:1:\"0\";s:10:\"custom_use\";s:0:\"\";s:19:\"conditional_display\";a:0:{}s:10:\"submit-key\";s:11:\"hotel_email\";s:16:\"disabled_by_type\";i:0;}s:8:\"meta_key\";s:16:\"wpcf-hotel_email\";s:9:\"meta_type\";s:8:\"termmeta\";}s:14:\"hotel_phone_no\";a:8:{s:2:\"id\";s:14:\"hotel_phone_no\";s:4:\"slug\";s:14:\"hotel_phone_no\";s:4:\"type\";s:5:\"phone\";s:4:\"name\";s:14:\"Hotel Phone no\";s:11:\"description\";s:0:\"\";s:4:\"data\";a:8:{s:13:\"slug-pre-save\";s:14:\"hotel_phone_no\";s:11:\"placeholder\";s:0:\"\";s:18:\"user_default_value\";s:0:\"\";s:10:\"repetitive\";s:1:\"0\";s:10:\"custom_use\";s:0:\"\";s:19:\"conditional_display\";a:0:{}s:10:\"submit-key\";s:14:\"hotel_phone_no\";s:16:\"disabled_by_type\";i:0;}s:8:\"meta_key\";s:19:\"wpcf-hotel_phone_no\";s:9:\"meta_type\";s:8:\"termmeta\";}s:11:\"hotel_price\";a:8:{s:2:\"id\";s:11:\"hotel_price\";s:4:\"slug\";s:11:\"hotel_price\";s:4:\"type\";s:9:\"textfield\";s:4:\"name\";s:11:\"Hotel Price\";s:11:\"description\";s:0:\"\";s:4:\"data\";a:8:{s:13:\"slug-pre-save\";s:11:\"hotel_price\";s:11:\"placeholder\";s:0:\"\";s:18:\"user_default_value\";s:0:\"\";s:10:\"repetitive\";s:1:\"0\";s:10:\"custom_use\";s:0:\"\";s:19:\"conditional_display\";a:0:{}s:10:\"submit-key\";s:11:\"hotel_price\";s:16:\"disabled_by_type\";i:0;}s:8:\"meta_key\";s:16:\"wpcf-hotel_price\";s:9:\"meta_type\";s:8:\"termmeta\";}s:13:\"hotel_website\";a:8:{s:2:\"id\";s:13:\"hotel_website\";s:4:\"slug\";s:13:\"hotel_website\";s:4:\"type\";s:9:\"textfield\";s:4:\"name\";s:13:\"Hotel Website\";s:11:\"description\";s:0:\"\";s:4:\"data\";a:8:{s:13:\"slug-pre-save\";s:13:\"hotel_website\";s:11:\"placeholder\";s:0:\"\";s:18:\"user_default_value\";s:0:\"\";s:10:\"repetitive\";s:1:\"0\";s:10:\"custom_use\";s:0:\"\";s:19:\"conditional_display\";a:0:{}s:10:\"submit-key\";s:13:\"hotel_website\";s:16:\"disabled_by_type\";i:0;}s:8:\"meta_key\";s:18:\"wpcf-hotel_website\";s:9:\"meta_type\";s:8:\"termmeta\";}s:20:\"cancelled_prepayment\";a:8:{s:2:\"id\";s:20:\"cancelled_prepayment\";s:4:\"slug\";s:20:\"cancelled_prepayment\";s:4:\"type\";s:7:\"wysiwyg\";s:4:\"name\";s:21:\"Cancelled/ Prepayment\";s:11:\"description\";s:0:\"\";s:4:\"data\";a:6:{s:13:\"slug-pre-save\";s:20:\"cancelled_prepayment\";s:18:\"user_default_value\";s:0:\"\";s:10:\"custom_use\";s:0:\"\";s:19:\"conditional_display\";a:0:{}s:10:\"submit-key\";s:20:\"cancelled_prepayment\";s:16:\"disabled_by_type\";i:0;}s:8:\"meta_key\";s:25:\"wpcf-cancelled_prepayment\";s:9:\"meta_type\";s:8:\"termmeta\";}s:21:\"children_and_extrabed\";a:8:{s:2:\"id\";s:21:\"children_and_extrabed\";s:4:\"slug\";s:21:\"children_and_extrabed\";s:4:\"type\";s:7:\"wysiwyg\";s:4:\"name\";s:21:\"Children and extrabed\";s:11:\"description\";s:0:\"\";s:4:\"data\";a:6:{s:13:\"slug-pre-save\";s:21:\"children_and_extrabed\";s:18:\"user_default_value\";s:0:\"\";s:10:\"custom_use\";s:0:\"\";s:19:\"conditional_display\";a:0:{}s:10:\"submit-key\";s:21:\"children_and_extrabed\";s:16:\"disabled_by_type\";i:0;}s:8:\"meta_key\";s:26:\"wpcf-children_and_extrabed\";s:9:\"meta_type\";s:8:\"termmeta\";}s:10:\"hotel_pets\";a:8:{s:2:\"id\";s:10:\"hotel_pets\";s:4:\"slug\";s:10:\"hotel_pets\";s:4:\"type\";s:9:\"textfield\";s:4:\"name\";s:10:\"Hotel Pets\";s:11:\"description\";s:0:\"\";s:4:\"data\";a:8:{s:13:\"slug-pre-save\";s:10:\"hotel_pets\";s:11:\"placeholder\";s:0:\"\";s:18:\"user_default_value\";s:0:\"\";s:10:\"repetitive\";s:1:\"0\";s:10:\"custom_use\";s:0:\"\";s:19:\"conditional_display\";a:0:{}s:10:\"submit-key\";s:10:\"hotel_pets\";s:16:\"disabled_by_type\";i:0;}s:8:\"meta_key\";s:15:\"wpcf-hotel_pets\";s:9:\"meta_type\";s:8:\"termmeta\";}s:16:\"main_hotel_image\";a:8:{s:2:\"id\";s:16:\"main_hotel_image\";s:4:\"slug\";s:16:\"main_hotel_image\";s:4:\"type\";s:5:\"image\";s:4:\"name\";s:15:\"Main HotelImage\";s:11:\"description\";s:0:\"\";s:4:\"data\";a:9:{s:13:\"slug-pre-save\";s:16:\"main_hotel_image\";s:11:\"placeholder\";s:0:\"\";s:18:\"user_default_value\";s:0:\"\";s:10:\"repetitive\";s:1:\"0\";s:10:\"custom_use\";s:0:\"\";s:19:\"conditional_display\";a:0:{}s:10:\"submit-key\";s:16:\"main_hotel_image\";s:16:\"disabled_by_type\";i:0;s:8:\"validate\";a:1:{s:4:\"url2\";a:3:{s:6:\"active\";s:1:\"1\";s:7:\"message\";s:60:\"Please enter a valid URL address pointing to the image file.\";s:17:\"suppress_for_cred\";b:1;}}}s:8:\"meta_key\";s:21:\"wpcf-main_hotel_image\";s:9:\"meta_type\";s:8:\"termmeta\";}}', 'yes'),
(28187, 'main_hotel_informations_children', 'a:0:{}', 'yes'),
(28192, 'installer_repositories_with_theme', 'a:1:{i:0;s:7:\"toolset\";}', 'yes'),
(28194, 'theme_mods_hazproject_21', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:9:\"main_menu\";i:2;s:6:\"menu-1\";i:2;s:11:\"footer_menu\";i:204;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1560702415;s:4:\"data\";a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:6:\"meta-2\";}s:7:\"footer1\";a:0:{}s:7:\"footer2\";a:0:{}s:7:\"footer3\";a:0:{}s:7:\"footer4\";a:1:{i:0;s:12:\"categories-2\";}s:18:\"footerbottom-right\";a:0:{}s:12:\"page_sidebar\";a:0:{}}}}', 'yes'),
(28764, 'otgs_active_components', 'a:2:{s:6:\"plugin\";a:10:{i:0;a:3:{s:4:\"File\";s:30:\"advanced-custom-fields/acf.php\";s:4:\"Name\";s:22:\"Advanced Custom Fields\";s:7:\"Version\";s:5:\"5.8.0\";}i:1;a:3:{s:4:\"File\";s:19:\"akismet/akismet.php\";s:4:\"Name\";s:17:\"Akismet Anti-Spam\";s:7:\"Version\";s:3:\"4.1\";}i:2;a:3:{s:4:\"File\";s:28:\"categorized-gallery/init.php\";s:4:\"Name\";s:26:\"Categorized Gallery Plugin\";s:7:\"Version\";s:1:\"1\";}i:3;a:3:{s:4:\"File\";s:44:\"wp-custom-taxonomy-meta/wp-texonomy-meta.php\";s:4:\"Name\";s:33:\"Category and Taxonomy Meta Fields\";s:7:\"Version\";s:5:\"1.0.0\";}i:4;a:3:{s:4:\"File\";s:33:\"duplicate-post/duplicate-post.php\";s:4:\"Name\";s:14:\"Duplicate Post\";s:7:\"Version\";s:5:\"3.2.2\";}i:5;a:3:{s:4:\"File\";s:29:\"photo-gallery-image/index.php\";s:4:\"Name\";s:15:\"GrandWP Gallery\";s:7:\"Version\";s:5:\"1.1.0\";}i:6;a:3:{s:4:\"File\";s:25:\"profile-builder/index.php\";s:4:\"Name\";s:15:\"Profile Builder\";s:7:\"Version\";s:5:\"2.9.9\";}i:7;a:3:{s:4:\"File\";s:29:\"site-reviews/site-reviews.php\";s:4:\"Name\";s:12:\"Site Reviews\";s:7:\"Version\";s:5:\"3.5.4\";}i:8;a:3:{s:4:\"File\";s:14:\"types/wpcf.php\";s:4:\"Name\";s:13:\"Toolset Types\";s:7:\"Version\";s:5:\"2.3.5\";}i:9;a:3:{s:4:\"File\";s:37:\"user-role-editor/user-role-editor.php\";s:4:\"Name\";s:16:\"User Role Editor\";s:7:\"Version\";s:6:\"4.40.3\";}}s:5:\"theme\";a:1:{i:0;a:3:{s:8:\"Template\";s:10:\"hazproject\";s:4:\"Name\";s:10:\"hazproject\";s:7:\"Version\";s:5:\"1.0.0\";}}}', 'yes'),
(29291, 'widget_theme-my-login', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(29292, '_tml_installed_at', '1567090008', 'no'),
(29293, '_tml_updated_at', '1567090009', 'no'),
(29294, '_tml_version', '7.0.14', 'no'),
(29301, 'tml_login_type', 'default', 'yes'),
(29302, 'tml_registration_type', 'default', 'yes'),
(29303, 'tml_user_passwords', '', 'yes'),
(29304, 'tml_auto_login', '', 'yes'),
(29305, 'tml_login_slug', 'log-in-2', 'yes'),
(29306, 'tml_logout_slug', 'logout', 'yes'),
(29307, 'tml_register_slug', 'register', 'yes'),
(29308, 'tml_lostpassword_slug', 'lostpassword', 'yes'),
(29309, 'tml_resetpass_slug', 'resetpass', 'yes'),
(29323, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:15:\"admin@gmail.com\";s:7:\"version\";s:6:\"5.0.11\";s:9:\"timestamp\";i:1605437335;}', 'no'),
(29449, 'mk_te_settings_options', 'a:5:{s:7:\"e_d_t_e\";s:3:\"yes\";s:17:\"code_editor_theme\";s:6:\"cobalt\";s:9:\"e_w_d_t_e\";s:3:\"yes\";s:7:\"e_d_p_e\";s:3:\"yes\";s:9:\"e_w_d_p_e\";s:3:\"yes\";}', 'yes'),
(29452, 'theme_editor_email_address_1', 'admin@gmail.com', 'yes'),
(29453, 'verify_theme_editor_fname_1', 'Lipan', 'yes'),
(29454, 'verify_theme_editor_lname_1', 'Dutta', 'yes'),
(29455, 'theme_editor_email_verified_1', 'yes', 'yes'),
(29511, '_tml_dismissed_notices', 'a:1:{i:0;s:23:\"new_extension-mailchimp\";}', 'no'),
(29924, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:8:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.6-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.6-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.6\";s:7:\"version\";s:3:\"5.6\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.6-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.6-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.6\";s:7:\"version\";s:3:\"5.6\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.5.3\";s:7:\"version\";s:5:\"5.5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.5.2\";s:7:\"version\";s:5:\"5.5.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:4;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.4\";s:7:\"version\";s:5:\"5.4.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:5;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.6.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.6-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.6-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.6\";s:7:\"version\";s:5:\"5.3.6\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:6;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.9.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.9.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.9-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.9-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.9\";s:7:\"version\";s:5:\"5.2.9\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:7;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.8.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.1.8-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.1.8-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.1.8\";s:7:\"version\";s:5:\"5.1.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1611578896;s:15:\"version_checked\";s:6:\"5.0.11\";s:12:\"translations\";a:0:{}}', 'no'),
(29972, '_site_transient_timeout_tml_extension_data', '1611622098', 'no'),
(29973, '_site_transient_tml_extension_data', 'a:0:{}', 'no'),
(29974, '_site_transient_timeout_theme_roots', '1611580697', 'no'),
(29975, '_site_transient_theme_roots', 'a:8:{s:10:\"hazproject\";s:7:\"/themes\";s:11:\"hazproject2\";s:7:\"/themes\";s:20:\"hazproject23.05.2019\";s:7:\"/themes\";s:21:\"hazproject_30_07_2019\";s:7:\"/themes\";s:14:\"hazproject_old\";s:7:\"/themes\";s:10:\"storefront\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(29976, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1611578897;s:7:\"checked\";a:8:{s:10:\"hazproject\";s:5:\"1.0.0\";s:11:\"hazproject2\";s:5:\"1.0.0\";s:20:\"hazproject23.05.2019\";s:5:\"1.0.0\";s:21:\"hazproject_30_07_2019\";s:5:\"1.0.0\";s:14:\"hazproject_old\";s:5:\"1.0.0\";s:10:\"storefront\";s:5:\"2.4.3\";s:15:\"twentyseventeen\";s:3:\"2.0\";s:13:\"twentysixteen\";s:3:\"1.8\";}s:8:\"response\";a:3:{s:10:\"storefront\";a:6:{s:5:\"theme\";s:10:\"storefront\";s:11:\"new_version\";s:5:\"3.3.0\";s:3:\"url\";s:40:\"https://wordpress.org/themes/storefront/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/storefront.3.3.0.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:5:\"5.6.0\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.5\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.5.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:13:\"twentysixteen\";a:6:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"2.3\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.2.3.zip\";s:8:\"requires\";s:3:\"4.4\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(29977, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1611578898;s:7:\"checked\";a:27:{s:19:\"akismet/akismet.php\";s:3:\"4.1\";s:19:\"bbpress/bbpress.php\";s:6:\"2.5.14\";s:37:\"bbp-shortcodes/bbpress-shortcodes.php\";s:3:\"1.0\";s:33:\"Car Booking/wp-booking-system.php\";s:5:\"1.5.1\";s:17:\"ratting/index.php\";s:5:\"0.1.0\";s:38:\"cmb_field_map-master/cmb-field-map.php\";s:5:\"2.2.0\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.0.1\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.5.8\";s:33:\"duplicate-post/duplicate-post.php\";s:5:\"3.2.2\";s:29:\"photo-gallery-image/index.php\";s:5:\"1.1.0\";s:9:\"hello.php\";s:5:\"1.7.1\";s:56:\"motopress-hotel-booking-lite/motopress-hotel-booking.php\";s:5:\"3.2.0\";s:37:\"mailchimp-for-wp/mailchimp-for-wp.php\";s:5:\"4.2.1\";s:29:\"multi-rating/multi-rating.php\";s:3:\"4.3\";s:25:\"profile-builder/index.php\";s:5:\"2.9.9\";s:29:\"site-reviews/site-reviews.php\";s:5:\"3.5.4\";s:29:\"theme-editor/theme_editor.php\";s:3:\"2.1\";s:33:\"theme-my-login/theme-my-login.php\";s:6:\"7.0.14\";s:31:\"traveler-code/traveler-code.php\";s:5:\"2.0.5\";s:37:\"user-role-editor/user-role-editor.php\";s:6:\"4.40.3\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.5.5\";s:69:\"woo-gutenberg-products-block/woocommerce-gutenberg-products-block.php\";s:5:\"1.4.0\";s:42:\"wordpress-social-login/wp-social-login.php\";s:5:\"2.3.3\";s:27:\"js_composer/js_composer.php\";s:5:\"5.4.7\";s:23:\"wp-travel/wp-travel.php\";s:5:\"1.8.9\";s:25:\"wp-user-frontend/wpuf.php\";s:5:\"2.8.7\";s:33:\"wp-user-frontend-pro/wpuf-pro.php\";s:5:\"2.6.0\";}s:8:\"response\";a:11:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.6\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:19:\"bbpress/bbpress.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/bbpress\";s:4:\"slug\";s:7:\"bbpress\";s:6:\"plugin\";s:19:\"bbpress/bbpress.php\";s:11:\"new_version\";s:5:\"2.6.6\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/bbpress/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/bbpress.2.6.6.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:60:\"https://ps.w.org/bbpress/assets/icon-256x256.png?rev=1534011\";s:2:\"1x\";s:51:\"https://ps.w.org/bbpress/assets/icon.svg?rev=978290\";s:3:\"svg\";s:51:\"https://ps.w.org/bbpress/assets/icon.svg?rev=978290\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/bbpress/assets/banner-1544x500.png?rev=567403\";s:2:\"1x\";s:61:\"https://ps.w.org/bbpress/assets/banner-772x250.png?rev=478663\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/bbpress/assets/banner-1544x500-rtl.png?rev=1534011\";s:2:\"1x\";s:66:\"https://ps.w.org/bbpress/assets/banner-772x250-rtl.png?rev=1534011\";}s:6:\"tested\";s:3:\"5.6\";s:12:\"requires_php\";s:6:\"5.6.20\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:9:\"hello.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.3\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:56:\"motopress-hotel-booking-lite/motopress-hotel-booking.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:42:\"w.org/plugins/motopress-hotel-booking-lite\";s:4:\"slug\";s:28:\"motopress-hotel-booking-lite\";s:6:\"plugin\";s:56:\"motopress-hotel-booking-lite/motopress-hotel-booking.php\";s:11:\"new_version\";s:5:\"3.9.2\";s:3:\"url\";s:59:\"https://wordpress.org/plugins/motopress-hotel-booking-lite/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/motopress-hotel-booking-lite.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:81:\"https://ps.w.org/motopress-hotel-booking-lite/assets/icon-128x128.png?rev=1852316\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:83:\"https://ps.w.org/motopress-hotel-booking-lite/assets/banner-772x250.jpg?rev=1852316\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.6\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:37:\"mailchimp-for-wp/mailchimp-for-wp.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:30:\"w.org/plugins/mailchimp-for-wp\";s:4:\"slug\";s:16:\"mailchimp-for-wp\";s:6:\"plugin\";s:37:\"mailchimp-for-wp/mailchimp-for-wp.php\";s:11:\"new_version\";s:5:\"4.8.3\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/mailchimp-for-wp/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/mailchimp-for-wp.4.8.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/mailchimp-for-wp/assets/icon-256x256.png?rev=1224577\";s:2:\"1x\";s:69:\"https://ps.w.org/mailchimp-for-wp/assets/icon-128x128.png?rev=1224577\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:71:\"https://ps.w.org/mailchimp-for-wp/assets/banner-772x250.png?rev=1184706\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.6\";s:12:\"requires_php\";s:3:\"5.3\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:29:\"multi-rating/multi-rating.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:26:\"w.org/plugins/multi-rating\";s:4:\"slug\";s:12:\"multi-rating\";s:6:\"plugin\";s:29:\"multi-rating/multi-rating.php\";s:11:\"new_version\";s:5:\"5.0.3\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/multi-rating/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/multi-rating.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:57:\"https://ps.w.org/multi-rating/assets/icon.svg?rev=1788531\";s:3:\"svg\";s:57:\"https://ps.w.org/multi-rating/assets/icon.svg?rev=1788531\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:67:\"https://ps.w.org/multi-rating/assets/banner-772x250.png?rev=1509324\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.3\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:25:\"profile-builder/index.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:29:\"w.org/plugins/profile-builder\";s:4:\"slug\";s:15:\"profile-builder\";s:6:\"plugin\";s:25:\"profile-builder/index.php\";s:11:\"new_version\";s:5:\"3.3.6\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/profile-builder/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/profile-builder.3.3.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/profile-builder/assets/icon-256x256.png?rev=2257592\";s:2:\"1x\";s:68:\"https://ps.w.org/profile-builder/assets/icon-128x128.png?rev=2257592\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/profile-builder/assets/banner-1544x500.png?rev=2257594\";s:2:\"1x\";s:70:\"https://ps.w.org/profile-builder/assets/banner-772x250.png?rev=2257592\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.6.0\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:29:\"theme-editor/theme_editor.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:26:\"w.org/plugins/theme-editor\";s:4:\"slug\";s:12:\"theme-editor\";s:6:\"plugin\";s:29:\"theme-editor/theme_editor.php\";s:11:\"new_version\";s:3:\"2.4\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/theme-editor/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/theme-editor.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/theme-editor/assets/icon-128x128.png?rev=1644634\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:67:\"https://ps.w.org/theme-editor/assets/banner-772x250.jpg?rev=1644636\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.3\";s:12:\"requires_php\";s:5:\"5.2.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:37:\"user-role-editor/user-role-editor.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:30:\"w.org/plugins/user-role-editor\";s:4:\"slug\";s:16:\"user-role-editor\";s:6:\"plugin\";s:37:\"user-role-editor/user-role-editor.php\";s:11:\"new_version\";s:6:\"4.58.2\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/user-role-editor/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/user-role-editor.4.58.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/user-role-editor/assets/icon-256x256.jpg?rev=1020390\";s:2:\"1x\";s:69:\"https://ps.w.org/user-role-editor/assets/icon-128x128.jpg?rev=1020390\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:71:\"https://ps.w.org/user-role-editor/assets/banner-772x250.png?rev=1263116\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.6\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:42:\"wordpress-social-login/wp-social-login.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/wordpress-social-login\";s:4:\"slug\";s:22:\"wordpress-social-login\";s:6:\"plugin\";s:42:\"wordpress-social-login/wp-social-login.php\";s:11:\"new_version\";s:5:\"3.0.4\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/wordpress-social-login/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/wordpress-social-login.3.0.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/wordpress-social-login/assets/icon-256x256.png?rev=1013188\";s:2:\"1x\";s:75:\"https://ps.w.org/wordpress-social-login/assets/icon-128x128.png?rev=1013190\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:76:\"https://ps.w.org/wordpress-social-login/assets/banner-772x250.png?rev=503808\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.3\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:25:\"wp-user-frontend/wpuf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:30:\"w.org/plugins/wp-user-frontend\";s:4:\"slug\";s:16:\"wp-user-frontend\";s:6:\"plugin\";s:25:\"wp-user-frontend/wpuf.php\";s:11:\"new_version\";s:6:\"3.5.12\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/wp-user-frontend/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/wp-user-frontend.3.5.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wp-user-frontend/assets/icon-256x256.png?rev=1458010\";s:2:\"1x\";s:69:\"https://ps.w.org/wp-user-frontend/assets/icon-128x128.png?rev=1458010\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/wp-user-frontend/assets/banner-1544x500.png?rev=1627560\";s:2:\"1x\";s:71:\"https://ps.w.org/wp-user-frontend/assets/banner-772x250.png?rev=1627560\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.6\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:9:{s:37:\"bbp-shortcodes/bbpress-shortcodes.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/bbp-shortcodes\";s:4:\"slug\";s:14:\"bbp-shortcodes\";s:6:\"plugin\";s:37:\"bbp-shortcodes/bbpress-shortcodes.php\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/bbp-shortcodes/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/bbp-shortcodes.1.0.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:65:\"https://s.w.org/plugins/geopattern-icon/bbp-shortcodes_ffffff.svg\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/bbp-shortcodes/assets/banner-772x250.png?rev=1758636\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.3.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.3.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.6\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";a:0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.8.2\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.8.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.6.0\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";a:0:{}}s:33:\"duplicate-post/duplicate-post.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/duplicate-post\";s:4:\"slug\";s:14:\"duplicate-post\";s:6:\"plugin\";s:33:\"duplicate-post/duplicate-post.php\";s:11:\"new_version\";s:5:\"4.0.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/duplicate-post/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/duplicate-post.4.0.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-256x256.png?rev=2336666\";s:2:\"1x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-128x128.png?rev=2336666\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/duplicate-post/assets/banner-1544x500.png?rev=2336666\";s:2:\"1x\";s:69:\"https://ps.w.org/duplicate-post/assets/banner-772x250.png?rev=2336666\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.6\";s:12:\"requires_php\";s:6:\"5.6.20\";s:13:\"compatibility\";a:0:{}}s:29:\"site-reviews/site-reviews.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:26:\"w.org/plugins/site-reviews\";s:4:\"slug\";s:12:\"site-reviews\";s:6:\"plugin\";s:29:\"site-reviews/site-reviews.php\";s:11:\"new_version\";s:5:\"5.4.3\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/site-reviews/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/site-reviews.5.4.3.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:65:\"https://ps.w.org/site-reviews/assets/icon-256x256.png?rev=2404970\";s:2:\"1x\";s:57:\"https://ps.w.org/site-reviews/assets/icon.svg?rev=2404970\";s:3:\"svg\";s:57:\"https://ps.w.org/site-reviews/assets/icon.svg?rev=2404970\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/site-reviews/assets/banner-1544x500.png?rev=2404970\";s:2:\"1x\";s:67:\"https://ps.w.org/site-reviews/assets/banner-772x250.png?rev=2404970\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.6\";s:12:\"requires_php\";s:6:\"5.6.20\";s:13:\"compatibility\";a:0:{}}s:33:\"theme-my-login/theme-my-login.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/theme-my-login\";s:4:\"slug\";s:14:\"theme-my-login\";s:6:\"plugin\";s:33:\"theme-my-login/theme-my-login.php\";s:11:\"new_version\";s:5:\"7.1.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/theme-my-login/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/theme-my-login.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/theme-my-login/assets/icon-256x256.png?rev=1891232\";s:2:\"1x\";s:67:\"https://ps.w.org/theme-my-login/assets/icon-128x128.png?rev=1891232\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/theme-my-login/assets/banner-1544x500.png?rev=1891232\";s:2:\"1x\";s:69:\"https://ps.w.org/theme-my-login/assets/banner-772x250.png?rev=1891232\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.4\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"4.9.1\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.4.9.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2366418\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2366418\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2366418\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2366418\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.6\";s:12:\"requires_php\";s:3:\"7.0\";s:13:\"compatibility\";a:0:{}}s:69:\"woo-gutenberg-products-block/woocommerce-gutenberg-products-block.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:42:\"w.org/plugins/woo-gutenberg-products-block\";s:4:\"slug\";s:28:\"woo-gutenberg-products-block\";s:6:\"plugin\";s:69:\"woo-gutenberg-products-block/woocommerce-gutenberg-products-block.php\";s:11:\"new_version\";s:5:\"4.3.0\";s:3:\"url\";s:59:\"https://wordpress.org/plugins/woo-gutenberg-products-block/\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/plugin/woo-gutenberg-products-block.4.3.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:81:\"https://ps.w.org/woo-gutenberg-products-block/assets/icon-256x256.png?rev=2413866\";s:2:\"1x\";s:81:\"https://ps.w.org/woo-gutenberg-products-block/assets/icon-128x128.png?rev=2413866\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:84:\"https://ps.w.org/woo-gutenberg-products-block/assets/banner-1544x500.png?rev=2413866\";s:2:\"1x\";s:83:\"https://ps.w.org/woo-gutenberg-products-block/assets/banner-772x250.png?rev=2413866\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.6\";s:12:\"requires_php\";s:3:\"7.0\";s:13:\"compatibility\";a:0:{}}s:23:\"wp-travel/wp-travel.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:23:\"w.org/plugins/wp-travel\";s:4:\"slug\";s:9:\"wp-travel\";s:6:\"plugin\";s:23:\"wp-travel/wp-travel.php\";s:11:\"new_version\";s:5:\"4.4.4\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/wp-travel/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/wp-travel.4.4.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/wp-travel/assets/icon-256x256.png?rev=2119494\";s:2:\"1x\";s:62:\"https://ps.w.org/wp-travel/assets/icon-128x128.png?rev=2119494\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wp-travel/assets/banner-1544x500.png?rev=2212818\";s:2:\"1x\";s:64:\"https://ps.w.org/wp-travel/assets/banner-772x250.png?rev=2212818\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.6\";s:12:\"requires_php\";s:3:\"5.5\";s:13:\"compatibility\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_p2p_relationshipmeta`
--

CREATE TABLE `wp_p2p_relationshipmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `p2p_relationship_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_p2p_relationships`
--

CREATE TABLE `wp_p2p_relationships` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(42) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rel_from` bigint(20) UNSIGNED NOT NULL,
  `rel_to` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(7, 9, '_edit_lock', '1569342107:1'),
(8, 11, '_edit_lock', '1553855765:1'),
(9, 13, '_edit_lock', '1558509897:1'),
(10, 15, '_edit_lock', '1550567403:1'),
(12, 19, '_edit_lock', '1561735319:1'),
(13, 21, '_edit_lock', '1550567479:1'),
(14, 23, '_edit_lock', '1550567489:1'),
(15, 25, '_edit_lock', '1550567508:1'),
(79, 34, '_menu_item_type', 'post_type'),
(80, 34, '_menu_item_menu_item_parent', '0'),
(81, 34, '_menu_item_object_id', '11'),
(82, 34, '_menu_item_object', 'page'),
(83, 34, '_menu_item_target', ''),
(84, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(85, 34, '_menu_item_xfn', ''),
(86, 34, '_menu_item_url', ''),
(88, 35, '_menu_item_type', 'post_type'),
(89, 35, '_menu_item_menu_item_parent', '0'),
(90, 35, '_menu_item_object_id', '9'),
(91, 35, '_menu_item_object', 'page'),
(92, 35, '_menu_item_target', ''),
(93, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(94, 35, '_menu_item_xfn', ''),
(95, 35, '_menu_item_url', ''),
(106, 37, '_wp_attached_file', '2019/02/logo-white.png'),
(107, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:95;s:6:\"height\";i:20;s:4:\"file\";s:22:\"2019/02/logo-white.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(123, 50, '_edit_lock', '1550648570:1'),
(124, 52, '_edit_lock', '1550648607:1'),
(125, 52, '_wp_page_template', 'all_page/rental.search_result.php'),
(126, 54, '_edit_lock', '1550648630:1'),
(127, 54, '_wp_page_template', 'all_page/rental.map.php'),
(134, 62, '_edit_lock', '1558259497:1'),
(135, 62, '_wp_page_template', 'all_page/book-now.php'),
(136, 64, '_edit_lock', '1550648746:1'),
(137, 64, '_wp_page_template', 'all_page/hajj-package.php'),
(145, 74, '_edit_lock', '1550648918:1'),
(146, 74, '_wp_page_template', 'all_page/search.php'),
(147, 76, '_edit_lock', '1550648938:1'),
(148, 76, '_wp_page_template', 'all_page/sign-up.php'),
(153, 82, '_edit_lock', '1550649002:1'),
(154, 82, '_wp_page_template', 'all_page/umrah-package.php'),
(304, 150, '_wp_attached_file', '2019/02/30.jpg'),
(305, 150, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:14:\"2019/02/30.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"30-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(307, 151, '_wp_attached_file', '2019/02/thumb.jpg'),
(308, 151, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:251;s:6:\"height\";i:188;s:4:\"file\";s:17:\"2019/02/thumb.jpg\";s:5:\"sizes\";a:4:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"thumb-250x188.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"thumb-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"thumb-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"300x300\";b:0;}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(319, 169, '_edit_last', '1'),
(320, 169, '_edit_lock', '1550910133:1'),
(358, 176, '_wp_attached_file', '2019/02/thumb_1537856321-package-image.jpg'),
(359, 176, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:353;s:6:\"height\";i:221;s:4:\"file\";s:42:\"2019/02/thumb_1537856321-package-image.jpg\";s:5:\"sizes\";a:6:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:42:\"thumb_1537856321-package-image-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:42:\"thumb_1537856321-package-image-324x221.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:221;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:42:\"thumb_1537856321-package-image-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"thumb_1537856321-package-image-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:6:{s:4:\"file\";s:42:\"thumb_1537856321-package-image-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";s:11:\"width_query\";s:3:\"300\";s:12:\"height_query\";s:3:\"300\";}s:7:\"300x300\";a:4:{s:4:\"file\";s:42:\"thumb_1537856321-package-image-300x221.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:221;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(362, 177, '_wp_attached_file', '2019/02/thumb.jpg'),
(363, 177, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:251;s:6:\"height\";i:188;s:4:\"file\";s:17:\"2019/02/thumb.jpg\";s:5:\"sizes\";a:4:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"thumb-250x188.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"thumb-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"thumb-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"300x300\";b:0;}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(413, 186, '_edit_lock', '1551248051:1'),
(414, 186, '_wp_page_template', 'umrah-result.php'),
(433, 196, '_edit_last', '1'),
(434, 196, '_edit_lock', '1572101935:2'),
(435, 196, '_thumbnail_id', '151'),
(436, 196, 'agentname', 'Lala International Travel & Tours Pvt Ltd (Group Of Companies).'),
(437, 196, 'makkahstay', '13Days'),
(438, 196, 'madinahstay', '15 Days'),
(439, 196, 'makkahhotelhame', 'Wafood Al Khair or Similar'),
(440, 196, 'Makkahoteldistance', '1200 Meters'),
(441, 196, 'madinahhotelname', 'Umer Hadi 1 or Similar'),
(442, 196, 'madinahhoteldistance', '1100 Meters'),
(443, 196, 'locationcheckins', '02/27/2019'),
(444, 196, 'locationcheckout', '02/28/2019'),
(445, 196, 'umrahroom', '5'),
(446, 196, 'umrahparson', '2'),
(447, 196, 'umrahdouble', '37,927.00'),
(448, 196, 'umrahtriplebed', '27,937.00'),
(449, 196, 'umrahfourbed', '23,941.00'),
(450, 196, 'umrahsharing', '20,944.00'),
(1115, 251, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),
(1116, 251, '_mail', 'a:8:{s:7:\"subject\";s:39:\"projct new development \"[your-subject]\"\";s:6:\"sender\";s:29:\"[your-name] <admin@gmail.com>\";s:4:\"body\";s:185:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on projct new development (http://localhost/project)\";s:9:\"recipient\";s:15:\"admin@gmail.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(1117, 251, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:39:\"projct new development \"[your-subject]\"\";s:6:\"sender\";s:40:\"projct new development <admin@gmail.com>\";s:4:\"body\";s:127:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on projct new development (http://localhost/project)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:25:\"Reply-To: admin@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(1118, 251, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";}'),
(1119, 251, '_additional_settings', NULL),
(1120, 251, '_locale', 'en_US'),
(1121, 252, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1190, 264, '_wc_review_count', '0'),
(1191, 264, '_wc_rating_count', 'a:0:{}'),
(1192, 264, '_wc_average_rating', '0'),
(1193, 264, '_edit_last', '1'),
(1194, 264, '_edit_lock', '1553801070:1'),
(1195, 264, '_thumbnail_id', '151'),
(1196, 264, '_sku', 'hjkhjk'),
(1197, 264, '_regular_price', '1500'),
(1198, 264, '_sale_price', '1200'),
(1199, 264, '_sale_price_dates_from', ''),
(1200, 264, '_sale_price_dates_to', ''),
(1201, 264, 'total_sales', '0'),
(1202, 264, '_tax_status', 'taxable'),
(1203, 264, '_tax_class', ''),
(1204, 264, '_manage_stock', 'yes'),
(1205, 264, '_backorders', 'no'),
(1206, 264, '_low_stock_amount', ''),
(1207, 264, '_sold_individually', 'yes'),
(1208, 264, '_weight', '12'),
(1209, 264, '_length', '15'),
(1210, 264, '_width', '5800'),
(1211, 264, '_height', '210'),
(1212, 264, '_upsell_ids', 'a:0:{}'),
(1213, 264, '_crosssell_ids', 'a:0:{}'),
(1214, 264, '_purchase_note', 'dsnmfkjgnfdsmg,dfmg,df'),
(1215, 264, '_default_attributes', 'a:0:{}'),
(1216, 264, '_virtual', 'no'),
(1217, 264, '_downloadable', 'no'),
(1218, 264, '_product_image_gallery', '151'),
(1219, 264, '_download_limit', '-1'),
(1220, 264, '_download_expiry', '-1'),
(1221, 264, '_stock', '4'),
(1222, 264, '_stock_status', 'instock'),
(1223, 264, '_product_version', '3.5.5'),
(1224, 264, '_price', '1200'),
(1264, 267, '_wc_review_count', '1'),
(1265, 267, '_wc_rating_count', 'a:1:{i:4;i:1;}'),
(1266, 267, '_wc_average_rating', '4.00'),
(1267, 267, '_edit_lock', '1553798806:1'),
(1268, 267, '_thumbnail_id', '176'),
(1269, 267, '_edit_last', '1'),
(1270, 267, '_sku', '34'),
(1271, 267, '_regular_price', '4000'),
(1272, 267, '_sale_price', '3500'),
(1273, 267, '_sale_price_dates_from', ''),
(1274, 267, '_sale_price_dates_to', ''),
(1275, 267, 'total_sales', '0'),
(1276, 267, '_tax_status', 'taxable'),
(1277, 267, '_tax_class', ''),
(1278, 267, '_manage_stock', 'no'),
(1279, 267, '_backorders', 'no'),
(1280, 267, '_low_stock_amount', ''),
(1281, 267, '_sold_individually', 'no'),
(1282, 267, '_weight', '45'),
(1283, 267, '_length', '400'),
(1284, 267, '_width', '300'),
(1285, 267, '_height', '200'),
(1286, 267, '_upsell_ids', 'a:0:{}'),
(1287, 267, '_crosssell_ids', 'a:0:{}'),
(1288, 267, '_purchase_note', 'My permalink structure might be the cause - but basically i have a formidable form creating a new post'),
(1289, 267, '_default_attributes', 'a:0:{}'),
(1290, 267, '_virtual', 'no'),
(1291, 267, '_downloadable', 'no'),
(1292, 267, '_product_image_gallery', '177,176,151'),
(1293, 267, '_download_limit', '-1'),
(1294, 267, '_download_expiry', '-1'),
(1295, 267, '_stock', NULL),
(1296, 267, '_stock_status', 'instock'),
(1297, 267, '_product_version', '3.5.5'),
(1298, 267, '_price', '3500'),
(1299, 267, 'agentname', 'Flying World Travels'),
(1300, 267, 'makkahstay', '12'),
(1301, 267, 'madinahstay', '12'),
(1302, 267, 'makkahhotelhame', 'Le Meridian Hotel 5 Star'),
(1303, 267, 'Makkahoteldistance', '600'),
(1304, 267, 'madinahhotelname', 'Le Meridian Hotel 5 Star'),
(1305, 267, 'madinahhoteldistance', '500'),
(1306, 267, 'locationcheckins', '03/03/2019'),
(1307, 267, 'locationcheckout', '03/15/2019'),
(1308, 267, 'umrahroom', '10'),
(1309, 267, 'umrahparson', '6'),
(1310, 267, 'umrahdouble', '35,000.00'),
(1311, 267, 'umrahtriplebed', '45,000.00'),
(1312, 267, 'umrahfourbed', '50,000.00'),
(1313, 267, 'umrahsharing', '60,000.00'),
(1331, 274, '_edit_last', '1'),
(1332, 274, '_edit_lock', '1551554104:1'),
(1333, 274, 'discount_type', 'fixed_cart'),
(1334, 274, 'coupon_amount', '1200'),
(1335, 274, 'individual_use', 'no'),
(1336, 274, 'product_ids', ''),
(1337, 274, 'exclude_product_ids', ''),
(1338, 274, 'usage_limit', '0'),
(1339, 274, 'usage_limit_per_user', '0'),
(1340, 274, 'limit_usage_to_x_items', '0'),
(1341, 274, 'usage_count', '0'),
(1342, 274, 'date_expires', '1552003200'),
(1343, 274, 'expiry_date', '2019-03-08'),
(1344, 274, 'free_shipping', 'yes'),
(1345, 274, 'product_categories', 'a:0:{}'),
(1346, 274, 'exclude_product_categories', 'a:0:{}'),
(1347, 274, 'exclude_sale_items', 'no'),
(1348, 274, 'minimum_amount', ''),
(1349, 274, 'maximum_amount', ''),
(1350, 274, 'customer_email', 'a:0:{}'),
(1399, 198, '_edit_lock', '1551606472:1'),
(1400, 198, '_wp_page_template', 'cart.php'),
(1421, 290, '_edit_lock', '1551612198:1'),
(1431, 290, '_wp_page_template', 'checkout.php'),
(1457, 263, '_wc_review_count', '0'),
(1458, 263, '_wc_rating_count', 'a:0:{}'),
(1459, 263, '_wc_average_rating', '0'),
(1466, 306, '_edit_last', '1'),
(1467, 306, '_edit_lock', '1553537559:1'),
(1469, 308, '_edit_lock', '1551873824:1'),
(1470, 306, '_wp_old_date', '2019-03-05'),
(1471, 324, '_edit_last', '1'),
(1472, 324, '_edit_lock', '1553775625:1'),
(1483, 328, '_wp_attached_file', '2019/03/800x600-1.jpg'),
(1484, 328, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:21:\"2019/03/800x600-1.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"800x600-1-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"800x600-1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"800x600-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:6:{s:4:\"file\";s:21:\"800x600-1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";s:11:\"width_query\";s:3:\"300\";s:12:\"height_query\";s:3:\"300\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"800x600-1-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"800x600-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:21:\"800x600-1-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"800x600-1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"800x600-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"300x300\";a:4:{s:4:\"file\";s:21:\"800x600-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1485, 329, '_wp_attached_file', '2019/03/orea.jpg'),
(1486, 329, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:145;s:4:\"file\";s:16:\"2019/03/orea.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"orea-150x145.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"orea-300x145.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:16:\"orea-300x145.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"orea-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:16:\"orea-300x145.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:16:\"orea-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1487, 306, '_thumbnail_id', '328'),
(1488, 306, 'agentname', 'Maserati'),
(1489, 306, 'agentlocation', 'Mirpur, Dhaka'),
(1490, 306, 'agentemail', 'abc@domain.com'),
(1491, 306, 'agentphone', '+123456789'),
(1492, 306, 'agentlogo_id', '329'),
(1493, 306, 'agentlogo', 'http://localhost:8080/project/wp-content/uploads/2019/03/orea.jpg'),
(1494, 306, 'oldprice', '70,000.00'),
(1495, 306, 'presentprice', '60,000.00'),
(1496, 306, 'Makkahoteldistance', '5,000.00'),
(1497, 306, 'madinahhotelname', '4,000.00'),
(1498, 306, 'madinahhoteldistance', '4,500.00'),
(1499, 306, 'locationmap', '3,000.00'),
(1500, 306, 'carequipment', 'FREE'),
(1501, 306, 'cardescription', 'Arrive at your destination in style with this air-conditioned automatic. With room for 4 passengers and 2 pieces of luggage, it\'s ideal for small groups looking to get from A to B in comfort. Price can change at any moment so book now to avoid disappointment!'),
(1502, 330, '_edit_lock', '1553538192:1'),
(1503, 330, '_wp_page_template', 'advancedsearch.php'),
(1504, 337, '_edit_last', '1'),
(1505, 337, '_edit_lock', '1558757552:1'),
(1506, 338, '_wp_attached_file', '2019/03/palace-park-versailles-5-800x600.jpg'),
(1507, 338, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:44:\"2019/03/palace-park-versailles-5-800x600.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"palace-park-versailles-5-800x600-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"palace-park-versailles-5-800x600-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"palace-park-versailles-5-800x600-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:44:\"palace-park-versailles-5-800x600-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:44:\"palace-park-versailles-5-800x600-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:44:\"palace-park-versailles-5-800x600-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:44:\"palace-park-versailles-5-800x600-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:44:\"palace-park-versailles-5-800x600-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:44:\"palace-park-versailles-5-800x600-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1508, 337, '_thumbnail_id', '351'),
(1509, 337, 'toursdeparturedate', '03/28/2019'),
(1510, 337, 'toursarrivedate', '04/24/2019'),
(1511, 337, 'toursname', 'Versailles Small Trip'),
(1512, 337, 'toursemail', 'test@gmail.com'),
(1513, 337, 'tourlocation', 'Cursus faucibus egestas rutrum mauris vulputate consequat ante'),
(1514, 337, 'toursprice', '780,000.00'),
(1515, 337, 'tourstype', 'Specific Date'),
(1516, 337, 'maximumnumberof', '3'),
(1517, 337, 'toursoverview', 'At qui elit nobis legimus, at eum partiendo disputando. Sit id dicunt viderer, animal suscipit voluptaria est te. Ad mollis scriptorem eos, pri id velit ludus. Cum minim nostro constituto in, ex vim bonorum tacimates referrentur. Eum ut quodsi regione adolescens. Vel ei partem accommodare, mucius facete atomorum ius no, cu quo sonet eligendi officiis'),
(1518, 337, 'toursdayone', 'Ridens reprimique sed ei, ei qui dicta officiis. Dicat intellegebat vim in, at fastidii prodesset gloriatur qui, sed dicam eripuit necessitatibus an. Has ex enim adolescens vituperata. Nam malorum debitis reprimique no, quaestio percipitur referrentur pro te.\r\n\r\n&nbsp;'),
(1519, 337, 'toursdaytwo', 'Ridens reprimique sed ei, ei qui dicta officiis. Dicat intellegebat vim in, at fastidii prodesset gloriatur qui, sed dicam eripuit necessitatibus an. Has ex enim adolescens vituperata. Nam malorum debitis reprimique no, quaestio percipitur referrentur pro te.\r\n\r\n&nbsp;'),
(1520, 337, 'toursdaythress', 'Ridens reprimique sed ei, ei qui dicta officiis. Dicat intellegebat vim in, at fastidii prodesset gloriatur qui, sed dicam eripuit necessitatibus an. Has ex enim adolescens vituperata. Nam malorum debitis reprimique no, quaestio percipitur referrentur pro te.\r\n\r\n&nbsp;'),
(1521, 337, 'toursdayfour', 'Ridens reprimique sed ei, ei qui dicta officiis. Dicat intellegebat vim in, at fastidii prodesset gloriatur qui, sed dicam eripuit necessitatibus an. Has ex enim adolescens vituperata. Nam malorum debitis reprimique no, quaestio percipitur referrentur pro te.\r\n\r\n&nbsp;'),
(1527, 343, '_edit_last', '1'),
(1528, 343, '_edit_lock', '1553774826:1'),
(1529, 344, '_wp_attached_file', '2019/03/demo2.png'),
(1530, 344, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:291;s:4:\"file\";s:17:\"2019/03/demo2.png\";s:5:\"sizes\";a:7:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:17:\"demo2-300x218.png\";s:5:\"width\";i:300;s:6:\"height\";i:218;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"demo2-324x291.png\";s:5:\"width\";i:324;s:6:\"height\";i:291;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"demo2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:6:{s:4:\"file\";s:17:\"demo2-300x218.png\";s:5:\"width\";i:300;s:6:\"height\";i:218;s:9:\"mime-type\";s:9:\"image/png\";s:11:\"width_query\";s:3:\"300\";s:12:\"height_query\";s:3:\"300\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"demo2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:17:\"demo2-300x218.png\";s:5:\"width\";i:300;s:6:\"height\";i:218;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"demo2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1531, 345, '_wp_attached_file', '2019/03/800x600-1.jpg'),
(1532, 345, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:21:\"2019/03/800x600-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"800x600-1-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"800x600-1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"800x600-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:6:{s:4:\"file\";s:21:\"800x600-1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";s:11:\"width_query\";s:3:\"300\";s:12:\"height_query\";s:3:\"300\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"800x600-1-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"800x600-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:21:\"800x600-1-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"800x600-1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"800x600-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1533, 343, '_thumbnail_id', '345'),
(1534, 343, 'agentname', 'Lorem Ipsum'),
(1535, 343, 'agentlocation', 'Dhaka'),
(1536, 343, 'agentemail', 'milon@weblinkltd.com'),
(1537, 343, 'agentphone', '01736699819'),
(1538, 343, 'agentlogo_id', '344'),
(1539, 343, 'agentlogo', 'https://technovicinity.com/development/wordpress/milon/travel/wp-content/uploads/2019/03/demo2.png'),
(1540, 343, 'oldprice', '12,000.00'),
(1541, 343, 'presentprice', '10,000.00'),
(1542, 343, 'Makkahoteldistance', '1,523.00'),
(1543, 343, 'madinahhotelname', '1,212.00'),
(1544, 343, 'madinahhoteldistance', '12,121.00'),
(1545, 343, 'locationmap', '12.00'),
(1546, 343, 'carequipment', 'Free'),
(1547, 343, 'cardescription', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(1548, 346, '_wp_attached_file', '2019/03/br1-1.jpg'),
(1549, 346, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:17:\"2019/03/br1-1.jpg\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"br1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"br1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1550, 347, '_wp_attached_file', '2019/03/7478-143x71-1.jpg'),
(1551, 347, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:143;s:6:\"height\";i:71;s:4:\"file\";s:25:\"2019/03/7478-143x71-1.jpg\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"7478-143x71-1-100x71.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:71;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"7478-143x71-1-100x71.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:71;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1552, 324, '_thumbnail_id', '345'),
(1553, 324, 'agentname', 'weblink'),
(1554, 324, 'agentlocation', 'Banani'),
(1555, 324, 'agentemail', 'weblimk@gmail.com'),
(1556, 324, 'agentphone', '12345678912'),
(1557, 324, 'agentlogo_id', '346'),
(1558, 324, 'agentlogo', 'https://technovicinity.com/development/wordpress/milon/travel/wp-content/uploads/2019/03/br1-1.jpg'),
(1559, 324, 'oldprice', '21,212.00'),
(1560, 324, 'presentprice', '12,212.00'),
(1561, 324, 'Makkahoteldistance', '21,212.00'),
(1562, 324, 'madinahhotelname', '21,212.00'),
(1563, 324, 'madinahhoteldistance', '12,212.00'),
(1564, 324, 'locationmap', '212.00'),
(1565, 324, 'carequipment', 'Free'),
(1566, 324, 'cardescription', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(1567, 348, '_wp_attached_file', '2019/03/3-1.jpg'),
(1568, 348, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:263;s:6:\"height\";i:197;s:4:\"file\";s:15:\"2019/03/3-1.jpg\";s:5:\"sizes\";a:5:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"3-1-250x197.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"3-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"3-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"3-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"266x266\";b:0;}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1572, 350, '_sku', '34-1'),
(1573, 350, '_regular_price', '4000'),
(1574, 350, '_sale_price', '3500'),
(1575, 350, '_sale_price_dates_from', ''),
(1576, 350, '_sale_price_dates_to', ''),
(1577, 350, 'total_sales', '0'),
(1578, 350, '_tax_status', 'taxable'),
(1579, 350, '_tax_class', ''),
(1580, 350, '_manage_stock', 'no'),
(1581, 350, '_backorders', 'no'),
(1582, 350, '_low_stock_amount', ''),
(1583, 350, '_sold_individually', 'no'),
(1584, 350, '_weight', '45'),
(1585, 350, '_length', '400'),
(1586, 350, '_width', '300'),
(1587, 350, '_height', '200'),
(1588, 350, '_upsell_ids', 'a:0:{}'),
(1589, 350, '_crosssell_ids', 'a:0:{}'),
(1590, 350, '_purchase_note', 'My permalink structure might be the cause - but basically i have a formidable form creating a new post'),
(1591, 350, '_default_attributes', 'a:0:{}'),
(1592, 350, '_virtual', 'no'),
(1593, 350, '_downloadable', 'no'),
(1594, 350, '_product_image_gallery', '177,176,151'),
(1595, 350, '_download_limit', '-1'),
(1596, 350, '_download_expiry', '-1'),
(1597, 350, '_thumbnail_id', '345'),
(1598, 350, '_stock', NULL),
(1599, 350, '_stock_status', 'instock'),
(1600, 350, '_wc_average_rating', '0'),
(1601, 350, '_wc_rating_count', 'a:0:{}'),
(1602, 350, '_wc_review_count', '0'),
(1603, 350, '_downloadable_files', 'a:0:{}'),
(1604, 350, '_product_attributes', 'a:0:{}'),
(1605, 350, '_product_version', '3.5.5'),
(1606, 350, '_price', '3500'),
(1607, 350, 'agentname', 'Flying World Travels'),
(1608, 350, 'makkahstay', '12'),
(1609, 350, 'madinahstay', '12'),
(1610, 350, 'makkahhotelhame', 'Le Meridian Hotel 5 Star'),
(1611, 350, 'Makkahoteldistance', '600'),
(1612, 350, 'madinahhotelname', 'Le Meridian Hotel 5 Star'),
(1613, 350, 'madinahhoteldistance', '500'),
(1614, 350, 'locationcheckins', '03/03/2019'),
(1615, 350, 'locationcheckout', '03/15/2019'),
(1616, 350, 'umrahroom', '10'),
(1617, 350, 'umrahparson', '6'),
(1618, 350, 'umrahdouble', '35,000.00'),
(1619, 350, 'umrahtriplebed', '45,000.00'),
(1620, 350, 'umrahfourbed', '50,000.00'),
(1621, 350, 'umrahsharing', '60,000.00'),
(1622, 350, '_edit_lock', '1553800040:1'),
(1623, 350, '_edit_last', '1'),
(1624, 351, '_wp_attached_file', '2019/03/palace-park-versailles-5-800x600.jpg'),
(1625, 351, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:44:\"2019/03/palace-park-versailles-5-800x600.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"palace-park-versailles-5-800x600-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"palace-park-versailles-5-800x600-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"palace-park-versailles-5-800x600-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:44:\"palace-park-versailles-5-800x600-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:44:\"palace-park-versailles-5-800x600-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:44:\"palace-park-versailles-5-800x600-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:44:\"palace-park-versailles-5-800x600-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:44:\"palace-park-versailles-5-800x600-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:44:\"palace-park-versailles-5-800x600-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1626, 352, '_edit_last', '1'),
(1627, 352, '_edit_lock', '1558757451:1'),
(1628, 352, '_thumbnail_id', '348'),
(1629, 353, '_edit_last', '1'),
(1630, 353, '_edit_lock', '1558757294:1'),
(1631, 357, 'wp_travel_payment_id', '358'),
(1632, 357, '_edit_last', '1'),
(1633, 357, '_edit_lock', '1557991084:1'),
(1634, 357, 'wp_travel_post_id', '0'),
(1635, 357, 'wp_travel_booking_status', 'booked'),
(1636, 357, 'wp_travel_fname_traveller', 'yuuyuy'),
(1637, 357, 'wp_travel_lname_traveller', 'uhuhu'),
(1638, 357, 'wp_travel_country_traveller', 'AF'),
(1639, 357, 'wp_travel_phone_traveller', '01736699819'),
(1640, 357, 'wp_travel_email_traveller', 'milon@gmail.com'),
(1641, 357, 'wp_travel_gender_traveller', 'male'),
(1642, 357, 'wp_travel_address', 'yytgh'),
(1643, 357, 'billing_city', 'gygyg'),
(1644, 357, 'wp_travel_country', 'AF'),
(1645, 357, 'billing_postal', '1216'),
(1646, 357, 'wp_travel_note', 'yytytytyt'),
(1647, 357, 'order_data', 'a:24:{s:17:\"wp_travel_post_id\";i:0;s:25:\"wp_travel_fname_traveller\";s:0:\"\";s:25:\"wp_travel_lname_traveller\";s:0:\"\";s:27:\"wp_travel_country_traveller\";s:0:\"\";s:25:\"wp_travel_phone_traveller\";s:0:\"\";s:25:\"wp_travel_email_traveller\";s:0:\"\";s:33:\"wp_travel_date_of_birth_traveller\";s:0:\"\";s:26:\"wp_travel_gender_traveller\";s:0:\"\";s:33:\"wp_travel_billing_address_heading\";s:0:\"\";s:17:\"wp_travel_address\";s:0:\"\";s:12:\"billing_city\";s:0:\"\";s:17:\"wp_travel_country\";s:0:\"\";s:14:\"billing_postal\";s:0:\"\";s:13:\"wp_travel_pax\";s:0:\"\";s:14:\"wp_travel_note\";s:0:\"\";s:9:\"price_key\";s:0:\"\";s:28:\"wp_travel_is_partial_payment\";s:0:\"\";s:25:\"wp_travel_payment_heading\";s:0:\"\";s:24:\"wp_travel_booking_option\";s:0:\"\";s:25:\"wp_travel_payment_gateway\";s:0:\"\";s:20:\"wp_travel_trip_price\";s:0:\"\";s:22:\"wp_travel_payment_mode\";s:0:\"\";s:25:\"wp_travel_trip_price_info\";s:0:\"\";s:29:\"wp_travel_payment_amount_info\";s:0:\"\";}'),
(1648, 358, 'wp_travel_payment_status', 'paid'),
(1686, 360, 'wp_travel_pricing_option_type', 'single-price'),
(1687, 360, 'wp_travel_price', '20000'),
(1688, 360, 'wp_travel_trip_price', '2000'),
(1689, 360, 'wp_travel_enable_sale', '1'),
(1690, 360, 'wp_travel_sale_price', '2000'),
(1691, 360, 'wp_travel_price_per', 'group'),
(1692, 360, 'wp_travel_group_size', '3'),
(1693, 360, 'wp_travel_trip_include', 'wewewewe'),
(1694, 360, 'wp_travel_trip_exclude', 'cvcvc'),
(1695, 360, 'wp_travel_outline', 'dffdfdfdfdfd'),
(1696, 360, 'wp_travel_start_date', '2019-03-30'),
(1697, 360, 'wp_travel_end_date', '2019-04-25'),
(1698, 360, 'wp_travel_trip_itinerary_data', 'a:1:{i:0;a:5:{s:5:\"label\";s:5:\"Day X\";s:5:\"title\";s:9:\"Your Plan\";s:4:\"date\";s:10:\"2019-03-30\";s:4:\"time\";s:8:\"04:44 pm\";s:4:\"desc\";s:15:\"fdfdfdfdfdfdfdf\";}}'),
(1699, 360, 'wp_travel_itinerary_gallery_ids', 'a:7:{i:0;s:3:\"328\";i:1;s:3:\"177\";i:2;s:3:\"176\";i:3;s:3:\"151\";i:4;s:3:\"351\";i:5;s:3:\"348\";i:6;s:3:\"338\";}'),
(1700, 360, '_thumbnail_id', '328'),
(1701, 360, 'wp_travel_location', ''),
(1702, 360, 'wp_travel_lat', ''),
(1703, 360, 'wp_travel_lng', ''),
(1704, 360, 'wp_travel_location_id', ''),
(1705, 360, 'wp_travel_fixed_departure', 'yes'),
(1706, 360, 'wp_travel_enable_pricing_options', 'no'),
(1707, 360, 'wp_travel_enable_multiple_fixed_departue', 'no'),
(1708, 360, 'wp_travel_trip_duration', '0'),
(1709, 360, 'wp_travel_trip_duration_night', '0'),
(1710, 360, 'wp_travel_use_global_tabs', 'no'),
(1711, 360, 'wp_travel_tabs', 'a:8:{s:8:\"overview\";a:2:{s:5:\"label\";s:8:\"Overview\";s:12:\"show_in_menu\";s:3:\"yes\";}s:12:\"trip_outline\";a:2:{s:5:\"label\";s:12:\"Trip Outline\";s:12:\"show_in_menu\";s:3:\"yes\";}s:13:\"trip_includes\";a:2:{s:5:\"label\";s:13:\"Trip Includes\";s:12:\"show_in_menu\";s:3:\"yes\";}s:13:\"trip_excludes\";a:2:{s:5:\"label\";s:13:\"Trip Excludes\";s:12:\"show_in_menu\";s:3:\"yes\";}s:7:\"gallery\";a:2:{s:5:\"label\";s:7:\"Gallery\";s:12:\"show_in_menu\";s:3:\"yes\";}s:7:\"reviews\";a:2:{s:5:\"label\";s:7:\"Reviews\";s:12:\"show_in_menu\";s:3:\"yes\";}s:7:\"booking\";a:2:{s:5:\"label\";s:7:\"Booking\";s:12:\"show_in_menu\";s:3:\"yes\";}s:3:\"faq\";a:2:{s:5:\"label\";s:3:\"FAQ\";s:12:\"show_in_menu\";s:3:\"yes\";}}'),
(1712, 360, 'wp_travel_use_global_trip_enquiry_option', 'yes'),
(1713, 360, 'wp_travel_enable_trip_enquiry_option', 'yes'),
(1714, 360, 'wp_travel_faq_question', 'a:2:{i:0;s:8:\"fdgfdgfd\";i:1;s:5:\"fgfgf\";}'),
(1715, 360, 'wp_travel_faq_answer', 'a:2:{i:0;s:9:\"fdgfdfddd\";i:1;s:7:\"fgfdgfd\";}'),
(1716, 360, 'wp_travel_minimum_partial_payout', '492.00'),
(1717, 360, 'wp_travel_minimum_partial_payout_percent', '24.60'),
(1718, 360, 'wp_travel_minimum_partial_payout_use_global', '1'),
(1719, 360, 'wp_travel_pricing_options', ''),
(1720, 360, 'wp_travel_multiple_trip_dates', 'a:0:{}'),
(1721, 360, 'wp_travel_trip_facts', 'a:1:{i:0;a:3:{s:5:\"label\";s:4:\"test\";s:4:\"icon\";s:0:\"\";s:4:\"type\";s:8:\"multiple\";}}'),
(1722, 360, 'wp_travel_tour_extras', 'a:0:{}'),
(1723, 360, '_edit_last', '1'),
(1724, 360, '_edit_lock', '1553856033:1'),
(1725, 360, 'wp_travel_booking_count', '0'),
(1726, 360, '_wpt_rating_count', 'a:0:{}'),
(1727, 360, '_wpt_average_rating', '0'),
(1728, 358, 'wp_travel_payment_mode', 'full'),
(1729, 360, '_wpt_review_count', '0'),
(1741, 366, '_edit_last', '1'),
(1742, 366, 'wp_travel_coupon_code', '1234'),
(1743, 366, 'wp_travel_coupon_metas', 'a:2:{s:7:\"general\";a:3:{s:11:\"coupon_type\";s:5:\"fixed\";s:12:\"coupon_value\";s:4:\"1234\";s:18:\"coupon_expiry_date\";s:10:\"2019-03-31\";}s:11:\"restriction\";a:1:{s:19:\"coupon_limit_number\";s:0:\"\";}}'),
(1744, 366, '_edit_lock', '1553855539:1'),
(1745, 367, 'wp_travel_post_id', '360'),
(1746, 367, 'wp_travel_enquiry_name', 'milon'),
(1747, 367, 'wp_travel_enquiry_email', 'milon@gmial.com'),
(1748, 367, 'wp_travel_enquiry_query', 'hwllo,test'),
(1749, 367, 'wp_travel_trip_enquiry_data', 'a:4:{s:7:\"post_id\";s:3:\"360\";s:22:\"wp_travel_enquiry_name\";s:5:\"milon\";s:23:\"wp_travel_enquiry_email\";s:15:\"milon@gmial.com\";s:23:\"wp_travel_enquiry_query\";s:10:\"hwllo,test\";}'),
(1750, 367, '_edit_last', '1'),
(1751, 367, '_edit_lock', '1553855574:1'),
(1752, 368, '_edit_last', '1'),
(1753, 368, '_thumbnail_id', '346'),
(1754, 368, 'wp_travel_tour_extras_metas', 'a:1:{s:23:\"extras_item_description\";s:23:\"ehjhrjhjhfjdfdhfdhfdhdf\";}'),
(1755, 368, '_edit_lock', '1553855601:1'),
(1756, 360, 'wp_travel_featured', 'yes'),
(1757, 353, '_thumbnail_id', '351'),
(1758, 353, 'toursdeparturedate', '03/29/2019'),
(1759, 353, 'toursarrivedate', '03/31/2019'),
(1760, 353, 'toursname', 'Cursus faucibus egestas rutrum mauris vulputate consequat ante'),
(1761, 353, 'toursemail', 'test@gmail.com'),
(1762, 353, 'tourlocation', 'Cursus faucibus egestas rutrum mauris vulputate consequat ante'),
(1763, 353, 'toursprice', '1,200.00'),
(1764, 353, 'tourstype', 'get all'),
(1765, 353, 'maximumnumberof', '012345678'),
(1766, 353, 'toursoverview', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(1767, 353, 'toursdayone', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(1768, 353, 'toursdaytwo', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(1769, 353, 'toursdaythress', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(1770, 353, 'toursdayfour', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(1776, 352, 'toursdeparturedate', '03/14/2019'),
(1777, 352, 'toursarrivedate', '03/15/2019'),
(1778, 352, 'tourlocation', 'faucibus egestas rutrum mauris vulputate consequat ante'),
(1779, 352, 'maximumnumberof', '5'),
(1780, 356, '_edit_lock', '1553886657:1'),
(1781, 375, '_edit_last', '1'),
(1782, 375, '_edit_lock', '1560695372:1'),
(1783, 375, 'hotellocation', 'Pierpoint Road Cairns , QLD 4870 Australia'),
(1784, 375, 'hotelemail', 'testhotel@gmail.com'),
(1785, 375, 'hotelphone', '01736699819'),
(1786, 375, 'hotelprice', '25,000.00'),
(1787, 375, 'hotelwebsite', 'kmbikroy.com'),
(1788, 375, 'hotelprepayment', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. '),
(1789, 375, 'hotelchildren', 'All children are wellcome\r\n\r\nFree ! Lorem Ipsum is simply dummy text of the printing and typesetting industry\r\n\r\nFree ! Lorem Ipsum is simply dummy text of the printing and typesetting industry\r\n\r\nFree ! Lorem Ipsum is simply dummy text of the printing and typesetting industry\r\n'),
(1790, 375, 'hotelpets', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry '),
(1791, 375, 'hoteldescription', 'This boutique hotel in the Manhattan neighborhood of Nolita features a private rooftop and rooms with free WiFi. The Bowery subway station is 1 block from this New York hotel.\r\n\r\nGuest rooms at the Nolitan Hotel provide a 37-inch flat-screen cable TV and an iPod dock. The bathrooms provide bathrobes and slippers.\r\n\r\nThe hotel provides free bike rentals and a local gym membership for guests. There is also on-site dining at the French bistro Cantine Parisienne. A complimentary wine and cheese hour is served every Monday through Saturday.\r\n\r\nTimes Square, Rockefeller Center and Madison Square Garden are 4.8 km from The Nolitan Hotel. The hotel is bordered by SoHo, Little Italy and Chinatown.\r\n\r\nNoLita is a great choice for travelers interested in nightlife, food and culture.\r\n\r\nWe speak your language! Pierpoint Road Cairns , QLD 4870 Australia'),
(1792, 377, '_wp_attached_file', '2019/03/Barclay-400x300.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1793, 377, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:300;s:4:\"file\";s:27:\"2019/03/Barclay-400x300.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Barclay-400x300-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"Barclay-400x300-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"wp_travel_thumbnail\";a:4:{s:4:\"file\";s:27:\"Barclay-400x300-365x215.jpg\";s:5:\"width\";i:365;s:6:\"height\";i:215;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:27:\"Barclay-400x300-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"Barclay-400x300-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:27:\"Barclay-400x300-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:27:\"Barclay-400x300-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1794, 375, '_thumbnail_id', '348'),
(1796, 378, '_edit_last', '1'),
(1797, 378, '_edit_lock', '1558757921:1'),
(1798, 378, '_thumbnail_id', '348'),
(1799, 378, 'hotellocation', 'Dhaka, Mirpur'),
(1800, 378, 'hotelemail', 'test@gmail.com'),
(1801, 378, 'hotelphone', '01735669849'),
(1802, 378, 'hotelprice', '124,532.00'),
(1803, 378, 'hotelwebsite', 'weblink'),
(1804, 378, 'hotelprepayment', 'Find Bookings Hotel. Check Out 1000+ Results from Across the Web. The Complete Overview. Information 24/7. Wiki, News &amp; More. Web, Images &amp; Video. 100+ Million Visitors. Trusted by Millions. Types: pdf, doc, ppt, xls, txt.'),
(1805, 378, 'hotelchildren', 'Find Bookings Hotel. Check Out 1000+ Results from Across the Web. The Complete Overview. Information 24/7. Wiki, News &amp; More. Web, Images &amp; Video. 100+ Million Visitors. Trusted by Millions. Types: pdf, doc, ppt, xls, txt.'),
(1806, 378, 'hotelpets', 'Find Bookings Hotel. Check Out 1000+ Results from Across the Web. The Complete Overview. Information 24/7. Wiki, News &amp; More. Web, Images &amp; Video. 100+ Million Visitors. Trusted by Millions. Types: pdf, doc, ppt, xls, txt.'),
(1807, 378, 'hoteldescription', '<span id=\"e197\" class=\"qc_ si29 \">Find Bookings <b>Hotel</b>. Check Out 1000+ Results from Across the Web. The Complete Overview. Information 24/7. Wiki, News &amp; More. Web, Images &amp; Video. 100+ Million Visitors. Trusted by Millions. Types: pdf, doc, ppt, xls, txt.</span>\r\n\r\n<span id=\"e197\" class=\"qc_ si29 \">Find Bookings <b>Hotel</b>. Check Out 1000+ Results from Across the Web. The Complete Overview. Information 24/7. Wiki, News &amp; More. Web, Images &amp; Video. 100+ Million Visitors. Trusted by Millions. Types: pdf, doc, ppt, xls, txt.</span>'),
(1808, 379, '_edit_last', '1'),
(1809, 379, '_edit_lock', '1560529423:1'),
(1810, 379, '_thumbnail_id', '604'),
(1811, 379, 'hotellocation', 'Dhaka, Banani'),
(1812, 379, 'hotelemail', 'testhotel@gmail.com'),
(1813, 379, 'hotelphone', '01735669849'),
(1814, 379, 'hotelprice', '1,452,310.00'),
(1815, 379, 'hotelwebsite', 'weblink'),
(1816, 379, 'hotelprepayment', 'HotelsCombined. Compare 1000+ Booking Sites At Once. Best Price Guaranteed. 5 Million Hotel Deals. 100% Free to Use. Travellers Love Us. 1000’s Sites Compared. 800,000+ Hotels Worldwide. Hotels up to 80% Off. No Booking Fee. Types: Hotels, Apartments, Resorts, Villas, Hostels, Guest Houses, B&amp;Bs, Vacation Rentals, Motels, Serviced Apartments.'),
(1817, 379, 'hotelchildren', 'HotelsCombined. Compare 1000+ Booking Sites At Once. Best Price Guaranteed. 5 Million Hotel Deals. 100% Free to Use. Travellers Love Us. 1000’s Sites Compared. 800,000+ Hotels Worldwide. Hotels up to 80% Off. No Booking Fee. Types: Hotels, Apartments, Resorts, Villas, Hostels, Guest Houses, B&amp;Bs, Vacation Rentals, Motels, Serviced Apartments.'),
(1818, 379, 'hotelpets', 'HotelsCombined. Compare 1000+ Booking Sites At Once. Best Price Guaranteed. 5 Million Hotel Deals. 100% Free to Use. Travellers Love Us. 1000’s Sites Compared. 800,000+ Hotels Worldwide. Hotels up to 80% Off. No Booking Fee. Types: Hotels, Apartments, Resorts, Villas, Hostels, Guest Houses, B&amp;Bs, Vacation Rentals, Motels, Serviced Apartments.'),
(1819, 379, 'hoteldescription', '<span id=\"e231\" class=\"qc_ si29 \">HotelsCombined. Compare 1000+ Booking Sites At Once. Best Price Guaranteed. 5 Million <b>Hotel</b> Deals. 100% Free to Use. Travellers Love Us. 1000’s Sites Compared. 800,000+ <b>Hotels</b> Worldwide. <b>Hotels</b> up to 80% Off. No Booking Fee. Types: <b>Hotels</b>, Apartments, Resorts, Villas, Hostels, Guest Houses, B&amp;Bs, Vacation Rentals, Motels, Serviced Apartments.</span>'),
(1820, 380, '_edit_last', '1'),
(1821, 380, '_edit_lock', '1560695339:1'),
(1822, 380, '_thumbnail_id', '176'),
(1823, 380, 'hotellocation', 'Pierpoint Road Cairns , QLD 4870 Australia'),
(1824, 380, 'hotelemail', 'testhotel@gmail.com'),
(1825, 380, 'hotelphone', '01735669849'),
(1826, 380, 'hotelprice', '12,505.00'),
(1827, 380, 'hotelwebsite', 'weblink'),
(1828, 380, 'hotelprepayment', 'HotelsCombined. Compare 1000+ Booking Sites At Once. Best Price Guaranteed. 5 Million Hotel Deals. 100% Free to Use. Travellers Love Us. 1000’s Sites Compared. 800,000+ Hotels Worldwide. Hotels up to 80% Off. No Booking Fee. Types: Hotels, Apartments, Resorts, Villas, Hostels, Guest Houses, B&amp;Bs, Vacation Rentals, Motels, Serviced Apartments.'),
(1829, 380, 'hotelchildren', 'HotelsCombined. Compare 1000+ Booking Sites At Once. Best Price Guaranteed. 5 Million Hotel Deals. 100% Free to Use. Travellers Love Us. 1000’s Sites Compared. 800,000+ Hotels Worldwide. Hotels up to 80% Off. No Booking Fee. Types: Hotels, Apartments, Resorts, Villas, Hostels, Guest Houses, B&amp;Bs, Vacation Rentals, Motels, Serviced Apartments.'),
(1830, 380, 'hotelpets', 'HotelsCombined. Compare 1000+ Booking Sites At Once. Best Price Guaranteed. 5 Million Hotel Deals. 100% Free to Use. Travellers Love Us. 1000’s Sites Compared. 800,000+ Hotels Worldwide. Hotels up to 80% Off. No Booking Fee. Types: Hotels, Apartments, Resorts, Villas, Hostels, Guest Houses, B&amp;Bs, Vacation Rentals, Motels, Serviced Apartments.'),
(1831, 380, 'hoteldescription', '<span id=\"e231\" class=\"qc_ si29 \">HotelsCombined. Compare 1000+ Booking Sites At Once. Best Price Guaranteed. 5 Million <b>Hotel</b> Deals. 100% Free to Use. Travellers Love Us. 1000’s Sites Compared. 800,000+ <b>Hotels</b> Worldwide. <b>Hotels</b> up to 80% Off. No Booking Fee. Types: <b>Hotels</b>, Apartments, Resorts, Villas, Hostels, Guest Houses, B&amp;Bs, Vacation Rentals, Motels, Serviced Apartments.</span>'),
(1832, 390, '_edit_last', '1'),
(1833, 390, 'mphb_start_date', '2019-04-03'),
(1834, 390, 'mphb_end_date', '2019-05-10'),
(1835, 390, 'mphb_days', 'a:7:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";i:4;s:1:\"4\";i:5;s:1:\"5\";i:6;s:1:\"6\";}'),
(1836, 390, '_edit_lock', '1554264289:1'),
(1837, 391, '_edit_last', '1'),
(1838, 391, '_edit_lock', '1554192230:1'),
(1839, 392, '_edit_last', '1'),
(1840, 392, '_edit_lock', '1554264525:1'),
(1841, 392, 'mphb_price', '150'),
(1842, 392, 'mphb_price_periodicity', 'per_night'),
(1843, 392, 'mphb_min_quantity', '1'),
(1844, 392, 'mphb_is_auto_limit', '0'),
(1845, 392, 'mphb_max_quantity', ''),
(1846, 392, 'mphb_price_quantity', 'per_adult'),
(1847, 392, '_thumbnail_id', '151'),
(1848, 393, '_edit_last', '1'),
(1849, 393, '_edit_lock', '1554181141:1'),
(1850, 394, '_edit_lock', '1554264120:1'),
(1851, 394, '_thumbnail_id', '348'),
(1852, 394, '_edit_last', '1'),
(1853, 394, 'mphb_adults_capacity', '3'),
(1854, 394, 'mphb_children_capacity', '2'),
(1855, 394, 'mphb_size', '1'),
(1856, 394, 'mphb_view', 'Text messaging, or texting, is the act of composing and sending electronic messages, typically consisting of alphabetic and numeric characters,'),
(1857, 394, 'mphb_bed', '1 Bed, 2 Bed, 3 Bed'),
(1858, 394, 'mphb_gallery', '348,151,176,177'),
(1859, 394, 'mphb_services', 'a:1:{i:0;s:3:\"392\";}'),
(1860, 395, 'mphb_room_type_id', '394'),
(1861, 396, 'mphb_room_type_id', '394'),
(1864, 391, 'mphb_season_prices', 'a:1:{i:0;a:2:{s:6:\"season\";s:3:\"390\";s:5:\"price\";a:4:{s:7:\"periods\";a:3:{i:0;i:1;i:1;i:2;i:2;i:2;}s:6:\"prices\";a:3:{i:0;d:1200;i:1;s:0:\"\";i:2;s:0:\"\";}s:17:\"enable_variations\";b:0;s:10:\"variations\";a:0:{}}}}'),
(1865, 391, 'mphb_description', ''),
(1866, 398, '_edit_last', '1'),
(1867, 398, 'mphb_room_type_id', '394'),
(1868, 398, 'mphb_description', 'Please select Accommodation Type and click Create Rate button to continue'),
(1869, 398, '_edit_lock', '1554264354:1'),
(1870, 399, 'mphb_room_type_id', '394'),
(1873, 398, 'mphb_season_prices', 'a:2:{i:0;a:2:{s:6:\"season\";s:3:\"390\";s:5:\"price\";a:4:{s:7:\"periods\";a:1:{i:0;i:1;}s:6:\"prices\";a:1:{i:0;d:1520;}s:17:\"enable_variations\";b:0;s:10:\"variations\";a:0:{}}}i:1;a:2:{s:6:\"season\";s:3:\"390\";s:5:\"price\";a:4:{s:7:\"periods\";a:1:{i:0;i:1;}s:6:\"prices\";a:1:{i:0;d:1400;}s:17:\"enable_variations\";b:0;s:10:\"variations\";a:0:{}}}}'),
(1874, 399, '_edit_lock', '1554264419:1'),
(1875, 399, '_edit_last', '1'),
(1876, 409, 'mphb_room_type_id', '394'),
(1877, 410, 'mphb_room_type_id', '394'),
(1878, 411, 'mphb_room_type_id', '394'),
(1879, 412, 'mphb_room_type_id', '394'),
(1882, 416, '_edit_last', '1'),
(1883, 416, '_edit_lock', '1554265599:1'),
(1884, 416, '_thumbnail_id', '348'),
(1885, 416, '_hb_num_of_rooms', '5'),
(1886, 416, '_hb_room_extra', ''),
(1887, 416, '_hb_room_capacity', '150'),
(1888, 416, '_hb_room_origin_capacity', '150'),
(1889, 416, '_hb_max_child_per_room', '2'),
(1890, 416, '_hb_room_addition_information', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(1891, 416, '_hb_gallery', 'a:4:{i:0;s:3:\"348\";i:1;s:3:\"151\";i:2;s:3:\"176\";i:3;s:3:\"177\";}'),
(1892, 418, '_edit_last', '1'),
(1893, 418, 'tp_hb_extra_room_price', '1000'),
(1894, 418, 'tp_hb_extra_room_room_extra', ''),
(1895, 418, 'tp_hb_extra_room_respondent_name', '5'),
(1896, 418, 'tp_hb_extra_room_respondent', 'trip'),
(1897, 418, 'tp_hb_extra_room_required', '0'),
(1898, 418, '_edit_lock', '1554265665:1'),
(2033, 1, '_edit_lock', '1554274796:1'),
(2034, 386, '_edit_lock', '1554274829:1'),
(2035, 434, '_edit_lock', '1554274912:1'),
(2036, 434, '_wp_page_template', 'all_page/book-now.php'),
(2037, 405, '_edit_lock', '1554274964:1'),
(2038, 439, '_edit_last', '1'),
(2039, 439, '_edit_lock', '1554283079:1'),
(2040, 439, 'service_type', 'accommodation'),
(2041, 439, 'checkin_from', '01:00'),
(2042, 439, 'checkin_to', '04:00'),
(2043, 439, 'checkout_from', '05:30'),
(2044, 439, 'checkout_to', '07:30'),
(2045, 439, 'wpbooking_select_amenity', 'a:1:{i:0;s:3:\"159\";}'),
(2046, 439, 'creditcard_accepted', 'a:2:{s:15:\"americanexpress\";s:2:\"on\";s:4:\"visa\";s:2:\"on\";}'),
(2047, 439, 'allow_cancel', 'off'),
(2048, 439, 'deposit_payment_amount', '1'),
(2049, 439, 'cancel_free_days_prior', 'day_of_arrival'),
(2050, 439, 'cancel_guest_payment', 'first_night'),
(2051, 439, 'vat_excluded', 'yes_included'),
(2052, 439, 'vat_amount', '10'),
(2053, 439, 'vat_unit', 'percent'),
(2054, 439, 'citytax_excluded', ''),
(2055, 439, 'citytax_amount', ''),
(2056, 439, 'citytax_unit', 'stay'),
(2057, 439, 'minimum_stay', '1'),
(2058, 439, 'terms_conditions', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(2059, 439, 'gallery', 'a:2:{s:7:\"gallery\";s:15:\"328,177,176,151\";s:9:\"room_data\";s:0:\"\";}'),
(2060, 439, '_thumbnail_id', '348'),
(2061, 439, 'price', '0'),
(2062, 441, '_edit_lock', '1554284896:1'),
(2063, 441, '_edit_last', '1'),
(2064, 441, 'gallery', 'a:4:{i:177;s:61:\"https://technovicinity.com/development/wordpress/milon/travel/wp-content/uploads/2019/02/thumb.jpg\";i:176;s:86:\"https://technovicinity.com/development/wordpress/milon/travel/wp-content/uploads/2019/02/thumb_1537856321-package-image.jpg\";i:151;s:61:\"https://technovicinity.com/development/wordpress/milon/travel/wp-content/uploads/2019/02/thumb.jpg\";i:348;s:59:\"https://technovicinity.com/development/wordpress/milon/travel/wp-content/uploads/2019/03/3-1.jpg\";}'),
(2065, 441, '_bedrooms', '3'),
(2066, 441, '_beds', 'a:1:{i:0;a:2:{s:4:\"type\";s:5:\"hgjgh\";s:6:\"number\";s:1:\"1\";}}'),
(2067, 441, '_room_view', 'jhgj'),
(2068, 441, '_area_size', 'hgjhg'),
(2069, 441, '_maximum_occupancy', '2'),
(2070, 441, 'number_adults', '2'),
(2071, 441, 'base_price', '120'),
(2072, 441, '_rate_inclusions', 'a:1:{i:0;s:5:\"ghjhj\";}'),
(2073, 441, '_rate_policies', 'a:1:{i:0;s:4:\"hgjh\";}'),
(2074, 441, 'minimum_night', '1'),
(2075, 441, '_cache_total_rooms', '0'),
(2076, 442, '_edit_last', '1'),
(2077, 442, '_operation', 'add'),
(2078, 442, '_amount', '1500'),
(2079, 442, '_quantity_selectable', 'on'),
(2080, 442, '_edit_lock', '1554284819:1'),
(2081, 442, '_thumbnail_id', '348'),
(2082, 443, '_edit_last', '1'),
(2083, 443, '_arrival_time', '0'),
(2084, 443, '_customer_title', 'mr'),
(2085, 443, '_customer_first_name', 'dsfdsf'),
(2086, 443, '_customer_last_name', 'dsfds'),
(2087, 443, '_customer_address', 'dsfds'),
(2088, 443, '_customer_address_2', 'dsfds'),
(2089, 443, '_customer_company', 'dsfdsf'),
(2090, 443, '_edit_lock', '1554285221:1'),
(2095, 459, '_sku', '34-1-1'),
(2096, 459, '_regular_price', '4000'),
(2097, 459, '_sale_price', '3500'),
(2098, 459, '_sale_price_dates_from', ''),
(2099, 459, '_sale_price_dates_to', ''),
(2100, 459, 'total_sales', '0'),
(2101, 459, '_tax_status', 'taxable'),
(2102, 459, '_tax_class', ''),
(2103, 459, '_manage_stock', 'no'),
(2104, 459, '_backorders', 'no'),
(2105, 459, '_low_stock_amount', ''),
(2106, 459, '_sold_individually', 'no'),
(2107, 459, '_weight', '45'),
(2108, 459, '_length', '400'),
(2109, 459, '_width', '300'),
(2110, 459, '_height', '200'),
(2111, 459, '_upsell_ids', 'a:0:{}'),
(2112, 459, '_crosssell_ids', 'a:0:{}'),
(2113, 459, '_purchase_note', 'My permalink structure might be the cause - but basically i have a formidable form creating a new post'),
(2114, 459, '_default_attributes', 'a:0:{}'),
(2115, 459, '_virtual', 'no'),
(2116, 459, '_downloadable', 'no'),
(2117, 459, '_product_image_gallery', '177,176,151'),
(2118, 459, '_download_limit', '-1'),
(2119, 459, '_download_expiry', '-1'),
(2120, 459, '_thumbnail_id', '345'),
(2121, 459, '_stock', NULL),
(2122, 459, '_stock_status', 'instock'),
(2123, 459, '_wc_average_rating', '0'),
(2124, 459, '_wc_rating_count', 'a:0:{}'),
(2125, 459, '_wc_review_count', '0'),
(2126, 459, '_downloadable_files', 'a:0:{}'),
(2127, 459, '_product_attributes', 'a:0:{}'),
(2128, 459, '_product_version', '3.5.5'),
(2129, 459, '_price', '3500'),
(2130, 459, 'agentname', 'Flying World Travels'),
(2131, 459, 'makkahstay', '12'),
(2132, 459, 'madinahstay', '12'),
(2133, 459, 'makkahhotelhame', 'Le Meridian Hotel 5 Star'),
(2134, 459, 'Makkahoteldistance', '600'),
(2135, 459, 'madinahhotelname', 'Le Meridian Hotel 5 Star'),
(2136, 459, 'madinahhoteldistance', '500'),
(2137, 459, 'locationcheckins', '03/03/2019'),
(2138, 459, 'locationcheckout', '03/15/2019'),
(2139, 459, 'umrahroom', '10'),
(2140, 459, 'umrahparson', '6'),
(2141, 459, 'umrahdouble', '35,000.00'),
(2142, 459, 'umrahtriplebed', '45,000.00'),
(2143, 459, 'umrahfourbed', '50,000.00'),
(2144, 459, 'umrahsharing', '60,000.00'),
(2145, 459, '_edit_lock', '1554371734:1'),
(2146, 459, '_edit_last', '1'),
(2147, 460, '_sku', '34-1-1-1'),
(2148, 460, '_regular_price', '4000'),
(2149, 460, '_sale_price', '3500'),
(2150, 460, '_sale_price_dates_from', ''),
(2151, 460, '_sale_price_dates_to', ''),
(2152, 460, 'total_sales', '0'),
(2153, 460, '_tax_status', 'taxable'),
(2154, 460, '_tax_class', ''),
(2155, 460, '_manage_stock', 'no'),
(2156, 460, '_backorders', 'no'),
(2157, 460, '_low_stock_amount', ''),
(2158, 460, '_sold_individually', 'no'),
(2159, 460, '_weight', '45'),
(2160, 460, '_length', '400'),
(2161, 460, '_width', '300'),
(2162, 460, '_height', '200'),
(2163, 460, '_upsell_ids', 'a:0:{}'),
(2164, 460, '_crosssell_ids', 'a:0:{}'),
(2165, 460, '_purchase_note', 'My permalink structure might be the cause - but basically i have a formidable form creating a new post'),
(2166, 460, '_default_attributes', 'a:0:{}'),
(2167, 460, '_virtual', 'no'),
(2168, 460, '_downloadable', 'no'),
(2169, 460, '_product_image_gallery', '177,176,151'),
(2170, 460, '_download_limit', '-1'),
(2171, 460, '_download_expiry', '-1'),
(2172, 460, '_thumbnail_id', '345'),
(2173, 460, '_stock', NULL),
(2174, 460, '_stock_status', 'instock'),
(2175, 460, '_wc_average_rating', '0'),
(2176, 460, '_wc_rating_count', 'a:0:{}'),
(2177, 460, '_wc_review_count', '0'),
(2178, 460, '_downloadable_files', 'a:0:{}'),
(2179, 460, '_product_attributes', 'a:0:{}'),
(2180, 460, '_product_version', '3.5.5'),
(2181, 460, '_price', '3500'),
(2182, 460, 'agentname', 'Flying World Travels'),
(2183, 460, 'makkahstay', '12'),
(2184, 460, 'madinahstay', '12'),
(2185, 460, 'makkahhotelhame', 'Le Meridian Hotel 5 Star'),
(2186, 460, 'Makkahoteldistance', '600'),
(2187, 460, 'madinahhotelname', 'Le Meridian Hotel 5 Star'),
(2188, 460, 'madinahhoteldistance', '500'),
(2189, 460, 'locationcheckins', '03/03/2019'),
(2190, 460, 'locationcheckout', '03/15/2019'),
(2191, 460, 'umrahroom', '10'),
(2192, 460, 'umrahparson', '6'),
(2193, 460, 'umrahdouble', '35,000.00'),
(2194, 460, 'umrahtriplebed', '45,000.00'),
(2195, 460, 'umrahfourbed', '50,000.00'),
(2196, 460, 'umrahsharing', '60,000.00'),
(2197, 460, '_edit_lock', '1554371753:1'),
(2198, 460, '_edit_last', '1'),
(2199, 461, '_sku', '34-1-1-1-1'),
(2200, 461, '_regular_price', '4000'),
(2201, 461, '_sale_price', '3500'),
(2202, 461, '_sale_price_dates_from', ''),
(2203, 461, '_sale_price_dates_to', ''),
(2204, 461, 'total_sales', '0'),
(2205, 461, '_tax_status', 'taxable'),
(2206, 461, '_tax_class', ''),
(2207, 461, '_manage_stock', 'no'),
(2208, 461, '_backorders', 'no'),
(2209, 461, '_low_stock_amount', ''),
(2210, 461, '_sold_individually', 'no'),
(2211, 461, '_weight', '45'),
(2212, 461, '_length', '400'),
(2213, 461, '_width', '300'),
(2214, 461, '_height', '200'),
(2215, 461, '_upsell_ids', 'a:0:{}'),
(2216, 461, '_crosssell_ids', 'a:0:{}'),
(2217, 461, '_purchase_note', 'My permalink structure might be the cause - but basically i have a formidable form creating a new post'),
(2218, 461, '_default_attributes', 'a:0:{}'),
(2219, 461, '_virtual', 'no'),
(2220, 461, '_downloadable', 'no'),
(2221, 461, '_product_image_gallery', '177,176,151'),
(2222, 461, '_download_limit', '-1'),
(2223, 461, '_download_expiry', '-1'),
(2224, 461, '_thumbnail_id', '345'),
(2225, 461, '_stock', NULL),
(2226, 461, '_stock_status', 'instock'),
(2227, 461, '_wc_average_rating', '0'),
(2228, 461, '_wc_rating_count', 'a:0:{}'),
(2229, 461, '_wc_review_count', '0'),
(2230, 461, '_downloadable_files', 'a:0:{}'),
(2231, 461, '_product_attributes', 'a:0:{}'),
(2232, 461, '_product_version', '3.5.5'),
(2233, 461, '_price', '3500'),
(2234, 461, 'agentname', 'Flying World Travels'),
(2235, 461, 'makkahstay', '12'),
(2236, 461, 'madinahstay', '12'),
(2237, 461, 'makkahhotelhame', 'Le Meridian Hotel 5 Star'),
(2238, 461, 'Makkahoteldistance', '600'),
(2239, 461, 'madinahhotelname', 'Le Meridian Hotel 5 Star'),
(2240, 461, 'madinahhoteldistance', '500'),
(2241, 461, 'locationcheckins', '03/03/2019'),
(2242, 461, 'locationcheckout', '03/15/2019'),
(2243, 461, 'umrahroom', '10'),
(2244, 461, 'umrahparson', '6'),
(2245, 461, 'umrahdouble', '35,000.00'),
(2246, 461, 'umrahtriplebed', '45,000.00'),
(2247, 461, 'umrahfourbed', '50,000.00'),
(2248, 461, 'umrahsharing', '60,000.00'),
(2249, 461, '_edit_lock', '1554371789:1'),
(2250, 461, '_edit_last', '1'),
(2251, 462, '_sku', 'hjkhjk-1'),
(2252, 462, '_regular_price', '1500'),
(2253, 462, '_sale_price', '1200'),
(2254, 462, '_sale_price_dates_from', ''),
(2255, 462, '_sale_price_dates_to', ''),
(2256, 462, 'total_sales', '0'),
(2257, 462, '_tax_status', 'taxable'),
(2258, 462, '_tax_class', ''),
(2259, 462, '_manage_stock', 'yes'),
(2260, 462, '_backorders', 'no'),
(2261, 462, '_low_stock_amount', ''),
(2262, 462, '_sold_individually', 'yes'),
(2263, 462, '_weight', '12'),
(2264, 462, '_length', '15'),
(2265, 462, '_width', '5800'),
(2266, 462, '_height', '210'),
(2267, 462, '_upsell_ids', 'a:0:{}'),
(2268, 462, '_crosssell_ids', 'a:0:{}'),
(2269, 462, '_purchase_note', 'dsnmfkjgnfdsmg,dfmg,df'),
(2270, 462, '_default_attributes', 'a:0:{}'),
(2271, 462, '_virtual', 'no'),
(2272, 462, '_downloadable', 'no'),
(2273, 462, '_product_image_gallery', '151'),
(2274, 462, '_download_limit', '-1'),
(2275, 462, '_download_expiry', '-1'),
(2276, 462, '_thumbnail_id', '151'),
(2277, 462, '_stock', '4'),
(2278, 462, '_stock_status', 'instock'),
(2279, 462, '_wc_average_rating', '0'),
(2280, 462, '_wc_rating_count', 'a:0:{}'),
(2281, 462, '_wc_review_count', '0'),
(2282, 462, '_downloadable_files', 'a:0:{}'),
(2283, 462, '_product_attributes', 'a:0:{}'),
(2284, 462, '_product_version', '3.5.5'),
(2285, 462, '_price', '1200'),
(2286, 462, '_edit_lock', '1554371820:1'),
(2287, 462, '_edit_last', '1'),
(2288, 463, '_sku', 'hjkhjk-2'),
(2289, 463, '_regular_price', '1500'),
(2290, 463, '_sale_price', '1200'),
(2291, 463, '_sale_price_dates_from', ''),
(2292, 463, '_sale_price_dates_to', ''),
(2293, 463, 'total_sales', '0'),
(2294, 463, '_tax_status', 'taxable'),
(2295, 463, '_tax_class', ''),
(2296, 463, '_manage_stock', 'yes'),
(2297, 463, '_backorders', 'no'),
(2298, 463, '_low_stock_amount', ''),
(2299, 463, '_sold_individually', 'yes'),
(2300, 463, '_weight', '12'),
(2301, 463, '_length', '15'),
(2302, 463, '_width', '5800'),
(2303, 463, '_height', '210'),
(2304, 463, '_upsell_ids', 'a:0:{}'),
(2305, 463, '_crosssell_ids', 'a:0:{}'),
(2306, 463, '_purchase_note', 'dsnmfkjgnfdsmg,dfmg,df'),
(2307, 463, '_default_attributes', 'a:0:{}'),
(2308, 463, '_virtual', 'no'),
(2309, 463, '_downloadable', 'no'),
(2310, 463, '_product_image_gallery', '151'),
(2311, 463, '_download_limit', '-1'),
(2312, 463, '_download_expiry', '-1'),
(2313, 463, '_thumbnail_id', '151'),
(2314, 463, '_stock', '4'),
(2315, 463, '_stock_status', 'instock'),
(2316, 463, '_wc_average_rating', '0'),
(2317, 463, '_wc_rating_count', 'a:0:{}'),
(2318, 463, '_wc_review_count', '0'),
(2319, 463, '_downloadable_files', 'a:0:{}'),
(2320, 463, '_product_attributes', 'a:0:{}'),
(2321, 463, '_product_version', '3.5.5'),
(2322, 463, '_price', '1200'),
(2323, 463, '_edit_lock', '1554371845:1'),
(2324, 463, '_edit_last', '1'),
(2325, 464, '_sku', 'hjkhjk-3'),
(2326, 464, '_regular_price', '1500'),
(2327, 464, '_sale_price', '1200'),
(2328, 464, '_sale_price_dates_from', ''),
(2329, 464, '_sale_price_dates_to', ''),
(2330, 464, 'total_sales', '0'),
(2331, 464, '_tax_status', 'taxable'),
(2332, 464, '_tax_class', ''),
(2333, 464, '_manage_stock', 'yes'),
(2334, 464, '_backorders', 'no'),
(2335, 464, '_low_stock_amount', ''),
(2336, 464, '_sold_individually', 'yes'),
(2337, 464, '_weight', '12'),
(2338, 464, '_length', '15'),
(2339, 464, '_width', '5800'),
(2340, 464, '_height', '210'),
(2341, 464, '_upsell_ids', 'a:0:{}'),
(2342, 464, '_crosssell_ids', 'a:0:{}'),
(2343, 464, '_purchase_note', 'dsnmfkjgnfdsmg,dfmg,df'),
(2344, 464, '_default_attributes', 'a:0:{}'),
(2345, 464, '_virtual', 'no'),
(2346, 464, '_downloadable', 'no'),
(2347, 464, '_product_image_gallery', '151'),
(2348, 464, '_download_limit', '-1'),
(2349, 464, '_download_expiry', '-1'),
(2350, 464, '_thumbnail_id', '151'),
(2351, 464, '_stock', '4'),
(2352, 464, '_stock_status', 'instock'),
(2353, 464, '_wc_average_rating', '0'),
(2354, 464, '_wc_rating_count', 'a:0:{}'),
(2355, 464, '_wc_review_count', '0'),
(2356, 464, '_downloadable_files', 'a:0:{}'),
(2357, 464, '_product_attributes', 'a:0:{}'),
(2358, 464, '_product_version', '3.5.5'),
(2359, 464, '_price', '1200'),
(2360, 464, '_edit_lock', '1554371868:1'),
(2361, 464, '_edit_last', '1'),
(2362, 465, '_sku', 'hjkhjk-3-1'),
(2363, 465, '_regular_price', '1500'),
(2364, 465, '_sale_price', '1200'),
(2365, 465, '_sale_price_dates_from', ''),
(2366, 465, '_sale_price_dates_to', ''),
(2367, 465, 'total_sales', '0'),
(2368, 465, '_tax_status', 'taxable'),
(2369, 465, '_tax_class', ''),
(2370, 465, '_manage_stock', 'yes'),
(2371, 465, '_backorders', 'no'),
(2372, 465, '_low_stock_amount', ''),
(2373, 465, '_sold_individually', 'yes'),
(2374, 465, '_weight', '12'),
(2375, 465, '_length', '15'),
(2376, 465, '_width', '5800'),
(2377, 465, '_height', '210'),
(2378, 465, '_upsell_ids', 'a:0:{}'),
(2379, 465, '_crosssell_ids', 'a:0:{}'),
(2380, 465, '_purchase_note', 'dsnmfkjgnfdsmg,dfmg,df'),
(2381, 465, '_default_attributes', 'a:0:{}'),
(2382, 465, '_virtual', 'no'),
(2383, 465, '_downloadable', 'no'),
(2384, 465, '_product_image_gallery', '151'),
(2385, 465, '_download_limit', '-1'),
(2386, 465, '_download_expiry', '-1'),
(2387, 465, '_thumbnail_id', '151'),
(2388, 465, '_stock', '4'),
(2389, 465, '_stock_status', 'instock'),
(2390, 465, '_wc_average_rating', '0'),
(2391, 465, '_wc_rating_count', 'a:0:{}'),
(2392, 465, '_wc_review_count', '0'),
(2393, 465, '_downloadable_files', 'a:0:{}'),
(2394, 465, '_product_attributes', 'a:0:{}'),
(2395, 465, '_product_version', '3.5.5'),
(2396, 465, '_price', '1200'),
(2397, 465, '_edit_lock', '1554371911:1'),
(2398, 465, '_edit_last', '1'),
(2399, 466, '_sku', 'hjkhjk-4'),
(2400, 466, '_regular_price', '1500'),
(2401, 466, '_sale_price', '1200'),
(2402, 466, '_sale_price_dates_from', ''),
(2403, 466, '_sale_price_dates_to', ''),
(2404, 466, 'total_sales', '0'),
(2405, 466, '_tax_status', 'taxable'),
(2406, 466, '_tax_class', ''),
(2407, 466, '_manage_stock', 'yes'),
(2408, 466, '_backorders', 'no'),
(2409, 466, '_low_stock_amount', ''),
(2410, 466, '_sold_individually', 'yes'),
(2411, 466, '_weight', '12'),
(2412, 466, '_length', '15'),
(2413, 466, '_width', '5800'),
(2414, 466, '_height', '210'),
(2415, 466, '_upsell_ids', 'a:0:{}'),
(2416, 466, '_crosssell_ids', 'a:0:{}'),
(2417, 466, '_purchase_note', 'dsnmfkjgnfdsmg,dfmg,df'),
(2418, 466, '_default_attributes', 'a:0:{}'),
(2419, 466, '_virtual', 'no'),
(2420, 466, '_downloadable', 'no'),
(2421, 466, '_product_image_gallery', '151'),
(2422, 466, '_download_limit', '-1'),
(2423, 466, '_download_expiry', '-1'),
(2424, 466, '_thumbnail_id', '151'),
(2425, 466, '_stock', '4'),
(2426, 466, '_stock_status', 'instock'),
(2427, 466, '_wc_average_rating', '0'),
(2428, 466, '_wc_rating_count', 'a:0:{}'),
(2429, 466, '_wc_review_count', '0'),
(2430, 466, '_downloadable_files', 'a:0:{}'),
(2431, 466, '_product_attributes', 'a:0:{}'),
(2432, 466, '_product_version', '3.5.5'),
(2433, 466, '_price', '1200'),
(2434, 466, '_edit_lock', '1554371929:1'),
(2435, 466, '_edit_last', '1'),
(2436, 467, '_sku', 'hjkhjk-5'),
(2437, 467, '_regular_price', '1500'),
(2438, 467, '_sale_price', '1200'),
(2439, 467, '_sale_price_dates_from', ''),
(2440, 467, '_sale_price_dates_to', ''),
(2441, 467, 'total_sales', '0'),
(2442, 467, '_tax_status', 'taxable'),
(2443, 467, '_tax_class', ''),
(2444, 467, '_manage_stock', 'yes'),
(2445, 467, '_backorders', 'no'),
(2446, 467, '_low_stock_amount', ''),
(2447, 467, '_sold_individually', 'yes'),
(2448, 467, '_weight', '12'),
(2449, 467, '_length', '15'),
(2450, 467, '_width', '5800'),
(2451, 467, '_height', '210'),
(2452, 467, '_upsell_ids', 'a:0:{}'),
(2453, 467, '_crosssell_ids', 'a:0:{}'),
(2454, 467, '_purchase_note', 'dsnmfkjgnfdsmg,dfmg,df'),
(2455, 467, '_default_attributes', 'a:0:{}'),
(2456, 467, '_virtual', 'no'),
(2457, 467, '_downloadable', 'no'),
(2458, 467, '_product_image_gallery', '151'),
(2459, 467, '_download_limit', '-1'),
(2460, 467, '_download_expiry', '-1'),
(2461, 467, '_thumbnail_id', '151'),
(2462, 467, '_stock', '4'),
(2463, 467, '_stock_status', 'instock'),
(2464, 467, '_wc_average_rating', '0'),
(2465, 467, '_wc_rating_count', 'a:0:{}'),
(2466, 467, '_wc_review_count', '0'),
(2467, 467, '_downloadable_files', 'a:0:{}'),
(2468, 467, '_product_attributes', 'a:0:{}'),
(2469, 467, '_product_version', '3.5.5'),
(2470, 467, '_price', '1200'),
(2471, 467, '_edit_lock', '1557991140:1'),
(2472, 467, '_edit_last', '1'),
(2475, 337, 'wiki_status', 'internal'),
(2476, 353, 'wiki_status', 'external'),
(2514, 352, 'wiki_status', 'internal'),
(2515, 475, '_edit_last', '1'),
(2516, 475, '_edit_lock', '1554882011:1'),
(2517, 475, '_thumbnail_id', '348'),
(2518, 475, 'fprice', '1,820.00'),
(2519, 475, 'ftax', '50.00'),
(2520, 476, '_edit_last', '1'),
(2521, 476, '_edit_lock', '1554898117:1'),
(2522, 476, '_thumbnail_id', '177'),
(2523, 476, 'fprice', '1,520.00'),
(2524, 476, 'ftax', '45.00'),
(2525, 476, 'businessclass', '1,200.00'),
(2526, 476, 'economyclass', '1,500.00'),
(2527, 476, 'businessclassdate', '04/10/2019'),
(2528, 476, 'businessclasstime', '12:00 AM'),
(2529, 476, 'economyclassdate', '04/09/2019'),
(2530, 476, 'economyclasstime', '11:00 AM'),
(2531, 479, '_wp_attached_file', '2019/04/air-berlin-128x50.png'),
(2532, 479, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:128;s:6:\"height\";i:50;s:4:\"file\";s:29:\"2019/04/air-berlin-128x50.png\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"air-berlin-128x50-100x50.png\";s:5:\"width\";i:100;s:6:\"height\";i:50;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"air-berlin-128x50-100x50.png\";s:5:\"width\";i:100;s:6:\"height\";i:50;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2533, 476, 'flogo_id', '479'),
(2534, 476, 'flogo', 'https://technovicinity.com/development/wordpress/milon/travel/wp-content/uploads/2019/04/air-berlin-128x50.png'),
(2536, 482, '_wp_attached_file', '2019/04/hotel-logo.jpg'),
(2537, 482, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:160;s:6:\"height\";i:101;s:4:\"file\";s:22:\"2019/04/hotel-logo.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"hotel-logo-150x101.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:101;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"hotel-logo-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"hotel-logo-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2538, 475, 'flogo_id', '482'),
(2539, 475, 'flogo', 'https://technovicinity.com/development/wordpress/milon/travel/wp-content/uploads/2019/04/hotel-logo.jpg'),
(2540, 475, 'businessclass', '15,200.00'),
(2541, 475, 'economyclass', '14,300.00'),
(2542, 475, 'businessclassdate', '04/02/2019'),
(2543, 475, 'businessclasstime', '12:00 AM'),
(2544, 475, 'economyclassdate', '04/01/2019'),
(2545, 475, 'economyclasstime', '04:00 AM'),
(2546, 483, '_edit_last', '1'),
(2547, 483, '_edit_lock', '1554901538:1'),
(2548, 484, '_wp_attached_file', '2019/04/mastercard.png'),
(2549, 484, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:45;s:6:\"height\";i:28;s:4:\"file\";s:22:\"2019/04/mastercard.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2550, 483, 'flogo_id', '484'),
(2551, 483, 'flogo', 'https://technovicinity.com/development/wordpress/milon/travel/wp-content/uploads/2019/04/mastercard.png'),
(2552, 483, 'fprice', '212.00'),
(2553, 483, 'ftax', '21,212.00'),
(2554, 483, 'businessclass', '212.00'),
(2555, 483, 'economyclass', '212.00'),
(2556, 483, 'businessclassdate', '04/10/2019'),
(2557, 483, 'businessclasstime', '12:00 AM'),
(2558, 483, 'economyclassdate', '04/08/2019'),
(2559, 483, 'economyclasstime', '12:00 AM'),
(2560, 491, '_edit_lock', '1557991096:1'),
(2561, 491, '_wp_page_template', 'admin-page/form_leads.php'),
(2607, 496, 'assigned_to', '460'),
(2608, 496, 'author', 'admin'),
(2609, 496, 'avatar', 'http://2.gravatar.com/avatar/?s=96&d=mm&r=g'),
(2610, 496, 'content', ''),
(2611, 496, 'custom', 'a:0:{}'),
(2612, 496, 'date', '2019-05-19 06:38:13'),
(2613, 496, 'email', 'admin@gmail.com'),
(2614, 496, 'ip_address', '127.0.0.1'),
(2615, 496, 'pinned', ''),
(2616, 496, 'rating', '4'),
(2617, 496, 'response', ''),
(2618, 496, 'review_id', 'f462632a5987bb5d13d7d648ef13d15b'),
(2619, 496, 'review_type', 'local'),
(2620, 496, 'title', ''),
(2621, 496, 'url', ''),
(2622, 460, '_glsr_count', 'a:1:{s:5:\"local\";a:6:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:3;i:5;i:0;}}'),
(2623, 460, '_glsr_average', '4'),
(2624, 460, '_glsr_ranking', '3.6153846153846'),
(2640, 466, '_glsr_count', 'a:1:{s:5:\"local\";a:6:{i:0;i:0;i:1;i:0;i:2;i:1;i:3;i:0;i:4;i:0;i:5;i:0;}}'),
(2641, 466, '_glsr_average', '2'),
(2642, 466, '_glsr_ranking', '3.3636363636364'),
(2643, 498, 'assigned_to', '466'),
(2644, 498, 'author', 'admin'),
(2645, 498, 'avatar', 'http://1.gravatar.com/avatar/?s=96&d=mm&r=g'),
(2646, 498, 'content', 'milon'),
(2647, 498, 'custom', 'a:0:{}'),
(2648, 498, 'date', '2019-05-19 06:43:14'),
(2649, 498, 'email', 'admin@gmail.com'),
(2650, 498, 'ip_address', '127.0.0.1'),
(2651, 498, 'pinned', ''),
(2652, 498, 'rating', '2'),
(2653, 498, 'response', ''),
(2654, 498, 'review_id', 'ec50cc4f2bddc1f01b11425b8e076b8e'),
(2655, 498, 'review_type', 'local'),
(2656, 498, 'title', ''),
(2657, 498, 'url', ''),
(2685, 465, '_glsr_count', 'a:1:{s:5:\"local\";a:6:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;}}'),
(2686, 465, '_glsr_average', '0'),
(2687, 465, '_glsr_ranking', '0'),
(2691, 500, 'assigned_to', '267'),
(2692, 500, 'author', 'admin'),
(2693, 500, 'avatar', 'http://2.gravatar.com/avatar/?s=96&d=mm&r=g'),
(2694, 500, 'content', 'test golobal'),
(2695, 500, 'custom', 'a:0:{}'),
(2696, 500, 'date', '2019-05-19 06:50:26'),
(2697, 500, 'email', 'admin@gmail.com'),
(2698, 500, 'ip_address', '127.0.0.1'),
(2699, 500, 'pinned', ''),
(2700, 500, 'rating', '2'),
(2701, 500, 'response', ''),
(2702, 500, 'review_id', 'b4c6a596ebe34f9f9a3ddd80cbc61931'),
(2703, 500, 'review_type', 'local'),
(2704, 500, 'title', ''),
(2705, 500, 'url', ''),
(2706, 267, '_glsr_count', 'a:1:{s:5:\"local\";a:6:{i:0;i:0;i:1;i:0;i:2;i:1;i:3;i:0;i:4;i:0;i:5;i:0;}}'),
(2707, 267, '_glsr_average', '2'),
(2708, 267, '_glsr_ranking', '3.3636363636364'),
(2709, 501, 'assigned_to', '460'),
(2710, 501, 'author', 'admin'),
(2711, 501, 'avatar', 'http://1.gravatar.com/avatar/?s=96&d=mm&r=g'),
(2712, 501, 'content', 'besto achi'),
(2713, 501, 'custom', 'a:0:{}'),
(2714, 501, 'date', '2019-05-19 06:52:20'),
(2715, 501, 'email', 'admin@gmail.com'),
(2716, 501, 'ip_address', '127.0.0.1'),
(2717, 501, 'pinned', ''),
(2718, 501, 'rating', '4'),
(2719, 501, 'response', ''),
(2720, 501, 'review_id', '37dc86524a3bb6447c782ad2e4af14fe'),
(2721, 501, 'review_type', 'local'),
(2722, 501, 'title', ''),
(2723, 501, 'url', ''),
(2724, 502, 'assigned_to', '460'),
(2725, 502, 'author', 'admin'),
(2726, 502, 'avatar', 'http://2.gravatar.com/avatar/?s=96&d=mm&r=g'),
(2727, 502, 'content', 'main'),
(2728, 502, 'custom', 'a:0:{}'),
(2729, 502, 'date', '2019-05-19 06:54:16'),
(2730, 502, 'email', 'admin@gmail.com'),
(2731, 502, 'ip_address', '127.0.0.1'),
(2732, 502, 'pinned', ''),
(2733, 502, 'rating', '4'),
(2734, 502, 'response', ''),
(2735, 502, 'review_id', 'd98e5b82cbac9ebb037f810360364f6a'),
(2736, 502, 'review_type', 'local'),
(2737, 502, 'title', ''),
(2738, 502, 'url', ''),
(2739, 503, 'assigned_to', '459'),
(2740, 503, 'author', 'admin'),
(2741, 503, 'avatar', 'http://0.gravatar.com/avatar/?s=96&d=mm&r=g'),
(2742, 503, 'content', 'hello bangladesh'),
(2743, 503, 'custom', 'a:0:{}'),
(2744, 503, 'date', '2019-05-19 07:24:30'),
(2745, 503, 'email', 'admin@gmail.com'),
(2746, 503, 'ip_address', '127.0.0.1'),
(2747, 503, 'pinned', ''),
(2748, 503, 'rating', '3'),
(2749, 503, 'response', ''),
(2750, 503, 'review_id', 'f51338724f78cebbe16c7d7fed0ecbef'),
(2751, 503, 'review_type', 'local'),
(2752, 503, 'title', ''),
(2753, 503, 'url', ''),
(2754, 459, '_glsr_count', 'a:1:{s:5:\"local\";a:6:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:2;i:4;i:1;i:5;i:1;}}'),
(2755, 459, '_glsr_average', '3.8'),
(2756, 459, '_glsr_ranking', '3.5857142857143'),
(2757, 504, 'assigned_to', '459'),
(2758, 504, 'author', 'admin'),
(2759, 504, 'avatar', 'http://2.gravatar.com/avatar/?s=96&d=mm&r=g'),
(2760, 504, 'content', 'ami valo achi'),
(2761, 504, 'custom', 'a:0:{}'),
(2762, 504, 'date', '2019-05-19 07:25:03'),
(2763, 504, 'email', 'admin@gmail.com'),
(2764, 504, 'ip_address', '127.0.0.1'),
(2765, 504, 'pinned', ''),
(2766, 504, 'rating', '4'),
(2767, 504, 'response', ''),
(2768, 504, 'review_id', '770d1ba070d5ddc2007e1fcc258a2241'),
(2769, 504, 'review_type', 'local'),
(2770, 504, 'title', ''),
(2771, 504, 'url', ''),
(2772, 505, 'assigned_to', '459'),
(2773, 505, 'author', 'admin'),
(2774, 505, 'avatar', 'http://1.gravatar.com/avatar/?s=96&d=mm&r=g'),
(2775, 505, 'content', 'tomar ei na valo vasa'),
(2776, 505, 'custom', 'a:0:{}'),
(2777, 505, 'date', '2019-05-19 07:25:57'),
(2778, 505, 'email', 'admin@gmail.com'),
(2779, 505, 'ip_address', '127.0.0.1'),
(2780, 505, 'pinned', ''),
(2781, 505, 'rating', '5'),
(2782, 505, 'response', ''),
(2783, 505, 'review_id', '154e4f1c7e4883dc447e04691f43cdde'),
(2784, 505, 'review_type', 'local'),
(2785, 505, 'title', ''),
(2786, 505, 'url', ''),
(2787, 506, 'assigned_to', '459'),
(2788, 506, 'author', 'admin'),
(2789, 506, 'avatar', 'http://2.gravatar.com/avatar/?s=96&d=mm&r=g'),
(2790, 506, 'content', 'kire ki'),
(2791, 506, 'custom', 'a:0:{}'),
(2792, 506, 'date', '2019-05-19 07:26:25'),
(2793, 506, 'email', 'admin@gmail.com'),
(2794, 506, 'ip_address', '127.0.0.1'),
(2795, 506, 'pinned', ''),
(2796, 506, 'rating', '3'),
(2797, 506, 'response', ''),
(2798, 506, 'review_id', 'e7ae27dae4ac4b01a42cb746a5a3010b'),
(2799, 506, 'review_type', 'local'),
(2800, 506, 'title', ''),
(2801, 506, 'url', ''),
(2802, 507, 'assigned_to', '196'),
(2803, 507, 'author', 'admin'),
(2804, 507, 'avatar', 'http://0.gravatar.com/avatar/?s=96&d=mm&r=g'),
(2805, 507, 'content', 'hello'),
(2806, 507, 'custom', 'a:0:{}'),
(2807, 507, 'date', '2019-05-21 05:30:48'),
(2808, 507, 'email', 'admin@gmail.com'),
(2809, 507, 'ip_address', '127.0.0.1'),
(2810, 507, 'pinned', ''),
(2811, 507, 'rating', '4'),
(2812, 507, 'response', ''),
(2813, 507, 'review_id', '3d1483ebb27d308c71feb1243ef1334d'),
(2814, 507, 'review_type', 'local'),
(2815, 507, 'title', ''),
(2816, 507, 'url', ''),
(2817, 196, '_glsr_count', 'a:1:{s:5:\"local\";a:6:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:1;i:5;i:0;}}'),
(2818, 196, '_glsr_average', '4'),
(2819, 196, '_glsr_ranking', '3.5454545454545'),
(2821, 196, 'wpuser_user_role', 'milon'),
(2822, 514, 'wpuf_form_settings', 'a:24:{s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:7:\"publish\";s:11:\"post_format\";s:1:\"0\";s:11:\"default_cat\";s:2:\"-1\";s:10:\"guest_post\";s:5:\"false\";s:13:\"guest_details\";s:4:\"true\";s:10:\"name_label\";s:4:\"Name\";s:11:\"email_label\";s:5:\"Email\";s:16:\"message_restrict\";s:68:\"This page is restricted. Please Log in / Register to view this page.\";s:11:\"redirect_to\";s:4:\"post\";s:7:\"message\";s:10:\"Post saved\";s:7:\"page_id\";s:0:\"\";s:3:\"url\";s:0:\"\";s:14:\"comment_status\";s:4:\"open\";s:11:\"submit_text\";s:6:\"Submit\";s:10:\"draft_post\";s:5:\"false\";s:16:\"edit_post_status\";s:7:\"publish\";s:16:\"edit_redirect_to\";s:4:\"same\";s:14:\"update_message\";s:25:\"Post updated successfully\";s:12:\"edit_page_id\";s:0:\"\";s:8:\"edit_url\";s:0:\"\";s:12:\"subscription\";s:10:\"- Select -\";s:11:\"update_text\";s:6:\"Update\";s:12:\"notification\";a:8:{s:3:\"new\";s:2:\"on\";s:6:\"new_to\";s:15:\"admin@gmail.com\";s:11:\"new_subject\";s:16:\"New post created\";s:8:\"new_body\";s:222:\"Hi Admin, \r\n\r\nA new post has been created in your site %sitename% (%siteurl%). \r\n\r\nHere is the details: \r\nPost Title: %post_title% \r\nContent: %post_content% \r\nAuthor: %author% \r\nPost URL: %permalink% \r\nEdit URL: %editlink%\";s:4:\"edit\";s:3:\"off\";s:7:\"edit_to\";s:15:\"admin@gmail.com\";s:12:\"edit_subject\";s:22:\"A post has been edited\";s:9:\"edit_body\";s:199:\"Hi Admin, \r\n\r\nThe post \"%post_title%\" has been updated. \r\n\r\nHere is the details: \r\nPost Title: %post_title% \r\nContent: %post_content% \r\nAuthor: %author% \r\nPost URL: %permalink% \r\nEdit URL: %editlink%\";}}'),
(2823, 514, 'wpuf_form_version', '2.8.7'),
(2824, 525, 'wpuf_form_settings', 'a:24:{s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:7:\"publish\";s:11:\"post_format\";s:1:\"0\";s:11:\"default_cat\";s:2:\"-1\";s:10:\"guest_post\";s:5:\"false\";s:13:\"guest_details\";s:4:\"true\";s:10:\"name_label\";s:4:\"Name\";s:11:\"email_label\";s:5:\"Email\";s:16:\"message_restrict\";s:68:\"This page is restricted. Please Log in / Register to view this page.\";s:11:\"redirect_to\";s:4:\"post\";s:7:\"message\";s:10:\"Post saved\";s:7:\"page_id\";s:0:\"\";s:3:\"url\";s:0:\"\";s:14:\"comment_status\";s:4:\"open\";s:11:\"submit_text\";s:6:\"Submit\";s:10:\"draft_post\";s:5:\"false\";s:16:\"edit_post_status\";s:7:\"publish\";s:16:\"edit_redirect_to\";s:4:\"same\";s:14:\"update_message\";s:25:\"Post updated successfully\";s:12:\"edit_page_id\";s:0:\"\";s:8:\"edit_url\";s:0:\"\";s:12:\"subscription\";s:10:\"- Select -\";s:11:\"update_text\";s:6:\"Update\";s:12:\"notification\";a:8:{s:3:\"new\";s:2:\"on\";s:6:\"new_to\";s:15:\"admin@gmail.com\";s:11:\"new_subject\";s:16:\"New post created\";s:8:\"new_body\";s:222:\"Hi Admin, \r\n\r\nA new post has been created in your site %sitename% (%siteurl%). \r\n\r\nHere is the details: \r\nPost Title: %post_title% \r\nContent: %post_content% \r\nAuthor: %author% \r\nPost URL: %permalink% \r\nEdit URL: %editlink%\";s:4:\"edit\";s:3:\"off\";s:7:\"edit_to\";s:15:\"admin@gmail.com\";s:12:\"edit_subject\";s:22:\"A post has been edited\";s:9:\"edit_body\";s:199:\"Hi Admin, \r\n\r\nThe post \"%post_title%\" has been updated. \r\n\r\nHere is the details: \r\nPost Title: %post_title% \r\nContent: %post_content% \r\nAuthor: %author% \r\nPost URL: %permalink% \r\nEdit URL: %editlink%\";}}'),
(2825, 525, 'wpuf_form_version', '2.8.7'),
(2826, 532, 'wpuf_form_settings', 'a:17:{s:25:\"enable_email_verification\";s:2:\"no\";s:4:\"role\";s:6:\"taibur\";s:16:\"enable_multistep\";s:3:\"yes\";s:26:\"multistep_progressbar_type\";s:12:\"step_by_step\";s:15:\"ms_ac_txt_color\";s:7:\"#ffffff\";s:17:\"ms_active_bgcolor\";s:7:\"#00a0d2\";s:10:\"ms_bgcolor\";s:7:\"#E4E4E4\";s:14:\"label_position\";s:4:\"left\";s:15:\"reg_redirect_to\";s:4:\"same\";s:7:\"message\";s:23:\"Registration successful\";s:7:\"page_id\";s:3:\"774\";s:16:\"registration_url\";s:0:\"\";s:11:\"submit_text\";s:8:\"Register\";s:19:\"profile_redirect_to\";s:4:\"same\";s:14:\"update_message\";s:28:\"Profile updated successfully\";s:11:\"profile_url\";s:0:\"\";s:11:\"update_text\";s:14:\"Update Profile\";}'),
(2827, 532, 'wpuf_form_version', '2.8.7'),
(2828, 13, '_edit_last', '1'),
(2829, 13, '_wpuf_form_id', ''),
(2830, 13, '_wpuf_res_display', 'all'),
(2831, 538, 'wpuf_form_settings', 'a:48:{s:11:\"redirect_to\";s:4:\"same\";s:7:\"message\";s:64:\"Thanks for contacting us! We will get in touch with you shortly.\";s:7:\"page_id\";s:0:\"\";s:3:\"url\";s:0:\"\";s:11:\"submit_text\";s:12:\"Submit Query\";s:18:\"submit_button_cond\";O:8:\"stdClass\":3:{s:16:\"condition_status\";s:2:\"no\";s:10:\"cond_logic\";s:3:\"any\";s:10:\"conditions\";a:1:{i:0;O:8:\"stdClass\":3:{s:4:\"name\";s:0:\"\";s:8:\"operator\";s:1:\"=\";s:6:\"option\";s:0:\"\";}}}s:13:\"schedule_form\";s:5:\"false\";s:14:\"schedule_start\";s:0:\"\";s:12:\"schedule_end\";s:0:\"\";s:18:\"sc_pending_message\";s:39:\"Form submission hasn\'t been started yet\";s:18:\"sc_expired_message\";s:30:\"Form submission is now closed.\";s:13:\"require_login\";s:5:\"false\";s:17:\"req_login_message\";s:36:\"You need to login to submit a query.\";s:13:\"limit_entries\";s:5:\"false\";s:12:\"limit_number\";s:3:\"100\";s:13:\"limit_message\";s:57:\"Sorry, we have reached the maximum number of submissions.\";s:14:\"label_position\";s:5:\"above\";s:13:\"use_theme_css\";s:10:\"wpuf-style\";s:9:\"quiz_form\";s:2:\"no\";s:22:\"shuffle_question_order\";s:2:\"no\";s:13:\"release_grade\";s:16:\"after_submission\";s:18:\"respondent_can_see\";a:3:{i:0;s:16:\"missed_questions\";i:1;s:15:\"correct_answers\";i:2;s:12:\"point_values\";}s:12:\"total_points\";i:0;s:16:\"enable_multistep\";b:0;s:26:\"multistep_progressbar_type\";s:11:\"progressive\";s:21:\"payment_paypal_images\";s:68:\"https://www.paypalobjects.com/webstatic/mktg/logo/AM_mc_vs_dc_ae.jpg\";s:20:\"payment_paypal_label\";s:6:\"PayPal\";s:20:\"payment_stripe_label\";s:11:\"Credit Card\";s:21:\"payment_stripe_images\";a:4:{i:0;s:4:\"visa\";i:1;s:10:\"mastercard\";i:2;s:4:\"amex\";i:3;s:8:\"discover\";}s:25:\"payment_stripe_deactivate\";s:0:\"\";s:11:\"stripe_mode\";s:4:\"live\";s:14:\"stripe_page_id\";s:0:\"\";s:20:\"stripe_override_keys\";s:0:\"\";s:12:\"stripe_email\";s:0:\"\";s:10:\"stripe_key\";s:0:\"\";s:17:\"stripe_secret_key\";s:0:\"\";s:15:\"stripe_key_test\";s:0:\"\";s:22:\"stripe_secret_key_test\";s:0:\"\";s:20:\"stripe_prefill_email\";s:0:\"\";s:23:\"stripe_user_email_field\";s:0:\"\";s:25:\"payment_paypal_deactivate\";s:0:\"\";s:11:\"paypal_mode\";s:4:\"live\";s:11:\"paypal_type\";s:5:\"_cart\";s:15:\"paypal_override\";s:0:\"\";s:12:\"paypal_email\";s:0:\"\";s:14:\"paypal_page_id\";s:0:\"\";s:20:\"paypal_prefill_email\";s:0:\"\";s:23:\"paypal_user_email_field\";s:0:\"\";}'),
(2832, 538, 'notifications', 'a:1:{i:0;a:14:{s:6:\"active\";s:4:\"true\";s:4:\"type\";s:5:\"email\";s:5:\"smsTo\";s:0:\"\";s:7:\"smsText\";s:45:\"[{form_name}] New Form Submission #{entry_id}\";s:4:\"name\";s:18:\"Admin Notification\";s:7:\"subject\";s:45:\"[{form_name}] New Form Submission #{entry_id}\";s:2:\"to\";s:13:\"{admin_email}\";s:7:\"replyTo\";s:13:\"{field:email}\";s:7:\"message\";s:19:\"<p>{all_fields}</p>\";s:8:\"fromName\";s:11:\"{site_name}\";s:11:\"fromAddress\";s:13:\"{admin_email}\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:12:\"weforms_cond\";a:3:{s:16:\"condition_status\";s:2:\"no\";s:10:\"cond_logic\";s:3:\"any\";s:10:\"conditions\";a:1:{i:0;a:3:{s:4:\"name\";s:0:\"\";s:8:\"operator\";s:1:\"=\";s:6:\"option\";s:0:\"\";}}}}}'),
(2833, 538, 'integrations', 'a:1:{s:5:\"slack\";O:8:\"stdClass\":2:{s:7:\"enabled\";b:0;s:3:\"url\";s:0:\"\";}}'),
(2835, 548, '_edit_lock', '1558510345:1'),
(2836, 551, 'wppb_role_slug', 'administrator'),
(2837, 552, 'wppb_role_slug', 'author'),
(2838, 553, 'wppb_role_slug', 'bbp_blocked'),
(2839, 554, 'wppb_role_slug', 'wphb_booking_editor'),
(2840, 555, 'wppb_role_slug', 'booking_package_member'),
(2841, 556, 'wppb_role_slug', 'contributor'),
(2842, 557, 'wppb_role_slug', 'customer'),
(2843, 558, 'wppb_role_slug', 'editor'),
(2844, 559, 'wppb_role_slug', 'awebooking_customer'),
(2845, 560, 'wppb_role_slug', 'wphb_hotel_manager'),
(2846, 561, 'wppb_role_slug', 'awebooking_manager'),
(2847, 562, 'wppb_role_slug', 'awebooking_receptionist'),
(2848, 563, 'wppb_role_slug', 'bbp_keymaster'),
(2849, 564, 'wppb_role_slug', 'bbp_moderator'),
(2850, 565, 'wppb_role_slug', 'bbp_participant'),
(2851, 566, 'wppb_role_slug', 'shop_manager'),
(2852, 567, 'wppb_role_slug', 'bbp_spectator'),
(2853, 568, 'wppb_role_slug', 'subscriber'),
(2854, 569, 'wppb_role_slug', 'wp-travel-customer'),
(2855, 570, 'wppb_role_slug', 'milon'),
(2856, 571, 'wppb_role_slug', 'taibur'),
(2857, 571, '_edit_lock', '1572096466:1'),
(2858, 571, '_edit_last', '1'),
(2895, 576, '_menu_item_type', 'post_type'),
(2896, 576, '_menu_item_menu_item_parent', '34'),
(2897, 576, '_menu_item_object_id', '186'),
(2898, 576, '_menu_item_object', 'page'),
(2899, 576, '_menu_item_target', ''),
(2900, 576, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2901, 576, '_menu_item_xfn', ''),
(2902, 576, '_menu_item_url', ''),
(2913, 578, '_edit_lock', '1558586678:1'),
(2914, 580, '_edit_lock', '1558811748:1'),
(2915, 582, '_edit_lock', '1558586742:1'),
(2916, 584, '_menu_item_type', 'post_type'),
(2917, 584, '_menu_item_menu_item_parent', '0'),
(2918, 584, '_menu_item_object_id', '582'),
(2919, 584, '_menu_item_object', 'page'),
(2920, 584, '_menu_item_target', ''),
(2921, 584, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2922, 584, '_menu_item_xfn', ''),
(2923, 584, '_menu_item_url', ''),
(2925, 585, '_menu_item_type', 'post_type'),
(2926, 585, '_menu_item_menu_item_parent', '0'),
(2927, 585, '_menu_item_object_id', '580'),
(2928, 585, '_menu_item_object', 'page'),
(2929, 585, '_menu_item_target', ''),
(2930, 585, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2931, 585, '_menu_item_xfn', ''),
(2932, 585, '_menu_item_url', ''),
(2934, 586, '_menu_item_type', 'post_type'),
(2935, 586, '_menu_item_menu_item_parent', '0'),
(2936, 586, '_menu_item_object_id', '578'),
(2937, 586, '_menu_item_object', 'page'),
(2938, 586, '_menu_item_target', ''),
(2939, 586, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2940, 586, '_menu_item_xfn', ''),
(2941, 586, '_menu_item_url', ''),
(2943, 587, '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2944, 587, '_menu_item_menu_item_parent', '0'),
(2945, 587, '_menu_item_object_id', '582'),
(2946, 587, '_menu_item_object', 'page'),
(2947, 587, '_menu_item_target', ''),
(2948, 587, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2949, 587, '_menu_item_xfn', ''),
(2950, 587, '_menu_item_url', ''),
(2952, 588, '_menu_item_type', 'post_type'),
(2953, 588, '_menu_item_menu_item_parent', '0'),
(2954, 588, '_menu_item_object_id', '580'),
(2955, 588, '_menu_item_object', 'page'),
(2956, 588, '_menu_item_target', ''),
(2957, 588, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2958, 588, '_menu_item_xfn', ''),
(2959, 588, '_menu_item_url', ''),
(2961, 589, '_menu_item_type', 'post_type'),
(2962, 589, '_menu_item_menu_item_parent', '0'),
(2963, 589, '_menu_item_object_id', '578'),
(2964, 589, '_menu_item_object', 'page'),
(2965, 589, '_menu_item_target', ''),
(2966, 589, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2967, 589, '_menu_item_xfn', ''),
(2968, 589, '_menu_item_url', ''),
(2970, 590, '_menu_item_type', 'post_type'),
(2971, 590, '_menu_item_menu_item_parent', '0'),
(2972, 590, '_menu_item_object_id', '529'),
(2973, 590, '_menu_item_object', 'page'),
(2974, 590, '_menu_item_target', ''),
(2975, 590, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2976, 590, '_menu_item_xfn', ''),
(2977, 590, '_menu_item_url', ''),
(2979, 591, '_menu_item_type', 'post_type'),
(2980, 591, '_menu_item_menu_item_parent', '0'),
(2981, 591, '_menu_item_object_id', '528'),
(2982, 591, '_menu_item_object', 'page'),
(2983, 591, '_menu_item_target', ''),
(2984, 591, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2985, 591, '_menu_item_xfn', ''),
(2986, 591, '_menu_item_url', ''),
(2988, 592, '_menu_item_type', 'post_type'),
(2989, 592, '_menu_item_menu_item_parent', '0'),
(2990, 592, '_menu_item_object_id', '522'),
(2991, 592, '_menu_item_object', 'page'),
(2992, 592, '_menu_item_target', ''),
(2993, 592, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2994, 592, '_menu_item_xfn', ''),
(2995, 592, '_menu_item_url', ''),
(3003, 595, '_edit_lock', '1558725710:1'),
(3004, 595, '_edit_last', '1'),
(3005, 595, '_thumbnail_id', '176'),
(3006, 595, 'agentname', 'Bangladeshi Service Team and Guide'),
(3007, 595, 'makkahstay', '10'),
(3008, 595, 'madinahstay', '6'),
(3009, 595, 'makkahhotelhame', 'Sheraton Makkah Jabal Al Kaaba Hotel'),
(3010, 595, 'Makkahoteldistance', '26'),
(3011, 595, 'madinahhotelname', 'Grand Madina Hotel'),
(3012, 595, 'madinahhoteldistance', '30'),
(3013, 595, 'locationcheckins', '05/25/2019'),
(3014, 595, 'locationcheckout', '05/30/2019'),
(3015, 595, 'umrahroom', '16'),
(3016, 595, 'umrahparson', '32'),
(3017, 595, 'umrahdouble', '6,000.00'),
(3018, 595, 'umrahtriplebed', '8,000.00'),
(3019, 595, 'umrahfourbed', '10,000.00'),
(3020, 595, 'umrahsharing', '13,000.00'),
(3021, 595, 'umrahpolicies', '<span id=\"e18\" class=\"qc_ si29 \">Lowest Prices &amp; Latest Reviews on TripAdvisor®. Cheap Flights. Millions of hotel reviews. Best Places to Eat. Amazing Experiences. Hidden Gems. Candid traveler photos. Vacation Rentals. Easy <b>price</b> comparison. Tours, Attractions + More. Fun Things to Do.</span>\r\n<div id=\"e19\" class=\"kc_  \"></div>\r\n<div id=\"e24\" class=\"kc_  \"></div>\r\n<div id=\"e25\" class=\"kc_  \"></div>\r\n<div id=\"e30\" class=\"kc_  \">\r\n<div id=\"e31\" class=\"kc_  \">\r\n<div id=\"e33\" class=\"kc_ si17 \"><a id=\"e34\" class=\"nc_ pc_ si18 \" href=\"https://www.google.com/aclk?sa=l&amp;ai=DChcSEwjNldaT8bTiAhXDIysKHQSuBCQYABAFGgJzZg&amp;sig=AOD64_1Ok09ghUaiTYFtB7XaitM975pYzQ&amp;adurl=&amp;nb=13&amp;res_url=https%3A%2F%2Fbd.zapmeta.ws%2Fws%3Fq%3Dhajj%2520and%2520umrah%2520package%26asid%3Dzm_bd_gb_2_cg1_05%26mt%3Db%26nw%3Ds%26de%3Dc%26ap%3D1t2%26ac%3D2037%26gclid%3DCj0KCQjwrJ7nBRD5ARIsAATMxstyQyUan_-lnALUqbMj1yXRUvQbacW7Pda7jf6_ziyOH6EjbCfCDlcaAsPFEALw_wcB&amp;rurl=https%3A%2F%2Fwww.google.com%2F&amp;nm=73\" target=\"_blank\" rel=\"noopener\" data-lines=\"1\" data-truncate=\"0\" data-nb=\"13\">Hotels</a><span id=\"e36\" class=\"qc_ priceExtensionChipsExpandoPriceHyphen \">-</span><span id=\"e37\" class=\"nc_ pc_ priceExtensionChipsPrice \" data-lines=\"1\" data-truncate=\"0\">from $50.00/night</span><span id=\"e38\" class=\"nc_ pc_ si19 \" data-lines=\"1\" data-truncate=\"0\">Compare Prices</span></div>\r\n</div>\r\n</div>'),
(3022, 595, 'umrahfacilites', '<span id=\"e18\" class=\"qc_ si29 \">Lowest Prices &amp; Latest Reviews on TripAdvisor®. Cheap Flights. Millions of hotel reviews. Best Places to Eat. Amazing Experiences. Hidden Gems. Candid traveler photos. Vacation Rentals. Easy <b>price</b> comparison. Tours, Attractions + More. Fun Things to Do.</span>\r\n<div id=\"e19\" class=\"kc_  \"></div>\r\n<div id=\"e24\" class=\"kc_  \"></div>\r\n<div id=\"e25\" class=\"kc_  \"></div>\r\n<div id=\"e30\" class=\"kc_  \">\r\n<div id=\"e31\" class=\"kc_  \">\r\n<div id=\"e33\" class=\"kc_ si17 \"><a id=\"e34\" class=\"nc_ pc_ si18 \" href=\"https://www.google.com/aclk?sa=l&amp;ai=DChcSEwjNldaT8bTiAhXDIysKHQSuBCQYABAFGgJzZg&amp;sig=AOD64_1Ok09ghUaiTYFtB7XaitM975pYzQ&amp;adurl=&amp;nb=13&amp;res_url=https%3A%2F%2Fbd.zapmeta.ws%2Fws%3Fq%3Dhajj%2520and%2520umrah%2520package%26asid%3Dzm_bd_gb_2_cg1_05%26mt%3Db%26nw%3Ds%26de%3Dc%26ap%3D1t2%26ac%3D2037%26gclid%3DCj0KCQjwrJ7nBRD5ARIsAATMxstyQyUan_-lnALUqbMj1yXRUvQbacW7Pda7jf6_ziyOH6EjbCfCDlcaAsPFEALw_wcB&amp;rurl=https%3A%2F%2Fwww.google.com%2F&amp;nm=73\" target=\"_blank\" rel=\"noopener\" data-lines=\"1\" data-truncate=\"0\" data-nb=\"13\">Hotels</a><span id=\"e36\" class=\"qc_ priceExtensionChipsExpandoPriceHyphen \">-</span><span id=\"e37\" class=\"nc_ pc_ priceExtensionChipsPrice \" data-lines=\"1\" data-truncate=\"0\">from $50.00/night</span><span id=\"e38\" class=\"nc_ pc_ si19 \" data-lines=\"1\" data-truncate=\"0\">Compare Prices</span></div>\r\n</div>\r\n</div>'),
(3023, 596, 'assigned_to', '595'),
(3024, 596, 'author', 'admin'),
(3025, 596, 'avatar', 'https://secure.gravatar.com/avatar/?s=96&d=mm&r=g'),
(3026, 596, 'content', ''),
(3027, 596, 'custom', 'a:0:{}'),
(3028, 596, 'date', '2019-05-24 19:23:54'),
(3029, 596, 'email', 'admin@gmail.com'),
(3030, 596, 'ip_address', '103.127.176.78'),
(3031, 596, 'pinned', ''),
(3032, 596, 'rating', '3'),
(3033, 596, 'response', ''),
(3034, 596, 'review_id', 'f32e2b9a7df30121f83ee14e50c4f667'),
(3035, 596, 'review_type', 'local'),
(3036, 596, 'title', ''),
(3037, 596, 'url', ''),
(3038, 595, '_glsr_count', 'a:1:{s:5:\"local\";a:6:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:1;i:4;i:0;i:5;i:0;}}'),
(3039, 595, '_glsr_average', '3'),
(3040, 595, '_glsr_ranking', '3.4545454545455'),
(3041, 597, '_edit_lock', '1558777179:1'),
(3042, 597, '_edit_last', '1'),
(3043, 597, '_thumbnail_id', '348'),
(3044, 597, 'agentname', 'Bangladeshi Service Team and Guide'),
(3045, 597, 'makkahstay', '8'),
(3046, 597, 'madinahstay', '5'),
(3047, 597, 'makkahhotelhame', 'Sheraton Makkah Jabal Al Kaaba Hotel'),
(3048, 597, 'Makkahoteldistance', '26'),
(3049, 597, 'madinahhotelname', 'Grand Madina Hotel'),
(3050, 597, 'madinahhoteldistance', '30'),
(3051, 597, 'locationcheckins', '05/25/2019'),
(3052, 597, 'locationcheckout', '05/30/2019'),
(3053, 597, 'umrahroom', '16'),
(3054, 597, 'umrahparson', '32'),
(3055, 597, 'umrahdouble', '6,000.00'),
(3056, 597, 'umrahtriplebed', '8,000.00'),
(3057, 597, 'umrahfourbed', '10,000.00'),
(3058, 597, 'umrahsharing', '13,000.00'),
(3059, 597, 'umrahpolicies', 'Travel offers, with the best hotels, transfers and tours. Book your holidays. Access the best hotel deals and customized travel <b>packages</b> for your Cuba trip. Circuitos por Cuba. Paquetes a la medida. Havanatur Celimar. Lodging in Cuba. Alojamiento en Cuba. Havanatur Cuba. Transfer in Cuba. Conventions in Cuba. Excursiones por Cuba. Offers in Cuba.'),
(3060, 597, 'umrahfacilites', 'Travel offers, with the best hotels, transfers and tours. Book your holidays. Access the best hotel deals and customized travel <b>packages</b> for your Cuba trip. Circuitos por Cuba. Paquetes a la medida. Havanatur Celimar. Lodging in Cuba. Alojamiento en Cuba. Havanatur Cuba. Transfer in Cuba. Conventions in Cuba. Excursiones por Cuba. Offers in Cuba.'),
(3061, 598, 'assigned_to', '597'),
(3062, 598, 'author', 'admin'),
(3063, 598, 'avatar', 'https://secure.gravatar.com/avatar/?s=96&d=mm&r=g'),
(3064, 598, 'content', ''),
(3065, 598, 'custom', 'a:0:{}'),
(3066, 598, 'date', '2019-05-24 19:33:10'),
(3067, 598, 'email', 'admin@gmail.com'),
(3068, 598, 'ip_address', '103.127.176.78'),
(3069, 598, 'pinned', ''),
(3070, 598, 'rating', '4'),
(3071, 598, 'response', ''),
(3072, 598, 'review_id', '9671663c0ebd768ec56cea070b5d7a61'),
(3073, 598, 'review_type', 'local'),
(3074, 598, 'title', ''),
(3075, 598, 'url', ''),
(3076, 597, '_glsr_count', 'a:1:{s:5:\"local\";a:6:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:1;i:5;i:0;}}'),
(3077, 597, '_glsr_average', '4'),
(3078, 597, '_glsr_ranking', '3.5454545454545'),
(3079, 352, 'toursname', 'faucibus egestas rutrum mauris vulputate consequat ante'),
(3080, 352, 'toursemail', 'admin@admin.com'),
(3081, 352, 'toursprice', '20,000.00'),
(3082, 352, 'tourstype', 'Free'),
(3083, 352, 'toursoverview', 'faucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat ante'),
(3084, 352, 'toursmap', 'faucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat ante'),
(3085, 352, 'toursdayone', 'faucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat ante'),
(3086, 352, 'toursdaytwo', 'faucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat ante'),
(3087, 352, 'toursdaythress', 'faucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat ante'),
(3088, 352, 'toursdayfour', 'faucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat antefaucibus egestas rutrum mauris vulputate consequat ante'),
(3089, 602, '_edit_lock', '1558757823:1'),
(3090, 602, '_edit_last', '1'),
(3091, 603, '_wp_attached_file', '2019/05/2.jpg'),
(3092, 603, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:263;s:6:\"height\";i:197;s:4:\"file\";s:13:\"2019/05/2.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(3093, 602, '_thumbnail_id', '603'),
(3094, 602, 'toursdeparturedate', '05/25/2019'),
(3095, 602, 'toursarrivedate', '05/30/2019'),
(3096, 602, 'toursname', 'Cursus faucibus egestas rutrum mauris vulputate consequat ante'),
(3097, 602, 'toursemail', 'milondiucse@gmail.com'),
(3098, 602, 'tourlocation', 'Cursus faucibus egestas rutrum mauris vulputate consequat ante'),
(3099, 602, 'toursprice', '50,000.00'),
(3100, 602, 'tourstype', 'Free'),
(3101, 602, 'maximumnumberof', '6'),
(3102, 602, 'toursoverview', 'Cursus faucibus egestas rutrum mauris vulputate consequat anteCursus faucibus egestas rutrum mauris vulputate consequat anteCursus faucibus egestas rutrum mauris vulputate consequat anteCursus faucibus egestas rutrum mauris vulputate consequat ante'),
(3103, 602, 'toursdayone', 'Cursus faucibus egestas rutrum mauris vulputate consequat anteCursus faucibus egestas rutrum mauris vulputate consequat anteCursus faucibus egestas rutrum mauris vulputate consequat anteCursus faucibus egestas rutrum mauris vulputate consequat anteCursus faucibus egestas rutrum mauris vulputate consequat anteCursus faucibus egestas rutrum mauris vulputate consequat anteCursus faucibus egestas rutrum mauris vulputate consequat anteCursus faucibus egestas rutrum mauris vulputate consequat ante'),
(3104, 602, 'toursdaytwo', 'Cursus faucibus egestas rutrum mauris vulputate consequat anteCursus faucibus egestas rutrum mauris vulputate consequat anteCursus faucibus egestas rutrum mauris vulputate consequat anteCursus faucibus egestas rutrum mauris vulputate consequat anteCursus faucibus egestas rutrum mauris vulputate consequat anteCursus faucibus egestas rutrum mauris vulputate consequat anteCursus faucibus egestas rutrum mauris vulputate consequat anteCursus faucibus egestas rutrum mauris vulputate consequat ante'),
(3105, 602, 'toursdaythress', 'Cursus faucibus egestas rutrum mauris vulputate consequat anteCursus faucibus egestas rutrum mauris vulputate consequat anteCursus faucibus egestas rutrum mauris vulputate consequat anteCursus faucibus egestas rutrum mauris vulputate consequat anteCursus faucibus egestas rutrum mauris vulputate consequat anteCursus faucibus egestas rutrum mauris vulputate consequat anteCursus faucibus egestas rutrum mauris vulputate consequat anteCursus faucibus egestas rutrum mauris vulputate consequat ante'),
(3106, 602, 'toursdayfour', 'Cursus faucibus egestas rutrum mauris vulputate consequat anteCursus faucibus egestas rutrum mauris vulputate consequat anteCursus faucibus egestas rutrum mauris vulputate consequat anteCursus faucibus egestas rutrum mauris vulputate consequat anteCursus faucibus egestas rutrum mauris vulputate consequat anteCursus faucibus egestas rutrum mauris vulputate consequat anteCursus faucibus egestas rutrum mauris vulputate consequat anteCursus faucibus egestas rutrum mauris vulputate consequat anteCursus faucibus egestas rutrum mauris vulputate consequat anteCursus faucibus egestas rutrum mauris vulputate consequat anteCursus faucibus egestas rutrum mauris vulputate consequat anteCursus faucibus egestas rutrum mauris vulputate consequat anteCursus faucibus egestas rutrum mauris vulputate consequat ante'),
(3107, 379, 'hotelcheckin', '05/25/2019'),
(3108, 378, 'hotelcheckin', '05/25/2019'),
(3109, 380, 'hotelcheckin', '05/25/2019'),
(3110, 604, '_wp_attached_file', '2019/04/o-RUSSIA-VIRTUALPRIDE-facebook-263x197.jpg'),
(3111, 604, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:263;s:6:\"height\";i:197;s:4:\"file\";s:50:\"2019/04/o-RUSSIA-VIRTUALPRIDE-facebook-263x197.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"o-RUSSIA-VIRTUALPRIDE-facebook-263x197-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(3112, 196, 'umrahpolicies', '28 Days Umrah Silver-Package28 Days Umrah Silver-Package28 Days Umrah Silver-Package28 Days Umrah Silver-Package28 Days Umrah Silver-Package28 Days Umrah Silver-Package28 Days Umrah Silver-Package28 Days Umrah Silver-Package28 Days Umrah Silver-Package28 Days Umrah Silver-Package28 Days Umrah Silver-Package28 Days Umrah Silver-Package28 Days Umrah Silver-Package28 Days Umrah Silver-Package28 Days Umrah Silver-Package28 Days Umrah Silver-Package28 Days Umrah Silver-Package28 Days Umrah Silver-Package28 Days Umrah Silver-Package28 Days Umrah Silver-Package28 Days Umrah Silver-Package'),
(3113, 196, 'umrahfacilites', '28 Days Umrah Silver-Package28 Days Umrah Silver-Package28 Days Umrah Silver-Package28 Days Umrah Silver-Package28 Days Umrah Silver-Package28 Days Umrah Silver-Package28 Days Umrah Silver-Package28 Days Umrah Silver-Package28 Days Umrah Silver-Package28 Days Umrah Silver-Package28 Days Umrah Silver-Package28 Days Umrah Silver-Package28 Days Umrah Silver-Package28 Days Umrah Silver-Package28 Days Umrah Silver-Package28 Days Umrah Silver-Package28 Days Umrah Silver-Package28 Days Umrah Silver-Package28 Days Umrah Silver-Package28 Days Umrah Silver-Package28 Days Umrah Silver-Package28 Days Umrah Silver-Package28 Days Umrah Silver-Package28 Days Umrah Silver-Package28 Days Umrah Silver-Package28 Days Umrah Silver-Package'),
(3124, 607, '_menu_item_type', 'custom'),
(3125, 607, '_menu_item_menu_item_parent', '34'),
(3126, 607, '_menu_item_object_id', '607'),
(3127, 607, '_menu_item_object', 'custom'),
(3128, 607, '_menu_item_target', ''),
(3129, 607, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(3130, 607, '_menu_item_xfn', ''),
(3131, 607, '_menu_item_url', '#'),
(3133, 608, '_menu_item_type', 'custom'),
(3134, 608, '_menu_item_menu_item_parent', '34'),
(3135, 608, '_menu_item_object_id', '608'),
(3136, 608, '_menu_item_object', 'custom'),
(3137, 608, '_menu_item_target', ''),
(3138, 608, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(3139, 608, '_menu_item_xfn', ''),
(3140, 608, '_menu_item_url', '#'),
(3151, 610, '_menu_item_type', 'custom'),
(3152, 610, '_menu_item_menu_item_parent', '34'),
(3153, 610, '_menu_item_object_id', '610'),
(3154, 610, '_menu_item_object', 'custom'),
(3155, 610, '_menu_item_target', ''),
(3156, 610, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(3157, 610, '_menu_item_xfn', ''),
(3158, 610, '_menu_item_url', '#'),
(3163, 611, '_edit_lock', '1559412478:1'),
(3165, 614, '_edit_lock', '1558867788:1'),
(3166, 614, '_edit_last', '2'),
(3167, 614, 'agentname', 'test agent'),
(3168, 614, 'makkahstay', '2 days'),
(3169, 614, 'madinahstay', '3 days'),
(3170, 614, 'makkahhotelhame', 'test makkah hotel'),
(3171, 614, 'Makkahoteldistance', '1 km'),
(3172, 614, 'madinahhotelname', 'test madinah hotel'),
(3173, 614, 'madinahhoteldistance', '2 km'),
(3174, 614, 'locationcheckins', '05/30/2019'),
(3175, 614, 'locationcheckout', '06/30/2019'),
(3176, 614, 'umrahroom', '10'),
(3177, 614, 'umrahparson', '20'),
(3178, 614, 'umrahdouble', '1,000.00'),
(3179, 614, 'umrahtriplebed', '1,100.00'),
(3180, 614, 'umrahfourbed', '1,200.00'),
(3181, 614, 'umrahsharing', '500.00'),
(3182, 614, 'umrahpolicies', 'policy texts'),
(3183, 614, 'umrahfacilites', 'facilities texts'),
(3184, 615, 'assigned_to', '614'),
(3185, 615, 'author', ''),
(3186, 615, 'avatar', 'https://secure.gravatar.com/avatar/?s=96&d=mm&r=g'),
(3187, 615, 'content', '4 star'),
(3188, 615, 'custom', 'a:0:{}'),
(3189, 615, 'date', '2019-05-26 10:14:28'),
(3190, 615, 'email', ''),
(3191, 615, 'ip_address', '45.251.228.217'),
(3192, 615, 'pinned', ''),
(3193, 615, 'rating', '4'),
(3194, 615, 'response', ''),
(3195, 615, 'review_id', 'ba0e6727ff3ac048b55dfaba52657cbd'),
(3196, 615, 'review_type', 'local'),
(3197, 615, 'title', ''),
(3198, 615, 'url', ''),
(3199, 614, '_glsr_count', 'a:1:{s:5:\"local\";a:6:{i:0;i:0;i:1;i:0;i:2;i:2;i:3;i:0;i:4;i:1;i:5;i:0;}}'),
(3200, 614, '_glsr_average', '2.7'),
(3201, 614, '_glsr_ranking', '3.3153846153846'),
(3202, 616, 'assigned_to', '614'),
(3203, 616, 'author', ''),
(3204, 616, 'avatar', 'https://secure.gravatar.com/avatar/?s=96&d=mm&r=g'),
(3205, 616, 'content', '2 star'),
(3206, 616, 'custom', 'a:0:{}'),
(3207, 616, 'date', '2019-05-26 10:14:42'),
(3208, 616, 'email', ''),
(3209, 616, 'ip_address', '45.251.228.217'),
(3210, 616, 'pinned', ''),
(3211, 616, 'rating', '2'),
(3212, 616, 'response', ''),
(3213, 616, 'review_id', '721a0f8552b4fd7fa2a3884efcaae4a3'),
(3214, 616, 'review_type', 'local'),
(3215, 616, 'title', ''),
(3216, 616, 'url', ''),
(3217, 617, 'assigned_to', '614'),
(3218, 617, 'author', ''),
(3219, 617, 'avatar', 'https://secure.gravatar.com/avatar/?s=96&d=mm&r=g'),
(3220, 617, 'content', '2 star'),
(3221, 617, 'custom', 'a:0:{}'),
(3222, 617, 'date', '2019-05-27 04:06:12'),
(3223, 617, 'email', ''),
(3224, 617, 'ip_address', '58.84.34.233'),
(3225, 617, 'pinned', ''),
(3226, 617, 'rating', '2'),
(3227, 617, 'response', ''),
(3228, 617, 'review_id', '27a7cc1c4e09c1ad311947b66dbc2e7c'),
(3229, 617, 'review_type', 'local'),
(3230, 617, 'title', ''),
(3231, 617, 'url', ''),
(3232, 623, '_edit_lock', '1559246995:1'),
(3233, 623, '_wp_page_template', 'hajj.php'),
(3234, 625, '_edit_lock', '1559247024:1'),
(3235, 625, '_wp_page_template', 'restaurant.php'),
(3237, 628, '_menu_item_type', 'post_type'),
(3238, 628, '_menu_item_menu_item_parent', '34'),
(3239, 628, '_menu_item_object_id', '625'),
(3240, 628, '_menu_item_object', 'page'),
(3241, 628, '_menu_item_target', ''),
(3242, 628, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(3243, 628, '_menu_item_xfn', ''),
(3244, 628, '_menu_item_url', ''),
(3246, 629, '_menu_item_type', 'post_type'),
(3247, 629, '_menu_item_menu_item_parent', '34'),
(3248, 629, '_menu_item_object_id', '623'),
(3249, 629, '_menu_item_object', 'page'),
(3250, 629, '_menu_item_target', ''),
(3251, 629, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(3252, 629, '_menu_item_xfn', ''),
(3253, 629, '_menu_item_url', ''),
(3255, 630, '_edit_lock', '1559247236:1'),
(3256, 630, '_edit_last', '1'),
(3257, 631, '_wp_attached_file', '2019/05/star-kabab-restaurant.jpg'),
(3258, 631, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:550;s:6:\"height\";i:322;s:4:\"file\";s:33:\"2019/05/star-kabab-restaurant.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"star-kabab-restaurant-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"star-kabab-restaurant-300x176.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:176;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(3259, 630, '_thumbnail_id', '631'),
(3260, 630, 'restaurantphone', '+880 1511-932681'),
(3261, 630, 'restaurantemail', 'info@gmail.com'),
(3262, 630, 'restaurantaddress', 'Banani, Dhaka City 1213, Bangladesh'),
(3263, 630, 'restaurantopentime', '1559206800'),
(3264, 630, 'restaurantclosetime', '1559250000'),
(3265, 632, '_edit_lock', '1559247513:1'),
(3266, 632, '_edit_last', '1'),
(3267, 633, '_wp_attached_file', '2019/05/1494489629-hajjpackages-image.jpg'),
(3268, 633, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2480;s:6:\"height\";i:3507;s:4:\"file\";s:41:\"2019/05/1494489629-hajjpackages-image.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"1494489629-hajjpackages-image-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"1494489629-hajjpackages-image-212x300.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:42:\"1494489629-hajjpackages-image-768x1086.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1086;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:42:\"1494489629-hajjpackages-image-724x1024.jpg\";s:5:\"width\";i:724;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:11:\"Matee Ullah\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(3269, 632, '_thumbnail_id', '633'),
(3280, 650, '_edit_lock', '1560529241:1'),
(3282, 650, '_edit_last', '1'),
(3302, 663, '_edit_lock', '1560529233:1'),
(3316, 684, '_wp_types_group_fields', ',hotel_gallery_1,hotel_gallery_2,hotel_gallery_3,hotel_gallery_4,hotel_gallery_5,hotel_gallery_6,'),
(3350, 685, '_wp_types_group_fields', ',main_hotel_image,check_in,check_out,hotel_location,hotel_email,hotel_phone_no,hotel_price,hotel_website,cancelled_prepayment,children_and_extrabed,hotel_pets,'),
(3352, 685, '_toolset_edit_last', '1560700504'),
(3354, 688, '_edit_lock', '1560787040:1'),
(3355, 688, '_edit_last', '1'),
(3356, 689, '_wp_attached_file', '2019/06/242-150x150.jpg'),
(3357, 689, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:150;s:4:\"file\";s:23:\"2019/06/242-150x150.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(3358, 688, '_thumbnail_id', '689'),
(3364, 699, '_edit_lock', '1562253794:1'),
(3365, 699, '_wp_page_template', 'main-hotel-search-template.php'),
(3366, 702, '_edit_lock', '1562267286:1'),
(3367, 702, '_wp_page_template', 'hotel-details-template.php'),
(3368, 702, '_edit_last', '1'),
(3393, 699, '_edit_last', '1'),
(3394, 19, '_edit_last', '1'),
(3395, 19, '_wp_page_template', 'default'),
(3396, 713, '_edit_lock', '1562253202:1'),
(3397, 713, '_wp_page_template', 'hotel-booking-form-template.php'),
(3401, 713, '_edit_last', '1'),
(3403, 716, '_edit_lock', '1562253653:1'),
(3404, 716, '_wp_page_template', 'room-details-template.php'),
(3405, 716, '_edit_last', '1'),
(3427, 725, '_edit_lock', '1562607941:1'),
(3428, 725, '_wp_page_template', 'car-details-template.php'),
(3429, 725, '_edit_last', '1'),
(3430, 727, '_edit_lock', '1571205448:1'),
(3431, 727, '_wp_page_template', 'car-search-template.php'),
(3432, 729, '_edit_lock', '1562610513:1'),
(3433, 729, '_wp_page_template', 'car-booking-form-template.php'),
(3434, 729, '_edit_last', '1'),
(3435, 727, '_edit_last', '1'),
(3436, 732, '_edit_lock', '1562696155:1'),
(3437, 732, '_wp_page_template', 'paypal-payment-status.php'),
(3438, 732, '_edit_last', '1'),
(3439, 735, '_edit_lock', '1562955671:1'),
(3440, 735, '_wp_page_template', 'tour-result-template.php'),
(3456, 735, '_edit_last', '1'),
(3457, 737, '_edit_lock', '1562957100:1'),
(3458, 737, '_wp_page_template', 'tour-details-template.php'),
(3459, 737, '_edit_last', '1'),
(3484, 742, '_edit_lock', '1563299856:1'),
(3485, 742, '_wp_page_template', 'tour-booking-form-template.php'),
(3486, 742, '_edit_last', '1'),
(3487, 745, '_edit_lock', '1564430057:1'),
(3488, 745, '_wp_page_template', 'activity-details-template.php'),
(3489, 747, '_edit_lock', '1564430097:1'),
(3490, 747, '_wp_page_template', 'activity-result-template.php'),
(3491, 749, '_edit_lock', '1564430130:1'),
(3492, 749, '_wp_page_template', 'activity-booking-form-template.php'),
(3493, 751, '_edit_lock', '1564430745:1'),
(3494, 751, '_wp_page_template', 'car-details-template.php'),
(3495, 753, '_edit_lock', '1564430184:1'),
(3496, 753, '_wp_page_template', 'car-search-template.php'),
(3497, 755, '_edit_lock', '1564430211:1'),
(3498, 755, '_wp_page_template', 'car-booking-form-template.php'),
(3499, 757, '_edit_lock', '1564430259:1'),
(3500, 757, '_wp_page_template', 'guide-details-template.php'),
(3501, 760, '_edit_lock', '1564430292:1'),
(3502, 760, '_wp_page_template', 'guide-result-template.php'),
(3503, 762, '_edit_lock', '1564430318:1'),
(3504, 762, '_wp_page_template', 'guide-booking-form-template.php'),
(3505, 764, '_edit_lock', '1564430354:1'),
(3506, 764, '_wp_page_template', 'transport-result-template.php'),
(3507, 766, '_edit_lock', '1564430374:1'),
(3508, 766, '_wp_page_template', 'transport-details-template.php'),
(3509, 768, '_edit_lock', '1564430391:1'),
(3510, 768, '_wp_page_template', 'transport-booking-form-template.php'),
(3511, 770, '_edit_lock', '1564430418:1'),
(3512, 770, '_wp_page_template', 'restaurant-result-template.php'),
(3513, 772, '_edit_lock', '1564430441:1'),
(3514, 772, '_wp_page_template', 'restaurant-details-template.php'),
(3515, 774, '_edit_lock', '1564430494:1'),
(3516, 774, '_wp_page_template', 'transport-booking-form-template.php'),
(3517, 524, '_edit_last', '1'),
(3518, 524, '_wp_page_template', 'default'),
(3519, 524, '_edit_lock', '1567089765:1'),
(3520, 781, '_edit_lock', '1568181058:3'),
(3521, 781, '_edit_last', '3'),
(3523, 785, '_wp_attached_file', '2019/09/kissclipart-line-art-clipart-logo-intel-brand-2b3657f114ee05b4.jpg'),
(3524, 785, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:440;s:4:\"file\";s:74:\"2019/09/kissclipart-line-art-clipart-logo-intel-brand-2b3657f114ee05b4.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:74:\"kissclipart-line-art-clipart-logo-intel-brand-2b3657f114ee05b4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:74:\"kissclipart-line-art-clipart-logo-intel-brand-2b3657f114ee05b4-300x147.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:147;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:74:\"kissclipart-line-art-clipart-logo-intel-brand-2b3657f114ee05b4-768x375.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(3527, 382, '_edit_lock', '1571205485:1'),
(3529, 532, 'notifications', 'a:0:{}'),
(3530, 532, 'integrations', 'a:0:{}'),
(3531, 792, '_edit_lock', '1572102627:2'),
(3532, 792, '_edit_last', '2'),
(3533, 792, '_wpuf_form_id', ''),
(3534, 792, '_wpuf_res_display', 'all'),
(3535, 792, 'locationcheckins', '10/26/2019'),
(3536, 792, 'locationcheckout', '10/31/2019'),
(3537, 792, 'umrahroom', '3'),
(3538, 792, 'umrahparson', '6'),
(3539, 792, 'umrahdouble', '100.00'),
(3540, 792, 'umrahtriplebed', '200.00'),
(3541, 792, 'umrahfourbed', '400.00'),
(3542, 792, 'umrahsharing', '50.00');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-02-19 05:37:27', '2019-02-19 05:37:27', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2019-02-19 05:37:27', '2019-02-19 05:37:27', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?p=1', 0, 'post', '', 1),
(2, 1, '2019-02-19 05:37:27', '2019-02-19 05:37:27', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"https://technovicinity.com/development/wordpress/milon/travel/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-02-19 05:37:27', '2019-02-19 05:37:27', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?page_id=2', 0, 'page', '', 0),
(9, 1, '2019-02-19 09:11:24', '2019-02-19 09:11:24', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-02-19 09:11:24', '2019-02-19 09:11:24', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?page_id=9', 0, 'page', '', 0),
(10, 1, '2019-02-19 09:11:24', '2019-02-19 09:11:24', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-02-19 09:11:24', '2019-02-19 09:11:24', '', 9, 'https://technovicinity.com/development/wordpress/milon/travel/2019/02/19/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2019-02-19 09:11:48', '2019-02-19 09:11:48', '', 'Projects', '', 'publish', 'closed', 'closed', '', 'projects', '', '', '2019-02-19 09:11:48', '2019-02-19 09:11:48', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?page_id=11', 0, 'page', '', 0),
(12, 1, '2019-02-19 09:11:48', '2019-02-19 09:11:48', '', 'Projects', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-02-19 09:11:48', '2019-02-19 09:11:48', '', 11, 'https://technovicinity.com/development/wordpress/milon/travel/2019/02/19/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2019-02-19 09:12:05', '2019-02-19 09:12:05', '[weforms id=\"538\"]', 'Activities', '', 'publish', 'closed', 'closed', '', 'activities', '', '', '2019-05-22 06:16:25', '2019-05-22 06:16:25', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?page_id=13', 0, 'page', '', 0),
(14, 1, '2019-02-19 09:12:05', '2019-02-19 09:12:05', '', 'Activities', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-02-19 09:12:05', '2019-02-19 09:12:05', '', 13, 'https://technovicinity.com/development/wordpress/milon/travel/2019/02/19/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2019-02-19 09:12:24', '2019-02-19 09:12:24', '', 'Total Jobs', '', 'publish', 'closed', 'closed', '', 'total-jobs', '', '', '2019-02-19 09:12:24', '2019-02-19 09:12:24', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?page_id=15', 0, 'page', '', 0),
(16, 1, '2019-02-19 09:12:24', '2019-02-19 09:12:24', '', 'Total Jobs', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-02-19 09:12:24', '2019-02-19 09:12:24', '', 15, 'https://technovicinity.com/development/wordpress/milon/travel/2019/02/19/15-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2019-02-19 09:13:15', '2019-02-19 09:13:15', '', 'List Of Hotels', '', 'publish', 'closed', 'closed', '', 'list-of-hotels', '', '', '2019-06-28 15:21:59', '2019-06-28 15:21:59', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?page_id=19', 0, 'page', '', 0),
(20, 1, '2019-02-19 09:13:15', '2019-02-19 09:13:15', '', 'Hotels', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2019-02-19 09:13:15', '2019-02-19 09:13:15', '', 19, 'https://technovicinity.com/development/wordpress/milon/travel/2019/02/19/19-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2019-02-19 09:13:33', '2019-02-19 09:13:33', '', 'Sub Item', '', 'publish', 'closed', 'closed', '', 'sub-item', '', '', '2019-02-19 09:13:33', '2019-02-19 09:13:33', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?page_id=21', 0, 'page', '', 0),
(22, 1, '2019-02-19 09:13:33', '2019-02-19 09:13:33', '', 'Sub Item', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2019-02-19 09:13:33', '2019-02-19 09:13:33', '', 21, 'https://technovicinity.com/development/wordpress/milon/travel/2019/02/19/21-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2019-02-19 09:13:51', '2019-02-19 09:13:51', '', 'Sub Item1', '', 'publish', 'closed', 'closed', '', 'sub-item1', '', '', '2019-02-19 09:13:51', '2019-02-19 09:13:51', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?page_id=23', 0, 'page', '', 0),
(24, 1, '2019-02-19 09:13:51', '2019-02-19 09:13:51', '', 'Sub Item1', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2019-02-19 09:13:51', '2019-02-19 09:13:51', '', 23, 'https://technovicinity.com/development/wordpress/milon/travel/2019/02/19/23-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2019-02-19 09:14:09', '2019-02-19 09:14:09', '', 'Sub Item2', '', 'publish', 'closed', 'closed', '', 'sub-item2', '', '', '2019-02-19 09:14:09', '2019-02-19 09:14:09', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?page_id=25', 0, 'page', '', 0),
(26, 1, '2019-02-19 09:14:09', '2019-02-19 09:14:09', '', 'Sub Item2', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2019-02-19 09:14:09', '2019-02-19 09:14:09', '', 25, 'https://technovicinity.com/development/wordpress/milon/travel/2019/02/19/25-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2019-02-19 09:15:35', '2019-02-19 09:15:35', '', 'Packages', '', 'publish', 'closed', 'closed', '', '34', '', '', '2019-05-30 20:13:49', '2019-05-30 20:13:49', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?p=34', 2, 'nav_menu_item', '', 0),
(35, 1, '2019-02-19 09:15:34', '2019-02-19 09:15:34', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2019-05-30 20:13:49', '2019-05-30 20:13:49', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?p=35', 1, 'nav_menu_item', '', 0),
(37, 1, '2019-02-19 11:30:27', '2019-02-19 11:30:27', '', 'logo-white', '', 'inherit', 'open', 'closed', '', 'logo-white', '', '', '2019-02-19 11:30:27', '2019-02-19 11:30:27', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/wp-content/uploads/2019/02/logo-white.png', 0, 'attachment', 'image/png', 0),
(50, 1, '2019-02-20 07:45:12', '2019-02-20 07:45:12', '', 'rental.search', '', 'publish', 'closed', 'closed', '', 'rental-search', '', '', '2019-02-20 07:45:12', '2019-02-20 07:45:12', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?page_id=50', 0, 'page', '', 0),
(51, 1, '2019-02-20 07:45:12', '2019-02-20 07:45:12', '', 'rental.search', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2019-02-20 07:45:12', '2019-02-20 07:45:12', '', 50, 'https://technovicinity.com/development/wordpress/milon/travel/2019/02/20/50-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2019-02-20 07:45:43', '2019-02-20 07:45:43', '', 'rental.search-result', '', 'publish', 'closed', 'closed', '', 'rental-search-result', '', '', '2019-02-20 07:45:43', '2019-02-20 07:45:43', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?page_id=52', 0, 'page', '', 0),
(53, 1, '2019-02-20 07:45:43', '2019-02-20 07:45:43', '', 'rental.search-result', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2019-02-20 07:45:43', '2019-02-20 07:45:43', '', 52, 'https://technovicinity.com/development/wordpress/milon/travel/2019/02/20/52-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2019-02-20 07:46:06', '2019-02-20 07:46:06', '', 'rental-map', '', 'publish', 'closed', 'closed', '', 'rental-map', '', '', '2019-02-20 07:46:06', '2019-02-20 07:46:06', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?page_id=54', 0, 'page', '', 0),
(55, 1, '2019-02-20 07:46:06', '2019-02-20 07:46:06', '', 'rental-map', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2019-02-20 07:46:06', '2019-02-20 07:46:06', '', 54, 'https://technovicinity.com/development/wordpress/milon/travel/2019/02/20/54-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2019-02-20 07:47:38', '2019-02-20 07:47:38', '<!-- wp:paragraph -->\n<p> <br>[booking_package id=5]<br></p>\n<!-- /wp:paragraph -->', 'book-now', '', 'publish', 'closed', 'closed', '', 'book-now', '', '', '2019-05-19 08:35:58', '2019-05-19 08:35:58', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?page_id=62', 0, 'page', '', 0),
(63, 1, '2019-02-20 07:47:38', '2019-02-20 07:47:38', '', 'book-now', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2019-02-20 07:47:38', '2019-02-20 07:47:38', '', 62, 'https://technovicinity.com/development/wordpress/milon/travel/2019/02/20/62-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2019-02-20 07:48:01', '2019-02-20 07:48:01', '', 'hajj-package', '', 'publish', 'closed', 'closed', '', 'hajj-package', '', '', '2019-02-20 07:48:01', '2019-02-20 07:48:01', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?page_id=64', 0, 'page', '', 0),
(65, 1, '2019-02-20 07:48:01', '2019-02-20 07:48:01', '', 'hajj-package', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2019-02-20 07:48:01', '2019-02-20 07:48:01', '', 64, 'https://technovicinity.com/development/wordpress/milon/travel/2019/02/20/64-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2019-02-20 07:51:00', '2019-02-20 07:51:00', '', 'search', '', 'publish', 'closed', 'closed', '', 'search', '', '', '2019-02-20 07:51:00', '2019-02-20 07:51:00', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?page_id=74', 0, 'page', '', 0),
(75, 1, '2019-02-20 07:51:00', '2019-02-20 07:51:00', '', 'search', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2019-02-20 07:51:00', '2019-02-20 07:51:00', '', 74, 'https://technovicinity.com/development/wordpress/milon/travel/2019/02/20/74-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2019-02-20 07:51:15', '2019-02-20 07:51:15', '', 'sign-up', '', 'publish', 'closed', 'closed', '', 'sign-up', '', '', '2019-02-20 07:51:15', '2019-02-20 07:51:15', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?page_id=76', 0, 'page', '', 0),
(77, 1, '2019-02-20 07:51:15', '2019-02-20 07:51:15', '', 'sign-up', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2019-02-20 07:51:15', '2019-02-20 07:51:15', '', 76, 'https://technovicinity.com/development/wordpress/milon/travel/2019/02/20/76-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2019-02-20 07:52:17', '2019-02-20 07:52:17', '', 'umrah-package', '', 'publish', 'closed', 'closed', '', 'umrah-package', '', '', '2019-02-20 07:52:17', '2019-02-20 07:52:17', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?page_id=82', 0, 'page', '', 0),
(83, 1, '2019-02-20 07:52:17', '2019-02-20 07:52:17', '', 'umrah-package', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2019-02-20 07:52:17', '2019-02-20 07:52:17', '', 82, 'https://technovicinity.com/development/wordpress/milon/travel/2019/02/20/82-revision-v1/', 0, 'revision', '', 0),
(150, 1, '2019-02-23 04:59:00', '2019-02-23 04:59:00', '', '30', '', 'inherit', 'open', 'closed', '', '30-2', '', '', '2019-02-23 04:59:00', '2019-02-23 04:59:00', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/wp-content/uploads/2019/02/30.jpg', 0, 'attachment', 'image/jpeg', 0),
(151, 1, '2019-02-23 05:00:25', '2019-02-23 05:00:25', '', 'thumb', '', 'inherit', 'open', 'closed', '', 'thumb', '', '', '2019-02-23 05:00:25', '2019-02-23 05:00:25', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/wp-content/uploads/2019/02/thumb.jpg', 0, 'attachment', 'image/jpeg', 0),
(169, 1, '2019-02-23 08:24:33', '2019-02-23 08:24:33', 'ytryrtyrty', 'tryrtyrty', '', 'publish', 'open', 'closed', '', 'tryrtyrty', '', '', '2019-02-23 08:24:33', '2019-02-23 08:24:33', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?post_type=movies&#038;p=169', 0, 'movies', '', 0),
(170, 1, '2019-02-23 08:24:33', '2019-02-23 08:24:33', 'ytryrtyrty', 'tryrtyrty', '', 'inherit', 'closed', 'closed', '', '169-revision-v1', '', '', '2019-02-23 08:24:33', '2019-02-23 08:24:33', '', 169, 'https://technovicinity.com/development/wordpress/milon/travel/archives/170', 0, 'revision', '', 0),
(176, 1, '2019-02-23 17:29:42', '2019-02-23 17:29:42', '', 'thumb_1537856321-package-image', '', 'inherit', 'open', 'closed', '', 'thumb_1537856321-package-image', '', '', '2019-03-01 19:38:52', '2019-03-01 19:38:52', '', 0, 'http://localhost:8080/project19/wp-content/uploads/2019/02/thumb_1537856321-package-image.jpg', 0, 'attachment', 'image/jpeg', 0),
(177, 1, '2019-02-23 17:50:02', '2019-02-23 17:50:02', '', 'thumb', '', 'inherit', 'open', 'closed', '', 'thumb-2', '', '', '2019-02-23 17:50:02', '2019-02-23 17:50:02', '', 0, 'http://localhost:8080/project19/wp-content/uploads/2019/02/thumb.jpg', 0, 'attachment', 'image/jpeg', 0),
(186, 1, '2019-02-27 06:05:34', '2019-02-27 06:05:34', '', 'umrah-result', '', 'publish', 'closed', 'closed', '', 'umrah-result', '', '', '2019-02-27 06:06:06', '2019-02-27 06:06:06', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?page_id=186', 0, 'page', '', 0),
(187, 1, '2019-02-27 06:05:34', '2019-02-27 06:05:34', '', 'umrah-result', '', 'inherit', 'closed', 'closed', '', '186-revision-v1', '', '', '2019-02-27 06:05:34', '2019-02-27 06:05:34', '', 186, 'https://technovicinity.com/development/wordpress/milon/travel/archives/187', 0, 'revision', '', 0),
(196, 1, '2019-02-27 12:01:21', '2019-02-27 12:01:21', '28 Days Umrah Silver-Package28 Days Umrah Silver-Package28 Days Umrah Silver-Package28 Days Umrah Silver-Package28 Days Umrah Silver-Package28 Days Umrah Silver-Package28 Days Umrah Silver-Package28 Days Umrah Silver-Package', '28 Days Umrah Silver-Package', '', 'publish', 'open', 'closed', '', '28-days-umrah-silver-package', '', '', '2019-05-25 04:31:05', '2019-05-25 04:31:05', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?post_type=umrah&#038;p=196', 0, 'umrah', '', 0),
(197, 1, '2019-03-01 18:35:33', '2019-03-01 18:35:33', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2019-03-01 18:35:33', '2019-03-01 18:35:33', '', 0, 'http://localhost:8080/project19/shop', 0, 'page', '', 0),
(198, 1, '2019-03-01 18:35:33', '2019-03-01 18:35:33', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2019-03-03 09:02:57', '2019-03-03 09:02:57', '', 0, 'http://localhost:8080/project19/cart', 0, 'page', '', 0),
(200, 1, '2019-03-01 18:35:33', '2019-03-01 18:35:33', '[woocommerce_my_account]', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2019-03-01 18:35:33', '2019-03-01 18:35:33', '', 0, 'http://localhost:8080/project19/my-account', 0, 'page', '', 0),
(251, 1, '2019-03-02 10:37:24', '2019-03-02 10:37:24', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]\nprojct new development \"[your-subject]\"\n[your-name] <admin@gmail.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on projct new development (http://localhost/project)\nadmin@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nprojct new development \"[your-subject]\"\nprojct new development <admin@gmail.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on projct new development (http://localhost/project)\n[your-email]\nReply-To: admin@gmail.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2019-03-02 10:37:24', '2019-03-02 10:37:24', '', 0, '', 0, 'wpcf7_contact_form', '', 0),
(252, 1, '2019-03-02 10:37:41', '2019-03-02 10:37:41', '', 'Media', '', 'private', 'closed', 'closed', '', 'media', '', '', '2019-03-02 10:37:41', '2019-03-02 10:37:41', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?option-tree=media', 0, 'option-tree', '', 0),
(264, 1, '2019-03-02 17:34:50', '2019-03-02 17:34:50', 'get all golobal', 'global test', '', 'publish', 'open', 'closed', '', 'global-test', '', '', '2019-03-28 19:10:16', '2019-03-28 19:10:16', '', 0, 'http://localhost:8080/project19/?post_type=product&#038;p=264', 125, 'product', '', 0),
(267, 1, '2019-03-02 18:56:25', '2019-03-02 18:56:25', '<!-- wp:paragraph -->\r\n<p><br />Hi, Amit here, I am the WPML Support Manager, our current ticket queue is quite calm and I\'d like to encourage you to use our new <strong>chat support</strong> option --&gt; Please do not open multiple tickets for the same issue, it adds unneeded load to our queue and ends up in longer waiting time for you <a href=\"http://localhost:8080/project19/projects#\">F</a></p>\r\n<!-- /wp:paragraph -->', '7 Days Star Umrah Package-03', '<p><span class=\"st\">My permalink structure <em>might</em> be the cause - but basically i have a formidable form creating a new post ( custom ... [Closed] Catchable <em>fatal error</em>: <em>Object</em> of <em>class WP_Error could not</em> be <em>converted</em> to <em>string</em> ... With <em>WordPress</em> 3.5.1, edit <em>wp</em>-<wbr />includes/formatting.php and in line 509 add this: ... Skip to main <em>content</em>.</span></p>', 'publish', 'open', 'closed', '', '7-days-star-umrah-package-03', '', '', '2019-03-28 18:49:00', '2019-03-28 18:49:00', '', 0, 'http://localhost:8080/project19/?post_type=product&#038;p=267', 8, 'product', '', 1),
(274, 1, '2019-03-02 19:16:37', '2019-03-02 19:16:37', '', '123456', 'Check this box if the coupon grants free shipping. A free shipping method must be enabled in your shipping zone and be set to require \"a valid free shipping coupon', 'publish', 'closed', 'closed', '', '123456', '', '', '2019-03-02 19:17:18', '2019-03-02 19:17:18', '', 0, 'http://localhost:8080/project19/?post_type=shop_coupon&#038;p=274', 0, 'shop_coupon', '', 0),
(283, 1, '2019-03-03 09:02:57', '2019-03-03 09:02:57', '[woocommerce_cart]', 'Cart', '', 'inherit', 'closed', 'closed', '', '198-revision-v1', '', '', '2019-03-03 09:02:57', '2019-03-03 09:02:57', '', 198, 'https://technovicinity.com/development/wordpress/milon/travel/archives/283', 0, 'revision', '', 0),
(290, 1, '2019-03-03 11:06:37', '2019-03-03 11:06:37', '<!-- wp:paragraph -->\n<p> [woocommerce_checkout] </p>\n<!-- /wp:paragraph -->', 'checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2019-03-03 11:09:14', '2019-03-03 11:09:14', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?page_id=290', 0, 'page', '', 0),
(291, 1, '2019-03-03 11:06:37', '2019-03-03 11:06:37', '', 'checkout', '', 'inherit', 'closed', 'closed', '', '290-revision-v1', '', '', '2019-03-03 11:06:37', '2019-03-03 11:06:37', '', 290, 'https://technovicinity.com/development/wordpress/milon/travel/archives/291', 0, 'revision', '', 0),
(293, 1, '2019-03-03 11:08:49', '2019-03-03 11:08:49', '<!-- wp:paragraph -->\n<p>\n\n[woocommerce_one_page_checkout]\n\n</p>\n<!-- /wp:paragraph -->', 'checkout', '', 'inherit', 'closed', 'closed', '', '290-revision-v1', '', '', '2019-03-03 11:08:49', '2019-03-03 11:08:49', '', 290, 'https://technovicinity.com/development/wordpress/milon/travel/archives/293', 0, 'revision', '', 0),
(294, 1, '2019-03-03 11:09:14', '2019-03-03 11:09:14', '<!-- wp:paragraph -->\n<p> [woocommerce_checkout] </p>\n<!-- /wp:paragraph -->', 'checkout', '', 'inherit', 'closed', 'closed', '', '290-revision-v1', '', '', '2019-03-03 11:09:14', '2019-03-03 11:09:14', '', 290, 'https://technovicinity.com/development/wordpress/milon/travel/archives/294', 0, 'revision', '', 0),
(306, 1, '2019-03-06 11:23:16', '2019-03-06 11:23:16', '<div class=\"table-responsive\">\r\n<div class=\"disc-info\">\r\n<div class=\"table-responsive\">\r\n<table class=\"table table-bordered\">\r\n<tbody>\r\n<tr>\r\n<th>#</th>\r\n<th>Title</th>\r\n<th>Number (Day)</th>\r\n<th>Price</th>\r\n</tr>\r\n<tr>\r\n<td>1</td>\r\n<td>Package 1</td>\r\n<td>3 – 5</td>\r\n<td>$70,00\r\n<i class=\"fa fa-arrow-right\" style=\"padding: 3px;\"></i>\r\n$60,00</td>\r\n</tr>\r\n<tr>\r\n<td>2</td>\r\n<td>Package 2</td>\r\n<td>6 – 12</td>\r\n<td>$70,00\r\n<i class=\"fa fa-arrow-right\" style=\"padding: 3px;\"></i>\r\n$55,00</td>\r\n</tr>\r\n<tr>\r\n<td>3</td>\r\n<td>Package 3</td>\r\n<td>13 – 20</td>\r\n<td>$70,00\r\n<i class=\"fa fa-arrow-right\" style=\"padding: 3px;\"></i>\r\n$45,00</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</div>', 'Maserati GranTurismo', '', 'publish', 'closed', 'closed', '', 'maserati-granturismo', '', '', '2019-03-25 18:11:31', '2019-03-25 18:11:31', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?post_type=cars&#038;p=306', 0, 'cars', '', 0),
(308, 1, '2019-03-06 05:37:05', '2019-03-06 05:37:05', '<!-- wp:paragraph -->\n<p><code>[wpbs id=\"1\" form=\"1\" legend=\"yes\" </code> start=\'1\' display=\'1\' <code> language=\"auto\"]</code></p>\n<!-- /wp:paragraph -->', 'Bookingwp', '', 'publish', 'closed', 'closed', '', 'bookingwp', '', '', '2019-03-06 08:19:18', '2019-03-06 08:19:18', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?page_id=308', 0, 'page', '', 0),
(309, 1, '2019-03-06 05:37:05', '2019-03-06 05:37:05', '<!-- wp:paragraph -->\n<p>[\'wpbs\']</p>\n<!-- /wp:paragraph -->', 'Bookingwp', '', 'inherit', 'closed', 'closed', '', '308-revision-v1', '', '', '2019-03-06 05:37:05', '2019-03-06 05:37:05', '', 308, 'https://technovicinity.com/development/wordpress/milon/travel/archives/309', 0, 'revision', '', 0),
(310, 1, '2019-03-06 05:39:57', '2019-03-06 05:39:57', '<!-- wp:paragraph -->\n<p>[wpbs]</p>\n<!-- /wp:paragraph -->', 'Bookingwp', '', 'inherit', 'closed', 'closed', '', '308-revision-v1', '', '', '2019-03-06 05:39:57', '2019-03-06 05:39:57', '', 308, 'https://technovicinity.com/development/wordpress/milon/travel/archives/310', 0, 'revision', '', 0),
(311, 1, '2019-03-06 05:41:02', '2019-03-06 05:41:02', '<!-- wp:paragraph -->\n<p>[wpbs id=\'1\' form=\'1\']</p>\n<!-- /wp:paragraph -->', 'Bookingwp', '', 'inherit', 'closed', 'closed', '', '308-revision-v1', '', '', '2019-03-06 05:41:02', '2019-03-06 05:41:02', '', 308, 'https://technovicinity.com/development/wordpress/milon/travel/archives/311', 0, 'revision', '', 0),
(312, 1, '2019-03-06 05:51:53', '2019-03-06 05:51:53', '<!-- wp:paragraph -->\n<p> [wpbs id=\'1\' form=\'1\' title=\'yes\' leged=\'yes\' start=\'1\' display=\'1\' language=\'auto\']</p>\n<!-- /wp:paragraph -->', 'Bookingwp', '', 'inherit', 'closed', 'closed', '', '308-revision-v1', '', '', '2019-03-06 05:51:53', '2019-03-06 05:51:53', '', 308, 'https://technovicinity.com/development/wordpress/milon/travel/archives/312', 0, 'revision', '', 0),
(313, 1, '2019-03-06 06:26:45', '2019-03-06 06:26:45', '<!-- wp:paragraph -->\n<p> [wpbs id=\'1\' form=\'1\' title=\'yes\' leged=\'yes\' start=\'1\' display=\'1\' language=\'auto\']</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link\" href=\"testget\"></a></div>\n<!-- /wp:button -->', 'Bookingwp', '', 'inherit', 'closed', 'closed', '', '308-revision-v1', '', '', '2019-03-06 06:26:45', '2019-03-06 06:26:45', '', 308, 'https://technovicinity.com/development/wordpress/milon/travel/archives/313', 0, 'revision', '', 0),
(314, 1, '2019-03-06 06:32:24', '2019-03-06 06:32:24', '<!-- wp:paragraph -->\n<p> [wpbs id=\'1\' form=\'1\' title=\'yes\' leged=\'yes\' start=\'1\' display=\'1\' language=\'auto\']</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><code>[wpbs id=\"1\" form=\"2\" title=\"yes\" legend=\"yes\" language=\"auto\"]</code></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link\" href=\"testget\"></a></div>\n<!-- /wp:button -->', 'Bookingwp', '', 'inherit', 'closed', 'closed', '', '308-revision-v1', '', '', '2019-03-06 06:32:24', '2019-03-06 06:32:24', '', 308, 'https://technovicinity.com/development/wordpress/milon/travel/archives/314', 0, 'revision', '', 0),
(316, 1, '2019-03-06 06:33:45', '2019-03-06 06:33:45', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><code>[wpbs id=\"1\" form=\"2\" title=\"yes\" legend=\"yes\" </code> start=\'1\' display=\'1\' <code> language=\"auto\"]</code></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link\" href=\"testget\"></a></div>\n<!-- /wp:button -->', 'Bookingwp', '', 'inherit', 'closed', 'closed', '', '308-revision-v1', '', '', '2019-03-06 06:33:45', '2019-03-06 06:33:45', '', 308, 'https://technovicinity.com/development/wordpress/milon/travel/archives/316', 0, 'revision', '', 0),
(317, 1, '2019-03-06 06:34:11', '2019-03-06 06:34:11', '<!-- wp:paragraph -->\n<p><code>[wpbs id=\"1\" form=\"2\" title=\"yes\" legend=\"yes\" </code> start=\'1\' display=\'1\' <code> language=\"auto\"]</code></p>\n<!-- /wp:paragraph -->', 'Bookingwp', '', 'inherit', 'closed', 'closed', '', '308-revision-v1', '', '', '2019-03-06 06:34:11', '2019-03-06 06:34:11', '', 308, 'https://technovicinity.com/development/wordpress/milon/travel/archives/317', 0, 'revision', '', 0),
(318, 1, '2019-03-06 06:34:35', '2019-03-06 06:34:35', '<!-- wp:paragraph -->\n<p><code>[wpbs id=\"1\" form=\"1\" title=\"yes\" legend=\"yes\" </code> start=\'1\' display=\'1\' <code> language=\"auto\"]</code></p>\n<!-- /wp:paragraph -->', 'Bookingwp', '', 'inherit', 'closed', 'closed', '', '308-revision-v1', '', '', '2019-03-06 06:34:35', '2019-03-06 06:34:35', '', 308, 'https://technovicinity.com/development/wordpress/milon/travel/archives/318', 0, 'revision', '', 0),
(319, 1, '2019-03-06 06:35:59', '2019-03-06 06:35:59', '<!-- wp:paragraph -->\n<p><code>[wpbs id=\"1\" form=\"1\" title=\"yes\" legend=\"yes\" </code> start=\'1\' display=\'1\' <code> language=\"auto\"]</code></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">[dopbsp item=search-widget id=1 redirect_id=123]</pre>\n<!-- /wp:preformatted -->', 'Bookingwp', '', 'inherit', 'closed', 'closed', '', '308-revision-v1', '', '', '2019-03-06 06:35:59', '2019-03-06 06:35:59', '', 308, 'https://technovicinity.com/development/wordpress/milon/travel/archives/319', 0, 'revision', '', 0),
(320, 1, '2019-03-06 06:57:29', '2019-03-06 06:57:29', '<!-- wp:paragraph -->\n<p><code>[wpbs id=\"1\" form=\"1\" title=\"yes\" legend=\"yes\" </code> start=\'1\' display=\'1\' <code> language=\"auto\"]</code></p>\n<!-- /wp:paragraph -->', 'Bookingwp', '', 'inherit', 'closed', 'closed', '', '308-revision-v1', '', '', '2019-03-06 06:57:29', '2019-03-06 06:57:29', '', 308, 'https://technovicinity.com/development/wordpress/milon/travel/archives/320', 0, 'revision', '', 0),
(321, 1, '2019-03-06 06:58:02', '2019-03-06 06:58:02', '<!-- wp:paragraph -->\n<p>[wpbs id=\"1\" form=\"1\" title=\"yes\" legend=\"yes\" </code> start=\'1\' display=\'1\' <code> language=\"auto\"]</p>\n<!-- /wp:paragraph -->', 'Bookingwp', '', 'inherit', 'closed', 'closed', '', '308-revision-v1', '', '', '2019-03-06 06:58:02', '2019-03-06 06:58:02', '', 308, 'https://technovicinity.com/development/wordpress/milon/travel/archives/321', 0, 'revision', '', 0),
(322, 1, '2019-03-06 06:58:21', '2019-03-06 06:58:21', '<!-- wp:paragraph -->\n<p><code>[wpbs id=\"1\" form=\"1\" title=\"yes\" legend=\"yes\" </code> start=\'1\' display=\'1\' <code> language=\"auto\"]</code></p>\n<!-- /wp:paragraph -->', 'Bookingwp', '', 'inherit', 'closed', 'closed', '', '308-revision-v1', '', '', '2019-03-06 06:58:21', '2019-03-06 06:58:21', '', 308, 'https://technovicinity.com/development/wordpress/milon/travel/archives/322', 0, 'revision', '', 0),
(323, 1, '2019-03-06 08:19:18', '2019-03-06 08:19:18', '<!-- wp:paragraph -->\n<p><code>[wpbs id=\"1\" form=\"1\" legend=\"yes\" </code> start=\'1\' display=\'1\' <code> language=\"auto\"]</code></p>\n<!-- /wp:paragraph -->', 'Bookingwp', '', 'inherit', 'closed', 'closed', '', '308-revision-v1', '', '', '2019-03-06 08:19:18', '2019-03-06 08:19:18', '', 308, 'https://technovicinity.com/development/wordpress/milon/travel/archives/323', 0, 'revision', '', 0),
(324, 1, '2019-03-06 12:02:59', '2019-03-06 12:02:59', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'simply', '', 'publish', 'closed', 'closed', '', 'test', '', '', '2019-03-28 12:14:45', '2019-03-28 12:14:45', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?post_type=cars&#038;p=324', 0, 'cars', '', 0),
(328, 1, '2019-03-25 18:07:10', '2019-03-25 18:07:10', '', '800x600', '', 'inherit', 'open', 'closed', '', '800x600', '', '', '2019-03-25 18:07:10', '2019-03-25 18:07:10', '', 306, 'http://localhost:8080/project/wp-content/uploads/2019/03/800x600-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(329, 1, '2019-03-25 18:09:31', '2019-03-25 18:09:31', '', 'orea', '', 'inherit', 'open', 'closed', '', 'orea', '', '', '2019-03-25 18:09:31', '2019-03-25 18:09:31', '', 306, 'http://localhost:8080/project/wp-content/uploads/2019/03/orea.jpg', 0, 'attachment', 'image/jpeg', 0),
(330, 1, '2019-03-25 18:16:59', '2019-03-25 18:16:59', '', 'advanced search', '', 'publish', 'closed', 'closed', '', 'advanced-search', '', '', '2019-03-25 18:16:59', '2019-03-25 18:16:59', '', 0, 'http://localhost:8080/project/?page_id=330', 0, 'page', '', 0),
(331, 1, '2019-03-25 18:16:59', '2019-03-25 18:16:59', '', 'advanced search', '', 'inherit', 'closed', 'closed', '', '330-revision-v1', '', '', '2019-03-25 18:16:59', '2019-03-25 18:16:59', '', 330, 'http://localhost:8080/project/archives/331', 0, 'revision', '', 0),
(337, 1, '2019-03-27 19:01:38', '2019-03-27 19:01:38', 'Cursus faucibus egestas rutrum mauris vulputate consequat anteCursus faucibus egestas rutrum mauris vulputate consequat ante', 'Russia', '', 'publish', 'closed', 'closed', '', 'versailles-small-trip', '', '', '2019-05-25 04:14:37', '2019-05-25 04:14:37', '', 0, 'http://localhost:8080/project/?post_type=tours&#038;p=337', 0, 'tours', '', 0),
(338, 1, '2019-03-27 19:01:31', '2019-03-27 19:01:31', '', 'palace-park-versailles-5-800x600', '', 'inherit', 'open', 'closed', '', 'palace-park-versailles-5-800x600', '', '', '2019-03-27 19:01:31', '2019-03-27 19:01:31', '', 337, 'http://localhost:8080/project/wp-content/uploads/2019/03/palace-park-versailles-5-800x600.jpg', 0, 'attachment', 'image/jpeg', 0),
(343, 1, '2019-03-28 12:04:53', '2019-03-28 12:04:53', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'test', '', 'publish', 'closed', 'closed', '', 'test-2', '', '', '2019-03-28 12:05:03', '2019-03-28 12:05:03', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?post_type=cars&#038;p=343', 0, 'cars', '', 0),
(344, 1, '2019-03-28 12:03:10', '2019-03-28 12:03:10', '', 'demo2', '', 'inherit', 'open', 'closed', '', 'demo2', '', '', '2019-03-28 12:03:10', '2019-03-28 12:03:10', '', 343, 'https://technovicinity.com/development/wordpress/milon/travel/wp-content/uploads/2019/03/demo2.png', 0, 'attachment', 'image/png', 0),
(345, 1, '2019-03-28 12:04:47', '2019-03-28 12:04:47', '', '800x600', '', 'inherit', 'open', 'closed', '', '800x600-2', '', '', '2019-03-28 12:04:47', '2019-03-28 12:04:47', '', 343, 'https://technovicinity.com/development/wordpress/milon/travel/wp-content/uploads/2019/03/800x600-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(346, 1, '2019-03-28 12:10:29', '2019-03-28 12:10:29', '', 'br1', '', 'inherit', 'open', 'closed', '', 'br1', '', '', '2019-03-28 12:10:29', '2019-03-28 12:10:29', '', 324, 'https://technovicinity.com/development/wordpress/milon/travel/wp-content/uploads/2019/03/br1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(347, 1, '2019-03-28 12:13:32', '2019-03-28 12:13:32', '', '7478-143x71', '', 'inherit', 'open', 'closed', '', '7478-143x71', '', '', '2019-03-28 12:13:32', '2019-03-28 12:13:32', '', 324, 'https://technovicinity.com/development/wordpress/milon/travel/wp-content/uploads/2019/03/7478-143x71-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(348, 1, '2019-03-28 12:23:11', '2019-03-28 12:23:11', '', '_3', '', 'inherit', 'open', 'closed', '', '_3', '', '', '2019-03-28 12:23:11', '2019-03-28 12:23:11', '', 337, 'https://technovicinity.com/development/wordpress/milon/travel/wp-content/uploads/2019/03/3-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(350, 1, '2019-03-28 19:07:01', '2019-03-28 19:07:01', '<!-- wp:paragraph -->\r\n<p><br />Hi, Amit here, I am the WPML Support Manager, our current ticket queue is quite calm and I\'d like to encourage you to use our new <strong>chat support</strong> option --&gt; Please do not open multiple tickets for the same issue, it adds unneeded load to our queue and ends up in longer waiting time for you <a href=\"http://localhost:8080/project19/projects#\">F</a></p>\r\n<!-- /wp:paragraph -->', '7 Days Star Umrah Package-03 (Copy)', '<p><span class=\"st\">My permalink structure <em>might</em> be the cause - but basically i have a formidable form creating a new post ( custom ... [Closed] Catchable <em>fatal error</em>: <em>Object</em> of <em>class WP_Error could not</em> be <em>converted</em> to <em>string</em> ... With <em>WordPress</em> 3.5.1, edit <em>wp</em>-<wbr />includes/formatting.php and in line 509 add this: ... Skip to main <em>content</em>.</span></p>', 'publish', 'open', 'closed', '', '7-days-star-umrah-package-03-copy', '', '', '2019-03-28 19:08:06', '2019-03-28 19:08:06', '', 0, 'http://localhost:8080/hajjproject/?post_type=product&#038;p=350', 8, 'product', '', 0),
(351, 1, '2019-03-28 19:28:42', '2019-03-28 19:28:42', '', 'palace-park-versailles-5-800x600', '', 'inherit', 'open', 'closed', '', 'palace-park-versailles-5-800x600-2', '', '', '2019-03-28 19:28:42', '2019-03-28 19:28:42', '', 337, 'http://localhost:8080/hajjproject/wp-content/uploads/2019/03/palace-park-versailles-5-800x600.jpg', 0, 'attachment', 'image/jpeg', 0),
(352, 1, '2019-03-28 19:30:09', '2019-03-28 19:30:09', 'faucibus egestas rutrum mauris vulputate consequat ante', 'Newziland', '', 'publish', 'closed', 'closed', '', 'trhtrh', '', '', '2019-05-25 04:12:37', '2019-05-25 04:12:37', '', 0, 'http://localhost:8080/hajjproject/?post_type=tours&#038;p=352', 0, 'tours', '', 0),
(353, 1, '2019-03-28 19:30:22', '2019-03-28 19:30:22', 'Cursus faucibus egestas rutrum mauris vulputate consequat ante', 'England, UK', '', 'publish', 'closed', 'closed', '', 'dfhggf', '', '', '2019-05-25 04:10:18', '2019-05-25 04:10:18', '', 0, 'http://localhost:8080/hajjproject/?post_type=tours&#038;p=353', 0, 'tours', '', 0),
(355, 1, '2019-03-29 09:44:36', '2019-03-29 09:44:36', '[wp_travel_checkout]', 'WP Travel Checkout', '', 'publish', 'closed', 'closed', '', 'wp-travel-checkout', '', '', '2019-03-29 09:44:36', '2019-03-29 09:44:36', '', 0, 'http://localhost:8080/hajjproject/wp-travel-checkout', 0, 'page', '', 0),
(356, 1, '2019-03-29 09:44:36', '2019-03-29 09:44:36', '[wp_travel_user_account]', 'WP Travel Dashboard', '', 'publish', 'closed', 'closed', '', 'wp-travel-dashboard', '', '', '2019-03-29 09:44:36', '2019-03-29 09:44:36', '', 0, 'http://localhost:8080/hajjproject/wp-travel-dashboard', 0, 'page', '', 0),
(357, 1, '2019-03-29 09:51:00', '2019-03-29 09:51:00', '', 'Milonbooking', '', 'publish', 'closed', 'closed', '', 'milonbooking', '', '', '2019-03-29 10:43:59', '2019-03-29 10:43:59', '', 0, 'http://localhost:8080/hajjproject/?post_type=itinerary-booking&#038;p=357', 0, 'itinerary-booking', '', 0),
(358, 1, '2019-03-29 09:49:20', '2019-03-29 09:49:20', '', 'Payment - #357', '', 'publish', 'open', 'closed', '', 'payment-357', '', '', '2019-03-29 09:49:20', '2019-03-29 09:49:20', '', 0, 'http://localhost:8080/hajjproject/archives/itinerary-payment/payment-357', 0, 'wp-travel-payment', '', 0),
(360, 1, '2019-03-29 09:53:11', '2019-03-29 09:53:11', 'gyhghghgh', 'milontravel', '', 'publish', 'open', 'closed', '', 'milontravel', '', '', '2019-03-29 10:42:46', '2019-03-29 10:42:46', '', 0, 'http://localhost:8080/hajjproject/?post_type=itineraries&#038;p=360', 0, 'itineraries', '', 0),
(366, 1, '2019-03-29 10:34:38', '2019-03-29 10:34:38', '', '', '', 'publish', 'closed', 'closed', '', '366', '', '', '2019-03-29 10:34:38', '2019-03-29 10:34:38', '', 0, 'http://localhost:8080/hajjproject/?post_type=wp-travel-coupons&#038;p=366', 0, 'wp-travel-coupons', '', 0),
(367, 1, '2019-03-29 10:35:14', '2019-03-29 10:35:14', '', '', '', 'publish', 'closed', 'closed', '', '367', '', '', '2019-03-29 10:35:14', '2019-03-29 10:35:14', '', 0, 'http://localhost:8080/hajjproject/?post_type=itinerary-enquiries&#038;p=367', 0, 'itinerary-enquiries', '', 0),
(368, 1, '2019-03-29 10:35:39', '2019-03-29 10:35:39', '', '', '', 'publish', 'closed', 'closed', '', '368', '', '', '2019-03-29 10:35:39', '2019-03-29 10:35:39', '', 0, 'http://localhost:8080/hajjproject/?post_type=tour-extras&#038;p=368', 0, 'tour-extras', '', 0),
(375, 1, '2019-03-30 19:58:57', '2019-03-30 19:58:57', '<b>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</b> Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, <a href=\"http://localhost:8080/project/hotel-details#\">remaining essentially unchanged</a>. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Shangri-La International Hotel', '', 'publish', 'open', 'closed', '', 'shangri-la-international-hotel', '', '', '2019-04-03 11:12:09', '2019-04-03 11:12:09', '', 0, 'http://localhost:8080/hajjproject/?post_type=hotelhajj&#038;p=375', 0, 'hotelhajj', '', 0),
(377, 1, '2019-04-01 18:21:11', '2019-04-01 18:21:11', '', 'Barclay-400x300', '', 'inherit', 'open', 'closed', '', 'barclay-400x300', '', '', '2019-04-01 18:21:11', '2019-04-01 18:21:11', '', 375, 'http://localhost:8080/hajjproject/wp-content/uploads/2019/03/Barclay-400x300.jpg', 0, 'attachment', 'image/jpeg', 0),
(378, 1, '2019-04-01 19:37:24', '2019-04-01 19:37:24', '<span id=\"e197\" class=\"qc_ si29 \">Find Bookings <b>Hotel</b>. Check Out 1000+ Results from Across the Web. The Complete Overview. Information 24/7. Wiki, News &amp; More. Web, Images &amp; Video. 100+ Million Visitors. Trusted by Millions. Types: pdf, doc, ppt, xls, txt.</span>', 'Hotel Tours: Seeing a Hotel Star', '', 'publish', 'open', 'closed', '', 'hotel-tours-seeing-a-hotel-star', '', '', '2019-05-25 04:20:51', '2019-05-25 04:20:51', '', 0, 'http://localhost:8080/hajjproject/?post_type=hotelhajj&#038;p=378', 0, 'hotelhajj', '', 0),
(379, 1, '2019-04-01 19:43:10', '2019-04-01 19:43:10', '<span id=\"e231\" class=\"qc_ si29 \">HotelsCombined. Compare 1000+ Booking Sites At Once. Best Price Guaranteed. 5 Million <b>Hotel</b> Deals. 100% Free to Use. Travellers Love Us. 1000’s Sites Compared. 800,000+ <b>Hotels</b> Worldwide. <b>Hotels</b> up to 80% Off. No Booking Fee. Types: <b>Hotels</b>, Apartments, Resorts, Villas, Hostels, Guest Houses, B&amp;Bs, Vacation Rentals, Motels, Serviced Apartments.</span>', 'Hotel The Cox Today, Cox\'s Bazar - Compare Deal', '', 'publish', 'open', 'closed', '', 'hotel-the-cox-today-coxs-bazar-compare-deal', '', '', '2019-05-25 04:22:06', '2019-05-25 04:22:06', '', 0, 'http://localhost:8080/hajjproject/?post_type=hotelhajj&#038;p=379', 0, 'hotelhajj', '', 0),
(380, 1, '2019-04-01 19:44:58', '2019-04-01 19:44:58', '<span id=\"e231\" class=\"qc_ si29 \">HotelsCombined. Compare 1000+ Booking Sites At Once. Best Price Guaranteed. 5 Million <b>Hotel</b> Deals. 100% Free to Use. Travellers Love Us. 1000’s Sites Compared. 800,000+ <b>Hotels</b> Worldwide. <b>Hotels</b> up to 80% Off. No Booking Fee. Types: <b>Hotels</b>, Apartments, Resorts, Villas, Hostels, Guest Houses, B&amp;Bs, Vacation Rentals, Motels, Serviced Apartments.</span>', 'HotelsCombined. Compare', '', 'publish', 'open', 'closed', '', 'hotelscombined-compare', '', '', '2019-05-25 04:21:26', '2019-05-25 04:21:26', '', 0, 'http://localhost:8080/hajjproject/?post_type=hotelhajj&#038;p=380', 0, 'hotelhajj', '', 0),
(382, 1, '2019-04-02 04:55:01', '2019-04-02 04:55:01', '[mphb_rooms]', 'Accommodations', '', 'publish', 'closed', 'closed', '', 'accommodations', '', '', '2019-04-02 04:55:01', '2019-04-02 04:55:01', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/accommodations', 0, 'page', '', 0),
(383, 1, '2019-04-02 04:55:01', '2019-04-02 04:55:01', '[mphb_availability_search]', 'Search Availability', '', 'publish', 'closed', 'closed', '', 'search-availability', '', '', '2019-04-02 04:55:01', '2019-04-02 04:55:01', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/search-availability', 0, 'page', '', 0),
(384, 1, '2019-04-02 04:55:01', '2019-04-02 04:55:01', '[mphb_search_results]', 'Search Results', '', 'publish', 'closed', 'closed', '', 'search-results', '', '', '2019-04-02 04:55:01', '2019-04-02 04:55:01', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/search-results', 0, 'page', '', 0),
(385, 1, '2019-04-02 04:55:01', '2019-04-02 04:55:01', '[mphb_checkout]', 'Booking Confirmation', '', 'publish', 'closed', 'closed', '', 'booking-confirmation', '', '', '2019-04-02 04:55:01', '2019-04-02 04:55:01', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/booking-confirmation', 0, 'page', '', 0),
(386, 1, '2019-04-02 04:55:01', '2019-04-02 04:55:01', 'We are pleased to inform you that your reservation request has been received and confirmed.', 'Booking Confirmed', '', 'publish', 'closed', 'closed', '', 'booking-confirmed', '', '', '2019-04-02 04:55:01', '2019-04-02 04:55:01', '', 385, 'https://technovicinity.com/development/wordpress/milon/travel/booking-confirmation/booking-confirmed', 0, 'page', '', 0),
(387, 1, '2019-04-02 04:55:01', '2019-04-02 04:55:01', 'Your reservation is canceled.', 'Booking Canceled', '', 'publish', 'closed', 'closed', '', 'booking-canceled', '', '', '2019-04-02 04:55:01', '2019-04-02 04:55:01', '', 385, 'https://technovicinity.com/development/wordpress/milon/travel/booking-confirmation/booking-canceled', 0, 'page', '', 0),
(388, 1, '2019-04-02 04:55:02', '2019-04-02 04:55:02', 'Thank you for your payment. Your transaction has been completed and a receipt for your purchase has been emailed to you.', 'Payment Success', '', 'publish', 'closed', 'closed', '', 'payment-success', '', '', '2019-04-02 04:55:02', '2019-04-02 04:55:02', '', 385, 'https://technovicinity.com/development/wordpress/milon/travel/booking-confirmation/payment-success', 0, 'page', '', 0),
(389, 1, '2019-04-02 04:55:02', '2019-04-02 04:55:02', 'Unfortunately, your transaction cannot be completed at this time. Please try again or contact us.', 'Transaction Failed', '', 'publish', 'closed', 'closed', '', 'transaction-failed', '', '', '2019-04-02 04:55:02', '2019-04-02 04:55:02', '', 385, 'https://technovicinity.com/development/wordpress/milon/travel/booking-confirmation/transaction-failed', 0, 'page', '', 0),
(390, 1, '2019-04-02 04:55:41', '2019-04-02 04:55:41', '', 'Hotel Booking', '', 'publish', 'closed', 'closed', '', '390', '', '', '2019-04-03 04:07:08', '2019-04-03 04:07:08', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?post_type=mphb_season&#038;p=390', 0, 'mphb_season', '', 0),
(391, 1, '2019-04-02 08:06:10', '0000-00-00 00:00:00', '', 'onester', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-04-02 08:06:10', '2019-04-02 08:06:10', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?post_type=mphb_rate&#038;p=391', 0, 'mphb_rate', '', 0),
(392, 0, '2019-04-02 04:58:04', '2019-04-02 04:58:04', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'room service', '', 'publish', 'open', 'closed', '', 'room-service', '', '', '2019-04-03 04:08:43', '2019-04-03 04:08:43', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?post_type=mphb_room_service&#038;p=392', 0, 'mphb_room_service', '', 0),
(393, 1, '2019-04-02 04:59:01', '0000-00-00 00:00:00', '', 'Accommodation one', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-04-02 04:59:01', '2019-04-02 04:59:01', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?post_type=mphb_room&#038;p=393', 0, 'mphb_room', '', 0),
(394, 0, '2019-04-02 06:05:04', '2019-04-02 06:05:04', '', 'test', 'dsfgsdfdsfdsf', 'publish', 'open', 'closed', '', 'test', '', '', '2019-04-03 04:03:38', '2019-04-03 04:03:38', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?post_type=mphb_room_type&#038;p=394', 3, 'mphb_room_type', '', 0),
(395, 1, '2019-04-02 06:05:06', '2019-04-02 06:05:06', '', 'test 1', '', 'publish', 'closed', 'closed', '', 'test-1', '', '', '2019-04-02 06:05:06', '2019-04-02 06:05:06', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/archives/mphb_room/test-1', 0, 'mphb_room', '', 0),
(396, 1, '2019-04-02 06:05:06', '2019-04-02 06:05:06', '', 'test 2', '', 'publish', 'closed', 'closed', '', 'test-2', '', '', '2019-04-02 06:05:06', '2019-04-02 06:05:06', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/archives/mphb_room/test-2', 0, 'mphb_room', '', 0),
(398, 1, '2019-04-02 08:06:29', '2019-04-02 08:06:29', '', '3 Star', '', 'publish', 'closed', 'closed', '', '398', '', '', '2019-04-03 04:08:12', '2019-04-03 04:08:12', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?post_type=mphb_rate&#038;p=398', 0, 'mphb_rate', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(399, 1, '2019-04-02 08:12:12', '2019-04-02 08:12:12', '', 'getall 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'publish', 'closed', 'closed', '', 'getall-1', '', '', '2019-04-03 04:09:15', '2019-04-03 04:09:15', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/archives/mphb_room/getall-1', 0, 'mphb_room', '', 0),
(402, 1, '2019-04-02 08:36:33', '2019-04-02 08:36:33', '[hotel_booking_checkout]', 'Hotel Checkout', '', 'publish', 'closed', 'closed', '', 'hotel-checkout', '', '', '2019-04-02 08:36:33', '2019-04-02 08:36:33', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/hotel-checkout', 0, 'page', '', 0),
(404, 1, '2019-04-02 08:36:33', '2019-04-02 08:36:33', '[hotel_booking_account]', 'Hotel Account', '', 'publish', 'closed', 'closed', '', 'hotel-account', '', '', '2019-04-02 08:36:33', '2019-04-02 08:36:33', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/hotel-account', 0, 'page', '', 0),
(405, 1, '2019-04-02 08:36:33', '2019-04-02 08:36:33', 'Something notices', 'Terms and Conditions', '', 'publish', 'closed', 'closed', '', 'hotel-term-condition', '', '', '2019-04-02 08:36:33', '2019-04-02 08:36:33', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/hotel-term-condition', 0, 'page', '', 0),
(409, 1, '2019-04-03 04:09:33', '2019-04-03 04:09:33', '', 'test 1', '', 'publish', 'closed', 'closed', '', 'test-1-2', '', '', '2019-04-03 04:09:33', '2019-04-03 04:09:33', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/archives/mphb_room/test-1-2', 0, 'mphb_room', '', 0),
(410, 1, '2019-04-03 04:09:33', '2019-04-03 04:09:33', '', 'test 2', '', 'publish', 'closed', 'closed', '', 'test-2-2', '', '', '2019-04-03 04:09:33', '2019-04-03 04:09:33', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/archives/mphb_room/test-2-2', 0, 'mphb_room', '', 0),
(411, 1, '2019-04-03 04:09:33', '2019-04-03 04:09:33', '', 'test 3', '', 'publish', 'closed', 'closed', '', 'test-3', '', '', '2019-04-03 04:09:33', '2019-04-03 04:09:33', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/archives/mphb_room/test-3', 0, 'mphb_room', '', 0),
(412, 1, '2019-04-03 04:09:33', '2019-04-03 04:09:33', '', 'test 4', '', 'publish', 'closed', 'closed', '', 'test-4', '', '', '2019-04-03 04:09:33', '2019-04-03 04:09:33', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/archives/mphb_room/test-4', 0, 'mphb_room', '', 0),
(416, 1, '2019-04-03 04:28:55', '2019-04-03 04:28:55', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Luxury Room', '', 'publish', 'open', 'closed', '', 'luxury-room', '', '', '2019-04-03 04:28:55', '2019-04-03 04:28:55', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?post_type=hb_room&#038;p=416', 0, 'hb_room', '', 0),
(417, 1, '2019-04-03 04:28:55', '2019-04-03 04:28:55', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Luxury Room', '', 'inherit', 'closed', 'closed', '', '416-revision-v1', '', '', '2019-04-03 04:28:55', '2019-04-03 04:28:55', '', 416, 'https://technovicinity.com/development/wordpress/milon/travel/archives/417', 0, 'revision', '', 0),
(418, 1, '2019-04-03 04:30:04', '2019-04-03 04:30:04', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Extra Room', '', 'publish', 'closed', 'closed', '', 'extra-room', '', '', '2019-04-03 04:30:04', '2019-04-03 04:30:04', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?post_type=hb_extra_room&#038;p=418', 0, 'hb_extra_room', '', 0),
(434, 1, '2019-04-03 07:03:53', '2019-04-03 07:03:53', '', 'New Booking', '', 'publish', 'closed', 'closed', '', 'new-booking', '', '', '2019-04-03 07:03:53', '2019-04-03 07:03:53', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?page_id=434', 0, 'page', '', 0),
(435, 1, '2019-04-03 07:03:53', '2019-04-03 07:03:53', '', 'New Booking', '', 'inherit', 'closed', 'closed', '', '434-revision-v1', '', '', '2019-04-03 07:03:53', '2019-04-03 07:03:53', '', 434, 'https://technovicinity.com/development/wordpress/milon/travel/archives/435', 0, 'revision', '', 0),
(437, 1, '2019-04-03 07:05:41', '2019-04-03 07:05:41', '<!-- wp:paragraph -->\n<p><em>[lang=fr_FR]</em></p>\n<!-- /wp:paragraph -->', 'book-now', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2019-04-03 07:05:41', '2019-04-03 07:05:41', '', 62, 'https://technovicinity.com/development/wordpress/milon/travel/archives/437', 0, 'revision', '', 0),
(438, 1, '2019-04-03 07:10:13', '2019-04-03 07:10:13', '<!-- wp:paragraph -->\n<p> <br> <strong>[sbc title=\"yes\"]</strong> or <strong>[sbc title=\"no\"]</strong> </p>\n<!-- /wp:paragraph -->', 'book-now', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2019-04-03 07:10:13', '2019-04-03 07:10:13', '', 62, 'https://technovicinity.com/development/wordpress/milon/travel/archives/438', 0, 'revision', '', 0),
(439, 1, '2019-04-03 08:30:46', '2019-04-03 08:30:46', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum', '', 'publish', 'open', 'closed', '', 'lorem-ipsum', '', '', '2019-04-03 08:30:46', '2019-04-03 08:30:46', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?post_type=wpbooking_service&#038;p=439', 0, 'wpbooking_service', '', 0),
(440, 1, '2019-04-03 08:29:33', '2019-04-03 08:29:33', '', 'sonar bangla', '', 'publish', 'open', 'closed', '', 'sonar-bangla', '', '', '2019-04-03 08:29:33', '2019-04-03 08:29:33', '', 439, 'https://technovicinity.com/development/wordpress/milon/travel/?post_type=wpbooking_hotel_room&#038;p=440', 0, 'wpbooking_hotel_room', '', 0),
(441, 0, '2019-04-03 09:48:12', '2019-04-03 09:48:12', '', 'testttt', '<p>jhgjhgjhgjhgjhgjhg</p>', 'publish', 'closed', 'closed', '', 'testttt', '', '', '2019-04-03 09:48:13', '2019-04-03 09:48:13', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?post_type=room_type&#038;p=441', 0, 'room_type', '', 0),
(442, 1, '2019-04-03 09:49:02', '2019-04-03 09:49:02', '', 'What\'s new in Duplicate', 'What\\\\\\\'s new in Duplicate Post version 3.2.2:\r\nSimple compatibility with Gutenberg user interface: enable \\\\\\\"Admin bar\\\\\\\" under the Settings — \\\\\\\"Slug\\\\\\\" option unset by default on new installations\r\nCheck out the documentation — Please review the settings to make sure it works as you expect.\r\nServing the WordPress community since November 2007. Help me develop the plugin and provide support by donating even a small sum.', 'publish', 'closed', 'closed', '', 'whats-new-in-duplicate', '', '', '2019-04-03 09:49:14', '2019-04-03 09:49:14', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?post_type=hotel_service&#038;p=442', 0, 'hotel_service', '', 0),
(443, 1, '2019-04-03 09:49:00', '0000-00-00 00:00:00', '', 'Booking', 'What\\\'s new in Duplicate What\\\'s new in Duplicate What\\\'s new in Duplicate What\\\'s new in Duplicate What\\\'s new in Duplicate What\\\'s new in Duplicate What\\\'s new in Duplicate What\\\'s new in Duplicate What\\\'s new in Duplicate', 'awebooking-pending', 'closed', 'closed', '', '', '', '', '2019-04-03 09:50:07', '2019-04-03 09:50:07', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?post_type=awebooking&#038;p=443', 0, 'awebooking', '', 2),
(445, 1, '2019-04-03 10:10:43', '2019-04-03 10:10:43', '<!-- wp:paragraph -->\n<p> <br> <strong>[s</strong>[booking_package id=2]</p>\n<!-- /wp:paragraph -->', 'book-now', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2019-04-03 10:10:43', '2019-04-03 10:10:43', '', 62, 'https://technovicinity.com/development/wordpress/milon/travel/archives/445', 0, 'revision', '', 0),
(446, 1, '2019-04-03 10:11:20', '2019-04-03 10:11:20', '<!-- wp:paragraph -->\n<p> <br> <strong>[</strong>[booking_package id=2]</p>\n<!-- /wp:paragraph -->', 'book-now', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2019-04-03 10:11:20', '2019-04-03 10:11:20', '', 62, 'https://technovicinity.com/development/wordpress/milon/travel/archives/446', 0, 'revision', '', 0),
(447, 1, '2019-04-03 10:11:45', '2019-04-03 10:11:45', '<!-- wp:paragraph -->\n<p> <br>[booking_package id=2]</p>\n<!-- /wp:paragraph -->', 'book-now', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2019-04-03 10:11:45', '2019-04-03 10:11:45', '', 62, 'https://technovicinity.com/development/wordpress/milon/travel/archives/447', 0, 'revision', '', 0),
(448, 1, '2019-04-03 10:12:50', '2019-04-03 10:12:50', '<!-- wp:paragraph -->\n<p> <br>[booking_package id=3]<br></p>\n<!-- /wp:paragraph -->', 'book-now', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2019-04-03 10:12:50', '2019-04-03 10:12:50', '', 62, 'https://technovicinity.com/development/wordpress/milon/travel/archives/448', 0, 'revision', '', 0),
(449, 1, '2019-04-03 10:20:00', '2019-04-03 10:20:00', '<!-- wp:paragraph -->\n<p> <br>[booking_package id=4]<br></p>\n<!-- /wp:paragraph -->', 'book-now', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2019-04-03 10:20:00', '2019-04-03 10:20:00', '', 62, 'https://technovicinity.com/development/wordpress/milon/travel/archives/449', 0, 'revision', '', 0),
(450, 1, '2019-04-03 10:26:38', '2019-04-03 10:26:38', '<!-- wp:paragraph -->\n<p> <br>[booking_package id=5]<br></p>\n<!-- /wp:paragraph -->', 'book-now', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2019-04-03 10:26:38', '2019-04-03 10:26:38', '', 62, 'https://technovicinity.com/development/wordpress/milon/travel/archives/450', 0, 'revision', '', 0),
(459, 1, '2019-04-04 09:57:39', '2019-04-04 09:57:39', '<!-- wp:paragraph -->\r\n<p><br />Hi, Amit here, I am the WPML Support Manager, our current ticket queue is quite calm and I\'d like to encourage you to use our new <strong>chat support</strong> option --&gt; Please do not open multiple tickets for the same issue, it adds unneeded load to our queue and ends up in longer waiting time for you <a href=\"http://localhost:8080/project19/projects#\">F</a></p>\r\n<!-- /wp:paragraph -->', '7 Days Star Umrah Package-03 (Copy) (Copy)', '<p><span class=\"st\">My permalink structure <em>might</em> be the cause - but basically i have a formidable form creating a new post ( custom ... [Closed] Catchable <em>fatal error</em>: <em>Object</em> of <em>class WP_Error could not</em> be <em>converted</em> to <em>string</em> ... With <em>WordPress</em> 3.5.1, edit <em>wp</em>-<wbr />includes/formatting.php and in line 509 add this: ... Skip to main <em>content</em>.</span></p>', 'publish', 'open', 'closed', '', '7-days-star-umrah-package-03-copy-copy', '', '', '2019-04-04 09:57:52', '2019-04-04 09:57:52', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?post_type=product&#038;p=459', 8, 'product', '', 0),
(460, 1, '2019-04-04 09:58:02', '2019-04-04 09:58:02', '<!-- wp:paragraph -->\r\n<p><br />Hi, Amit here, I am the WPML Support Manager, our current ticket queue is quite calm and I\'d like to encourage you to use our new <strong>chat support</strong> option --&gt; Please do not open multiple tickets for the same issue, it adds unneeded load to our queue and ends up in longer waiting time for you <a href=\"http://localhost:8080/project19/projects#\">F</a></p>\r\n<!-- /wp:paragraph -->', '7 Days Star Umrah Package-03 (Copy) (Copy) (Copy)', '<p><span class=\"st\">My permalink structure <em>might</em> be the cause - but basically i have a formidable form creating a new post ( custom ... [Closed] Catchable <em>fatal error</em>: <em>Object</em> of <em>class WP_Error could not</em> be <em>converted</em> to <em>string</em> ... With <em>WordPress</em> 3.5.1, edit <em>wp</em>-<wbr />includes/formatting.php and in line 509 add this: ... Skip to main <em>content</em>.</span></p>', 'publish', 'open', 'closed', '', '7-days-star-umrah-package-03-copy-copy-copy', '', '', '2019-04-04 09:58:11', '2019-04-04 09:58:11', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?post_type=product&#038;p=460', 8, 'product', '', 0),
(461, 1, '2019-04-04 09:58:23', '2019-04-04 09:58:23', '<!-- wp:paragraph -->\r\n<p><br />Hi, Amit here, I am the WPML Support Manager, our current ticket queue is quite calm and I\'d like to encourage you to use our new <strong>chat support</strong> option --&gt; Please do not open multiple tickets for the same issue, it adds unneeded load to our queue and ends up in longer waiting time for you <a href=\"http://localhost:8080/project19/projects#\">F</a></p>\r\n<!-- /wp:paragraph -->', '7 Days Star Umrah Package-03 (Copy) (Copy) (Copy) (Copy)', '<p><span class=\"st\">My permalink structure <em>might</em> be the cause - but basically i have a formidable form creating a new post ( custom ... [Closed] Catchable <em>fatal error</em>: <em>Object</em> of <em>class WP_Error could not</em> be <em>converted</em> to <em>string</em> ... With <em>WordPress</em> 3.5.1, edit <em>wp</em>-<wbr />includes/formatting.php and in line 509 add this: ... Skip to main <em>content</em>.</span></p>', 'publish', 'open', 'closed', '', '7-days-star-umrah-package-03-copy-copy-copy-copy', '', '', '2019-04-04 09:58:45', '2019-04-04 09:58:45', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?post_type=product&#038;p=461', 8, 'product', '', 0),
(462, 1, '2019-04-04 09:59:05', '2019-04-04 09:59:05', 'get all golobal', 'global test (Copy)', '', 'publish', 'open', 'closed', '', 'global-test-copy', '', '', '2019-04-04 09:59:17', '2019-04-04 09:59:17', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?post_type=product&#038;p=462', 125, 'product', '', 0),
(463, 1, '2019-04-04 09:59:30', '2019-04-04 09:59:30', 'get all golobal', 'global test (Copy)', '', 'publish', 'open', 'closed', '', 'global-test-copy-2', '', '', '2019-04-04 09:59:41', '2019-04-04 09:59:41', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?post_type=product&#038;p=463', 125, 'product', '', 0),
(464, 1, '2019-04-04 09:59:53', '2019-04-04 09:59:53', 'get all golobal', 'global test (Copy)', '', 'publish', 'open', 'closed', '', 'global-test-copy-3', '', '', '2019-04-04 10:00:02', '2019-04-04 10:00:02', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?post_type=product&#038;p=464', 125, 'product', '', 0),
(465, 1, '2019-04-04 10:00:19', '2019-04-04 10:00:19', 'get all golobal', 'global test (Copy) (Copy)', '', 'publish', 'open', 'closed', '', 'global-test-copy-copy', '', '', '2019-04-04 10:00:49', '2019-04-04 10:00:49', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?post_type=product&#038;p=465', 125, 'product', '', 0),
(466, 1, '2019-04-04 10:00:59', '2019-04-04 10:00:59', 'get all golobal', 'global test (Copy)', '', 'publish', 'open', 'closed', '', 'global-test-copy-4', '', '', '2019-04-04 10:01:06', '2019-04-04 10:01:06', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?post_type=product&#038;p=466', 125, 'product', '', 0),
(467, 1, '2019-04-04 10:01:17', '2019-04-04 10:01:17', 'get all golobal', 'global test (Copy)', '', 'publish', 'open', 'closed', '', 'global-test-copy-5', '', '', '2019-04-04 10:01:35', '2019-04-04 10:01:35', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?post_type=product&#038;p=467', 125, 'product', '', 0),
(475, 1, '2019-04-09 08:19:57', '2019-04-09 08:19:57', 'Let\'s say you have two pages, About Us (page ID - 50) and Contact Us (page ID - 24). You created a Contact Information metabox that you want only displaying on these two pages. Here\'s what the beginning of your metabox might look like.', 'test2', '', 'publish', 'open', 'closed', '', 'rtyrty', '', '', '2019-04-10 07:42:17', '2019-04-10 07:42:17', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?post_type=flights&#038;p=475', 0, 'flights', '', 0),
(476, 1, '2019-04-09 08:24:17', '2019-04-09 08:24:17', 'Excerpts are optional hand-crafted summaries of your content that can be used in your theme.', 'test1', '', 'publish', 'open', 'closed', '', 'dfgjfdghfdjgh', '', '', '2019-04-10 05:23:57', '2019-04-10 05:23:57', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?post_type=flights&#038;p=476', 0, 'flights', '', 0),
(479, 1, '2019-04-10 05:09:52', '2019-04-10 05:09:52', '', 'air-berlin-128x50', '', 'inherit', 'open', 'closed', '', 'air-berlin-128x50', '', '', '2019-04-10 05:09:52', '2019-04-10 05:09:52', '', 476, 'https://technovicinity.com/development/wordpress/milon/travel/wp-content/uploads/2019/04/air-berlin-128x50.png', 0, 'attachment', 'image/png', 0),
(481, 1, '2019-04-10 06:02:07', '2019-04-10 06:02:07', 'Let\'s say you have two pages, About Us (page ID - 50) and Contact Us (page ID - 24). You created a Contact Information metabox that you want only displaying on these two pages. Here\'s what the beginning of your metabox might look like.', 'test2', '', 'inherit', 'closed', 'closed', '', '475-autosave-v1', '', '', '2019-04-10 06:02:07', '2019-04-10 06:02:07', '', 475, 'https://technovicinity.com/development/wordpress/milon/travel/archives/481', 0, 'revision', '', 0),
(482, 1, '2019-04-10 06:02:17', '2019-04-10 06:02:17', '', 'hotel-logo', '', 'inherit', 'open', 'closed', '', 'hotel-logo', '', '', '2019-04-10 06:02:17', '2019-04-10 06:02:17', '', 475, 'https://technovicinity.com/development/wordpress/milon/travel/wp-content/uploads/2019/04/hotel-logo.jpg', 0, 'attachment', 'image/jpeg', 0),
(483, 1, '2019-04-10 12:12:42', '2019-04-10 12:12:42', 'sttdsrt', 'test3', '', 'publish', 'open', 'closed', '', 'test3', '', '', '2019-04-10 12:12:56', '2019-04-10 12:12:56', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?post_type=flights&#038;p=483', 0, 'flights', '', 0),
(484, 1, '2019-04-10 12:11:39', '2019-04-10 12:11:39', '', 'mastercard', '', 'inherit', 'open', 'closed', '', 'mastercard', '', '', '2019-04-10 12:11:39', '2019-04-10 12:11:39', '', 483, 'https://technovicinity.com/development/wordpress/milon/travel/wp-content/uploads/2019/04/mastercard.png', 0, 'attachment', 'image/png', 0),
(491, 1, '2019-05-16 06:13:08', '2019-05-16 06:13:08', '', 'form_leads', '', 'publish', 'closed', 'closed', '', 'form_leads', '', '', '2019-05-16 06:30:47', '2019-05-16 06:30:47', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?page_id=491', 0, 'page', '', 0),
(492, 1, '2019-05-16 06:13:08', '2019-05-16 06:13:08', '', 'form_leads', '', 'inherit', 'closed', 'closed', '', '491-revision-v1', '', '', '2019-05-16 06:13:08', '2019-05-16 06:13:08', '', 491, 'https://technovicinity.com/development/wordpress/milon/travel/archives/492', 0, 'revision', '', 0),
(496, 1, '2019-05-19 06:38:13', '2019-05-19 06:38:13', '', '', '', 'publish', 'closed', 'closed', '', 'local-f462632a5987bb5d13d7d648ef13d15b', '', '', '2019-05-19 06:38:13', '2019-05-19 06:38:13', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/site-review/local-f462632a5987bb5d13d7d648ef13d15b', 0, 'site-review', '', 0),
(498, 1, '2019-05-19 06:43:14', '2019-05-19 06:43:14', 'milon', '', '', 'publish', 'closed', 'closed', '', 'local-ec50cc4f2bddc1f01b11425b8e076b8e', '', '', '2019-05-19 06:43:14', '2019-05-19 06:43:14', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/site-review/local-ec50cc4f2bddc1f01b11425b8e076b8e', 0, 'site-review', '', 0),
(500, 1, '2019-05-19 06:50:26', '2019-05-19 06:50:26', 'test golobal', '', '', 'publish', 'closed', 'closed', '', 'local-b4c6a596ebe34f9f9a3ddd80cbc61931', '', '', '2019-05-19 06:50:26', '2019-05-19 06:50:26', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/site-review/local-b4c6a596ebe34f9f9a3ddd80cbc61931', 0, 'site-review', '', 0),
(501, 1, '2019-05-19 06:52:20', '2019-05-19 06:52:20', 'besto achi', '', '', 'publish', 'closed', 'closed', '', 'local-37dc86524a3bb6447c782ad2e4af14fe', '', '', '2019-05-19 06:52:20', '2019-05-19 06:52:20', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/site-review/local-37dc86524a3bb6447c782ad2e4af14fe', 0, 'site-review', '', 0),
(502, 1, '2019-05-19 06:54:16', '2019-05-19 06:54:16', 'main', '', '', 'publish', 'closed', 'closed', '', 'local-d98e5b82cbac9ebb037f810360364f6a', '', '', '2019-05-19 06:54:16', '2019-05-19 06:54:16', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/site-review/local-d98e5b82cbac9ebb037f810360364f6a', 0, 'site-review', '', 0),
(503, 1, '2019-05-19 07:24:30', '2019-05-19 07:24:30', 'hello bangladesh', '', '', 'publish', 'closed', 'closed', '', 'local-f51338724f78cebbe16c7d7fed0ecbef', '', '', '2019-05-19 07:24:30', '2019-05-19 07:24:30', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/site-review/local-f51338724f78cebbe16c7d7fed0ecbef', 0, 'site-review', '', 0),
(504, 1, '2019-05-19 07:25:03', '2019-05-19 07:25:03', 'ami valo achi', '', '', 'publish', 'closed', 'closed', '', 'local-770d1ba070d5ddc2007e1fcc258a2241', '', '', '2019-05-19 07:25:03', '2019-05-19 07:25:03', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/site-review/local-770d1ba070d5ddc2007e1fcc258a2241', 0, 'site-review', '', 0),
(505, 1, '2019-05-19 07:25:57', '2019-05-19 07:25:57', 'tomar ei na valo vasa', '', '', 'publish', 'closed', 'closed', '', 'local-154e4f1c7e4883dc447e04691f43cdde', '', '', '2019-05-19 07:25:57', '2019-05-19 07:25:57', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/site-review/local-154e4f1c7e4883dc447e04691f43cdde', 0, 'site-review', '', 0),
(506, 1, '2019-05-19 07:26:25', '2019-05-19 07:26:25', 'kire ki', '', '', 'publish', 'closed', 'closed', '', 'local-e7ae27dae4ac4b01a42cb746a5a3010b', '', '', '2019-05-19 07:26:25', '2019-05-19 07:26:25', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/site-review/local-e7ae27dae4ac4b01a42cb746a5a3010b', 0, 'site-review', '', 0),
(507, 1, '2019-05-21 05:30:48', '2019-05-21 05:30:48', 'hello', '', '', 'publish', 'closed', 'closed', '', 'local-3d1483ebb27d308c71feb1243ef1334d', '', '', '2019-05-21 05:30:48', '2019-05-21 05:30:48', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/site-review/local-3d1483ebb27d308c71feb1243ef1334d', 0, 'site-review', '', 0),
(508, 1, '2019-05-22 04:27:08', '2019-05-22 04:27:08', '[wp_user]', 'User', '', 'publish', 'closed', 'closed', '', 'user', '', '', '2019-05-22 04:27:08', '2019-05-22 04:27:08', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/user/', 0, 'page', '', 0),
(510, 1, '2019-05-22 06:00:40', '2019-05-22 06:00:40', '[wpuf_dashboard]', 'Dashboard', '', 'publish', 'closed', 'closed', '', 'dashboard', '', '', '2019-05-22 06:00:40', '2019-05-22 06:00:40', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/dashboard/', 0, 'page', '', 0),
(511, 1, '2019-05-22 06:00:41', '2019-05-22 06:00:41', '[wpuf_account]', 'Account', '', 'publish', 'closed', 'closed', '', 'account', '', '', '2019-05-22 06:00:41', '2019-05-22 06:00:41', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/account/', 0, 'page', '', 0),
(514, 1, '2019-05-22 06:00:41', '2019-05-22 06:00:41', '', 'Sample Form', '', 'publish', 'closed', 'closed', '', 'sample-form', '', '', '2019-05-22 06:00:41', '2019-05-22 06:00:41', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/wpuf_forms/sample-form/', 0, 'wpuf_forms', '', 0),
(515, 1, '2019-05-22 06:00:41', '2019-05-22 06:00:41', 'a:12:{s:10:\"input_type\";s:4:\"text\";s:8:\"template\";s:10:\"post_title\";s:8:\"required\";s:3:\"yes\";s:5:\"label\";s:10:\"Post Title\";s:4:\"name\";s:10:\"post_title\";s:7:\"is_meta\";s:2:\"no\";s:4:\"help\";s:0:\"\";s:3:\"css\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:4:\"size\";s:2:\"40\";s:9:\"wpuf_cond\";a:0:{}}', '', '', 'publish', 'closed', 'closed', '', '515', '', '', '2019-05-22 06:00:41', '2019-05-22 06:00:41', '', 514, 'https://technovicinity.com/development/wordpress/milon/travel/wpuf_input/515/', 0, 'wpuf_input', '', 0),
(516, 1, '2019-05-22 06:00:41', '2019-05-22 06:00:41', 'a:15:{s:10:\"input_type\";s:8:\"textarea\";s:8:\"template\";s:12:\"post_content\";s:8:\"required\";s:3:\"yes\";s:5:\"label\";s:12:\"Post Content\";s:4:\"name\";s:12:\"post_content\";s:7:\"is_meta\";s:2:\"no\";s:4:\"help\";s:0:\"\";s:3:\"css\";s:0:\"\";s:4:\"rows\";s:1:\"5\";s:4:\"cols\";s:2:\"25\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:4:\"rich\";s:5:\"teeny\";s:12:\"insert_image\";s:3:\"yes\";s:9:\"wpuf_cond\";a:0:{}}', '', '', 'publish', 'closed', 'closed', '', '516', '', '', '2019-05-22 06:00:41', '2019-05-22 06:00:41', '', 514, 'https://technovicinity.com/development/wordpress/milon/travel/wpuf_input/516/', 1, 'wpuf_input', '', 0),
(517, 1, '2019-05-22 06:00:41', '2019-05-22 06:00:41', '[wpuf_sub_pack]', 'Subscription', '', 'publish', 'closed', 'closed', '', 'subscription', '', '', '2019-05-22 06:00:41', '2019-05-22 06:00:41', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/subscription/', 0, 'page', '', 0),
(518, 1, '2019-05-22 06:00:41', '2019-05-22 06:00:41', 'Please select a gateway for payment', 'Payment', '', 'publish', 'closed', 'closed', '', 'payment', '', '', '2019-05-22 06:00:41', '2019-05-22 06:00:41', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/payment/', 0, 'page', '', 0),
(519, 1, '2019-05-22 06:00:41', '2019-05-22 06:00:41', '<h1>Payment is complete</h1><p>Congratulations, your payment has been completed!</p>', 'Thank You', '', 'publish', 'closed', 'closed', '', 'thank-you', '', '', '2019-05-22 06:00:41', '2019-05-22 06:00:41', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/thank-you/', 0, 'page', '', 0),
(520, 1, '2019-05-22 06:00:42', '2019-05-22 06:00:42', 'Hi, we have received your order. We will validate the order and will take necessary steps to move forward.', 'Order Received', '', 'publish', 'closed', 'closed', '', 'order-received', '', '', '2019-05-22 06:00:42', '2019-05-22 06:00:42', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/order-received/', 0, 'page', '', 0),
(521, 1, '2019-05-22 06:05:42', '2019-05-22 06:05:42', '[wpuf_dashboard]', 'Dashboard', '', 'publish', 'closed', 'closed', '', 'dashboard-2', '', '', '2019-05-22 06:05:42', '2019-05-22 06:05:42', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/dashboard-2/', 0, 'page', '', 0),
(522, 1, '2019-05-22 06:05:42', '2019-05-22 06:05:42', '[wpuf_account]', 'Account', '', 'publish', 'closed', 'closed', '', 'account-2', '', '', '2019-05-22 06:05:42', '2019-05-22 06:05:42', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/account-2/', 0, 'page', '', 0),
(524, 1, '2019-05-22 06:05:42', '2019-05-22 06:05:42', '[wpuf-login]', 'Login', '', 'publish', 'closed', 'closed', '', 'login-2', '', '', '2019-08-29 14:44:01', '2019-08-29 14:44:01', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/login-2/', 0, 'page', '', 0),
(525, 1, '2019-05-22 06:05:42', '2019-05-22 06:05:42', '', 'Sample Form', '', 'publish', 'closed', 'closed', '', 'sample-form-2', '', '', '2019-05-22 06:05:42', '2019-05-22 06:05:42', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/wpuf_forms/sample-form-2/', 0, 'wpuf_forms', '', 0),
(526, 1, '2019-05-22 06:05:42', '2019-05-22 06:05:42', 'a:12:{s:10:\"input_type\";s:4:\"text\";s:8:\"template\";s:10:\"post_title\";s:8:\"required\";s:3:\"yes\";s:5:\"label\";s:10:\"Post Title\";s:4:\"name\";s:10:\"post_title\";s:7:\"is_meta\";s:2:\"no\";s:4:\"help\";s:0:\"\";s:3:\"css\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:4:\"size\";s:2:\"40\";s:9:\"wpuf_cond\";a:0:{}}', '', '', 'publish', 'closed', 'closed', '', '526', '', '', '2019-05-22 06:05:42', '2019-05-22 06:05:42', '', 525, 'https://technovicinity.com/development/wordpress/milon/travel/wpuf_input/526/', 0, 'wpuf_input', '', 0),
(527, 1, '2019-05-22 06:05:42', '2019-05-22 06:05:42', 'a:15:{s:10:\"input_type\";s:8:\"textarea\";s:8:\"template\";s:12:\"post_content\";s:8:\"required\";s:3:\"yes\";s:5:\"label\";s:12:\"Post Content\";s:4:\"name\";s:12:\"post_content\";s:7:\"is_meta\";s:2:\"no\";s:4:\"help\";s:0:\"\";s:3:\"css\";s:0:\"\";s:4:\"rows\";s:1:\"5\";s:4:\"cols\";s:2:\"25\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:4:\"rich\";s:5:\"teeny\";s:12:\"insert_image\";s:3:\"yes\";s:9:\"wpuf_cond\";a:0:{}}', '', '', 'publish', 'closed', 'closed', '', '527', '', '', '2019-05-22 06:05:42', '2019-05-22 06:05:42', '', 525, 'https://technovicinity.com/development/wordpress/milon/travel/wpuf_input/527/', 1, 'wpuf_input', '', 0),
(528, 1, '2019-05-22 06:05:42', '2019-05-22 06:05:42', '[wpuf_sub_pack]', 'Subscription', '', 'publish', 'closed', 'closed', '', 'subscription-2', '', '', '2019-05-22 06:05:42', '2019-05-22 06:05:42', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/subscription-2/', 0, 'page', '', 0),
(529, 1, '2019-05-22 06:05:43', '2019-05-22 06:05:43', 'Please select a gateway for payment', 'Payment', '', 'publish', 'closed', 'closed', '', 'payment-2', '', '', '2019-05-22 06:05:43', '2019-05-22 06:05:43', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/payment-2/', 0, 'page', '', 0),
(530, 1, '2019-05-22 06:05:43', '2019-05-22 06:05:43', '<h1>Payment is complete</h1><p>Congratulations, your payment has been completed!</p>', 'Thank You', '', 'publish', 'closed', 'closed', '', 'thank-you-2', '', '', '2019-05-22 06:05:43', '2019-05-22 06:05:43', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/thank-you-2/', 0, 'page', '', 0),
(531, 1, '2019-05-22 06:05:43', '2019-05-22 06:05:43', 'Hi, we have received your order. We will validate the order and will take necessary steps to move forward.', 'Order Received', '', 'publish', 'closed', 'closed', '', 'order-received-2', '', '', '2019-05-22 06:05:43', '2019-05-22 06:05:43', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/order-received-2/', 0, 'page', '', 0),
(532, 1, '2019-05-22 06:05:43', '2019-05-22 06:05:43', '', 'Registration', '', 'publish', 'closed', 'closed', '', 'registration', '', '', '2019-10-26 13:35:59', '2019-10-26 13:35:59', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/wpuf_profile/registration/', 0, 'wpuf_profile', '', 0),
(533, 1, '2019-05-22 06:05:43', '2019-05-22 06:05:43', 'a:13:{s:10:\"input_type\";s:5:\"email\";s:8:\"template\";s:10:\"user_email\";s:8:\"required\";s:3:\"yes\";s:5:\"label\";s:5:\"Email\";s:4:\"name\";s:10:\"user_email\";s:7:\"is_meta\";s:2:\"no\";s:4:\"help\";s:0:\"\";s:3:\"css\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:4:\"size\";s:2:\"40\";s:9:\"wpuf_cond\";a:5:{s:16:\"condition_status\";s:2:\"no\";s:10:\"cond_logic\";s:3:\"all\";s:10:\"cond_field\";a:1:{i:0;s:0:\"\";}s:13:\"cond_operator\";a:1:{i:0;s:1:\"=\";}s:11:\"cond_option\";a:1:{i:0;s:0:\"\";}}s:2:\"id\";i:533;}', '', '', 'publish', 'closed', 'closed', '', '533', '', '', '2019-10-26 13:35:59', '2019-10-26 13:35:59', '', 532, 'https://technovicinity.com/development/wordpress/milon/travel/wpuf_input/533/', 0, 'wpuf_input', '', 0),
(534, 1, '2019-05-22 06:05:43', '2019-05-22 06:05:43', 'a:17:{s:10:\"input_type\";s:8:\"password\";s:8:\"template\";s:8:\"password\";s:8:\"required\";s:3:\"yes\";s:5:\"label\";s:8:\"Password\";s:4:\"name\";s:8:\"password\";s:7:\"is_meta\";s:2:\"no\";s:4:\"help\";s:0:\"\";s:3:\"css\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:4:\"size\";s:2:\"40\";s:10:\"min_length\";s:1:\"5\";s:11:\"repeat_pass\";s:3:\"yes\";s:13:\"re_pass_label\";s:16:\"Confirm Password\";s:13:\"pass_strength\";s:3:\"yes\";s:9:\"wpuf_cond\";N;s:2:\"id\";i:534;}', '', '', 'publish', 'closed', 'closed', '', '534', '', '', '2019-10-26 13:35:59', '2019-10-26 13:35:59', '', 532, 'https://technovicinity.com/development/wordpress/milon/travel/wpuf_input/534/', 1, 'wpuf_input', '', 0),
(535, 1, '2019-05-22 06:05:43', '2019-05-22 06:05:43', '[wpuf_profile type=\"registration\" id=\"532\"]', 'Registration', '', 'publish', 'closed', 'closed', '', 'registration', '', '', '2019-05-22 06:05:43', '2019-05-22 06:05:43', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/registration/', 0, 'page', '', 0),
(536, 1, '2019-05-22 06:07:29', '2019-05-22 06:07:29', '[wpuf-login]', 'Activities', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-05-22 06:07:29', '2019-05-22 06:07:29', '', 13, 'https://technovicinity.com/development/wordpress/milon/travel/13-revision-v1/', 0, 'revision', '', 0),
(537, 1, '2019-05-22 06:14:15', '2019-05-22 06:14:15', '[wpuf_profile type=\"registration\" id=\"532\"]', 'Activities', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-05-22 06:14:15', '2019-05-22 06:14:15', '', 13, 'https://technovicinity.com/development/wordpress/milon/travel/13-revision-v1/', 0, 'revision', '', 0),
(538, 1, '2019-05-22 06:15:12', '2019-05-22 06:15:12', '', 'Contact Form', '', 'publish', 'closed', 'closed', '', 'contact-form', '', '', '2019-05-22 06:15:46', '2019-05-22 06:15:46', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/contact-form/', 0, 'wpuf_contact_form', '', 0),
(542, 1, '2019-05-22 06:15:46', '2019-05-22 06:15:46', 'a:18:{s:8:\"template\";s:10:\"name_field\";s:4:\"name\";s:4:\"name\";s:5:\"label\";s:4:\"Name\";s:8:\"required\";s:3:\"yes\";s:5:\"width\";s:5:\"large\";s:3:\"css\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:4:\"size\";i:40;s:4:\"help\";s:0:\"\";s:7:\"is_meta\";s:3:\"yes\";s:9:\"wpuf_cond\";a:5:{s:16:\"condition_status\";s:2:\"no\";s:10:\"cond_field\";a:0:{}s:13:\"cond_operator\";a:1:{i:0;s:1:\"=\";}s:11:\"cond_option\";a:1:{i:0;s:10:\"- select -\";}s:10:\"cond_logic\";s:3:\"all\";}s:6:\"format\";s:10:\"first-last\";s:10:\"first_name\";a:3:{s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:3:\"sub\";s:5:\"First\";}s:11:\"middle_name\";a:3:{s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:3:\"sub\";s:6:\"Middle\";}s:9:\"last_name\";a:3:{s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:3:\"sub\";s:4:\"Last\";}s:6:\"inline\";s:3:\"yes\";s:9:\"hide_subs\";b:0;}', '', '', 'publish', 'closed', 'closed', '', '542', '', '', '2019-05-22 06:15:46', '2019-05-22 06:15:46', '', 538, 'https://technovicinity.com/development/wordpress/milon/travel/wpuf_input/542/', 0, 'wpuf_input', '', 0),
(543, 1, '2019-05-22 06:15:46', '2019-05-22 06:15:46', 'a:13:{s:8:\"template\";s:13:\"email_address\";s:4:\"name\";s:5:\"email\";s:5:\"label\";s:13:\"Email Address\";s:8:\"required\";s:3:\"yes\";s:5:\"width\";s:5:\"large\";s:3:\"css\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:4:\"size\";i:40;s:4:\"help\";s:0:\"\";s:7:\"is_meta\";s:3:\"yes\";s:9:\"wpuf_cond\";a:5:{s:16:\"condition_status\";s:2:\"no\";s:10:\"cond_field\";a:0:{}s:13:\"cond_operator\";a:1:{i:0;s:1:\"=\";}s:11:\"cond_option\";a:1:{i:0;s:10:\"- select -\";}s:10:\"cond_logic\";s:3:\"all\";}s:9:\"duplicate\";s:0:\"\";}', '', '', 'publish', 'closed', 'closed', '', '543', '', '', '2019-05-22 06:15:46', '2019-05-22 06:15:46', '', 538, 'https://technovicinity.com/development/wordpress/milon/travel/wpuf_input/543/', 1, 'wpuf_input', '', 0),
(544, 1, '2019-05-22 06:15:46', '2019-05-22 06:15:46', 'a:16:{s:8:\"template\";s:14:\"textarea_field\";s:4:\"name\";s:7:\"message\";s:5:\"label\";s:7:\"Message\";s:8:\"required\";s:3:\"yes\";s:5:\"width\";s:5:\"large\";s:3:\"css\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:4:\"size\";i:40;s:4:\"help\";s:0:\"\";s:7:\"is_meta\";s:3:\"yes\";s:9:\"wpuf_cond\";a:5:{s:16:\"condition_status\";s:2:\"no\";s:10:\"cond_field\";a:0:{}s:13:\"cond_operator\";a:1:{i:0;s:1:\"=\";}s:11:\"cond_option\";a:1:{i:0;s:10:\"- select -\";}s:10:\"cond_logic\";s:3:\"all\";}s:16:\"word_restriction\";s:0:\"\";s:4:\"rows\";i:5;s:4:\"cols\";i:25;s:4:\"rich\";s:2:\"no\";}', '', '', 'publish', 'closed', 'closed', '', '544', '', '', '2019-05-22 06:15:46', '2019-05-22 06:15:46', '', 538, 'https://technovicinity.com/development/wordpress/milon/travel/wpuf_input/544/', 2, 'wpuf_input', '', 0),
(545, 1, '2019-05-22 06:16:24', '2019-05-22 06:16:24', '[weforms id=\"538\"]', 'Activities', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-05-22 06:16:24', '2019-05-22 06:16:24', '', 13, 'https://technovicinity.com/development/wordpress/milon/travel/13-revision-v1/', 0, 'revision', '', 0),
(547, 1, '2019-05-22 07:32:33', '2019-05-22 07:32:33', '[wppb-register]', 'Register', '', 'publish', 'closed', 'closed', '', 'register', '', '', '2019-05-22 07:32:33', '2019-05-22 07:32:33', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/register/', 0, 'page', '', 0),
(548, 1, '2019-05-22 07:32:33', '2019-05-22 07:32:33', '[wppb-edit-profile]', 'Edit Profile', '', 'publish', 'closed', 'closed', '', 'edit-profile', '', '', '2019-05-22 07:32:33', '2019-05-22 07:32:33', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/edit-profile/', 0, 'page', '', 0),
(551, 1, '2019-05-22 07:37:32', '2019-05-22 07:37:32', '', 'Administrator', '', 'publish', 'closed', 'closed', '', 'administrator', '', '', '2019-05-22 07:37:32', '2019-05-22 07:37:32', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/wppb-roles-editor/administrator/', 0, 'wppb-roles-editor', '', 0),
(552, 1, '2019-05-22 07:37:32', '2019-05-22 07:37:32', '', 'Author', '', 'publish', 'closed', 'closed', '', 'author', '', '', '2019-05-22 07:37:32', '2019-05-22 07:37:32', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/wppb-roles-editor/author/', 0, 'wppb-roles-editor', '', 0),
(553, 1, '2019-05-22 07:37:32', '2019-05-22 07:37:32', '', 'Blocked', '', 'publish', 'closed', 'closed', '', 'blocked', '', '', '2019-05-22 07:37:32', '2019-05-22 07:37:32', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/wppb-roles-editor/blocked/', 0, 'wppb-roles-editor', '', 0),
(554, 1, '2019-05-22 07:37:32', '2019-05-22 07:37:32', '', 'Booking Editor', '', 'publish', 'closed', 'closed', '', 'booking-editor', '', '', '2019-05-22 07:37:32', '2019-05-22 07:37:32', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/wppb-roles-editor/booking-editor/', 0, 'wppb-roles-editor', '', 0),
(555, 1, '2019-05-22 07:37:32', '2019-05-22 07:37:32', '', 'Booking Package', '', 'publish', 'closed', 'closed', '', 'booking-package', '', '', '2019-05-22 07:37:32', '2019-05-22 07:37:32', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/wppb-roles-editor/booking-package/', 0, 'wppb-roles-editor', '', 0),
(556, 1, '2019-05-22 07:37:33', '2019-05-22 07:37:33', '', 'Contributor', '', 'publish', 'closed', 'closed', '', 'contributor', '', '', '2019-05-22 07:37:33', '2019-05-22 07:37:33', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/wppb-roles-editor/contributor/', 0, 'wppb-roles-editor', '', 0),
(557, 1, '2019-05-22 07:37:33', '2019-05-22 07:37:33', '', 'Customer', '', 'publish', 'closed', 'closed', '', 'customer', '', '', '2019-05-22 07:37:33', '2019-05-22 07:37:33', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/wppb-roles-editor/customer/', 0, 'wppb-roles-editor', '', 0),
(558, 1, '2019-05-22 07:37:33', '2019-05-22 07:37:33', '', 'Editor', '', 'publish', 'closed', 'closed', '', 'editor', '', '', '2019-05-22 07:37:33', '2019-05-22 07:37:33', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/wppb-roles-editor/editor/', 0, 'wppb-roles-editor', '', 0),
(559, 1, '2019-05-22 07:37:33', '2019-05-22 07:37:33', '', 'Hotel Customer', '', 'publish', 'closed', 'closed', '', 'hotel-customer', '', '', '2019-05-22 07:37:33', '2019-05-22 07:37:33', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/wppb-roles-editor/hotel-customer/', 0, 'wppb-roles-editor', '', 0),
(560, 1, '2019-05-22 07:37:33', '2019-05-22 07:37:33', '', 'Hotel Manager', '', 'publish', 'closed', 'closed', '', 'hotel-manager', '', '', '2019-05-22 07:37:33', '2019-05-22 07:37:33', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/wppb-roles-editor/hotel-manager/', 0, 'wppb-roles-editor', '', 0),
(561, 1, '2019-05-22 07:37:33', '2019-05-22 07:37:33', '', 'Hotel Manager', '', 'publish', 'closed', 'closed', '', 'hotel-manager-2', '', '', '2019-05-22 07:37:33', '2019-05-22 07:37:33', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/wppb-roles-editor/hotel-manager-2/', 0, 'wppb-roles-editor', '', 0),
(562, 1, '2019-05-22 07:37:33', '2019-05-22 07:37:33', '', 'Hotel Receptionist', '', 'publish', 'closed', 'closed', '', 'hotel-receptionist', '', '', '2019-05-22 07:37:33', '2019-05-22 07:37:33', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/wppb-roles-editor/hotel-receptionist/', 0, 'wppb-roles-editor', '', 0),
(563, 1, '2019-05-22 07:37:33', '2019-05-22 07:37:33', '', 'Keymaster', '', 'publish', 'closed', 'closed', '', 'keymaster', '', '', '2019-05-22 07:37:33', '2019-05-22 07:37:33', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/wppb-roles-editor/keymaster/', 0, 'wppb-roles-editor', '', 0),
(564, 1, '2019-05-22 07:37:34', '2019-05-22 07:37:34', '', 'Moderator', '', 'publish', 'closed', 'closed', '', 'moderator', '', '', '2019-05-22 07:37:34', '2019-05-22 07:37:34', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/wppb-roles-editor/moderator/', 0, 'wppb-roles-editor', '', 0),
(565, 1, '2019-05-22 07:37:34', '2019-05-22 07:37:34', '', 'Participant', '', 'publish', 'closed', 'closed', '', 'participant', '', '', '2019-05-22 07:37:34', '2019-05-22 07:37:34', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/wppb-roles-editor/participant/', 0, 'wppb-roles-editor', '', 0),
(566, 1, '2019-05-22 07:37:34', '2019-05-22 07:37:34', '', 'Shop manager', '', 'publish', 'closed', 'closed', '', 'shop-manager', '', '', '2019-05-22 07:37:34', '2019-05-22 07:37:34', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/wppb-roles-editor/shop-manager/', 0, 'wppb-roles-editor', '', 0),
(567, 1, '2019-05-22 07:37:34', '2019-05-22 07:37:34', '', 'Spectator', '', 'publish', 'closed', 'closed', '', 'spectator', '', '', '2019-05-22 07:37:34', '2019-05-22 07:37:34', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/wppb-roles-editor/spectator/', 0, 'wppb-roles-editor', '', 0),
(568, 1, '2019-05-22 07:37:34', '2019-05-22 07:37:34', '', 'Subscriber', '', 'publish', 'closed', 'closed', '', 'subscriber', '', '', '2019-05-22 07:37:34', '2019-05-22 07:37:34', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/wppb-roles-editor/subscriber/', 0, 'wppb-roles-editor', '', 0),
(569, 1, '2019-05-22 07:37:34', '2019-05-22 07:37:34', '', 'WP Travel Customer', '', 'publish', 'closed', 'closed', '', 'wp-travel-customer', '', '', '2019-05-22 07:37:34', '2019-05-22 07:37:34', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/wppb-roles-editor/wp-travel-customer/', 0, 'wppb-roles-editor', '', 0),
(570, 1, '2019-05-22 07:37:34', '2019-05-22 07:37:34', '', 'milon', '', 'publish', 'closed', 'closed', '', 'milon', '', '', '2019-05-22 07:37:34', '2019-05-22 07:37:34', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/wppb-roles-editor/milon/', 0, 'wppb-roles-editor', '', 0),
(571, 1, '2019-05-22 07:37:34', '2019-05-22 07:37:34', '', 'taibur', '', 'publish', 'closed', 'closed', '', 'taibur', '', '', '2019-05-22 10:31:44', '2019-05-22 10:31:44', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/wppb-roles-editor/taibur/', 0, 'wppb-roles-editor', '', 0),
(576, 1, '2019-05-23 04:43:59', '2019-05-23 04:43:59', '', 'Umrah', '', 'publish', 'closed', 'closed', '', 'umrah', '', '', '2019-05-30 20:13:49', '2019-05-30 20:13:49', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?p=576', 3, 'nav_menu_item', '', 0),
(578, 1, '2019-05-23 04:45:12', '2019-05-23 04:45:12', '', 'Travel Agency', '', 'publish', 'closed', 'closed', '', 'travel-agency', '', '', '2019-05-23 04:45:12', '2019-05-23 04:45:12', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?page_id=578', 0, 'page', '', 0),
(579, 1, '2019-05-23 04:45:12', '2019-05-23 04:45:12', '', 'Travel Agency', '', 'inherit', 'closed', 'closed', '', '578-revision-v1', '', '', '2019-05-23 04:45:12', '2019-05-23 04:45:12', '', 578, 'https://technovicinity.com/development/wordpress/milon/travel/578-revision-v1/', 0, 'revision', '', 0),
(580, 1, '2019-05-23 04:45:36', '2019-05-23 04:45:36', '<!-- wp:paragraph -->\n<p>\n\n[gdgallery_gallery id_gallery=\"1\"]\n\n</p>\n<!-- /wp:paragraph -->', 'Gallery', '', 'publish', 'closed', 'closed', '', 'gallery', '', '', '2019-05-25 19:18:07', '2019-05-25 19:18:07', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?page_id=580', 0, 'page', '', 0),
(581, 1, '2019-05-23 04:45:36', '2019-05-23 04:45:36', '', 'Gallery', '', 'inherit', 'closed', 'closed', '', '580-revision-v1', '', '', '2019-05-23 04:45:36', '2019-05-23 04:45:36', '', 580, 'https://technovicinity.com/development/wordpress/milon/travel/580-revision-v1/', 0, 'revision', '', 0),
(582, 1, '2019-05-23 04:45:52', '2019-05-23 04:45:52', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2019-05-23 04:45:52', '2019-05-23 04:45:52', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?page_id=582', 0, 'page', '', 0),
(583, 1, '2019-05-23 04:45:52', '2019-05-23 04:45:52', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '582-revision-v1', '', '', '2019-05-23 04:45:52', '2019-05-23 04:45:52', '', 582, 'https://technovicinity.com/development/wordpress/milon/travel/582-revision-v1/', 0, 'revision', '', 0),
(584, 1, '2019-05-23 04:46:41', '2019-05-23 04:46:41', ' ', '', '', 'publish', 'closed', 'closed', '', '584', '', '', '2019-05-30 20:13:49', '2019-05-30 20:13:49', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?p=584', 15, 'nav_menu_item', '', 0),
(585, 1, '2019-05-23 04:46:41', '2019-05-23 04:46:41', ' ', '', '', 'publish', 'closed', 'closed', '', '585', '', '', '2019-05-30 20:13:49', '2019-05-30 20:13:49', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?p=585', 14, 'nav_menu_item', '', 0),
(586, 1, '2019-05-23 04:46:41', '2019-05-23 04:46:41', ' ', '', '', 'publish', 'closed', 'closed', '', '586', '', '', '2019-05-30 20:13:49', '2019-05-30 20:13:49', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?p=586', 13, 'nav_menu_item', '', 0),
(587, 1, '2019-05-23 04:49:05', '2019-05-23 04:49:05', ' ', '', '', 'publish', 'closed', 'closed', '', '587', '', '', '2019-05-23 04:49:05', '2019-05-23 04:49:05', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?p=587', 1, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(588, 1, '2019-05-23 04:49:05', '2019-05-23 04:49:05', ' ', '', '', 'publish', 'closed', 'closed', '', '588', '', '', '2019-05-23 04:49:05', '2019-05-23 04:49:05', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?p=588', 2, 'nav_menu_item', '', 0),
(589, 1, '2019-05-23 04:49:05', '2019-05-23 04:49:05', ' ', '', '', 'publish', 'closed', 'closed', '', '589', '', '', '2019-05-23 04:49:05', '2019-05-23 04:49:05', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?p=589', 3, 'nav_menu_item', '', 0),
(590, 1, '2019-05-23 04:49:05', '2019-05-23 04:49:05', ' ', '', '', 'publish', 'closed', 'closed', '', '590', '', '', '2019-05-23 04:49:05', '2019-05-23 04:49:05', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?p=590', 4, 'nav_menu_item', '', 0),
(591, 1, '2019-05-23 04:49:05', '2019-05-23 04:49:05', ' ', '', '', 'publish', 'closed', 'closed', '', '591', '', '', '2019-05-23 04:49:05', '2019-05-23 04:49:05', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?p=591', 5, 'nav_menu_item', '', 0),
(592, 1, '2019-05-23 04:49:05', '2019-05-23 04:49:05', ' ', '', '', 'publish', 'closed', 'closed', '', '592', '', '', '2019-05-23 04:49:05', '2019-05-23 04:49:05', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?p=592', 6, 'nav_menu_item', '', 0),
(595, 1, '2019-05-24 19:23:17', '2019-05-24 19:23:17', '<span id=\"e18\" class=\"qc_ si29 \">Lowest Prices &amp; Latest Reviews on TripAdvisor®. Cheap Flights. Millions of hotel reviews. Best Places to Eat. Amazing Experiences. Hidden Gems. Candid traveler photos. Vacation Rentals. Easy <b>price</b> comparison. Tours, Attractions + More. Fun Things to Do.</span>\r\n<div id=\"e30\" class=\"kc_  \">\r\n<div id=\"e31\" class=\"kc_  \">\r\n<div id=\"e33\" class=\"kc_ si17 \"></div>\r\n</div>\r\n</div>', 'The 10 BEST Hotels (2019) - Hajj And Umrah', '', 'publish', 'open', 'closed', '', 'the-10-best-hotels-2019-hajj-and-umrah', '', '', '2019-05-24 19:23:17', '2019-05-24 19:23:17', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?post_type=umrah&#038;p=595', 0, 'umrah', '', 0),
(596, 1, '2019-05-24 19:23:54', '2019-05-24 19:23:54', '', '', '', 'publish', 'closed', 'closed', '', 'local-f32e2b9a7df30121f83ee14e50c4f667', '', '', '2019-05-24 19:23:54', '2019-05-24 19:23:54', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/site-review/local-f32e2b9a7df30121f83ee14e50c4f667/', 0, 'site-review', '', 0),
(597, 1, '2019-05-24 19:29:58', '2019-05-24 19:29:58', 'Travel offers, with the best hotels, transfers and tours. Book your holidays. Access the best hotel deals and customized travel <b>packages</b> for your Cuba trip. Circuitos por Cuba. Paquetes a la medida. Havanatur Celimar. Lodging in Cuba. Alojamiento en Cuba. Havanatur Cuba. Transfer in Cuba. Conventions in Cuba. Excursiones por Cuba. Offers in Cuba.', 'Havanatur Cuba - Tour operator Cuba - Tours in Cuba', '', 'publish', 'open', 'closed', '', 'havanatur-cuba-tour-operator-cuba-tours-in-cuba', '', '', '2019-05-24 19:29:58', '2019-05-24 19:29:58', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?post_type=umrah&#038;p=597', 0, 'umrah', '', 0),
(598, 1, '2019-05-24 19:33:10', '2019-05-24 19:33:10', '', '', '', 'publish', 'closed', 'closed', '', 'local-9671663c0ebd768ec56cea070b5d7a61', '', '', '2019-05-24 19:33:10', '2019-05-24 19:33:10', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/site-review/local-9671663c0ebd768ec56cea070b5d7a61/', 0, 'site-review', '', 0),
(599, 1, '2019-05-25 04:08:53', '2019-05-25 04:08:53', 'Cursus faucibus egestas rutrum mauris vulputate consequat ante', 'England, UK', '', 'inherit', 'closed', 'closed', '', '353-autosave-v1', '', '', '2019-05-25 04:08:53', '2019-05-25 04:08:53', '', 353, 'https://technovicinity.com/development/wordpress/milon/travel/353-autosave-v1/', 0, 'revision', '', 0),
(600, 1, '2019-05-25 04:11:43', '2019-05-25 04:11:43', 'faucibus egestas rutrum mauris vulputate consequat ante', 'Newziland', '', 'inherit', 'closed', 'closed', '', '352-autosave-v1', '', '', '2019-05-25 04:11:43', '2019-05-25 04:11:43', '', 352, 'https://technovicinity.com/development/wordpress/milon/travel/352-autosave-v1/', 0, 'revision', '', 0),
(601, 1, '2019-05-25 04:14:21', '2019-05-25 04:14:21', 'Cursus faucibus egestas rutrum mauris vulputate consequat anteCursus faucibus egestas rutrum mauris vulputate consequat ante', 'Russia', '', 'inherit', 'closed', 'closed', '', '337-autosave-v1', '', '', '2019-05-25 04:14:21', '2019-05-25 04:14:21', '', 337, 'https://technovicinity.com/development/wordpress/milon/travel/337-autosave-v1/', 0, 'revision', '', 0),
(602, 1, '2019-05-25 04:17:26', '2019-05-25 04:17:26', 'Cursus faucibus egestas rutrum mauris vulputate consequat anteCursus faucibus egestas rutrum mauris vulputate consequat anteCursus faucibus egestas rutrum mauris vulputate consequat ante', 'Germany', '', 'publish', 'open', 'closed', '', 'germany', '', '', '2019-05-25 04:17:26', '2019-05-25 04:17:26', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?post_type=tours&#038;p=602', 0, 'tours', '', 0),
(603, 1, '2019-05-25 04:17:17', '2019-05-25 04:17:17', '', '_2', '', 'inherit', 'open', 'closed', '', '_2', '', '', '2019-05-25 04:17:17', '2019-05-25 04:17:17', '', 602, 'https://technovicinity.com/development/wordpress/milon/travel/wp-content/uploads/2019/05/2.jpg', 0, 'attachment', 'image/jpeg', 0),
(604, 1, '2019-05-25 04:22:02', '2019-05-25 04:22:02', '', 'o-RUSSIA-VIRTUALPRIDE-facebook-263x197', '', 'inherit', 'open', 'closed', '', 'o-russia-virtualpride-facebook-263x197', '', '', '2019-05-25 04:22:02', '2019-05-25 04:22:02', '', 379, 'https://technovicinity.com/development/wordpress/milon/travel/wp-content/uploads/2019/04/o-RUSSIA-VIRTUALPRIDE-facebook-263x197.jpg', 0, 'attachment', 'image/jpeg', 0),
(607, 1, '2019-05-25 18:10:28', '2019-05-25 18:10:28', '', 'Transportation', '', 'publish', 'closed', 'closed', '', 'transportation', '', '', '2019-05-30 20:13:49', '2019-05-30 20:13:49', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?p=607', 10, 'nav_menu_item', '', 0),
(608, 1, '2019-05-25 18:10:28', '2019-05-25 18:10:28', '', 'Guide', '', 'publish', 'closed', 'closed', '', 'guide', '', '', '2019-05-30 20:13:49', '2019-05-30 20:13:49', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?p=608', 11, 'nav_menu_item', '', 0),
(610, 1, '2019-05-25 18:10:28', '2019-05-25 18:10:28', '', 'Ziyarat', '', 'publish', 'closed', 'closed', '', 'ziyarat', '', '', '2019-05-30 20:13:49', '2019-05-30 20:13:49', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?p=610', 12, 'nav_menu_item', '', 0),
(611, 1, '2019-05-25 19:16:33', '2019-05-25 19:16:33', '<!-- wp:paragraph -->\n<p>\n\nManage your hotel booking services. Perfect for hotels, villas, guest houses, hostels, and apartments of all sizes.\n\n</p>\n<!-- /wp:paragraph -->', 'Manage your hotel booking services', '', 'publish', 'open', 'open', '', 'manage-your-hotel-booking-services', '', '', '2019-05-25 19:16:33', '2019-05-25 19:16:33', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?p=611', 0, 'post', '', 0),
(612, 1, '2019-05-25 19:16:33', '2019-05-25 19:16:33', '<!-- wp:paragraph -->\n<p>\n\nManage your hotel booking services. Perfect for hotels, villas, guest houses, hostels, and apartments of all sizes.\n\n</p>\n<!-- /wp:paragraph -->', 'Manage your hotel booking services', '', 'inherit', 'closed', 'closed', '', '611-revision-v1', '', '', '2019-05-25 19:16:33', '2019-05-25 19:16:33', '', 611, 'https://technovicinity.com/development/wordpress/milon/travel/611-revision-v1/', 0, 'revision', '', 0),
(613, 1, '2019-05-25 19:18:07', '2019-05-25 19:18:07', '<!-- wp:paragraph -->\n<p>\n\n[gdgallery_gallery id_gallery=\"1\"]\n\n</p>\n<!-- /wp:paragraph -->', 'Gallery', '', 'inherit', 'closed', 'closed', '', '580-revision-v1', '', '', '2019-05-25 19:18:07', '2019-05-25 19:18:07', '', 580, 'https://technovicinity.com/development/wordpress/milon/travel/580-revision-v1/', 0, 'revision', '', 0),
(614, 2, '2019-05-25 21:07:50', '2019-05-25 21:07:50', 'lorem ipsum. lorem ipsum. lorem ipsum. lorem ipsum. lorem ipsum. lorem ipsum. lorem ipsum. lorem ipsum. lorem ipsum. lorem ipsum. lorem ipsum. lorem ipsum. lorem ipsum.', 'test umrah package', '', 'publish', 'closed', 'closed', '', 'test-umrah-package', '', '', '2019-05-25 21:07:50', '2019-05-25 21:07:50', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?post_type=umrah&#038;p=614', 0, 'umrah', '', 0),
(615, 0, '2019-05-26 10:14:28', '2019-05-26 10:14:28', '4 star', '', '', 'publish', 'closed', 'closed', '', 'local-ba0e6727ff3ac048b55dfaba52657cbd', '', '', '2019-05-26 10:14:28', '2019-05-26 10:14:28', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/site-review/local-ba0e6727ff3ac048b55dfaba52657cbd/', 0, 'site-review', '', 0),
(616, 0, '2019-05-26 10:14:42', '2019-05-26 10:14:42', '2 star', '', '', 'publish', 'closed', 'closed', '', 'local-721a0f8552b4fd7fa2a3884efcaae4a3', '', '', '2019-05-26 10:14:42', '2019-05-26 10:14:42', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/site-review/local-721a0f8552b4fd7fa2a3884efcaae4a3/', 0, 'site-review', '', 0),
(617, 0, '2019-05-27 04:06:12', '2019-05-27 04:06:12', '2 star', '', '', 'publish', 'closed', 'closed', '', 'local-27a7cc1c4e09c1ad311947b66dbc2e7c', '', '', '2019-05-27 04:06:12', '2019-05-27 04:06:12', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/site-review/local-27a7cc1c4e09c1ad311947b66dbc2e7c/', 0, 'site-review', '', 0),
(623, 1, '2019-05-30 20:11:51', '2019-05-30 20:11:51', '', 'Hajj', '', 'publish', 'closed', 'closed', '', 'hajj', '', '', '2019-05-30 20:11:51', '2019-05-30 20:11:51', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?page_id=623', 0, 'page', '', 0),
(624, 1, '2019-05-30 20:11:51', '2019-05-30 20:11:51', '', 'Hajj', '', 'inherit', 'closed', 'closed', '', '623-revision-v1', '', '', '2019-05-30 20:11:51', '2019-05-30 20:11:51', '', 623, 'https://technovicinity.com/development/wordpress/milon/travel/623-revision-v1/', 0, 'revision', '', 0),
(625, 1, '2019-05-30 20:12:44', '2019-05-30 20:12:44', '', 'Restaurant', '', 'publish', 'closed', 'closed', '', 'restaurant', '', '', '2019-05-30 20:12:44', '2019-05-30 20:12:44', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?page_id=625', 0, 'page', '', 0),
(626, 1, '2019-05-30 20:12:44', '2019-05-30 20:12:44', '', 'Restaurant', '', 'inherit', 'closed', 'closed', '', '625-revision-v1', '', '', '2019-05-30 20:12:44', '2019-05-30 20:12:44', '', 625, 'https://technovicinity.com/development/wordpress/milon/travel/625-revision-v1/', 0, 'revision', '', 0),
(628, 1, '2019-05-30 20:13:49', '2019-05-30 20:13:49', ' ', '', '', 'publish', 'closed', 'closed', '', '628', '', '', '2019-05-30 20:13:49', '2019-05-30 20:13:49', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?p=628', 8, 'nav_menu_item', '', 0),
(629, 1, '2019-05-30 20:13:49', '2019-05-30 20:13:49', ' ', '', '', 'publish', 'closed', 'closed', '', '629', '', '', '2019-05-30 20:13:49', '2019-05-30 20:13:49', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?p=629', 9, 'nav_menu_item', '', 0),
(630, 1, '2019-05-30 20:15:38', '2019-05-30 20:15:38', '21-23 Days Tentative Hajj Package with Fairmont Clock Tower hotel accommodation (Half Board) in Makkah. Hotel Dar Al Hijra Intercon will be the hotel in Madinah. In Azizia Markaz 2 building with sharing four to six people and 3-time dish meal will be provided as well. Air Ticket is not included in the package.', 'Star Kabab & Restaurant', '', 'publish', 'closed', 'closed', '', 'star-kabab-restaurant', '', '', '2019-05-30 20:15:38', '2019-05-30 20:15:38', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?post_type=restaurant&#038;p=630', 0, 'restaurant', '', 0),
(631, 1, '2019-05-30 20:15:33', '2019-05-30 20:15:33', '', 'star-kabab-restaurant', '', 'inherit', 'open', 'closed', '', 'star-kabab-restaurant', '', '', '2019-05-30 20:15:33', '2019-05-30 20:15:33', '', 630, 'https://technovicinity.com/development/wordpress/milon/travel/wp-content/uploads/2019/05/star-kabab-restaurant.jpg', 0, 'attachment', 'image/jpeg', 0),
(632, 1, '2019-05-30 20:17:29', '2019-05-30 20:17:29', '21-23 Days Tentative Hajj Package with Fairmont Clock Tower hotel accommodation (Half Board) in Makkah. Hotel Dar Al Hijra Intercon will be the hotel in Madinah. In Azizia Markaz 2 building with sharing four to six people and 3-time dish meal will be provided as well. Air Ticket is not included in the package.', '21-23 Days Hajj Package', '', 'publish', 'open', 'closed', '', '21-23-days-hajj-package', '', '', '2019-05-30 20:17:29', '2019-05-30 20:17:29', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?post_type=hajj&#038;p=632', 0, 'hajj', '', 0),
(633, 1, '2019-05-30 20:17:19', '2019-05-30 20:17:19', '', '1494489629-hajjpackages-image', '', 'inherit', 'open', 'closed', '', '1494489629-hajjpackages-image', '', '', '2019-05-30 20:17:19', '2019-05-30 20:17:19', '', 632, 'https://technovicinity.com/development/wordpress/milon/travel/wp-content/uploads/2019/05/1494489629-hajjpackages-image.jpg', 0, 'attachment', 'image/jpeg', 0),
(650, 1, '2019-06-02 20:06:56', '2019-06-02 20:06:56', '', 'test', '', 'publish', 'open', 'open', '', 'test', '', '', '2019-06-02 20:07:39', '2019-06-02 20:07:39', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?p=650', 0, 'post', '', 0),
(651, 1, '2019-06-02 20:06:56', '2019-06-02 20:06:56', '', 'test', '', 'inherit', 'closed', 'closed', '', '650-revision-v1', '', '', '2019-06-02 20:06:56', '2019-06-02 20:06:56', '', 650, 'https://technovicinity.com/development/wordpress/milon/travel/650-revision-v1/', 0, 'revision', '', 0),
(663, 1, '2019-06-14 16:02:56', '2019-06-14 16:02:56', '', 'aaaaa', '', 'publish', 'open', 'open', '', 'aaaaa', '', '', '2019-06-14 16:02:56', '2019-06-14 16:02:56', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?p=663', 0, 'post', '', 0),
(668, 1, '2019-06-14 16:02:56', '2019-06-14 16:02:56', '', 'aaaaa', '', 'inherit', 'closed', 'closed', '', '663-revision-v1', '', '', '2019-06-14 16:02:56', '2019-06-14 16:02:56', '', 663, 'https://localhost/lipan/wordpress/milonvi/663-revision-v1/', 0, 'revision', '', 0),
(670, 1, '2019-06-14 16:12:52', '2019-06-14 16:12:52', '', 'test', '', 'inherit', 'closed', 'closed', '', '650-autosave-v1', '', '', '2019-06-14 16:12:52', '2019-06-14 16:12:52', '', 650, 'https://localhost/lipan/wordpress/milonvi/650-autosave-v1/', 0, 'revision', '', 0),
(684, 1, '2019-06-16 15:32:12', '2019-06-16 15:32:12', '', 'Gallery', '', 'publish', 'closed', 'closed', '', 'gallery', '', '', '2019-06-16 15:32:12', '2019-06-16 15:32:12', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/wp-types-term-group/gallery/', 0, 'wp-types-term-group', '', 0),
(685, 1, '2019-06-16 15:38:46', '2019-06-16 15:38:46', '', 'Main Hotel Fields', '', 'publish', 'closed', 'closed', '', 'main-hotel-fields', '', '', '2019-06-16 15:55:04', '2019-06-16 15:55:04', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/wp-types-term-group/main-hotel-fields/', 0, 'wp-types-term-group', '', 0),
(688, 1, '2019-06-16 16:02:23', '2019-06-16 16:02:23', 'Executive Room With Lake ViewExecutive Room With Lake ViewExecutive Room With Lake ViewExecutive Room With Lake ViewExecutive Room With Lake ViewExecutive Room With Lake ViewExecutive Room With Lake ViewExecutive Room With Lake View', 'Executive Room With Lake View', '', 'publish', 'open', 'open', '', 'executive-room-with-lake-view', '', '', '2019-06-16 16:17:41', '2019-06-16 16:17:41', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?post_type=available-rooms&#038;p=688', 0, 'available-rooms', '', 0),
(689, 1, '2019-06-16 16:02:17', '2019-06-16 16:02:17', '', '242-150x150', '', 'inherit', 'open', 'closed', '', '242-150x150', '', '', '2019-06-16 16:02:17', '2019-06-16 16:02:17', '', 688, 'https://technovicinity.com/development/wordpress/milon/travel/wp-content/uploads/2019/06/242-150x150.jpg', 0, 'attachment', 'image/jpeg', 0),
(690, 1, '2019-06-16 16:02:23', '2019-06-16 16:02:23', 'Executive Room With Lake ViewExecutive Room With Lake ViewExecutive Room With Lake ViewExecutive Room With Lake ViewExecutive Room With Lake ViewExecutive Room With Lake ViewExecutive Room With Lake ViewExecutive Room With Lake View', 'Executive Room With Lake View', '', 'inherit', 'closed', 'closed', '', '688-revision-v1', '', '', '2019-06-16 16:02:23', '2019-06-16 16:02:23', '', 688, 'https://technovicinity.com/development/wordpress/milon/travel/688-revision-v1/', 0, 'revision', '', 0),
(699, 1, '2019-06-24 17:15:40', '2019-06-24 17:15:40', '', 'Main Hotel Search', '', 'publish', 'closed', 'closed', '', 'main-hotel-search', '', '', '2019-07-04 15:23:12', '2019-07-04 15:23:12', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?page_id=699', 0, 'page', '', 0),
(700, 1, '2019-06-24 17:15:40', '2019-06-24 17:15:40', '', 'Hotel details', '', 'inherit', 'closed', 'closed', '', '699-revision-v1', '', '', '2019-06-24 17:15:40', '2019-06-24 17:15:40', '', 699, 'https://technovicinity.com/development/wordpress/milon/travel/699-revision-v1/', 0, 'revision', '', 0),
(702, 1, '2019-06-28 15:07:46', '2019-06-28 15:07:46', '', 'Hotel Details', '', 'publish', 'closed', 'closed', '', 'hotel-details', '', '', '2019-07-04 16:15:07', '2019-07-04 16:15:07', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?page_id=702', 0, 'page', '', 0),
(703, 1, '2019-06-28 15:07:46', '2019-06-28 15:07:46', '', 'Hotel Search', '', 'inherit', 'closed', 'closed', '', '702-revision-v1', '', '', '2019-06-28 15:07:46', '2019-06-28 15:07:46', '', 702, 'https://technovicinity.com/development/wordpress/milon/travel/702-revision-v1/', 0, 'revision', '', 0),
(709, 1, '2019-06-28 15:21:35', '2019-06-28 15:21:35', '', 'Main Hotel Search', '', 'inherit', 'closed', 'closed', '', '699-revision-v1', '', '', '2019-06-28 15:21:35', '2019-06-28 15:21:35', '', 699, 'https://technovicinity.com/development/wordpress/milon/travel/699-revision-v1/', 0, 'revision', '', 0),
(710, 1, '2019-06-28 15:21:59', '2019-06-28 15:21:59', '', 'List Of Hotels', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2019-06-28 15:21:59', '2019-06-28 15:21:59', '', 19, 'https://technovicinity.com/development/wordpress/milon/travel/19-revision-v1/', 0, 'revision', '', 0),
(712, 1, '2019-06-28 15:23:53', '2019-06-28 15:23:53', '', 'Available Room Search Templates', '', 'inherit', 'closed', 'closed', '', '702-revision-v1', '', '', '2019-06-28 15:23:53', '2019-06-28 15:23:53', '', 702, 'https://technovicinity.com/development/wordpress/milon/travel/702-revision-v1/', 0, 'revision', '', 0),
(713, 1, '2019-06-30 17:56:56', '2019-06-30 17:56:56', '', 'Hotel Booking', '', 'publish', 'closed', 'closed', '', 'hotel-booking', '', '', '2019-07-04 15:10:04', '2019-07-04 15:10:04', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?page_id=713', 0, 'page', '', 0),
(714, 1, '2019-06-30 17:56:56', '2019-06-30 17:56:56', '', 'Hotel Booking', '', 'inherit', 'closed', 'closed', '', '713-revision-v1', '', '', '2019-06-30 17:56:56', '2019-06-30 17:56:56', '', 713, 'https://technovicinity.com/development/wordpress/milon/travel/713-revision-v1/', 0, 'revision', '', 0),
(716, 1, '2019-07-04 14:30:21', '2019-07-04 14:30:21', '', 'Room details', '', 'publish', 'closed', 'closed', '', 'room-details', '', '', '2019-07-04 15:15:43', '2019-07-04 15:15:43', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?page_id=716', 0, 'page', '', 0),
(717, 1, '2019-07-04 14:30:21', '2019-07-04 14:30:21', '', 'Room details', '', 'inherit', 'closed', 'closed', '', '716-revision-v1', '', '', '2019-07-04 14:30:21', '2019-07-04 14:30:21', '', 716, 'https://technovicinity.com/development/wordpress/milon/travel/716-revision-v1/', 0, 'revision', '', 0),
(721, 1, '2019-07-04 15:00:17', '2019-07-04 15:00:17', '', 'Hotel Details', '', 'inherit', 'closed', 'closed', '', '702-revision-v1', '', '', '2019-07-04 15:00:17', '2019-07-04 15:00:17', '', 702, 'https://technovicinity.com/development/wordpress/milon/travel/702-revision-v1/', 0, 'revision', '', 0),
(725, 1, '2019-07-08 17:45:11', '2019-07-08 17:45:11', '', 'Car Details', '', 'publish', 'closed', 'closed', '', 'car-details', '', '', '2019-07-08 17:45:13', '2019-07-08 17:45:13', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?page_id=725', 0, 'page', '', 0),
(726, 1, '2019-07-08 17:45:11', '2019-07-08 17:45:11', '', 'Car Details', '', 'inherit', 'closed', 'closed', '', '725-revision-v1', '', '', '2019-07-08 17:45:11', '2019-07-08 17:45:11', '', 725, 'https://technovicinity.com/development/wordpress/milon/travel/725-revision-v1/', 0, 'revision', '', 0),
(727, 1, '2019-07-08 17:48:22', '2019-07-08 17:48:22', '', 'Car Result', '', 'publish', 'closed', 'closed', '', 'car-result', '', '', '2019-07-08 18:32:58', '2019-07-08 18:32:58', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?page_id=727', 0, 'page', '', 0),
(728, 1, '2019-07-08 17:48:22', '2019-07-08 17:48:22', '', 'Car Search', '', 'inherit', 'closed', 'closed', '', '727-revision-v1', '', '', '2019-07-08 17:48:22', '2019-07-08 17:48:22', '', 727, 'https://technovicinity.com/development/wordpress/milon/travel/727-revision-v1/', 0, 'revision', '', 0),
(729, 1, '2019-07-08 17:52:44', '2019-07-08 17:52:44', '', 'Car Booking', '', 'publish', 'closed', 'closed', '', 'car-booking', '', '', '2019-07-08 17:53:11', '2019-07-08 17:53:11', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?page_id=729', 0, 'page', '', 0),
(730, 1, '2019-07-08 17:52:44', '2019-07-08 17:52:44', '', 'Car Booking', '', 'inherit', 'closed', 'closed', '', '729-revision-v1', '', '', '2019-07-08 17:52:44', '2019-07-08 17:52:44', '', 729, 'https://technovicinity.com/development/wordpress/milon/travel/729-revision-v1/', 0, 'revision', '', 0),
(731, 1, '2019-07-08 18:32:58', '2019-07-08 18:32:58', '', 'Car Result', '', 'inherit', 'closed', 'closed', '', '727-revision-v1', '', '', '2019-07-08 18:32:58', '2019-07-08 18:32:58', '', 727, 'https://technovicinity.com/development/wordpress/milon/travel/727-revision-v1/', 0, 'revision', '', 0),
(732, 1, '2019-07-09 15:21:37', '2019-07-09 15:21:37', '', 'Paypal', '', 'publish', 'closed', 'closed', '', 'paypal', '', '', '2019-07-09 15:22:21', '2019-07-09 15:22:21', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?page_id=732', 0, 'page', '', 0),
(733, 1, '2019-07-09 15:21:37', '2019-07-09 15:21:37', '', 'Paypal', '', 'inherit', 'closed', 'closed', '', '732-revision-v1', '', '', '2019-07-09 15:21:37', '2019-07-09 15:21:37', '', 732, 'https://technovicinity.com/development/wordpress/milon/travel/732-revision-v1/', 0, 'revision', '', 0),
(735, 1, '2019-07-12 17:40:04', '2019-07-12 17:40:04', '', 'Tour Result', '', 'publish', 'closed', 'closed', '', 'tour-result', '', '', '2019-07-12 17:49:33', '2019-07-12 17:49:33', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?page_id=735', 0, 'page', '', 0),
(736, 1, '2019-07-12 17:40:04', '2019-07-12 17:40:04', '', 'Tour Result', '', 'inherit', 'closed', 'closed', '', '735-revision-v1', '', '', '2019-07-12 17:40:04', '2019-07-12 17:40:04', '', 735, 'https://technovicinity.com/development/wordpress/milon/travel/735-revision-v1/', 0, 'revision', '', 0),
(737, 1, '2019-07-12 18:24:52', '2019-07-12 18:24:52', '', 'Tour Details', '', 'publish', 'closed', 'closed', '', 'tour-details', '', '', '2019-07-12 18:25:23', '2019-07-12 18:25:23', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?page_id=737', 0, 'page', '', 0),
(738, 1, '2019-07-12 18:24:52', '2019-07-12 18:24:52', '', 'Tour Details', '', 'inherit', 'closed', 'closed', '', '737-revision-v1', '', '', '2019-07-12 18:24:52', '2019-07-12 18:24:52', '', 737, 'https://technovicinity.com/development/wordpress/milon/travel/737-revision-v1/', 0, 'revision', '', 0),
(742, 1, '2019-07-16 15:47:44', '2019-07-16 15:47:44', '', 'Tour Booking', '', 'publish', 'closed', 'closed', '', 'tour-booking', '', '', '2019-07-16 15:50:03', '2019-07-16 15:50:03', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?page_id=742', 0, 'page', '', 0),
(743, 1, '2019-07-16 15:47:44', '2019-07-16 15:47:44', '', 'Tour Booking', '', 'inherit', 'closed', 'closed', '', '742-revision-v1', '', '', '2019-07-16 15:47:44', '2019-07-16 15:47:44', '', 742, 'https://technovicinity.com/development/wordpress/milon/travel/742-revision-v1/', 0, 'revision', '', 0),
(745, 1, '2019-07-29 19:56:32', '2019-07-29 19:56:32', '', 'Activity Details', '', 'publish', 'closed', 'closed', '', 'activity-details', '', '', '2019-07-29 19:56:32', '2019-07-29 19:56:32', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?page_id=745', 0, 'page', '', 0),
(746, 1, '2019-07-29 19:56:32', '2019-07-29 19:56:32', '', 'Activity Details', '', 'inherit', 'closed', 'closed', '', '745-revision-v1', '', '', '2019-07-29 19:56:32', '2019-07-29 19:56:32', '', 745, 'https://technovicinity.com/development/wordpress/milon/travel/745-revision-v1/', 0, 'revision', '', 0),
(747, 1, '2019-07-29 19:57:15', '2019-07-29 19:57:15', '', 'Activity Result', '', 'publish', 'closed', 'closed', '', 'activity-result', '', '', '2019-07-29 19:57:15', '2019-07-29 19:57:15', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?page_id=747', 0, 'page', '', 0),
(748, 1, '2019-07-29 19:57:15', '2019-07-29 19:57:15', '', 'Activity Result', '', 'inherit', 'closed', 'closed', '', '747-revision-v1', '', '', '2019-07-29 19:57:15', '2019-07-29 19:57:15', '', 747, 'https://technovicinity.com/development/wordpress/milon/travel/747-revision-v1/', 0, 'revision', '', 0),
(749, 1, '2019-07-29 19:57:51', '2019-07-29 19:57:51', '', 'Activity Booking', '', 'publish', 'closed', 'closed', '', 'activity-booking', '', '', '2019-07-29 19:57:51', '2019-07-29 19:57:51', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?page_id=749', 0, 'page', '', 0),
(750, 1, '2019-07-29 19:57:51', '2019-07-29 19:57:51', '', 'Activity Booking', '', 'inherit', 'closed', 'closed', '', '749-revision-v1', '', '', '2019-07-29 19:57:51', '2019-07-29 19:57:51', '', 749, 'https://technovicinity.com/development/wordpress/milon/travel/749-revision-v1/', 0, 'revision', '', 0),
(751, 1, '2019-07-29 19:58:14', '2019-07-29 19:58:14', '', 'Car Details', '', 'publish', 'closed', 'closed', '', 'car-details-2', '', '', '2019-07-29 19:58:14', '2019-07-29 19:58:14', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?page_id=751', 0, 'page', '', 0),
(752, 1, '2019-07-29 19:58:14', '2019-07-29 19:58:14', '', 'Car Details', '', 'inherit', 'closed', 'closed', '', '751-revision-v1', '', '', '2019-07-29 19:58:14', '2019-07-29 19:58:14', '', 751, 'https://technovicinity.com/development/wordpress/milon/travel/751-revision-v1/', 0, 'revision', '', 0),
(753, 1, '2019-07-29 19:58:42', '2019-07-29 19:58:42', '', 'Car Result', '', 'publish', 'closed', 'closed', '', 'car-result-2', '', '', '2019-07-29 19:58:42', '2019-07-29 19:58:42', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?page_id=753', 0, 'page', '', 0),
(754, 1, '2019-07-29 19:58:42', '2019-07-29 19:58:42', '', 'Car Result', '', 'inherit', 'closed', 'closed', '', '753-revision-v1', '', '', '2019-07-29 19:58:42', '2019-07-29 19:58:42', '', 753, 'https://technovicinity.com/development/wordpress/milon/travel/753-revision-v1/', 0, 'revision', '', 0),
(755, 1, '2019-07-29 19:59:11', '2019-07-29 19:59:11', '', 'Car Booking', '', 'publish', 'closed', 'closed', '', 'car-booking-2', '', '', '2019-07-29 19:59:11', '2019-07-29 19:59:11', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?page_id=755', 0, 'page', '', 0),
(756, 1, '2019-07-29 19:59:11', '2019-07-29 19:59:11', '', 'Car Booking', '', 'inherit', 'closed', 'closed', '', '755-revision-v1', '', '', '2019-07-29 19:59:11', '2019-07-29 19:59:11', '', 755, 'https://technovicinity.com/development/wordpress/milon/travel/755-revision-v1/', 0, 'revision', '', 0),
(757, 1, '2019-07-29 19:59:49', '2019-07-29 19:59:49', '<!-- wp:image -->\n<figure class=\"wp-block-image\"><img alt=\"\"/></figure>\n<!-- /wp:image -->', 'Guide Details', '', 'publish', 'closed', 'closed', '', 'guide-details', '', '', '2019-07-29 19:59:59', '2019-07-29 19:59:59', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?page_id=757', 0, 'page', '', 0),
(758, 1, '2019-07-29 19:59:49', '2019-07-29 19:59:49', '', 'Guide Details', '', 'inherit', 'closed', 'closed', '', '757-revision-v1', '', '', '2019-07-29 19:59:49', '2019-07-29 19:59:49', '', 757, 'https://technovicinity.com/development/wordpress/milon/travel/757-revision-v1/', 0, 'revision', '', 0),
(759, 1, '2019-07-29 19:59:59', '2019-07-29 19:59:59', '<!-- wp:image -->\n<figure class=\"wp-block-image\"><img alt=\"\"/></figure>\n<!-- /wp:image -->', 'Guide Details', '', 'inherit', 'closed', 'closed', '', '757-revision-v1', '', '', '2019-07-29 19:59:59', '2019-07-29 19:59:59', '', 757, 'https://technovicinity.com/development/wordpress/milon/travel/757-revision-v1/', 0, 'revision', '', 0),
(760, 1, '2019-07-29 20:00:33', '2019-07-29 20:00:33', '', 'Guide Result', '', 'publish', 'closed', 'closed', '', 'guide-result', '', '', '2019-07-29 20:00:33', '2019-07-29 20:00:33', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?page_id=760', 0, 'page', '', 0),
(761, 1, '2019-07-29 20:00:33', '2019-07-29 20:00:33', '', 'Guide Result', '', 'inherit', 'closed', 'closed', '', '760-revision-v1', '', '', '2019-07-29 20:00:33', '2019-07-29 20:00:33', '', 760, 'https://technovicinity.com/development/wordpress/milon/travel/760-revision-v1/', 0, 'revision', '', 0),
(762, 1, '2019-07-29 20:00:59', '2019-07-29 20:00:59', '', 'Guide Booking', '', 'publish', 'closed', 'closed', '', 'guide-booking', '', '', '2019-07-29 20:00:59', '2019-07-29 20:00:59', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?page_id=762', 0, 'page', '', 0),
(763, 1, '2019-07-29 20:00:59', '2019-07-29 20:00:59', '', 'Guide Booking', '', 'inherit', 'closed', 'closed', '', '762-revision-v1', '', '', '2019-07-29 20:00:59', '2019-07-29 20:00:59', '', 762, 'https://technovicinity.com/development/wordpress/milon/travel/762-revision-v1/', 0, 'revision', '', 0),
(764, 1, '2019-07-29 20:01:36', '2019-07-29 20:01:36', '', 'Transport Result', '', 'publish', 'closed', 'closed', '', 'transport-result', '', '', '2019-07-29 20:01:36', '2019-07-29 20:01:36', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?page_id=764', 0, 'page', '', 0),
(765, 1, '2019-07-29 20:01:36', '2019-07-29 20:01:36', '', 'Transport Result', '', 'inherit', 'closed', 'closed', '', '764-revision-v1', '', '', '2019-07-29 20:01:36', '2019-07-29 20:01:36', '', 764, 'https://technovicinity.com/development/wordpress/milon/travel/764-revision-v1/', 0, 'revision', '', 0),
(766, 1, '2019-07-29 20:01:57', '2019-07-29 20:01:57', '', 'Transport Details', '', 'publish', 'closed', 'closed', '', 'transport-details', '', '', '2019-07-29 20:01:57', '2019-07-29 20:01:57', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?page_id=766', 0, 'page', '', 0),
(767, 1, '2019-07-29 20:01:57', '2019-07-29 20:01:57', '', 'Transport Details', '', 'inherit', 'closed', 'closed', '', '766-revision-v1', '', '', '2019-07-29 20:01:57', '2019-07-29 20:01:57', '', 766, 'https://technovicinity.com/development/wordpress/milon/travel/766-revision-v1/', 0, 'revision', '', 0),
(768, 1, '2019-07-29 20:02:13', '2019-07-29 20:02:13', '', 'Transport Booking', '', 'publish', 'closed', 'closed', '', 'transport-booking', '', '', '2019-07-29 20:02:13', '2019-07-29 20:02:13', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?page_id=768', 0, 'page', '', 0),
(769, 1, '2019-07-29 20:02:13', '2019-07-29 20:02:13', '', 'Transport Booking', '', 'inherit', 'closed', 'closed', '', '768-revision-v1', '', '', '2019-07-29 20:02:13', '2019-07-29 20:02:13', '', 768, 'https://technovicinity.com/development/wordpress/milon/travel/768-revision-v1/', 0, 'revision', '', 0),
(770, 1, '2019-07-29 20:02:37', '2019-07-29 20:02:37', '', 'Restaurant Result', '', 'publish', 'closed', 'closed', '', 'restaurant-result', '', '', '2019-07-29 20:02:37', '2019-07-29 20:02:37', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?page_id=770', 0, 'page', '', 0),
(771, 1, '2019-07-29 20:02:37', '2019-07-29 20:02:37', '', 'Restaurant Result', '', 'inherit', 'closed', 'closed', '', '770-revision-v1', '', '', '2019-07-29 20:02:37', '2019-07-29 20:02:37', '', 770, 'https://technovicinity.com/development/wordpress/milon/travel/770-revision-v1/', 0, 'revision', '', 0),
(772, 1, '2019-07-29 20:03:02', '2019-07-29 20:03:02', '', 'Restaurant Details', '', 'publish', 'closed', 'closed', '', 'restaurant-details', '', '', '2019-07-29 20:03:02', '2019-07-29 20:03:02', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?page_id=772', 0, 'page', '', 0),
(773, 1, '2019-07-29 20:03:02', '2019-07-29 20:03:02', '', 'Restaurant Details', '', 'inherit', 'closed', 'closed', '', '772-revision-v1', '', '', '2019-07-29 20:03:02', '2019-07-29 20:03:02', '', 772, 'https://technovicinity.com/development/wordpress/milon/travel/772-revision-v1/', 0, 'revision', '', 0),
(774, 1, '2019-07-29 20:03:49', '2019-07-29 20:03:49', '', 'Restaurant Booking', '', 'publish', 'closed', 'closed', '', 'restaurant-booking', '', '', '2019-07-29 20:03:49', '2019-07-29 20:03:49', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?page_id=774', 0, 'page', '', 0),
(775, 1, '2019-07-29 20:03:49', '2019-07-29 20:03:49', '', 'Restaurant Booking', '', 'inherit', 'closed', 'closed', '', '774-revision-v1', '', '', '2019-07-29 20:03:49', '2019-07-29 20:03:49', '', 774, 'https://technovicinity.com/development/wordpress/milon/travel/774-revision-v1/', 0, 'revision', '', 0),
(778, 1, '2019-08-29 14:44:01', '2019-08-29 14:44:01', '[wpuf-login]', 'Login', '', 'inherit', 'closed', 'closed', '', '524-revision-v1', '', '', '2019-08-29 14:44:01', '2019-08-29 14:44:01', '', 524, 'https://technovicinity.com/development/wordpress/milon/travel/524-revision-v1/', 0, 'revision', '', 0),
(781, 3, '2019-09-11 05:31:59', '0000-00-00 00:00:00', '', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-09-11 05:31:59', '2019-09-11 05:31:59', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?post_type=restaurant&#038;p=781', 0, 'restaurant', '', 0),
(785, 1, '2019-09-24 15:37:14', '2019-09-24 15:37:14', '', 'kissclipart-line-art-clipart-logo-intel-brand-2b3657f114ee05b4', '', 'inherit', 'open', 'closed', '', 'kissclipart-line-art-clipart-logo-intel-brand-2b3657f114ee05b4', '', '', '2019-09-24 15:37:14', '2019-09-24 15:37:14', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/wp-content/uploads/2019/09/kissclipart-line-art-clipart-logo-intel-brand-2b3657f114ee05b4.jpg', 0, 'attachment', 'image/jpeg', 0),
(792, 2, '2019-10-26 15:09:53', '2019-10-26 15:09:53', '', 'Test Umrah For Agency', '', 'publish', 'open', 'closed', '', 'test-umrah-for-agency', '', '', '2019-10-26 15:09:53', '2019-10-26 15:09:53', '', 0, 'https://technovicinity.com/development/wordpress/milon/travel/?post_type=umrah&#038;p=792', 0, 'umrah', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(7, 73, 'product_count_product_cat', '7'),
(8, 85, 'order', '0'),
(9, 85, 'display_type', ''),
(10, 85, 'thumbnail_id', '0'),
(11, 86, 'order', '0'),
(12, 86, 'display_type', ''),
(13, 86, 'thumbnail_id', '0'),
(14, 87, 'order', '0'),
(15, 87, 'display_type', ''),
(16, 87, 'thumbnail_id', '0'),
(17, 88, 'order', '0'),
(18, 88, 'display_type', ''),
(19, 88, 'thumbnail_id', '0'),
(20, 100, 'product_count_no_of_days', '2'),
(21, 99, 'product_count_package_class', '3'),
(22, 89, 'product_count_package_city', '2'),
(23, 94, 'product_count_price_range', '0'),
(24, 101, 'product_count_no_of_days', '1'),
(25, 98, 'product_count_package_class', '0'),
(26, 91, 'product_count_package_city', '1'),
(27, 104, 'product_count_product_tag', '0'),
(28, 95, 'product_count_price_range', '1'),
(29, 87, 'product_count_product_cat', '5'),
(30, 116, 'product_count_hotel_name', '1'),
(31, 115, 'product_count_hotel_name', '1'),
(32, 96, 'product_count_price_range', '2'),
(33, 119, 'wp_travel_trip_type_image_id', '351'),
(34, 120, 'wp_travel_trip_type_image_id', '348'),
(35, 121, 'wp_travel_trip_type_image_id', '338'),
(36, 122, 'wp_travel_trip_type_image_id', '328'),
(37, 151, 'hb_max_number_of_adults', '2'),
(38, 150, 'hb_max_number_of_adults', '1'),
(39, 160, 'service_type', 'accommodation'),
(40, 212, 'checkintest', 'aaaa'),
(41, 212, '_checkintest', 'field_5cf2c0a34fdc6'),
(42, 212, 'checkouttest', '631'),
(43, 212, '_checkouttest', 'field_5cf2c0edc08bc'),
(44, 213, 'hotels_image', '631'),
(45, 213, '_hotels_image', 'field_5cf40b564a434'),
(46, 213, 'hotels_check_in', '20190606'),
(47, 213, '_hotels_check_in', 'field_5cf4184eb20be'),
(48, 213, 'hotels_check_out', '6:00 AM - 12:00 AM'),
(49, 213, '_hotels_check_out', 'field_5cf41874b20bf'),
(50, 213, 'cancelled_prepayment', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(51, 213, '_cancelled_prepayment', 'field_5cf418c3b20c0'),
(52, 213, 'children_and_extrabed', 'All children are wellcome\r\nFree ! Lorem Ipsum is simply dummy text of the printing and typesetting industry\r\n\r\n\r\nFree ! Lorem Ipsum is simply dummy text of the printing and typesetting industry\r\n\r\n\r\nFree ! Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(53, 213, '_children_and_extrabed', 'field_5cf418f5b20c1'),
(54, 213, 'pets', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(55, 213, '_pets', 'field_5cf41909b20c2'),
(56, 213, 'card_eccepted_at_this_property', '347'),
(57, 213, '_card_eccepted_at_this_property', 'field_5cf4191ab20c3'),
(58, 214, 'hotels_image', ''),
(59, 214, '_hotels_image', 'field_5cf40b564a434'),
(60, 214, 'hotels_check_in', ''),
(61, 214, '_hotels_check_in', 'field_5cf4184eb20be'),
(62, 214, 'hotels_check_out', ''),
(63, 214, '_hotels_check_out', 'field_5cf41874b20bf'),
(64, 214, 'cancelled_prepayment', ''),
(65, 214, '_cancelled_prepayment', 'field_5cf418c3b20c0'),
(66, 214, 'children_and_extrabed', ''),
(67, 214, '_children_and_extrabed', 'field_5cf418f5b20c1'),
(68, 214, 'pets', ''),
(69, 214, '_pets', 'field_5cf41909b20c2'),
(70, 214, 'card_eccepted_at_this_property', ''),
(71, 214, '_card_eccepted_at_this_property', 'field_5cf4191ab20c3'),
(72, 215, 'hotels_image', ''),
(73, 215, '_hotels_image', 'field_5cf40b564a434'),
(74, 215, 'hotels_check_in', ''),
(75, 215, '_hotels_check_in', 'field_5cf4184eb20be'),
(76, 215, 'hotels_check_out', ''),
(77, 215, '_hotels_check_out', 'field_5cf41874b20bf'),
(78, 215, 'cancelled_prepayment', ''),
(79, 215, '_cancelled_prepayment', 'field_5cf418c3b20c0'),
(80, 215, 'children_and_extrabed', ''),
(81, 215, '_children_and_extrabed', 'field_5cf418f5b20c1'),
(82, 215, 'pets', ''),
(83, 215, '_pets', 'field_5cf41909b20c2'),
(84, 215, 'card_eccepted_at_this_property', ''),
(85, 215, '_card_eccepted_at_this_property', 'field_5cf4191ab20c3'),
(86, 216, 'hotels_image', ''),
(87, 216, '_hotels_image', 'field_5cf40b564a434'),
(88, 216, 'hotels_check_in', ''),
(89, 216, '_hotels_check_in', 'field_5cf4184eb20be'),
(90, 216, 'hotels_check_out', ''),
(91, 216, '_hotels_check_out', 'field_5cf41874b20bf'),
(92, 216, 'cancelled_prepayment', ''),
(93, 216, '_cancelled_prepayment', 'field_5cf418c3b20c0'),
(94, 216, 'children_and_extrabed', ''),
(95, 216, '_children_and_extrabed', 'field_5cf418f5b20c1'),
(96, 216, 'pets', ''),
(97, 216, '_pets', 'field_5cf41909b20c2'),
(98, 216, 'card_eccepted_at_this_property', ''),
(99, 216, '_card_eccepted_at_this_property', 'field_5cf4191ab20c3'),
(100, 216, 'hotel_price', ''),
(101, 216, '_hotel_price', 'field_5d03caa6a5bf3'),
(102, 216, 'hotel_ratings', ''),
(103, 216, '_hotel_ratings', 'field_5d03e21e2b599'),
(104, 216, 'hotel_locations', ''),
(105, 216, '_hotel_locations', 'field_5d03e2522b59a'),
(123, 216, 'wpcf-main_hotel_image', 'https://technovicinity.com/development/wordpress/milon/travel/wp-content/uploads/2019/05/star-kabab-restaurant.jpg'),
(124, 216, 'wpcf-check_in', '1559347200'),
(125, 216, 'wpcf-check_out', '1559433600'),
(126, 216, 'wpcf-hotel_location', 'DHaka'),
(127, 216, 'wpcf-hotel_email', 'm.rabiul09@gmail.com'),
(128, 216, 'wpcf-hotel_phone_no', '01717677966'),
(129, 216, 'wpcf-hotel_price', '450'),
(130, 216, 'wpcf-hotel_website', 'www.radison.com'),
(131, 216, 'wpcf-cancelled_prepayment', 'Assign a parent term to create a hierarchy. The term Jazz, for example, would be the parent of Bebop and Big Band.'),
(132, 216, 'wpcf-children_and_extrabed', 'Assign a parent term to create a hierarchy. The term Jazz, for example, would be the parent of Bebop and Big Band.'),
(133, 216, 'wpcf-hotel_pets', 'www'),
(134, 216, 'wpcf-hotel_gallery_1', 'https://technovicinity.com/development/wordpress/milon/travel/wp-content/uploads/2019/03/800x600-1.jpg'),
(135, 216, 'wpcf-hotel_gallery_2', 'https://technovicinity.com/development/wordpress/milon/travel/wp-content/uploads/2019/03/7478-143x71-1.jpg'),
(136, 216, 'wpcf-hotel_gallery_3', 'https://technovicinity.com/development/wordpress/milon/travel/wp-content/uploads/2019/03/br1-1.jpg'),
(137, 216, 'wpcf-hotel_gallery_4', 'https://technovicinity.com/development/wordpress/milon/travel/wp-content/uploads/2019/03/800x600-1.jpg'),
(138, 216, 'wpcf-hotel_gallery_5', 'https://technovicinity.com/development/wordpress/milon/travel/wp-content/uploads/2019/02/thumb.jpg'),
(139, 216, 'wpcf-hotel_gallery_6', 'https://technovicinity.com/development/wordpress/milon/travel/wp-content/uploads/2019/04/air-berlin-128x50.png');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'main_menu', 'main_menu', 0),
(4, 'test', 'test', 0),
(5, 'fgff', 'fgfdg', 0),
(6, 'ghgfhgfh', 'hghg', 0),
(7, 'dsfdfsd', 'fdgfdg', 0),
(8, '5 Star', '5-star', 0),
(9, '4 Star', '4-star', 0),
(10, '3 Star', '3-star', 0),
(11, '2 Star', '2-star', 0),
(12, '1 Star', '1star', 0),
(13, 'Rating 1', 'rating-1', 0),
(14, 'Rating 2', 'rating-2', 0),
(15, 'Rating 3', 'rating-3', 0),
(16, 'Rating 4', 'rating-4', 0),
(17, 'Rating 5', 'rating-5', 0),
(18, 'Ziyarat', 'ziyarat', 0),
(19, 'Transport', 'transport', 0),
(20, 'Visa', 'visa', 0),
(21, 'Ticket', 'ticket', 0),
(22, 'Best Price', 'best-price', 0),
(23, 'Discount', 'discount', 0),
(24, 'BMU Selected', 'bmu-selected', 0),
(25, 'Premium Packages', 'premium-packages', 0),
(26, 'test', 'test', 0),
(27, 'fghfgh', 'fghfgh', 0),
(28, 'kjkdzvxc', 'vcxvxcv', 0),
(29, 'mmjjj', 'mmjjj', 0),
(30, 'Lahore', 'lahore', 0),
(31, 'Karachi', 'karachi', 0),
(32, 'Peshawar', 'peshawar', 0),
(33, 'Gujranwala', 'gujranwala', 0),
(34, 'Faisalabad', 'faisalabad', 0),
(35, 'Sonar Bangla', 'sonar-bangla', 0),
(36, 'Boishakhi', 'boishakhi', 0),
(37, 'Rupali', 'rupali', 0),
(38, '15000-20000', '15000-20000', 0),
(39, '25000-30000', '25000-30000', 0),
(40, '35000-40000', '35000-40000', 0),
(41, '0 to 7 days', '0-to-7-days', 0),
(42, '8 to 15 days', '8-to-15-days', 0),
(43, '16 to 21 days', '16-to-21-days', 0),
(44, '22 to 28 days', '22-to-28-days', 0),
(45, 'Sonarbangla', 'sonarbangla', 0),
(46, 'Bisakhi', 'bisakhi', 0),
(47, '10000-15000', '10000-15000', 0),
(48, '15000-20000', '15000-20000', 0),
(49, '20000-25000', '20000-25000', 0),
(50, 'test', 'test', 0),
(51, '0 to 7 days', '0-to-7-days', 0),
(52, '8 to 15 days', '8-to-15-days', 0),
(53, '16 to 21 days', '16-to-21-days', 0),
(54, '22 to 28 days', '22-to-28-days', 0),
(55, '5 Star', '5-star', 0),
(56, '4 Star', '4-star', 0),
(57, '3 Star', '3-star', 0),
(58, '2 Star', '2-star', 0),
(59, 'Economy', 'economy', 0),
(60, 'simple', 'simple', 0),
(61, 'grouped', 'grouped', 0),
(62, 'variable', 'variable', 0),
(63, 'external', 'external', 0),
(64, 'exclude-from-search', 'exclude-from-search', 0),
(65, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(66, 'featured', 'featured', 0),
(67, 'outofstock', 'outofstock', 0),
(68, 'rated-1', 'rated-1', 0),
(69, 'rated-2', 'rated-2', 0),
(70, 'rated-3', 'rated-3', 0),
(71, 'rated-4', 'rated-4', 0),
(72, 'rated-5', 'rated-5', 0),
(73, 'Uncategorized', 'uncategorized', 0),
(81, '0 to 7 days', '0-to-7-days', 0),
(82, '8 to 15 days', '8-to-15-days', 0),
(83, '16 to 21 days', '16-to-21-days', 0),
(84, '22 to 28 days', '22-to-28-days', 0),
(85, '4 Star', '4-star', 0),
(86, '5 Star', '5-star', 0),
(87, '3 Star', '3-star', 0),
(88, 'Economy', 'economy', 0),
(89, 'Lahore', 'lahore', 0),
(90, 'Karachi', 'karachi', 0),
(91, 'Islamabad', 'islamabad', 0),
(92, 'Peshawar', 'peshawar', 0),
(93, 'Gujranwala', 'gujranwala', 0),
(94, '3016-5012', '3016-5012', 0),
(95, '6000-7050', '6000-7050', 0),
(96, '7500-10000', '7500-10000', 0),
(97, '5 Star', '5-star', 0),
(98, '4 Star', '4-star', 0),
(99, '3 Star', '3-star', 0),
(100, '0 to 7 days', '0-to-7-days', 0),
(101, '16 to 21 days', '16-to-21-days', 0),
(102, '22 to 28 days', '22-to-28-days', 0),
(103, '8 to 15 days', '8-to-15-days', 0),
(104, 'test', 'test', 0),
(105, 'Premium ,Standard', 'premium-standard', 0),
(106, 'InterContinental New', 'intercontinental-new', 0),
(107, '2 Pieces of Luggage', '2-pieces-of-luggage', 0),
(108, '3 Doors', '3-doors', 0),
(109, 'India', 'india', 0),
(110, 'Usa', 'usa', 0),
(111, 'Dhaka', 'dhaka', 0),
(112, 'Usa', 'usa', 0),
(113, 'India', 'india', 0),
(114, 'Uk', 'uk', 0),
(115, 'Hotel Ibis Yanbu Saudi Arabia', 'hotel-ibis-yanbu-saudi-arabia', 0),
(116, 'Fairmont Makkah Clock Royal Tower', 'fairmont-makkah-clock-royal-tower', 0),
(117, 'Hotel Pullman Zamzam Makkah', 'hotel-pullman-zamzam-makkah', 0),
(118, 'Makkah Millennium Hotel', 'makkah-millennium-hotel', 0),
(119, 'test', 'test', 0),
(120, 'test1', 'test1', 0),
(121, 'test3', 'test3', 0),
(122, 'test4', 'test4', 0),
(123, 'dfdfd', 'dfdfd', 0),
(124, 'dfdf', 'dfdf', 0),
(125, '20000-30000', '20000-30000', 0),
(126, '30000-40000', '30000-40000', 0),
(127, '40000-50000', '40000-50000', 0),
(130, '3 Star', '3-star', 0),
(131, '4 Star', '4-star', 0),
(132, '5 Star', '5-star', 0),
(133, 'Non-stop', 'non-stop', 0),
(134, '1 Stop', '1-stop', 0),
(135, '2 Stop', '2-stop', 0),
(136, '1 Stop', '1-stop', 0),
(137, '2 Stop', '2-stop', 0),
(138, 'Non-stop', 'non-stop', 0),
(139, 'Airport Transport', 'airport-transport', 0),
(140, 'Outdoor pool (all year)', 'outdoor-pool-all-year', 0),
(141, 'Shuttle Bus Service', 'shuttle-bus-service', 0),
(142, '1 Star', '1-star', 0),
(143, '2 Star', '2-star', 0),
(144, '3 Star', '3-star', 0),
(145, '4 Star', '4-star', 0),
(146, '5 Star', '5-star', 0),
(147, 'Banglar alo', 'banglar-alo', 0),
(148, 'Lorem Ipsum', 'lorem-ipsum', 0),
(149, 'super', 'super', 0),
(150, 'Single', 'single', 0),
(151, 'Double', 'double', 0),
(152, '1 type Room', '1-type-room', 0),
(153, '2 Type room', '2-type-room', 0),
(154, '1 type Room', '1-type-room', 0),
(155, '2 Type room', '2-type-room', 0),
(156, 'Banglar alo', 'banglar-alo', 0),
(157, 'Double', 'double', 0),
(158, 'Single', 'single', 0),
(159, 'lakzary', 'lakzary', 0),
(160, 'lakzary', 'lakzary', 0),
(161, '1 type Room', '1-type-room', 0),
(162, 'Afghanistan', 'afghanistan', 0),
(163, 'Albania', 'albania', 0),
(164, 'Australia', 'australia', 0),
(165, 'Bangladesh', 'bangladesh', 0),
(166, 'Brazil', 'brazil', 0),
(167, 'Canada', 'canada', 0),
(168, 'Afghanistan', 'afghanistan', 0),
(169, 'Albania', 'albania', 0),
(170, 'Australia', 'australia', 0),
(171, 'Bangladesh', 'bangladesh', 0),
(172, 'Brazil', 'brazil', 0),
(173, '1', '1', 0),
(174, '2', '2', 0),
(175, '3', '3', 0),
(176, '4', '4', 0),
(177, '5', '5', 0),
(178, '6', '6', 0),
(179, '7', '7', 0),
(180, '8', '8', 0),
(181, '9', '9', 0),
(182, '10', '10', 0),
(183, 'Round Trip', 'round-trip', 0),
(184, '04/09/2019', '04-09-2019', 0),
(185, '04/08/2019', '04-08-2019', 0),
(186, '04/07/2019', '04-07-2019', 0),
(187, '04/06/2019', '04-06-2019', 0),
(188, '04/05/2019', '04-05-2019', 0),
(190, '04/10/2019', '04-10-2019', 0),
(191, '1stop', '1stop', 0),
(192, 'bangladesh', 'bangladesh', 0),
(193, 'india', 'india', 0),
(194, '2stop', '2stop', 0),
(195, 'One Way', 'one-way', 0),
(196, '10000-20000', '10000-20000', 0),
(197, '2000-30000', '2000-30000', 0),
(198, '30000-40000', '30000-40000', 0),
(199, 'Afghanistan', 'afghanistan', 0),
(200, 'Albania', 'albania', 0),
(201, 'Canada', 'canada', 0),
(202, 'Brazil', 'brazil', 0),
(203, 'Bangladesh', 'bangladesh', 0),
(204, 'footer_menu', 'footer_menu', 0),
(205, 'India', 'india', 0),
(206, '20000-30000', '20000-30000', 0),
(207, 'Newziland', 'newziland', 0),
(208, 'Russia', 'russia', 0),
(209, '25000-30000', '25000-30000', 0),
(210, 'Germany', 'germany', 0),
(211, '30000-40000', '30000-40000', 0),
(212, 'aaaa', 'aaa', 0),
(213, 'Holiday Inn Melbourne', 'holiday-inn-melbourne', 0),
(214, 'hotel taxonomy', 'hotel-taxonomy', 0),
(215, 'newtax', 'newtax', 0),
(216, 'Main Hotels Details', 'main-hotels-1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termsmeta`
--

CREATE TABLE `wp_termsmeta` (
  `meta_id` bigint(20) NOT NULL,
  `terms_id` bigint(20) NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(34, 2, 0),
(35, 2, 0),
(169, 7, 0),
(169, 27, 0),
(181, 10, 0),
(181, 15, 0),
(181, 20, 0),
(181, 22, 0),
(188, 30, 0),
(188, 45, 0),
(188, 47, 0),
(188, 50, 0),
(188, 51, 0),
(188, 58, 0),
(191, 30, 0),
(191, 47, 0),
(191, 51, 0),
(191, 58, 0),
(196, 30, 0),
(196, 46, 0),
(196, 47, 0),
(196, 51, 0),
(196, 57, 0),
(196, 90, 0),
(196, 95, 0),
(196, 98, 0),
(196, 101, 0),
(196, 118, 0),
(264, 33, 0),
(264, 60, 0),
(264, 73, 0),
(264, 89, 0),
(264, 96, 0),
(264, 99, 0),
(264, 100, 0),
(264, 115, 0),
(267, 34, 0),
(267, 60, 0),
(267, 71, 0),
(267, 87, 0),
(267, 91, 0),
(267, 95, 0),
(267, 99, 0),
(267, 101, 0),
(267, 116, 0),
(306, 106, 0),
(306, 107, 0),
(306, 109, 0),
(324, 106, 0),
(324, 107, 0),
(324, 110, 0),
(337, 111, 0),
(337, 125, 0),
(337, 130, 0),
(337, 131, 0),
(337, 134, 0),
(337, 137, 0),
(337, 208, 0),
(337, 209, 0),
(343, 106, 0),
(343, 107, 0),
(343, 109, 0),
(350, 60, 0),
(350, 87, 0),
(350, 89, 0),
(350, 96, 0),
(350, 99, 0),
(350, 100, 0),
(352, 113, 0),
(352, 127, 0),
(352, 132, 0),
(352, 134, 0),
(352, 135, 0),
(352, 207, 0),
(353, 114, 0),
(353, 126, 0),
(353, 131, 0),
(353, 133, 0),
(353, 205, 0),
(353, 206, 0),
(360, 119, 0),
(360, 120, 0),
(360, 122, 0),
(360, 123, 0),
(360, 124, 0),
(375, 34, 0),
(375, 136, 0),
(375, 139, 0),
(375, 140, 0),
(375, 141, 0),
(375, 142, 0),
(378, 33, 0),
(378, 137, 0),
(378, 139, 0),
(378, 144, 0),
(378, 146, 0),
(378, 196, 0),
(378, 201, 0),
(379, 31, 0),
(379, 138, 0),
(379, 140, 0),
(379, 145, 0),
(379, 146, 0),
(379, 196, 0),
(379, 203, 0),
(380, 30, 0),
(380, 137, 0),
(380, 140, 0),
(380, 144, 0),
(394, 149, 0),
(416, 152, 0),
(439, 154, 0),
(439, 159, 0),
(459, 60, 0),
(459, 87, 0),
(460, 60, 0),
(460, 87, 0),
(461, 60, 0),
(461, 87, 0),
(462, 60, 0),
(462, 73, 0),
(463, 60, 0),
(463, 73, 0),
(464, 60, 0),
(464, 73, 0),
(465, 60, 0),
(465, 73, 0),
(466, 60, 0),
(466, 73, 0),
(467, 60, 0),
(467, 73, 0),
(475, 125, 0),
(475, 162, 0),
(475, 171, 0),
(475, 174, 0),
(475, 188, 0),
(475, 193, 0),
(475, 194, 0),
(475, 195, 0),
(476, 126, 0),
(476, 165, 0),
(476, 172, 0),
(476, 174, 0),
(476, 183, 0),
(476, 190, 0),
(476, 191, 0),
(476, 192, 0),
(483, 166, 0),
(483, 171, 0),
(483, 174, 0),
(483, 185, 0),
(483, 191, 0),
(483, 192, 0),
(483, 195, 0),
(576, 2, 0),
(584, 2, 0),
(585, 2, 0),
(586, 2, 0),
(587, 204, 0),
(588, 204, 0),
(589, 204, 0),
(590, 204, 0),
(591, 204, 0),
(592, 204, 0),
(595, 91, 0),
(595, 95, 0),
(595, 97, 0),
(595, 100, 0),
(595, 115, 0),
(597, 89, 0),
(597, 96, 0),
(597, 99, 0),
(597, 103, 0),
(597, 116, 0),
(602, 131, 0),
(602, 135, 0),
(602, 210, 0),
(602, 211, 0),
(607, 2, 0),
(608, 2, 0),
(610, 2, 0),
(611, 1, 0),
(614, 92, 0),
(614, 97, 0),
(614, 103, 0),
(614, 118, 0),
(628, 2, 0),
(629, 2, 0),
(650, 1, 0),
(650, 213, 0),
(663, 1, 0),
(688, 216, 0),
(792, 89, 0),
(792, 90, 0),
(792, 91, 0),
(792, 92, 0),
(792, 93, 0),
(792, 95, 0),
(792, 97, 0),
(792, 100, 0),
(792, 115, 0),
(792, 116, 0),
(792, 117, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 4),
(2, 2, 'nav_menu', '', 0, 11),
(4, 4, 'Airline company', '', 0, 0),
(5, 5, 'Room Type', 'gfdgfd', 0, 0),
(6, 6, 'Room Type', 'hgfhgfh', 0, 0),
(7, 7, 'Category', '', 0, 1),
(8, 8, 'Package Class', '', 0, 0),
(9, 9, 'Package Class', '', 0, 0),
(10, 10, 'Package Class', '', 0, 1),
(11, 11, 'Package Class', '', 0, 0),
(12, 12, 'Package Class', '', 0, 0),
(13, 13, 'Expert Rating', '', 0, 0),
(14, 14, 'Expert Rating', '', 0, 0),
(15, 15, 'Expert Rating', '', 0, 1),
(16, 16, 'Expert Rating', '', 0, 0),
(17, 17, 'Expert Rating', '', 0, 0),
(18, 18, 'Room Facilities', '', 0, 0),
(19, 19, 'Room Facilities', '', 0, 0),
(20, 20, 'Room Facilities', '', 0, 1),
(21, 21, 'Room Facilities', '', 0, 0),
(22, 22, 'Promotions', '', 0, 1),
(23, 23, 'Promotions', '', 0, 0),
(24, 24, 'Promotions', '', 0, 0),
(25, 25, 'Promotions', '', 0, 0),
(26, 26, 'RoomType', '', 0, 0),
(27, 27, 'Category', '', 0, 1),
(28, 28, 'post_tag', 'vxcvxcvxcvcx', 0, 0),
(29, 29, 'post_tag', '', 0, 0),
(30, 30, 'Location', '', 0, 1),
(31, 31, 'Location', '', 0, 1),
(32, 32, 'Location', '', 0, 0),
(33, 33, 'Location', '', 0, 1),
(34, 34, 'Location', '', 0, 1),
(35, 35, 'Hotel Name', '', 0, 0),
(36, 36, 'Hotel Name', '', 0, 0),
(37, 37, 'Hotel Name', '', 0, 0),
(38, 38, 'Price Range', '', 0, 0),
(39, 39, 'Price Range', '', 0, 0),
(40, 40, 'Price Range', '', 0, 0),
(41, 41, 'No of Days', '', 0, 0),
(42, 42, 'No of Days', '', 0, 0),
(43, 43, 'No of Days', '', 0, 0),
(44, 44, 'No of Days', '', 0, 0),
(45, 45, 'HotelName', '', 0, 1),
(46, 46, 'HotelName', '', 0, 1),
(47, 47, 'PriceRange', '', 0, 3),
(48, 48, 'PriceRange', '', 0, 0),
(49, 49, 'PriceRange', '', 0, 0),
(50, 50, 'RoomFacilities', '', 0, 1),
(51, 51, 'NoofDays', '', 0, 3),
(52, 52, 'NoofDays', '', 0, 0),
(53, 53, 'NoofDays', '', 0, 0),
(54, 54, 'NoofDays', '', 0, 0),
(55, 55, 'PackageClass', '', 0, 0),
(56, 56, 'PackageClass', '', 0, 0),
(57, 57, 'PackageClass', '', 0, 1),
(58, 58, 'PackageClass', '', 0, 2),
(59, 59, 'PackageClass', '', 0, 0),
(60, 60, 'product_type', '', 0, 12),
(61, 61, 'product_type', '', 0, 0),
(62, 62, 'product_type', '', 0, 0),
(63, 63, 'product_type', '', 0, 0),
(64, 64, 'product_visibility', '', 0, 0),
(65, 65, 'product_visibility', '', 0, 0),
(66, 66, 'product_visibility', '', 0, 0),
(67, 67, 'product_visibility', '', 0, 0),
(68, 68, 'product_visibility', '', 0, 0),
(69, 69, 'product_visibility', '', 0, 0),
(70, 70, 'product_visibility', '', 0, 0),
(71, 71, 'product_visibility', '', 0, 1),
(72, 72, 'product_visibility', '', 0, 0),
(73, 73, 'product_cat', '', 0, 7),
(81, 81, 'product_tag', '', 0, 0),
(82, 82, 'product_tag', '', 0, 0),
(83, 83, 'product_tag', '', 0, 0),
(84, 84, 'product_tag', '', 0, 0),
(85, 85, 'product_cat', '', 0, 0),
(86, 86, 'product_cat', '', 0, 0),
(87, 87, 'product_cat', '', 0, 5),
(88, 88, 'product_cat', '', 0, 0),
(89, 89, 'package_city', '', 0, 2),
(90, 90, 'package_city', '', 0, 2),
(91, 91, 'package_city', '', 0, 2),
(92, 92, 'package_city', '', 0, 2),
(93, 93, 'package_city', '', 0, 1),
(94, 94, 'price_range', '', 0, 0),
(95, 95, 'price_range', '', 0, 3),
(96, 96, 'price_range', '', 0, 1),
(97, 97, 'package_class', '', 0, 3),
(98, 98, 'package_class', '', 0, 1),
(99, 99, 'package_class', '', 0, 1),
(100, 100, 'no_of_days', '', 0, 2),
(101, 101, 'no_of_days', '', 0, 1),
(102, 102, 'no_of_days', '', 0, 0),
(103, 103, 'no_of_days', '', 0, 2),
(104, 104, 'product_tag', '', 0, 0),
(105, 105, 'Car Category', '', 0, 0),
(106, 106, 'CarsName', '', 0, 3),
(107, 107, 'CarsFeatures', '', 0, 3),
(108, 108, 'CarsFeatures', '', 0, 0),
(109, 109, 'CarsLocation', '', 0, 2),
(110, 110, 'CarsLocation', '', 0, 1),
(111, 111, 'tour_categories', '', 0, 1),
(112, 112, 'tour_categories', '', 0, 0),
(113, 113, 'tour_categories', '', 0, 1),
(114, 114, 'tour_categories', '', 0, 1),
(115, 115, 'hotel_name', '', 0, 2),
(116, 116, 'hotel_name', '', 0, 2),
(117, 117, 'hotel_name', '', 0, 1),
(118, 118, 'hotel_name', '', 0, 2),
(119, 119, 'itinerary_types', 'dfdsfsdfdfds', 0, 1),
(120, 120, 'travel_locations', 'fdffsdf', 0, 1),
(121, 121, 'travel_keywords', 'dfdfdffd', 0, 0),
(122, 122, 'activity', 'dfdfdfds', 0, 1),
(123, 123, 'travel_locations', '', 120, 1),
(124, 124, 'travel_locations', '', 123, 1),
(125, 125, 'price', '', 0, 1),
(126, 126, 'price', '', 0, 1),
(127, 127, 'price', '', 0, 1),
(130, 130, 'tourhotelname', '', 0, 1),
(131, 131, 'tourhotelname', '', 0, 3),
(132, 132, 'tourhotelname', '', 0, 1),
(133, 133, 'facilities', '', 0, 1),
(134, 134, 'facilities', '', 0, 2),
(135, 135, 'facilities', '', 0, 2),
(136, 136, 'departuretime', '', 0, 1),
(137, 137, 'departuretime', '', 0, 1),
(138, 138, 'departuretime', '', 0, 1),
(139, 139, 'hotelfacilities', '', 0, 2),
(140, 140, 'hotelfacilities', '', 0, 3),
(141, 141, 'hotelfacilities', '', 0, 1),
(142, 142, 'hotelrating', '', 0, 1),
(143, 143, 'hotelrating', '', 0, 0),
(144, 144, 'hotelrating', '', 0, 2),
(145, 145, 'hotelrating', '', 0, 1),
(146, 146, 'hotelrating', '', 0, 2),
(147, 147, 'mphb_room_type_category', 'Easily realign text to components with text alignment classes. Ambitioni dedisse scripsisse iudicaretur. Cras mattis iudicium purus sit amet fermentum.', 0, 0),
(148, 148, 'mphb_room_type_tag', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 0, 0),
(149, 149, 'mphb_room_type_facility', '', 0, 1),
(150, 150, 'hb_room_capacity', '', 0, 0),
(151, 151, 'hb_room_capacity', '', 0, 0),
(152, 152, 'hb_room_type', '', 0, 1),
(153, 153, 'hb_room_type', '', 0, 0),
(154, 154, 'wb_tax_1_star', '', 0, 1),
(155, 155, 'wb_tax_1_star', '', 0, 0),
(156, 156, 'wb_hotel_room_type', '', 0, 0),
(157, 157, 'wb_hotel_room_facilities', '', 0, 0),
(158, 158, 'wb_tour_type', '', 0, 0),
(159, 159, 'wpbooking_amenity', '', 0, 1),
(160, 160, 'wpbooking_extra_service', '', 0, 0),
(161, 161, 'hotel_amenity', '', 0, 0),
(162, 162, 'locationto', '', 0, 1),
(163, 163, 'locationto', '', 0, 0),
(164, 164, 'locationto', '', 0, 0),
(165, 165, 'locationto', '', 0, 1),
(166, 166, 'locationto', '', 0, 1),
(167, 167, 'locationto', '', 0, 0),
(168, 168, 'locationform', '', 0, 0),
(169, 169, 'locationform', '', 0, 0),
(170, 170, 'locationform', '', 0, 0),
(171, 171, 'locationform', '', 0, 2),
(172, 172, 'locationform', '', 0, 1),
(173, 173, 'passenger', '', 0, 0),
(174, 174, 'passenger', '', 0, 3),
(175, 175, 'passenger', '', 0, 0),
(176, 176, 'passenger', '', 0, 0),
(177, 177, 'passenger', '', 0, 0),
(178, 178, 'passenger', '', 0, 0),
(179, 179, 'passenger', '', 0, 0),
(180, 180, 'passenger', '', 0, 0),
(181, 181, 'passenger', '', 0, 0),
(182, 182, 'passenger', '', 0, 0),
(183, 183, 'roundtrip', '', 0, 1),
(184, 184, 'departuredate', '', 0, 0),
(185, 185, 'departuredate', '', 0, 1),
(186, 186, 'departuredate', '', 0, 0),
(187, 187, 'departuredate', '', 0, 0),
(188, 188, 'departuredate', '', 0, 1),
(190, 190, 'departuredate', '', 0, 1),
(191, 191, 'stops', '', 0, 2),
(192, 192, 'airlines', '', 0, 2),
(193, 193, 'airlines', '', 0, 1),
(194, 194, 'stops', '', 0, 1),
(195, 195, 'roundtrip', '', 0, 2),
(196, 196, 'hotelprice', '', 0, 2),
(197, 197, 'hotelprice', '', 0, 0),
(198, 198, 'hotelprice', '', 0, 0),
(199, 199, 'hotellocation', '', 0, 0),
(200, 200, 'hotellocation', '', 0, 0),
(201, 201, 'hotellocation', '', 0, 1),
(202, 202, 'hotellocation', '', 0, 0),
(203, 203, 'hotellocation', '', 0, 1),
(204, 204, 'nav_menu', '', 0, 6),
(205, 205, 'Tourlocation', '', 0, 1),
(206, 206, 'Tourprice', '', 0, 1),
(207, 207, 'Tourlocation', '', 0, 1),
(208, 208, 'Tourlocation', '', 0, 1),
(209, 209, 'Tourprice', '', 0, 1),
(210, 210, 'Tourlocation', '', 0, 1),
(211, 211, 'Tourprice', '', 0, 1),
(212, 212, 'category', 'aaaa', 0, 0),
(213, 213, 'hotels', 'robii ', 0, 1),
(214, 214, 'hotels', '', 0, 0),
(215, 215, 'destino', '', 0, 0),
(216, 216, 'main_hotel_informations', 'Assign a parent term to create a hierarchy. The term Jazz, for example, would be the parent of Bebop and Big Band.Assign a parent term to create a hierarchy. The term Jazz, for example, would be the parent of Bebop and Big Band.Assign a parent term to create a hierarchy. The term Jazz, for example, would be the parent of Bebop and Big Band.Assign a parent term to create a hierarchy. The term Jazz, for example, would be the parent of Bebop and Big Band.', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_toolset_post_guid_id`
--

CREATE TABLE `wp_toolset_post_guid_id` (
  `guid` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', 'Lipan'),
(3, 1, 'last_name', 'Dutta'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:14:{s:13:\"administrator\";b:1;s:13:\"bbp_keymaster\";b:1;s:26:\"wpcf_custom_post_type_view\";b:1;s:26:\"wpcf_custom_post_type_edit\";b:1;s:33:\"wpcf_custom_post_type_edit_others\";b:1;s:25:\"wpcf_custom_taxonomy_view\";b:1;s:25:\"wpcf_custom_taxonomy_edit\";b:1;s:32:\"wpcf_custom_taxonomy_edit_others\";b:1;s:22:\"wpcf_custom_field_view\";b:1;s:22:\"wpcf_custom_field_edit\";b:1;s:29:\"wpcf_custom_field_edit_others\";b:1;s:25:\"wpcf_user_meta_field_view\";b:1;s:25:\"wpcf_user_meta_field_edit\";b:1;s:32:\"wpcf_user_meta_field_edit_others\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,wp_travel_menu_order_changes,wp_travel_new_trips_menu,theme_editor_notice'),
(15, 1, 'show_welcome_panel', '0'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '793'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:10:\"58.84.32.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:23:\"add-post-type-portfolio\";i:1;s:19:\"add-post-type-offer\";i:2;s:12:\"add-post_tag\";}'),
(21, 1, 'nav_menu_recently_edited', '2'),
(22, 1, 'wp_r_tru_u_x', 'a:2:{s:2:\"id\";s:0:\"\";s:7:\"expires\";i:86400;}'),
(23, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(24, 1, 'wp_user-settings-time', '1558757203'),
(25, 1, 'ignore_redux_blast_1550567399', '1'),
(26, 1, 'closedpostboxes_umrah', 'a:0:{}'),
(27, 1, 'metaboxhidden_umrah', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(28, 1, 'meta-box-order_umrah', 'a:3:{s:4:\"side\";s:107:\"submitdiv,Locationdiv,PackageClassdiv,HotelNamediv,PriceRangediv,NoofDaysdiv,RoomFacilitiesdiv,postimagediv\";s:6:\"normal\";s:52:\"umrah,postexcerpt,slugdiv,commentstatusdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(29, 1, 'screen_layout_umrah', '2'),
(30, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:2:{s:32:\"d6baf65e0b240ce177cf70da146c8dc8\";a:11:{s:3:\"key\";s:32:\"d6baf65e0b240ce177cf70da146c8dc8\";s:10:\"product_id\";i:264;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:5;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:5;s:8:\"line_tax\";i:0;}s:32:\"eda80a3d5b344bc40f3bc04f65b7a357\";a:11:{s:3:\"key\";s:32:\"eda80a3d5b344bc40f3bc04f65b7a357\";s:10:\"product_id\";i:267;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:5;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:5;s:8:\"line_tax\";i:0;}}}'),
(31, 1, 'closedpostboxes_product', 'a:0:{}'),
(32, 1, 'metaboxhidden_product', 'a:0:{}'),
(33, 1, 'wplc_ma_agent', '1'),
(34, 1, 'wplc_chat_agent_online', '1551523967'),
(35, 1, 'wc_last_active', '1558396800'),
(37, 1, 'meta-box-order_product', 'a:3:{s:4:\"side\";s:131:\"submitdiv,no_of_daysdiv,package_classdiv,package_citydiv,price_rangediv,tagsdiv-product_tag,postimagediv,woocommerce-product-images\";s:6:\"normal\";s:63:\"product,postexcerpt,woocommerce-product-data,postcustom,slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(38, 1, 'screen_layout_product', '2'),
(40, 1, 'meta-box-order_hotelhajj', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:87:\"submitdiv,hotelfacilitiesdiv,postimagediv,Hotellocationdiv,Hotelratingdiv,Hotelpricediv\";s:6:\"normal\";s:68:\"hotelhajj,postexcerpt,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(41, 1, 'screen_layout_hotelhajj', '2'),
(44, 1, 'closedpostboxes_mphb_room_type', 'a:1:{i:0;s:10:\"attributes\";}'),
(45, 1, 'metaboxhidden_mphb_room_type', 'a:0:{}'),
(46, 1, 'dismissed_update_notice', '1'),
(47, 1, 'dismissed_no_secure_connection_notice', '1'),
(49, 2, 'nickname', 'taibur'),
(50, 2, 'first_name', 'taibur'),
(51, 2, 'last_name', 'milon'),
(52, 2, 'description', ''),
(53, 2, 'rich_editing', 'true'),
(54, 2, 'syntax_highlighting', 'true'),
(55, 2, 'comment_shortcuts', 'false'),
(56, 2, 'admin_color', 'fresh'),
(57, 2, 'use_ssl', '0'),
(58, 2, 'show_admin_bar_front', 'true'),
(59, 2, 'locale', ''),
(60, 2, 'wp_capabilities', 'a:1:{s:6:\"taibur\";b:1;}'),
(61, 2, 'wp_user_level', '0'),
(62, 2, 'dismissed_wp_pointers', 'wp496_privacy,wp_travel_menu_order_changes,wp_travel_new_trips_menu'),
(64, 2, 'wc_last_active', '1557878400'),
(66, 2, 'wp_dashboard_quick_press_last_post_id', '795'),
(67, 2, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(71, 2, 'closedpostboxes_dashboard', 'a:0:{}'),
(72, 2, 'metaboxhidden_dashboard', 'a:2:{i:0;s:18:\"dashboard_activity\";i:1;s:17:\"dashboard_primary\";}'),
(73, 2, 'ignore_redux_blast_1550567399', '1'),
(74, 1, 'wppb_pms_cross_promo_dismiss_notification', 'true'),
(79, 2, 'wppb_pms_cross_promo_dismiss_notification', 'true'),
(83, 2, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"154.121.35.0\";}'),
(84, 1, 'closedpostboxes_post', 'a:1:{i:0;s:23:\"acf-group_5d03ba6ce761f\";}'),
(85, 1, 'metaboxhidden_post', 'a:0:{}'),
(86, 1, 'meta-box-order_post', 'a:4:{s:6:\"normal\";s:23:\"acf-group_5d03ba6ce761f\";s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:0:\"\";s:8:\"advanced\";s:0:\"\";}'),
(87, 1, 'closedpostboxes_hotelhajj', 'a:0:{}'),
(88, 1, 'metaboxhidden_hotelhajj', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(89, 1, 'closedpostboxes_toolset_page_wpcf-edit-type', 'a:2:{i:0;s:12:\"types_labels\";i:1;s:13:\"types_options\";}'),
(90, 1, 'closedpostboxes_toolset_page_wpcf-edit-tax', 'a:1:{i:0;s:12:\"types_labels\";}'),
(91, 1, 'metaboxhidden_toolset_page_wpcf-edit-tax', 'a:0:{}'),
(92, 1, 'closedpostboxes_toolset_page_wpcf-termmeta-edit', 'a:11:{i:0;s:35:\"types-custom-field-main_hotel_image\";i:1;s:27:\"types-custom-field-check_in\";i:2;s:28:\"types-custom-field-check_out\";i:3;s:33:\"types-custom-field-hotel_location\";i:4;s:30:\"types-custom-field-hotel_email\";i:5;s:33:\"types-custom-field-hotel_phone_no\";i:6;s:30:\"types-custom-field-hotel_price\";i:7;s:32:\"types-custom-field-hotel_website\";i:8;s:39:\"types-custom-field-cancelled_prepayment\";i:9;s:40:\"types-custom-field-children_and_extrabed\";i:10;s:29:\"types-custom-field-hotel_pets\";}'),
(93, 1, 'metaboxhidden_toolset_page_wpcf-termmeta-edit', 'a:0:{}'),
(94, 1, 'meta-box-order_toolset_page_wpcf-termmeta-edit', 'a:4:{i:0;s:366:\"types-custom-field-main_hotel_image,types-custom-field-check_in,types-custom-field-check_out,types-custom-field-hotel_location,types-custom-field-hotel_email,types-custom-field-hotel_phone_no,types-custom-field-hotel_price,types-custom-field-hotel_website,types-custom-field-cancelled_prepayment,types-custom-field-children_and_extrabed,types-custom-field-hotel_pets\";s:4:\"side\";s:9:\"submitdiv\";s:6:\"normal\";s:0:\"\";s:8:\"advanced\";s:0:\"\";}'),
(95, 1, 'screen_layout_toolset_page_wpcf-termmeta-edit', '2'),
(97, 1, 'closedpostboxes_available-rooms', 'a:0:{}'),
(98, 1, 'metaboxhidden_available-rooms', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(99, 1, 'closedpostboxes_dashboard', 'a:2:{i:0;s:21:\"dashboard_quick_press\";i:1;s:17:\"dashboard_primary\";}'),
(100, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(102, 3, 'nickname', 'sumon'),
(103, 3, 'first_name', 'sumon'),
(104, 3, 'last_name', 'khan'),
(105, 3, 'description', ''),
(106, 3, 'rich_editing', 'true'),
(107, 3, 'syntax_highlighting', 'true'),
(108, 3, 'comment_shortcuts', 'false'),
(109, 3, 'admin_color', 'fresh'),
(110, 3, 'use_ssl', '0'),
(111, 3, 'show_admin_bar_front', 'true'),
(112, 3, 'locale', ''),
(113, 3, 'wp_capabilities', 'a:1:{s:6:\"taibur\";b:1;}'),
(114, 3, 'wp_user_level', '0'),
(115, 3, 'dismissed_wp_pointers', 'wp496_privacy'),
(117, 3, 'wp_dashboard_quick_press_last_post_id', '780'),
(118, 3, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"45.251.228.0\";}'),
(119, 3, 'session_tokens', 'a:1:{s:64:\"66e21b53796dacb6b5ab1508ec70715795b26dc815809ff24fa595ab339d1837\";a:4:{s:10:\"expiration\";i:1569389494;s:2:\"ip\";s:15:\"103.106.237.117\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36\";s:5:\"login\";i:1568179894;}}'),
(120, 1, 'session_tokens', 'a:1:{s:64:\"5d3e0b7308527ad78367d4f488540d95ec19e9f184bee64a787cba65d67df7ca\";a:4:{s:10:\"expiration\";i:1578889798;s:2:\"ip\";s:12:\"58.84.32.249\";s:2:\"ua\";s:77:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0\";s:5:\"login\";i:1578716998;}}'),
(121, 2, 'session_tokens', 'a:1:{s:64:\"9bf758b15ed5235b9651a8a4adfe73feefed146faf8e661ba33734a1ba39e8ef\";a:4:{s:10:\"expiration\";i:1574937317;s:2:\"ip\";s:13:\"105.105.43.47\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Linux; Android 10; Pixel 2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.96 Mobile Safari/537.36\";s:5:\"login\";i:1573727717;}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BRMXr8ZbqrwBSLko/UTecJlyhucNPP0', 'admin', 'admin@gmail.com', '', '2019-02-19 05:37:26', '', 0, 'admin'),
(2, 'taibur', '$P$BNt8oy39I0Nnx6uarnQ2I.uZTUU31z.', 'taibur', 'taibur12@gmail.com', 'http://asdfds.com', '2019-05-15 04:38:19', '', 0, 'taibur milon'),
(3, 'sumon', '$P$BK44UlxchDy7QSz5OSoFcJ7QJ6LsCo.', 'sumon', 'sumon@gmail.com', 'http://kmbikroy.com/', '2019-09-11 04:45:08', '1568177108:$P$BNQy5YAyWzQjC.B4bu85AI6naANHNx1', 0, 'sumon khan');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT 0,
  `pending_delivery` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_weforms_entries`
--

CREATE TABLE `wp_weforms_entries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip` int(11) UNSIGNED DEFAULT NULL,
  `user_device` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'publish',
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_weforms_entrymeta`
--

CREATE TABLE `wp_weforms_entrymeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `weforms_entry_id` bigint(20) UNSIGNED DEFAULT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_attribute_taxonomies`
--

INSERT INTO `wp_woocommerce_attribute_taxonomies` (`attribute_id`, `attribute_name`, `attribute_label`, `attribute_type`, `attribute_orderby`, `attribute_public`) VALUES
(1, 'gfdgfd', 'gdfgfd', 'select', 'menu_order', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(8, '1', 'a:11:{s:8:\"customer\";s:703:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"BD\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"BD\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:15:\"admin@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";s:4:\"cart\";s:812:\"a:2:{s:32:\"d6baf65e0b240ce177cf70da146c8dc8\";a:11:{s:3:\"key\";s:32:\"d6baf65e0b240ce177cf70da146c8dc8\";s:10:\"product_id\";i:264;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:5;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:5;s:8:\"line_tax\";i:0;}s:32:\"eda80a3d5b344bc40f3bc04f65b7a357\";a:11:{s:3:\"key\";s:32:\"eda80a3d5b344bc40f3bc04f65b7a357\";s:10:\"product_id\";i:267;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:5;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:5;s:8:\"line_tax\";i:0;}}\";s:11:\"cart_totals\";s:408:\"a:15:{s:8:\"subtotal\";s:5:\"10.00\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:6:\"100.00\";s:12:\"shipping_tax\";d:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";d:0;s:12:\"discount_tax\";d:0;s:19:\"cart_contents_total\";s:5:\"10.00\";s:17:\"cart_contents_tax\";d:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:4:\"0.00\";s:7:\"fee_tax\";d:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:6:\"110.00\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:22:\"shipping_for_package_0\";s:419:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_3326ca7a0a7f9f64a493a6485187bc78\";s:5:\"rates\";a:1:{s:11:\"flat_rate:2\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:6:{s:2:\"id\";s:11:\"flat_rate:2\";s:9:\"method_id\";s:9:\"flat_rate\";s:11:\"instance_id\";i:2;s:5:\"label\";s:9:\"Flat rate\";s:4:\"cost\";s:6:\"100.00\";s:5:\"taxes\";a:0:{}}s:12:\"\0*\0meta_data\";a:1:{s:5:\"Items\";s:61:\"global test &times; 1, 7 Days Star Umrah Package-03 &times; 1\";}}}}\";s:25:\"previous_shipping_methods\";s:39:\"a:1:{i:0;a:1:{i:0;s:11:\"flat_rate:2\";}}\";s:23:\"chosen_shipping_methods\";s:29:\"a:1:{i:0;s:11:\"flat_rate:2\";}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:1;}\";}', 1558427715);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zones`
--

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'Bangladesh', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_locations`
--

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'BD', 'country');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_methods`
--

INSERT INTO `wp_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'free_shipping', 1, 1),
(1, 2, 'flat_rate', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT 0,
  `tax_rate_shipping` int(1) NOT NULL DEFAULT 1,
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpbooking_availability`
--

CREATE TABLE `wp_wpbooking_availability` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `start` int(11) DEFAULT NULL,
  `end` int(11) DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `calendar_minimum` int(11) DEFAULT NULL,
  `calendar_maximum` int(11) DEFAULT NULL,
  `calendar_price` float DEFAULT NULL,
  `adult_minimum` int(11) DEFAULT NULL,
  `adult_price` float DEFAULT NULL,
  `child_minimum` int(11) DEFAULT NULL,
  `child_price` float DEFAULT NULL,
  `infant_minimum` int(11) DEFAULT NULL,
  `infant_price` float DEFAULT NULL,
  `weekly` float DEFAULT NULL,
  `monthly` float DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_id` int(11) DEFAULT NULL,
  `can_check_in` int(11) DEFAULT NULL,
  `can_check_out` int(11) DEFAULT NULL,
  `group_day` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_people` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wpbooking_availability`
--

INSERT INTO `wp_wpbooking_availability` (`id`, `post_id`, `start`, `end`, `price`, `calendar_minimum`, `calendar_maximum`, `calendar_price`, `adult_minimum`, `adult_price`, `child_minimum`, `child_price`, `infant_minimum`, `infant_price`, `weekly`, `monthly`, `status`, `base_id`, `can_check_in`, `can_check_out`, `group_day`, `max_people`) VALUES
(1, 440, 1554422400, 1554422400, '152000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'available', 440, 0, 0, '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpbooking_availability_tour`
--

CREATE TABLE `wp_wpbooking_availability_tour` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `start` int(11) DEFAULT NULL,
  `end` int(11) DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `calendar_minimum` int(11) DEFAULT NULL,
  `calendar_maximum` int(11) DEFAULT NULL,
  `calendar_price` float DEFAULT NULL,
  `adult_minimum` int(11) DEFAULT NULL,
  `adult_price` float DEFAULT NULL,
  `child_minimum` int(11) DEFAULT NULL,
  `child_price` float DEFAULT NULL,
  `infant_minimum` int(11) DEFAULT NULL,
  `infant_price` float DEFAULT NULL,
  `weekly` float DEFAULT NULL,
  `monthly` float DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_id` int(11) DEFAULT NULL,
  `can_check_in` int(11) DEFAULT NULL,
  `can_check_out` int(11) DEFAULT NULL,
  `group_day` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_people` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpbooking_favorite`
--

CREATE TABLE `wp_wpbooking_favorite` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpbooking_order`
--

CREATE TABLE `wp_wpbooking_order` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `service_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` float DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `extra_fees` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_total` float DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `raw_data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `check_in_timestamp` int(11) DEFAULT NULL,
  `check_out_timestamp` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `deposit` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adult_number` int(11) DEFAULT NULL,
  `children_number` int(11) DEFAULT NULL,
  `infant_number` int(11) DEFAULT NULL,
  `post_origin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpbooking_order_hotel_room`
--

CREATE TABLE `wp_wpbooking_order_hotel_room` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `hotel_id` int(11) DEFAULT NULL,
  `hotel_id_origin` int(11) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `room_id_origin` int(11) DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_total` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `extra_fees` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `check_in_timestamp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `check_out_timestamp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `raw_data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `num_room` int(11) DEFAULT NULL,
  `total_room` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpbooking_payment`
--

CREATE TABLE `wp_wpbooking_payment` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `created_on` int(11) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpbooking_review_helpful`
--

CREATE TABLE `wp_wpbooking_review_helpful` (
  `id` int(11) NOT NULL,
  `review_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `ip_address` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpbooking_service`
--

CREATE TABLE `wp_wpbooking_service` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `enable_property` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` float DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `children_price` float DEFAULT NULL,
  `infant_price` float DEFAULT NULL,
  `map_lat` float DEFAULT NULL,
  `map_long` float DEFAULT NULL,
  `service_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `property_available_for` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_guests` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `pricing_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wpbooking_service`
--

INSERT INTO `wp_wpbooking_service` (`id`, `post_id`, `enable_property`, `price`, `number`, `children_price`, `infant_price`, `map_lat`, `map_long`, `service_type`, `property_available_for`, `max_guests`, `location_id`, `pricing_type`, `base_price`) VALUES
(1, 439, 'on', 0, 1, 0, 0, 0, 0, 'accommodation', 'forever', 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wplc_chat_msgs`
--

CREATE TABLE `wp_wplc_chat_msgs` (
  `id` int(11) NOT NULL,
  `chat_sess_id` int(11) NOT NULL,
  `msgfrom` varchar(150) NOT NULL,
  `msg` longtext NOT NULL,
  `timestamp` datetime NOT NULL,
  `status` int(3) NOT NULL,
  `originates` int(3) NOT NULL,
  `other` longtext NOT NULL,
  `rel` varchar(40) NOT NULL,
  `afrom` int(10) NOT NULL,
  `ato` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wplc_chat_sessions`
--

CREATE TABLE `wp_wplc_chat_sessions` (
  `id` int(11) NOT NULL,
  `timestamp` datetime NOT NULL,
  `name` varchar(700) NOT NULL,
  `email` varchar(700) NOT NULL,
  `ip` varchar(700) NOT NULL,
  `status` int(11) NOT NULL,
  `session` varchar(100) NOT NULL,
  `url` varchar(700) NOT NULL,
  `last_active_timestamp` datetime NOT NULL,
  `agent_id` int(11) NOT NULL,
  `other` longtext NOT NULL,
  `rel` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wplc_offline_messages`
--

CREATE TABLE `wp_wplc_offline_messages` (
  `id` int(11) NOT NULL,
  `timestamp` datetime NOT NULL,
  `name` varchar(700) NOT NULL,
  `email` varchar(700) NOT NULL,
  `message` varchar(700) NOT NULL,
  `ip` varchar(700) NOT NULL,
  `user_agent` varchar(700) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wplc_webhooks`
--

CREATE TABLE `wp_wplc_webhooks` (
  `id` int(11) NOT NULL,
  `url` varchar(700) DEFAULT NULL,
  `push_to_devices` tinyint(1) DEFAULT NULL,
  `action` int(11) DEFAULT NULL,
  `method` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpuf_subscribers`
--

CREATE TABLE `wp_wpuf_subscribers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subscribtion_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subscribtion_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gateway` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `starts_from` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpuf_transaction`
--

CREATE TABLE `wp_wpuf_transaction` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending_payment',
  `subtotal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `tax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `cost` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `post_id` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pack_id` bigint(20) DEFAULT NULL,
  `payer_first_name` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payer_last_name` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payer_email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payer_address` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpuser_groups`
--

CREATE TABLE `wp_wpuser_groups` (
  `id` int(11) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `tags` varchar(150) DEFAULT NULL,
  `area` varchar(240) DEFAULT NULL,
  `visibility` varchar(50) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_time` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpuser_group_meta`
--

CREATE TABLE `wp_wpuser_group_meta` (
  `id` int(11) NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpuser_loginattempts`
--

CREATE TABLE `wp_wpuser_loginattempts` (
  `id` int(11) NOT NULL,
  `IP` varchar(20) NOT NULL,
  `Attempts` int(11) NOT NULL,
  `LastLogin` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wp_wpuser_loginattempts`
--

INSERT INTO `wp_wpuser_loginattempts` (`id`, `IP`, `Attempts`, `LastLogin`) VALUES
(1, '::1', 1, '2019-05-22 04:31:05');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpuser_login_log`
--

CREATE TABLE `wp_wpuser_login_log` (
  `id` int(11) NOT NULL,
  `user` varchar(100) DEFAULT NULL,
  `ip` varchar(25) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `message` varchar(150) DEFAULT NULL,
  `user_agent` varchar(200) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpuser_notification`
--

CREATE TABLE `wp_wpuser_notification` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `recipient_id` int(11) NOT NULL,
  `type_of_notification` varchar(20) DEFAULT NULL,
  `title_html` varchar(50) DEFAULT NULL,
  `body_html` varchar(240) DEFAULT NULL,
  `href` varchar(50) DEFAULT NULL,
  `is_unread` tinyint(1) DEFAULT 1,
  `created_time` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpuser_views`
--

CREATE TABLE `wp_wpuser_views` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `view_by` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wsluserscontacts`
--

CREATE TABLE `wp_wsluserscontacts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `provider` varchar(50) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `full_name` varchar(150) NOT NULL,
  `email` varchar(255) NOT NULL,
  `profile_url` varchar(255) NOT NULL,
  `photo_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wslusersprofiles`
--

CREATE TABLE `wp_wslusersprofiles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `provider` varchar(50) NOT NULL,
  `object_sha` varchar(45) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `profileurl` varchar(255) NOT NULL,
  `websiteurl` varchar(255) NOT NULL,
  `photourl` varchar(255) NOT NULL,
  `displayname` varchar(150) NOT NULL,
  `description` varchar(255) NOT NULL,
  `firstname` varchar(150) NOT NULL,
  `lastname` varchar(150) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `language` varchar(20) NOT NULL,
  `age` varchar(10) NOT NULL,
  `birthday` int(11) NOT NULL,
  `birthmonth` int(11) NOT NULL,
  `birthyear` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `emailverified` varchar(255) NOT NULL,
  `phone` varchar(75) NOT NULL,
  `address` varchar(255) NOT NULL,
  `country` varchar(75) NOT NULL,
  `region` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `zip` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_activities`
--
ALTER TABLE `activity_activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activity_categories`
--
ALTER TABLE `activity_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activity_details`
--
ALTER TABLE `activity_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `available_rooms`
--
ALTER TABLE `available_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_info`
--
ALTER TABLE `booking_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_details`
--
ALTER TABLE `car_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_packages`
--
ALTER TABLE `car_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city_list`
--
ALTER TABLE `city_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guide_categories`
--
ALTER TABLE `guide_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guide_details`
--
ALTER TABLE `guide_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guide_packages`
--
ALTER TABLE `guide_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_details`
--
ALTER TABLE `hotel_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_offers`
--
ALTER TABLE `hotel_offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_offers_relation`
--
ALTER TABLE `hotel_offers_relation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_booking_details`
--
ALTER TABLE `main_booking_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newpluginform`
--
ALTER TABLE `newpluginform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_order_img`
--
ALTER TABLE `new_order_img`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`service_id`),
  ADD KEY `meta_key` (`ratings_val`);

--
-- Indexes for table `restaurant_details`
--
ALTER TABLE `restaurant_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `star`
--
ALTER TABLE `star`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tour_activities`
--
ALTER TABLE `tour_activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tour_categories`
--
ALTER TABLE `tour_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tour_details`
--
ALTER TABLE `tour_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transport_details`
--
ALTER TABLE `transport_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transport_packages`
--
ALTER TABLE `transport_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transport_stopage`
--
ALTER TABLE `transport_stopage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transport_stopage_relations`
--
ALTER TABLE `transport_stopage_relations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `umratinguser`
--
ALTER TABLE `umratinguser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_awebooking_availability`
--
ALTER TABLE `wp_awebooking_availability`
  ADD PRIMARY KEY (`room_id`,`year`,`month`);

--
-- Indexes for table `wp_awebooking_booking`
--
ALTER TABLE `wp_awebooking_booking`
  ADD PRIMARY KEY (`room_id`,`year`,`month`);

--
-- Indexes for table `wp_awebooking_booking_itemmeta`
--
ALTER TABLE `wp_awebooking_booking_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `booking_item_id` (`booking_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_awebooking_booking_items`
--
ALTER TABLE `wp_awebooking_booking_items`
  ADD PRIMARY KEY (`booking_item_id`),
  ADD KEY `booking_item_parent` (`booking_item_parent`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `booking_id` (`booking_id`);

--
-- Indexes for table `wp_awebooking_pricing`
--
ALTER TABLE `wp_awebooking_pricing`
  ADD PRIMARY KEY (`rate_id`,`year`,`month`);

--
-- Indexes for table `wp_awebooking_rooms`
--
ALTER TABLE `wp_awebooking_rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `room_type` (`room_type`);

--
-- Indexes for table `wp_awebooking_tax_rates`
--
ALTER TABLE `wp_awebooking_tax_rates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `wp_booking`
--
ALTER TABLE `wp_booking`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `wp_bookingdates`
--
ALTER TABLE `wp_bookingdates`
  ADD UNIQUE KEY `booking_id_dates` (`booking_id`,`booking_date`);

--
-- Indexes for table `wp_booking_package_calendaraccount`
--
ALTER TABLE `wp_booking_package_calendaraccount`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `wp_booking_package_coursedata`
--
ALTER TABLE `wp_booking_package_coursedata`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `wp_booking_package_emailsetting`
--
ALTER TABLE `wp_booking_package_emailsetting`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `wp_booking_package_form`
--
ALTER TABLE `wp_booking_package_form`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `wp_booking_package_guests`
--
ALTER TABLE `wp_booking_package_guests`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `wp_booking_package_regular_holidays`
--
ALTER TABLE `wp_booking_package_regular_holidays`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `wp_booking_package_schedule`
--
ALTER TABLE `wp_booking_package_schedule`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `wp_booking_package_subscriptions`
--
ALTER TABLE `wp_booking_package_subscriptions`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `wp_booking_package_taxes`
--
ALTER TABLE `wp_booking_package_taxes`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `wp_booking_package_templateschedule`
--
ALTER TABLE `wp_booking_package_templateschedule`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `wp_booking_package_userpraivatedata`
--
ALTER TABLE `wp_booking_package_userpraivatedata`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `wp_booking_package_users`
--
ALTER TABLE `wp_booking_package_users`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `wp_booking_package_webhook`
--
ALTER TABLE `wp_booking_package_webhook`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `wp_bs_bookings`
--
ALTER TABLE `wp_bs_bookings`
  ADD PRIMARY KEY (`bookingID`);

--
-- Indexes for table `wp_bs_calendars`
--
ALTER TABLE `wp_bs_calendars`
  ADD PRIMARY KEY (`calendarID`);

--
-- Indexes for table `wp_bs_forms`
--
ALTER TABLE `wp_bs_forms`
  ADD PRIMARY KEY (`formID`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `wp_galcategory`
--
ALTER TABLE `wp_galcategory`
  ADD PRIMARY KEY (`catid`);

--
-- Indexes for table `wp_galimage`
--
ALTER TABLE `wp_galimage`
  ADD PRIMARY KEY (`imgid`);

--
-- Indexes for table `wp_gdgallerygalleries`
--
ALTER TABLE `wp_gdgallerygalleries`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Indexes for table `wp_gdgalleryimages`
--
ALTER TABLE `wp_gdgalleryimages`
  ADD PRIMARY KEY (`id_image`),
  ADD KEY `id_gallery` (`id_gallery`);

--
-- Indexes for table `wp_gdgallerysettings`
--
ALTER TABLE `wp_gdgallerysettings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `option_key` (`option_key`);

--
-- Indexes for table `wp_hotel_booking_order_itemmeta`
--
ALTER TABLE `wp_hotel_booking_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD UNIQUE KEY `meta_id` (`meta_id`),
  ADD KEY `hotel_booking_order_item_id` (`hotel_booking_order_item_id`);

--
-- Indexes for table `wp_hotel_booking_order_items`
--
ALTER TABLE `wp_hotel_booking_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD UNIQUE KEY `order_item_id` (`order_item_id`);

--
-- Indexes for table `wp_hotel_booking_plans`
--
ALTER TABLE `wp_hotel_booking_plans`
  ADD PRIMARY KEY (`plan_id`),
  ADD UNIQUE KEY `plan_id` (`plan_id`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_mphb_sync_logs`
--
ALTER TABLE `wp_mphb_sync_logs`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `wp_mphb_sync_queue`
--
ALTER TABLE `wp_mphb_sync_queue`
  ADD PRIMARY KEY (`queue_id`);

--
-- Indexes for table `wp_mphb_sync_stats`
--
ALTER TABLE `wp_mphb_sync_stats`
  ADD PRIMARY KEY (`stat_id`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_p2p_relationshipmeta`
--
ALTER TABLE `wp_p2p_relationshipmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `p2p_relationship_id` (`p2p_relationship_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_p2p_relationships`
--
ALTER TABLE `wp_p2p_relationships`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `rel_from` (`rel_from`),
  ADD KEY `rel_to` (`rel_to`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_termsmeta`
--
ALTER TABLE `wp_termsmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `terms_id` (`terms_id`),
  ADD KEY `meta_key` (`meta_key`);

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_toolset_post_guid_id`
--
ALTER TABLE `wp_toolset_post_guid_id`
  ADD UNIQUE KEY `post_id` (`post_id`),
  ADD KEY `guid` (`guid`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_weforms_entries`
--
ALTER TABLE `wp_weforms_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_id` (`form_id`);

--
-- Indexes for table `wp_weforms_entrymeta`
--
ALTER TABLE `wp_weforms_entrymeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `meta_key` (`meta_key`(191)),
  ADD KEY `entry_id` (`weforms_entry_id`);

--
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_wpbooking_availability`
--
ALTER TABLE `wp_wpbooking_availability`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpbooking_availability_tour`
--
ALTER TABLE `wp_wpbooking_availability_tour`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpbooking_favorite`
--
ALTER TABLE `wp_wpbooking_favorite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpbooking_order`
--
ALTER TABLE `wp_wpbooking_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpbooking_order_hotel_room`
--
ALTER TABLE `wp_wpbooking_order_hotel_room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpbooking_payment`
--
ALTER TABLE `wp_wpbooking_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpbooking_review_helpful`
--
ALTER TABLE `wp_wpbooking_review_helpful`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpbooking_service`
--
ALTER TABLE `wp_wpbooking_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wplc_chat_msgs`
--
ALTER TABLE `wp_wplc_chat_msgs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wplc_chat_sessions`
--
ALTER TABLE `wp_wplc_chat_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wplc_offline_messages`
--
ALTER TABLE `wp_wplc_offline_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wplc_webhooks`
--
ALTER TABLE `wp_wplc_webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpuf_subscribers`
--
ALTER TABLE `wp_wpuf_subscribers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_wpuf_transaction`
--
ALTER TABLE `wp_wpuf_transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `pack_id` (`pack_id`),
  ADD KEY `payer_email` (`payer_email`);

--
-- Indexes for table `wp_wpuser_groups`
--
ALTER TABLE `wp_wpuser_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpuser_group_meta`
--
ALTER TABLE `wp_wpuser_group_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpuser_loginattempts`
--
ALTER TABLE `wp_wpuser_loginattempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpuser_login_log`
--
ALTER TABLE `wp_wpuser_login_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpuser_notification`
--
ALTER TABLE `wp_wpuser_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpuser_views`
--
ALTER TABLE `wp_wpuser_views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wsluserscontacts`
--
ALTER TABLE `wp_wsluserscontacts`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_wslusersprofiles`
--
ALTER TABLE `wp_wslusersprofiles`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `provider` (`provider`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_activities`
--
ALTER TABLE `activity_activities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `activity_categories`
--
ALTER TABLE `activity_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `activity_details`
--
ALTER TABLE `activity_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `available_rooms`
--
ALTER TABLE `available_rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `booking_info`
--
ALTER TABLE `booking_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `car_details`
--
ALTER TABLE `car_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `car_packages`
--
ALTER TABLE `car_packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `city_list`
--
ALTER TABLE `city_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `guide_categories`
--
ALTER TABLE `guide_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `guide_details`
--
ALTER TABLE `guide_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guide_packages`
--
ALTER TABLE `guide_packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hotel_details`
--
ALTER TABLE `hotel_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `hotel_offers`
--
ALTER TABLE `hotel_offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `hotel_offers_relation`
--
ALTER TABLE `hotel_offers_relation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `main_booking_details`
--
ALTER TABLE `main_booking_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `newpluginform`
--
ALTER TABLE `newpluginform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `new_order_img`
--
ALTER TABLE `new_order_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `restaurant_details`
--
ALTER TABLE `restaurant_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `star`
--
ALTER TABLE `star`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tour_activities`
--
ALTER TABLE `tour_activities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tour_categories`
--
ALTER TABLE `tour_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tour_details`
--
ALTER TABLE `tour_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `transport_details`
--
ALTER TABLE `transport_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transport_packages`
--
ALTER TABLE `transport_packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transport_stopage`
--
ALTER TABLE `transport_stopage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `transport_stopage_relations`
--
ALTER TABLE `transport_stopage_relations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `umratinguser`
--
ALTER TABLE `umratinguser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_awebooking_booking_itemmeta`
--
ALTER TABLE `wp_awebooking_booking_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_awebooking_booking_items`
--
ALTER TABLE `wp_awebooking_booking_items`
  MODIFY `booking_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_awebooking_rooms`
--
ALTER TABLE `wp_awebooking_rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_awebooking_tax_rates`
--
ALTER TABLE `wp_awebooking_tax_rates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_booking`
--
ALTER TABLE `wp_booking`
  MODIFY `booking_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_booking_package_calendaraccount`
--
ALTER TABLE `wp_booking_package_calendaraccount`
  MODIFY `key` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_booking_package_coursedata`
--
ALTER TABLE `wp_booking_package_coursedata`
  MODIFY `key` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_booking_package_emailsetting`
--
ALTER TABLE `wp_booking_package_emailsetting`
  MODIFY `key` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `wp_booking_package_form`
--
ALTER TABLE `wp_booking_package_form`
  MODIFY `key` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_booking_package_guests`
--
ALTER TABLE `wp_booking_package_guests`
  MODIFY `key` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wp_booking_package_regular_holidays`
--
ALTER TABLE `wp_booking_package_regular_holidays`
  MODIFY `key` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_booking_package_schedule`
--
ALTER TABLE `wp_booking_package_schedule`
  MODIFY `key` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT for table `wp_booking_package_subscriptions`
--
ALTER TABLE `wp_booking_package_subscriptions`
  MODIFY `key` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_booking_package_taxes`
--
ALTER TABLE `wp_booking_package_taxes`
  MODIFY `key` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_booking_package_templateschedule`
--
ALTER TABLE `wp_booking_package_templateschedule`
  MODIFY `key` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_booking_package_userpraivatedata`
--
ALTER TABLE `wp_booking_package_userpraivatedata`
  MODIFY `key` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_booking_package_webhook`
--
ALTER TABLE `wp_booking_package_webhook`
  MODIFY `key` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_bs_bookings`
--
ALTER TABLE `wp_bs_bookings`
  MODIFY `bookingID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_bs_calendars`
--
ALTER TABLE `wp_bs_calendars`
  MODIFY `calendarID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_bs_forms`
--
ALTER TABLE `wp_bs_forms`
  MODIFY `formID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_galcategory`
--
ALTER TABLE `wp_galcategory`
  MODIFY `catid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_galimage`
--
ALTER TABLE `wp_galimage`
  MODIFY `imgid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_gdgallerygalleries`
--
ALTER TABLE `wp_gdgallerygalleries`
  MODIFY `id_gallery` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_gdgalleryimages`
--
ALTER TABLE `wp_gdgalleryimages`
  MODIFY `id_image` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wp_gdgallerysettings`
--
ALTER TABLE `wp_gdgallerysettings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=277;

--
-- AUTO_INCREMENT for table `wp_hotel_booking_order_itemmeta`
--
ALTER TABLE `wp_hotel_booking_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_hotel_booking_order_items`
--
ALTER TABLE `wp_hotel_booking_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_hotel_booking_plans`
--
ALTER TABLE `wp_hotel_booking_plans`
  MODIFY `plan_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_mphb_sync_logs`
--
ALTER TABLE `wp_mphb_sync_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_mphb_sync_queue`
--
ALTER TABLE `wp_mphb_sync_queue`
  MODIFY `queue_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_mphb_sync_stats`
--
ALTER TABLE `wp_mphb_sync_stats`
  MODIFY `stat_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29978;

--
-- AUTO_INCREMENT for table `wp_p2p_relationshipmeta`
--
ALTER TABLE `wp_p2p_relationshipmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_p2p_relationships`
--
ALTER TABLE `wp_p2p_relationships`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3543;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=793;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `wp_termsmeta`
--
ALTER TABLE `wp_termsmeta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_weforms_entries`
--
ALTER TABLE `wp_weforms_entries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_weforms_entrymeta`
--
ALTER TABLE `wp_weforms_entrymeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpbooking_availability`
--
ALTER TABLE `wp_wpbooking_availability`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wpbooking_availability_tour`
--
ALTER TABLE `wp_wpbooking_availability_tour`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpbooking_favorite`
--
ALTER TABLE `wp_wpbooking_favorite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpbooking_order`
--
ALTER TABLE `wp_wpbooking_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpbooking_order_hotel_room`
--
ALTER TABLE `wp_wpbooking_order_hotel_room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpbooking_payment`
--
ALTER TABLE `wp_wpbooking_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpbooking_review_helpful`
--
ALTER TABLE `wp_wpbooking_review_helpful`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpbooking_service`
--
ALTER TABLE `wp_wpbooking_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wplc_chat_msgs`
--
ALTER TABLE `wp_wplc_chat_msgs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wplc_chat_sessions`
--
ALTER TABLE `wp_wplc_chat_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wplc_offline_messages`
--
ALTER TABLE `wp_wplc_offline_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wplc_webhooks`
--
ALTER TABLE `wp_wplc_webhooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpuf_subscribers`
--
ALTER TABLE `wp_wpuf_subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpuf_transaction`
--
ALTER TABLE `wp_wpuf_transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpuser_groups`
--
ALTER TABLE `wp_wpuser_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpuser_group_meta`
--
ALTER TABLE `wp_wpuser_group_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpuser_loginattempts`
--
ALTER TABLE `wp_wpuser_loginattempts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wpuser_login_log`
--
ALTER TABLE `wp_wpuser_login_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpuser_notification`
--
ALTER TABLE `wp_wpuser_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpuser_views`
--
ALTER TABLE `wp_wpuser_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wsluserscontacts`
--
ALTER TABLE `wp_wsluserscontacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wslusersprofiles`
--
ALTER TABLE `wp_wslusersprofiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `wp_gdgalleryimages`
--
ALTER TABLE `wp_gdgalleryimages`
  ADD CONSTRAINT `wp_gdgalleryimages_ibfk_1` FOREIGN KEY (`id_gallery`) REFERENCES `wp_gdgallerygalleries` (`id_gallery`) ON DELETE CASCADE;

--
-- Constraints for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
