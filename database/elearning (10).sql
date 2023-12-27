-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2023 at 08:26 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elearning`
--

-- --------------------------------------------------------

--
-- Table structure for table `certifications`
--

CREATE TABLE `certifications` (
  `CertificationID` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `CourseID` int(11) DEFAULT NULL,
  `CertificationStatus` varchar(50) DEFAULT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `CommentID` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `CourseID` int(11) DEFAULT NULL,
  `CommentText` text DEFAULT NULL,
  `Rating` decimal(3,2) DEFAULT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `courseID` int(11) NOT NULL,
  `coursename` varchar(100) DEFAULT NULL,
  `course_video` varchar(255) NOT NULL,
  `course_pdf` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`courseID`, `coursename`, `course_video`, `course_pdf`) VALUES
(30, 'Math', 'sdfsd', 'ascasc'),
(31, 'Arabic', 'cc', 'ccc'),
(32, 'physics', 'ssssss', 'sssss');

-- --------------------------------------------------------

--
-- Table structure for table `courses_users`
--

CREATE TABLE `courses_users` (
  `CoursesID` int(100) NOT NULL,
  `UserID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `courses_users`
--

INSERT INTO `courses_users` (`CoursesID`, `UserID`) VALUES
(30, 14);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `quiz_id` int(10) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer1` varchar(255) NOT NULL,
  `answer2` varchar(255) NOT NULL,
  `answer3` varchar(255) NOT NULL,
  `answer4` varchar(255) NOT NULL,
  `correctAnswer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE `quizzes` (
  `QuizID` int(11) NOT NULL,
  `CourseID` int(11) DEFAULT NULL,
  `Quiz_Name` varchar(255) NOT NULL,
  `Teacher_Id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `quizzes`
--

INSERT INTO `quizzes` (`QuizID`, `CourseID`, `Quiz_Name`, `Teacher_Id`) VALUES
(12, 30, 'Math', 53),
(13, 30, '', 73);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_user`
--

CREATE TABLE `quiz_user` (
  `quiz_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `score` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `name`) VALUES
(1, 'admin'),
(2, 'teacher'),
(3, 'student');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `TeacherID` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `course_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`TeacherID`, `user_id`, `course_id`) VALUES
(65, 53, 30),
(66, 73, 30),
(67, 74, 31),
(68, 76, 30),
(69, 80, 31),
(70, 86, 31),
(77, 127, 32),
(79, 129, 30),
(80, 131, 31);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `Username` varchar(50) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `role_id` int(11) DEFAULT 3,
  `image` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `Username`, `Email`, `Password`, `role_id`, `image`) VALUES
(7, 'new_username', 'new_email@example.com', '123', 3, 'https://example.com/newimage.jpg'),
(11, 'laith', 'laith@gmail.com', 'Mohammed321$', 3, 'path/to/image.jpg'),
(14, 'qusey', 'qusey@gmail.com', 'Qusey321@', 3, NULL),
(17, 'Mohammed', 'hamzaghnimat@gmail.com', 'Mohammed123@', 3, NULL),
(18, 'Mohammed', 'mohammed@gmail.com', 'Mohammed123@', 2, NULL),
(53, 'Mohammed', 'mohammedghnimat27@gmail.com', 'Mohammed123@', 2, NULL),
(73, 'sleaman', 'sleaman@gmail.com', '123456', 2, NULL),
(74, 'hamza', 'hamaz@gmail.com', '123456', 2, NULL),
(76, 'test_teacher', 'test_teacher@example.com', 'Test', 2, NULL),
(80, 'sleaman', 's@gmail.com', '123456', 2, NULL),
(86, 'mohannad', 'mohannad@gmail.com', '12345', 2, NULL),
(97, 'mazen', 'mazen2@gmail.com', 'Mazen321@', 1, NULL),
(98, 'riyad', 'riyad@gmail.com', 'Riyad321@', 3, NULL),
(127, 'naia', 'naia@gmail.com', '123456', 2, NULL),
(129, 'jjjjjj', 'j@gmail.com', '123456', 2, NULL),
(131, 'ali', 'ali@gmail.com', '12345', 2, NULL),
(132, 'omama', 'omama@gmail.com', '12345', 3, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `certifications`
--
ALTER TABLE `certifications`
  ADD PRIMARY KEY (`CertificationID`),
  ADD KEY `certifications_ibfk_1` (`UserID`),
  ADD KEY `CourseID` (`CourseID`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`CommentID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `CourseID` (`CourseID`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`courseID`);

--
-- Indexes for table `courses_users`
--
ALTER TABLE `courses_users`
  ADD PRIMARY KEY (`CoursesID`,`UserID`),
  ADD KEY `courses_users_ibfk_1` (`UserID`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD UNIQUE KEY `question` (`question`),
  ADD KEY `quiz_id` (`quiz_id`);

--
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`QuizID`),
  ADD KEY `CourseID` (`CourseID`),
  ADD KEY `Teacher_Id` (`Teacher_Id`);

--
-- Indexes for table `quiz_user`
--
ALTER TABLE `quiz_user`
  ADD PRIMARY KEY (`quiz_id`,`user_id`),
  ADD KEY `quiz_user_ibfk_2` (`user_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`TeacherID`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `certifications`
--
ALTER TABLE `certifications`
  MODIFY `CertificationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `CommentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `courseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `QuizID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `TeacherID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `certifications`
--
ALTER TABLE `certifications`
  ADD CONSTRAINT `certifications_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `certifications_ibfk_2` FOREIGN KEY (`CourseID`) REFERENCES `courses` (`courseID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`CourseID`) REFERENCES `courses` (`courseID`) ON DELETE CASCADE;

--
-- Constraints for table `courses_users`
--
ALTER TABLE `courses_users`
  ADD CONSTRAINT `courses_users_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `courses_users_ibfk_2` FOREIGN KEY (`CoursesID`) REFERENCES `courses` (`courseID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`QuizID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD CONSTRAINT `quizzes_ibfk_1` FOREIGN KEY (`CourseID`) REFERENCES `courses` (`courseID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quizzes_ibfk_2` FOREIGN KEY (`Teacher_Id`) REFERENCES `teacher` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `quiz_user`
--
ALTER TABLE `quiz_user`
  ADD CONSTRAINT `quiz_user_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`QuizID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quiz_user_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`courseID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `teacher_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
