SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `robotBase`
--

-- --------------------------------------------------------

--
-- Table structure for table `baseControl`
--

CREATE TABLE `baseControl` (
  `id` int(11) NOT NULL,
  `forward` varchar(7) NOT NULL,
  `leftt` varchar(7) NOT NULL,
  `stoop` varchar(7) NOT NULL,
  `rightt` varchar(7) NOT NULL,
  `backward` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `baseControl`
--

INSERT INTO `baseControl` (`id`, `forward`, `leftt`, `stoop`, `rightt`, `backward`) VALUES
(1, 'forward', '', ' ', '', ''),
(2, '', 'leftt', ' ', '', ''),
(3, '', '', ' ', 'rightt', ''),
(4, 'forward', '', ' ', '', ''),
(5, '', '', ' ', 'rightt', ''),
(6, '', '', ' ', '', '	backward'),
(7, 'forward', '', ' ', '', ''),
(8, '', '', ' ', 'rightt', ''),
(9, '', '', '', '', '	backward'),
(10, '', 'leftt', '', '', ''),
(11, '', '', 'stoop', '', ''),
(12, '', '', 'stoop', '', ''),
(13, 'forward', '', '', '', ''),
(14, '', '', '', '', '	backward'),
(15, '', '', '', 'rightt', ''),
(16, '', '', 'stoop', '', ''),
(17, 'forward', '', '', '', ''),
(18, '', '', '', 'rightt', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `baseControl`
--
ALTER TABLE `baseControl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `baseControl`
--
ALTER TABLE `baseControl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;
