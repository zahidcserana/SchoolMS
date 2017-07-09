--
-- Database: `school_db_2`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts_head`
--

CREATE TABLE `accounts_head` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `accounts_head_name` varchar(45) NOT NULL,
  `note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts_head`
--

INSERT INTO `accounts_head` (`id`, `category_id`, `accounts_head_name`, `note`) VALUES
(9, 18, 'Cost of Sales', ''),
(10, 18, 'Overhead cost', ''),
(15, 19, 'Student Fee', ''),
(16, 19, 'Test Income', '');

-- --------------------------------------------------------

--
-- Table structure for table `accounts_sub_head`
--

CREATE TABLE `accounts_sub_head` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `accounts_head_id` int(11) NOT NULL,
  `sub_head_name` varchar(50) NOT NULL,
  `account_code` int(11) NOT NULL,
  `percent` float NOT NULL,
  `gst` enum('yes','no') NOT NULL,
  `note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts_sub_head`
--

INSERT INTO `accounts_sub_head` (`id`, `category_id`, `accounts_head_id`, `sub_head_name`, `account_code`, `percent`, `gst`, `note`) VALUES
(34, 0, 9, 'Opeing Stock Material ', 2000, 100, 'no', ''),
(35, 0, 10, 'Manfuacturing/Tranding /Servie sost 111', 3000, 100, 'yes', ''),
(38, 0, 9, 'Purchase Cost', 0, 0, 'yes', ''),
(39, 18, 9, 'Salary cost', 0, 0, 'yes', ''),
(40, 19, 15, 'Exam Fee', 0, 0, 'yes', '');

-- --------------------------------------------------------

--
-- Table structure for table `account_title`
--

CREATE TABLE `account_title` (
  `id` int(11) NOT NULL,
  `account_title` varchar(100) NOT NULL,
  `category` varchar(20) NOT NULL,
  `description` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_title`
--

INSERT INTO `account_title` (`id`, `account_title`, `category`, `description`) VALUES
(1, 'Income', 'Income', ''),
(2, 'Rent', 'Expense', '');

-- --------------------------------------------------------

--
-- Table structure for table `add_exam`
--

CREATE TABLE `add_exam` (
  `id` int(11) NOT NULL,
  `year` int(5) NOT NULL,
  `exam_title` varchar(100) NOT NULL,
  `start_date` varchar(30) NOT NULL,
  `class_id` int(11) NOT NULL,
  `total_time` varchar(10) NOT NULL,
  `publish` varchar(50) NOT NULL,
  `final` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_exam`
--

INSERT INTO `add_exam` (`id`, `year`, `exam_title`, `start_date`, `class_id`, `total_time`, `publish`, `final`, `status`) VALUES
(1, 2016, 'Calss Test 1', '08/11/2016', 1, '30 Minute', 'Not Publish', 'NoFinal', 'NoResult'),
(2, 2016, 'Test', '08/11/2016', 1, '30 Minute', 'Publish', 'NoFinal', 'NoResult'),
(3, 2016, 'Test', '08/11/2016', 1, '30 Minute', 'Publish', 'NoFinal', 'NoResult'),
(4, 2016, 'Calss Test 2', '08/11/2016', 1, '30 Minute', 'Publish', 'NoFinal', 'NoResult'),
(5, 2016, 'Final', '08/12/2016', 1, '3 Hour', 'Publish', 'Final', 'NoResult'),
(6, 2016, 'final 2', '12/12/2016', 1, '3 Hour', 'Not Publish', 'Final', 'NoResult'),
(7, 2016, 'Final Exam of class 2', '15/11/2016', 2, '3 Hour', 'Not Publish', 'Final', 'NoResult'),
(8, 2016, 'Final Exam of class 2', '15/11/2016', 2, '30 Minute', 'Not Publish', 'Final', 'NoResult'),
(9, 2016, 'Class test 2', '15/11/2016', 3, '30 Minute', 'Not Publish', 'NoFinal', 'NoResult'),
(10, 2016, 'Class test 2', '21/11/2016', 3, '30 Minute', 'Not Publish', 'NoFinal', 'NoResult'),
(11, 2016, 'Class test 2', '21/11/2016', 3, '30 Minute', 'Not Publish', 'NoFinal', 'NoResult'),
(12, 2016, 'Final Exam of class 2', '', 3, '2 Hour', 'Not Publish', '', 'NoResult'),
(13, 2016, 'Final Exam of class 2', '', 3, '2 Hour', 'Not Publish', '', 'NoResult'),
(14, 2016, 'Final Exam of class 2', '', 3, '2 Hour', 'Not Publish', '', 'NoResult'),
(15, 2016, 'Class test 2', '16/11/2016', 5, '30 Minute', 'Not Publish', 'NoFinal', 'NoResult'),
(16, 2016, 'Class test 2', '14/11/2016', 3, '30 Minute', 'Not Publish', 'NoFinal', 'NoResult'),
(17, 2016, 'test for attendance', '14/11/2016', 3, '30 Minute', 'Publish', 'NoFinal', 'NoResult'),
(18, 2016, 'test for attendance', '14/11/2016', 3, '30 Minute', 'Publish', 'NoFinal', 'NoResult'),
(19, 2016, 'Class test 2', '15/11/2016', 2, '30 Minute', 'Not Publish', 'NoFinal', 'NoResult'),
(20, 2016, 'Class test 2', '14/11/2016', 3, '1 Hour', 'Not Publish', 'NoFinal', 'NoResult'),
(21, 2016, 'Class test 6', '06/11/2016', 6, '30 Minute', 'Publish', 'NoFinal', 'NoResult'),
(22, 2016, 'Class test 6', '15/11/2016', 6, '30 Minute', 'Publish', 'NoFinal', 'NoResult'),
(23, 2016, 'Class test 62', '20/11/2016', 6, '30 Minute', 'Publish', 'NoFinal', 'NoResult'),
(24, 2016, 'Class test 2', '26/11/2016', 7, '30 Minute', 'Publish', 'NoFinal', 'NoResult'),
(25, 2016, 'Class test', '20/12/2016', 6, '30 Minute', 'Publish', 'NoFinal', 'NoResult'),
(43, 2016, 'Final Exam', '04/12/2016', 6, '3 Hour', 'Not Publish', 'Final', 'NoResult'),
(70, 2016, 'Final Exam', '04/12/2016', 8, '3 Hour', 'Publish', 'Final', 'NoResult'),
(71, 2017, 'class test 1', '02/01/2017', 8, '30 Minute', 'Publish', 'NoFinal', 'NoResult');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `isbn_no` varchar(20) NOT NULL,
  `book_no` int(11) NOT NULL,
  `books_title` varchar(100) NOT NULL,
  `authore` varchar(150) NOT NULL,
  `category` varchar(100) NOT NULL,
  `edition` varchar(100) NOT NULL,
  `pages` int(11) NOT NULL,
  `language` varchar(30) NOT NULL,
  `uploderTitle` varchar(100) NOT NULL,
  `books_amount` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `issu_date` int(11) NOT NULL,
  `due_date` int(11) NOT NULL,
  `issu_member_no` int(11) NOT NULL,
  `cover_photo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `date`, `isbn_no`, `book_no`, `books_title`, `authore`, `category`, `edition`, `pages`, `language`, `uploderTitle`, `books_amount`, `status`, `issu_date`, `due_date`, `issu_member_no`, `cover_photo`) VALUES
