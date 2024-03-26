-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2024 at 07:16 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiznest`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `password`) VALUES
('p.punj@iitg.ac.in', 'prakhar');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('6602f9338d6da', '6602f9338eae0'),
('6602f9339386e', '6602f93394569'),
('6602f93398200', '6602f9339a5fb'),
('6602f9339e7da', '6602f9339f518'),
('6602f933a3d16', '6602f933a485d'),
('6602f933a86a0', '6602f933a918f'),
('6602f933ac7cd', '6602f933ad209'),
('6602f933b016f', '6602f933b0e35'),
('6602f933b4db1', '6602f933b57a0'),
('6602f933b8e9f', '6602f933b979d'),
('6603051a86e6f', '6603051a87c34'),
('6603051a8c388', '6603051a8d358'),
('66030aec5c528', '66030aec5d24d'),
('66030b46afed7', '66030b46b0f32'),
('66030db455d00', '66030db456e17'),
('66030db45ae2b', '66030db45b971');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('p.punj@iitg.ac.in', '6602f89b17dcd', 0, 10, 0, 10, '2024-03-26 16:49:13'),
('r.daksh@iitg.ac.in', '6602f89b17dcd', 6, 10, 3, 7, '2024-03-26 17:11:07'),
('k.harsh@iitg.ac.in', '6602f89b17dcd', 10, 10, 5, 5, '2024-03-26 17:38:31'),
('k.harsh@iitg.ac.in', '660304f9055cc', 2, 2, 1, 1, '2024-03-26 17:38:41'),
('awika.nayan@gmail.com', '660304f9055cc', 4, 2, 2, 0, '2024-03-26 17:40:34'),
('awika.nayan@gmail.com', '6602f89b17dcd', 6, 10, 3, 7, '2024-03-26 17:41:09'),
('abhinav@iitd.ac.in', '6602f89b17dcd', 0, 10, 0, 10, '2024-03-26 17:48:53'),
('r.daksh@iitg.ac.in', '66030b1eea72b', 50, 1, 1, 0, '2024-03-26 17:52:42'),
('r.daksh@iitg.ac.in', '66030abfd6fce', 10, 1, 1, 0, '2024-03-26 17:52:52'),
('abhinav@iitd.ac.in', '66030abfd6fce', 10, 1, 1, 0, '2024-03-26 17:53:28'),
('abhinav@iitd.ac.in', '660304f9055cc', 4, 2, 2, 0, '2024-03-26 17:53:39'),
('r.daksh@iitg.ac.in', '660304f9055cc', 4, 2, 2, 0, '2024-03-26 17:55:42');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('6602f9338d6da', '5', '6602f9338ead6'),
('6602f9338d6da', '7', '6602f9338eade'),
('6602f9338d6da', '4', '6602f9338eae0'),
('6602f9338d6da', '1', '6602f9338eae1'),
('6602f9339386e', 'njedfn', '6602f93394569'),
('6602f9339386e', 'kenfjn', '6602f9339456d'),
('6602f9339386e', 'kkeen', '6602f9339456e'),
('6602f9339386e', 'kdnvk', '6602f9339456f'),
('6602f93398200', 'dkvdnk', '6602f9339a5f5'),
('6602f93398200', 'vkdrnwk', '6602f9339a5fa'),
('6602f93398200', 'knenfwk', '6602f9339a5fb'),
('6602f93398200', 'DWEMJVFBN', '6602f9339a5fc'),
('6602f9339e7da', 'dsjgbjgs', '6602f9339f518'),
('6602f9339e7da', 'jkrngs', '6602f9339f51f'),
('6602f9339e7da', 'jvnfwej', '6602f9339f520'),
('6602f9339e7da', 'nfejn', '6602f9339f521'),
('6602f933a3d16', 'knvwnrfvk', '6602f933a4859'),
('6602f933a3d16', 'kvednvwn', '6602f933a485b'),
('6602f933a3d16', 'veikdnk', '6602f933a485c'),
('6602f933a3d16', 'knkwven', '6602f933a485d'),
('6602f933a86a0', 'vknwdk', '6602f933a918d'),
('6602f933a86a0', 'emnkdwn', '6602f933a918f'),
('6602f933a86a0', 'vikenwkqn', '6602f933a9190'),
('6602f933a86a0', 'kedkvn', '6602f933a9191'),
('6602f933ac7cd', 'vjkewndjn', '6602f933ad205'),
('6602f933ac7cd', 'vekndwn', '6602f933ad209'),
('6602f933ac7cd', 'vkdejnwk', '6602f933ad20b'),
('6602f933ac7cd', 'kwkfqej', '6602f933ad20c'),
('6602f933b016f', 'nkfsvndkns', '6602f933b0e2f'),
('6602f933b016f', 'wedfknksn', '6602f933b0e33'),
('6602f933b016f', 'skdjnvk', '6602f933b0e35'),
('6602f933b016f', 'wefnjnjwe', '6602f933b0e36'),
('6602f933b4db1', 'wenkgfknwe', '6602f933b579c'),
('6602f933b4db1', 'ewfhnwefjik', '6602f933b579e'),
('6602f933b4db1', 'jjfewbnjnf', '6602f933b579f'),
('6602f933b4db1', 'efknkewfnnw', '6602f933b57a0'),
('6602f933b8e9f', 'knwefrnjkiwne', '6602f933b9799'),
('6602f933b8e9f', 'jfnejnwfjn', '6602f933b979d'),
('6602f933b8e9f', 'jwenjfnj', '6602f933b979f'),
('6602f933b8e9f', 'kefjnqwkjn', '6602f933b97a0'),
('6603051a86e6f', '10', '6603051a87c2d'),
('6603051a86e6f', '2', '6603051a87c32'),
('6603051a86e6f', '15', '6603051a87c33'),
('6603051a86e6f', '12', '6603051a87c34'),
('6603051a8c388', '-5', '6603051a8d352'),
('6603051a8c388', '5', '6603051a8d357'),
('6603051a8c388', '-2', '6603051a8d358'),
('6603051a8c388', '2', '6603051a8d35a'),
('66030aec5c528', 'pdf', '66030aec5d24d'),
('66030aec5c528', 'joint marginal', '66030aec5d253'),
('66030aec5c528', 'cdf', '66030aec5d254'),
('66030aec5c528', 'none', '66030aec5d255'),
('66030b46afed7', 'John Mcarthy', '66030b46b0f32'),
('66030b46afed7', 'Leonardo Da Vinci', '66030b46b0f37'),
('66030b46afed7', 'Albert einstein', '66030b46b0f38'),
('66030b46afed7', 'not me', '66030b46b0f39'),
('66030db455d00', 'Game Theory and economics', '66030db456e17'),
('66030db455d00', 'Game of Thrones', '66030db456e1a'),
('66030db455d00', 'GTA', '66030db456e1b'),
('66030db455d00', 'none', '66030db456e1c'),
('66030db45ae2b', 'joint equilibrium', '66030db45b96a'),
('66030db45ae2b', 'nash equilibrium', '66030db45b971'),
('66030db45ae2b', 'thermal equilibrium', '66030db45b972'),
('66030db45ae2b', 'theostat', '66030db45b973');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('6602f89b17dcd', '6602f9338d6da', '2+2=', 4, 1),
('6602f89b17dcd', '6602f9339386e', 'bsahbdv', 4, 2),
('6602f89b17dcd', '6602f93398200', 'dvsnkvk', 4, 3),
('6602f89b17dcd', '6602f9339e7da', 'gfsjkn', 4, 4),
('6602f89b17dcd', '6602f933a3d16', 'dvsjbjb', 4, 5),
('6602f89b17dcd', '6602f933a86a0', 'ekdwnvgkn', 4, 6),
('6602f89b17dcd', '6602f933ac7cd', 'dvsjbnjvb', 4, 7),
('6602f89b17dcd', '6602f933b016f', 'ewnfjnfdj', 4, 8),
('6602f89b17dcd', '6602f933b4db1', 'wejnfjknjew', 4, 9),
('6602f89b17dcd', '6602f933b8e9f', 'wefujbhwuejgfb', 4, 10),
('660304f9055cc', '6603051a86e6f', '2+10', 4, 1),
('660304f9055cc', '6603051a8c388', '7-9', 4, 2),
('66030abfd6fce', '66030aec5c528', 'analogous of pmf', 4, 1),
('66030b1eea72b', '66030b46afed7', 'Father of AI', 4, 1),
('66030d40b47e9', '66030db455d00', 'Full Form of GTE', 4, 1),
('66030d40b47e9', '66030db45ae2b', 'Equilibrium in GTE', 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
('6602f89b17dcd', 'Da215', 2, 0, 10, 30, '', 'DA215', '2024-03-26 16:32:27'),
('660304f9055cc', 'Da214', 2, 0, 2, 1, '', 'DA214', '2024-03-26 17:25:13'),
('66030abfd6fce', 'Da243', 10, 3, 1, 2, 'Quiz on Probability', 'DA243', '2024-03-26 17:49:51'),
('66030b1eea72b', 'Da221', 50, 0, 1, 2, 'Quiz on Arificial Intelligence', 'DA221', '2024-03-26 17:51:26'),
('66030d40b47e9', 'Hs123', 10, 2, 2, 30, 'Game Theory and Economics', 'HS123', '2024-03-26 18:00:32');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('r.daksh@iitg.ac.in', 70, '2024-03-26 17:55:42'),
('k.harsh@iitg.ac.in', 12, '2024-03-26 17:38:41'),
('awika.nayan@gmail.com', 10, '2024-03-26 17:41:09'),
('abhinav@iitd.ac.in', 14, '2024-03-26 17:53:39');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `gender`, `college`, `email`, `mob`, `password`) VALUES
('Abhinav Kumar', 'M', 'IIT Delhi', 'abhinav@iitd.ac.in', 2887328237, 'e10adc3949ba59abbe56e057f20f883e'),
('Awika', 'F', 'Delhi University', 'awika.nayan@gmail.com', 3827328782, 'e10adc3949ba59abbe56e057f20f883e'),
('Harsh Kumar', 'M', 'IIT Guwahati', 'k.harsh@iitg.ac.in', 12988248844, 'e10adc3949ba59abbe56e057f20f883e'),
('Daksh Raj', 'M', 'IIT Guwahati', 'r.daksh@iitg.ac.in', 2718272812, 'e10adc3949ba59abbe56e057f20f883e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
