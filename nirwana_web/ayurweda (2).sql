-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2022 at 09:57 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ayurweda`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `doctor` varchar(50) NOT NULL,
  `patient` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `note` text NOT NULL,
  `payment` varchar(10) NOT NULL DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`doctor`, `patient`, `phone`, `date`, `note`, `payment`) VALUES
('rawan', 'subhash madhuwantha', '0784901170', '2022-05-07', 'Test', 'false'),
('nafrai', '', '', '0000-00-00', '', 'false'),
('mukambar', 'subhash madhuwantha', '0784901170', '2022-05-09', 'sg gd g', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `ID` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `path` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `rating` int(11) NOT NULL DEFAULT 0,
  `mapurl` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`ID`, `name`, `path`, `description`, `rating`, `mapurl`) VALUES
('fernando', 'R.E. ප්‍රනාන්දු', 'Consultant Physician', 'ආයුර්වේද උපදේශක වෛද්‍ය R.E. ප්‍රනාන්දු මහතා සුප්‍රකට වෛද්‍යවරයෙක් වන අතර විශාල රෝගීන් ප්‍රමානයක් සදහා තම සේවාව සපයනු ලබයි ,දැනට වසර 18 ක සේවා කාලයක් සපුරා ඇති වෛද්‍ය R.E. ප්‍රනාන්දු මහතා, මාතර \"Damsiri Ayurveda Hospital\" සහ ගාල්ලේ \"Panchakarma Ayurveda\" මධ්‍යස්ථාන වලදී තම සේවාව සපයයි.', 5, 'https://www.google.com/maps/d/u/0/embed?mid=1Bf3gBhHBxjiPArSXalOpx_pm7aCNr9Qh&ehbc=2E312F'),
('mukambar', 'Dr. P.C. මුකම්බර්.', 'Gastroenterologist.', 'ආයුර්වේද වෛද්‍ය P.C. මුකම්බර් මහතා අමාශයේ සියලුම රෝගයන් සදහා ප්‍රතිකාර සපයනු ලබයි. අමාශ  රෝගීන් විශාල සංඛ්‍යාවක් සුවකර ඇති වෛද්‍ය P.C.මුකම්බර් මහතා මොණරාගල \" Ayurveda Medical Centre \" සහ \" Ayurvedic Medical Center - SLPA \" යන ආයතන වල සේවාව සපයයි.', 5, 'https://www.google.com/maps/d/u/0/embed?mid=1g_Vs6osFfXhVQ-UcfxtxnBkrbmN2n5Qc&ehbc=2E312F'),
('nafrai', 'Dr. F.M. නෆ්රායි.', 'Urologist.', 'ප්‍රවීණ ආයුර්වේද වෛද්‍ය F.M. නෆ්රායි මහත්මිය මුත්‍රාශ්‍රිත රෝගයන් සදහා හසල දැනුමක් ඇති වෛද්‍යවරියෙකි. වසර 12 ක වැනි විශාල කාලයක  අත්දැකීම් තුලින් රෝගීන් සුවපත් කරයි. කතරගම \" SAMA International Ayurvedic Hospital \" සහ \r\nත්‍රිකුණාමලය \" Tamil Ayurveda Hospital \" හි ප්‍රතිකාර කරනු ලබයි.', 5, 'https://www.google.com/maps/d/u/0/embed?mid=1jZi3tdPbsZm8Qr8Kb8S2h37_YmnMfvFE&ehbc=2E312F'),
('nathasha', 'Dr. S.W. නතාෂා.', 'Dermatologist.', 'චර්ම රෝග පිලිබද හසල දැනුමක් ඇති ආයුර්වේද චර්ම රෝග පිලිබද වෛද්‍ය S.W. නතාෂා මහත්මිය, සියලුම චර්ම රෝග වලට තම ඖෂධ ලබාදෙයි, දේශීය ක්‍රම මගින් සියලු චර්ම රෝග සුව කරනු ලබයි. කොළඹ \" Mangalapathy Ayurveda \" මධ්‍යස්ථානයේදී ඔබට වෛද්‍ය S.W. Nathasha මහත්මියගෙන්\r\nප්‍රතිකාර ලබාගත හැකිය. ', 5, 'https://www.google.com/maps/d/u/0/embed?mid=1ajmDt-G0UGMjkv-kDGdnlHeaIt3b39er&ehbc=2E312F'),
('nuwanthi', 'Dr. C.P. නුවන්ති.', 'Surgeon.', 'ආයුර්වේද ශල්‍ය වෛද්‍ය C.P. නුවන්ති මහත්මිය, Bachelor of Ayurveda Medicine & Surgery B.A.M.S. උපාධිය හදාරා ඇති අතර, ශ්‍රී ලංකාව තුල අයුර්වේද ශල්‍යකර්ම විශාල සංඛ්‍යාවක් සිදුකර ඇත, වසර 10ක් පුරාවට තම සේවාව දක්ශ ලෙස සිදුකරන වෛද්‍ය C.P. නුවන්ති මහත්මිය හෝමාගම \" Siddhadi Ayurveda සහ බදුල්ල  \" Jeeva Ayurveda Wellness Center \" හීදී සේවාව සපයයි.', 5, 'https://www.google.com/maps/d/u/0/embed?mid=1MaOnI7OOVBIk2Z6ERkvGiq-is2UdrM3P&ehbc=2E312F'),
('rawan', 'Dr. E.A. රාවන්.', 'Kidneylogist.', 'ප්‍රවීණ ආයුර්වේද වෛද්‍ය E.A. රාවන් මහතා වකුගඩු ආශ්‍රිත රෝගයන් සදහා හසල දැනුමක් ඇති වෛද්‍යවරයෙකි. වසර 25 ක විශාල කාලයක  අත්දැකීම් තුලින් රෝගීන් සුවපත් කරයි.අනුරාධපුර \" National Ayurvedic Teaching Hospital \" සහ \r\nකුරුණෑගල \" Ayurveda Hospital \" හි ප්‍රතිකාර කරනු ලබයි.', 5, 'https://www.google.com/maps/d/u/0/embed?mid=1axDGdp2J3dZvoozHrmnvB9Kyu5JaXYxM&ehbc=2E312F'),
('samaranayaka', 'Dr. P.B. සමරනායක.', 'Cardiologist.', 'හෘද රෝග පිලිබද සුවිශේෂී දැනුමක් මෙන්ම වසර 15 ක අත්දැකීම් ඇති  වෛද්‍ය P.B. සමරනායක මහත්මිය ආයුර්වේද ප්‍රතිකාර තුලින් ලංකාව පුරාම හෘද රෝගින් විශාල ප්‍රමාණයක්\r\nසුව කිරීමට ඇයගේ සේවාව ලබාදී තිබේ. ඇය සේවා සපයනු ලබන්නේ, මහරගම \" Ayurveda Research Institute \" සහ හෝමාගම \"Saaraartha Ayurvedic Medical Center\" හිදීය.', 5, 'https://www.google.com/maps/d/u/0/embed?mid=1OfMAha7F3QakKEzPd9oXV_pbRyhxT4BE&ehbc=2E312F'),
('thushara', 'Dr. B.H. තුෂාර.', 'Dentist.', 'ආයුර්වේද උපදේශක වෛද්‍ය R.E. ප්‍රනාන්දු මහතා සුප්‍රකට වෛද්‍යවරයෙක් වන අතර විශාල රෝගීන් ප්‍රමානයක් සදහා තම සේවාව සපයනු ලබයි ,දැනට වසර 18 ක සේවා කාලයක් සපුරා ඇති වෛද්‍ය R.E. ප්‍රනාන්දු මහතා, මාතර \" Damsiri Ayurveda Hospital \" සහ ගාල්ලේ \" Panchakarma Ayurveda \" \r\nමධ්‍යස්ථාන වලදී තම සේවාව සපයයි.', 5, 'https://www.google.com/maps/d/u/0/embed?mid=1GvPudoiD1Wue8WE72AnfG39-Mc99ysuO&ehbc=2E312F');

-- --------------------------------------------------------

--
-- Table structure for table `fernandochat`
--

CREATE TABLE `fernandochat` (
  `sender` varchar(20) NOT NULL,
  `sor` varchar(1) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp(),
  `msg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mukambarchat`
--

CREATE TABLE `mukambarchat` (
  `sender` varchar(20) NOT NULL,
  `sor` text NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp(),
  `msg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mukambarchat`
--

INSERT INTO `mukambarchat` (`sender`, `sor`, `time`, `msg`) VALUES
('onlinechat', 'r', '2022-05-04 09:45:07', 'hello sir'),
('onlinechat', 'r', '2022-05-04 09:45:29', 'fdgdfg'),
('onlinechat', 'r', '2022-05-04 09:51:40', 'fdgdfg'),
('onlinechat', 'r', '2022-05-04 09:51:46', 'dsf'),
('onlinechat', 'r', '2022-05-04 09:51:57', ',bnv hjlhjul'),
('onlinechat', 'r', '2022-05-04 09:51:58', 'jhljl'),
('onlinechat', 'r', '2022-05-04 09:52:01', 'hjl'),
('onlinechat', 'r', '2022-05-04 09:52:09', 'jhlj fu '),
('Subhash', 'r', '2022-05-07 20:19:09', 'fdgdfg'),
('Subhash', 'r', '2022-05-07 20:19:13', 'fdf'),
('Subhash', 's', '2022-05-07 20:21:10', 'hello'),
('Subhash', 's', '2022-05-07 20:21:31', 'hello subhash'),
('Subhash', 'r', '2022-05-07 20:21:50', 'hello'),
('Subhash', 'r', '2022-05-07 20:21:57', 'hello sir'),
('Subhash', 'r', '2022-05-08 13:16:08', 'fdgdfg'),
('Subhash', 'r', '2022-05-08 13:16:12', 'dfgdfg');

-- --------------------------------------------------------

--
-- Table structure for table `nafraichat`
--

CREATE TABLE `nafraichat` (
  `sender` varchar(20) NOT NULL,
  `sor` text NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp(),
  `msg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nafraichat`
--

INSERT INTO `nafraichat` (`sender`, `sor`, `time`, `msg`) VALUES
('Subhash', 'r', '0000-00-00 00:00:00', 'hello Dr.nafrai..'),
('Subhash', 'r', '0000-00-00 00:00:00', 'asf '),
('Subhash', 'r', '2022-05-08 13:27:16', 'fdfsd sd sd ');

-- --------------------------------------------------------

--
-- Table structure for table `nathashachat`
--

CREATE TABLE `nathashachat` (
  `sender` varchar(20) NOT NULL,
  `sor` text NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp(),
  `msg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nuwanthichat`
--

CREATE TABLE `nuwanthichat` (
  `sender` varchar(20) NOT NULL,
  `sor` text NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp(),
  `msg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rawanchat`
--

CREATE TABLE `rawanchat` (
  `name` varchar(20) NOT NULL,
  `sor` text NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp(),
  `msg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `samaranayakachat`
--

CREATE TABLE `samaranayakachat` (
  `sender` varchar(20) NOT NULL,
  `sor` text NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp(),
  `msg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `samaranayakachat`
--

INSERT INTO `samaranayakachat` (`sender`, `sor`, `time`, `msg`) VALUES
('Subhash', 'r', '2022-05-08 13:27:28', 'fghfg g fg');

-- --------------------------------------------------------

--
-- Table structure for table `thusharachat`
--

CREATE TABLE `thusharachat` (
  `sender` varchar(20) NOT NULL,
  `sor` text NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp(),
  `msg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`name`, `email`, `password`, `id`) VALUES
('onlinechat', 'gsdfh@gs.lk', '123', 'gsdfh@gs.lk'),
('onlinechat', 'hsdfh@gs.lk', '123', 'hsdfh@gs.lk'),
('Subhash', 'subhash@gmail.com', '123', 'subhash@gmail.com'),
('[value-1]', '[value-2]', '[value-3]', '[value-4]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
