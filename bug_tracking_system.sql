
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


--
-- Database: `bug_tracking_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `bug`
--

CREATE TABLE `bug` (
  `bug_id` int(11) NOT NULL,
  `bug_project_id` varchar(255) NOT NULL,
  `bug_type_id` varchar(255) NOT NULL,
  `bug_user_id` varchar(255) NOT NULL,
  `bug_title` varchar(255) NOT NULL,
  `bug_description` varchar(255) NOT NULL,
  `bug_start_date` varchar(255) NOT NULL,
  `bug_due_date` varchar(255) NOT NULL,
  `bug_hours` varchar(255) NOT NULL,
  `bug_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bug`
--

INSERT INTO `bug` (`bug_id`, `bug_project_id`, `bug_type_id`, `bug_user_id`, `bug_title`, `bug_description`, `bug_start_date`, `bug_due_date`, `bug_hours`, `bug_status`) VALUES
(1, '10001', '2', '4', 'Bug in Employee Add', 'Bug in Employee Add', '1 Jan,2022', '3 Jan,2022', '4', '1'),
(2, '10004', '1', '6', 'Bug in bug Add', 'Bug in bug Add', '9 Jan,2022', '11 Jan,2022', '4', '2'),
(3, '10002', '1', '6', 'Bug in Salary Add', 'Bug in Salary Add', '9 Jan,2022', '11 Jan,2022', '4', '2'),
(4, '2', '2', '4', '2', '2', '2', '2', '2', '2'),
(5, '10001', '2', '4', 'asdf', 'asdf', 'adf', 'asfd', 'asf', '1');

-- --------------------------------------------------------

--
-- Table structure for table `bug_status`
--

CREATE TABLE `bug_status` (
  `bs_id` int(11) NOT NULL,
  `bs_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bug_status`
--

INSERT INTO `bug_status` (`bs_id`, `bs_title`) VALUES
(1, 'In Progress'),
(2, 'Pending'),
(3, 'QA Assigned '),
(4, 'UAT Release');

-- --------------------------------------------------------

--
-- Table structure for table `bug_type`
--

CREATE TABLE `bug_type` (
  `bt_id` int(11) NOT NULL,
  `bt_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bug_type`
--

INSERT INTO `bug_type` (`bt_id`, `bt_title`) VALUES
(1, 'Bug'),
(2, 'New Functionality');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`) VALUES
(1, 'Allahabad'),
(2, 'Varanasi');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_name`) VALUES
(1, 'India'),
(2, 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_title` varchar(255) NOT NULL,
  `course_total_semestor` varchar(255) NOT NULL,
  `course_description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_title`, `course_total_semestor`, `course_description`) VALUES
(1, 'DCST', '6', 'Diploma in Computer Science and Technology'),
(3, 'BCA', '6', 'Bachlore in Computer Application'),
(4, 'MCA', '6', 'Master in Computer Application'),
(5, 'PGDCA', '2', 'Post Graducate Diploma in Compter Application'),
(6, 'Test Course', '5', 'Test Course Details');

-- --------------------------------------------------------

--
-- Table structure for table `month`
--

CREATE TABLE `month` (
  `month_id` int(11) NOT NULL,
  `month_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `month`
--

INSERT INTO `month` (`month_id`, `month_title`) VALUES
(1, 'January'),
(2, 'February'),
(3, 'March'),
(4, 'April'),
(5, 'May'),
(6, 'June'),
(7, 'July'),
(8, 'August'),
(9, 'September'),
(10, 'October'),
(11, 'November'),
(12, 'December');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `project_id` int(11) NOT NULL,
  `project_type_id` varchar(255) NOT NULL,
  `project_manager_id` varchar(255) NOT NULL,
  `project_title` varchar(255) NOT NULL,
  `project_description` varchar(255) NOT NULL,
  `project_frontend` varchar(255) NOT NULL,
  `project_backend` varchar(255) NOT NULL,
  `project_client_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`project_id`, `project_type_id`, `project_manager_id`, `project_title`, `project_description`, `project_frontend`, `project_backend`, `project_client_name`) VALUES
