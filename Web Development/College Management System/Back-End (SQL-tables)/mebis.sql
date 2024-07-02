-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Jul 03, 2024 at 12:38 AM
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
-- Database: `mebis`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `library_name` varchar(255) NOT NULL,
  `book_name` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `book_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`library_name`, `book_name`, `author`, `book_status`) VALUES
('MIT Library', 'DSA Theory', 'A.B BalaKrishnan', 'Available'),
('MIT Library', 'Harry Potter', 'J. K. Rowling', 'Available'),
('MIT Library', 'Lord of The Rings', 'J.R.R Tolkien', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_name` varchar(255) NOT NULL,
  `AKTS` int(255) NOT NULL,
  `class_no` varchar(255) NOT NULL,
  `course_type` varchar(255) NOT NULL,
  `lecturer` varchar(255) NOT NULL,
  `prerequisite` varchar(255) NOT NULL,
  `semester` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_name`, `AKTS`, `class_no`, `course_type`, `lecturer`, `prerequisite`, `semester`) VALUES
('Artificial Intelligence', 8, 'AB 202', 'Technical', 'Prof Anil', 'Maths 2', 'Fall'),
('DBMS', 8, 'AB 504', 'Technical', 'Dr.Dinesh Acharya U', 'NULL', 'Spring'),
('Electric Vehicle Technology', 8, 'AB 707', 'Technical', 'Prof Tushar', 'NULL', 'Spring'),
('EVS', 6, 'AB 101', 'Non-Technical', 'Prof Harsh', 'NULL', 'Spring'),
('Machine Learning', 6, 'AB 501', 'Technical', 'Dr.Ashalatha Nayak', 'NULL', 'Spring'),
('Maths 1', 8, 'AB 505', 'Technical', 'Prof Mahesh', 'NULL', 'Fall'),
('Maths 2', 8, 'AB 507', 'Technical', 'Prof Mukesh', 'Maths 1', 'Spring'),
('OOPS', 8, 'AB-309', 'Technical', 'Prof Srikanth Mishra', 'Python Programming', 'Spring'),
('Probability', 8, 'AB 115', 'Technical', 'Prof Neeraj', 'Maths 2', 'Spring'),
('Python Programming', 6, 'AB 311', 'Technical', 'Prof Balakrishnan', 'NULL', 'Fall'),
('Web Development', 8, 'AB 404', 'Technical', 'Prof Sahil Ahmed', 'Python Programming', 'Spring');

-- --------------------------------------------------------

--
-- Table structure for table `dining`
--

CREATE TABLE `dining` (
  `date` date NOT NULL,
  `dining_name` varchar(255) NOT NULL,
  `Juice` varchar(255) NOT NULL,
  `main_dish` varchar(255) NOT NULL,
  `Fruits` varchar(255) NOT NULL,
  `dessert` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dining`
--

INSERT INTO `dining` (`date`, `dining_name`, `Juice`, `main_dish`, `Fruits`, `dessert`) VALUES
('2020-06-19', 'Food Court - 1', 'Orange Juice', 'Panner Rice', 'Apple', 'Jalebi'),
('2020-06-20', 'Food Court - 2', 'Beetroot Juice', 'Chapati Paneer', 'Grapes', 'Kaju Barfi');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `course_name` varchar(255) NOT NULL,
  `exam_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`course_name`, `exam_name`) VALUES
('Artificial Intelligence', 'AI Final'),
('Artificial Intelligence', 'AI Midterm'),
('DBMS', 'DBMS Final'),
('DBMS', 'DBMS Midterm');

-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

CREATE TABLE `lecturer` (
  `lecturer_name` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `birthdate` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `degree` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `advised_st_id` int(255) NOT NULL,
  `department` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lecturer`
--

