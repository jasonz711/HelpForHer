-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 05, 2018 at 06:29 PM
-- Server version: 5.7.23
-- PHP Version: 7.0.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bitnami_wordpress`
--

-- --------------------------------------------------------

--
-- Table structure for table `sport`
--

CREATE TABLE `sport` (
  `id` int(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `suburb` varchar(50) DEFAULT NULL,
  `postcode` varchar(10) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `subcategory` varchar(100) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `mon` varchar(30) NOT NULL DEFAULT 'NA',
  `tue` varchar(30) NOT NULL DEFAULT 'NA',
  `wed` varchar(30) NOT NULL DEFAULT 'NA',
  `thu` varchar(30) NOT NULL DEFAULT 'NA',
  `fri` varchar(30) NOT NULL DEFAULT 'NA',
  `sat` varchar(30) NOT NULL DEFAULT 'NA',
  `sun` varchar(30) NOT NULL DEFAULT 'NA',
  `lat` float NOT NULL,
  `lon` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sport`
--

INSERT INTO `sport` (`id`, `name`, `address`, `suburb`, `postcode`, `state`, `category`, `subcategory`, `website`, `phone`, `mon`, `tue`, `wed`, `thu`, `fri`, `sat`, `sun`, `lat`, `lon`) VALUES
(1, 'AAMI Park', ' Olympic Boulevard', 'MELBOURNE', '3000', 'VIC', 'Sports', 'Rugby League,Rugby Union,Soccer', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', -37.8251, 144.984),
(3, 'Carlton Baths Community Centre', '248 Rathdowne Street', 'CARLTON', '3053', 'VIC', 'Sports', 'Badminton,Basketball,Netball,Soccer,Swimming,Team Handball,Volleyball', 'http://www.carltonbaths.ymca.org.au/', '9347 3677', '06:00-22:00', '06:00-22:00', '06:00-22:00', '06:00-22:00', '06:00-22:00', '8:00-20:00', '8:00-20:00', -37.7933, 144.971),
(4, 'Carlton Gardens Tennis Club', '11 Nicholson Street', 'CARLTON', '3053', 'VIC', 'Sports', 'Tennis', 'http://www.cgtc.org.au/', '(03) 9663 7000', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', -37.8024, 144.973),
(5, 'City of Melbourne Bowls Club', 'Flagstaff Gardens', 'WEST MELBOURNE', '3003', 'VIC', 'Sports', 'Lawn Bowls', 'https://www.citybowls.org/', '03 8329 0211', '09:00-22:00', '09:00-22:00', '09:00-22:00', '09:00-22:00', '09:00-23:00', '12:00-23:00', '12:00-19:00', -37.8093, 144.954),
(6, 'Como Park', '305 - 325 Williams Road', 'SOUTH YARRA', '3141', 'VIC', 'Sports', ' Football,Cricket', 'NA', 'NA', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', -37.8356, 145.004),
(7, 'Como Park North', '311 Williams Road', 'SOUTH YARRA', '3141', 'VIC', 'Sports', 'Soccer', 'NA', '(03) 8290 1333', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', -37.8334, 145.005),
(8, 'Debney Park', '38 Mount Alexander Road', 'FLEMINGTON', '3031', 'VIC', 'Sports', 'Cricket,Soccer', 'NA', 'NA', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', -37.7824, 144.933),
(9, 'Docklands Yacht Club', ' North Wharf Road', 'DOCKLANDS', '3008', 'VIC', 'Sports', 'Sailing', 'http://docklands.yachting.org.au/home/', 'NA', 'Closed', 'Closed', 'Closed', 'Closed', 'Closed', 'Closed', '11:00-16:00', -37.8202, 144.94),
(10, 'Etihad', '740 Bourke St', 'DOCKLANDS', '3008', 'VIC', 'Sports', 'Football,Cricket,Rugby Union', 'https://etihadstadium.com.au/', '03 8625 7700', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', -37.8166, 144.948),
(11, 'Fawkner Park', ' Pasley Street North', 'SOUTH YARRA', '3141', 'VIC', 'Sports', 'Cricket,Softball,Tennis', 'NA', '(03) 9658 9658', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', -37.8415, 144.982),
(12, 'Flagstaff Gardens', ' 309-311 William Street', 'WEST MELBOURNE', '3003', 'VIC', 'Sports', 'Netball,Tennis', 'NA', '0419 887 719', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', -37.8101, 144.955),
(13, 'Goschs Paddock', 'Olympic Bvd', 'MELBOURNE', '3004', 'VIC', 'Sports', 'Football,Cricket,Rugby League,Rugby Union,Soccer,Touch Football', 'https://www.facebook.com/GoschsPaddock/', '3 9286 1600', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', -37.8259, 144.987),
(14, 'Hawksburn Tennis Club', '12 Bunalbo Avenue', 'SOUTH YARRA', '3141', 'VIC', 'Sports', 'Tennis', 'https://www.facebook.com/GoschsPaddock/', '3 9286 1600', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', -37.8418, 145.001),
(15, 'J.L. Murphy Reserve', ' Williamstown Road', 'PORT MELBOURNE', '3207', 'VIC', 'Sports', 'Football,Baseball,Soccer', 'NA', '(03) 9209 6777', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', -37.833, 144.929),
(16, 'JJ Holland Park', '67-121 Kensington Road', 'KENSINGTON', '3031', 'VIC', 'Sports', 'Football,BMX,Cricket,Cricket,Skating,Soccer,Touch Football', 'NA', '9658 9658', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', -37.7992, 144.926),
(17, 'Kensington Banks Tennis Club', ' Speakman Street', 'KENSINGTON', '3031', 'VIC', 'Sports', 'Tennis', 'http://www.kensington.ymca.org.au/discover/sporting-facilities/tennis-courts.html', '(03) 9376 1633', '06:00-21:00', '06:00-21:00', '06:00-21:00', '06:00-21:00', 'Closed', '08:00-19:00', '08:00-19:00', -37.7943, 144.915),
(18, 'Kensington Community Recreation Centre', ' Altona Street', 'KENSINGTON', '3031', 'VIC', 'Sports', 'Basketball,Netball,Soccer,Swimming', 'http://www.kensington.ymca.org.au/', '(03) 9376 1633', '06:00-21:00', '06:00-21:00', '06:00-21:00', '06:00-21:00', '06:00-20:00', '08:00-19:00', '08:00-19:00', -37.7967, 144.924),
(19, 'Kings Domain', 'Alexandra Avenue', 'MELBOURNE', '3004', 'VIC', 'Sports', 'Soccer', 'NA', '9658 9658', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', -37.8242, 144.973),
(20, 'Lagoon Reserve', ' Graham Street', 'PORT MELBOURNE', '3207', 'VIC', 'Sports', 'Cricket,Soccer', 'NA', '(03) 9209 6777', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', -37.841, 144.944),
(21, 'MCG', ' Brunton Avenue', 'RICHMOND', '3002', 'VIC', 'Sports', ' Football,Cricket', 'http://www.mcg.org.au/', '0418 353 431', '10:00-17:00', '10:00-17:00', '10:00-17:00', '10:00-17:00', '10:00-17:00', '10:00-17:00', '10:00-17:00', -37.82, 144.983),
(22, 'Melbourne City Baths', '420 Swanston Street', 'MELBOURNE', '3000', 'VIC', 'Sports', 'Squash,Swimming', 'NA', '(03)96589011', '06:00-22:00', '06:00-22:00', '06:00-22:00', '06:00-22:00', '06:00-20:00', '08:00-18:00', '08:00-18:00', -37.8071, 144.963),
(23, 'Melbourne Grammar School', '1 Domain road', 'MELBOURNE', '3004', 'VIC', 'Sports', 'Hockey', 'NA', '(03)98657700', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', -37.8343, 144.975),
(24, 'Melbourne High School Oval', ' 19 Yarra Street', 'SOUTH YARRA', '3141', 'VIC', 'Sports', 'Football,Cricket,Hockey', 'https://www.mhsviceduau.com/', '0403 069 622', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', -37.8361, 144.993),
(25, 'Melbourne International Shooting Club', ' 120 Todd Road', 'PORT MELBOURNE', '3031', 'VIC', 'Sports', 'Shooting Sports', 'https://www.melbourneinternational.org.au/', '(03) 9646 3976', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', -37.8298, 144.912),
(26, 'Melbourne Martial Arts Academy', '367 Flinders Street', 'MELBOURNE', '3207', 'VIC', 'Sports', 'Martial Arts', 'https://www.melbmartialarts.com.au/', '(03) 9620 5433', '06:30-21:00', '06:30-21:00', '06:30-21:00', '06:30-21:00', '06:30-21:00', '10:00-17:00', 'Closed', -37.8192, 144.962),
(27, 'Melbourne and Olympic Park', ' Olympic Boulevard', 'MELBOURNE', '3000', 'VIC', 'Sports', 'Tennis', 'https://www.mopt.com.au/', '03) 9286 1600', '09:00-17:00', '09:00-17:00', '09:00-17:00', '09:00-17:00', '09:00-17:00', 'Closed', 'Closed', -37.8204, 144.98),
(28, 'Newmarket Reserve', ' Smithfield Road', 'FLEMINGTON', '3031', 'VIC', 'Sports', 'Cricket,Lawn Bowls,Soccer', 'https://www.facebook.com/pages/Newmarket-Reserve/205880139454156', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', -37.7862, 144.927),
(29, 'North Melbourne Community Centre', '53 Buncle Street', 'NORTH MELBOURNE', '3051', 'VIC', 'Sports', 'Basketball,Soccer', 'http://www.nmcc.ymca.org.au/', '(03) 9320 4700', '09:00-21:00', '09:00-21:00', '09:00-21:00', '09:00-21:00', '09:00-21:00', '08:00-15:00', '08:00-16:00', -37.7933, 144.94),
(30, 'North Melbourne Football Ground', '204-206 Arden Street', 'NORTH MELBOURNE', '3051', 'VIC', 'Sports', 'Football', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', -37.7999, 144.942),
(31, 'North Melbourne Recreation Centre', '206 Arden Street', 'NORTH MELBOURNE', '3051', 'VIC', 'Sports', 'Basketball,Netball,Soccer', 'https://www.facebook.com/nmrec/', '(03) 9329 2885', '06:00-21:00', '06:00-21:00', '06:00-21:00', '06:00-21:00', '06:00-21:00', '08:00-18:00', '08:00-18:00', -37.7991, 144.942),
(32, 'Port Melbourne Football Club', '525 Williamstown Road', 'PORT MELBOURNE', '3207', 'VIC', 'Sports', ' Football', 'https://www.portmelbournefc.com.au/', '(03) 9646 2094', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', -37.8312, 144.942),
(33, 'Port Melbourne Cricket Club', '525 Williamstown Road', 'PORT MELBOURNE', '3207', 'VIC', 'Sports', 'Cricket', 'http://portmelbournecc.vic.cricket.com.au/home.aspx?', '0402 536 359', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', -37.8308, 144.942),
(34, 'Port Melbourne Bowls Club', '130 Spring Street ', 'PORT MELBOURNE', '3207', 'VIC', 'Sports', 'Lawn Bowls', 'http://www.portmelbbowlingclub.com.au', '03 9646 2642', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', -37.8349, 144.943),
(35, 'Port Melbourne Life Saving Club', '38 Beaconsfield Parade', 'PORT MELBOURNE', '3207', 'VIC', 'Sports', 'Surf Life Saving', 'https://www.portmelblsc.com.au/', '(03) 9646 8773', '09:00-17:00', '09:00-17:00', '09:00-17:00', '09:00-17:00', '09:00-17:00', 'Closed', 'Closed', -37.8451, 144.942),
(36, 'Port Melbourne Skate Park', '252 Graham Street', 'PORT MELBOURNE', '3207', 'VIC', 'Sports', 'Skating', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', -37.8387, 144.939),
(37, 'Port Melbourne Yacht Club', '2 Bay Street', 'PORT MELBOURNE', '3207', 'VIC', 'Sports', 'Sailing', 'http://www.pmyc.asn.au/home/', '03 9645 3107', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', -37.8432, 144.938),
(38, 'Princes Park', ' 200-590 Royal Parade', 'CARLTON NORTH', '3000', 'VIC', 'Sports', 'Lawn Bowls,Soccer,Tennis,Touch Football', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', -37.7791, 144.962),
(39, 'R.F. Julier Reserve', ' Dunstan Parade', 'PORT MELBOURNE', '3207', 'VIC', 'Sports', 'Basketball', 'NA', '03) 9209 6776', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', -37.8375, 144.922),
(40, 'Royal Park', 'Flemington Rd', 'PARKVILLE', '3052', 'VIC', 'Sports', 'Football,Baseball,Cricket,Cricket,Golf,Gridiron,Lacrosse,Rugby Union,Soccer,Tennis', 'NA', '(03) 9658 9658', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', -37.7897, 144.954),
(41, 'Sandridge Life Saving Club', '240 The Boulevard ', 'PORT MELBOURNE', '3207', 'VIC', 'Sports', 'Surf Life Saving', 'https://www.sandridge.org.au/about-our-club/contact-us/', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', -37.8396, 144.917),
(42, 'South Yarra Sports Centre', '679 Chapel Street', 'SOUTH YARRA', '3141', 'VIC', 'Sports', 'Basketball,Hockey,Netball,Soccer,Swimming,Tennis,Volleyball', 'https://www.facebook.com/pages/South-Yarra-Sports-Centre/364760320235348', '(03) 9823 7116', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', -37.8356, 144.996),
(43, 'State Netball & Hockey Centre', '10 Brens Drive', 'PARKVILLE', '3052', 'VIC', 'Sports', 'Basketball,Gridiron,Hockey,Lacrosse,Netball,Soccer', 'https://www.melbournesportshub.com.au/snhc/', '3 8379 4222', '09:00-23:00', '09:00-23:00', '09:00-23:00', '09:00-23:00', '09:00-21:00', '08:00-21:00', '08:00-21:00', -37.7853, 144.948),
(44, 'Visy Park', 'Royal Parade', 'PARKVILLE', '3052', 'VIC', 'Sports', 'Football', 'NA', '03 8341 6000', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', -37.7836, 144.962),
(45, 'Westpac Centre', 'Cnr Olympic Boulevard', 'MELBOURNE', '3000', 'VIC', 'Sports', 'Swimming', 'NA', '03 8412 0199', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', -37.8236, 144.98),
(46, 'Yarra Boulevard Loop', ' Yarra Boulevard', 'CARLTON', '3053', 'VIC', 'Sports', 'Cycling', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', -37.7938, 145.015);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sport`
--
ALTER TABLE `sport`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sport`
--
ALTER TABLE `sport`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
