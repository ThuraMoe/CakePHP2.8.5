-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2017 at 12:31 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_place`
--
CREATE DATABASE IF NOT EXISTS `blog_place` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `blog_place`;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(32) NOT NULL,
  `user_id` int(32) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `body` text,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `body`, `created_at`, `modified`) VALUES
(1, 1, 'Fixed Navigation Bar with update', 'The navigation bar can also be fixed at the top or at the bottom of the page.\r\nA fixed navigation bar stays visible in a fixed position (top or bottom) independent of the page scroll.\r\n\r\nThe .navbar-fixed-top class makes the navigation bar fixed at the top:\r\n				Updateddddd																				', '2017-04-17 15:02:48', '2017-04-17 10:32:48'),
(2, 2, 'Bootstrap References', 'At W3Schools you will find a complete Bootstrap reference of all CSS classes, Components, and JavaScript plugins - all with \"Try it Yourself\" examples:\r\n\r\nComplete List of All Bootstrap ClassesPopular\r\n\r\nBootstrap CSS Text/Typography\r\nBootstrap CSS Buttons\r\nBootstrap CSS Forms\r\nBootstrap CSS Helpers\r\nBootstrap CSS Images\r\nBootstrap CSS Tables\r\n\r\nBootstrap Components Dropdowns\r\nBootstrap Components Navs\r\nBootstrap Components Glyphicons\r\n\r\nBootstrap JS Affix\r\nBootstrap JS Alert\r\nBootstrap JS Button\r\nBootstrap JS Carousel\r\nBootstrap JS Collapse\r\nBootstrap JS Dropdown\r\nBootstrap JS Modal\r\nBootstrap JS Popover\r\nBootstrap JS Scrollspy\r\nBootstrap JS Tab\r\nBootstrap JS Tooltip\r\n', '2017-04-14 15:59:37', '0000-00-00 00:00:00'),
(6, NULL, 'What is CakePHP?', '<p> CakePHP is one of the php framework for developer</p>\r\n', '2017-04-15 11:24:04', '0000-00-00 00:00:00'),
(7, NULL, 'Laravel?', 'One of the coolest PHP frame work					', '2017-04-17 11:40:50', '2017-04-17 07:10:50'),
(14, NULL, 'New Post with title', 'this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing ', '2017-04-17 11:39:49', '0000-00-00 00:00:00'),
(15, NULL, 'New Test with validates', 'Minimun data', '2017-04-17 12:05:56', '0000-00-00 00:00:00'),
(30, NULL, 'I got it CakePHP', 'Thanks a lot ', '2017-04-17 14:49:04', '0000-00-00 00:00:00'),
(31, NULL, 'Testing Tile', 'test', '2017-07-17 16:56:08', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