INSERT INTO `lecturer` (`lecturer_name`, `website`, `birthdate`, `email`, `degree`, `role`, `course_name`, `advised_st_id`, `department`) VALUES
('Dr.Ashalatha Nayak', 'https://www.manipal.edu/mit/department-faculty/faculty-list/ashalatha-nayak.html', '2014-07-09', 'ashalata@medipol.edu.tr', 'Prof.', 'Deputy Dean', 'Machine Learning', 0, 'EEE'),
('Dr.Dinesh Acharya U', 'https://www.manipal.edu/mit/department-faculty/faculty-list/dinesh-acharya-u.html', '1967-11-12', 'dinesh@medipol.edu.tr', 'Dr', 'Lecturer', 'DBMS', 0, 'CoE');

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `program_name` varchar(255) NOT NULL,
  `est_semester_duration` int(255) NOT NULL,
  `student_id` int(255) NOT NULL,
  `other_uni_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`program_name`, `est_semester_duration`, `student_id`, `other_uni_name`) VALUES
('Revels', 2, 210962160, 'Harvard University'),
('TechTatva', 1, 210962162, 'Standford University');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `birthdate` date NOT NULL,
  `course_code` varchar(255) NOT NULL,
  `advisor_name` varchar(255) NOT NULL,
  `degree` varchar(255) NOT NULL,
  `scholarship` varchar(255) NOT NULL,
  `grade` int(255) NOT NULL,
  `emp_type` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `name`, `birthdate`, `course_code`, `advisor_name`, `degree`, `scholarship`, `grade`, `emp_type`, `department`, `email`) VALUES
(210962160, 'Siddhant Saini', '2002-11-14', 'DBMS', 'Dr.Ashalatha Nayak', 'Undergrad', 'Full Scholarship', 3, 'NULL', 'Computer Science & Engineering', 'siddhant@st.medipol.edu.tr'),
(210962161, 'Kumar Raunak', '2000-06-15', 'Machine Learning', 'Dr.Ashalatha Nayak', 'Undergrad', 'Half Scholarship', 3, 'NULL', 'Computer Science & Engineering', 'raunak@st.medipol.edu.tr'),
(210962162, 'Lakshay', '1997-06-09', 'Artificial Intelligence', 'Dr.Dinesh Acharya U', 'Undergrad', 'Half Scholarship', 1, 'NULL', 'Computer Science & Engineering', 'lakshay@st.medipol.edu.tr');

-- --------------------------------------------------------

--
-- Table structure for table `student_book`
--

CREATE TABLE `student_book` (
  `student_id` int(255) NOT NULL,
  `book_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_book`
--

INSERT INTO `student_book` (`student_id`, `book_name`) VALUES
(210962160, 'Lord of The Rings'),
(210962162, 'Harry Potter');

-- --------------------------------------------------------

--
-- Table structure for table `student_club`
--

CREATE TABLE `student_club` (
  `club_name` varchar(255) NOT NULL,
  `leader_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_club`
--

INSERT INTO `student_club` (`club_name`, `leader_id`) VALUES
('ADG MIT', 64160014),
('E-Cell MIT', 61170008),
('Goonj Mahe', 62160016),
('IEEE', 63150012);

-- --------------------------------------------------------

--
-- Table structure for table `student_club_participants`
--

CREATE TABLE `student_club_participants` (
  `leader_id` int(11) NOT NULL,
  `participant_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_club_participants`
--

INSERT INTO `student_club_participants` (`leader_id`, `participant_id`) VALUES
(61170008, 210962160),
(64160014, 210962160),
(64160014, 210962162),
(64160016, 210962161);

-- --------------------------------------------------------

--
-- Table structure for table `student_current_course`
--

CREATE TABLE `student_current_course` (
  `course_name` varchar(255) NOT NULL,
  `student_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_current_course`
--

INSERT INTO `student_current_course` (`course_name`, `student_id`) VALUES
('DBMS', 210962160),
('Machine Learning', 210962162);

-- --------------------------------------------------------

--
-- Table structure for table `student_exam`
--

CREATE TABLE `student_exam` (
  `exam_name` varchar(255) NOT NULL,
  `student_id` int(255) NOT NULL,
  `grade` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_exam`
--

INSERT INTO `student_exam` (`exam_name`, `student_id`, `grade`) VALUES
('AI Final', 210962160, 80),
('AI Midterm', 210962160, 90),
('DBMS Final', 210962162, 95),
('DBMS Midterm', 210962162, 85);

-- --------------------------------------------------------

--
-- Table structure for table `student_past_courses`
--

CREATE TABLE `student_past_courses` (
  `student_id` int(255) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `final_grade` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_past_courses`
--

INSERT INTO `student_past_courses` (`student_id`, `course_name`, `final_grade`) VALUES
(210962160, 'Artificial Intelligence', 86),
(210962160, 'OOPS', 98),
(210962161, 'Probability', 87),
(210962161, 'Python Programming', 89),
(210962162, 'DBMS', 70);

-- --------------------------------------------------------

--
-- Table structure for table `visitor`
--

CREATE TABLE `visitor` (
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `visitor`
--

INSERT INTO `visitor` (`email`, `name`, `password`, `phone`, `type`) VALUES
('adminlecturer@medipol.edu.tr', 'adminlecturer', '21232f297a57a5a743894a0e4a801fc3', '9876543210', 'lecturer'),
('ashalata@medipol.edu.tr', 'Dr.Ashalatha Nayak', '92900625190a5b6cc353c03b803f9a7f', '5555555555', 'lecturer'),
('dinesh@medipol.edu.tr', 'Dr.Dinesh Acharya U', '9c9f1c65b1dc1f79498c9f09eb610e1a', '8888888888', 'lecturer'),
('lakshay@st.medipol.edu.tr', 'Lakshay', 'df8fcf8105a2e329ddb1ff79bc949c66', '5858585858', 'student'),
('lecturer@medipol.edu.tr', 'lecturer', 'passwordlec', '1234567890', 'lecturer'),
('raunak@st.medipol.edu.tr', 'Kumar Raunak', '6468b73a6a7122591320ef4114e9cf8e', '1212121212', 'student'),
('siddhant@st.medipol.edu.tr', 'Siddhant Saini', 'e5bf515039cdf685df68445a1dac27af', '9876543210', 'student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`library_name`,`book_name`,`author`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_name`);

--
-- Indexes for table `dining`
--
ALTER TABLE `dining`
  ADD PRIMARY KEY (`date`,`dining_name`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`course_name`,`exam_name`);

--
-- Indexes for table `lecturer`
--
ALTER TABLE `lecturer`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`program_name`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `student_book`
--
ALTER TABLE `student_book`
  ADD PRIMARY KEY (`student_id`,`book_name`);

--
-- Indexes for table `student_club`
--
ALTER TABLE `student_club`
  ADD PRIMARY KEY (`club_name`);

--
-- Indexes for table `student_club_participants`
--
ALTER TABLE `student_club_participants`
  ADD PRIMARY KEY (`leader_id`,`participant_id`);

--
-- Indexes for table `student_current_course`
--
ALTER TABLE `student_current_course`
  ADD PRIMARY KEY (`course_name`);

--
-- Indexes for table `student_exam`
--
ALTER TABLE `student_exam`
  ADD PRIMARY KEY (`exam_name`,`student_id`);

--
-- Indexes for table `student_past_courses`
--
ALTER TABLE `student_past_courses`
  ADD PRIMARY KEY (`student_id`,`course_name`);

--
-- Indexes for table `visitor`
--
ALTER TABLE `visitor`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
