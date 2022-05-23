-- Database: `mfaza7`
--
CREATE DATABASE IF NOT EXISTS `mfaza7` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mfaza7`;

-- --------------------------------------------------------

--
-- Table structure for table `adviser`
--

CREATE TABLE `adviser` (
  `ID` decimal(10,0) NOT NULL,
  `BDate` date DEFAULT NULL,
  `institution` varchar(50) DEFAULT NULL,
  `Fname` varchar(50) DEFAULT NULL,
  `Mname` varchar(50) DEFAULT NULL,
  `Lname` varchar(50) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `numOfconsultations` decimal(10,0) DEFAULT NULL,
  `Specialization` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adviser`
--

INSERT INTO `adviser` (`ID`, `BDate`, `institution`, `Fname`, `Mname`, `Lname`, `City`, `numOfconsultations`, `Specialization`, `password`) VALUES
('4442245678', '1991-11-17', 'IAU', 'may', 'Mohammed', 'AlOtaibi', 'Khobar', '3', 'CS', '123'),
('4442335678', '1991-07-12', 'IAU', 'Fida', 'Mohammed', 'Alelou', 'Khobar', '3', 'CS', '123'),
('4442345678', '1991-07-29', 'IAU', 'Ghala', 'Mohammed', 'Alkhaldi', 'Khobar', '3', 'CS', '123');

-- --------------------------------------------------------

--
-- Table structure for table `agencies`
--

