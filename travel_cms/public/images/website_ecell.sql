-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2024 at 05:23 AM
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
-- Database: `website ecell`
--

-- --------------------------------------------------------

--
-- Table structure for table `class_incharge`
--

CREATE TABLE `class_incharge` (
  `room_no` varchar(10) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `department` varchar(10) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class_incharge`
--

INSERT INTO `class_incharge` (`room_no`, `year`, `department`, `name`) VALUES
('A-113', '1', 'CSE', 'Dr Manveen Kaur'),
('A-104', '1', 'ECE', 'Ms Neha'),
('A-112', '1', 'MECH', 'Dr. Parul Aggarwal'),
('A-112', '1', 'CIVIL', 'Dr. Parul Aggarwal'),
('A-421', '2', 'CSE', 'Dr Amit Chhabra'),
('A-321', '2', 'ECE', 'Dr. Hardeep Saini'),
('B-301', '2', 'MECH', 'Dr. Ashwani Kumar'),
('B-313', '2', 'CIVIL', 'Arfat Ahmad'),
('A-416', '3', 'CSE', 'Er. Sudhakar Kumar'),
('A-324', '3', 'ECE', 'Dr. Shilpa Jindal'),
('B-325', '3', 'MECH', 'Dr. Radhey Sham'),
('B-313', '3', 'CIVIL', 'Arfat Ahmad'),
('A-422', '4', 'CSE', 'Er. Animesh Singh'),
('A-326', '4', 'ECE', 'Dr. Sarita Sharma'),
('B-417', '4', 'MECH', 'Dr. Mukesh Kumar'),
('B-318', '4', 'CIVIL', 'Poonam');

-- --------------------------------------------------------

--
-- Table structure for table `class_incharge_info`
--

CREATE TABLE `class_incharge_info` (
  `room_no` varchar(10) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `phone_no` varchar(15) DEFAULT NULL,
  `email_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class_incharge_info`
--

INSERT INTO `class_incharge_info` (`room_no`, `year`, `department`, `name`, `designation`, `phone_no`, `email_id`) VALUES
('A-421', '2', 'CSE', 'Dr Amit Chhabra', 'Assistant Professor', '9888632825', 'amitchhabra@ccet.ac.in'),
('A-321', '2', 'ECE', 'Dr. Hardeep Saini', 'Assistant Professor', '9914611106', 'hsaini@ccet.ac.in'),
('B-301', '2', 'MECH', 'Dr. Ashwani Kumar', 'Assistant Professor', '9878232250', 'ashwanikumar@ccet.ac.in'),
('B-313', '2', 'CIVIL', 'Arfat Ahmad', 'Assistant Professor', '8860736206', 'arfat@ccet.ac.in'),
('A-416', '3', 'CSE', 'Er. Sudhakar Kumar', 'Assistant Professor', '8434518635', 'sudhakar@ccet.ac.in'),
('A-324', '3', 'ECE', 'Dr. Shilpa Jindal', 'Assistant Professor', '9463328881', 'shilpajindal@ccet.ac.in'),
('B-325', '3', 'MECH', 'Dr. Radhey Sham', 'Assistant Professor', '9888049827', 'radheysham@ccet.ac.in'),
('B-313', '3', 'CIVIL', 'Arfat Ahmad', 'Assistant Professor', '8860736206', 'arfat@ccet.ac.in'),
('A-422', '4', 'CSE', 'Er. Animesh Singh', 'Assistant Professor', '9584035345', 'animeshsingh@ccet.ac.in'),
('A-326', '4', 'ECE', 'Dr. Sarita Sharma', 'Assistant Professor', '9982896111', 'saritasharma@ccet.ac.in'),
('B-417', '4', 'MECH', 'Dr. Mukesh Kumar', 'Assistant Professor', '9478420561', 'mukeshkumar@ccet.ac.in'),
('B-318', '4', 'CIVIL', 'Poonam', 'Assistant Professor', '8968399719', 'poonam@ccet.ac.in'),
('A-113', '1', 'CSE', 'Dr Manveen Kaur', 'Class Incharge', '9988957007', 'manveenkaur@ccet.ac.in'),
('A-104', '1', 'ECE', 'Ms Neha', 'Class Incharge', '9646614209', 'neha@ccet.ac.in'),
('A-112', '1', 'MECH', 'Dr. Parul Aggarwal', 'Class Incharge', '8437911722', 'parul@ccet.ac.in'),
('A-112', '1', 'CIVIL', 'Dr. Parul Aggarwal', 'Class Incharge', '8437911722', 'parul@ccet.ac.in');

-- --------------------------------------------------------

--
-- Table structure for table `class_representativ_academic_info`
--

CREATE TABLE `class_representativ_academic_info` (
  `Year` int(11) DEFAULT NULL,
  `Department` varchar(10) DEFAULT NULL,
  `Name` varchar(50) NOT NULL,
  `Roll_No` varchar(10) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `CGPA` decimal(3,2) DEFAULT NULL,
  `Phone_No` varchar(15) DEFAULT NULL,
  `Designation` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class_representativ_academic_info`
--

INSERT INTO `class_representativ_academic_info` (`Year`, `Department`, `Name`, `Roll_No`, `Email`, `CGPA`, `Phone_No`, `Designation`) VALUES
(4, 'CIVIL', 'Amit Sihag', 'CO21205', 'CO21205@ccet.ac.in', NULL, '6239803514', 'CR - 2'),
(1, 'CSE', 'Anshuman', 'CO24309', 'CO24309@ccet.ac.in', NULL, '9056029802', 'CR - 2'),
(1, 'ECE', 'Arjoo', 'CO24510', 'CO24510@ccet.ac.in', NULL, '9466946561', 'CR - 2'),
(4, 'ECE', 'Daulat Singh', 'CO21530', 'CO21530@ccet.ac.in', NULL, '7087803046', 'CR - 2'),
(2, 'CSE', 'Dhruv Bali', 'LCO23389', 'LCO23389@ccet.ac.in', NULL, '7973958511', 'CR - 6'),
(3, 'CSE', 'Divyansh Manro', 'CO22323', 'CO22323@ccet.ac.in', NULL, '8380799948', 'CR - 1'),
(4, 'CSE', 'Eshita Badwal', 'CO21316', 'CO21316@ccet.ac.in', NULL, '7986648083', 'CR - 1'),
(2, 'CIVIL', 'Gulshanpreet Kaur', 'CO22339 ', 'CO22339@ccet.ac.in', NULL, NULL, 'CR - 2'),
(3, 'CIVIL', 'Hardik Sood', 'CO22209', 'CO22209@ccet.ac.in', NULL, '9914916498', 'CR - 1'),
(1, 'ECE', 'Jagnoor Singh', 'CO24526', 'CO24526@ccet.ac.in', NULL, '7814869589', 'CR - 1'),
(4, 'MECH', 'Jaisleen Kaur', 'CO21125', 'CO21125@ccet.ac.in', NULL, '8289007987', 'CR - 1'),
(4, 'CSE', 'Japan Ajit Singh Gandhi', 'CO21326', 'CO21326@ccet.ac.in', NULL, '9814203269', 'CR - 2'),
(3, 'CSE', 'Kashishpreet', 'CO22339', 'CO22339@ccet.ac.in', NULL, '9877153121', 'CR - 2'),
(3, 'MECH', 'Keerth Joe', 'CO22105', 'CO22105@ccet.ac.in', NULL, '6284449807', 'CR - 1'),
(2, 'ECE', 'Khushboo Kesar', 'CO23529', 'CO23529@ccet.ac.in', NULL, '8437402219', 'CR - 2'),
(4, 'CIVIL', 'Lakhwinder Singh Pal', 'CO21225', 'CO21225@ccet.ac.in', NULL, '9464097683', 'CR - 1'),
(1, 'CIVIL', 'Lovedeep Kaur', 'CO24227', 'CO24227@ccet.ac.in', NULL, '9463213237', 'CR - 2'),
(2, 'CSE', 'Mannav', 'CO23344', 'CO23344@ccet.ac.in', NULL, '6284705125', 'CR - 5'),
(1, 'CSE', 'Mansi Bansal', 'CO24337', 'CO24337@ccet.ac.in', NULL, '9465523508', 'CR - 1'),
(2, 'CIVIL', 'PARAS GUPTA', 'C00000', 'CO24132@ccet.ac.in', NULL, NULL, 'CR - 1'),
(2, 'MECH', 'Pawan Kumar', 'CO23139', 'CO23139@ccet.ac.in', NULL, '7888677403', 'CR - 1'),
(1, 'MECH', 'Rajveer Bansal', 'CO24130', 'CO24130@ccet.ac.in', NULL, '9876637542', 'CR - 2'),
(1, 'MECH', 'Ria Singh', 'CO24132', 'CO24132@ccet.ac.in', NULL, '7814535145', 'CR - 1'),
(2, 'CSE', 'Riya', 'MCO23380', 'MCO23380@ccet.ac.in', NULL, '9896847683', 'CR - 4'),
(3, 'CSE', 'Sahil Garg', 'CO22358', 'CO22358@ccet.ac.in', NULL, '9463925832', 'CR - 3'),
(1, 'CIVIL', 'Sambhav Shyam', 'CO24243', 'CO24243@ccet.ac.in', NULL, '9888932421', 'CR - 1'),
(2, 'CSE', 'Samriti', 'MCO23383', 'MCO23383@ccet.ac.in', NULL, '8544923653', 'CR - 3'),
(2, 'CSE', 'Satvik Pathak', 'CO22358', 'CO22358@ccet.ac.in', NULL, '7973714576', 'CR - 1'),
(3, 'ECE', 'Sneha', 'CO22546', 'CO22546@ccet.ac.in', NULL, '9877194346', 'CR - 1'),
(3, 'CIVIL', 'Tarunima Gaur', 'CO22222', 'CO22222@ccet.ac.in', NULL, '9814203269', 'CR - 2'),
(4, 'CSE', 'Vanshika Bhardwaj', 'CO21366', 'CO21366@ccet.ac.in', NULL, '9779354922', 'CR - 3'),
(2, 'CSE', 'VANSHIKA SINGLA', 'CO22368', 'CO22368@ccet.ac.in', NULL, '9478382886', 'CR - 2'),
(4, 'ECE', 'Varinda', 'CO21567', 'CO21567@ccet.ac.in', NULL, '6283923508', 'CR - 1'),
(2, 'MECH', 'Yuvraj Mahajan', 'CO23161', 'CO23161@ccet.ac.in', NULL, '7589293223', 'CR - 2'),
(2, 'ECE', 'YUVRAJ NATH', 'CO23564', 'CO23564@ccet.ac.in', NULL, '9815589109', 'CR - 1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class_representativ_academic_info`
--
ALTER TABLE `class_representativ_academic_info`
  ADD PRIMARY KEY (`Name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