(1, 1478559600, '', 20161, 'test', 'saleah', 'Computer', '2', 200, 'English', 'Headmaster', 1, 'Available', 0, 0, 0, 'ae91ed84851a23b5795c9d32d0b54665.jpg'),
(2, 1478559600, '', 20162, 'My sports', 'saleah', 'Sports', '3', 250, 'Bangla', 'Headmaster', 2, 'Available', 0, 0, 0, '52da717446fede5fecf14c8d9787dc66.jpg'),
(3, 1479596400, '', 20163, 'Mashrafe\\''s Biography', 'sf', 'Sports', '2', 400, 'Bagla', 'Headmaster', 3, 'Not Available', 1479646602, 1479769200, 2, '331971cd4a10ad8b7fcf916d1823a21e.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `books_category`
--

CREATE TABLE `books_category` (
  `id` int(11) NOT NULL,
  `category_creator` varchar(100) NOT NULL,
  `category_title` varchar(100) NOT NULL,
  `parent_category` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `books_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books_category`
--

INSERT INTO `books_category` (`id`, `category_creator`, `category_title`, `parent_category`, `description`, `books_amount`) VALUES
(3, 'Headmaster', 'Computer', 'Computer', '', 0),
(5, 'Headmaster', 'Fictions', '', '', 0),
(6, 'Headmaster', 'Health', '', '', 0),
(7, 'Headmaster', 'Sports', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `calender_events`
--

CREATE TABLE `calender_events` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `start_date` varchar(15) NOT NULL,
  `end_date` varchar(15) NOT NULL,
  `color` varchar(15) NOT NULL,
  `url` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `calender_events`
--

INSERT INTO `calender_events` (`id`, `title`, `start_date`, `end_date`, `color`, `url`, `user_id`) VALUES
(1, 'Sports', '30-11-2016', '30-11-2016', 'yellow', '', 21),
(2, 'Sports', '29-11-2016', '30-11-2016', 'green', '', 5),
(3, 'my test', '04-12-2016', '29-12-2016', 'red', 'what???????????', 26);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`) VALUES
(19, 'Income'),
(20, 'Expense'),
(21, 'Test 23');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` int(11) NOT NULL,
  `class_title` varchar(50) NOT NULL,
  `class_group` varchar(150) NOT NULL,
  `section` varchar(100) NOT NULL,
  `section_student_capacity` varchar(5) NOT NULL,
  `classCode` varchar(50) NOT NULL,
  `student_amount` int(11) NOT NULL,
  `attendance_percentices_daily` int(11) NOT NULL,
  `attend_percentise_yearly` int(11) NOT NULL,
  `month_fee` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `class_title`, `class_group`, `section`, `section_student_capacity`, `classCode`, `student_amount`, `attendance_percentices_daily`, `attend_percentise_yearly`, `month_fee`) VALUES
(6, 'Class 6', '', 'A,B', '50', '6', 3, 0, 0, 'November'),
(7, 'Class 3', '', '', '50', '2', 2, 0, 0, 'November'),
(8, 'Class VIII', '', '', '50', '8', 2, 92, 92, 'January'),
(9, 'Class V', 'G', 'B', '50', '0', 0, 0, 0, ''),
(10, 'class 2', 'G', 'M', '85', '-34', 0, 0, 0, ''),
(13, 'class 7', 'G', 'B', '78', 'Seven (7)', 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `class_routine`
--

CREATE TABLE `class_routine` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section` varchar(100) NOT NULL,
  `day_title` varchar(50) NOT NULL,
  `subject` varchar(300) NOT NULL,
  `subject_teacher` varchar(200) NOT NULL,
  `start_time` varchar(30) NOT NULL,
  `end_time` varchar(30) NOT NULL,
  `room_number` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_routine`
--

INSERT INTO `class_routine` (`id`, `class_id`, `section`, `day_title`, `subject`, `subject_teacher`, `start_time`, `end_time`, `room_number`) VALUES
(1, 1, '', 'Sunday', 'Bangla', 'Mr Mahbub', '10:00', '11:00', '11'),
(2, 2, '', 'Sunday', 'English', 'Mr Mahbub', '10', '11', '101'),
(3, 1, '', 'Monday', 'Bangla', 'Mr Mahbub', '10', '11', '101'),
(4, 1, '', 'Tuesday', 'Math', 'Mr Mahbub', '10', '11', '101'),
(5, 6, '', 'Sunday', 'English', 'Mr. Hasan', '10', '11', '101'),
(6, 8, '', 'Sunday', 'English', 'mr mahbub', '10', '11', '101'),
(7, 8, '', 'Sunday', 'Agriculture', 'Mr. Hasan', '12', '1', '1001'),
(8, 7, '', 'Sunday', 'English', 'mr mahbub', '12', '1', '1001'),
(9, 8, '', 'Saturday', 'Geography', 'Mr. Hasan', '12', '1', '1001'),
(10, 8, '', 'Friday', 'English', 'mr mahbub', '12', '1', '1001'),
(11, 8, '', 'Saturday', 'Agriculture', 'Mr. hh pqr', '10', '11', '10002');

-- --------------------------------------------------------

--
-- Table structure for table `class_students`
--

CREATE TABLE `class_students` (
  `id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `roll_number` int(11) DEFAULT NULL,
  `student_id` varchar(100) NOT NULL,
  `stu_machine_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `class_title` varchar(50) NOT NULL,
  `section` varchar(150) NOT NULL,
  `student_title` varchar(100) NOT NULL,
  `attendance_percentices_daily` int(11) NOT NULL,
  `optional_sub` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_students`
--

INSERT INTO `class_students` (`id`, `year`, `user_id`, `roll_number`, `student_id`, `stu_machine_id`, `class_id`, `class_title`, `section`, `student_title`, `attendance_percentices_daily`, `optional_sub`) VALUES
(1, 2016, 2, 1, '201602001', 0, 2, 'Class 2', '', 'Sm abu  saleah', 100, ''),
(2, 2016, 7, 2, '201655002', 0, 2, 'Class 2', '', 'Himel khan', 120, ''),
(3, 2016, 14, 1, '201650001', 0, 3, 'Class 3', '', 'maruf Hasan', 0, ''),
(4, 2016, 16, 1, '201606001', 0, 6, 'Class 6', '', 'Mr. maruf', 0, ''),
(5, 2016, 20, 1, '201601001', 0, 1, 'Class 1', '', 'Mr. abc', 0, ''),
(6, 2016, 22, 1, '201602001', 0, 7, 'Class 3', '', 'Mr. pqr', 0, ''),
(7, 2016, 23, 2, '201602002', 0, 7, 'Class 3', '', 'Mr. pqr', 0, ''),
(8, 2016, 26, 1, '201608001', 0, 8, 'Class VIII', '', 'Mr. Saifur Rahman', 100, 'Agriculture'),
(9, 2017, 29, 2, '8', 0, 8, 'Class VIII', '', 'Saifur Rahman', 83, ''),
(10, 2017, 30, 2, '201706002', 1, 6, 'Class 6', 'B', 'Saifur Rahman', 0, ''),
(11, 2017, 31, 3, '201706003', 3, 6, 'Class 6', 'B', 'Bijoy  Mia', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `class_subject`
--

CREATE TABLE `class_subject` (
  `id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_title` varchar(100) NOT NULL,
  `group` varchar(100) NOT NULL,
  `subject_teacher` varchar(100) NOT NULL,
  `edition` varchar(100) NOT NULL,
  `writer_name` varchar(100) NOT NULL,
  `optional` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_subject`
--

INSERT INTO `class_subject` (`id`, `year`, `class_id`, `subject_title`, `group`, `subject_teacher`, `edition`, `writer_name`, `optional`) VALUES
(1, 2016, 1, 'Bangla', '', 'Mr Mahbub', '', '', 0),
(2, 2016, 1, 'Math', '', 'Mr Mahbub', '', '', 0),
(3, 2016, 2, 'English', '', 'Mr Mahbub', '', '', 0),
(4, 2016, 2, 'Science', '', '', '', '', 0),
(5, 2016, 2, 'Science', '', '', '', '', 0),
(6, 2016, 3, 'English', '', '', '', '', 0),
(7, 2016, 3, 'Science', '', '', '', '', 0),
(8, 2016, 3, 'Math', '', '', '', '', 0),
(9, 2016, 3, 'Agriculture', '', '', '', '', 1),
(10, 2016, 6, 'English', '', 'mr mahbub', '', '', 0),
(11, 2016, 7, 'English', '', 'mr mahbub', '', '', 0),
(12, 2016, 7, 'Science', '', '', '', '', 0),
(13, 2016, 8, 'English', '', 'mr mahbub', '', '', 0),
(14, 2016, 8, 'Agriculture', '', 'Mr. hh pqr', '', '', 1),
(15, 2016, 8, 'Geography', '', 'Mr. Hasan', '8 th ', 'Albert', 1);

-- --------------------------------------------------------

--
-- Table structure for table `configuration`
--

CREATE TABLE `configuration` (
  `id` int(11) NOT NULL,
  `logo` varchar(150) NOT NULL,
  `time_zone` varchar(150) NOT NULL,
  `school_name` varchar(150) NOT NULL,
  `starting_year` varchar(50) NOT NULL,
  `headmaster_name` varchar(150) NOT NULL,
  `address` varchar(150) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `currenct` varchar(50) NOT NULL,
  `country` varchar(150) NOT NULL,
  `language` text NOT NULL,
  `msg_apai_email` varchar(100) NOT NULL,
  `msg_hash_number` varchar(100) NOT NULL,
  `msg_sender_title` varchar(100) NOT NULL,
  `countryPhonCode` varchar(50) NOT NULL,
  `t_a_s_p` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `configuration`
--

INSERT INTO `configuration` (`id`, `logo`, `time_zone`, `school_name`, `starting_year`, `headmaster_name`, `address`, `phone`, `email`, `currenct`, `country`, `language`, `msg_apai_email`, `msg_hash_number`, `msg_sender_title`, `countryPhonCode`, `t_a_s_p`) VALUES
(0, '', 'UP5', 'Mohammadpur High School', '12/12/2000', 'Mr. Jahirul Huque', 'Goila, Aghoiljhara, Barisal', '1234', 'info@goila.com', 'fa fa-money', 'Bangladesh', '', '', '', '', '+88', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `config_week_day`
--

CREATE TABLE `config_week_day` (
  `id` int(11) NOT NULL,
  `day_name` varchar(20) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config_week_day`
--

INSERT INTO `config_week_day` (`id`, `day_name`, `status`) VALUES
(1, 'Sunday', 'Open'),
(2, 'Monday', 'Open'),
(3, 'Tuesday', 'Open'),
(4, 'Wednesday', 'Open'),
(5, 'Thursday', 'Open'),
(6, 'Friday', 'Holyday'),
(7, 'Saturday', 'Holyday');

-- --------------------------------------------------------

--
-- Table structure for table `daily_attendance`
--

CREATE TABLE `daily_attendance` (
  `id` int(11) NOT NULL,
  `date` varchar(50) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `student_id` varchar(150) NOT NULL,
  `stu_machine_id` int(11) NOT NULL,
  `class_title` varchar(30) NOT NULL,
  `section` varchar(100) NOT NULL,
  `days_amount` varchar(20) NOT NULL,
  `roll_no` int(11) NOT NULL,
  `present_or_absent` varchar(2) NOT NULL,
  `student_title` varchar(100) NOT NULL,
  `class_amount_monthly` int(11) NOT NULL,
  `class_amount_yearly` int(11) NOT NULL,
  `attend_amount_monthly` int(11) NOT NULL,
  `attend_amount_yearly` int(11) NOT NULL,
  `percentise_month` int(11) NOT NULL,
  `percentise_year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daily_attendance`
--

INSERT INTO `daily_attendance` (`id`, `date`, `user_id`, `student_id`, `stu_machine_id`, `class_title`, `section`, `days_amount`, `roll_no`, `present_or_absent`, `student_title`, `class_amount_monthly`, `class_amount_yearly`, `attend_amount_monthly`, `attend_amount_yearly`, `percentise_month`, `percentise_year`) VALUES
(1, '1478991600', '2', '201601001', 0, 'Class 2', '', '', 1, 'P', 'Sm abu  saleah', 1, 1, 1, 1, 100, 100),
(2, '1478991600', '7', '201655002', 0, 'Class 2', '', '', 2, 'P', 'Himel khan', 1, 1, 1, 1, 100, 100),
(3, '1479078000', '2', '201601001', 0, 'Class 2', '', '', 1, 'P', 'Sm abu  saleah', 2, 2, 2, 2, 100, 100),
(4, '1479078000', '7', '201655002', 0, 'Class 2', '', '', 2, 'P', 'Himel khan', 5, 5, 6, 6, 120, 120),
(5, '1480546800', '26', '201608001', 0, 'Class VIII', '', '', 1, 'P', 'Mr. Saifur Rahman', 3, 3, 3, 3, 100, 100),
(6, '1483311600', '26', '201608001', 0, 'Class VIII', '', '', 1, 'P', 'Mr. Saifur Rahman', 4, 4, 4, 4, 100, 100),
(7, '1483743600', '26', '2', 0, 'Class VIII', '', '', 1, 'P', 'Mr. Saifur Rahman', 5, 5, 5, 5, 100, 100),
(8, '2017-01-07', '26', '201608001', 0, 'Class VIII', '', '', 1, 'P', 'Mr. Saifur Rahman', 5, 5, 5, 5, 100, 100),
(10, '2017-01-07', '29', '8', 0, 'Class VIII', '', '', 2, 'P', 'Saifur Rahman', 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dormitory`
--

CREATE TABLE `dormitory` (
  `id` int(11) NOT NULL,
  `dormitory_name` varchar(100) NOT NULL,
  `dormitory_for` varchar(100) NOT NULL,
  `room_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dormitory`
--

INSERT INTO `dormitory` (`id`, `dormitory_name`, `dormitory_for`, `room_amount`) VALUES
(1, 'Dormitory 1', 'Only for male', 50),
(2, 'Test', 'Only for male', 22),
(3, 'Dormitory 10', 'Open for all', 100);

-- --------------------------------------------------------

--
-- Table structure for table `dormitory_bed`
--

CREATE TABLE `dormitory_bed` (
  `id` int(11) NOT NULL,
  `dormitory_id` int(11) NOT NULL,
  `dormitory_name` varchar(100) NOT NULL,
  `room_number` varchar(50) NOT NULL,
  `bed_number` varchar(50) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `class` varchar(50) NOT NULL,
  `roll_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dormitory_bed`
--

INSERT INTO `dormitory_bed` (`id`, `dormitory_id`, `dormitory_name`, `room_number`, `bed_number`, `student_id`, `student_name`, `class`, `roll_number`) VALUES
(1, 1, 'Dormitory 1', 'Room No: 6', 'Seat No: 1', 201601001, 'Sm abu  saleah', '1', 1),
(2, 1, 'Dormitory 1', 'Room No: 6', 'Seat No: 2', 0, '', '', 0),
(3, 1, 'Dormitory 1', 'Room No: 6', 'Seat No: 3', 0, '', '', 0),
(4, 1, 'Dormitory 1', 'Room No: 6', 'Seat No: 4', 0, '', '', 0),
(5, 1, 'Dormitory 1', 'Room No: 1', 'Seat No: 1', 201601001, '', '', 0),
(6, 1, 'Dormitory 1', 'Room No: 1', 'Seat No: 2', 0, '', '', 0),
(7, 1, 'Dormitory 1', 'Room No: 4', 'Seat No: 1', 0, '', '', 0),
(8, 1, 'Dormitory 1', 'Room No: 4', 'Seat No: 2', 0, '', '', 0),
(9, 3, 'Dormitory 10', 'Room No: 1', 'Seat No: 1', 201606001, 'Mr. maruf', '6', 1),
(10, 3, 'Dormitory 10', 'Room No: 1', 'Seat No: 2', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dormitory_room`
--

CREATE TABLE `dormitory_room` (
  `id` int(11) NOT NULL,
  `dormitory_id` int(11) NOT NULL,
  `dormitory_name` varchar(100) NOT NULL,
  `room` varchar(50) NOT NULL,
  `bed_amount` int(11) NOT NULL,
  `free_seat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dormitory_room`
--

INSERT INTO `dormitory_room` (`id`, `dormitory_id`, `dormitory_name`, `room`, `bed_amount`, `free_seat`) VALUES
(1, 1, 'Dormitory 1', 'Room No: 1', 2, 2),
(2, 1, 'Dormitory 1', 'Room No: 2', 0, 0),
(3, 1, 'Dormitory 1', 'Room No: 3', 0, 0),
(4, 1, 'Dormitory 1', 'Room No: 4', 2, 2),
(5, 1, 'Dormitory 1', 'Room No: 5', 0, 0),
(6, 1, 'Dormitory 1', 'Room No: 6', 4, 4),
(7, 1, 'Dormitory 1', 'Room No: 7', 0, 0),
(8, 1, 'Dormitory 1', 'Room No: 8', 0, 0),
(9, 1, 'Dormitory 1', 'Room No: 9', 0, 0),
(10, 1, 'Dormitory 1', 'Room No: 10', 0, 0),
(11, 1, 'Dormitory 1', 'Room No: 11', 0, 0),
(12, 1, 'Dormitory 1', 'Room No: 12', 0, 0),
(13, 1, 'Dormitory 1', 'Room No: 13', 0, 0),
(14, 1, 'Dormitory 1', 'Room No: 14', 0, 0),
(15, 1, 'Dormitory 1', 'Room No: 15', 0, 0),
(16, 1, 'Dormitory 1', 'Room No: 16', 0, 0),
(17, 1, 'Dormitory 1', 'Room No: 17', 0, 0),
(18, 1, 'Dormitory 1', 'Room No: 18', 0, 0),
(19, 1, 'Dormitory 1', 'Room No: 19', 0, 0),
(20, 1, 'Dormitory 1', 'Room No: 20', 0, 0),
(21, 1, 'Dormitory 1', 'Room No: 21', 0, 0),
(22, 1, 'Dormitory 1', 'Room No: 22', 0, 0),
(23, 1, 'Dormitory 1', 'Room No: 23', 0, 0),
(24, 1, 'Dormitory 1', 'Room No: 24', 0, 0),
(25, 1, 'Dormitory 1', 'Room No: 25', 0, 0),
(26, 1, 'Dormitory 1', 'Room No: 26', 0, 0),
(27, 1, 'Dormitory 1', 'Room No: 27', 0, 0),
(28, 1, 'Dormitory 1', 'Room No: 28', 0, 0),
(29, 1, 'Dormitory 1', 'Room No: 29', 0, 0),
(30, 1, 'Dormitory 1', 'Room No: 30', 0, 0),
(31, 1, 'Dormitory 1', 'Room No: 31', 0, 0),
(32, 1, 'Dormitory 1', 'Room No: 32', 0, 0),
(33, 1, 'Dormitory 1', 'Room No: 33', 0, 0),
(34, 1, 'Dormitory 1', 'Room No: 34', 0, 0),
(35, 1, 'Dormitory 1', 'Room No: 35', 0, 0),
(36, 1, 'Dormitory 1', 'Room No: 36', 0, 0),
(37, 1, 'Dormitory 1', 'Room No: 37', 0, 0),
(38, 1, 'Dormitory 1', 'Room No: 38', 0, 0),
(39, 1, 'Dormitory 1', 'Room No: 39', 0, 0),
(40, 1, 'Dormitory 1', 'Room No: 40', 0, 0),
(41, 1, 'Dormitory 1', 'Room No: 41', 0, 0),
(42, 1, 'Dormitory 1', 'Room No: 42', 0, 0),
(43, 1, 'Dormitory 1', 'Room No: 43', 0, 0),
(44, 1, 'Dormitory 1', 'Room No: 44', 0, 0),
(45, 1, 'Dormitory 1', 'Room No: 45', 0, 0),
(46, 1, 'Dormitory 1', 'Room No: 46', 0, 0),
(47, 1, 'Dormitory 1', 'Room No: 47', 0, 0),
(48, 1, 'Dormitory 1', 'Room No: 48', 0, 0),
(49, 1, 'Dormitory 1', 'Room No: 49', 0, 0),
(50, 1, 'Dormitory 1', 'Room No: 50', 0, 0),
(51, 2, 'Test', 'Room No: 1', 0, 0),
(52, 2, 'Test', 'Room No: 2', 0, 0),
(53, 2, 'Test', 'Room No: 3', 0, 0),
(54, 2, 'Test', 'Room No: 4', 0, 0),
(55, 2, 'Test', 'Room No: 5', 0, 0),
(56, 2, 'Test', 'Room No: 6', 0, 0),
(57, 2, 'Test', 'Room No: 7', 0, 0),
(58, 2, 'Test', 'Room No: 8', 0, 0),
(59, 2, 'Test', 'Room No: 9', 0, 0),
(60, 2, 'Test', 'Room No: 10', 0, 0),
(61, 2, 'Test', 'Room No: 11', 0, 0),
(62, 2, 'Test', 'Room No: 12', 0, 0),
(63, 2, 'Test', 'Room No: 13', 0, 0),
(64, 2, 'Test', 'Room No: 14', 0, 0),
(65, 2, 'Test', 'Room No: 15', 0, 0),
(66, 2, 'Test', 'Room No: 16', 0, 0),
(67, 2, 'Test', 'Room No: 17', 0, 0),
(68, 2, 'Test', 'Room No: 18', 0, 0),
(69, 2, 'Test', 'Room No: 19', 0, 0),
(70, 2, 'Test', 'Room No: 20', 0, 0),
(71, 2, 'Test', 'Room No: 21', 0, 0),
(72, 2, 'Test', 'Room No: 22', 0, 0),
(73, 3, 'Dormitory 10', 'Room No: 1', 2, 2),
(74, 3, 'Dormitory 10', 'Room No: 2', 0, 0),
(75, 3, 'Dormitory 10', 'Room No: 3', 0, 0),
(76, 3, 'Dormitory 10', 'Room No: 4', 0, 0),
(77, 3, 'Dormitory 10', 'Room No: 5', 0, 0),
(78, 3, 'Dormitory 10', 'Room No: 6', 0, 0),
(79, 3, 'Dormitory 10', 'Room No: 7', 0, 0),
(80, 3, 'Dormitory 10', 'Room No: 8', 0, 0),
(81, 3, 'Dormitory 10', 'Room No: 9', 0, 0),
(82, 3, 'Dormitory 10', 'Room No: 10', 0, 0),
(83, 3, 'Dormitory 10', 'Room No: 11', 0, 0),
(84, 3, 'Dormitory 10', 'Room No: 12', 0, 0),
(85, 3, 'Dormitory 10', 'Room No: 13', 0, 0),
(86, 3, 'Dormitory 10', 'Room No: 14', 0, 0),
(87, 3, 'Dormitory 10', 'Room No: 15', 0, 0),
(88, 3, 'Dormitory 10', 'Room No: 16', 0, 0),
(89, 3, 'Dormitory 10', 'Room No: 17', 0, 0),
(90, 3, 'Dormitory 10', 'Room No: 18', 0, 0),
(91, 3, 'Dormitory 10', 'Room No: 19', 0, 0),
(92, 3, 'Dormitory 10', 'Room No: 20', 0, 0),
(93, 3, 'Dormitory 10', 'Room No: 21', 0, 0),
(94, 3, 'Dormitory 10', 'Room No: 22', 0, 0),
(95, 3, 'Dormitory 10', 'Room No: 23', 0, 0),
(96, 3, 'Dormitory 10', 'Room No: 24', 0, 0),
(97, 3, 'Dormitory 10', 'Room No: 25', 0, 0),
(98, 3, 'Dormitory 10', 'Room No: 26', 0, 0),
(99, 3, 'Dormitory 10', 'Room No: 27', 0, 0),
(100, 3, 'Dormitory 10', 'Room No: 28', 0, 0),
(101, 3, 'Dormitory 10', 'Room No: 29', 0, 0),
(102, 3, 'Dormitory 10', 'Room No: 30', 0, 0),
(103, 3, 'Dormitory 10', 'Room No: 31', 0, 0),
(104, 3, 'Dormitory 10', 'Room No: 32', 0, 0),
(105, 3, 'Dormitory 10', 'Room No: 33', 0, 0),
(106, 3, 'Dormitory 10', 'Room No: 34', 0, 0),
(107, 3, 'Dormitory 10', 'Room No: 35', 0, 0),
(108, 3, 'Dormitory 10', 'Room No: 36', 0, 0),
(109, 3, 'Dormitory 10', 'Room No: 37', 0, 0),
(110, 3, 'Dormitory 10', 'Room No: 38', 0, 0),
(111, 3, 'Dormitory 10', 'Room No: 39', 0, 0),
(112, 3, 'Dormitory 10', 'Room No: 40', 0, 0),
(113, 3, 'Dormitory 10', 'Room No: 41', 0, 0),
(114, 3, 'Dormitory 10', 'Room No: 42', 0, 0),
(115, 3, 'Dormitory 10', 'Room No: 43', 0, 0),
(116, 3, 'Dormitory 10', 'Room No: 44', 0, 0),
(117, 3, 'Dormitory 10', 'Room No: 45', 0, 0),
(118, 3, 'Dormitory 10', 'Room No: 46', 0, 0),
(119, 3, 'Dormitory 10', 'Room No: 47', 0, 0),
(120, 3, 'Dormitory 10', 'Room No: 48', 0, 0),
(121, 3, 'Dormitory 10', 'Room No: 49', 0, 0),
(122, 3, 'Dormitory 10', 'Room No: 50', 0, 0),
(123, 3, 'Dormitory 10', 'Room No: 51', 0, 0),
(124, 3, 'Dormitory 10', 'Room No: 52', 0, 0),
(125, 3, 'Dormitory 10', 'Room No: 53', 0, 0),
(126, 3, 'Dormitory 10', 'Room No: 54', 0, 0),
(127, 3, 'Dormitory 10', 'Room No: 55', 0, 0),
(128, 3, 'Dormitory 10', 'Room No: 56', 0, 0),
(129, 3, 'Dormitory 10', 'Room No: 57', 0, 0),
(130, 3, 'Dormitory 10', 'Room No: 58', 0, 0),
(131, 3, 'Dormitory 10', 'Room No: 59', 0, 0),
(132, 3, 'Dormitory 10', 'Room No: 60', 0, 0),
(133, 3, 'Dormitory 10', 'Room No: 61', 0, 0),
(134, 3, 'Dormitory 10', 'Room No: 62', 0, 0),
(135, 3, 'Dormitory 10', 'Room No: 63', 0, 0),
(136, 3, 'Dormitory 10', 'Room No: 64', 0, 0),
(137, 3, 'Dormitory 10', 'Room No: 65', 0, 0),
(138, 3, 'Dormitory 10', 'Room No: 66', 0, 0),
(139, 3, 'Dormitory 10', 'Room No: 67', 0, 0),
(140, 3, 'Dormitory 10', 'Room No: 68', 0, 0),
(141, 3, 'Dormitory 10', 'Room No: 69', 0, 0),
(142, 3, 'Dormitory 10', 'Room No: 70', 0, 0),
(143, 3, 'Dormitory 10', 'Room No: 71', 0, 0),
(144, 3, 'Dormitory 10', 'Room No: 72', 0, 0),
(145, 3, 'Dormitory 10', 'Room No: 73', 0, 0),
(146, 3, 'Dormitory 10', 'Room No: 74', 0, 0),
(147, 3, 'Dormitory 10', 'Room No: 75', 0, 0),
(148, 3, 'Dormitory 10', 'Room No: 76', 0, 0),
(149, 3, 'Dormitory 10', 'Room No: 77', 0, 0),
(150, 3, 'Dormitory 10', 'Room No: 78', 0, 0),
(151, 3, 'Dormitory 10', 'Room No: 79', 0, 0),
(152, 3, 'Dormitory 10', 'Room No: 80', 0, 0),
(153, 3, 'Dormitory 10', 'Room No: 81', 0, 0),
(154, 3, 'Dormitory 10', 'Room No: 82', 0, 0),
(155, 3, 'Dormitory 10', 'Room No: 83', 0, 0),
(156, 3, 'Dormitory 10', 'Room No: 84', 0, 0),
(157, 3, 'Dormitory 10', 'Room No: 85', 0, 0),
(158, 3, 'Dormitory 10', 'Room No: 86', 0, 0),
(159, 3, 'Dormitory 10', 'Room No: 87', 0, 0),
(160, 3, 'Dormitory 10', 'Room No: 88', 0, 0),
(161, 3, 'Dormitory 10', 'Room No: 89', 0, 0),
(162, 3, 'Dormitory 10', 'Room No: 90', 0, 0),
(163, 3, 'Dormitory 10', 'Room No: 91', 0, 0),
(164, 3, 'Dormitory 10', 'Room No: 92', 0, 0),
(165, 3, 'Dormitory 10', 'Room No: 93', 0, 0),
(166, 3, 'Dormitory 10', 'Room No: 94', 0, 0),
(167, 3, 'Dormitory 10', 'Room No: 95', 0, 0),
(168, 3, 'Dormitory 10', 'Room No: 96', 0, 0),
(169, 3, 'Dormitory 10', 'Room No: 97', 0, 0),
(170, 3, 'Dormitory 10', 'Room No: 98', 0, 0),
(171, 3, 'Dormitory 10', 'Room No: 99', 0, 0),
(172, 3, 'Dormitory 10', 'Room No: 100', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `employe`
--

CREATE TABLE `employe` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `father_name` varchar(150) NOT NULL,
  `mother_name` varchar(150) NOT NULL,
  `birth_date` varchar(100) NOT NULL,
  `sex` varchar(50) NOT NULL,
  `present_address` varchar(150) NOT NULL,
  `permanent_address` varchar(150) NOT NULL,
  `job_title_post` varchar(100) NOT NULL,
  `working_hour` varchar(20) NOT NULL,
  `salary_amount` varchar(100) NOT NULL,
  `educational_qualifation_1` varchar(300) NOT NULL,
  `educational_qualifation_2` varchar(300) NOT NULL,
  `educational_qualifation_3` varchar(300) NOT NULL,
  `educational_qualifation_4` varchar(300) NOT NULL,
  `educational_qualifation_5` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `exam_attendanc`
--

CREATE TABLE `exam_attendanc` (
  `id` int(11) NOT NULL,
  `date` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `student_id` varchar(20) NOT NULL,
  `student_title` varchar(100) NOT NULL,
  `class_id` int(11) NOT NULL,
  `roll_no` varchar(11) NOT NULL,
  `section` varchar(100) NOT NULL,
  `exam_title` varchar(150) NOT NULL,
  `exam_subject` varchar(100) NOT NULL,
  `attendance` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_attendanc`
--

INSERT INTO `exam_attendanc` (`id`, `date`, `user_id`, `student_id`, `student_title`, `class_id`, `roll_no`, `section`, `exam_title`, `exam_subject`, `attendance`) VALUES
(1, '08/11/2016', 2, '201601001', 'Sm abu  saleah', 1, '1', '', 'Test', 'Bangla', 'P'),
(2, '14/11/2016', 14, '201650001', 'maruf Hasan', 3, '1', '', 'test for attendance', 'English', 'P'),
(3, '20/11/2016', 16, '201606001', 'Mr. maruf', 6, '1', '', 'Class test 62', 'English', 'P'),
(4, '04/12/2016', 26, '201608001', 'Mr. Saifur Rahman', 8, '1', '', 'Final Exam', 'English', 'P'),
(5, '02/01/2017', 26, '201608001', 'Mr. Saifur Rahman', 8, '1', '', 'class test 1', 'English', 'P');

-- --------------------------------------------------------

--
-- Table structure for table `exam_grade`
--

CREATE TABLE `exam_grade` (
  `id` int(11) NOT NULL,
  `grade_name` varchar(30) NOT NULL,
  `point` varchar(4) NOT NULL,
  `number_form` varchar(5) NOT NULL,
  `number_to` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_grade`
--

INSERT INTO `exam_grade` (`id`, `grade_name`, `point`, `number_form`, `number_to`) VALUES
(1, 'A+', '5', '80', '100'),
(2, 'A', '4', '70', '79'),
(3, 'A-', '3.5', '60', '69'),
(4, 'B', '3', '50', '59'),
(5, 'C', '2', '40', '49'),
(6, 'D', '1', '33', '39'),
(7, 'F', '0', '0', '32');

-- --------------------------------------------------------

--
-- Table structure for table `exam_routine`
--

CREATE TABLE `exam_routine` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `exam_date` varchar(30) NOT NULL,
  `exam_subject` varchar(100) NOT NULL,
  `subject_code` varchar(15) NOT NULL,
  `rome_number` varchar(10) NOT NULL,
  `start_time` varchar(10) NOT NULL,
  `end_time` varchar(30) NOT NULL,
  `exam_shift` varchar(50) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_routine`
--

INSERT INTO `exam_routine` (`id`, `exam_id`, `exam_date`, `exam_subject`, `subject_code`, `rome_number`, `start_time`, `end_time`, `exam_shift`, `status`) VALUES
(1, 2, '08/11/2016', 'Bangla', '25', '101', '10:00', '10:30', 'Morning shift', 'Result'),
(2, 3, '08/11/2016', 'Math', '23', '101', '10:00', '10:30', 'Morning shift', 'Result'),
(3, 4, '08/11/2016', 'Bangla', '25', '101', '10:00', '10:30', 'Morning shift', 'Result'),
(4, 4, '09/11/2016', 'Math', '23', '101', '10:00', '10:30', 'Morning shift', 'Result'),
(5, 5, '08/12/2016', 'Bangla', '25', '101', '10:00', '1:00', 'Morning shift', 'Result'),
(6, 5, '09/12/2016', 'Math', '23', '101', '10:00', '1:00', 'Morning shift', 'Result'),
(7, 6, '12/12/2016', 'Bangla', '55', '101', '10:00', '1:00', 'Morning shift', 'NoResult'),
(8, 6, '13/12/2016', 'Math', '23', '101', '10:00', '1:00', 'Morning shift', 'NoResult'),
(9, 8, '15/11/2016', 'English', '14', '44', '44', '44', 'Morning shift', 'NoResult'),
(10, 8, '16/11/2016', 'Science', '12', '12', '10', '01', 'Morning shift', 'NoResult'),
(11, 9, '15/11/2016', 'English', '14', '101', '10:30', '11:00', 'Morning shift', 'NoResult'),
(12, 9, '16/11/2016', 'Science', '12', '101', '10:30', '11:00', 'Morning shift', 'NoResult'),
(13, 16, '14/11/2016', 'English', '14', '101', '10:30', '11:00', 'Morning shift', 'NoResult'),
(14, 17, '14/11/2016', 'Math', '14', '101', '10:30', '11:00', 'Morning shift', 'NoResult'),
(15, 18, '14/11/2016', 'English', '14', '101', '10:30', '11:00', 'Morning shift', 'Result'),
(16, 18, '15/11/2016', 'Science', '12', '101', '10:30', '11:00', 'Morning shift', 'Result'),
(17, 18, '16/11/2016', 'Math', '55', '101', '10:30', '11:00', 'Morning shift', 'Result'),
(18, 18, '17/11/2016', 'Agriculture', '55', '101', '10:30', '11:00', 'Morning shift', 'Result'),
(19, 22, '15/11/2016', 'English', '14', '101', '10:30', '11:00', 'Morning shift', 'Result'),
(20, 23, '20/11/2016', 'English', '14', '101', '10:30', '11:00', 'Morning shift', 'Result'),
(21, 24, '26-11-2016', 'English', '14', '101', '10:30', '11:00', 'Morning shift', 'Result'),
(22, 24, '27/11/2016', 'Science', '12', '101', '10:30', '11:00', 'Morning shift', 'Result'),
(23, 25, '20-12-2016', 'English', '14', '101', '10:30', '11:00', 'Morning shift', 'Result'),
(26, 43, '04/12/2016', 'English', '101', '1002', '10 a.m', '1 p.m', 'Morning shift', 'NoResult'),
(30, 70, '04/12/2016', 'English', '101', '1001', '10 a.m', '1 p.m', 'Morning shift', 'Result'),
(31, 70, '04/12/2016', 'Agriculture', '110', '1001', '2 p.m', '5 p.m', 'Evening shift', 'Result'),
(32, 71, '02/01/2017', 'English', '101', '1001', '10 a.m', '10.30', 'Morning shift', 'Result');

-- --------------------------------------------------------

--
-- Table structure for table `fee_item`
--

CREATE TABLE `fee_item` (
  `id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fee_item`
--

INSERT INTO `fee_item` (`id`, `year`, `class_id`, `title`, `amount`) VALUES
(5, 2016, 6, '', 200),
(6, 2016, 7, '', 100),
(7, 2017, 8, 'Exam Fee', 500);

-- --------------------------------------------------------

--
-- Table structure for table `final_result`
--

CREATE TABLE `final_result` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section` varchar(100) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `exam_title` varchar(100) NOT NULL,
  `student_id` varchar(20) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `total_mark` varchar(100) NOT NULL,
  `final_grade` varchar(10) NOT NULL,
  `maride_list` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  `point` varchar(11) NOT NULL,
  `fail_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `final_result`
--

INSERT INTO `final_result` (`id`, `class_id`, `section`, `exam_id`, `exam_title`, `student_id`, `student_name`, `total_mark`, `final_grade`, `maride_list`, `status`, `point`, `fail_amount`) VALUES
(1, 1, '', 3, 'Test', '201601001', 'Sm abu  saleah', '157', 'A', '1', 'Pass', '4.5', 0),
(2, 1, '', 4, 'Calss Test 2', '201601001', 'Sm abu  saleah', '314', 'A+', '1', 'Pass', '9', 0),
(3, 1, '', 3, 'Final', '201601001', 'Sm abu  saleah', '471', 'A+', '1', 'Pass', '13.5', 0),
(4, 3, '', 18, 'test for attendance', '201650001', 'maruf Hasan', '267', 'A+', '', 'Pass', '6.67', 0),
(5, 6, '', 23, 'Class test 62', '201606001', 'Mr. maruf', '85', 'A+', '', 'Pass', '5', 0),
(6, 7, '', 24, 'Class test 2', '201602001', 'Mr. pqr', '155', 'A', '', 'Pass', '4.5', 0),
(7, 6, '', 25, 'Class test', '201606001', 'Mr. maruf', '276', 'A+', '', 'Pass', '12.5', 0),
(8, 6, '', 22, 'Class test 6', '201606001', 'Mr. maruf', '276', 'A+', '', 'Pass', '12.5', 0),
(9, 8, '', 70, 'Final Exam', '201608001', 'Mr. Saifur Rahman', '358', 'A+', '', 'Pass', '17', 0),
(10, 8, '', 71, 'class test 1', '201608001', 'Mr. Saifur Rahman', '358', 'A+', '', 'Pass', '17', 0);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(3, 'student', 'This user is student''s groups member.'),
(4, 'teacher', 'This user is teacher''s groups member.'),
(5, 'parents', 'This user is parent''s groups member.'),
(6, 'accountant', 'This user is accountent''s groups member.'),
(7, 'library_man', 'The library man can manage library and library''s account information'),
(8, '4th_class_employ', ''),
(9, 'driver', '');

-- --------------------------------------------------------

--
-- Table structure for table `inven_category`
--

CREATE TABLE `inven_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `details` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inven_category`
--

INSERT INTO `inven_category` (`id`, `category_name`, `details`) VALUES
(1, 'Furniture', ''),
(2, 'Computer', ''),
(3, 'Test', '');

-- --------------------------------------------------------

--
-- Table structure for table `inve_item`
--

CREATE TABLE `inve_item` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `category` varchar(50) NOT NULL,
  `item` varchar(200) NOT NULL,
  `quantity` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `total_rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inve_item`
--

INSERT INTO `inve_item` (`id`, `vendor_id`, `category`, `item`, `quantity`, `rate`, `discount`, `total_rate`) VALUES
(1, 1, '1', 'Table', 1, 1000, 0, 5000),
(2, 2, '2', 'Mouse', -2, 250, 0, 1250),
(3, 3, '2', 'laptop ', 6, 30000, 0, 300000),
(4, 3, '2', 'laptop', 10, 30000, 0, 300000);

-- --------------------------------------------------------

--
-- Table structure for table `issu_item`
--

CREATE TABLE `issu_item` (
  `id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `user_type` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issu_item`
--

INSERT INTO `issu_item` (`id`, `date`, `user_type`, `user_id`, `item_id`, `quantity`, `rate`, `total_price`, `status`) VALUES
(1, 1478559600, 'Student', 1, 1, 4, 1000, 4000, 'Cash'),
(2, 1478559600, 'Employee', 3, 2, 1, 250, 250, 'Cash'),
(4, 1478559600, 'Employee', 4, 2, 1, 250, 250, 'Cash'),
(5, 1479682800, 'Student', 16, 3, 1, 30000, 30000, 'Cash'),
(6, 1479769200, 'Student', 16, 3, 3, 30000, 90000, 'Cash');

-- --------------------------------------------------------

--
-- Table structure for table `leave_application`
--

CREATE TABLE `leave_application` (
  `id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `sender_title` varchar(150) NOT NULL,
  `subject` varchar(150) NOT NULL,
  `jobtype` text NOT NULL,
  `leave_start` int(11) NOT NULL,
  `leave_end` int(11) NOT NULL,
  `application_date` int(11) NOT NULL,
  `reason` varchar(500) NOT NULL,
  `cheack_by` varchar(150) NOT NULL,
  `status` text NOT NULL,
  `cheack_statuse` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leave_application`
--

INSERT INTO `leave_application` (`id`, `year`, `sender_id`, `sender_title`, `subject`, `jobtype`, `leave_start`, `leave_end`, `application_date`, `reason`, `cheack_by`, `status`, `cheack_statuse`) VALUES
(1, 2016, 1, 'Headmaster', 'Prayer for leave of absence.', 'part', 1478559600, 1478732400, 1478559600, 'fever', 'Headmaster', 'Compleated', 'Checked'),
(2, 2016, 1, 'Headmaster', 'Prayer for leave of absence.', 'part', 1479164400, 1480374000, 1478559600, 'gggg', '', 'Pending', 'Checked');

-- --------------------------------------------------------

--
-- Table structure for table `library_member`
--

CREATE TABLE `library_member` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `fine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library_member`
--

INSERT INTO `library_member` (`id`, `user_id`, `title`, `fine`) VALUES
(1, 2, 'Sm abu  saleah', 0),
(2, 16, 'Mr. maruf', 0);

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `massage`
--

CREATE TABLE `massage` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` varchar(50) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `read_unread` int(1) NOT NULL,
  `date` int(11) NOT NULL,
  `sender_delete` int(11) NOT NULL,
  `receiver_delete` int(11) NOT NULL,
  `class` varchar(100) NOT NULL,
  `is_message_sent` int(11) NOT NULL COMMENT '1 = Sent, 0 = Not Sent'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `massage`
--

INSERT INTO `massage` (`id`, `sender_id`, `receiver_id`, `message`, `subject`, `read_unread`, `date`, `sender_delete`, `receiver_delete`, `class`, `is_message_sent`) VALUES
(1, 1, '201601005', 'Hello Mr', 'Test1', 0, 1479975853, 1, 1, '', 1),
(2, 1, '201655002', 'Test Message', 'Test2', 0, 1479975853, 1, 1, '', 1),
(3, 1, '3', '<p>Test teacher message</p>\\r\\n', 'Test3', 1, 1479975887, 1, 1, '', 1),
(4, 1, '12', '<p>Test parent message1</p>\\r\\n', 'Test4', 0, 1479975940, 1, 1, '', 1),
(5, 1, '19', '<p>Test parent message 2</p>\\r\\n', 'Test5', 0, 1479975940, 1, 1, '', 1),
(6, 1, '201602001', 'Hello Mr 2', 'Test', 0, 1480416712, 1, 1, '', 1),
(7, 1, '3', 'Hlw Mr Mahbub', 'Test', 1, 1480590990, 1, 1, '', 1),
(8, 1, '27', 'test', 'Test SMS', 0, 1483600066, 1, 1, '', 1),
(9, 1, '201608001', 'Hi, This is test sms', 'Test SMS', 0, 1483600116, 1, 1, '', 1),
(10, 1, '201608001', 'hello test again', 'Test SMS', 0, 1483600311, 1, 1, '', 1),
(11, 1, '201608001', 'test soon', 'Test SMS', 0, 1483601755, 1, 1, '', 1),
(12, 1, '27', 'Your child now is in school', 'Student Attendance', 0, 0, 0, 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notice_board`
--

CREATE TABLE `notice_board` (
  `id` int(11) NOT NULL,
  `date` varchar(11) NOT NULL,
  `sender` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `notice` varchar(1000) NOT NULL,
  `receiver` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice_board`
--

INSERT INTO `notice_board` (`id`, `date`, `sender`, `subject`, `notice`, `receiver`) VALUES
(1, '20/11/2016', 'Headmaster', 'Sports', '<p>asdfsfs&nbsp; adfdasf&nbsp; asdfsdf</p>\\r\\n', 'all');

-- --------------------------------------------------------

--
-- Table structure for table `parents_info`
--

CREATE TABLE `parents_info` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `parents_name` varchar(100) NOT NULL,
  `relation` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parents_info`
--

INSERT INTO `parents_info` (`id`, `user_id`, `class_id`, `student_id`, `parents_name`, `relation`, `email`, `phone`) VALUES
(1, 12, 2, 201655002, 'Mr. Rahim', 'Father', 'rahim@gmail.com', '8801725896235'),
(2, 17, 6, 201606001, 'Alam Khan', 'Father', 'alam@gmail.com', '8801725896235'),
(3, 18, 6, 201606001, 'Mr. Murad', 'Uncle', 'murad@gmail.com', '8801725896235'),
(4, 19, 2, 201601001, 'Mr. Salim', 'Father', 'salim@gmail.com', '8801725896235'),
(5, 21, 1, 201601001, 'Mr. xyz', 'Father', 'xyz@gmail.com', '8801722258956'),
(6, 25, 7, 201602002, 'Mr. Halim Hasan', 'Father', 'halim@gmail.com', '8801725896235'),
(7, 27, 8, 8, 'Md.Abul  Hashem', 'Father', 'father@gmail.com', '8801710386124'),
(8, 28, 8, 201608001, 'fd nb', 'fg', 'test@gmail.com', '8801710386124');

-- --------------------------------------------------------

--
-- Table structure for table `result_action`
--

CREATE TABLE `result_action` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `exam_title` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL,
  `publish` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result_action`
--

INSERT INTO `result_action` (`id`, `class_id`, `exam_id`, `exam_title`, `status`, `publish`) VALUES
(5, 6, 23, 'Class test 62', 'Complete', 'Publish'),
(6, 7, 24, 'Class test 2', 'Complete', 'Publish'),
(7, 6, 25, 'Class test', 'Complete', 'Publish'),
(8, 6, 22, 'Class test 6', 'Complete', 'Publish'),
(9, 8, 70, 'Final Exam', 'Complete', 'Publish'),
(10, 8, 71, 'class test 1', 'Complete', 'Publish');

-- --------------------------------------------------------

--
-- Table structure for table `result_shit`
--

CREATE TABLE `result_shit` (
  `id` int(11) NOT NULL,
  `exam_title` varchar(100) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section` varchar(100) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `student_id` varchar(100) NOT NULL,
  `exam_subject` varchar(100) NOT NULL,
  `mark` varchar(10) NOT NULL,
  `point` varchar(5) NOT NULL,
  `grade` varchar(5) NOT NULL,
  `roll_number` int(11) NOT NULL,
  `result` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result_shit`
--

INSERT INTO `result_shit` (`id`, `exam_title`, `exam_id`, `class_id`, `section`, `student_name`, `student_id`, `exam_subject`, `mark`, `point`, `grade`, `roll_number`, `result`) VALUES
(1, 'Test', 2, 1, '', 'Sm abu  saleah', '201601001', 'Bangla', '80', '5', 'A+', 1, 'Pass'),
(2, 'Test', 3, 1, '', 'Sm abu  saleah', '201601001', 'Math', '77', '4', 'A', 1, 'Pass'),
(3, 'Calss Test 2', 4, 1, '', 'Sm abu  saleah', '201601001', 'Bangla', '80', '5', 'A+', 1, 'Pass'),
(4, 'Calss Test 2', 4, 1, '', 'Sm abu  saleah', '201601001', 'Math', '77', '4', 'A', 1, 'Pass'),
(5, 'Final', 5, 1, '', 'Sm abu  saleah', '201601001', 'Bangla', '80', '5', 'A+', 1, 'Pass'),
(6, 'Final', 5, 1, '', 'Sm abu  saleah', '201601001', 'Math', '77', '4', 'A', 1, 'Pass'),
(7, 'test for attendance', 18, 3, '', 'maruf Hasan', '201650001', 'Math', '12', '5', 'A+', 1, 'Pass'),
(8, 'test for attendance', 18, 3, '', 'maruf Hasan', '201650001', 'Agriculture', '89', '5', 'A+', 1, 'Pass'),
(9, 'test for attendance', 18, 3, '', 'maruf Hasan', '201650001', 'English', '85', '5', 'A+', 1, 'Pass'),
(10, 'test for attendance', 18, 3, '', 'maruf Hasan', '201650001', 'Science', '81', '5', 'A+', 1, 'Pass'),
(11, 'Class test 62', 23, 6, '', 'Mr. maruf', '201606001', 'English', '85', '5', 'A+', 1, 'Pass'),
(12, 'Class test 2', 24, 7, '', 'Mr. pqr', '201602001', 'English', '80', '5', 'A+', 1, 'Pass'),
(13, 'Class test 2', 24, 7, '', 'Mr. pqr', '201602001', 'Science', '75', '4', 'A', 1, 'Pass'),
(14, 'Class test 6', 21, 6, '', 'Mr. maruf', '201606001', '', '95', '3', 'A+', 1, 'Pass'),
(15, 'Class test 2', 24, 7, '', 'Mr. pqr', '201602001', '', '27', '-2', 'F', 1, 'Fail'),
(16, 'Class test 2', 24, 7, '', 'Mr. pqr', '201602002', '', '65', '1.5', 'A-', 2, 'Pass'),
(17, 'Class test 6', 22, 6, '', 'Mr. maruf', '201606001', 'English', '67', '3.5', 'A-', 1, 'Pass'),
(18, 'Class test', 25, 6, '', 'Mr. maruf', '201606001', 'English', '35', '1', 'D', 1, 'Pass'),
(19, 'Final Exam', 70, 8, '', 'Mr. Saifur Rahman', '201608001', 'English', '95', '5', 'A+', 1, 'Pass'),
(20, 'Final Exam', 70, 8, '', 'Mr. Saifur Rahman', '201608001', 'Agriculture', '90', '3', 'A+', 1, 'Pass'),
(21, 'Final Exam', 70, 8, '', 'Mr. Saifur Rahman', '201608001', '', '95', '5', 'A+', 1, 'Pass'),
(22, 'class test 1', 71, 8, '', 'Mr. Saifur Rahman', '201608001', 'English', '78', '4', 'A', 1, 'Pass');

-- --------------------------------------------------------

--
-- Table structure for table `result_submition_info`
--

CREATE TABLE `result_submition_info` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section` varchar(100) NOT NULL,
  `exam_title` varchar(150) NOT NULL,
  `date` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `submited` varchar(50) NOT NULL,
  `teacher` varchar(100) NOT NULL,
  `exam_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result_submition_info`
--

INSERT INTO `result_submition_info` (`id`, `class_id`, `section`, `exam_title`, `date`, `subject`, `submited`, `teacher`, `exam_id`) VALUES
(1, 1, '', 'Test', '08/11/2016', 'Bangla', '1', 'Headmaster', 2),
(2, 1, '', 'Test', '08/11/2016', 'Math', '1', 'Headmaster', 3),
(3, 1, '', 'Calss Test 2', '08/11/2016', 'Bangla', '1', 'Headmaster', 4),
(4, 1, '', 'Calss Test 2', '08/11/2016', 'Math', '1', 'Headmaster', 4),
(5, 1, '', 'Final', '08/11/2016', 'Bangla', '1', 'Headmaster', 5),
(6, 1, '', 'Final', '08/11/2016', 'Math', '1', 'Headmaster', 5),
(7, 1, '', 'Test', '09/11/2016', '', '1', 'Mr Mahbub', 2),
(9, 3, '', 'test for attendance', '14/11/2016', 'Math', '1', 'Headmaster', 18),
(10, 3, '', 'test for attendance', '14/11/2016', 'Agriculture', '1', 'Headmaster', 18),
(11, 3, '', 'test for attendance', '14/11/2016', 'English', '1', 'Headmaster', 18),
(12, 3, '', 'test for attendance', '14/11/2016', 'Science', '1', 'Headmaster', 18),
(13, 6, '', 'Class test 62', '20/11/2016', 'English', '1', 'Headmaster', 23),
(14, 7, '', 'Class test 2', '26/11/2016', 'English', '1', 'Headmaster', 24),
(15, 7, '', 'Class test 2', '26/11/2016', 'Science', '1', 'Headmaster', 24),
(16, 6, '', 'Class test 6', '04/12/2016', '', '1', 'Headmaster', 21),
(17, 7, '', 'Class test 2', '04/12/2016', '', '1', 'Headmaster', 24),
(18, 6, '', 'Class test 6', '04/12/2016', 'English', '1', 'Headmaster', 22),
(19, 6, '', 'Class test', '04/12/2016', 'English', '1', 'Headmaster', 25),
(20, 8, '', 'Final Exam', '01/01/2017', 'English', '1', 'Headmaster', 70),
(21, 8, '', 'Final Exam', '01/01/2017', 'Agriculture', '1', 'Headmaster', 70),
(22, 8, '', 'Final Exam', '02/01/2017', '', '1', 'Headmaster', 70),
(23, 8, '', 'class test 1', '02/01/2017', 'English', '1', 'Headmaster', 71);

-- --------------------------------------------------------

--
-- Table structure for table `role_based_access`
--

CREATE TABLE `role_based_access` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(1) NOT NULL,
  `das_top_info` int(1) NOT NULL,
  `das_grab_chart` int(1) NOT NULL,
  `das_class_info` int(1) NOT NULL,
  `das_message` int(1) NOT NULL,
  `das_employ_attend` int(1) NOT NULL,
  `das_notice` int(1) NOT NULL,
  `das_calender` int(1) NOT NULL,
  `admission` int(1) NOT NULL,
  `all_student_info` int(1) NOT NULL,
  `stud_edit_delete` int(1) NOT NULL,
  `stu_own_info` int(1) NOT NULL,
  `teacher_info` int(1) NOT NULL,
  `add_teacher` int(1) NOT NULL,
  `teacher_details` int(1) NOT NULL,
  `teacher_edit_delete` int(1) NOT NULL,
  `all_parents_info` int(1) NOT NULL,
  `own_parents_info` int(1) NOT NULL,
  `make_parents_id` int(1) NOT NULL,
  `parents_edit_dlete` int(1) NOT NULL,
  `add_employee` int(1) NOT NULL,
  `employee_list` int(1) NOT NULL,
  `employ_attendance` int(1) NOT NULL,
  `empl_atte_view` int(1) NOT NULL,
  `add_new_class` int(1) NOT NULL,
  `all_class_info` int(1) NOT NULL,
  `class_details` int(1) NOT NULL,
  `class_delete` int(1) NOT NULL,
  `class_promotion` int(1) NOT NULL,
  `add_class_routine` int(1) NOT NULL,
  `own_class_routine` int(1) NOT NULL,
  `all_class_routine` int(1) NOT NULL,
  `rutin_edit_delete` int(1) NOT NULL,
  `attendance_preview` int(1) NOT NULL,
  `take_studence_atten` int(1) NOT NULL,
  `edit_student_atten` int(1) NOT NULL,
  `add_subject` int(1) NOT NULL,
  `all_subject` int(1) NOT NULL,
  `assin_optio_sub` int(1) NOT NULL,
  `make_suggestion` int(1) NOT NULL,
  `all_suggestion` int(1) NOT NULL,
  `own_suggestion` int(1) NOT NULL,
  `add_exam_gread` int(1) NOT NULL,
  `exam_gread` int(1) NOT NULL,
  `gread_edit_dele` int(1) NOT NULL,
  `add_exam_routin` int(1) NOT NULL,
  `all_exam_routine` int(1) NOT NULL,
  `own_exam_routine` int(1) NOT NULL,
  `exam_attend_preview` int(1) NOT NULL,
  `approve_result` int(1) NOT NULL,
  `view_result` int(1) NOT NULL,
  `all_mark_sheet` int(1) NOT NULL,
  `own_mark_sheet` int(1) NOT NULL,
  `take_exam_attend` int(1) NOT NULL,
  `change_exam_attendance` int(1) NOT NULL,
  `make_result` int(1) NOT NULL,
  `add_category` int(1) NOT NULL,
  `all_category` int(1) NOT NULL,
  `edit_delete_category` int(1) NOT NULL,
  `add_books` int(1) NOT NULL,
  `all_books` int(1) NOT NULL,
  `edit_delete_books` int(1) NOT NULL,
  `add_library_mem` int(1) NOT NULL,
  `memb_list` int(1) NOT NULL,
  `issu_return` int(1) NOT NULL,
  `add_dormitories` int(1) NOT NULL,
  `add_set_dormi` int(1) NOT NULL,
  `set_member_bed` int(1) NOT NULL,
  `dormi_report` int(1) NOT NULL,
  `add_transport` int(1) NOT NULL,
  `all_transport` int(1) NOT NULL,
  `transport_edit_dele` int(1) NOT NULL,
  `add_account_title` int(1) NOT NULL,
  `edit_dele_acco` int(1) NOT NULL,
  `trensection` int(1) NOT NULL,
  `fee_collection` int(1) NOT NULL,
  `all_slips` int(1) NOT NULL,
  `own_slip` int(1) NOT NULL,
  `slip_edit_delete` int(1) NOT NULL,
  `pay_salary` int(1) NOT NULL,
  `creat_notice` int(1) NOT NULL,
  `send_message` int(1) NOT NULL,
  `vendor` int(1) NOT NULL,
  `delet_vendor` int(1) NOT NULL,
  `add_inv_cat` int(1) NOT NULL,
  `inve_item` int(1) NOT NULL,
  `delete_inve_ite` int(1) NOT NULL,
  `delete_inv_cat` int(1) NOT NULL,
  `inve_issu` int(1) NOT NULL,
  `delete_inven_issu` int(1) NOT NULL,
  `check_leav_appli` int(1) NOT NULL,
  `setting_accounts` int(1) NOT NULL,
  `other_setting` int(1) NOT NULL,
  `front_setings` int(1) NOT NULL,
  `set_optional` int(1) NOT NULL,
  `setting_manage_user` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role_based_access`
--

INSERT INTO `role_based_access` (`id`, `user_id`, `group_id`, `das_top_info`, `das_grab_chart`, `das_class_info`, `das_message`, `das_employ_attend`, `das_notice`, `das_calender`, `admission`, `all_student_info`, `stud_edit_delete`, `stu_own_info`, `teacher_info`, `add_teacher`, `teacher_details`, `teacher_edit_delete`, `all_parents_info`, `own_parents_info`, `make_parents_id`, `parents_edit_dlete`, `add_employee`, `employee_list`, `employ_attendance`, `empl_atte_view`, `add_new_class`, `all_class_info`, `class_details`, `class_delete`, `class_promotion`, `add_class_routine`, `own_class_routine`, `all_class_routine`, `rutin_edit_delete`, `attendance_preview`, `take_studence_atten`, `edit_student_atten`, `add_subject`, `all_subject`, `assin_optio_sub`, `make_suggestion`, `all_suggestion`, `own_suggestion`, `add_exam_gread`, `exam_gread`, `gread_edit_dele`, `add_exam_routin`, `all_exam_routine`, `own_exam_routine`, `exam_attend_preview`, `approve_result`, `view_result`, `all_mark_sheet`, `own_mark_sheet`, `take_exam_attend`, `change_exam_attendance`, `make_result`, `add_category`, `all_category`, `edit_delete_category`, `add_books`, `all_books`, `edit_delete_books`, `add_library_mem`, `memb_list`, `issu_return`, `add_dormitories`, `add_set_dormi`, `set_member_bed`, `dormi_report`, `add_transport`, `all_transport`, `transport_edit_dele`, `add_account_title`, `edit_dele_acco`, `trensection`, `fee_collection`, `all_slips`, `own_slip`, `slip_edit_delete`, `pay_salary`, `creat_notice`, `send_message`, `vendor`, `delet_vendor`, `add_inv_cat`, `inve_item`, `delete_inve_ite`, `delete_inv_cat`, `inve_issu`, `delete_inven_issu`, `check_leav_appli`, `setting_accounts`, `other_setting`, `front_setings`, `set_optional`, `setting_manage_user`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 2, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(3, 3, 4, 1, 1, 1, 1, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(4, 4, 7, 1, 0, 0, 1, 0, 1, 1, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 5, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0),
(6, 6, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0),
(7, 7, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(8, 8, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 9, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 10, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 11, 8, 1, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 12, 5, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(13, 13, 7, 1, 0, 0, 1, 0, 1, 1, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 14, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(15, 15, 4, 1, 1, 1, 1, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(16, 16, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(17, 17, 5, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(18, 18, 5, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(19, 19, 5, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(20, 20, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(21, 21, 5, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(22, 22, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(23, 23, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(24, 24, 4, 1, 0, 1, 1, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(25, 25, 5, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(26, 26, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27, 27, 5, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(28, 28, 5, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(29, 29, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30, 30, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(31, 31, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `month` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `employ_title` varchar(100) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `method` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `set_salary`
--

CREATE TABLE `set_salary` (
  `id` int(11) NOT NULL,
  `year` int(5) NOT NULL,
  `employ_user_id` int(11) NOT NULL,
  `employe_title` varchar(100) NOT NULL,
  `job_post` varchar(50) NOT NULL,
  `basic` int(11) NOT NULL,
  `treatment` int(11) NOT NULL,
  `increased` int(11) NOT NULL,
  `others` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `month` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `set_salary`
--

INSERT INTO `set_salary` (`id`, `year`, `employ_user_id`, `employe_title`, `job_post`, `basic`, `treatment`, `increased`, `others`, `total`, `month`) VALUES
(1, 2016, 1, 'Headmaster', 'Headmaster', 20000, 0, 0, 0, 20000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `slip`
--

CREATE TABLE `slip` (
  `id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `date` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `item_id` varchar(100) NOT NULL,
  `amount` int(11) NOT NULL,
  `fine` int(11) NOT NULL,
  `dues` int(11) NOT NULL,
  `advance` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `paid` int(11) NOT NULL,
  `balance` int(11) NOT NULL,
  `edit_by` varchar(100) NOT NULL,
  `status` text NOT NULL,
  `mathod` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slip`
--

INSERT INTO `slip` (`id`, `year`, `month`, `date`, `class_id`, `student_id`, `item_id`, `amount`, `fine`, `dues`, `advance`, `total`, `paid`, `balance`, `edit_by`, `status`, `mathod`) VALUES
(1, 2016, 'November', 0, 6, 201606001, '5', 200, 200, 0, 0, 200, 400, 0, '', 'Paid', 'Cash'),
(2, 2016, 'November', 0, 7, 201602001, '6', 100, 0, 0, 0, 100, 1100, 1000, '', 'Paid', 'Cash'),
(3, 2017, 'January', 0, 8, 201608001, '7', 500, 0, 0, 0, 500, 0, 0, '', 'Unpaid', '');

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `student_id` varchar(20) NOT NULL,
  `roll_number` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `student_nam` varchar(100) NOT NULL,
  `farther_name` varchar(150) NOT NULL,
  `mother_name` varchar(150) NOT NULL,
  `birth_date` varchar(100) NOT NULL,
  `sex` varchar(30) NOT NULL,
  `present_address` varchar(300) NOT NULL,
  `permanent_address` varchar(300) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `father_occupation` varchar(150) NOT NULL,
  `father_incom_range` varchar(100) NOT NULL,
  `mother_occupation` varchar(100) NOT NULL,
  `student_photo` varchar(200) NOT NULL,
  `last_class_certificate` text NOT NULL,
  `t_c` text NOT NULL,
  `national_birth_certificate` text NOT NULL,
  `academic_transcription` text NOT NULL,
  `testimonial` text NOT NULL,
  `documents_info` varchar(500) NOT NULL,
  `starting_year` int(11) NOT NULL,
  `transfer_year` int(11) NOT NULL,
  `transfer_to` text NOT NULL,
  `transfer_reason` text NOT NULL,
  `tc_appli_approved_by` text NOT NULL,
  `passing_year` int(11) NOT NULL,
  `compleat_level` text NOT NULL,
  `registration_number` text NOT NULL,
  `certificates_status` text NOT NULL,
  `admission_year` int(11) NOT NULL,
  `admission_class` varchar(100) NOT NULL,
  `admission_roll` int(5) NOT NULL,
  `admission_form_no` int(11) NOT NULL,
  `admission_test_result` int(11) NOT NULL,
  `tc_form` varchar(150) NOT NULL,
  `blood` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`id`, `year`, `user_id`, `student_id`, `roll_number`, `class_id`, `student_nam`, `farther_name`, `mother_name`, `birth_date`, `sex`, `present_address`, `permanent_address`, `phone`, `father_occupation`, `father_incom_range`, `mother_occupation`, `student_photo`, `last_class_certificate`, `t_c`, `national_birth_certificate`, `academic_transcription`, `testimonial`, `documents_info`, `starting_year`, `transfer_year`, `transfer_to`, `transfer_reason`, `tc_appli_approved_by`, `passing_year`, `compleat_level`, `registration_number`, `certificates_status`, `admission_year`, `admission_class`, `admission_roll`, `admission_form_no`, `admission_test_result`, `tc_form`, `blood`) VALUES
(1, 2017, 2, '201601005', 1, 2, 'Sm abu  saleah', 'Md. Bozlur Rashid', 'Most. Shafali Begum', '15/01/1991', 'Male', 'Mohammadpur, dhaka', 'Mohammadpur, dhaka', '8801722702590', 'Teachers', '1000', 'Teachers', 'd4b71aa6105fe52c262542008deafe99.jpg', '', '', '', '', '', '01', 2016, 0, '', '', '', 0, '', '', '', 0, '', 0, 0, 0, '', 'O+'),
(2, 2016, 7, '201655002', 2, 2, 'Himel khan', 'sgs', 'gasg', '14/07/1999', 'Male', ' gdf', 'gdfgdg', '+8800174582540', 'Teachers', '1000', 'Housewife', 'f5655c062cafd10ba3e38118badd194a.jpg', '', '', '', '', '', '12', 2016, 0, '', '', '', 0, '', '', '', 0, '', 0, 0, 0, '', 'O+'),
(3, 2016, 14, '201650001', 1, 3, 'maruf Hasan', 'dsf', 'dsfs', '15/11/2016', 'Male', ' asdfas', 'fdsafd', '+8801722258956', 'Teachers', '1000', 'Housewife', '588fc89a9dabc92f4db4f86442f8ec31.jpg', '', '', '', '', '', '125', 2016, 0, '', '', '', 0, '', '', '', 0, '', 0, 0, 0, '', 'O+'),
(5, 2016, 20, '201601001', 1, 1, 'Mr. abc', 'Ali', 'Begum', '23/11/2016', 'Male', ' sdfs', 'fsaf', '+8801725896235', 'Banker', '1000', 'Business', 'cb5e7434de91bfbdb2ddaf31cbf38b0d.jpg', '', '', '', '', '', '1', 2016, 0, '', '', '', 0, '', '', '', 0, '', 0, 0, 0, '', 'O+'),
(6, 2016, 16, '201606001', 1, 6, 'Mr. maruf', 'sdf', 'safdsf', '21/11/2016', 'Male', ' sdfsa', 'fsfs', '+8801725896235', 'Other', '1000', 'Housewife', '9cfb75380ab1411fb5ee301caad39046.jpg', '', '', '', '', '', '125', 2016, 0, '', '', '', 0, '', '', '', 0, '', 0, 0, 0, '', 'O+'),
(7, 2016, 22, '201602001', 1, 8, 'Mr. pqr', 'dsf', 'dsfs', '10/11/2016', 'Male', 'reyryrt', 'fsdfd', '+8801725896235', 'Business', '1000', 'Housewife', '980885a2676c4180ef55ff46e7e7c621.jpg', '', 'submited', '', 'submited', '', '1', 2016, 0, '', '', '', 0, '', '', '', 0, '', 0, 0, 0, '', 'O-'),
(8, 2016, 23, '201602002', 2, 8, 'Mr. pqr', 'dsf', 'dsfs', '29/11/2016', 'Male', ' sdf', 'sdf', '8801725896235', 'Employer', '1000', 'Business', '707f3f1a32d616b38727ef7f81edb54d.jpg', '', '', '', '', '', '444', 2016, 0, '', '', '', 0, '', '', '', 0, '', 0, 0, 0, '', 'O+'),
(9, 2016, 26, '201608001', 1, 8, 'Mr. Saifur Rahman', 'Mr. sdfs', 'sadfsf', '21/12/2016', 'Male', ' gdfgdg   ', 'dsgsdhgdf', '8801710386124', 'Employer', '1000', 'Employer', '4f521ecd892f868072773622c330118c.jpg', '', 'submited', '', '', '', '12555', 2016, 0, '', '', '', 0, '', '', '', 0, '', 0, 0, 0, '', 'B+'),
(10, 2017, 29, '8', 2, 8, 'Saifur Rahman', 'father', 'mother', '11/01/2000', 'Male', ' dhaka', 'dhaka', '8801710386124', 'Business', '1000000', 'Housewife', 'a285d1e4e1a4fc5c279d8b567a8e10e3.jpg', '', '', 'submited', 'submited', 'submited', 'F1213', 2017, 0, '', '', '', 0, '', '', '', 0, '', 0, 0, 0, '', 'B+'),
(11, 2017, 30, '201706002', 2, 0, 'Saifur Rahman', 'father', 'mother', '10/01/1990', 'Male', 'Dhaka ', 'Dhaka', '8801710386124', 'Business', '1000000', 'Housewife', '3e59f1e4940233abe53516b48804b111.jpg', 'submited', 'submited', 'submited', 'submited', 'submited', 'F-0006', 2017, 0, '', '', '', 0, '', '', '', 0, '', 0, 0, 0, '', 'B+'),
(12, 2017, 31, '201706003', 3, 6, 'Bijoy  Mia', 'his faher', 'mother', '15/11/2015', 'Male', 'dhaka', 'dhaka', '8801710386124', 'Banker', '1000000', 'Housewife', '97061cca52d743c7da034dcc80de1c53.jpg', 'submited', '', 'submited', 'submited', '', 'F-0006', 2017, 0, '', '', '', 0, '', '', '', 0, '', 0, 0, 0, '', 'O-');

-- --------------------------------------------------------

--
-- Table structure for table `student_payment_history`
--

CREATE TABLE `student_payment_history` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_payment_history`
--

INSERT INTO `student_payment_history` (`id`, `student_id`, `paid_amount`, `date`) VALUES
(1, 201606001, 210, '2016-11-26 05:12:15'),
(2, 201606001, 210, '2016-11-26 05:14:49'),
(3, 201602001, 100, '2016-11-26 22:12:07'),
(4, 201606001, 0, '2016-12-01 05:09:08'),
(5, 201606001, 90, '2016-12-01 05:09:41'),
(6, 201606001, 200, '2016-12-01 05:10:18'),
(7, 201606001, 90, '2016-12-01 05:11:15'),
(8, 201606001, 90, '2016-12-01 05:11:22'),
(9, 201606001, 50, '2016-12-01 05:12:25'),
(10, 201606001, 0, '2016-12-01 05:42:05'),
(11, 201602001, 1000, '2016-12-05 07:09:51'),
(12, 201606001, 50, '2017-01-01 05:21:14');

-- --------------------------------------------------------

--
-- Table structure for table `subjects_mark`
--

CREATE TABLE `subjects_mark` (
  `id` int(11) NOT NULL,
  `exam_title` varchar(100) NOT NULL,
  `class` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `student_id` varchar(20) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `roll_number` int(11) NOT NULL,
  `mark` int(11) NOT NULL,
  `grade` varchar(30) NOT NULL,
  `statud` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `suggestion`
--

CREATE TABLE `suggestion` (
  `id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `author_name` varchar(150) NOT NULL,
  `class` varchar(20) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `suggestion_title` varchar(150) CHARACTER SET utf8 NOT NULL,
  `suggestion` varchar(2500) CHARACTER SET utf8 NOT NULL,
  `date` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suggestion`
--

INSERT INTO `suggestion` (`id`, `author_id`, `author_name`, `class`, `subject`, `suggestion_title`, `suggestion`, `date`) VALUES
(1, 1, 'Headmaster', 'Class 6', '', 'Final exam Suggestion', '<p>ajfdkalsjflkajf&nbsp;&nbsp; fdgfdg xgdf</p>\\r\\n', 1479645767),
(3, 1, 'Headmaster', 'Class VIII', '', 'জে এস সি সাজেশন ', '<p>সাজেশন সাজেশন সাজেশন সাজেশন সাজেশন সাজেশন সাজেশন সাজেশন সাজেশন সাজেশন সাজেশন সাজেশন সাজেশন সাজেশন সাজেশন সাজেশন সাজেশন সাজেশন সাজেশন সাজেশন সাজেশন সাজেশন সাজেশন সাজেশন সাজেশন সাজেশন সাজেশন</p>\\r\\n', 1481000279);

-- --------------------------------------------------------

--
-- Table structure for table `teachers_info`
--

CREATE TABLE `teachers_info` (
  `id` int(11) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `farther_name` varchar(150) NOT NULL,
  `mother_name` varchar(150) NOT NULL,
  `birth_date` varchar(150) NOT NULL,
  `sex` varchar(30) NOT NULL,
  `present_address` varchar(300) NOT NULL,
  `permanent_address` varchar(300) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `subject` varchar(150) NOT NULL,
  `position` varchar(150) NOT NULL,
  `working_hour` varchar(50) NOT NULL,
  `educational_qualification_1` varchar(500) NOT NULL,
  `educational_qualification_2` varchar(500) NOT NULL,
  `educational_qualification_3` varchar(500) NOT NULL,
  `educational_qualification_4` varchar(500) NOT NULL,
  `educational_qualification_5` varchar(500) NOT NULL,
  `teachers_photo` varchar(200) NOT NULL,
  `cv` varchar(30) NOT NULL,
  `educational_certificat` varchar(30) NOT NULL,
  `exprieance_certificatte` varchar(30) NOT NULL,
  `files_info` varchar(500) NOT NULL,
  `index_no` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachers_info`
--

INSERT INTO `teachers_info` (`id`, `user_id`, `fullname`, `farther_name`, `mother_name`, `birth_date`, `sex`, `present_address`, `permanent_address`, `phone`, `subject`, `position`, `working_hour`, `educational_qualification_1`, `educational_qualification_2`, `educational_qualification_3`, `educational_qualification_4`, `educational_qualification_5`, `teachers_photo`, `cv`, `educational_certificat`, `exprieance_certificatte`, `files_info`, `index_no`) VALUES
(1, '3', 'mr mahbub', 'hh', 'yy', '12/10/1990', 'Male', 'Mohammad pur', 'Dhaka', '+8801874586925', 'Bangla', 'Teacher', 'Full time', 'SSC,sdfs,3.22,2000', 'HSC,gdgd,4.00,2002', 'BS.c,gdfsgdsg,3.30,2006', '', '', '47fc9d8e1560c9dc8dfa60a0a52c17e8.jpg', '', '', '', '123', '123'),
(2, '15', 'Mr. Hasan', 'Ali', 'Begum', '22/03/1989', 'Male', 'Mohammad pur', 'Dhaka', '+88017963258745', 'Bangla', 'Senior Teacher', 'Full time', 'SSC,sfdsafsa,5,2000', 'HSC,fdsaf,4,2002', 'BS.c,asdfa,3,2006', '', '', '2acea64632dbfa9f6c8afcccb51b11f0.jpg', '', '', '', '52', '2'),
(3, '24', 'Mr. hh pqr', 'dsf', 'dsfs', '29/11/2016', 'Male', 'rrg', 'hfyy', '8801782296235', 'Bangla', 'Teacher', 'Full time', 'SSC,sfdsafsa,5,2000', 'HSC,hgkhjkjh,4,2002', 'BS.c,asdfa,3,2006', '', '', '93d7214104fb60b9c47556ed242389ce.jpg', 'submited', 'submited', '', '14', '2');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_attendance`
--

CREATE TABLE `teacher_attendance` (
  `id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `employ_id` int(11) NOT NULL,
  `employ_title` varchar(150) NOT NULL,
  `present_or_absent` text NOT NULL,
  `attend_time` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_attendance`
--

INSERT INTO `teacher_attendance` (`id`, `year`, `date`, `employ_id`, `employ_title`, `present_or_absent`, `attend_time`) VALUES
(1, 2016, 1478559600, 1, 'Headmaster', 'Absent', ''),
(2, 2016, 1478559600, 3, 'Mr Mahbub', 'Present', '11:54 am'),
(3, 2016, 1478559600, 4, 'Mr  Sumon', 'Present', '11:52 am'),
(4, 2016, 1479682800, 1, 'Headmaster', 'Present', '03:20 pm'),
(5, 2016, 1479682800, 3, 'mr mahbub', 'Present', '03:19 pm'),
(6, 2016, 1479682800, 4, 'Mr  Sumon', 'Absent', ''),
(7, 2016, 1479682800, 5, 'alam khan', 'Absent', ''),
(8, 2016, 1479682800, 10, 'Raju Ahmed', 'Absent', ''),
(9, 2016, 1479682800, 11, 'Raja Babu', 'Present', '03:26 pm'),
(10, 2016, 1479682800, 13, 'Mr. Hasan', 'Absent', ''),
(11, 2016, 1479682800, 15, 'Mr. Hasan1', 'Absent', ''),
(12, 2017, 1483311600, 1, 'Headmaster', 'Absent', ''),
(13, 2017, 1483311600, 3, 'mr mahbub', 'Present', '12:38 pm'),
(14, 2017, 1483311600, 4, 'Mr  Sumon', 'Present', '12:39 pm'),
(15, 2017, 1483311600, 5, 'alam khan', 'Absent', ''),
(16, 2017, 1483311600, 10, 'Raju Ahmed', 'Absent', ''),
(17, 2017, 1483311600, 11, 'Raja Babu', 'Absent', ''),
(18, 2017, 1483311600, 13, 'Mr. Hasan', 'Absent', ''),
(19, 2017, 1483311600, 15, 'Mr. Hasan1', 'Absent', ''),
(20, 2017, 1483311600, 24, 'Mr. hh pqr', 'Absent', ''),
(21, 2017, 1483570800, 1, 'Headmaster', 'Absent', ''),
(22, 2017, 1483570800, 3, 'mr mahbub', 'Absent', ''),
(23, 2017, 1483570800, 4, 'Mr  Sumon', 'Absent', ''),
(24, 2017, 1483570800, 5, 'alam khan', 'Absent', ''),
(25, 2017, 1483570800, 10, 'Raju Ahmed', 'Absent', ''),
(26, 2017, 1483570800, 11, 'Raja Babu', 'Absent', ''),
(27, 2017, 1483570800, 13, 'Mr. Hasan', 'Absent', ''),
(28, 2017, 1483570800, 15, 'Mr. Hasan1', 'Absent', ''),
(29, 2017, 1483570800, 24, 'Mr. hh pqr', 'Absent', '');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_list`
--

CREATE TABLE `transaction_list` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `accounts_head_id` int(11) NOT NULL,
  `accounts_sub_head_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `note` text NOT NULL,
  `invoice_number` int(11) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction_list`
--

INSERT INTO `transaction_list` (`id`, `category_id`, `accounts_head_id`, `accounts_sub_head_id`, `amount`, `note`, `invoice_number`, `date`) VALUES
(1, 19, 15, 40, '200.00', 'fdgfdg', 4444, '2016-11-29'),
(2, 19, 15, 40, '500.00', 'hfghf', 0, '2015-11-28'),
(3, 19, 15, 40, '1000.00', 'tret', 10, '2015-10-12'),
(4, 19, 15, 40, '500.00', 'ccgdgdgdgdgedg', 3445, '2017-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `transection`
--

CREATE TABLE `transection` (
  `id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `acco_id` int(11) NOT NULL,
  `category` varchar(10) NOT NULL,
  `amount` int(11) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transection`
--

INSERT INTO `transection` (`id`, `date`, `acco_id`, `category`, `amount`, `balance`) VALUES
(1, 1479855600, 1, 'Income', 1400, 1200),
(2, 1479855600, 2, 'Expense', 300, 900),
(3, 1480201200, 2, 'Expense', 200, 700),
(4, 1480287600, 2, 'Expense', 200, 500);

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE `transport` (
  `id` int(11) NOT NULL,
  `rout_title` varchar(200) NOT NULL,
  `start_end` varchar(300) NOT NULL,
  `vicles_amount` varchar(20) NOT NULL,
  `descriptions` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transport`
--

INSERT INTO `transport` (`id`, `rout_title`, `start_end`, `vicles_amount`, `descriptions`) VALUES
(1, 'Dhaka - Savar', 'Mohammadpur - Savar', '5', ''),
(2, 'Dhaka - Mohakhali', 'Dhaka, Mohakhali', '2', '');

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `farther_name` varchar(50) NOT NULL,
  `mother_name` varchar(50) NOT NULL,
  `birth_date` varchar(15) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `present_address` varchar(200) NOT NULL,
  `permanent_address` varchar(200) NOT NULL,
  `working_hour` varchar(30) NOT NULL,
  `educational_qualification_1` varchar(200) NOT NULL,
  `educational_qualification_2` varchar(200) NOT NULL,
  `educational_qualification_3` varchar(200) NOT NULL,
  `educational_qualification_4` varchar(200) NOT NULL,
  `educational_qualification_5` varchar(200) NOT NULL,
  `users_photo` varchar(200) NOT NULL,
  `cv` varchar(30) NOT NULL,
  `educational_certificat` varchar(30) NOT NULL,
  `exprieance_certificatte` varchar(30) NOT NULL,
  `files_info` varchar(30) NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`id`, `user_id`, `group_id`, `full_name`, `farther_name`, `mother_name`, `birth_date`, `sex`, `present_address`, `permanent_address`, `working_hour`, `educational_qualification_1`, `educational_qualification_2`, `educational_qualification_3`, `educational_qualification_4`, `educational_qualification_5`, `users_photo`, `cv`, `educational_certificat`, `exprieance_certificatte`, `files_info`, `phone`) VALUES
(1, 4, 7, 'Mr  Sumon', 'hhhh', 'hhh', '12/12/1990', 'Male', 'sdf', 'sgdg', 'Full time', 'SSC,sdgfdgd,3.30,2000', 'HSC,sdfdsaf,3.30,2002', 'BS.c,sdfdagd,3.12,2006', '', '', 'ccf712057199b9370f3810e0b82e5270.jpg', '', '', '', '35', '+8801793568978'),
(2, 5, 6, 'alam khan', 'ggggg', 'ggggg', '12/12/1990', 'Male', 'tjgf', 'jhgjgj', 'Full time', 'sdfsf,sdfsf,5,2000', 'dfh,hgfd,4,2000', 'dfh,dhf,5,2000', 'dfh,dfh,4,2000', '', '29c2335f372282729bcf2d756652400f.jpg', '', '', '', '25', '+880175856963'),
(6, 10, 9, 'Raju Ahmed', 'sdfdsa', 'sdfs', '11/12/2000', 'Male', 'sdfdsafas', 'fasdfdsf', 'Full time', 'dsgas,gfrdgfdg,2,2000', 'gds,dsfgsdgsd,4,2002', 'agdsgds,gdfsgsdgf,5,2006', '', '', '25fe412530eb17840e1c2d508fad0d31.jpg', '', '', '', '25', '+8801725895623'),
(7, 11, 8, 'Raja Babu', 'sdfas', 'fsadfsf', '12/12/2016', 'Male', 'asfdsaf', 'safsf', 'Full time', 'ghjgh,hjkhgk,4,2002', 'ghjhg,ghjhg,4,2004', 'jlhlkghj,fgjghkhj,4,2008', '', '', '27cfbe8a1a7a824ac8eca3f70ca35600.jpg', '', '', '', '56', '+8801754889966'),
(8, 13, 7, 'Mr. Hasan', 'dsf', 'dsfs', '16/11/2016', 'Male', 'sdfs', 'fsfs', 'Full time', 'fgjhgfjghj,ghjgj,5,2000', 'hfgjg,hgkhjkjh,4,2002', 'jlhlkghj,fgjghkhj,4,2008', '', '', '5e57c6d7ab2bb255a41118118e484da5.jpg', '', '', '', '14', '+8801745825452');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `profile_image` varchar(100) NOT NULL,
  `user_status` text NOT NULL,
  `leave_status` varchar(15) NOT NULL,
  `leave_start` int(11) NOT NULL,
  `leave_end` int(11) NOT NULL,
  `salary` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `phone`, `profile_image`, `user_status`, `leave_status`, `leave_start`, `leave_end`, `salary`) VALUES
(1, '127.0.0.1', 'Headmaster', '$2y$08$jbcmkugpU6Y8HN31RsfXNO0ivcawBHCC9IljoKFUNG4Aujiw8E6hO', NULL, 'admin@admin.com', NULL, 'HBj4C30st5pOHbjpHojzGu4667ad49e75655b131', 1420113369, NULL, 1268889823, 1483856138, 1, 'Kermit J.', 'Jackson', '123456789', '1a9c9af0490911dfbeb6bce58869272b.jpg', 'Employee', 'Available', 1478559600, 1478732400, 1),
(2, '::1', 'Sm abu  saleah', '$2y$08$e5dxtMHJhUjgRWmvXSr7/uq3aIhzHFlDvCRQzNfs1KPhmEsVlLWJK', NULL, 'abu.saleah@gmail.com', NULL, NULL, NULL, NULL, 1478578574, 1479887953, 1, 'Sm abu ', 'saleah', '+8801722702590', 'd4b71aa6105fe52c262542008deafe99.jpg', '', '', 0, 0, 0),
(3, '::1', 'mr mahbub', '$2y$08$drhubxDNv2xuxz48q7h1CeZJ00ItMPZ48QoSZlXlyQPLrLB5ATiya', NULL, 'mahbub@gmail.com', NULL, NULL, NULL, NULL, 1478580624, 1483783177, 1, 'Mr', 'Mahbub', '+8801874586925', '47fc9d8e1560c9dc8dfa60a0a52c17e8.jpg', 'Employee', 'Available', 0, 0, 0),
(4, '::1', 'Mr  Sumon', '$2y$08$j1gh//UvRngoqEazTr9GaOgrGycCE/O00dxHZcVV4H/DEROu8bJVa', NULL, 'sumon@gmail.com', NULL, NULL, NULL, NULL, 1478583784, 1478676484, 1, 'Mr ', 'Sumon', '+8801793568978', 'ccf712057199b9370f3810e0b82e5270.jpg', 'Employee', 'Available', 0, 0, 0),
(5, '::1', 'alam khan', '$2y$08$drhubxDNv2xuxz48q7h1CeZJ00ItMPZ48QoSZlXlyQPLrLB5ATiya', NULL, 'accountent@gmail.com', NULL, NULL, NULL, NULL, 1478674688, 1483349647, 1, 'alam', 'khan', '+880175856963', '29c2335f372282729bcf2d756652400f.jpg', 'Employee', 'Available', 0, 0, 0),
(7, '::1', 'Himel khan', '$2y$08$AIEcMqIgGeM5ql4/7jEaHuyfFc4okcs8rlGCWF7gQispCkXA3pIt.', NULL, 'himel@gmail.com', NULL, NULL, NULL, NULL, 1478687479, 1478687479, 1, 'Himel', 'khan', '+88001745825544', 'f5655c062cafd10ba3e38118badd194a.jpg', '', '', 0, 0, 0),
(10, '::1', 'Raju Ahmed', '$2y$08$FZS5Pcrwqm3//ZqnHKbJOuiutMdag.sja7mCRtn4H8e1kZSAJUdXu', NULL, 'raju@gmail.com', NULL, NULL, NULL, NULL, 1478753042, 1478753042, 1, 'Raju', 'Ahmed', '+8801725895623', '25fe412530eb17840e1c2d508fad0d31.jpg', 'Employee', 'Available', 0, 0, 0),
(11, '::1', 'Raja Babu', '$2y$08$d7WSeLbZdFGLqUkctcePvOsFerhhpL0efexVUIOP2Pq.WED67O3qK', NULL, 'raja@gamil.com', NULL, NULL, NULL, NULL, 1478755193, 1478951965, 1, 'Raja', 'Babu', '+8801754889966', '27cfbe8a1a7a824ac8eca3f70ca35600.jpg', 'Employee', 'Available', 0, 0, 0),
(12, '::1', 'Mr. Rahim', '$2y$08$mbI0cy5vBhWK7Bk9Yov1Meg2R0mhk5OrXuXE3G8BZGLOeqMf0KdyS', NULL, 'rahim@gmail.com', NULL, NULL, NULL, NULL, 1479011500, 1479892553, 1, 'Mr.', 'Rahim', '8801725896235', 'bce4079ea934b375aff5c2a9c08ae8dc.jpg', '', '', 0, 0, 0),
(13, '::1', 'Mr. Hasan', '$2y$08$.hEKedIiXJdvVhfN.LpdKuOf9Rmu.KIdqGjstvEA341fBn.OvzaKS', NULL, 'hasan@gmail.com', NULL, 'dkzYK8y02cQ1gsNohFuZwOd3d5b88f54faa040ba', 1479024990, NULL, 1479016833, 1479025056, 1, 'Mr.', 'Hasan', '+8801745825452', '5e57c6d7ab2bb255a41118118e484da5.jpg', 'Employee', 'Available', 0, 0, 0),
(14, '::1', 'maruf Hasan', '$2y$08$.r2AzA4I3tFF8S6VjqVYhOD7QX4qrjDZh7K5eAe8a8EQJ/3vXGzlK', NULL, 'maruf@gmail.com', NULL, NULL, NULL, NULL, 1479101412, 1479101412, 1, 'maruf', 'Hasan', '+8801722258956', '588fc89a9dabc92f4db4f86442f8ec31.jpg', '', '', 0, 0, 0),
(15, '::1', 'Mr. Hasan1', '$2y$08$7IBfncmI9MxMRD/CENdzYeV5gX.7K2bY.xi4qXExqoZUlpCftjrku', NULL, 'hasan@yahoo.com', NULL, NULL, NULL, NULL, 1479128117, 1479128117, 1, 'Mr.', 'Hasan', '+88017963258745', '2acea64632dbfa9f6c8afcccb51b11f0.jpg', 'Employee', 'Available', 0, 0, 0),
(16, '::1', 'Mr. maruf', '$2y$08$drhubxDNv2xuxz48q7h1CeZJ00ItMPZ48QoSZlXlyQPLrLB5ATiya', NULL, 'maruf1@gmail.com', NULL, NULL, NULL, NULL, 1479645273, 1483248819, 1, 'Mr.', 'maruf', '+8801725896235', '9cfb75380ab1411fb5ee301caad39046.jpg', '', '', 0, 0, 0),
(17, '::1', 'Alam Khan1', '$2y$08$drhubxDNv2xuxz48q7h1CeZJ00ItMPZ48QoSZlXlyQPLrLB5ATiya', NULL, 'alam@gmail.com', NULL, NULL, NULL, NULL, 1479646198, 1483247216, 1, 'Alam', 'Khan', '8801725896235', 'c08eaf059e2c34730523df41b5b58f90.jpg', '', '', 0, 0, 0),
(18, '::1', 'Mr. Murad', '$2y$08$YHcydfsNdVi6Jz4pCMurm.LSywtXOiJkvWuN4/HWmUb7Z5UfNUZdS', NULL, 'murad@gmail.com', NULL, NULL, NULL, NULL, 1479892426, 1479892442, 1, 'Mr.', 'Murad', '8801725896235', 'd605069025e37f92faa19f20e1a7d0ff.jpg', '', '', 0, 0, 0),
(19, '::1', 'Mr. Salim', '$2y$08$hPXos4Wz/StIZiEMiAe5Du0USQuRVehvjSszOWqdI.3/d7S0Ha8xK', NULL, 'salim@gmail.com', NULL, NULL, NULL, NULL, 1479892846, 1479892940, 1, 'Mr.', 'Salim', '8801725896245', '09bbc068d044beec01e1c4cee21d3a94.jpg', '', '', 0, 0, 0),
(20, '::1', 'Mr. abc', '$2y$08$NVupBvgwRx6fZR7Nt5arWunCO0R.jw6P0VdM9a4x.vBKtkDc5GoSS', NULL, 'abc@gmail.com', NULL, NULL, NULL, NULL, 1479893421, 1479901685, 1, 'Mr.', 'abc', '+8801725896235', 'cb5e7434de91bfbdb2ddaf31cbf38b0d.jpg', '', '', 0, 0, 0),
(21, '::1', 'Mr. xyz', '$2y$08$s9yMAEX4qYbS.yGc6dXePeDw6n7e8YycpLfguaZwM.cW4LxaZhI2y', NULL, 'xyz@gmail.com', NULL, NULL, NULL, NULL, 1479893593, 1480135334, 1, 'Mr.', 'xyz', '8801722258956', '521a25919be320898edbf8418af77d05.jpg', '', '', 0, 0, 0),
(22, '::1', 'Mr. pqr', '$2y$08$m2OFZfU0k7KR.XyXupUTGu8NiaqjAzCa/UYPdgLjwHBKSSb9FSR5C', NULL, 'pqr@gmail.com', NULL, NULL, NULL, NULL, 1480156766, 1480156766, 1, 'Mr.', 'pqr', '+8801725896235', '980885a2676c4180ef55ff46e7e7c621.jpg', '', '', 0, 0, 0),
(23, '::1', 'Mr. pqr1', '$2y$08$8vZ3FV7OMkETNpmW5.oAo.x.xXqRsS9nSpPeEUjee0DjFKjNNWF6y', NULL, 'ssss@admin.com', NULL, NULL, NULL, NULL, 1480423008, 1480423008, 1, 'Mr.', 'pqr', '8801725896235', '707f3f1a32d616b38727ef7f81edb54d.jpg', '', '', 0, 0, 0),
(24, '::1', 'Mr. hh pqr', '$2y$08$TGrVNwi.vJDac3s8GO0Di.uRBa72Tw51Ai50ppDcXGtlJtdJYj64e', NULL, 'hh@gmail.com', NULL, NULL, NULL, NULL, 1480493020, 1480493020, 1, 'Mr. hh', 'pqr', '8801782296235', '93d7214104fb60b9c47556ed242389ce.jpg', 'Employee', 'Available', 0, 0, 0),
(25, '::1', 'Mr. Halim Hasan', '$2y$08$UhakddeeK.IXIpvzcE.pX.2OJKH4qj63ReEkO.uVBLHKfRTyKnfi6', NULL, 'halim@gmail.com', NULL, NULL, NULL, NULL, 1480493303, 1480493303, 1, 'Mr. Halim', 'Hasan', '8801725896235', '2649c586d27058c4232c5b7b70de1a10.jpg', '', '', 0, 0, 0),
(26, '::1', 'Mr. Saifur Rahman', '$2y$08$drhubxDNv2xuxz48q7h1CeZJ00ItMPZ48QoSZlXlyQPLrLB5ATiya', NULL, 'saifur@gmail.com', NULL, NULL, NULL, NULL, 1480571980, 1483599994, 1, 'Mr.', 'Saifur Rahman', '8801710386124', '4f521ecd892f868072773622c330118c.jpg', '', '', 0, 0, 0),
(27, '::1', 'Md.Abul  Hashem', '$2y$08$bsrvlLcCYeY3rnxflSIj3uFfNKmGOp3e7U404ajdkUa.DLMslgxda', NULL, 'father@gmail.com', NULL, NULL, NULL, NULL, 1480849662, 1483334835, 1, 'Md.Abul ', 'Hashem', '8801710386124', '633c0b906ebf1202a85788b29ed8c660.png', '', '', 0, 0, 0),
(28, '::1', 'fd nb', '$2y$08$ivSvY5nMIz.rhqlSroZqUeV0jJrsF0fjb3AEDnYi9VWgzWcr.0BmO', NULL, 'test@gmail.com', NULL, NULL, NULL, NULL, 1483589202, 1483589202, 1, 'fd', 'nb', '8801710386124', '9b8fa2e69c311c33bfc9d87e82b233a0.jpg', '', '', 0, 0, 0),
(29, '127.0.0.1', 'Saifur Rahman', '$2y$08$V/m4Zty980pA5YC1CP5gn.YTwAmch4QxVLVRahanoBKxBlTAtYfGG', NULL, 'saifur2@gmail.com', NULL, NULL, NULL, NULL, 1483783015, 1483783015, 1, 'Saifur', 'Rahman', '8801710386124', 'a285d1e4e1a4fc5c279d8b567a8e10e3.jpg', '', '', 0, 0, 0),
(30, '::1', 'Saifur Rahman', '$2y$08$7jmBDUFhknDUJ5MT.6bOneokj3.nEkfqLOsamkWFPKZvGT6xc8J6G', NULL, 'saifurcse@gmail.com', NULL, NULL, NULL, NULL, 1483857751, 1483857751, 1, 'Saifur', 'Rahman', '8801710386124', '3e59f1e4940233abe53516b48804b111.jpg', '', '', 0, 0, 0),
(31, '::1', 'Bijoy  Mia', '$2y$08$bd9E/rm/lnmAXku8oQxz0eV2oQMWinRKpLNbROz0J8wAxWDN7N0xi', NULL, 'acct@gmail.com', NULL, NULL, NULL, NULL, 1483857904, 1483857904, 1, 'Bijoy ', 'Mia', '8801710386124', '97061cca52d743c7da034dcc80de1c53.jpg', '', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(55, 2, 3),
(56, 3, 4),
(57, 4, 7),
(58, 5, 6),
(60, 7, 3),
(63, 10, 9),
(64, 11, 8),
(65, 12, 5),
(66, 13, 7),
(67, 14, 3),
(68, 15, 4),
(69, 16, 3),
(70, 17, 5),
(71, 18, 5),
(72, 19, 5),
(73, 20, 3),
(74, 21, 5),
(75, 22, 3),
(76, 23, 3),
(77, 24, 4),
(78, 25, 5),
(79, 26, 3),
(80, 27, 5),
(81, 28, 5),
(82, 29, 3),
(83, 30, 3),
(84, 31, 3);

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` int(11) NOT NULL,
  `company_name` varchar(150) NOT NULL,
  `company_phone` varchar(15) NOT NULL,
  `company_email` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `cp_name` varchar(150) NOT NULL,
  `cp_address` varchar(200) NOT NULL,
  `cp_phone` varchar(15) NOT NULL,
  `bank_name` varchar(150) NOT NULL,
  `branch_name` varchar(15) NOT NULL,
  `account_no` varchar(30) NOT NULL,
  `ifsc_code` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `company_name`, `company_phone`, `company_email`, `country`, `state`, `city`, `cp_name`, `cp_address`, `cp_phone`, `bank_name`, `branch_name`, `account_no`, `ifsc_code`) VALUES
(1, 'Hatil', '564654564', 'hatil@gmail.com', 'BD', '', '', 'saleah', '', '01722745544', '', '', '', ''),
(2, 'Tech Computer', '46465465', 'tech\\_computer@gmail.com', 'BD', '', '', 'rahim', '', '01722745544', '', '', '', ''),
(3, 'Computer Source', '56546546546', 'cs@gmail.com', 'Bangladesh', '', '', 'Mr. ABC', '', '544654', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts_head`
--
ALTER TABLE `accounts_head`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accounts_sub_head`
--
ALTER TABLE `accounts_sub_head`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_title`
--
ALTER TABLE `account_title`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_exam`
--
ALTER TABLE `add_exam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books_category`
--
ALTER TABLE `books_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calender_events`
--
ALTER TABLE `calender_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_routine`
--
ALTER TABLE `class_routine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_students`
--
ALTER TABLE `class_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_subject`
--
ALTER TABLE `class_subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `configuration`
--
ALTER TABLE `configuration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `config_week_day`
--
ALTER TABLE `config_week_day`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily_attendance`
--
ALTER TABLE `daily_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dormitory`
--
ALTER TABLE `dormitory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dormitory_bed`
--
ALTER TABLE `dormitory_bed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dormitory_room`
--
ALTER TABLE `dormitory_room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employe`
--
ALTER TABLE `employe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_attendanc`
--
ALTER TABLE `exam_attendanc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_grade`
--
ALTER TABLE `exam_grade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_routine`
--
ALTER TABLE `exam_routine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee_item`
--
ALTER TABLE `fee_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `final_result`
--
ALTER TABLE `final_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inven_category`
--
ALTER TABLE `inven_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inve_item`
--
ALTER TABLE `inve_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issu_item`
--
ALTER TABLE `issu_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_application`
--
ALTER TABLE `leave_application`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library_member`
--
ALTER TABLE `library_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `massage`
--
ALTER TABLE `massage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice_board`
--
ALTER TABLE `notice_board`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parents_info`
--
ALTER TABLE `parents_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result_action`
--
ALTER TABLE `result_action`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result_shit`
--
ALTER TABLE `result_shit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result_submition_info`
--
ALTER TABLE `result_submition_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_based_access`
--
ALTER TABLE `role_based_access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `set_salary`
--
ALTER TABLE `set_salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slip`
--
ALTER TABLE `slip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_payment_history`
--
ALTER TABLE `student_payment_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects_mark`
--
ALTER TABLE `subjects_mark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suggestion`
--
ALTER TABLE `suggestion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers_info`
--
ALTER TABLE `teachers_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_attendance`
--
ALTER TABLE `teacher_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_list`
--
ALTER TABLE `transaction_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transection`
--
ALTER TABLE `transection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts_head`
--
ALTER TABLE `accounts_head`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `accounts_sub_head`
--
ALTER TABLE `accounts_sub_head`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `account_title`
--
ALTER TABLE `account_title`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `add_exam`
--
ALTER TABLE `add_exam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `books_category`
--
ALTER TABLE `books_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `calender_events`
--
ALTER TABLE `calender_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `class_routine`
--
ALTER TABLE `class_routine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `class_students`
--
ALTER TABLE `class_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `class_subject`
--
ALTER TABLE `class_subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `config_week_day`
--
ALTER TABLE `config_week_day`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `daily_attendance`
--
ALTER TABLE `daily_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `dormitory`
--
ALTER TABLE `dormitory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `dormitory_bed`
--
ALTER TABLE `dormitory_bed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `dormitory_room`
--
ALTER TABLE `dormitory_room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;
--
-- AUTO_INCREMENT for table `employe`
--
ALTER TABLE `employe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exam_attendanc`
--
ALTER TABLE `exam_attendanc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `exam_grade`
--
ALTER TABLE `exam_grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `exam_routine`
--
ALTER TABLE `exam_routine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `fee_item`
--
ALTER TABLE `fee_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `final_result`
--
ALTER TABLE `final_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `inven_category`
--
ALTER TABLE `inven_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `inve_item`
--
ALTER TABLE `inve_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `issu_item`
--
ALTER TABLE `issu_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `leave_application`
--
ALTER TABLE `leave_application`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `library_member`
--
ALTER TABLE `library_member`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `massage`
--
ALTER TABLE `massage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `notice_board`
--
ALTER TABLE `notice_board`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `parents_info`
--
ALTER TABLE `parents_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `result_action`
--
ALTER TABLE `result_action`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `result_shit`
--
ALTER TABLE `result_shit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `result_submition_info`
--
ALTER TABLE `result_submition_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `role_based_access`
--
ALTER TABLE `role_based_access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `set_salary`
--
ALTER TABLE `set_salary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `slip`
--
ALTER TABLE `slip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `student_info`
--
ALTER TABLE `student_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `student_payment_history`
--
ALTER TABLE `student_payment_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `subjects_mark`
--
ALTER TABLE `subjects_mark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `suggestion`
--
ALTER TABLE `suggestion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `teachers_info`
--
ALTER TABLE `teachers_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `teacher_attendance`
--
ALTER TABLE `teacher_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `transaction_list`
--
ALTER TABLE `transaction_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `transection`
--
ALTER TABLE `transection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `transport`
--
ALTER TABLE `transport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `userinfo`
--
ALTER TABLE `userinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `users_groups_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_groups_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
