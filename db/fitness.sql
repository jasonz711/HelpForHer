-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 05, 2018 at 06:28 PM
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
-- Table structure for table `fitness`
--

CREATE TABLE `fitness` (
  `id` int(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `suburb` varchar(100) DEFAULT NULL,
  `postcode` varchar(10) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `subcategory` varchar(50) DEFAULT NULL,
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
-- Dumping data for table `fitness`
--

INSERT INTO `fitness` (`id`, `name`, `address`, `suburb`, `postcode`, `state`, `category`, `subcategory`, `website`, `phone`, `mon`, `tue`, `wed`, `thu`, `fri`, `sat`, `sun`, `lat`, `lon`) VALUES
(1, 'Matrix Pilates & Yoga Studio', 'Level 4  169 Swanston Street', 'Melbourne', '3000', 'VIC', 'Fitness', 'Yoga', 'NA', '(03) 9663 0047', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', -37.8167, 144.967),
(2, 'Yoga Arts Academy', 'Level 2  382 Little Collins Street', 'Melbourne', '3000', 'VIC', 'Fitness', 'Yoga', 'https://www.yogaartsacademy.com/', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', -37.815, 144.965),
(3, 'Corporate Fitness Club', 'Lower Ground  321 Flinders Lane', 'Melbourne', '3000', 'VIC', 'Fitness', 'Fitness centre_Gymnasium Workouts', 'http://www.corporatefitnessclub.com/', '(03) 9621-1577', '06:00-20:00', '06:00-20:00', '06:00-20:00', '06:00-20:00', '06:00-19:00', 'Closed', 'Closed', -37.8175, 144.964),
(4, 'Goodlife Health Club ', '720 Bourke Street', 'Docklands', '3008', 'VIC', 'Fitness', 'Fitness centre', 'https://www.goodlifehealthclubs.com.au/', '03 9099 6600', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', -37.8181, 144.949),
(5, 'Fernwood Melbourne City', '475 Flinders Lane', 'Melbourne', '3000', 'VIC', 'Fitness', 'Fitness centre', 'https://fernwoodfitness.com.au/', '03 9630 8888', '05:30-23:00', '05:30-23:00', '05:30-23:00', '05:30-23:00', '05:30-23:00', '06:00-20:00', '06:00-20:00', -37.7956, 144.975),
(6, 'Fitness First Bourke Street', 'Level 2  341-345 Bourke Street', 'Melbourne', '3000', 'VIC', 'Fitness', 'Fitness centre', 'https://www.fitnessfirst.com.au/find-a-club/bourke-st', '03 9665 0800', '06:00-21:00', '06:00-21:00', '06:00-21:00', '06:00-20:00', '06:00-20:00', 'Closed', 'Closed', -37.8145, 144.963),
(7, 'Fitness First Collins Street', 'Level 1  546 Collins Street', 'Melbourne', '3000', 'VIC', 'Fitness', 'Fitness centre', 'https://www.fitnessfirst.com.au/find-a-club/collins-st-platinum', '03 9222 2100', '06:00-22:00', '06:00-22:00', '06:00-22:00', '06:00-22:00', '06:00-21:00', 'Closed', 'Closed', -37.8182, 144.956),
(8, 'Fitness First Melbourne Central', 'Level 4  211 Latrobe Street', 'Melbourne', '3000', 'VIC', 'Fitness', 'Fitness centre_Gymnasium Workouts', 'https://www.fitnessfirst.com.au/find-a-club/melbourne-central-platinum/', '03 9935 2600', '06:00-21:00', '06:00-21:00', '06:00-21:00', '06:00-21:00', '06:00-21:00', '09:00-18:00', '11:00-18:00', -37.8107, 144.963),
(9, 'Fitness First QV Platinum', 'Cnr Lonsdale and Russell Street', 'Melbourne', '3000', 'VIC', 'Fitness', 'Fitness centre_Gymnasium Workouts', 'https://www.fitnessfirst.com.au/find-a-club/qv-platinum/', '03 8665 4000', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', -37.8107, 144.966),
(11, 'South Pacific Health Club Melbourne', 'CBW Building  Bourke Street', 'Melbourne', '3000', 'VIC', 'Fitness', 'Fitness centre', 'https://www.southpacifichc.com.au/', '03 9604 0900', '06:00-21:00', '06:00-21:00', '06:00-21:00', '06:00-21:00', '06:00-20:30', '08:00-15:00', '10:00-15:00', -37.8157, 144.957),
(12, 'The Century Fitness Club', '100 Franklin Street', 'Melbourne', '3000', 'VIC', 'Fitness', 'Fitness centre', 'NA', '(03) 9329 2100', '06:30-21:00', '06:30-21:00', '06:30-21:00', '06:30-21:00', '06:30-20:00', '08:30-16:30', '08:30-16:30', -37.8082, 144.96),
(13, 'Melbourne City Baths', '420 Swanston Street', 'Melbourne', '3000', 'VIC', 'Fitness', 'Fitness centre_Gymnasium Workouts', 'https://www.facebook.com/melbournecitybaths/', '(03) 9658 9011', '06:00-22:00', '06:00-22:00', '06:00-22:00', '06:00-22:00', '06:00-20:00', '08:00-18:00', '08:00-18:00', -37.8071, 144.963),
(14, 'CAE Arts', 'Level 2  253 Flinders Lane', 'Melbourne', '3000', 'VIC', 'Fitness', 'Dance Class', 'https://www.cae.edu.au/', '03 9652 0611', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', -37.8169, 144.966),
(15, 'Rythemics School of Dance', '439 Elizabeth Street', 'Melbourne', '3000', 'VIC', 'Fitness', 'Dance Class', 'https://www.rythemics.com.au/', '03 9328 3637', '12:00-21:00', '12:00-21:00', '12:00-21:00', '12:00-21:00', '12:00-21:00', '10:00-15:00', 'Closed', -37.8087, 144.961),
(16, 'Melbourne Fight Club', 'Vaults 9&10  367 Flinders St', 'Melbourne', '3000', 'VIC', 'Fitness', 'Martial Arts', 'https://www.melbmartialarts.com.au/', '03 9620 5433', '06:30-21:00', '06:30-21:00', '06:30-21:00', '06:30-21:00', '06:30-20:00', '10:00-17:00', 'NA', -37.8192, 144.962),
(17, 'Malcolm Clark\'s Yoga and Meditation School', 'Level 2  50 Market St', 'East Melbourne', '3002', 'VIC', 'Fitness', 'Yoga', 'NA', '04 1853 0720', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', -37.813, 144.985),
(18, 'Taekwondo Victoria', 'Level 2/232 Victoria Parade', 'East Melbourne', '3002', 'VIC', 'Fitness', 'Martial Arts', 'http://www.tkdvic.com/', '04 1304 2964', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', -37.8092, 144.98),
(20, 'Kensington Community Recreation Centre', 'Cnr Kensington Road and Altona Street', 'Kensington', '3031', 'VIC', 'Fitness', 'Fitness centre', 'http://www.kensington.ymca.org.au/', '(03) 9376 1633', '06:00-21:00', '06:00-21:00', '06:00-21:00', '06:00-21:00', '06:00-20:00', '08:00-19:00', '08:00-19:00', -37.7967, 144.924),
(21, 'Equilibrium Health & Fitness', '19-23 Errol St', 'North Melbourne', '3051', 'VIC', 'Fitness', 'Fitness centre_Gymnasium Workouts', 'http://eqhf.com.au/', '(03) 9329 4477', '08:30-11:30,15:00-19:30', '08:30-11:30,15:00-19:30', '08:30-11:30,15:00-19:30', '08:30-11:30,15:00-19:30', '08:30-11:30', '08:00-12:00', 'Unstaffed', -37.8045, 144.949),
(22, 'Mangala Studios Of Yoga & Creative Dance', '73 Grattan Street', 'Carlton', '3053', 'VIC', 'Fitness', 'Yoga', 'https://www.mangalastudios.com.au/', '(03) 9663 5603', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', -37.8009, 144.967),
(23, 'Oki-Do Yoga Healing & Cooking - Carlton', '3 Waterloo Street', 'Carlton', '3053', 'VIC', 'Fitness', 'Yoga', 'http://www.okido.org.au/', '(03) 9534 2665', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', -37.7954, 144.967),
(24, 'Carlton Baths Community Centre', '248 Rathdowne Street', 'Carlton', '3053', 'VIC', 'Fitness', 'Fitness centre_Gymnasium Workouts', 'http://www.carltonbaths.ymca.org.au/', '(03) 9347 3677', '06:00-22:00', '06:00-22:00', '06:00-22:00', '06:00-22:00', '06:00-22:00', '08:00-20:00', '08:00-20:00', -37.7933, 144.971),
(25, 'Dancehouse ', '150 Princes Street', 'Carlton North', '3054', 'VIC', 'Fitness', 'Dance Class', 'http://dancehouse.com.au/', '(03) 9347 2860', '09:30-17:30', '09:30-17:30', '09:30-17:30', '09:30-17:30', '09:30-17:30', 'Closed', 'Closed', -37.7923, 144.97),
(26, 'Anita Coverdale', '18 Wilson Street', 'South Yarra', '3141', 'VIC', 'Fitness', 'Yoga', 'NA', '(03) 9804 7643', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', -37.844, 144.996),
(27, 'Southport Health Club Genesis', '1-5 Waterfront Place', 'Port Melbourne', '3207', 'VIC', 'Fitness', 'Fitness centre', 'NA', '(03) 9646 3666', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', -37.8413, 144.934),
(28, 'Ceroc Melbourne', '64 Sutton Street', 'North Melbourne', '3051', 'VIC', 'Fitness', 'Dance Class', 'http://www.cerocmelbourne.com.au/', '(03) 9329 6770', '07:30-22:30', '07:30-22:30', '07:30-22:30', '07:30-22:30', '07:30-22:30', '07:30-22:30', '07:30-22:30', -37.7918, 144.938),
(29, 'Fernwood - Carlton', '193-197 Nicholson Street', 'CARLTON', '3053', 'VIC', 'Fitness', 'Gymnasium Workouts', 'https://www.fernwoodfitness.com.au/clubs/vic/carlton/', '03 9348 2022', '06:00-19:30', '06:00-19:30', '06:00-19:30', '06:00-19:30', '06:00-18:00', '08:00-12:00', '09:00-12:00', -37.7956, 144.975),
(30, 'Fishermen\'s Bend Gymnastics Club', '153B Boundary Street', 'PORT MELBOURNE', '3207', 'VIC', 'Fitness', 'Gymnasium Workouts', 'http://fbgc.org.au/', '0478 104 486', '10:00-20:00', '10:00-20:00', '10:00-20:00', '10:00-20:00', '10:00-18:30', '08:30-14:00', 'Closed', -37.8275, 144.941),
(31, 'Kids in Motion', '11 Rocklea Drive', 'PORT MELBOURNE', '3207', 'VIC', 'Fitness', 'Gymnasium Workouts', 'http://kidsinmotion.com.au/', '(03) 9681 9407', '09:30-20:30', '09:30-20:30', '09:30-20:30', '09:30-20:30', '09:30-20:30', 'Closed ', 'Closed', -37.8307, 144.92),
(32, 'Fitness First', 'Level 2  341-345 Bourke Street', 'MELBOURNE', '3000', 'VIC', 'Fitness', 'Gymnasium Workouts', 'https://www.fitnessfirst.com.au', ' 3 9665 0800', '06:00-21:00', '06:00-21:00', '06:00-21:00', '06:00-20:00', '06:00-20:00', 'Closed ', 'Closed', -37.8145, 144.963),
(34, 'Active Melbourne City Sports', '744 Bourke Street', 'DOCKLANDS', '3008', 'VIC', 'Fitness', 'Gymnasium Workouts', 'http://amcs.melbourne.vic.gov.au/', '(03) 9604 8600', '9:00-17:30', '9:00-17:30', '9:00-17:30', '9:00-17:30', '9:00-17:30', 'Closed', 'Closed', -37.8185, 144.947),
(35, 'Beach House City Express', '23 Little Latrobe Street', 'MELBOURNE', '3000', 'VIC', 'Fitness', 'Gymnasium Workouts', 'NA', '(03) 9654 1444', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', -37.8094, 144.963),
(38, 'Fernwood Women\'s Health Club', '193-197 Nicholson Street', 'CARLTON', '3053', 'VIC', 'Fitness', 'Gymnasium Workouts', 'https://www.fernwoodfitness.com.au/', '(03) 9348 2022', '05:30-23:00', '05:30-23:00', '05:30-23:00', '05:30-23:00', '05:30-23:00', '06:00-20:00', '06:00-20:00', -37.7956, 144.975),
(39, 'Fitness First Melbourne CBD Bourke St', '341-345 Bourke Street', 'MELBOURNE', '3000', 'VIC', 'Fitness', 'Gymnasium Workouts', 'https://www.fitnessfirst.com.au', '1300 557 799', '06:00-21:00', '06:00-21:00', '06:00-21:00', '06:00-20:00', '06:00-20:00', 'Closed', 'Closed', -37.8145, 144.963),
(42, 'Genesis Flinders st', '452 Flinders Street', 'MELBOURNE', '3000', 'VIC', 'Fitness', 'Gymnasium Workouts', 'https://www.genesisfitness.com.au', '(03) 9614 1001', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', -37.8195, 144.959),
(43, 'Genesis Southbank', '4 Freshwater Place', 'SOUTHBANK', '3006', 'VIC', 'Fitness', 'Gymnasium Workouts', 'https://www.genesisfitness.com.au', '03 9690 2626', '06:00-21:00', '06:00-21:00', '06:00-21:00', '06:00-21:00', '06:00-20:00', '07:00-17:00', '08:00-17:00', -37.8222, 144.963),
(44, 'Gensis Fitness', '50 Lonsdale Street', 'MELBOURNE', '3000', 'VIC', 'Fitness', 'Gymnasium Workouts', 'https://www.genesisfitness.com.au', '(03) 9639 4400', '06:00-21:00', '06:00-21:00', '06:00-21:00', '06:00-21:00', '06:00-20:00', '08:00-12:00', 'Closed', -37.8093, 144.971),
(45, 'Jetts Fitness', '750 Collins Street', 'DOCKLANDS', '3008', 'VIC', 'Fitness', 'Gymnasium Workouts', 'https://www.jetts.com.au/clubs/docklands', '(03)96428033', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', 'Open 24 hours', -37.8204, 144.949),
(46, 'Lifestyle Fitness Centre', '500 Burke Street', 'MELBOURNE', '3000', 'VIC', 'Fitness', 'Gymnasium Workouts', 'NA', '(03)96709291', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', -37.8133, 144.962),
(48, 'Metrobody Health & Fitness', '21 Mary St', 'NORTH MELBOURNE', '3051', 'VIC', 'Fitness', 'Gymnasium Workouts', 'https://metrobody.com.au/', '(03) 9328 1123', '06:00-21:00', '06:00-21:00', '06:00-21:00', '06:00-21:00', '06:00-21:00', '07:30-17:00', '07:30-17:00', -37.7993, 144.952),
(49, 'North Melbourne Community Centre', '53 Buncle Street', 'NORTH MELBOURNE', '3051', 'VIC', 'Fitness', 'Gymnasium Workouts', 'http://www.nmcc.ymca.org.au/', '(03) 9320 4700', '09:00-21:00', '09:00-21:00', '09:00-21:00', '09:00-21:00', '09:00-21:00', '08:00-15:00', '08:00-16:00', -37.7933, 144.94),
(50, 'North Melbourne Recreation Centre', '204-206 Arden St', 'North MELBOURNE', '3051', 'VIC', 'Fitness', 'Gymnasium Workouts', 'https://www.facebook.com/nmrec/', '(03) 9658 9444', '06:00-21:00', '06:00-21:00', '06:00-21:00', '06:00-21:00', '06:00-21:00', '08:00-18:00', '08:00-18:00', -37.7991, 144.942),
(51, 'RMIT Union Fitness Centre', '445 Swanston Street', 'MELBOURNE', '3000', 'VIC', 'Fitness', 'Gymnasium Workouts', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', -37.8083, 144.963),
(52, 'South Pacific Health Club Melbourne CBD', '550 Bourke Street', 'MELBOURNE', '3000', 'VIC', 'Fitness', 'Gymnasium Workouts', 'https://www.southpacifichc.com.au', '(03) 9604 0900', '06:00-21:00', '06:00-21:00', '06:00-21:00', '06:00-21:00', '06:00-20:30', '08:00-15:00', '10:00-15:00', -37.8157, 144.957),
(53, 'TKO Fitness', '99 Hawke Street', 'WEST MELBOURNE', '3003', 'VIC', 'Fitness', 'Gymnasium Workouts', 'http://www.tkofitness.com.au/', '(03) 9329 3006', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', -36.7453, 144.289),
(54, 'Progression Fitness Club - GLASSHOUSE', '1 Olympic Boulevard', 'MELBOURNE', '3001', 'VIC', 'Fitness', 'Gymnasium Workouts', 'http://progressionfitness.com.au/', '0429 346 620', '05:30-20:00', '05:30-20:00', '05:30-20:00', '05:30-20:00', '05:30-10:00', '07:00-10:00', '09:00-11:00', -37.8245, 144.98),
(55, 'YMCA Docklands', '100 Habour Esplanade', 'DOCKLANDS', '3008', 'VIC', 'Fitness', 'Gymnasium Workouts', 'http://victoria.ymca.org.au/', '(03) 8615 9622', '09:00-17:30', '09:00-17:30', '09:00-17:30', '09:00-17:30', '09:00-17:30', 'Closed', 'Closed', -37.8224, 144.946);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fitness`
--
ALTER TABLE `fitness`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fitness`
--
ALTER TABLE `fitness`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
