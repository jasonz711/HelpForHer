-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 28, 2018 at 09:21 PM
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
-- Table structure for table `arts`
--

CREATE TABLE `arts` (
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
-- Dumping data for table `arts`
--

INSERT INTO `arts` (`id`, `name`, `address`, `suburb`, `postcode`, `state`, `category`, `subcategory`, `website`, `phone`) VALUES
(1, 'Sidney Myer Music Bowl', 'Kings Domain Gardens Linlithgow Ave', 'Melbounre', '3000', 'VIC', 'Arts', 'Music', 'http://www.theartscentre.com.au/discover/venues/sidney-myer-music-bowl.aspx', '1300 182 183'),
(2, 'The State Library of Victoria', '328 Swanston Street', 'Melbourne', '3000', 'VIC', 'Arts', 'Literature', 'http://www.slv.vic.gov.au', '03 8664 7000'),
(3, 'Express Media', 'Level 1/176 Little Lonsdale Street', 'Melbourne', '3000', 'VIC', 'Arts', 'Literature', 'http://www.expressmedia.org.au/', '(03) 9094 7886'),
(4, 'Australian Poetry Centre', 'Level 1/176 Little Lonsdale Street', 'Melbourne', '3000', 'VIC', 'Arts', 'Literature', 'http://www.australianpoetrycentre.org.au/', ' 3 9094 7829'),
(5, 'RMIT Gallery', '344 Swanston Street', 'Melbourne', '3000', 'VIC', 'Arts', 'Gallery', 'http://www.rmit.edu.au/rmitgallery', '(03)99251717'),
(6, 'Arts House', '521 Queensberry Street', 'North Melbourne', '3051', 'VIC', 'Arts', 'Theatre', 'https://www.artshouse.com.au/#', '(03)93223720'),
(7, 'Club Wild', '521 Queensberry Street', 'North Melbourne', '3051', 'VIC', 'Arts', 'music', 'http://www.clubwild.net/HOME.html', '(03) 9326 9970 '),
(8, 'Melbourne Museum', '11 Nicholson St', 'Carlton', '3053', 'VIC', 'Arts', 'Musuem', 'http://museumvictoria.com.au/melbournemuseum/', '(03) 8341 7777'),
(9, 'Royal Historical Society of Victoria', '239 A\'Beckett Street', 'Melbourne', '3000', 'VIC', 'Arts', 'Gallery', 'http://www.historyvictoria.org.au', '03 9326 9288'),
(10, 'Craft Victoria', 'Watson Place  off Flinders Lane', 'Melbourne', '3000', 'VIC', 'Arts', 'Gallery', 'http://www.craft.org.au/', '03 9650 7775'),
(11, 'Blindside Gallery', 'Level 7  Room 14  Nicholas Building  37 Swanston St', 'Melbourne', '3000', 'VIC', 'Arts', 'Visual arts and craft', 'http://www.blindside.org.au/', '03 9650 0093'),
(12, 'West Space Inc', 'Level 1  225 Bourke St', 'Melbourne', '3000', 'VIC', 'Arts', 'Gallery', 'http://www.westspace.org.au/', '3 9662 3297'),
(13, 'Loop Gallery', 'Loop 23 Meyers Place', 'Melbourne', '3000', 'VIC', 'Arts', 'Gallery', 'http://www.looponline.com.au/', '03 9654 0500'),
(14, 'NETS Victoria', 'C/- The Ian Potter Centre  National Gallery of Victoria  Federation Square', 'MELBOURNE', '3004', 'VIC', 'Arts', 'Visual arts and craft', 'https://netsvictoria.org.au/', '3 8662 1507'),
(15, 'Australian Centre for Contemporary Art', '111 Sturt Street', 'SOUTHBANK', '3006', 'VIC', 'Arts', 'Visual arts and craft', 'http://acca.melbourne/', '3 9697 9999'),
(16, 'Melbourne Chamber Orchestra', 'Suite 110  Block Arcade 282 Collins Street', 'MELBOURNE', '3000', 'VIC', 'Arts', 'Visual arts and craft', 'https://mco.org.au/', '(03) 9650 3365'),
(17, 'La Mama Inc (VIC)', '205 Faraday Street', 'CARLTON', '3053', 'VIC', 'Arts', 'Visual arts and craft', 'http://www.lamama.com.au/', '0393 476 948'),
(18, 'Dancehouse Incorporated', '150 Princes Street', 'CARLTON NORTH', '3054', 'VIC', 'Arts', 'Visual arts and craft', 'http://www.dancehouse.com.au/', '3 9347 2860'),
(19, 'Chunky Move Ltd', '111 Sturt Street', 'SOUTHBANK', '3006', 'VIC', 'Arts', 'Visual arts and craft', 'http://chunkymove.com/', '03 9645 5188'),
(20, 'Lucy Guerin Association Inc', '28 Batman Street', 'WEST MELBOURNE', '3003', 'VIC', 'Arts', 'Visual arts and craft', 'http://www.lucyguerininc.com/', '393294213'),
(21, 'Ilbijerri Aboriginal and Torres Strait Islander Theatre Co-op', ' 5 Blackwood street', 'NORTH MELBOURNE', '3051', 'VIC', 'Arts', 'Visual arts and craft', 'http://www.ilbijerri.com.au/', '393299097'),
(22, 'Melbourne Theatre Company', '252 Sturt Street', 'SOUTHBANK', '3006', 'VIC', 'Arts', 'Theatre', 'http://www.mtc.com.au/', '386880800'),
(23, 'The Malthouse Theatre', '113 Sturt Street', 'SOUTHBANK', '3006', 'VIC', 'Arts', 'Theatre', 'https://malthousetheatre.com.au/', '396855111'),
(24, 'Melbourne Symphony Orchestra Holding Ltd', ' 120-130 Southbank Boulevard', 'SOUTHBANK', '3006', 'VIC', 'Arts', 'Music', 'https://www.mso.com.au/', '03) 9929 9600'),
(25, 'The Australian Ballet', 'Level 6  2 Kavanagh Street', 'SOUTHBANK', '3006', 'VIC', 'Arts', 'Dance', 'https://australianballet.com.au/', '03 9669 2700');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arts`
--
ALTER TABLE `arts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `arts`
--
ALTER TABLE `arts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