(10001, '1', '4', 'Project on Electricity Billing System ', 'Java and SQL Server Project', 'Java', 'SQL Server 200o', 'Pooja kholiya'),
(10002, '2', '6', 'Project Management System', 'PHP and MySQL Project', 'PHP', 'MySQL', 'Pramod'),
(10004, '2', '4', 'Student Information System', 'PHP and MySQL Project', 'PHP', 'MySQL', 'Pramod'),
(10005, '2', '6', 'School Management System', 'PHP and MySQL Project', 'PHP', 'MySQL', 'Pooja Kholiya');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role_name`) VALUES
(1, 'Super Admin'),
(2, 'Teacher');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `state_id` int(11) NOT NULL,
  `state_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `state_name`) VALUES
(1, 'UP'),
(2, 'MP');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `student_first_name` varchar(255) NOT NULL,
  `student_last_name` varchar(255) NOT NULL,
  `student_course_id` varchar(255) NOT NULL,
  `student_certno` varchar(255) NOT NULL,
  `student_father_name` varchar(255) NOT NULL,
  `student_dob` varchar(255) NOT NULL,
  `student_mobile` varchar(255) NOT NULL,
  `student_photo` varchar(255) NOT NULL,
  `student_details` varchar(255) NOT NULL,
  `student_graduated` varchar(255) NOT NULL,
  `student_state` varchar(255) NOT NULL,
  `student_country` varchar(255) NOT NULL,
  `student_city` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `student_first_name`, `student_last_name`, `student_course_id`, `student_certno`, `student_father_name`, `student_dob`, `student_mobile`, `student_photo`, `student_details`, `student_graduated`, `student_state`, `student_country`, `student_city`) VALUES
(2, 'Pooja','kholiya', '6', 'q8437234', 'pramod', '12 January', '8376986802', '28bdc83.jpg', 'Student Details', '2022', '2', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `type_id` int(11) NOT NULL,
  `type_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`type_id`, `type_title`) VALUES
(1, 'Maintenance Project'),
(2, 'New Project');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_level_id` varchar(255) NOT NULL,
  `user_username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_add1` varchar(255) NOT NULL,
  `user_add2` varchar(255) NOT NULL,
  `user_city` varchar(255) NOT NULL,
  `user_state` varchar(255) NOT NULL,
  `user_country` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_mobile` varchar(255) NOT NULL,
  `user_gender` varchar(255) NOT NULL,
  `user_dob` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_level_id`, `user_username`, `user_password`, `user_name`, `user_add1`, `user_add2`, `user_city`, `user_state`, `user_country`, `user_email`, `user_mobile`, `user_gender`, `user_dob`, `user_image`) VALUES
(4, '1', 'admin', 'test', 'Pooja kholiya', 'House no : 768', 'Sector 2B', '1', '1', '2', 'pooja@gmail.com', '987654321', '', '12 january, 2013', 'IMG_5740.jpg'),
(6, '1', 'parmod', 'test', 'parmod', 'House no : 712', 'Sector 2A', '1', '2', '1', 'parmod@gmail.com', '987654321', '', '12 january, 2013', 'Female_8_.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bug`
--
ALTER TABLE `bug`
  ADD PRIMARY KEY (`bug_id`);

--
-- Indexes for table `bug_status`
--
ALTER TABLE `bug_status`
  ADD PRIMARY KEY (`bs_id`);

--
-- Indexes for table `bug_type`
--
ALTER TABLE `bug_type`
  ADD PRIMARY KEY (`bt_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `month`
--
ALTER TABLE `month`
  ADD PRIMARY KEY (`month_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bug`
--
ALTER TABLE `bug`
  MODIFY `bug_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bug_status`
--
ALTER TABLE `bug_status`
  MODIFY `bs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bug_type`
--
ALTER TABLE `bug_type`
  MODIFY `bt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `month`
--
ALTER TABLE `month`
  MODIFY `month_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10006;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
