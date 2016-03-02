-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2016 at 05:05 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `forum`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
`id` int(8) NOT NULL,
  `topic_id` int(8) NOT NULL,
  `user_id` int(8) NOT NULL,
  `body` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `topic_id`, `user_id`, `body`, `created`, `modified`) VALUES
(21, 57, 5, 'Frame Work\r\nCMS', '2016-02-24 08:15:49', '2016-02-24 08:15:49'),
(22, 57, 5, 'Wordpress, Joomla, Drupal, Magento', '2016-02-24 08:16:25', '2016-02-24 08:16:25'),
(23, 57, 5, 'Cake Php,Codignator,laravel,zend', '2016-02-24 10:32:09', '2016-02-24 10:32:09'),
(24, 57, 5, 'lorem ipsum dummy text lorem ipsum dummy text lorem ipsum dummy text lorem ipsum dummy text lorem ipsum dummy text lorem ipsum dummy text lorem ipsum dummy text lorem ipsum dummy text lorem ipsum dummy text lorem ipsum dummy text lorem ipsum dummy text lorem ipsum dummy text lorem ipsum dummy text lorem ipsum dummy text lorem ipsum dummy text lorem ipsum dummy text lorem ipsum dummy text lorem ipsum dummy text lorem ipsum dummy text lorem ipsum dummy text lorem ipsum dummy text lorem ipsum dummy text lorem ipsum dummy text lorem ipsum dummy text lorem ipsum dummy text lorem ipsum dummy text lorem ipsum dummy text lorem ipsum dummy text lorem ipsum dummy text lorem ipsum dummy text lorem ipsum dummy text lorem ipsum dummy text lorem ipsum dummy text lorem ipsum dummy text lorem ipsum dummy text lorem ipsum dummy text lorem ipsum dummy text lorem ipsum dummy text lorem ipsum dummy text lorem ipsum dummy text lorem ipsum dummy text lorem ipsum dummy text lorem ipsum dummy text lorem ipsum dummy text lorem ipsum dummy text lorem ipsum dummy text lorem ipsum dummy text lorem ipsum dummy text ....', '2016-02-24 10:33:04', '2016-02-24 10:33:04'),
(25, 57, 5, 'Wordpress Theme Development', '2016-02-24 10:33:30', '2016-02-24 10:33:30');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE IF NOT EXISTS `topics` (
`id` int(8) NOT NULL,
  `user_id` int(8) NOT NULL,
  `title` varchar(100) NOT NULL,
  `visible` tinyint(2) NOT NULL COMMENT '1 for visible, 2 for hidden',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=62 ;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `user_id`, `title`, `visible`, `created`, `modified`) VALUES
(57, 4, 'PHP', 1, '2016-02-24 08:13:29', '2016-02-24 08:13:29'),
(58, 4, 'JAVA', 1, '2016-02-24 08:13:42', '2016-02-24 08:13:42'),
(59, 4, 'C', 2, '2016-02-24 08:13:56', '2016-02-24 08:13:56'),
(61, 4, 'Data Structure', 1, '2016-02-24 11:23:27', '2016-02-24 11:23:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(8) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `role` tinyint(2) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `full_name`, `role`, `created`, `modified`) VALUES
(4, 'admin', '49a0b6730847801a279b70811bd80ee09d51c674', 'admin', 2, '2016-02-23 14:53:29', '2016-02-23 14:53:29'),
(5, 'regular_user', '06765669a6d9bc27238d675c939c616f8ef9b86b', 'Regular User', 1, '2016-02-23 14:54:36', '2016-02-23 14:54:36'),
(6, 'test', '29c7d11a175bd638e4a60d61d6b94f52fa03c0f9', 'test', 1, '2016-02-23 15:25:23', '2016-02-23 15:25:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
MODIFY `id` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
MODIFY `id` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
