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
-- Table structure for table `fitness`
--

CREATE TABLE `fitness` (
  `id` int(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `suburb` varchar(50) DEFAULT NULL,
  `postcode` varchar(10) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `subcategory` varchar(50) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fitness`
--

INSERT INTO `fitness` (`id`, `name`, `address`, `suburb`, `postcode`, `state`, `category`, `subcategory`, `website`, `phone`) VALUES
(1, 'Matrix Pilates & Yoga Studio', 'Level 4  169 Swanston Street', 'Melbourne', '3000', 'VIC', 'Fitness', 'Yoga', 'NA', '(03) 9663 0047'),
(2, 'Yoga Arts Academy', 'Level 2  382 Little Collins Street', 'Melbourne', '3000', 'VIC', 'Fitness', 'Yoga', 'https://www.yogaartsacademy.com/', 'NA'),
(3, 'Corporate Fitness Club', 'Lower Ground  321 Flinders Lane', 'Melbourne', '3000', 'VIC', 'Fitness', 'Fitness centre_Gymnasium Workouts', 'http://www.corporatefitnessclub.com/', '(03) 9621-1577'),
(4, 'Goodlife Health Club ', '720 Bourke Street', 'Docklands', '3008', 'VIC', 'Fitness', 'Fitness centre', 'https://www.goodlifehealthclubs.com.au/', '03 9099 6600'),
(5, 'Fernwood Melbourne City', '475 Flinders Lane', 'Melbourne', '3000', 'VIC', 'Fitness', 'Fitness centre', 'https://fernwoodfitness.com.au/', '03 9630 8888'),
(6, 'Fitness First Bourke Street', 'Level 2  341-345 Bourke Street', 'Melbourne', '3000', 'VIC', 'Fitness', 'Fitness centre', 'https://www.fitnessfirst.com.au/find-a-club/bourke-st', '03 9665 0800'),
(7, 'Fitness First Collins Street', 'Level 1  546 Collins Street', 'Melbourne', '3000', 'VIC', 'Fitness', 'Fitness centre', 'https://www.fitnessfirst.com.au/find-a-club/collins-st-platinum', '03 9222 2100'),
(8, 'Fitness First Melbourne Central', 'Level 4  211 Latrobe Street', 'Melbourne', '3000', 'VIC', 'Fitness', 'Fitness centre_Gymnasium Workouts', 'https://www.fitnessfirst.com.au/find-a-club/melbourne-central-platinum/', '03 9935 2600'),
(9, 'Fitness First QV Platinum', 'Cnr Lonsdale and Russell Street', 'Melbourne', '3000', 'VIC', 'Fitness', 'Fitness centre_Gymnasium Workouts', 'https://www.fitnessfirst.com.au/find-a-club/qv-platinum/', '03 8665 4000'),
(10, 'Lifestyle Fitness Melbourne', '276 Russell Street', 'Melbourne', '3000', 'VIC', 'Fitness', 'Fitness centre', 'NA', '(03) 9663 5300'),
(11, 'South Pacific Health Club Melbourne', 'CBW Building  Bourke Street', 'Melbourne', '3000', 'VIC', 'Fitness', 'Fitness centre', 'https://www.southpacifichc.com.au/', '03 9604 0900'),
(12, 'The Century Fitness Club', '100 Franklin Street', 'Melbourne', '3000', 'VIC', 'Fitness', 'Fitness centre', 'NA', '(03) 9329 2100'),
(13, 'Melbourne City Baths', '420 Swanston Street', 'Melbourne', '3000', 'VIC', 'Fitness', 'Fitness centre_Gymnasium Workouts', 'https://www.facebook.com/melbournecitybaths/', '(03) 9658 9011'),
(14, 'CAE Arts', 'Level 2  253 Flinders Lane', 'Melbourne', '3000', 'VIC', 'Fitness', 'Dance Class', 'https://www.cae.edu.au/', '03 9652 0611'),
(15, 'Rythemics School of Dance', '439 Elizabeth Street', 'Melbourne', '3000', 'VIC', 'Fitness', 'Dance Class', 'https://www.rythemics.com.au/', '03 9328 3637'),
(16, 'Melbourne Fight Club', 'Vaults 9&10  367 Flinders St', 'Melbourne', '3000', 'VIC', 'Fitness', 'Martial Arts', 'https://www.melbmartialarts.com.au/', '03 9620 5433'),
(17, 'Malcolm Clark\'s Yoga and Meditation School', 'Level 2  50 Market St', 'East Melbourne', '3002', 'VIC', 'Fitness', 'Yoga', 'NA', '04 1853 0720'),
(18, 'Taekwondo Victoria', 'Level 2/232 Victoria Parade', 'East Melbourne', '3002', 'VIC', 'Fitness', 'Martial Arts', 'http://www.tkdvic.com/', '04 1304 2964'),
(19, 'Joining the Chorus', '49 Batman Street', 'West Melbourne', '3003', 'VIC', 'Fitness', 'Dance Class', 'NA', '(03) 9329 8210'),
(20, 'Kensington Community Recreation Centre', 'Cnr Kensington Road and Altona Street', 'Kensington', '3031', 'VIC', 'Fitness', 'Fitness centre', 'http://www.kensington.ymca.org.au/', '(03) 9376 1633'),
(21, 'Equilibrium Health & Fitness', '19-23 Errol St', 'North Melbourne', '3051', 'VIC', 'Fitness', 'Fitness centre_Gymnasium Workouts', 'http://eqhf.com.au/', '(03) 9329 4477'),
(22, 'Mangala Studios Of Yoga & Creative Dance', '73 Grattan Street', 'Carlton', '3053', 'VIC', 'Fitness', 'Yoga', 'https://www.mangalastudios.com.au/', '(03) 9663 5603'),
(23, 'Oki-Do Yoga Healing & Cooking - Carlton', '3 Waterloo Street', 'Carlton', '3053', 'VIC', 'Fitness', 'Yoga', 'http://www.okido.org.au/', '(03) 9534 2665'),
(24, 'Carlton Baths Community Centre', '248 Rathdowne Street', 'Carlton', '3053', 'VIC', 'Fitness', 'Fitness centre_Gymnasium Workouts', 'http://www.carltonbaths.ymca.org.au/', '(03) 9347 3677'),
(25, 'Dancehouse ', '150 Princes Street', 'Carlton North', '3054', 'VIC', 'Fitness', 'Dance Class', 'http://dancehouse.com.au/', '(03) 9347 2860'),
(26, 'Anita Coverdale', '18 Wilson Street', 'South Yarra', '3141', 'VIC', 'Fitness', 'Yoga', 'NA', '(03) 9804 7643'),
(27, 'Southport Health Club Genesis', '1-5 Waterfront Place', 'Port Melbourne', '3207', 'VIC', 'Fitness', 'Fitness centre', 'NA', '(03) 9646 3666'),
(28, 'Ceroc Melbourne', '\n64 Sutton Street', 'North Melbourne', '3051', 'VIC', 'Fitness', 'Dance Class', 'http://www.cerocmelbourne.com.au/', '(03) 9329 6770'),
(29, 'Fernwood - Carlton', '193-197 Nicholson Street', 'CARLTON', '3053', 'VIC', 'Fitness', 'Gymnasium Workouts', 'https://www.fernwoodfitness.com.au/clubs/vic/carlton/', '03 9348 2022'),
(30, 'Fishermen\'s Bend Gymnastics Club', '153B Boundary Street', 'PORT MELBOURNE', '3207', 'VIC', 'Fitness', 'Gymnasium Workouts', 'http://fbgc.org.au/', '0478 104 486'),
(31, 'Kids in Motion', '11 Rocklea Drive', 'PORT MELBOURNE', '3207', 'VIC', 'Fitness', 'Gymnasium Workouts', 'http://kidsinmotion.com.au/', '(03) 9681 9407'),
(32, 'Fitness First', 'Level 2  341-345 Bourke Street', 'MELBOURNE', '3000', 'VIC', 'Fitness', 'Gymnasium Workouts', 'https://www.fitnessfirst.com.au', ' 3 9665 0800'),
(33, 'South Yarra Sports Centre', '679 Chapel Street', 'SOUTH YARRA', '3141', 'VIC', 'Fitness', 'Gymnasium Workouts', 'NA', '(03) 9823 7116'),
(34, 'Active Melbourne City Sports', '744 Bourke Street', 'DOCKLANDS', '3008', 'VIC', 'Fitness', 'Gymnasium Workouts', 'http://amcs.melbourne.vic.gov.au/', '(03) 9604 8600'),
(35, 'Beach House City Express', '23 Little Latrobe Street', 'MELBOURNE', '3000', 'VIC', 'Fitness', 'Gymnasium Workouts', 'NA', '(03) 9654 1444'),
(38, 'Fernwood Women\'s Health Club', '193-197 Nicholson Street', 'CARLTON', '3053', 'VIC', 'Fitness', 'Gymnasium Workouts', 'https://www.fernwoodfitness.com.au/', '(03) 9348 2022'),
(39, 'Fitness First Melbourne CBD Bourke St', '341-345 Bourke Street', 'MELBOURNE', '3000', 'VIC', 'Fitness', 'Gymnasium Workouts', 'https://www.fitnessfirst.com.au', '1300 557 799'),
(42, 'Genesis Flinders st', '452 Flinders Street', 'MELBOURNE', '3000', 'VIC', 'Fitness', 'Gymnasium Workouts', 'https://www.genesisfitness.com.au', '(03) 9614 1001'),
(43, 'Genesis Southbank', '4 Freshwater Place', 'SOUTHBANK', '3006', 'VIC', 'Fitness', 'Gymnasium Workouts', 'https://www.genesisfitness.com.au', '03 9690 2626'),
(44, 'Gensis Fitness', '50 Lonsdale Street', 'MELBOURNE', '3000', 'VIC', 'Fitness', 'Gymnasium Workouts', 'https://www.genesisfitness.com.au', '(03) 9639 4400'),
(45, 'Jetts Fitness', '750 Collins Street', 'DOCKLANDS', '3008', 'VIC', 'Fitness', 'Gymnasium Workouts', 'https://www.jetts.com.au/clubs/docklands', '(03)96428033'),
(46, 'Lifestyle Fitness Centre', '500 Burke Street', 'MELBOURNE', '3000', 'VIC', 'Fitness', 'Gymnasium Workouts', 'NA', '(03)96709291'),
(48, 'Metrobody Health & Fitness', '21 Mary St', 'NORTH MELBOURNE', '3051', 'VIC', 'Fitness', 'Gymnasium Workouts', 'https://metrobody.com.au/', '(03) 9328 1123'),
(49, 'North Melbourne Community Centre', '53 Buncle Street', 'NORTH MELBOURNE', '3051', 'VIC', 'Fitness', 'Gymnasium Workouts', 'http://www.nmcc.ymca.org.au/', '(03) 9320 4700'),
(50, 'North Melbourne Recreation Centre', '204-206 Arden St', 'MELBOURNE', '3000', 'VIC', 'Fitness', 'Gymnasium Workouts', 'https://www.facebook.com/nmrec/', '(03) 9658 9444'),
(51, 'RMIT Union Fitness Centre', '445 Swanston Street', 'MELBOURNE', '3000', 'VIC', 'Fitness', 'Gymnasium Workouts', 'NA', 'NA'),
(52, 'South Pacific Health Club Melbourne CBD', '550 Bourke Street', 'NORTH MELBOURNE', '3051', 'VIC', 'Fitness', 'Gymnasium Workouts', 'https://www.southpacifichc.com.au', '(03) 9604 0900'),
(53, 'TKO Fitness', '99 Hawke Street', 'WEST MELBOURNE', '3003', 'VIC', 'Fitness', 'Gymnasium Workouts', 'http://www.tkofitness.com.au/', '(03) 9329 3006'),
(54, 'Progression Fitness Club - GLASSHOUSE', '1 Olympic Boulevard', 'MELBOURNE', '3001', 'VIC', 'Fitness', 'Gymnasium Workouts', 'http://progressionfitness.com.au/', '0429 346 620'),
(55, 'YMCA Docklands', '100 Habour Esplanade', 'DOCKLANDS', '3008', 'VIC', 'Fitness', 'Gymnasium Workouts', 'http://victoria.ymca.org.au/', '(03) 8615 9622');

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
