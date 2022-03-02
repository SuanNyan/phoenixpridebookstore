-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2020 at 05:40 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phoenixpride_bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `BookID` int(11) NOT NULL,
  `BookName` varchar(100) NOT NULL,
  `BookTypeID` int(11) NOT NULL,
  `SellPrice` int(11) NOT NULL,
  `Author` varchar(100) NOT NULL,
  `BookImage` varchar(255) NOT NULL,
  `Quantities` int(11) NOT NULL,
  `Description` text NOT NULL,
  `SupplierID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`BookID`, `BookName`, `BookTypeID`, `SellPrice`, `Author`, `BookImage`, `Quantities`, `Description`, `SupplierID`) VALUES
(1, 'Son Heung Min:All of Mine', 1, 20000, 'Son Heung Min', 'Images/Books/_son.jpg', 37, 'South Korea Footballer', 1),
(2, 'Park Ji Sung', 1, 15000, 'Ji Sung Park', 'Images/Books/_pjs.jpg', 2, 'Ji Sung Park', 1),
(3, 'Messi: My Bio', 1, 25000, 'Messi', 'Images/Books/_messi.jpg', 6, 'Messi', 1),
(4, 'Ronaldo: The Biography', 1, 25000, 'Ronaldo', 'Images/Books/_ronaldo.jpg', 50, 'Ronaldo', 1),
(5, 'Pele: My Biography', 1, 10000, 'Pele', 'Images/Books/_pele.jpg', 92, 'Pele', 1),
(6, 'Martin Short:I Must Say', 3, 10000, 'Martin Short', 'Images/Books/_b2.jpg', 0, 'Comedy Book', 1),
(7, 'Obama:My President Life', 1, 5000, 'Obama', 'C:/xampp/htdocs/PhoenixPrideOnlineBookStoreProject/images/Books/_obama.jpg', 20, 'obama', 1);

-- --------------------------------------------------------

--
-- Table structure for table `booktype`
--

CREATE TABLE `booktype` (
  `BookTypeID` int(11) NOT NULL,
  `BookType` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booktype`
--

