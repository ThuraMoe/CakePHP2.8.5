-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2017 at 05:15 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

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
(3, NULL, 'Why am I nothing?', 'People are unique and each people have different ability and different talent. So, you cannot try to compare yourself to anyone else is the worse thing you ever done.\r\n    So, don\'t try to put yourself into horrible position. No matter it is slow or fast, you must keep on going and doing the right things as much as you can.\r\n    Do not disappoint yourself. Because I already talk about this. Man are <b>unique</b>. So, you are just you and not me.\r\n    The things that you can do is just you can do. No one can\'t do like you. So, be happy. Don\'t think about too much for your future.\r\n     First, imagine what you want to do. Then start doing that thing day by day as much as you can. Don\'t look too much attention on other people success stories.\r\n     Do you know? why I said like this? Because every success person has failure life just like you. Most of us just only see, their success. That\'s point. \r\n      So, we think they are success, but what about me, why I\'m not success yet. That\'s true man. Before they success, may be they thought as you think :)\r\n      So, you can keep on doing whatever you want. Calm and stay focus at present. Not pass. Not future.\r\n      Be paient. Times are waiting to told about your successful stories for  future generation.', '2017-04-15 10:43:39', '0000-00-00 00:00:00'),
(4, NULL, 'Why am I nothing?', 'People are unique and each people have different ability and different talent. So, you cannot try to compare yourself to anyone else is the worse thing you ever done.\r\n    So, don\'t try to put yourself into horrible position. No matter it is slow or fast, you must keep on going and doing the right things as much as you can.\r\n    Do not disappoint yourself. Because I already talk about this. Man are <b>unique</b>. So, you are just you and not me.\r\n    The things that you can do is just you can do. No one can\'t do like you. So, be happy. Don\'t think about too much for your future.\r\n     First, imagine what you want to do. Then start doing that thing day by day as much as you can. Don\'t look too much attention on other people success stories.\r\n     Do you know? why I said like this? Because every success person has failure life just like you. Most of us just only see, their success. That\'s point. \r\n      So, we think they are success, but what about me, why I\'m not success yet. That\'s true man. Before they success, may be they thought as you think :)\r\n      So, you can keep on doing whatever you want. Calm and stay focus at present. Not pass. Not future.\r\n      Be paient. Times are waiting to told about your successful stories for  future generation.', '2017-04-15 10:44:09', '0000-00-00 00:00:00'),
(6, NULL, 'What is CakePHP?', '<p> CakePHP is one of the php framework for developer</p>\r\n', '2017-04-15 11:24:04', '0000-00-00 00:00:00'),
(7, NULL, 'Laravel?', 'One of the coolest PHP frame work					', '2017-04-17 11:40:50', '2017-04-17 07:10:50'),
(13, NULL, 'This is what we got :)', 'Hey, Happiness is the time that you can solve very shit problem when coding Hey Hey Hey ;) :) ;p							', '2017-04-17 11:38:07', '2017-04-17 07:08:07'),
(14, NULL, 'New Post with title', 'this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing this is testing ', '2017-04-17 11:39:49', '0000-00-00 00:00:00'),
(15, NULL, 'New Test with validates', 'Minimun data', '2017-04-17 12:05:56', '0000-00-00 00:00:00'),
(30, NULL, 'I got it CakePHP', 'Thanks a lot ', '2017-04-17 14:49:04', '0000-00-00 00:00:00'),
(32, NULL, 'dfsfgdsFDF', 'sadfaas', '2017-04-17 15:22:08', '0000-00-00 00:00:00');

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
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
