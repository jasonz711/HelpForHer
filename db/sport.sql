-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 28, 2018 at 09:24 PM
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
  `subcategory` text,
  `website` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sport`
--

INSERT INTO `sport` (`id`, `name`, `address`, `suburb`, `postcode`, `state`, `category`, `subcategory`, `website`, `phone`) VALUES
(1, 'AAMI Park', ' Olympic Boulevard', 'MELBOURNE', '3000', 'VIC', 'Sports', 'Rugby League,Rugby Union,Soccer', 'NA', 'NA'),
(2, 'Beaurepaire Hockey Field', ' Tin Alley', 'PARKVILLE', '3052', 'VIC', 'Sports', 'Hockey', 'NA', '(03) 9209 6777'),
(3, 'Carlton Baths Community Centre', '248 Rathdowne Street', 'CARLTON', '3053', 'VIC', 'Sports', 'Badminton,Basketball,Netball ,Soccer ,Swimming,Team Handball,Volleyball', 'http://www.carltonbaths.ymca.org.au/', '9347 3677'),
(4, 'Carlton Gardens Tennis Club', '11 Nicholson Street', 'CARLTON', '3053', 'VIC', 'Sports', 'Tennis', 'http://www.cgtc.org.au/', '(03) 9663 7000'),
(5, 'City of Melbourne Bowls Club', 'Flagstaff Gardens', 'WEST MELBOURNE', '3003', 'VIC', 'Sports', 'Lawn Bowls', 'https://www.citybowls.org/', '03 8329 0211'),
(6, 'Como Park', '305 - 325 Williams Road', 'SOUTH YARRA', '3141', 'VIC', 'Sports', ' Football,Cricket', 'NA', 'NA'),
(7, 'Como Park North', '311 Williams Road', 'SOUTH YARRA', '3141', 'VIC', 'Sports', 'Soccer', 'NA', '(03) 8290 1333'),
(8, 'Debney Park', '38 Mount Alexander Road', 'FLEMINGTON', '3031', 'VIC', 'Sports', 'Cricket,Soccer', 'NA', 'NA'),
(9, 'Docklands Yacht Club', ' North Wharf Road', 'DOCKLANDS', '3008', 'VIC', 'Sports', 'Sailing', 'http://docklands.yachting.org.au/home/', 'NA'),
(10, 'Etihad', '740 Bourke St', 'DOCKLANDS', '3008', 'VIC', 'Sports', 'Football,Cricket,Rugby Union', 'https://etihadstadium.com.au/', '03 8625 7700'),
(11, 'Fawkner Park', ' Pasley Street North', 'SOUTH YARRA', '3141', 'VIC', 'Sports', 'Cricket,Softball,Tennis', 'NA', '(03) 9658 9658'),
(12, 'Flagstaff Gardens', ' 309-311 William Street', 'WEST MELBOURNE', '3003', 'VIC', 'Sports', 'Netball,Tennis', 'NA', '0419 887 719'),
(13, 'Goschs Paddock', 'Olympic Bvd', 'MELBOURNE', '3004', 'VIC', 'Sports', 'Football,Cricket,Rugby League,Rugby Union,Soccer,Touch Football', 'https://www.facebook.com/GoschsPaddock/', '3 9286 1600'),
(14, 'Hawksburn Tennis Club', '12 Bunalbo Avenue', 'SOUTH YARRA', '3141', 'VIC', 'Sports', 'Tennis', 'https://www.facebook.com/GoschsPaddock/', '3 9286 1600'),
(15, 'J.L. Murphy Reserve', ' Williamstown Road', 'PORT MELBOURNE', '3207', 'VIC', 'Sports', 'Football,Baseball,Soccer', 'NA', '(03) 9209 6777'),
(16, 'JJ Holland Park', '67-121 Kensington Road', 'KENSINGTON', '3031', 'VIC', 'Sports', 'Football,BMX,Cricket,Cricket,Skating,Soccer,Touch Football', 'NA', '9658 9658'),
(17, 'Kensington Banks Tennis Club', ' Speakman Street', 'KENSINGTON', '3031', 'VIC', 'Sports', 'Tennis', 'http://www.kensington.ymca.org.au/discover/sporting-facilities/tennis-courts.html', '(03) 9376 1633'),
(18, 'Kensington Community Recreation Centre', ' Altona Street', 'KENSINGTON', '3031', 'VIC', 'Sports', 'Basketball,Netball,Soccer,Swimming', 'http://www.kensington.ymca.org.au/', '(03) 9376 1633'),
(19, 'Kings Domain', 'Alexandra Avenue', 'MELBOURNE', '3004', 'VIC', 'Sports', 'Soccer', 'NA', '9658 9658'),
(20, 'Lagoon Reserve', ' Graham Street', 'PORT MELBOURNE', '3207', 'VIC', 'Sports', 'Cricket,Soccer', 'NA', '(03) 9209 6777'),
(21, 'MCG', ' Brunton Avenue', 'RICHMOND', '3002', 'VIC', 'Sports', ' Football,Cricket', 'http://www.mcg.org.au/', '0418 353 431'),
(22, 'Melbourne City Baths', '420 Swanston Street', 'MELBOURNE', '3000', 'VIC', 'Sports', 'Squash,Swimming', 'NA', '(03)96589011'),
(23, 'Melbourne Grammar School', '1 Domain road', 'MELBOURNE', '3004', 'VIC', 'Sports', 'Hockey', 'NA', '(03)98657700'),
(24, 'Melbourne High School Oval', ' 19 Yarra Street', 'SOUTH YARRA', '3141', 'VIC', 'Sports', 'Football,Cricket,Hockey', 'https://www.mhsviceduau.com/', '0403 069 622'),
(25, 'Melbourne International Shooting Club', ' 120 Todd Road', 'PORT MELBOURNE', '3031', 'VIC', 'Sports', 'Shooting Sports', 'https://www.melbourneinternational.org.au/', '(03) 9646 3976'),
(26, 'Melbourne Martial Arts Academy', '367 Flinders Street', 'MELBOURNE', '3207', 'VIC', 'Sports', 'Martial Arts', 'https://www.melbmartialarts.com.au/', '(03) 9620 5433'),
(27, 'Melbourne and Olympic Park', ' Olympic Boulevard', 'MELBOURNE', '3000', 'VIC', 'Sports', 'Tennis', 'https://www.mopt.com.au/', '03) 9286 1600'),
(28, 'Newmarket Reserve', ' Smithfield Road', 'FLEMINGTON', '3031', 'VIC', 'Sports', 'Cricket,Lawn Bowls,Soccer', 'https://www.facebook.com/pages/Newmarket-Reserve/205880139454156', 'NA'),
(29, 'North Melbourne Community Centre', '53 Buncle Street', 'NORTH MELBOURNE', '3051', 'VIC', 'Sports', 'Basketball,Soccer', 'http://www.nmcc.ymca.org.au/', '(03) 9320 4700'),
(30, 'North Melbourne Football Ground', '204-206 Arden Street', 'NORTH MELBOURNE', '3051', 'VIC', 'Sports', 'Football', 'NA', 'NA'),
(31, 'North Melbourne Recreation Centre', '206 Arden Street', 'NORTH MELBOURNE', '3051', 'VIC', 'Sports', 'Basketball,Netball,Soccer', 'https://www.facebook.com/nmrec/', '(03) 9329 2885'),
(32, 'Port Melbourne Football Club', '525 Williamstown Road', 'PORT MELBOURNE', '3207', 'VIC', 'Sports', ' Football', 'https://www.portmelbournefc.com.au/', '(03) 9646 2094'),
(33, 'Port Melbourne Cricket Club', '525 Williamstown Road', 'PORT MELBOURNE', '3207', 'VIC', 'Sports', 'Cricket', 'http://portmelbournecc.vic.cricket.com.au/home.aspx?', '0402 536 359'),
(34, 'Port Melbourne Bowls Club', '130 Spring Street ', 'PORT MELBOURNE', '3207', 'VIC', 'Sports', 'Lawn Bowls', 'http://www.portmelbbowlingclub.com.au', '03 9646 2642'),
(35, 'Port Melbourne Life Saving Club', '38 Beaconsfield Parade', 'PORT MELBOURNE', '3207', 'VIC', 'Sports', 'Surf Life Saving', 'https://www.portmelblsc.com.au/', '(03) 9646 8773'),
(36, 'Port Melbourne Skate Park', '252 Graham Street', 'PORT MELBOURNE', '3207', 'VIC', 'Sports', 'Skating', 'NA', 'NA'),
(37, 'Port Melbourne Yacht Club', '2 Bay Street', 'PORT MELBOURNE', '3207', 'VIC', 'Sports', 'Sailing', 'http://www.pmyc.asn.au/home/', '03 9645 3107'),
(38, 'Princes Park', ' 200-590 Royal Parade', 'CARLTON NORTH', '3000', 'VIC', 'Sports', 'Lawn Bowls,Soccer,Tennis,Touch Football', 'NA', 'NA'),
(39, 'R.F. Julier Reserve', ' Dunstan Parade', 'PORT MELBOURNE', '3207', 'VIC', 'Sports', 'Basketball', 'NA', '03) 9209 6776'),
(40, 'Royal Park', 'Flemington Rd', 'PARKVILLE', '3052', 'VIC', 'Sports', 'Football,Baseball,Cricket,Cricket,Golf,Gridiron,Lacrosse,Rugby Union,Soccer,Tennis', 'NA', '(03) 9658 9658'),
(41, 'Sandridge Life Saving Club', '240 The Boulevard ', 'PORT MELBOURNE', '3207', 'VIC', 'Sports', 'Surf Life Saving', 'https://www.sandridge.org.au/about-our-club/contact-us/', 'NA'),
(42, 'South Yarra Sports Centre', '679 Chapel Street', 'SOUTH YARRA', '3141', 'VIC', 'Sports', 'Basketball,Hockey,Netball,Soccer,Swimming,Tennis,Volleyball', 'https://www.facebook.com/pages/South-Yarra-Sports-Centre/364760320235348', '(03) 9823 7116'),
(43, 'State Netball & Hockey Centre', '10 Brens Drive', 'PARKVILLE', '3052', 'VIC', 'Sports', 'Basketball,Gridiron,Hockey,Lacrosse,Netball,Soccer', 'https://www.melbournesportshub.com.au/snhc/', '3 8379 4222'),
(44, 'Visy Park', 'Royal Parade', 'PARKVILLE', '3052', 'VIC', 'Sports', 'Football', 'NA', '03 8341 6000'),
(45, 'Westpac Centre', 'Cnr Olympic Boulevard', 'MELBOURNE', '3000', 'VIC', 'Sports', 'Swimming', 'NA', '03 8412 0199'),
(46, 'Yarra Boulevard Loop', ' Yarra Boulevard', 'CARLTON', '3053', 'VIC', 'Sports', 'Cycling', 'NA', 'NA');

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