INSERT INTO `booktype` (`BookTypeID`, `BookType`) VALUES
(1, 'Biography'),
(2, 'Horror'),
(3, 'Comedy'),
(4, 'Motivational'),
(5, 'History'),
(6, 'Comics'),
(7, 'Journals'),
(8, 'Mystery'),
(9, 'Novels'),
(10, 'Stories');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `ContactID` int(11) NOT NULL,
  `YourName` varchar(50) NOT NULL,
  `YourEmail` varchar(255) NOT NULL,
  `ContactQuestion` text NOT NULL,
  `ContactAnswer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`ContactID`, `YourName`, `YourEmail`, `ContactQuestion`, `ContactAnswer`) VALUES
(2, 'adfgasdr', 'suan@gmail.com', 'ardgzdgzdthzfjkxghuk,gj', 'fgvszdfgzdt'),
(3, 'adfgasdr', 'suan@gmail.com', 'ardgzdgzdthzfjkxghuk,gj', 'hi'),
(4, 'adfgasdr', 'suan@gmail.com', 'ardgzdgzdthzfjkxghuk,gj', 'block'),
(5, 'john', 'suan@gmail.com', 'hello', 'A A'),
(6, 'john', 'suan@gmail.com', 'hello', ''),
(7, 'Mickey', 'mickey@gmail.com', 'Help me', 'How can i help you'),
(8, 'Suan', 'suan@gmail.com', 'Hello', ''),
(9, 'Suan', 'suan@gmail.com', 'Hello', ''),
(10, 'smith', 'smith@gmail.com', 'Hi How are you', 'Yes I am fine'),
(11, 'Contact by the Admin of the Website', 'smith@gmail.com', 'Contact By the customer for the information of the delivery', 'Yor delivery code is 3356'),
(12, 'Contact by the Admin of the Website', 'suan@gmail.com', 'Contact By the customer for the information of the delivery', 'Your delivery will not available'),
(13, 'Contact by the Admin of the Website', 'suan@gmail.com', 'Contact By the customer for the information of the delivery', 'Your deli will not be available\r\n'),
(14, 'Contact by the Admin of the Website', 'smith@gmail.com', 'Contact By the customer for the information of the delivery', 'Your delivery will not be available due to yours incomplete address'),
(15, 'Contact by the Admin of the Website', 'smith@gmail.com', 'Contact by the Admin of the website for the information of the delivery', 'Please sent the right address');

-- --------------------------------------------------------

--
-- Table structure for table `contract`
--

CREATE TABLE `contract` (
  `ContractID` int(11) NOT NULL,
  `ContractSignedDuration` int(11) NOT NULL,
  `ContractStartDate` text NOT NULL,
  `ContractEndDate` text NOT NULL,
  `SupplierID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contract`
--

INSERT INTO `contract` (`ContractID`, `ContractSignedDuration`, `ContractStartDate`, `ContractEndDate`, `SupplierID`) VALUES
(1, 2, '2020-04-23', '23-Apr-2022', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CustomerID` int(11) NOT NULL,
  `CustomerName` varchar(100) NOT NULL,
  `CustomerEmail` varchar(100) NOT NULL,
  `CustomerPassword` varchar(50) NOT NULL,
  `CustomerPhone` varchar(50) NOT NULL,
  `CustomerAddress` text NOT NULL,
  `CustomerImage` varchar(255) NOT NULL,
  `CustomerBirthday` date NOT NULL,
  `CustomerGender` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustomerID`, `CustomerName`, `CustomerEmail`, `CustomerPassword`, `CustomerPhone`, `CustomerAddress`, `CustomerImage`, `CustomerBirthday`, `CustomerGender`) VALUES
(1, 'Suan', 'suan@gmail.com', '1234', '09876543234', 'Yangon', 'CustomerImages/_man1.jfif', '1991-02-06', 'Male'),
(3, 'Morgan', 'morgan@gmail.com', '1234', '098765432', 'No12 fly township, North region, El salvado.', 'CustomerImages/_man5.jpg', '2000-02-02', 'Male'),
(4, 'Henry', 'henry@gmail.com', '1234', '098765432', 'Mandalay', 'CustomerImages/_man4.jfif', '1990-04-18', 'male'),
(5, 'Peter', 'peter@gmail.com', '1234', '098765432', 'England', 'CustomerImages/_man6.jfif', '2014-04-03', 'male'),
(6, 'harvey', 'harvey@gmail.com', '1234', '0942342432', 'USA', 'CustomerImages/_man2.jfif', '1981-02-11', 'male'),
(7, 'harver', 'harver@gmail.com', '1234', '098764553', 'Canada', 'CustomerImages/_man3.jfif', '1999-04-07', 'male'),
(8, 'haaland', 'ha@gmail.com', '1234', '0987653311', 'jamaica', 'CustomerImages/_man1.jfif', '1990-04-18', 'male'),
(9, 'hugo', 'hugo@gmail.com', '1234', '0987645645', 'Germany', 'CustomerImages/_man2.jfif', '1994-05-11', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `customerorder`
--

CREATE TABLE `customerorder` (
  `CustomerOrderID` varchar(255) NOT NULL,
  `CustomerOrderDate` date NOT NULL,
  `CustomerArrivalDate` date NOT NULL,
  `Tax` int(11) NOT NULL,
  `CustomerOrderAmount` int(11) NOT NULL,
  `CustomerTotalAmount` int(11) NOT NULL,
  `CustomerNetAmount` int(11) NOT NULL,
  `PaymentID` int(11) NOT NULL,
  `CustomerStatus` varchar(10) NOT NULL,
  `CustomerID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customerorder`
--

INSERT INTO `customerorder` (`CustomerOrderID`, `CustomerOrderDate`, `CustomerArrivalDate`, `Tax`, `CustomerOrderAmount`, `CustomerTotalAmount`, `CustomerNetAmount`, `PaymentID`, `CustomerStatus`, `CustomerID`) VALUES
('CO-000001', '2020-04-24', '2020-04-27', 500, 1, 10000, 10500, 1, 'Confirmed', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customerorderdetail`
--

