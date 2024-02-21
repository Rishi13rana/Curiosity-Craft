-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2023 at 03:45 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `curiositycraft`
--

-- --------------------------------------------------------

--
-- Table structure for table `class_list`
--

CREATE TABLE `class_list` (
  `id` int(11) NOT NULL,
  `user_id` varchar(15) NOT NULL,
  `course_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class_list`
--

INSERT INTO `class_list` (`id`, `user_id`, `course_id`, `name`, `description`, `status`, `date_created`, `date_updated`) VALUES
(3, 'R908', 3, '22MAM2', 'AIML Students', 1, '2023-08-29 01:51:36', '2023-11-19 00:12:07'),
(4, 'R908', 6, '22MCA1', 'General MCA', 1, '2023-08-29 01:52:08', '2023-09-25 11:18:53'),
(6, 'R908', 4, '23MAM1', 'AI & ML Students', 1, '2023-09-13 17:56:41', '2023-11-16 17:31:38'),
(7, 'R908', 12, '22MCA2', 'MCA General', 1, '2023-11-16 17:38:44', '2023-11-20 22:41:23'),
(12, 'R908', 9, '22MCA3', 'MCA Students', 1, '2023-11-20 22:38:32', '2023-11-20 22:43:33');

-- --------------------------------------------------------

--
-- Table structure for table `course_list`
--

CREATE TABLE `course_list` (
  `id` int(11) NOT NULL,
  `user_id` varchar(10) NOT NULL,
  `class_name` varchar(30) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_list`
--

INSERT INTO `course_list` (`id`, `user_id`, `class_name`, `course_name`, `description`, `status`, `date_created`, `date_updated`) VALUES
(4, 'R908', '23MAM1', 'Internet of Things', 'Raspberry Pi, Arduino, MicroController and MicroProcessor', 1, '2023-09-13 09:06:55', '2023-11-16 22:35:26'),
(6, 'R908', '22MAM2', 'Data Analysis and Algorithms', 'C++, Functions, Classes and objects', 1, '2023-09-13 09:09:14', '2023-11-16 17:30:51'),
(8, 'R908', '23MAM1', 'Minor Project', 'For creating Minor level projects ', 1, '2023-09-13 17:57:35', '2023-11-27 18:39:20'),
(9, 'M130', '23MAM1', 'Machine Learning', 'Supervised and Unsupervised Learning', 1, '2023-11-18 18:26:43', '2023-11-20 22:46:48'),
(12, 'R908', '22MCA2', 'DBMS', 'Sql and Database Management System', 1, '2023-11-20 22:33:33', '2023-11-20 22:40:25');

-- --------------------------------------------------------

--
-- Table structure for table `question_list`
--

CREATE TABLE `question_list` (
  `id` int(30) NOT NULL,
  `question_paper_id` int(30) NOT NULL,
  `question` text NOT NULL,
  `mark` double NOT NULL DEFAULT 0,
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = single answer, \r\n2= multi-answer,\r\n3 = text answer'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `question_list`
--

INSERT INTO `question_list` (`id`, `question_paper_id`, `question`, `mark`, `type`) VALUES
(2, 2, '<p>Question 101</p>', 5, 2),
(3, 2, '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Nam in condimentum augue. Morbi efficitur facilisis dolor eu molestie. Suspendisse faucibus lorem et finibus ultricies. Maecenas feugiat ultrices metus, id pellentesque elit. Maecenas eros nunc, accumsan a augue ac, scelerisque ullamcorper dolor. Curabitur aliquet dapibus quam. Sed est ipsum, egestas vel odio vel, varius rutrum mauris. In tempor mi a eleifend imperdiet. Donec nec laoreet lectus, quis viverra neque. Donec a consectetur diam.</span><br></p>', 15, 3),
(16, 1, 'What is Data Analytics?', 2, 1),
(22, 1, 'What is EDA?', 2, 1),
(23, 2, 'What is DSA?', 2, 1),
(24, 3, 'What is IOT?', 2, 1),
(25, 1, 'What are the applications of Data Analytics?', 5, 2),
(26, 1, 'Mention the differences between Data Mining and Data Profiling?', 10, 3),
(27, 2, 'What is the difference between stack and queue?', 5, 2),
(28, 2, 'Explain the Quicksort with example', 10, 3),
(29, 3, 'What are the applications of IOT?', 5, 2),
(30, 3, 'What is the difference between Arduino and Raspberry pi?', 10, 3),
(32, 1, 'What is Pivot table in Excel?', 2, 1),
(33, 1, 'How to create a pivot table in Excel?', 5, 2),
(34, 1, 'Explain Data Wrangling ?', 10, 3),
(35, 1, 'What is Descriptive Predictive analytics?', 2, 1),
(36, 1, 'What is Prescriptive analytics?', 2, 1),
(37, 1, 'Explain the concept of data normalization?', 5, 2),
(38, 1, 'What is the role of Data Viusalization in Data Analytics?', 5, 2),
(39, 1, 'Explain the concept of Overfitting?', 5, 2),
(40, 1, 'What are the primary objectives or goals for the data analysis?', 10, 3),
(41, 1, 'What are the Key Patterns, trends or correlations within the data?', 10, 3),
(42, 1, 'Explain the predictive models that are built on historical data?', 10, 3),
(43, 1, 'What are the Data Cleaning Techniques in Data Analytics?', 5, 2),
(44, 6, 'What is DBMS?', 2, 1),
(45, 6, 'What is Normalization?', 5, 2),
(46, 6, 'What are the different types of SQL queries?', 10, 3),
(47, 1, 'What are different types of Machine Learning Algorithm and which algorithm is suited the best for a given problem, what is the difference between supervised and unsupervised learning', 10, 3),
(48, 7, 'What is Machine Learning?', 2, 1),
(49, 7, 'What are the types of the Machine learning?', 5, 2),
(50, 7, 'Explain Supervised Learning?', 10, 3),
(51, 1, 'Differentiate between correlation and covariance?', 2, 1),
(52, 1, 'Explain the concept of feature engineering.', 2, 1),
(53, 1, 'Describe the difference between supervised and unsupervised learning?', 2, 1),
(54, 1, 'What is the purpose of a pivot table in Excel?', 2, 1),
(55, 1, 'What is the purpose of the SQL GROUP BY clause?', 2, 1),
(56, 2, 'What are some applications of Data structures?', 2, 1),
(57, 2, 'Difference between file structure and storage structure?', 2, 1),
(58, 2, 'Describe the types of Data Structures?', 2, 1),
(59, 2, 'What is a stack data structure? ', 2, 1),
(60, 2, 'What are the applications of stack?', 2, 1),
(61, 2, 'What is a queue data structure?', 2, 1),
(62, 2, 'What are different operations available in queue data structure?', 2, 1),
(63, 2, 'Differentiate between stack and queue data structure.', 2, 1),
(64, 2, 'How to implement a queue using stack?', 5, 2),
(65, 2, 'What is array data structure? What are the applications of arrays?', 5, 2),
(66, 2, 'What is a linked list data structure?', 5, 2),
(67, 2, ' Different types of Linked List data structures?', 5, 2),
(68, 2, ' different types of Linked List data structures?', 5, 2),
(69, 2, 'Difference between Array and Linked List?', 5, 2),
(70, 2, 'What is an asymptotic analysis of an algorithm?', 5, 2),
(71, 2, 'What is the time complexity of basic operations get() and put() in HashMap class?', 10, 3),
(72, 2, 'What is binary tree data structure? What are the applications for binary trees?', 10, 3),
(73, 2, 'What are tree traversals and describe their types?', 10, 3),
(74, 2, ' What is a deque data structure and its types? What are the applications for deque?', 10, 3),
(75, 2, 'What is a priority queue? What are the applications for priority queue?', 10, 3),
(76, 2, ' What is graph data structure and its representations?', 10, 3),
(77, 2, 'What is the difference between the Breadth First Search (BFS) and Depth First Search (DFS)?', 10, 3),
(78, 3, ' Explain the characteristics of IoT?', 2, 1),
(79, 3, 'What are the different components of IoT?', 2, 1),
(80, 3, 'What are the challenges or risks associated with IoT?', 2, 1),
(81, 3, 'What are different types of sensors in IoT?', 2, 1),
(82, 3, 'Write the classification of IoT protocols?', 2, 1),
(83, 3, 'What are different communication models in IoT?', 2, 1),
(84, 3, 'Write some of the most common IoT applications.', 2, 1),
(85, 3, 'What do you mean by BLE?', 2, 1),
(86, 3, 'What is a thermocouple sensor and its application?', 5, 2),
(87, 3, 'Explain the term ‘smart city’ in IoT?', 5, 2),
(88, 3, 'What do you mean by PWM ?', 5, 2),
(89, 3, 'Explain Shodan.', 5, 2),
(90, 3, ' Name some of the most suitable databases for IoT and explain?', 5, 2),
(91, 3, 'What do you mean by replication and its types?', 5, 2),
(92, 3, 'State the difference between IoT and M2M.', 5, 2),
(93, 3, 'What are the key advantages of IoT?', 10, 3),
(94, 3, 'What are the functions used to read analog and digital data from a sensor in Arduino?', 10, 3),
(95, 3, 'What is Bluetooth Low Energy ? elaborate1', 10, 3),
(96, 3, 'List available models in Raspberry Pi', 10, 3),
(97, 3, 'Mention some of the commonly used water sensors and explain any two?', 10, 3),
(98, 3, ' What is the main difference between floating CPU and fixed-point CPU?', 10, 3),
(99, 3, 'What is the difference between M2M and IoT?', 10, 3),
(100, 3, ' How to store the high-volume file into Arduino?', 10, 3),
(101, 3, 'What is the basic difference between the IoT network and Wireless Sensor Network?', 10, 3),
(102, 6, 'What is a database?', 2, 1),
(103, 6, 'What are the advantages of DBMS?', 2, 1),
(104, 6, 'What is a checkpoint in DBMS?', 2, 1),
(105, 6, 'When does checkpoint occur in DBMS?', 2, 1),
(106, 6, 'What do you mean by transparent DBMS?', 2, 1),
(107, 6, 'What is RDBMS?', 2, 1),
(108, 6, 'How many types of database languages are?', 2, 1),
(109, 6, 'What do you understand by Data Model?', 2, 1),
(110, 6, 'Define a Relation Schema and a Relation.', 2, 1),
(111, 6, 'What are the disadvantages of file processing systems?', 5, 2),
(112, 6, 'What is data abstraction in DBMS?', 5, 2),
(113, 6, 'What are the three levels of data abstraction?', 5, 2),
(114, 6, 'Difference between DML and DDL', 5, 2),
(115, 6, 'Explain the functionality of DML Compiler.', 5, 2),
(116, 6, 'What is Relational Calculus?', 5, 2),
(117, 6, 'What do you understand by query optimization?', 5, 2),
(118, 6, 'What do you mean by durability in DBMS?', 5, 2),
(119, 6, 'What is Denormalization and explain?', 10, 3),
(120, 6, 'What is the E-R model?', 10, 3),
(121, 6, 'What is an Extension of entity type?', 10, 3),
(122, 6, 'What are the integrity rules in DBMS?', 10, 3),
(123, 6, 'Difference between extension and intension?', 10, 3),
(124, 6, 'What is System R? How many of its two major subsystems?', 10, 3),
(125, 6, 'What are the three levels of data abstraction?', 10, 3),
(126, 6, 'Describe 1NF , 2NF and 3NF?', 10, 3),
(127, 6, 'Explain ACID properties?', 10, 3),
(128, 7, 'What Are the Different Types of Machine Learning?', 2, 1),
(129, 7, 'What is Overfitting, and How Can You Avoid It? ', 2, 1),
(130, 7, 'What is the difference between deep learning and machine learning?', 2, 1),
(131, 7, 'What is the main key difference between supervised and unsupervised machine learning?', 2, 1),
(132, 7, 'How do you select important variables while working on a data set? ', 2, 1),
(133, 7, 'How are covariance and correlation different from one another?', 2, 1),
(134, 7, 'State the differences between causality and correlation?', 2, 1),
(135, 7, 'When does regularization come into play in Machine Learning?', 2, 1),
(136, 7, 'What is Bias, Variance and what do you mean by Bias-Variance Tradeoff?', 5, 2),
(137, 7, 'How can we relate standard deviation and variance?', 5, 2),
(138, 7, 'What is Time series and elaborate?', 5, 2),
(139, 7, 'What are some real-life applications of clustering algorithms?', 5, 2),
(140, 7, 'How to choose an optimal number of clusters?', 5, 2),
(141, 7, 'Why we cannot use linear regression for a classification task?', 5, 2),
(142, 7, 'Why do we perform normalization?', 5, 2),
(143, 7, 'What is the difference between precision and recall?', 5, 2),
(144, 7, 'What is data leakage and how can we identify it?', 5, 2),
(145, 7, 'Explain the classification report and the metrics it includes.', 10, 3),
(146, 7, 'What are some of the hyperparameters of the random forest regressor which help to avoid overfitting?', 10, 3),
(147, 7, ' How can you conclude about the model’s performance using the confusion matrix?', 10, 3),
(148, 7, ' Differentiate between inductive learning and deductive learning?', 10, 3),
(149, 7, 'What is the difference between Data Mining and Machine Learning?', 10, 3),
(150, 7, 'What are the five popular algorithms we use in Machine Learning?', 10, 3),
(151, 7, 'What are the three stages of building the hypotheses or model in machine learning?', 10, 3);

-- --------------------------------------------------------

--
-- Table structure for table `question_paper_list`
--

CREATE TABLE `question_paper_list` (
  `id` int(11) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `class_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(500) NOT NULL,
  `status` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `approvedSt` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `question_paper_list`
--

INSERT INTO `question_paper_list` (`id`, `user_id`, `class_id`, `title`, `description`, `status`, `date_created`, `date_updated`, `approvedSt`) VALUES
(1, 'R908', 3, 'MST-1', '1. All the question must be done in 1hr\n2. All the questions are compusory.', 1, '2023-09-26 14:49:31', '2023-11-04 17:27:02', 1),
(2, 'R908', 4, 'MST-1', '1. All the question must be done in 1hr\n2. All the questions are compusory.', 1, '2023-09-26 14:58:33', '2023-11-16 22:40:30', 1),
(3, 'R908', 6, 'MST - I', '1. All the question must be done in 1hr\r\n2. All the questions are compusory.', 0, '2023-11-16 17:32:38', '2023-11-16 22:40:38', 1),
(6, 'R908', 7, 'MST-II', '1. All the question must be done in 1hr\r\n2. All the questions are compusory.', 2, '2023-11-20 22:47:27', '2023-11-20 22:48:21', 1),
(7, 'R908', 12, 'Final Examination', '1. All the question must be done in 1hr\r\n2. All the questions are compusory.', 2, '2023-11-27 18:40:37', '2023-11-27 18:41:25', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_data`
--

CREATE TABLE `users_data` (
  `id` int(11) NOT NULL,
  `uid` varchar(15) NOT NULL,
  `designation` varchar(15) NOT NULL,
  `name` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_data`
--

INSERT INTO `users_data` (`id`, `uid`, `designation`, `name`, `password`, `contact_no`, `email`, `date_created`, `date_updated`) VALUES
(10, 'R908', 'instructor', 'Girraj Gupta', 'giri@123', '+916395547161', '22mci10052@cuchd.in', '2023-08-27 22:55:27', '2023-09-25 00:32:34'),
(11, 'R889', 'hod', 'Garima Singh', 'garima@123', '7206420486', 'yanawilsongps@gmail.com', '2023-08-28 14:35:53', NULL),
(12, 'M130', 'examination_cel', 'Sunil Kumar', 'sunil@123', '8219939362', 'sunilrazut550@gmail.com', '2023-11-04 22:01:02', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class_list`
--
ALTER TABLE `class_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_list`
--
ALTER TABLE `course_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_list`
--
ALTER TABLE `question_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_paper_id` (`question_paper_id`);

--
-- Indexes for table `question_paper_list`
--
ALTER TABLE `question_paper_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_data`
--
ALTER TABLE `users_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class_list`
--
ALTER TABLE `class_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `course_list`
--
ALTER TABLE `course_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `question_list`
--
ALTER TABLE `question_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `question_paper_list`
--
ALTER TABLE `question_paper_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users_data`
--
ALTER TABLE `users_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
