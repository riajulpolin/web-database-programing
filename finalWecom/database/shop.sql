

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbgadget`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `ID` int(11) NOT NULL,
  `Product` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `title`) VALUES
(1, 'Laptops'),
(2, 'Computer Set'),
(3, 'Hard Disk'),
(4, 'CCTV'),
(5, 'Mouse'),
(6, 'Keyboard'),
(11, 'Memory'),
(14, 'Facebook');

-- --------------------------------------------------------

--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `ID` int(11) NOT NULL,
  `imgUrl` text NOT NULL,
  `Product` text NOT NULL,
  `Description` text NOT NULL,
  `Price` double NOT NULL,
  `Category` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ID`, `imgUrl`, `Product`, `Description`, `Price`, `Category`) VALUES
(80, 'Hydrangeas.jpg', 'Product 101', 'This is a sample description', 300.5, 'Hard Disk'),
(81, 'Penguins.jpg', 'Water Melon', 'dsf', 3400, 'Keyboard'),
(82, 'C360_2014-07-23-12-19-43-367.jpg', 'Product 202', 'Quick description', 100, 'Laptops'),
(84, 'white passport.jpg', 'Pure Water', 'Water to drink everyday and night', 400, 'Laptops');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL,
  `site_name` varchar(34) NOT NULL,
  `site_phone` varchar(43) NOT NULL,
  `site_email` varchar(43) NOT NULL,
  `site_address` varchar(344) NOT NULL,
  `fax` varchar(15) NOT NULL,
  `comp_name` varchar(255) NOT NULL,
  `site_about` varchar(2500) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_name`, `site_phone`, `site_email`, `site_address`) VALUES
(1, 'ecomsite', '01948466429', 'riajulislampolin@gmail.com', 'Bangladesh',  '<p>I made a table and wanted to make it searchable, so I googled and looked here at starckoverflow.<br />\r\nBut somehow, the things I&#39;ve found, that should work, dont work for me? I made a table and wanted to make it searchable, so I googled and looked here at starckoverflow.<br />\r\nBut somehow, the things I&#39;ve found, that should work, dont work for me? I made a table and wanted to make it searchable, so I googled and looked here at starckoverflow.<br />\r\nBut somehow, the things I&#39;ve found, that should work, dont work for me?</p>\r\n\r\n<p>I made a table and wanted to make it searchable, so I googled and looked here at starckoverflow.<br />\r\nBut somehow, the things I&#39;ve found, that should work, dont work for me?</p>\r\n');

-- --------------------------------------------------------

--


--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=85;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