CREATE TABLE `customerorderdetail` (
  `CustomerOrderID` varchar(255) NOT NULL,
  `BookID` int(11) NOT NULL,
  `DeliveryID` varchar(255) NOT NULL,
  `CustomerOrderQuantities` int(11) NOT NULL,
  `SellPrice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customerorderdetail`
--

INSERT INTO `customerorderdetail` (`CustomerOrderID`, `BookID`, `DeliveryID`, `CustomerOrderQuantities`, `SellPrice`) VALUES
('CO-000001', 5, 'DEL-000001', 1, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `DeliveryID` varchar(255) NOT NULL,
  `CustomerOrderID` varchar(255) NOT NULL,
  `CusName` varchar(255) NOT NULL,
  `CusAddress` text NOT NULL,
  `RegionID` int(11) NOT NULL,
  `CustomerPostCode` varchar(50) NOT NULL,
  `CusEmail` varchar(50) NOT NULL,
  `CusPhone` varchar(50) NOT NULL,
  `PaymentID` int(11) NOT NULL,
  `DeliveryStatus` varchar(10) NOT NULL,
  `DeliveryCode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`DeliveryID`, `CustomerOrderID`, `CusName`, `CusAddress`, `RegionID`, `CustomerPostCode`, `CusEmail`, `CusPhone`, `PaymentID`, `DeliveryStatus`, `DeliveryCode`) VALUES
('DEL-000001', 'CO-000001', 'Suan Thiha Nyan', 'fc street', 1, '24232', 'suan@gmail.com', '098467546', 1, 'Delivered', 2256);

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `FaqID` int(11) NOT NULL,
  `FaqQuestion` text NOT NULL,
  `FaqAnswer` text NOT NULL,
  `StaffID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`FaqID`, `FaqQuestion`, `FaqAnswer`, `StaffID`) VALUES
(1, 'What is Phoenix Pride Book Store?', '                    Phoenix Pride Book Store is one of the well-known book stores in Myanmar. It has been established since 2000. And It has some branches in each township in Yangon. And, it sells many kinds of books that deals with different kinds of subjects, especially deals with educational. That book store is very suitable for the university students, college students and matriculation students. And, it also sells books for teenagers, adults and old people. As an example, comics, cartoons and child’s literature for the children, Magazine, journals and books deal with university for the teenagers and adults, religious books and others for old people. And they also sell the books according to the ages. In other countries, the book stores sell the books and the authors write the books according to ages. By using this way, it is very good limitation for the people because some of the knowledges and facts in the books are not suitable for the children and teenagers to know or to read. And it is also international humanity obedience that has been used all over the world. And there are few book stores which used that international limitation in local. This book store is already include one of the book stores in local. And, their local market aim is very ambitious. They want to open their book stores all over the country in every divisions and every states of each township. Their main purpose is to reach the books for every kinds of people whether they are rich or poor. And they make a special and precious case in every end of the year. That is, they hold the book festival in Yangon. As their main purpose, they want to reach the books to every kinds of people. In that festival, they sold the books with discount, from 30% to 80% and including some copied books that cannot be available in this century. And, they hold the book festival not only hold solo but also invite other opponent book stores to hold together in their festival. And they donate the money and rest of the books that are not sales in the festival to the orphanages and public library. Their purpose and their doings are very well and also their purpose. In their future plan, they will open the book stores all over the country and hold the biggest book festival in Myanmar all over country at the same time.', 1),
(2, 'gfsfgs', 'sgfsdfs', 1),
(3, 'sdghsdhs', 'sdfhsdghsdg', 1),
(4, 'What is Phoenix Pride Online Book Store?', 'It is a kind of the website that the customers can buy easily  the books from the website.', 1),
(7, 'What is  the ceo of this book store?', 'Suan', 1),
(8, 'What is  the ceo of this book store?', 'Suan', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `PaymentID` int(11) NOT NULL,
  `PaymentType` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`PaymentID`, `PaymentType`) VALUES
(1, 'Direct Bank Transfer'),
(2, 'Cash on Delivery'),
(3, 'Wave Money'),
(4, 'OK Dollar'),
(5, 'Zigo Pay');

-- --------------------------------------------------------

--
-- Table structure for table `purchasedetail`
--

CREATE TABLE `purchasedetail` (
  `PurchaseID` varchar(255) NOT NULL,
  `BookID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchasedetail`
--

INSERT INTO `purchasedetail` (`PurchaseID`, `BookID`, `Quantity`, `Price`) VALUES
('PO-000001', 1, 40, 10000),
('PO-000002', 2, 30, 10000),
('PO-000002', 3, 20, 25000),
('PO-000003', 6, 10, 10000),
('PO-000004', 5, 50, 8000),
('PO-000004', 4, 25, 25000),
('PO-000005', 4, 50, 20000),
('PO-000005', 2, 50, 20000),
('PO-000005', 5, 50, 15000),
('PO-000006', 7, 20, 5000),
('PO-000007', 7, 20, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `purchaseorder`
--

CREATE TABLE `purchaseorder` (
  `PurchaseID` varchar(255) NOT NULL,
  `StaffInfo` varchar(50) NOT NULL,
  `PurchaseOrderDate` text NOT NULL,
  `ArrivalDate` text NOT NULL,
  `Tax` int(11) NOT NULL,
  `TotalAmount` int(11) NOT NULL,
  `POQuantities` int(11) NOT NULL,
  `SupplierID` int(11) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `GrandTotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchaseorder`
--

INSERT INTO `purchaseorder` (`PurchaseID`, `StaffInfo`, `PurchaseOrderDate`, `ArrivalDate`, `Tax`, `TotalAmount`, `POQuantities`, `SupplierID`, `Status`, `GrandTotal`) VALUES
('PO-000001', '1', '2020-01-28', '2020-01-28', 20000, 400000, 40, 1, 'Confirmed', 420000),
('PO-000001', '1', '2020-01-28', '2020-01-28', 20000, 400000, 40, 1, 'Confirmed', 420000),
('PO-000002', '1', '2020-03-05', '2020-03-05', 40000, 800000, 50, 1, 'Confirmed', 840000),
('PO-000003', '1', '2020-03-06', '2020-03-06', 5000, 100000, 10, 1, 'Confirmed', 105000),
('PO-000004', '1', '2020-04-03', '2020-04-03', 51250, 1025000, 75, 1, 'Confirmed', 1076250),
('PO-000005', '1', '2020-04-12', '2020-04-12', 137500, 2750000, 150, 1, 'Confirmed', 2887500),
('PO-000006', '', '2020-04-22', '2020-04-22', 5000, 100000, 20, 1, 'Pending', 105000),
('PO-000007', '1', '2020-04-22', '2020-04-22', 5000, 100000, 20, 1, 'Confirmed', 105000);

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `RegionID` int(11) NOT NULL,
  `RegionName` text NOT NULL,
  `ServiceCharge` int(11) NOT NULL,
  `CustomerPostCode` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`RegionID`, `RegionName`, `ServiceCharge`, `CustomerPostCode`) VALUES
(1, 'Yangon Region', 2000, '24687'),
(2, 'Mandalay Region', 3000, '13578'),
(3, 'Sagaing Region', 3500, '98683'),
(4, 'Tanintharyi Region', 4000, '26486'),
(5, 'Magwe Region', 2500, '70863'),
(6, 'Ayeyarwady Region', 2500, '53685'),
(7, 'Bago Region', 2500, '36674'),
(8, 'Kachin State', 4000, '22254'),
(9, 'Kayar State', 3000, '64733'),
(10, 'Kayin State', 3000, '34644'),
(11, 'Chin State', 6000, '33457'),
(12, 'Mon State', 2500, '54242'),
(13, 'Rakhine State', 3000, '78649'),
(14, 'Shan State', 3500, '64585');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `StaffID` int(11) NOT NULL,
  `StaffName` varchar(50) NOT NULL,
  `Phone` varchar(30) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Gender` varchar(255) NOT NULL,
  `StaffTypeID` int(11) NOT NULL,
  `StaffImage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`StaffID`, `StaffName`, `Phone`, `Email`, `Address`, `Password`, `Gender`, `StaffTypeID`, `StaffImage`) VALUES
(1, 'Suan', '09876543344', 'suan@gmail.com', 'Yangon', '1234', 'male', 1, 'Images/StaffImages/_pl_19-20_detail_page_club_graphic.png'),
(2, 'Harry', '098765456', 'harry@gmail.com', 'UK', '1234', 'male', 2, 'Images/StaffImages/_man2.jfif'),
(3, 'Hugo Mandos', '0987676767', 'hugo@gmail.com', 'Yangon', '1234', 'male', 6, 'Images/StaffImages/_man6.jfif');

-- --------------------------------------------------------

--
-- Table structure for table `stafftype`
--

CREATE TABLE `stafftype` (
  `StaffTypeID` int(11) NOT NULL,
  `StaffType` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stafftype`
--

INSERT INTO `stafftype` (`StaffTypeID`, `StaffType`) VALUES
(1, 'CEO'),
(2, 'Managing Director'),
(3, 'Excutive Manager'),
(4, 'General Manager'),
(5, 'Chairman'),
(6, 'Delivery Man'),
(7, 'Website Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `SupplierID` int(11) NOT NULL,
  `SupplierName` varchar(100) NOT NULL,
  `BookIndustry` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone` varchar(50) NOT NULL,
  `Photo` varchar(255) NOT NULL,
  `Address` text NOT NULL,
  `Gender` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`SupplierID`, `SupplierName`, `BookIndustry`, `Email`, `Phone`, `Photo`, `Address`, `Gender`) VALUES
(1, 'U Kaung', 'Inwa', 'kaung@gmail.com', '0987654334', 'Images/SupplierImages/_man2.jfif', 'Yangon', 'Male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`BookID`);

--
-- Indexes for table `booktype`
--
ALTER TABLE `booktype`
  ADD PRIMARY KEY (`BookTypeID`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`ContactID`);

--
-- Indexes for table `contract`
--
ALTER TABLE `contract`
  ADD PRIMARY KEY (`ContractID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`DeliveryID`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`FaqID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`PaymentID`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`RegionID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`StaffID`);

--
-- Indexes for table `stafftype`
--
ALTER TABLE `stafftype`
  ADD PRIMARY KEY (`StaffTypeID`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`SupplierID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `BookID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `booktype`
--
ALTER TABLE `booktype`
  MODIFY `BookTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `ContactID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `contract`
--
ALTER TABLE `contract`
  MODIFY `ContractID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `FaqID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `PaymentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
  MODIFY `RegionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `StaffID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `stafftype`
--
ALTER TABLE `stafftype`
  MODIFY `StaffTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `SupplierID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