CREATE TABLE `agencies` (
  `ID` decimal(10,0) NOT NULL,
  `Classification` varchar(50) NOT NULL,
  `nameOfAgen` decimal(10,0) NOT NULL,
  `Specialization` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agencies`
--

INSERT INTO `agencies` (`ID`, `Classification`, `nameOfAgen`, `Specialization`) VALUES
('6662245678', 'health', '10', 'CS'),
('6662335678', 'economy', '9', 'CS'),
('6662345678', 'science', '2', 'CS');

-- --------------------------------------------------------

--
-- Table structure for table `invest`
--

CREATE TABLE `invest` (
  `reqID` decimal(10,0) NOT NULL,
  `invID` decimal(10,0) NOT NULL,
  `std_id` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invest`
--

INSERT INTO `invest` (`reqID`, `invID`, `std_id`) VALUES
('1', '5552345678', '1112345678'),
('2', '5552245678', '1112245678'),
('3', '5552335678', '1112335678');

-- --------------------------------------------------------

--
-- Table structure for table `investor`
--

CREATE TABLE `investor` (
  `ID` decimal(10,0) NOT NULL,
  `BDate` date DEFAULT NULL,
  `institution` varchar(50) DEFAULT NULL,
  `Fname` varchar(50) DEFAULT NULL,
  `Mname` varchar(50) DEFAULT NULL,
  `Lname` varchar(50) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `Specialization` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `investor`
--

INSERT INTO `investor` (`ID`, `BDate`, `institution`, `Fname`, `Mname`, `Lname`, `City`, `Specialization`, `password`) VALUES
('5552245678', '1991-11-17', 'IAU', 'may', 'Mohammed', 'AlOtaibi', 'Khobar', 'CS', '123'),
('5552335678', '1991-07-12', 'IAU', 'Fida', 'Mohammed', 'Alelou', 'Khobar', 'CS', '123'),
('5552345678', '1991-07-29', 'IAU', 'Ghala', 'Mohammed', 'Alkhaldi', 'Khobar', 'CS', '123');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `posted_by_name` varchar(50) NOT NULL,
  `posted_by_type` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`posted_by_name`, `posted_by_type`, `description`) VALUES
('Mohammed AlOtaibi', 'Student', 'i want you to do it.'),
('Mohammed AlOtaibi', 'Student', 'hello'),
('a a', 'Student', 'what'),
('qazi usman', 'Student', 'hi i need a team'),
('ghala ghala', 'Student', 'i want to work with a team');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `id` int(11) NOT NULL,
  `Date` varchar(50) DEFAULT NULL,
  `Request_type` varchar(50) DEFAULT NULL,
  `Request_state` varchar(50) DEFAULT NULL,
  `Description` varchar(50) DEFAULT NULL,
  `Request_by` varchar(50) DEFAULT NULL,
  `Request_to` varchar(50) DEFAULT NULL,
  `groups` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `serviceprovider`
--

CREATE TABLE `serviceprovider` (
  `ID` decimal(10,0) NOT NULL,
  `BDate` date DEFAULT NULL,
  `institution` varchar(50) DEFAULT NULL,
  `Commitment` varchar(50) DEFAULT NULL,
  `Fname` varchar(50) DEFAULT NULL,
  `Mname` varchar(50) DEFAULT NULL,
  `Lname` varchar(50) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `numOfServ` decimal(10,0) DEFAULT NULL,
  `Specialization` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `serviceprovider`
--

INSERT INTO `serviceprovider` (`ID`, `BDate`, `institution`, `Commitment`, `Fname`, `Mname`, `Lname`, `City`, `numOfServ`, `Specialization`, `password`) VALUES
('2222245678', '1991-11-17', 'IAU', 'yes', 'may', 'Mohammed', 'AlOtaibi', 'Khobar', '11', 'CS', '123'),
('2222335678', '1991-07-12', 'IAU', 'yes', 'Fida', 'Mohammed', 'Alelou', 'Khobar', '12', 'CS', '123'),
('2222345678', '1991-07-29', 'IAU', 'yes', 'Ghala', 'Mohammed', 'Alkhaldi', 'Khobar', '10', 'CS', '123');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `ID` decimal(20,0) NOT NULL,
  `BDate` date NOT NULL,
  `institution` varchar(50) NOT NULL,
  `Fname` varchar(50) NOT NULL,
  `Mname` varchar(50) NOT NULL,
  `Lname` varchar(50) NOT NULL,
  `City` varchar(50) NOT NULL,
  `Specialization` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`ID`, `BDate`, `institution`, `Fname`, `Mname`, `Lname`, `City`, `Specialization`, `password`) VALUES
('1112245678', '2001-11-17', 'IAU', 'may', 'Mohammed', 'AlOtaibi', 'Khobar', 'CS', '123'),
('1112335678', '2001-07-12', 'IAU', 'Fida', 'Mohammed', 'Alelou', 'Khobar', 'CS', '123'),
('1112345678', '2001-07-29', 'IAU', 'Ghala', 'Mohammed', 'Alkhaldi', 'Khobar', 'CS', '123');

-- --------------------------------------------------------

--
-- Table structure for table `supervisor`
--

CREATE TABLE `supervisor` (
  `ID` decimal(10,0) NOT NULL,
  `BDate` date NOT NULL,
  `institution` varchar(50) DEFAULT NULL,
  `Fname` varchar(50) DEFAULT NULL,
  `Mname` varchar(50) DEFAULT NULL,
  `Lname` varchar(50) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `numOfsupervision` decimal(10,0) DEFAULT NULL,
  `Specialization` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supervisor`
--

INSERT INTO `supervisor` (`ID`, `BDate`, `institution`, `Fname`, `Mname`, `Lname`, `City`, `numOfsupervision`, `Specialization`, `password`) VALUES
('3332245678', '1991-11-17', 'IAU', 'may', 'Mohammed', 'AlOtaibi', 'Khobar', '3', 'CS', '123'),
('3332335678', '1991-07-12', 'IAU', 'Fida', 'Mohammed', 'Alelou', 'Khobar', '3', 'CS', '123'),
('3332345678', '1991-07-29', 'IAU', 'Ghala', 'Mohammed', 'Alkhaldi', 'Khobar', '3', 'CS', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adviser`
--
ALTER TABLE `adviser`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `agencies`
--
ALTER TABLE `agencies`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `invest`
--
ALTER TABLE `invest`
  ADD PRIMARY KEY (`reqID`,`invID`);

--
-- Indexes for table `investor`
--
ALTER TABLE `investor`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `serviceprovider`
--
ALTER TABLE `serviceprovider`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `supervisor`
--
ALTER TABLE `supervisor`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--