-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 03, 2019 at 12:11 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `supermarket`
--

-- --------------------------------------------------------

--
-- Table structure for table `arrivals`
--

CREATE TABLE `arrivals` (
  `id` int(11) NOT NULL,
  `recipient` varchar(20) NOT NULL,
  `supplier_name` varchar(40) DEFAULT NULL,
  `product_supplied` varchar(40) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `invoice` int(11) DEFAULT NULL,
  `date_arrived` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `arrivals`
--

INSERT INTO `arrivals` (`id`, `recipient`, `supplier_name`, `product_supplied`, `quantity`, `balance`, `price`, `invoice`, `date_arrived`, `status`) VALUES
(6, '', 'emzor', 'vasoprin', 20, 0, 200, 116563, '28/Oct/2018', 'fully paid'),
(7, '', 'juhel', 'sudrex', 50, 440, 500, 723822, '28/Oct/2018', 'part payment');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL,
  `sales_person` varchar(10) DEFAULT NULL,
  `item` varchar(20) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_type` varchar(100) NOT NULL,
  `product_description` varchar(40) NOT NULL,
  `product_expiry_date` date NOT NULL,
  `new_quantity` int(11) NOT NULL,
  `current_quantity` int(11) NOT NULL,
  `total_quantity` int(11) NOT NULL,
  `product_supplier` varchar(40) NOT NULL,
  `cost_price` int(11) NOT NULL,
  `selling_price` int(11) NOT NULL,
  `date_added` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_type`, `product_description`, `product_expiry_date`, `new_quantity`, `current_quantity`, `total_quantity`, `product_supplier`, `cost_price`, `selling_price`, `date_added`) VALUES
(6, '8902967211357', 'mac dowell', 'drink', '2019-05-29', 10, 10, 10, 'me', 250, 400, '29/05/2019'),
(7, '5010103933599', 'orijin bitters', 'drink', '2019-05-29', 12, 12, 12, 'orijin', 200, 300, '29/05/2019'),
(8, 'rest', 'dry gin', 'drink', '2019-05-29', 8, 8, 8, 'rest', 50, 80, '29/05/2019'),
(9, 'squad 5', 'dark rum ', 'drink', '2019-05-29', 1, 1, 1, 'squad 5', 50, 80, '29/05/2019'),
(10, 'jedi jedi', 'bitters cleanser', 'drink', '2019-05-29', 4, 4, 4, 'jedi jedi', 70, 100, '29/05/2019'),
(11, 'tempest', 'dry gin', 'drink', '2019-05-29', 16, 16, 16, 'tempest', 50, 80, '29/05/2019'),
(12, '6154000006112', 'seaman schnapps 750m', 'drink', '2019-05-29', 3, 2, 2, 'seaman', 700, 1000, '29/05/2019'),
(14, '08565907', 'night train 375ml', 'drink', '2019-05-29', 2, 2, 2, 'night train', 700, 1000, '29/05/2019'),
(15, '3245995960015', 'hennessy very specia', 'drink', '2019-05-29', 1, 1, 1, 'hennessy', 5000, 6000, '29/05/2019'),
(16, '6151100052162', 'hollandia strawberry', 'drink', '2019-10-19', 8, 8, 8, 'hollandia', 300, 500, '29/05/2019'),
(17, '6151100050052', 'chivita orange pinea', 'drink', '2019-07-19', 3, 3, 3, 'chivita', 300, 450, '29/05/2019'),
(18, '6151100054791', 'chi exotic mango nec', 'drink', '2019-08-17', 3, 3, 3, 'chi', 300, 400, '29/05/2019'),
(19, '6151100054753', 'hollandia yoghurt 500ml', 'drink', '2019-07-12', 6, 6, 6, 'hollandia', 200, 300, '29/05/2019'),
(20, '6151100056306', 'chi exotic pineapple', 'drink', '2019-12-30', 5, 5, 5, 'chi', 100, 200, '29/05/2019'),
(21, '6151100056436', 'hollandia mixology 315ml', 'drink', '2019-08-14', 4, 4, 4, 'hollandia', 100, 200, '29/05/2019'),
(22, '6151100051219', 'chi exotic pineapple & coconut nectar 1l', 'drink', '2019-12-09', 3, 3, 3, 'chi', 350, 500, '29/05/2019'),
(23, '8902147000528', 'magic moments 375ml', 'drink', '2019-05-29', 3, 3, 3, 'lucozade', 700, 950, '29/05/2019'),
(24, '8902147000511', 'magic moments 750ml', 'drink', '2019-05-29', 1, 1, 1, 'magic', 1200, 1600, '29/05/2019'),
(25, '8901544041738', 'sterling reserve whisksey 750ml', 'drink', '2019-05-29', 2, 2, 2, 'sterling', 3000, 3200, '29/05/2019'),
(26, '8427894012704', 'toma red wine 75cl', 'drink', '2019-05-29', 4, 4, 4, 'toma', 800, 1000, '29/05/2019'),
(27, '6154000006136', 'lords gin 750ml', 'drink', '2019-05-29', 1, 1, 1, 'lords', 1550, 1800, '29/05/2019'),
(28, '8904020702109', 'bellwether whisky 750ml', 'drink', '2019-05-29', 1, 1, 1, 'bellwether', 1500, 1800, '29/05/2019'),
(29, '6164003477116', 'lucozade energy', 'drink', '2019-09-08', 2, 2, 2, 'lucozade', 600, 800, '29/05/2019'),
(30, '8410775353522', 'joven chapel 750ml', 'drink', '2019-05-29', 3, 3, 3, 'joven', 1000, 1300, '29/05/2019'),
(31, '8427894014937', 'joven toma', 'drink', '2019-05-29', 1, 1, 1, 'joven', 1000, 1300, '29/05/2019'),
(32, '8410261081281', 'castillo sans simon 750ml', 'drink', '2019-05-29', 5, 5, 5, 'castillo', 900, 1000, '29/05/2019'),
(33, '608473184342', 'cartier premium red wine 75cl', 'drink', '2019-05-29', 2, 2, 2, 'cartier', 800, 1000, '29/05/2019'),
(34, 'carol rubis', 'smooth red wine 750ml', 'drink', '2019-05-29', 1, 1, 1, 'carol', 700, 1000, '29/05/2019'),
(35, '8410635024043', 'eva red grape wine 750ml', 'drink', '2021-05-11', 6, 6, 6, 'eva', 700, 900, '29/05/2019'),
(36, '6001452174008', 'nederburg sparkling 750ml', 'drink', '2019-05-29', 1, 1, 1, 'nederburg', 1200, 1500, '29/05/2019'),
(37, '8003295009644', 'buccalis rose 750ml', 'drink', '2019-05-29', 1, 1, 1, 'me', 1000, 1200, '29/05/2019'),
(38, '12525652', 'classic heaven red wine 750ml', 'drink', '2021-05-02', 1, 1, 1, 'classic', 700, 900, '29/05/2019'),
(39, '6001495062478', 'amarula irish cream 375ml', 'drink', '2020-06-07', 2, 2, 2, 'amarula', 1400, 1600, '29/05/2019'),
(40, '6009675699957', 'best marula flavoured cream 200ml', 'drink', '2021-12-01', 2, 2, 2, 'best', 500, 700, '29/05/2019'),
(41, '6009675692484', 'best marula flavoured cream 750ml', 'drink', '2021-08-03', 1, 1, 1, 'best', 1700, 2000, '29/05/2019'),
(42, '5032619311623', 'pure heaven 750ml', 'drink', '1111-01-01', 5, 5, 5, 'pure heaven', 800, 1000, '29/05/2019'),
(43, '6001495080106', 'chamdor 750ml', 'drink', '0000-00-00', 3, 3, 3, 'chamdor', 1000, 1300, '29/05/2019'),
(44, '6009824300352', 'pop up lollipop banana and cream packet', 'sweet', '2020-02-04', 1, 1, 1, 'pop up', 350, 500, '29/05/2019'),
(45, '6009824300451', 'sweet tropic pineapple lollipop packet', 'drink', '1111-11-11', 1, 1, 1, 'sweet', 450, 500, '29/05/2019'),
(46, '6154000058296', 'milkrich milk & butter flavoured lollipo', 'sweet', '1111-11-11', 2, 2, 2, 'sweet', 400, 500, '29/05/2019'),
(47, '6009824300413', 'sweet tropic cocnut packet', 'sweet', '1111-11-11', 2, 2, 2, 'sweet', 450, 500, '29/05/2019'),
(48, '6154000058180', 'milkits milk lollipop packet', 'sweet', '1111-11-11', 1, 1, 1, 'sweet', 400, 500, '29/05/2019'),
(49, '6009824300567', 'popy lollipop watermelon', 'sweet', '0111-11-11', 1, 1, 1, 'sweet', 400, 500, '29/05/2019'),
(50, '6154000058111', 'pure bliss packet', 'biscuit', '2020-02-02', 1, 1, 1, 'biscuit', 700, 900, '29/05/2019'),
(51, 'purebliss biscuit', 'single', 'biscuit', '2020-02-02', 14, 14, 14, 'biscuit', 80, 100, '29/05/2019'),
(52, '8904271300062', 'yogofru lollipop pack', 'sweet', '2020-06-06', 1, 1, 1, 'sweet', 1700, 1800, '29/05/2019'),
(53, 'indomie chicken flavour 100g carton', 'indomie chicken flavour 100g carton', 'noodles', '2020-03-02', 1, 1, 1, 'indomie', 2500, 2800, '29/05/2019'),
(54, 'digestive biscuit carton 120g', 'digestive biscuit carton 120g', 'biscuit', '2019-12-12', 1, 1, 1, 'biscuit', 1000, 1200, '29/05/2019'),
(55, 'card board sheet', 'card board sheet', 'paper', '0011-11-11', 50, 50, 50, 'paper', 30, 50, '29/05/2019'),
(56, '6151100052469', 'hollandia evaported milk small ', 'milk', '2019-08-08', 3, 3, 3, 'hollandia', 50, 70, '29/05/2019'),
(57, '6151100052476', 'hollandia evap 190g', 'milk', '2019-03-07', 8, 8, 8, 'hollandia', 150, 200, '29/05/2019'),
(58, '6156000124339', 'dogans sugar cubes', 'sugar', '2021-02-02', 10, 10, 10, 'dogan', 300, 350, '29/05/2019'),
(59, '87162318', 'peak condensed 78g', 'milk', '2020-01-01', 10, 10, 10, 'peak', 200, 250, '29/05/2019'),
(60, '6034000004007', 'burger peanuts snack pack', 'peanut', '1111-11-11', 10, 10, 10, 'burger', 700, 800, '29/05/2019'),
(61, '6151100059352', 'chi exotic pineapple & coconut nectar 15', 'drink', '2020-05-02', 21, 21, 21, 'chi', 50, 60, '29/05/2019'),
(62, '6151100031914', 'nestle milo drink 180ml', 'drink', '2020-01-01', 31, 31, 31, 'nestle', 90, 100, '29/05/2019'),
(63, '6156000106809', 'yale cabin biscuit', 'biscuit', '1111-11-11', 10, 10, 10, 'yale', 230, 250, '29/05/2019'),
(64, '6001085002150', 'blue band original 250g', 'butter', '2019-12-22', 5, 5, 5, 'blueband', 300, 350, '29/05/2019'),
(65, 'noreos chocolate biscuits carton', 'noreos chocolate biscuits carton', 'biscuit', '2020-02-02', 1, 1, 1, 'noreos', 1000, 1300, '29/05/2019'),
(66, '6156000051550', 'golden penny sugar 500g', 'sugar', '2020-02-11', 1, 1, 1, 'goldenpenny', 200, 250, '29/05/2019'),
(67, '6156000061023', 'dangote sugar 1kg', 'sugar', '1111-11-11', 5, 5, 5, 'dangote', 400, 450, '29/05/2019'),
(68, '6301102010510', 'nasco vanilla cream biscuit', 'biscuit', '2019-10-31', 8, 8, 8, 'nasco', 80, 100, '29/05/2019'),
(69, '6301102010503', 'nasco strawberry cream', 'biscuit', '2020-03-03', 2, 2, 2, 'nasco', 80, 100, '29/05/2019'),
(70, '6301102010466', 'nasco banana cream bisuit', 'biscuit', '2019-02-02', 5, 5, 5, 'nasco', 80, 100, '29/05/2019'),
(71, '6301102010473', 'nasco chocolate cream', 'biscuit', '2020-04-04', 6, 6, 6, 'nasco', 80, 100, '29/05/2019'),
(72, '9557366180262', 'promex full cream milk 500g', 'milk', '2021-02-13', 5, 5, 5, 'promex', 900, 950, '29/05/2019'),
(73, '6156000094465', 'three crowns refilled 350g', 'nilk', '2020-01-01', 10, 10, 10, 'three crown', 600, 650, '29/05/2019'),
(74, '9556001225474', 'nestle milo 2kg', 'drink', '1111-11-11', 1, 1, 1, 'nestle', 5000, 5300, '29/05/2019'),
(75, '6156000130323', 'peak value 850g', 'milk', '2020-06-06', 2, 2, 2, 'peak', 1700, 1850, '29/05/2019'),
(76, '9557366180286', 'promex full cream milk 900g', 'milk', '2020-11-23', 7, 7, 7, 'promex', 1600, 1750, '29/05/2019'),
(77, '5760466987073', 'dano cow milk 900g', 'milk', '2020-05-05', 6, 6, 6, 'dano', 1500, 1600, '29/05/2019'),
(78, '749921062079', 'nutri-c sachet ', 'drink', '2020-06-05', 27, 27, 27, 'nutri-c', 30, 50, '29/05/2019'),
(79, 'nutri-c roll', 'nutri-c', 'drink', '2020-06-05', 3, 3, 3, 'nutri-c', 300, 450, '29/05/2019'),
(80, '6033000104687', 'olympic refilled milk ', 'milk', '2019-08-08', 1, 1, 1, 'olympic', 600, 650, '29/05/2019'),
(81, '6008155005929', 'loya milk 380g', 'milk', '2020-03-03', 6, 6, 6, 'loya', 900, 950, '29/05/2019'),
(82, '8716200449342', 'peak full cream 380g', 'milk', '2020-04-04', 12, 12, 12, 'peak', 950, 1000, '29/05/2019'),
(83, '6033000100627', 'nunu instant filled powder 380g', 'milk', '2019-12-12', 5, 5, 5, 'nunu', 550, 600, '29/05/2019'),
(84, '9557366100796', 'chocomex 380g', 'chocolate', '2020-12-10', 11, 11, 11, 'chocomex', 800, 900, '29/05/2019'),
(85, '5704310105169', 'dano slim powdered milk 380g', 'milk', '2019-08-08', 5, 5, 5, 'dano', 600, 700, '29/05/2019'),
(86, '6033000090058', 'oldenburger milk 380g', 'milk', '2019-12-12', 10, 10, 10, 'oldenburger', 900, 1000, '29/05/2019'),
(87, '6301102020069', 'nasco conrflakes 45g', 'conr flakes', '2019-11-16', 1, 1, 1, 'nasco', 80, 100, '29/05/2019'),
(88, '7612100066263', 'ovaltine 1200g tin', 'tea', '2020-09-03', 3, 3, 3, 'ovaltine', 2750, 3000, '29/05/2019'),
(89, '8716200712811', 'my boy eldorin milk 400g tin', 'milk', '2021-12-12', 8, 8, 8, 'my boy', 1300, 1400, '29/05/2019'),
(90, '8716200438155', 'peak 1-2-3 400g tin', 'milk', '2020-11-11', 5, 5, 5, 'peak', 1000, 1100, '29/05/2019'),
(91, '5000108943310', 'quaker oats 500g tin', 'oats', '2020-11-12', 5, 5, 5, 'quaker', 700, 800, '29/05/2019'),
(92, '4008844400006', 'good morning white oats 500g', 'oats', '2020-07-07', 18, 18, 18, 'white oats', 400, 500, '29/05/2019'),
(93, '4808591411054', 'ovaltine family size 1800g tin', 'tea', '2019-12-12', 2, 2, 2, 'ovaltine', 500, 6000, '29/05/2019'),
(94, '6008155000849', 'top tea packet', 'tea', '2020-08-08', 5, 5, 5, 'top tea', 200, 250, '29/05/2019'),
(95, '4791014004950', 'qualitea green tea pack', 'tea', '2021-05-05', 22, 22, 22, 'qualitea', 600, 700, '29/05/2019'),
(96, '6001085003782', 'lipton yellow label tea', 'tea', '1111-11-11', 14, 14, 14, 'lipton', 200, 250, '29/05/2019'),
(97, '714084860077', 'checkers milk custard 45g sachet single', 'drink', '2021-02-02', 7, 7, 7, 'checkers', 50, 60, '29/05/2019'),
(98, 'checkers milk custard 45g sachet pack', 'checkers milk custard 45g sachet pack', 'drink', '2021-02-02', 3, 3, 3, 'checkers', 900, 1000, '29/05/2019'),
(99, 'gold''s banana flavoured custard 2kg cont', 'gold''s banana flavoured custard 2kg cont', 'beverage', '2020-08-16', 1, 1, 1, 'gold', 1300, 1500, '29/05/2019'),
(100, 'gold''s vanilla flavoured custard 2kg con', 'gold''s vanilla flavoured custard 2kg con', 'beverage', '2020-08-16', 1, 1, 1, 'gold', 1200, 1500, '29/05/2019'),
(101, '6152110065968', 'checkers vanilla flavoured custard 2kg c', 'beverage', '2020-09-09', 3, 3, 3, 'checkers', 1000, 1300, '29/05/2019'),
(102, '714084860084', 'checkers milk flavoured custard 2kg cont', 'beverage', '2021-02-02', 3, 3, 3, 'checkers', 1000, 1300, '29/05/2019'),
(103, '714084852690', 'checkers banana flavoured custard 2kg co', 'beverage', '2020-09-09', 1, 1, 1, 'checkers', 1000, 1300, '29/05/2019'),
(104, '5060472040046', 'checkers oats organic cereal ', 'beverage', '2020-09-09', 5, 5, 5, 'checkers', 400, 500, '29/05/2019'),
(105, '6152110065975', 'checkers vanilla flavoured custard 400g ', 'beverage', '2020-02-02', 4, 4, 4, 'checkers', 300, 400, '29/05/2019'),
(106, '8716200435918', 'peak full cream milk 2500g tin', 'beverage', '2019-11-11', 1, 1, 1, 'peak', 6500, 7000, '29/05/2019'),
(107, '6154000101282', 'kellogg''s coco pops 32g sachet', 'beverage', '2020-03-21', 30, 30, 30, 'kelloggs', 40, 50, '29/05/2019'),
(108, '6033000101150', 'olympic filled evaporated milk 160g tin', 'beverage', '2019-08-08', 26, 26, 26, 'olympic', 130, 150, '29/05/2019'),
(109, '8716200607544', 'three crowns filled evaporated milk 160g', 'beverage', '2020-05-05', 47, 47, 47, 'three crown', 130, 160, '29/05/2019'),
(110, '87162240', 'peak full cream unsweetened milk 160g ti', 'beverage', '2019-12-12', 17, 17, 17, 'peak', 160, 200, '29/05/2019'),
(111, '6154000054151', 'peak filled evaporated milk 160g tin', 'beverage', '2020-05-05', 31, 31, 31, 'peak', 130, 150, '29/05/2019'),
(112, 'tummy tummy chicken flavour 100g carton', 'tummy tummy chicken flavour 100g carton', 'noodles', '1111-11-11', 4, 4, 4, 'tummy tummy', 2000, 2400, '29/05/2019'),
(113, '6151100023582', 'funtime cup cake', 'cake', '2019-06-06', 11, 11, 11, 'funtime', 30, 50, '29/05/2019'),
(114, 'chino potato wafers chips', 'chino potato wafers chips', 'chips', '1111-11-11', 14, 14, 14, 'chino', 30, 50, '29/05/2019'),
(115, '6301102010589', 'nasco short cake ', 'biscuit', '2020-02-02', 56, 56, 56, 'nasco', 40, 50, '29/05/2019'),
(116, 'egg', 'egg', 'egg', '1111-11-11', 30, 30, 30, 'me', 35, 50, '29/05/2019'),
(117, 'egg crate', 'egg crate', 'egg', '1111-11-11', 8, 8, 8, 'me', 1000, 1100, '29/05/2019'),
(118, '6156000022536', 'honeywell whole wheat meal 2kg sachet', 'wheat', '1111-11-11', 2, 2, 2, 'honeywell', 700, 800, '29/05/2019'),
(119, '6156000022529', 'honeywell whole wheat meal 1kg sachet', 'wheat', '1111-11-11', 2, 2, 2, 'honeywell', 300, 450, '29/05/2019'),
(120, '6151100001061', 'ayoola poundo yam 2kg', 'flour', '2020-08-18', 1, 1, 1, 'ayoola', 800, 850, '29/05/2019'),
(121, '6151100001023', 'ayoola poundo yam 1kg', 'flour', '2020-07-20', 1, 1, 1, 'ayoola', 400, 500, '29/05/2019'),
(122, '647971992776', 'elkris super oat swallow 1.3kg', 'flour', '2020-02-02', 1, 1, 1, 'elkris', 1400, 1500, '29/05/2019'),
(123, '6154830234723', 'sugar free samvita 1kg', 'flour', '1111-11-11', 2, 2, 2, 'samvita', 1400, 1500, '29/05/2019'),
(124, 'nnebest soay beans powder', 'nnebest soay beans powder', 'beverage', '1111-11-11', 4, 4, 4, 'nnebest', 400, 550, '29/05/2019'),
(125, 'blessed goodwill bread', 'blessed goodwill bread', 'bread', '1111-11-11', 3, 3, 3, 'goodwill', 180, 200, '29/05/2019'),
(126, 'stanel bread', 'stanel bread', 'bread', '1111-11-11', 3, 3, 3, 'stanel', 400, 450, '29/05/2019'),
(127, 'genesis delight loaf bread', 'genesis delight loaf bread', 'bread', '1111-11-11', 5, 5, 5, 'genesis', 250, 300, '29/05/2019'),
(128, 'genesis family loaf bread', 'genesis family loaf bread', 'bread', '1111-11-11', 2, 2, 2, 'genesis', 350, 400, '29/05/2019'),
(129, 'france honey milk bread', 'france honey milk bread', 'bread', '1111-11-11', 2, 2, 2, 'france', 180, 200, '29/05/2019'),
(130, '6151100030269', 'nestle golden morn 500g sachet', 'cereal', '1111-11-11', 6, 6, 6, 'nestle', 700, 750, '29/05/2019'),
(131, '6151100030283', 'nestle golden morn 1kg sachet', 'cereal', '1111-11-11', 3, 3, 3, 'nestle', 1200, 1300, '29/05/2019'),
(132, '6151100031549', 'nestle milo 1kg sachet', 'tea', '2020-07-07', 5, 5, 5, 'nestle', 1600, 1700, '29/05/2019'),
(133, '6151100031518', 'nestle milo 500g sachet', 'tea', '2020-07-07', 7, 7, 7, 'nestle', 900, 950, '29/05/2019'),
(134, '6151100031488', 'nestle milo 500g tin', 'tea', '2020-02-02', 3, 3, 3, 'nestle', 1100, 1200, '29/05/2019'),
(135, '6151100031532', 'nestle milo 1kg tin', 'tea', '2019-09-09', 3, 3, 3, 'nestle', 1800, 2000, '29/05/2019'),
(136, '6151100036360', 'nestle nescafe breakfast 3 in 1 32g sach', 'tea', '2020-05-05', 72, 72, 72, 'nestle', 70, 100, '29/05/2019'),
(137, '6151100032652', 'nestle golden morn 550g sachet', 'cereal', '1111-11-11', 6, 6, 6, 'nestle', 650, 750, '29/05/2019'),
(138, '8886472101665', 'sma gold infant milk 400g tin', 'milk', '2020-03-05', 1, 1, 1, 'sma', 2500, 2900, '29/05/2019'),
(139, '6151100035240', 'nestle cerelac maize with milk 400g tin', 'cereal', '2020-07-07', 2, 2, 2, 'nestle', 1000, 1200, '29/05/2019'),
(140, '6151100035363', 'nestle cerelac maize and soya 900g tin', 'cereal', '2020-09-09', 5, 5, 5, 'nestle', 1600, 1750, '29/05/2019'),
(141, '6151100039675', 'nestle cerelac wheat with milk 1kg tin', 'cereal', '2020-09-09', 6, 6, 6, 'nestle', 2000, 2250, '29/05/2019'),
(142, '6151100035301', 'nestle cerelac maize with milk 1kg tin', 'cereal', '2020-08-08', 5, 5, 5, 'nestle', 2000, 2250, '29/05/2019'),
(143, '7501058625915', 'nestle lactogen 1 400g tin', 'milk', '2019-11-11', 6, 6, 6, 'nestle', 1300, 1500, '29/05/2019'),
(144, '7501058625922', 'nestle lactogen 2 400g tin', 'milk', '2019-11-11', 3, 3, 3, 'nestle', 1300, 1500, '29/05/2019'),
(145, '7501058625939', 'nestle nan optipro 2 400g tin', 'milk', '2020-03-03', 6, 6, 6, 'nestle', 2000, 2100, '29/05/2019'),
(146, '7613035502727', 'nestle optipro 1 400g tin', 'milk', '2021-02-28', 1, 1, 1, 'nestle', 2000, 2100, '29/05/2019'),
(147, '7613031808328', 'nestle nan optipro 1 400g tin', 'milk', '2020-06-06', 6, 6, 6, 'nestle', 2000, 2100, '29/05/2019'),
(148, '6151100031853', 'nestle golden morn puffs 500g packet', 'cereal', '2019-08-08', 1, 1, 1, 'nestle', 800, 900, '29/05/2019'),
(149, '5051594006829', 'aptamil follow on milk 800g container', 'milk', '2020-06-02', 2, 2, 2, 'aptamil', 6000, 6200, '29/05/2019'),
(150, 'nestle nescafe 2g sachet roll', 'nestle nescafe 2g sachet roll', 'tea', '2020-07-07', 4, 4, 4, 'nestle', 230, 300, '29/05/2019'),
(151, '6156000057354', 'infinity corn flakes 350g pack', 'cereal', '2019-08-02', 2, 2, 2, 'infinity', 500, 600, '29/05/2019'),
(152, '6301102020052', 'nasco corn flakes 350g pack', 'cereal', '2019-11-06', 2, 2, 2, 'nasco', 550, 600, '29/05/2019'),
(153, '4008569027403', 'good morning corn flakes 450g pack', 'cereal', '2020-02-02', 8, 8, 8, 'good morning', 700, 800, '29/05/2019'),
(154, '7891331014551', 'nutribom banana and appple cereal', 'cereal', '2020-06-10', 4, 4, 4, 'nutribom', 600, 700, '29/05/2019'),
(155, '6154000015404', 'devon kings pure vegetable oil 3 ltr', 'oil', '2020-01-08', 1, 1, 1, 'devon', 1800, 2000, '29/05/2019'),
(156, '6156000141817', 'laziz cholesterol free pure vegetable oi', 'oil', '1111-11-11', 4, 4, 4, 'laziz', 1700, 2000, '29/05/2019'),
(157, '6154000016678', 'devon kings pure vegetable oil 1 ltr', 'oil', '2019-12-24', 4, 4, 4, 'devon', 650, 800, '29/05/2019'),
(158, '6156000100012', 'power oil 75cl bottle', 'oil', '2019-09-13', 4, 4, 4, 'power oil', 650, 700, '29/05/2019'),
(159, '6156000208497', 'power oil 1.6 ltr bottle', 'oil', '2020-02-19', 4, 4, 4, 'power oil', 900, 1100, '29/05/2019'),
(160, '6156000032207', 'goldenpenny pasta spaghetti 500g', 'noodles', '2020-04-18', 20, 20, 20, 'goldenpenny', 170, 200, '29/05/2019'),
(161, '6154000095116', 'indomie instant noodles belle full pack', 'noodles', '2020-05-09', 14, 14, 14, 'indomie', 170, 200, '29/05/2019'),
(162, '6156000032276', 'goldenpenny pasta macaroni 550g', 'noodles', '2019-07-30', 5, 5, 5, 'goldenpenny', 160, 200, '29/05/2019'),
(163, '6156000076690', 'indomie instant noodles hungry man pack', 'noodles', '2019-07-14', 8, 8, 8, 'indomie', 120, 150, '29/05/2019'),
(164, '6154000095109', 'indomie instant noodles giant pack', 'noodles', '2020-04-14', 1, 1, 1, 'indomie', 200, 250, '29/05/2019'),
(165, '089686130027', 'indomie instant noodles super pack', 'noodles', '2020-04-08', 25, 25, 25, 'indomie', 80, 90, '29/05/2019'),
(166, '6946439100031', 'tummy tummy chicken flavour 120g', 'noodles', '2020-02-27', 15, 15, 15, 'tummy tummy', 60, 70, '29/05/2019'),
(167, '089686130010', 'indomie instant noodles indomitable pack', 'noodles', '2020-05-16', 26, 26, 26, 'indomie', 40, 50, '29/05/2019'),
(168, '6949621101274', 'peace tomatoe paste 400g tin', 'sauce', '2020-03-27', 1, 1, 1, 'peace', 200, 250, '29/05/2019'),
(169, '6950930610029', 'sarah tomato paste 400g tin', 'sauce', '2020-08-22', 1, 1, 1, 'sarah', 250, 300, '29/05/2019'),
(171, 'sarah medium tomato paste 210g tin', 'sarah medium tomato paste 210g tin', 'sauce', '2020-07-23', 4, 4, 4, 'sarah', 150, 170, '29/05/2019'),
(172, '4897052892556', 'gino tomato mix 400g tin', 'sauce', '2020-05-15', 4, 4, 4, 'gino', 350, 370, '29/05/2019'),
(173, 'titus sardine 125g tin', 'titus sardine 125g tin', 'fish', '1111-11-11', 26, 26, 26, 'titus', 220, 250, '29/05/2019'),
(174, 'sarah small tomato paste 70g tin', 'sarah small tomato paste 70g tin', 'sauce', '2020-09-01', 4, 4, 4, 'sarah', 50, 60, '29/05/2019'),
(175, 'todays medium tomato paste 210g tin', 'todays medium tomato paste 210g tin', 'sauce', '2020-09-23', 10, 10, 10, 'todays', 120, 150, '29/05/2019'),
(176, '4897044170136', 'lavonce big tomato paste 400g tin', 'sauce', '2020-08-04', 5, 5, 5, 'lavonce', 300, 320, '29/05/2019'),
(177, '6154000050078', 'tasty tom tomato paste 70g sachet', 'sauce', '2020-10-10', 16, 16, 16, 'tasty tom', 30, 50, '29/05/2019'),
(178, '4897052892464', 'gino magic peppe & onion tomato paste 70', 'sauce', '2021-03-03', 18, 18, 18, 'gino', 30, 50, '29/05/2019'),
(179, '4897052892297', 'gino tomato paste 70g sachet ', 'sauce', '2020-11-11', 31, 31, 31, 'gino', 40, 60, '29/05/2019'),
(180, 'good time medium tomato paste 210g tin', 'good time medium tomato paste 210g tin', 'sauce', '2020-04-18', 1, 1, 1, 'good time ', 120, 150, '29/05/2019'),
(181, '4897052890149', 'gino medium tomato paste 210g tin', 'sauce', '2019-09-11', 7, 7, 7, 'gino', 150, 170, '29/05/2019'),
(182, '6151100039897', 'maggi star packet', 'sauce', '2020-05-05', 3, 3, 3, 'maggi', 350, 400, '29/05/2019'),
(183, '6935689500333', 'dinor  mackerel in tomato sauce 155g tin', 'fish', '2021-06-16', 21, 21, 21, 'dinor', 150, 200, '29/05/2019'),
(184, 'knorr cube packet', 'knorr cube packet', 'sauce', '2020-09-28', 5, 5, 5, 'knorr', 500, 550, '29/05/2019'),
(185, '6156000010601', 'cway apple nutri milk 210ml', 'drink', '2019-09-17', 13, 13, 13, 'cway', 50, 70, '29/05/2019'),
(186, '6156000010618', 'cway pineapple nutri milk 210ml', 'drink', '0000-00-00', 8, 8, 8, 'cway', 50, 70, '29/05/2019'),
(187, '6152110057864', 'cway orange nutri milk 210ml', 'drink', '2019-09-17', 7, 7, 7, 'cway', 50, 70, '29/05/2019'),
(188, '6153400041761', 'viju apple milk drink 210ml', 'drink', '2019-10-05', 15, 15, 15, 'viju', 40, 60, '29/05/2019'),
(189, '6922550668698', 'finrose baby diapers large', 'baby diapers', '1111-11-11', 1, 1, 1, 'finrosy', 3800, 4004, '30/05/2019'),
(190, '6922550668674', 'finrosy baby diapers Medium', 'baby diapers', '1111-11-11', 1, 1, 1, 'finrosy', 3802, 4000, '30/05/2019'),
(191, '6958259360441', 'volicbaby 102pcs', 'baby diapers', '1111-11-11', 2, 2, 2, 'volicbaby', 3800, 4000, '30/05/2019'),
(192, '6931610302670', 'Angel baby diapers 72 pcs', 'baby diapers large', '1111-11-11', 1, 1, 1, 'angel', 3800, 4100, '30/05/2019'),
(193, ' 6931610302687', ' Angel baby diapers', 'baby diapers small 19pcs', '1111-11-11', 1, 1, 1, 'angel', 3800, 4100, '30/05/2019'),
(194, '705632828670', 'Irony baby diapers', 'baby diapers 32 pcs Large', '1111-11-11', 2, 2, 2, 'IRONY', 1800, 2000, '30/05/2019'),
(195, '6958259390202', 'kids nature baby diapers', 'baby diapers large', '1111-11-11', 2, 2, 2, 'kids nature', 2299, 2400, '30/05/2019'),
(196, '6150059785473', 'Virony baby diapers', 'baby diapers 50pcs small', '1111-11-11', 1, 1, 1, 'virony', 1896, 2000, '30/05/2019'),
(197, '8690536816521', 'Molfix baby diaper maxi 80pcs', 'baby diapers', '1111-11-11', 2, 2, 2, 'molfix', 4000, 4100, '30/05/2019'),
(198, '6922716610455', 'Softrux baby diapers large', 'baby diapers', '1111-11-11', 1, 1, 1, 'softrux', 4000, 4100, '30/05/2019'),
(199, '8690536816453', 'Molfix baby diapers ', 'baby diapers mini 40pcs', '1111-11-11', 4, 4, 4, 'molfix', 1700, 1800, '30/05/2019'),
(202, '8690536816477', 'Molfix midi baby diapers 9pcs', 'baby diapers', '1111-11-11', 2, 2, 2, 'molfix', 450, 500, '30/05/2019'),
(203, '8690536816507', 'Molfix baby diaper maxi 8pcs', 'baby diapersmaxi 8pcs', '1111-11-11', 8, 8, 8, 'molfix', 450, 500, '30/05/2019'),
(204, '8690536816538', 'Molfix baby diapers junior ', 'baby diapers7pcs', '1111-11-11', 2, 2, 2, 'molfix', 450, 500, '30/05/2019'),
(205, '6001019908800', 'Huggies baby diapers size 2', 'baby diapers mini ', '1111-11-11', 2, 2, 2, 'huggies', 600, 650, '30/05/2019'),
(206, '6001019905854', 'Huggies baby diapers size 3', 'baby diapers midi', '1111-11-11', 3, 3, 3, 'huggies', 600, 650, '30/05/2019'),
(207, '19905878', 'Huggies baby diapers size 4', 'baby diapers maxi', '1111-11-11', 1, 1, 1, 'huggies', 600, 650, '30/05/2019'),
(208, '6001019908909', 'Huggies baby essentials size 2', 'baby diapers mini ', '1111-11-11', 3, 3, 3, 'huggies', 600, 650, '30/05/2019'),
(209, '6001019908947', 'Huggies baby essentials size 3', 'baby diapers midi ', '1111-11-11', 1, 1, 1, 'huggies', 600, 650, '30/05/2019'),
(210, '8690536816446', 'Molfix baby diaper mini 10pcs', 'baby diapers', '1111-11-11', 1, 1, 1, 'molfix', 450, 500, '30/05/2019'),
(211, '6001019908886', 'Huggies baby essentials size 2 mini', 'baby diapers mini 84pcs', '1111-11-11', 1, 1, 1, 'huggies', 1700, 1800, '30/05/2019'),
(212, '6001019908824', 'Huggies dry comfort size 2 mini', 'baby diapers mini 68pcs', '1111-11-11', 1, 1, 1, 'huggies', 2700, 2800, '30/05/2019'),
(214, '6001019908923', 'Huggies baby essentials size 3 44pcs', 'baby diapers midi', '1111-11-11', 2, 2, 2, 'huggies', 1700, 1800, '30/05/2019'),
(215, '6958259390509', 'Angel Adult diapers 9 pcs', 'baby diapers x-large', '1111-11-11', 2, 2, 2, 'angel', 1600, 1700, '30/05/2019'),
(216, '6958259390233', 'Angel Adult diapers 10 pcs', 'adult baby diapers large', '1111-11-11', 2, 2, 2, 'angel', 1600, 1700, '30/05/2019'),
(217, '6958259390301', 'Angel Adult diapers 11 pcs', 'adult diapers medium', '1111-11-11', 2, 2, 2, 'angel', 1600, 1700, '30/05/2019'),
(218, '6922006491412', 'Virony unisex adult  diaper', 'unisex adult diaper xl 10pcs', '1111-11-11', 2, 2, 2, 'virony', 1700, 1800, '30/05/2019'),
(219, '6922006493096', 'Virony baby wipes', 'strawberry baby wipe 120pcs', '1111-11-11', 5, 5, 5, 'virony', 550, 600, '30/05/2019'),
(220, '6922006493041', 'Virony baby wipes 100pcs', 'apple scent baby wipe', '1111-11-11', 2, 2, 2, 'virony', 500, 550, '30/05/2019'),
(221, '3574660420951', 'Johnsons baby lotion ', 'baby lotion 500ml', '1111-11-11', 1, 1, 1, 'johnson', 900, 1000, '30/05/2019'),
(222, '6001011312988', 'Johnsons baby lotion ', 'aqueous cream', '1111-11-11', 3, 3, 3, 'johnson', 1100, 1200, '30/05/2019'),
(223, '769658790007', 'Angel baby wipes 125pcs pcs', 'baby wipe ', '1111-11-11', 10, 10, 10, 'angel', 550, 600, '30/05/2019'),
(224, '769658790014', 'Angel baby wipes  40pcs', 'baby wipes', '2019-01-07', 11, 11, 11, 'angel', 200, 250, '30/05/2019'),
(225, '5039092142010', 'nycil menthol rub', 'rub ', '1111-11-11', 10, 10, 10, 'nycil', 100, 150, '30/05/2019'),
(226, 'floxy smoothy cream', 'cream', 'body cream cool and soft', '1111-11-11', 11, 11, 11, 'floxy', 100, 150, '30/05/2019'),
(227, 'hero misa cotton bud ', 'cotten bud', 'cotten bud', '1111-11-11', 11, 11, 11, 'hero misa', 20, 30, '30/05/2019'),
(228, 'baby cherie ', 'cotten bud', 'cotten bud', '1111-11-11', 6, 6, 6, 'baby cherie', 80, 100, '30/05/2019'),
(229, '8850014429876', 'baby cherie', 'cotton bud', '1111-11-11', 6, 6, 6, 'baby cherie', 80, 100, '30/05/2019'),
(230, 'Authentic herbal cream', 'cream', 'cream', '1111-11-11', 8, 8, 8, 'authentic', 80, 100, '30/05/2019'),
(231, 'chimek aloe vera cream', 'cream', 'anti body spot', '1111-11-11', 3, 3, 3, 'chimek', 100, 150, '30/05/2019'),
(232, '6950616371688', 'Angel cotton swabs', 'cotten bud', '1111-11-11', 2, 2, 2, 'angel', 300, 350, '30/05/2019'),
(233, '6154000018559', 'Cussons baby oil', 'baby oil', '1111-11-11', 5, 5, 5, 'cussons', 400, 450, '30/05/2019'),
(234, '6009800434033', 'purit antiseptic ', 'antiseptic', '1111-11-11', 4, 4, 4, 'purit', 450, 500, '30/05/2019'),
(235, '6920180301633', 'li-link cotton buds', 'cotten bud', '1111-11-11', 8, 8, 8, 'li-link', 100, 150, '30/05/2019'),
(236, '6156000027708', 'Rising Raving Baby powder', 'baby power', '2022-04-10', 1, 1, 1, 'rising', 100, 150, '30/05/2019'),
(237, '8020282974679', 'Nursing Nurse baby powder', 'baby powder', '2021-03-01', 2, 2, 2, 'nursing', 100, 150, '30/05/2019'),
(239, '6156000027722', 'Rising Raving Baby powder 240g', 'baby powder', '2022-05-11', 4, 4, 4, 'rising', 250, 300, '30/05/2019'),
(241, 'Nursing Nurse baby powder 100g small', 'Nursing Nurse baby powder 100g', 'baby powder', '2021-04-30', 2, 2, 2, 'nursing', 100, 150, '30/05/2019'),
(243, '8901162031487', 'Marhaba prickly Heat powder ICE', 'heat powder', '2021-03-01', 2, 2, 2, 'marhaba', 450, 550, '30/05/2019'),
(244, '8901162031494', 'Marhaba prickly Heat powder sandal', 'heat powder', '2021-04-08', 2, 2, 2, 'marhaba', 450, 550, '30/05/2019'),
(245, '8901162031470', 'Marhaba prickly Heat powder ROSE', 'heat powder', '2021-01-04', 2, 2, 2, 'marhaba', 450, 550, '30/05/2019'),
(246, '707959810109', 'chizycare heat powder ice cool', 'heat powder', '2021-03-01', 2, 2, 2, 'chizycare', 250, 300, '30/05/2019'),
(247, 'chizycare heat powder sandal ', 'chizycare prickly heat powder', 'prickly heat powder', '2021-03-01', 2, 2, 2, 'chizycare', 250, 300, '30/05/2019'),
(248, 'chizycare prickly heat powder Rose', 'chizycare prickly heat powder Rose', 'heat powder', '2021-03-01', 1, 1, 1, 'chizycare', 250, 300, '30/05/2019'),
(249, '8852086112052', 'st lukes prickly heat soap', 'heat soap', '1111-11-11', 4, 4, 4, 'st lukes', 400, 450, '30/05/2019'),
(250, '8852086100097', 'st lukes prickly heat powder', 'heat powder', '2020-08-22', 2, 2, 2, 'st lukes', 450, 500, '30/05/2019'),
(251, 'Excel baby perfumed jelly 85ml medium', 'Excel baby perfumed jelly', 'cream', '2020-10-02', 4, 4, 4, 'excel', 150, 200, '30/05/2019'),
(252, 'Excel baby perfumed jelly 45ml small', 'Excel baby perfumed jelly 45ml small', 'cream', '2021-11-03', 6, 6, 6, 'excel', 70, 100, '30/05/2019'),
(253, 'Excel baby perfumed jelly 210ml big', 'Excel baby perfumed jelly 210ml big', 'cream', '2021-02-02', 3, 3, 3, 'excel', 200, 250, '30/05/2019'),
(254, '6151100139511', 'Vaseline blue seal', 'cream', '2021-09-05', 2, 2, 2, 'unilever', 250, 300, '30/05/2019'),
(255, '6151100139122', 'pears mosturizing cream medium', 'cream', '2019-10-27', 6, 6, 6, 'pears', 250, 300, '30/05/2019'),
(256, '6151100138736', 'pears mosturizing cream big', 'cream', '2019-12-20', 5, 5, 5, 'pears', 450, 500, '30/05/2019'),
(257, '381370032625', 'Johnsons baby bar', 'baby soap', '1111-11-11', 3, 3, 3, 'johnson', 1100, 1200, '30/05/2019'),
(258, '6154000018658', 'Cussons baby soap', 'baby soap', '2022-03-31', 2, 2, 2, 'cussons', 70, 100, '30/05/2019'),
(259, '6009826820414', 'tetmosol baby soft ', 'baby soap', '2020-12-22', 6, 6, 6, 'tetmosol', 150, 200, '30/05/2019'),
(260, '6154000016913', 'pz cussons Nigerian baby care 210ml', 'cream', '2021-11-01', 6, 6, 6, 'pz', 300, 350, '30/05/2019'),
(261, '3574661242200', 'johnson body care vita rich soap', 'soap', '2021-06-06', 6, 6, 6, 'johnson', 180, 200, '30/05/2019'),
(262, '6033000102669', 'robb ointment small tin', 'ointment', '2021-11-11', 40, 40, 40, 'robb', 20, 30, '30/05/2019'),
(263, 'agnesia baby soap milk and honey', 'agnesia baby soap milk and honey', 'soap', '2021-03-03', 5, 5, 5, 'agnesia', 170, 200, '30/05/2019'),
(264, 'roselyn smoothy cream ', 'roselyn smoothy cream ', 'pomade', '2021-10-10', 6, 6, 6, 'roselyn', 180, 200, '30/05/2019'),
(265, '6181100320657', 'familia cream', 'cream', '2021-12-12', 4, 4, 4, 'familia', 350, 400, '30/05/2019'),
(266, '8690536023134', 'familia classic toilet roll', 'toilet paper', '1111-11-11', 34, 34, 34, 'familia', 100, 150, '30/05/2019'),
(267, 'rapha soft tissue big', 'rapha soft tissue big', 'toilet paper', '1111-11-11', 10, 10, 10, 'rapha', 180, 200, '30/05/2019'),
(268, '5285001820771', 'softwave white tissue jumbo size', 'toilet paper', '1111-11-11', 12, 12, 12, 'softwave', 200, 200, '30/05/2019'),
(269, '8690536023103', 'familia ultra strawberry scented tissue', 'toilet paper', '1111-11-11', 25, 25, 25, 'familia', 100, 150, '30/05/2019'),
(270, '8690536023080', 'familia ultra strong and absorbent toile', 'toilet paper', '1111-11-11', 11, 11, 11, 'familia', 100, 150, '30/05/2019'),
(271, '5285001821501', 'rose carla satin soft tissue', 'toilet paper', '1111-11-11', 7, 7, 7, 'rose', 350, 350, '30/05/2019'),
(272, '8656862299995', 'uk rolls jumbo tissue', 'toilet paper', '1111-11-11', 2, 2, 2, 'uk', 200, 200, '30/05/2019'),
(273, '6156000078854', 'seven stars white tissue', 'toilet paper', '1111-11-11', 3, 3, 3, 'seven stars', 70, 70, '30/05/2019'),
(274, 'seven stars white tissue pack', 'seven stars white tissue pack', 'toilet paper', '1111-11-11', 10, 10, 10, 'seven stars', 350, 350, '30/05/2019'),
(275, '6153400063312', 'vivan bigger and better saviet', 'toilet paper', '1111-11-11', 10, 10, 10, 'vivian', 100, 100, '30/05/2019'),
(276, 'rose family tissue pack', 'rose family tissue pack', 'toilet paper', '1111-11-11', 9, 9, 9, 'rose', 350, 350, '30/05/2019'),
(277, 'bobby soft tissue single', 'bobby soft tissue single', 'toilet paper', '1111-11-11', 8, 8, 8, 'bobby', 50, 50, '30/05/2019'),
(278, 'bobby soft tissue pack', 'bobby soft tissue pack', 'toilet paper', '1111-11-11', 4, 4, 4, 'bobby', 350, 350, '30/05/2019'),
(279, '79993333', 'corner stone toilet tissue', 'toilet paper', '1111-11-11', 5, 5, 5, 'conerstone', 200, 200, '30/05/2019'),
(280, 'nody tissue paper pack', 'nody tissue paper pack', 'toilet paper', '1111-11-11', 6, 6, 6, 'nody', 350, 350, '30/05/2019'),
(281, '6951794143234', 'lady care with wings', 'toilet paper', '2021-03-03', 8, 8, 8, 'lady care', 300, 300, '30/05/2019'),
(282, '6921269110207', 'dry love sanitary napkin', 'toilet paper', '2021-06-09', 9, 9, 9, 'drylove ', 350, 350, '30/05/2019'),
(283, '8001090291608', 'always classic thick', 'toilet paper', '1111-11-11', 9, 9, 9, 'always', 350, 350, '30/05/2019'),
(284, '6935079114768', 'sunfree sanitary napkins heavy flow with wings', 'toilet paper', '1111-11-11', 18, 18, 18, 'sunfree', 350, 350, '30/05/2019'),
(285, '6935079114751', 'sunfree sanitary napkins normal flow with wings', 'toilet paper', '1111-11-11', 19, 19, 19, 'sunfree', 350, 350, '30/05/2019'),
(286, '4015400074366', 'always ultra ', 'toilet paper', '2020-11-10', 7, 7, 7, 'always', 350, 350, '30/05/2019'),
(287, '6958259390226', 'angel ultra slim pads with anion chips', 'toilet paper', '2023-04-10', 9, 9, 9, 'angel', 350, 350, '30/05/2019'),
(288, '6958259390219', 'angel ultra slim pads with anion chips', 'toilet paper', '1111-11-11', 13, 13, 13, 'angel', 350, 350, '30/05/2019'),
(289, '6922006495007', 'virony precious lady sanitary pad ', 'toilet paper', '2021-09-05', 5, 5, 5, 'virony', 350, 350, '30/05/2019'),
(290, '6180210000329', 'ladysept de luxe super hygienic sanitary towels', 'toilet paper', '2021-03-10', 5, 5, 5, 'ladysept', 400, 400, '30/05/2019'),
(291, '616932101021', 'new comfit comfort plu & reliable', 'toilet paper', '2020-04-04', 3, 3, 3, 'comfit', 400, 400, '30/05/2019'),
(292, 'virony smart lady sanitary pad', 'virony smart lady sanitary pad', 'toilet paper', '1111-11-11', 2, 2, 2, 'virony', 750, 750, '30/05/2019'),
(293, '6958259381415', 'angel mentholated sanitary pads', 'toilet paper', '2023-07-23', 2, 2, 2, 'angel', 700, 700, '30/05/2019'),
(294, '8001090993410', 'always cotton soft maxi thick', 'toilet paper', '2021-02-15', 9, 9, 9, 'always', 350, 350, '30/05/2019'),
(295, 'fragrance club exclusive', 'fragrance club exclusive', 'perfume', '2023-08-08', 2, 2, 2, 'cybele', 2500, 2500, '30/05/2019'),
(296, 'emergency perfume ', 'emergency perfume ', 'perfume', '2021-08-08', 1, 1, 1, 'emergency', 5500, 5500, '30/05/2019'),
(297, '5285002320065', 'passion parfum deodorant spray', 'perfume', '2023-05-02', 2, 2, 2, 'passion', 700, 700, '30/05/2019'),
(298, '6291106069792', 'destiny homme lamuse perfumed spray', 'perfume', '2023-01-01', 1, 1, 1, 'destiny', 1500, 1500, '30/05/2019'),
(299, '6156000070124', 'onleeu eau de parfum vaporisateur natural spray', 'perfume', '1111-01-01', 1, 1, 1, 'onleeu', 3000, 3000, '30/05/2019'),
(300, 'brown leather perfumed deodorant body spray', 'brown leather perfumed deodorant body spray', 'perfume', '2021-10-10', 1, 1, 1, 'brown leather', 900, 900, '30/05/2019'),
(301, '6291100171255', 'active man anti perspirant deodorant body spray-pour homme chris adams', 'perfume', '1111-11-11', 1, 1, 1, 'active man', 900, 900, '30/05/2019'),
(302, '026169097729', 'big attitude spray cologne', 'perfume', '1111-11-11', 1, 1, 1, 'bigt attitude', 2000, 2000, '30/05/2019'),
(303, '6460458085662', 'evidence smart collection NO 363', 'perfume', '1111-11-11', 1, 1, 1, 'smart', 800, 800, '30/05/2019'),
(304, '5285002321208', 'cybele gold eau de parfum', 'perfume', '0023-11-11', 1, 1, 1, 'cybele', 3500, 3500, '30/05/2019'),
(305, '6291106068931', 'twilight pour femme perfumed spray', 'perfume', '2023-01-01', 2, 2, 2, 'twilight', 900, 900, '30/05/2019'),
(306, '6460458064742', 'hugo smart collection NO 28', 'perfume', '2022-01-01', 1, 1, 1, 'hugo', 800, 800, '30/05/2019'),
(307, '6291106068689', 'ajmal hubb perfumed spray', 'perfume', '2023-05-02', 1, 1, 1, 'ajmal', 900, 900, '30/05/2019'),
(308, '8745879256739', 'explore woman perfumed deodorant body spray', 'perfume', '2022-06-06', 1, 1, 1, 'explore', 900, 900, '30/05/2019'),
(309, '6156000070223', 'doobai body spray cologne ', 'perfume', '2023-10-10', 3, 3, 3, 'doobai', 800, 800, '30/05/2019'),
(310, '6936711886579', 'dancer women perfumed deodorant body spray', 'dancer', '1111-11-11', 1, 1, 1, 'dancer', 900, 900, '30/05/2019'),
(311, '6154000107567', 'swiss flower air refreshner fresh air', 'air refreshner', '2021-01-14', 3, 3, 3, 'dettol', 500, 500, '30/05/2019'),
(312, '6154000107574', 'swiss flower air refreshner sweet pine', 'air refreshner', '2021-01-18', 4, 4, 4, 'swiss', 500, 500, '30/05/2019'),
(313, '9715593082340', 'new soft flower extra moisturizing & lightening cream', 'cream', '2022-10-16', 1, 1, 1, 'soft', 900, 900, '30/05/2019'),
(314, 'puritil for steriling water and baby wares 1 liter', 'puritil for steriling water and baby wares 1 liter', 'antiseptic', '2020-12-12', 2, 2, 2, 'puritil', 500, 500, '30/05/2019'),
(315, '6009695934649', 'new jik 101 stains perfumed ', 'antiseptic', '2020-05-05', 5, 5, 5, 'jik', 300, 300, '30/05/2019'),
(316, '6156000039626', 'hypo 1 liter container', 'antiseptic', '2020-12-16', 9, 9, 9, 'hypo', 1000, 1000, '30/05/2019'),
(317, '6154000018085', 'cussons morning fresh super concentrate 450ml', 'soap', '2021-06-06', 2, 2, 2, 'cussons', 300, 300, '30/05/2019'),
(318, '6156000039619', 'hypo 500ml container', 'antiseptic', '2021-01-21', 4, 4, 4, 'hypo', 300, 300, '30/05/2019'),
(319, 'cussons morning fresh super concentrate 200ml', 'cussons morning fresh super concentrate 200ml', 'soap', '2021-04-04', 4, 4, 4, 'cussons', 150, 150, '30/05/2019'),
(320, 'skin so smooth carrot 400ml', 'skin so smooth carrot 400ml', 'cream', '2021-07-07', 2, 2, 2, 'skin-so-smooth', 1000, 1000, '30/05/2019'),
(321, '6156000027722', 'rising raving baby powder 240g', 'powder', '2022-11-05', 1, 1, 1, 'rising', 300, 300, '30/05/2019'),
(322, '6181100530063', 'caro white 120ml', 'cream', '2020-08-20', 1, 1, 1, 'caro white', 300, 300, '30/05/2019'),
(323, '6156000118154', 'skin naturelle siperco body lotion lait corporel', 'cream', '2021-09-09', 4, 4, 4, 'skin', 600, 600, '30/05/2019'),
(324, '6001087011136', 'vaseline healthy white uv lightening whitening & even tone lotion 400ml', 'cream', '2021-10-10', 2, 2, 2, 'vaseline', 700, 700, '30/05/2019'),
(325, '75549682', 'myk skin-so-smooth lightening body control lotion', 'cream', '2021-09-09', 3, 3, 3, 'myk', 1000, 1000, '30/05/2019'),
(326, '6009695935400', 'dettol antiseptic disinfectant 165ml', 'antiseptic', '2022-01-01', 2, 2, 2, 'dettol', 350, 350, '30/05/2019'),
(327, '8286459800091', 'levinia style fine fragrance talc 125g', 'powder', '2021-03-03', 1, 1, 1, 'levinia', 700, 700, '30/05/2019'),
(328, '6009695935417', 'dettol antiseptic disinfectant 75ml', 'antiseptic', '2022-03-03', 4, 4, 4, 'dettol', 200, 200, '30/05/2019'),
(329, '6182000105658', 'spa ocean waves deodorant 50ml', 'perfume', '2022-08-08', 4, 4, 4, 'spa', 350, 350, '30/05/2019'),
(330, '4800119216172', 'papaya calamansi extract whitening lotion', 'cream', '2020-11-11', 4, 4, 4, 'extract', 1200, 1200, '30/05/2019'),
(331, '8886459200985', 'levinia style fine fragrance talc 50g', 'powder', '2021-04-09', 1, 1, 1, 'levinia', 350, 350, '30/05/2019'),
(332, 'izal highly concentrated the universal germicide 150ml', 'izal highly concentrated the universal germicide 150ml', 'antiseptic', '2020-08-08', 12, 12, 12, 'izal', 350, 350, '30/05/2019'),
(333, '3551440201771', 'active man total moisturing body milk 410ml', 'cream', '1111-11-11', 1, 1, 1, 'active man', 800, 800, '30/05/2019'),
(334, '8906009234083', 'funbact-a triple action cream 30g', 'cream', '2020-12-12', 18, 18, 18, 'funbact', 300, 300, '30/05/2019'),
(335, 'visita plus triple action cream 30g', 'vista plus triple action cream 30g', 'cream', '2021-04-04', 4, 4, 4, 'visita ', 300, 300, '30/05/2019'),
(336, 'beneks fashion fair cream 25g tube', 'beneks fashion fair cream 25g tube', 'cream', '2023-06-06', 3, 3, 3, 'beneks', 300, 300, '30/05/2019'),
(337, '8886023820021', 'tempovate gel 30g ', 'cream', '2020-03-03', 3, 3, 3, 'tempovate', 350, 350, '30/05/2019'),
(338, '6182000104309', 'carotone black spot corrector 30ml', 'cream', '1111-11-11', 2, 2, 2, 'carotone', 300, 300, '30/05/2019'),
(339, '6181100530070', 'caro white 50ml', 'cream', '2020-08-08', 6, 6, 6, 'caro white', 300, 300, '30/05/2019'),
(340, '5285002321833', 'passion talcum powder 200g', 'powder', '2021-09-09', 3, 3, 3, 'passion', 300, 300, '30/05/2019'),
(341, 'egg white black spot removal 70g', 'egg white black spot removal 70g', 'cream', '1111-11-11', 2, 2, 2, 'egg white', 300, 300, '30/05/2019'),
(342, 'absolute oil skin softner glycerine 500ml', 'absolute oil skin softner glycerine 500ml', 'oil', '1111-11-11', 2, 2, 2, 'absolute', 200, 200, '30/05/2019'),
(343, '6946844501164', 'animate vitamin e facial essense', 'ointment', '2021-04-18', 1, 1, 1, 'animate', 50, 50, '30/05/2019'),
(344, '6154000018078', 'cussons morning fresh dishwashing liquid 1 liter', 'soap', '1111-11-11', 3, 3, 3, 'cussons', 800, 800, '30/05/2019'),
(345, '6182000100455', 'carotone light & natural dsp10 collagen formula 215ml', 'cream', '2021-05-05', 1, 1, 1, 'carotone', 600, 600, '30/05/2019'),
(346, '6181100530025', 'caro white 200ml', 'cream', '2020-08-08', 1, 1, 1, 'caro white', 550, 550, '30/05/2019'),
(347, 'clinic clear lightening body lotion 250ml', 'clinic clear lightening body lotion 250ml', 'cream', '2022-09-09', 1, 1, 1, 'clinic', 1000, 1000, '30/05/2019'),
(348, '6001106101800', 'dettol antiseptic disinfectant 1 liter', 'antiseptic', '1111-11-11', 1, 1, 1, 'dettol', 1800, 1800, '30/05/2019'),
(349, '5060148950860', 'Z germicide', 'antiseptic', '2020-10-10', 6, 6, 6, 'Z', 250, 250, '30/05/2019'),
(350, '6009695935745', 'Dettol skincare pack of 6', 'soap', '1111-11-11', 2, 2, 2, 'dettol', 1600, 1600, '30/05/2019'),
(351, '815069020209', 'pears 125g soap', 'soap', '1111-11-11', 1, 1, 1, 'pears', 400, 400, '30/05/2019'),
(352, '6156000107509', 'zee black soap with aloe vera, honey & shea butter 85g', 'soap', '2021-04-04', 6, 6, 6, 'zee', 200, 200, '30/05/2019'),
(353, '6009826820025', 'tetmosol medicated soap citronella 120g', 'soap', '2022-02-02', 7, 7, 7, 'tetmosol', 400, 400, '30/05/2019'),
(354, '6009826820612', 'tetmosol medicated soap protect plus 75g', 'soap', '2020-05-05', 9, 9, 9, 'tetmosol', 200, 200, '30/05/2019'),
(355, '6009695934458', 'Dettol skincare antibacterial bar 110g', 'soap', '2022-02-02', 4, 4, 4, 'dettol', 300, 300, '30/05/2019'),
(356, '4015600955458', 'safeguard lemon fresh antibacterial soap 70g', 'soap', '2021-09-07', 4, 4, 4, 'safeguard', 200, 200, '30/05/2019'),
(357, '5013965912023', 'safeguard pure white antibacterial soap 175g', 'soap', '2022-02-02', 7, 7, 7, 'safeguard', 350, 350, '30/05/2019'),
(358, '5013965912085', 'safeguard lemon fresh antibacterial soap 175g', 'soap', '2022-04-16', 6, 6, 6, 'safeguard', 350, 350, '30/05/2019'),
(359, '6009695934434', 'Dettol original antibacterial bar 110g', 'soap', '2022-03-03', 3, 3, 3, 'dettol', 300, 300, '30/05/2019'),
(360, '1233445567787', 'sunny peace hair food 50g', 'cream', '2021-05-11', 1, 1, 1, 'sunny', 100, 100, '30/05/2019'),
(361, 'dove pink soap 113g', 'dove pink soap 113g', 'soap', '1111-11-11', 9, 9, 9, 'dove', 550, 550, '30/05/2019'),
(362, '6156000043708', 'tropical naturals dudu-osun black soap', 'soap', '2021-01-01', 3, 3, 3, 'tropical', 200, 200, '30/05/2019'),
(363, '6009826820018', 'tetmosol medicated soap citronella 75g', 'soap', '2021-11-11', 5, 5, 5, 'tetmosol', 200, 200, '30/05/2019'),
(364, '4800119216202', 'papaya calamansi extract whitening herbal soap 125g', 'soap', '2021-10-10', 8, 8, 8, 'extract', 450, 450, '30/05/2019'),
(365, '6156000060118', 'tura soap 65g', 'soap', '2022-02-18', 4, 4, 4, 'tura', 150, 150, '30/05/2019'),
(366, '6009826820629', 'tetmosol cool power 75g', 'soap', '2022-05-05', 6, 6, 6, 'tetmosol', 200, 200, '30/05/2019'),
(367, '6009695935035', 'Dettol original antibacterial bar 65g', 'soap', '2022-04-04', 5, 5, 5, 'dettol', 150, 150, '30/05/2019'),
(368, '6009695935028', 'Dettol best ever cool antibacterial bar 65g', 'soap', '2022-01-01', 6, 6, 6, 'dettol', 150, 150, '30/05/2019'),
(369, '6009826820407', 'tetmosol cool lemon medicated soap citronella 70g', 'soap', '2021-03-03', 7, 7, 7, 'tetmosol', 200, 200, '30/05/2019'),
(370, '6181100530094', 'caro white lightening beauty soap with carrot oil 180g', 'soap', '2023-01-01', 4, 4, 4, 'caro white', 500, 500, '30/05/2019'),
(371, '6151100040251', 'sunshine air freshener', 'air refreshner', '1111-11-11', 6, 6, 6, 'sunshine', 150, 150, '30/05/2019'),
(372, '5285002320751', 'wind air freshener summer breeze', 'air refreshner', '2020-12-12', 6, 6, 6, 'wind', 250, 250, '30/05/2019'),
(373, '802535120259', 'mega growth no lye relaxer', 'hair', '2022-06-06', 3, 3, 3, 'mega', 500, 500, '30/05/2019'),
(374, '816559012964', 'alberto VO5 tea escapes 370ml', 'hair', '1111-11-11', 1, 1, 1, 'alberto', 1000, 1000, '30/05/2019'),
(375, '5285002320683', 'wind air freshener compestre 50g', 'air refreshner', '1111-11-11', 1, 1, 1, 'wind', 100, 100, '30/05/2019'),
(376, '6151100040237', 'sunshine air freshener mixed flowers', 'air refreshner', '1111-11-11', 1, 1, 1, 'sunshine', 150, 150, '30/05/2019'),
(377, '705632130018', 'viva plus 200g', 'detergent powder ', '2021-05-02', 5, 5, 5, 'viva', 100, 150, '30/05/2019'),
(378, '6154000016722', 'zip detergent supreme', 'detergent 1.1kg', '2021-12-02', 6, 6, 6, 'zip', 500, 550, '30/05/2019'),
(379, '6151100138156', 'omo hand washing powder', 'detergent 400gb', '2020-04-28', 1, 1, 1, 'omo', 400, 450, '30/05/2019'),
(380, '5000101928277', 'zip supreme 900g', 'detergent', '2021-05-10', 1, 1, 1, 'zip', 450, 550, '30/05/2019'),
(381, '705632130001', 'viva plus 900g ', 'detergent powder', '2021-01-04', 3, 3, 3, 'viva', 500, 550, '30/05/2019'),
(382, '6151100132390', 'sunlight 2 in 1', 'detergent powder 2kg ', '2020-12-28', 6, 6, 6, 'sunlight', 1000, 1200, '30/05/2019'),
(383, '6301103012193', 'whites brytex', 'detergent 900g', '2021-09-07', 3, 3, 3, 'brytex', 500, 550, '30/05/2019'),
(384, '6301103012322', 'colours brytex detergent', 'detergent 900g', '2021-05-09', 3, 3, 3, 'brytex', 500, 550, '30/05/2019'),
(385, '8001090313560', 'Ariel original detergent 2kg', 'detergent', '1111-11-11', 4, 4, 4, 'ariel', 1200, 1300, '30/05/2019'),
(386, '6152110049395', 'waw multi-use detergent ', 'waw multi-use detergent 900g', '2022-03-03', 8, 8, 8, 'waw', 500, 550, '30/05/2019'),
(387, '5010182974360', 'baygon insecticide 500ml', 'insecticide ', '2022-03-17', 12, 12, 12, 'johnson family company', 1200, 1300, '31/05/2019'),
(388, '6155864590274', 'sunfree double action insecticide 600ml', 'insecticide', '2021-09-11', 13, 13, 13, 'sunfree', 800, 900, '31/05/2019'),
(389, '5010182990193', 'baygon insecticide 300ml', 'insecticide', '2022-06-26', 12, 12, 12, 'johnson family company', 800, 900, '31/05/2019'),
(390, '6009695934526', 'mortein insect killer lemon 400ml', 'insecticide', '2020-05-07', 12, 12, 12, 'mortein', 800, 900, '31/05/2019'),
(391, '6154000113155', 'sniper crawling insect killer 300ml', 'insecticide', '2021-06-16', 12, 12, 12, 'sniper', 700, 800, '31/05/2019'),
(392, '5010182974223', 'Raid multi purpose insect killer 500ml', 'insecticide', '2020-03-16', 12, 12, 12, 'johnson family company', 1200, 1300, '31/05/2019'),
(393, '6154000113070', 'sniper flying insect killer 300ml', 'insecticide', '2021-06-15', 12, 12, 12, 'sniper', 700, 800, '31/05/2019'),
(394, 'Executor', 'insect killer 100ml', 'insecticide', '1111-11-11', 7, 7, 7, 'executor', 400, 500, '31/05/2019'),
(395, 'Nopest insecticide liquid', 'insect killer 100ml', 'insecticide', '1111-11-11', 3, 3, 3, 'nopest', 400, 500, '31/05/2019'),
(396, 'Sniper insecticide liquid', 'insect killer 100ml', 'insecticide', '1111-11-11', 4, 4, 4, 'sniper', 400, 500, '31/05/2019'),
(397, '6151100040107', 'sunshine orginal blue', 'detergent', '2022-04-03', 12, 12, 12, 'sunshine', 70, 100, '31/05/2019'),
(398, 'super kill mosquito coil', 'anti-mosquito', 'insecticide', '2022-03-31', 8, 8, 8, 'super kill', 150, 200, '31/05/2019'),
(399, 'britania bulb', '100watt bulb', 'electric bulb', '1111-11-11', 12, 12, 12, 'britania', 70, 100, '31/05/2019'),
(400, 'Jungsram bulb E27', '60w bulb', 'electric bulb', '1111-11-11', 12, 12, 12, 'jungsram', 70, 100, '31/05/2019'),
(401, 'DD Force insecticide', 'insect killer 100ml', 'insecticide', '1111-11-11', 4, 4, 4, 'dd force', 400, 500, '31/05/2019'),
(402, 'Leo max energy saving bulb 15w ', '15w bulb', 'electric bulb', '1111-11-11', 23, 23, 23, 'leo max', 400, 450, '31/05/2019'),
(403, 'dametek energy bulb 20w', '20w bulb', 'electric bulb', '1111-11-11', 27, 27, 27, 'dametek', 400, 450, '31/05/2019'),
(404, 'Everlite energy saving bulb', '20w bulb', 'electric bulb', '1111-11-11', 23, 23, 23, 'everlite', 400, 450, '31/05/2019'),
(405, 'jungsram 200w bulb', '200w bulb', 'electric bulb', '1111-11-11', 20, 20, 20, 'jungsram', 200, 250, '31/05/2019'),
(406, 'Authentic energy saving bulb ', '20w bulb', 'electric bulb', '1111-11-11', 21, 21, 21, 'authentic', 400, 450, '31/05/2019'),
(407, 'Euro gold energy saving bulb', ' Energy bulb ', 'electric bulb', '1111-11-11', 23, 23, 23, 'euro gold', 400, 450, '31/05/2019');
INSERT INTO `products` (`id`, `product_name`, `product_type`, `product_description`, `product_expiry_date`, `new_quantity`, `current_quantity`, `total_quantity`, `product_supplier`, `cost_price`, `selling_price`, `date_added`) VALUES
(408, 'Leo max energy saving bulb 26w', 'Energy bulb big', 'electric bulb', '1111-11-11', 23, 23, 23, 'leo max', 400, 450, '31/05/2019'),
(409, 'moon light energy saving bulb 20w', 'Energy bulb ', 'electric bulb', '1111-11-11', 23, 23, 23, 'moon light', 400, 450, '31/05/2019'),
(410, 'euromek 36w energy bulb', 'Energy bulb', 'electric bulb', '1111-11-11', 32, 32, 32, 'euromek', 400, 450, '31/05/2019'),
(411, 'sunpower LED Magic Bulb', 'LED bulb 5watts', 'electric bulb', '1111-11-11', 100, 100, 100, 'sunpower', 550, 650, '31/05/2019'),
(412, 'Tigerhead battery  pair', '1.5v ', 'battery', '1111-11-11', 23, 23, 23, 'tigerhead', 150, 200, '31/05/2019'),
(413, '3w  ctorch LED bulb ', 'Energy bulb', 'electric bulb', '1111-11-11', 4, 4, 4, 'ctorch', 400, 450, '31/05/2019'),
(414, 'iron sponge', 'iron sponge', 'washing diishes', '1111-11-11', 10, 10, 10, 'iron sponge', 30, 50, '31/05/2019'),
(415, 'Tudor', 'Larga Duracion', 'battery', '1111-11-11', 15, 15, 15, 'tudor', 150, 200, '31/05/2019'),
(416, 'silver gold', 'extr heavy duty', 'battery', '1111-11-11', 15, 15, 15, 'siver gold', 80, 100, '31/05/2019'),
(417, 'AVO Super', 'extra heavy duty', 'battery', '1111-11-11', 15, 15, 15, 'AVO super', 70, 100, '31/05/2019'),
(418, 'Brush', 'brush', 'hair/shoe brush', '1111-11-11', 10, 10, 10, 'Brush', 30, 50, '31/05/2019'),
(419, '6932229033238', 'Toothpick', 'mouth toothpick', '1111-11-11', 10, 10, 10, 'toothpick', 50, 100, '31/05/2019'),
(420, 'Candle', 'Candle', 'light candle', '1111-11-11', 20, 20, 20, 'Candle', 25, 30, '31/05/2019'),
(421, 'toothpick', 'toothpick', 'mouth toothpick', '1111-11-11', 10, 10, 10, 'toothpick', 30, 50, '31/05/2019'),
(422, 'toothpick small', 'tootrhpick small', 'mouth toothpick', '1111-11-11', 10, 10, 10, 'toothpick small', 30, 50, '31/05/2019'),
(423, '5013965698859', 'Oral B small (strong teeth)', 'brushing teeth', '1111-11-11', 13, 13, 13, 'Oral B', 100, 150, '31/05/2019'),
(424, '5013965698811', 'Oral B (strong teeth) family size', 'brushing tetth', '1111-11-11', 15, 15, 15, 'Oral B', 300, 350, '31/05/2019'),
(425, '5013965746574', 'Oral B pro health ', 'toothpaste ', '1111-11-11', 25, 25, 25, 'Oral B', 500, 550, '31/05/2019'),
(426, '6945573601039', 'lONGRICH', 'Toothpaste', '1111-11-11', 20, 20, 20, 'LONGRICH', 1700, 1750, '31/05/2019'),
(427, '5022496101370', 'Dabur Herbal', 'toothpaste', '1111-11-11', 21, 21, 21, 'Dabur Herbal', 250, 300, '31/05/2019'),
(428, '6152110058267', 'MY MY ', 'toothpaste', '1111-11-11', 30, 30, 30, 'MY MY', 150, 250, '31/05/2019'),
(429, '6939020405660', 'dp led light ', 'torchlight', '1111-11-11', 18, 18, 18, 'DP LED LIGHT', 700, 800, '31/05/2019'),
(430, '6161105660644', 'SENSODYNE', 'TOOTHPASTE', '1111-11-11', 10, 10, 10, 'SENSODYNE', 700, 800, '31/05/2019'),
(431, '6152110058144', 'MY MY POWER GEL+', 'TOOTHPASTE', '1111-11-11', 15, 15, 15, 'MY MY POWER VGEL+', 180, 200, '31/05/2019'),
(432, '6161105660514', 'MILK TEETH', 'TOOTHPASTE', '1111-11-11', 19, 19, 19, 'MILK TEETH', 200, 250, '31/05/2019'),
(433, '6154000013967', 'PEPSODENT', 'TRIPLE PROTECTION123 TOOTHPASTE', '1111-11-11', 15, 15, 15, 'PEPSODENT', 250, 300, '31/05/2019'),
(434, '6151100130457', 'CLOSE UP ROUGE INTENSE', 'TOOTHPASTE', '1111-11-11', 15, 15, 15, 'CLOSE UP ROUGE INTENSE', 250, 300, '31/05/2019'),
(435, '6151100139467', 'CLOSE UP RED HOT ', 'TOOTHPASTE', '1111-11-11', 10, 10, 10, 'CLOSE UP RED HOT', 100, 150, '31/05/2019'),
(436, '6161105661900', 'MACLEANS', 'MACLEANS COMPLETE CARE', '1111-11-11', 19, 19, 19, 'MACLEANS', 300, 350, '31/05/2019'),
(437, '4015600546281', 'Oral B PRO HEALTH (FAMILY SIZE)', 'TOOTHPASTE', '1111-11-11', 6, 6, 6, 'Oral B PRO HEALTH (FAMILY SIZE)', 300, 350, '31/05/2019'),
(438, 'AK', 'LIGHTER BRAND', 'LIGHTER', '1111-11-11', 20, 20, 20, 'AK LIGHTER BRAND', 30, 50, '31/05/2019'),
(439, '8690757702023', 'SILVER ', 'SHOE CARE PRODUCTS', '1111-11-11', 1, 1, 1, 'SILVER SHOE CARE PRODUCTS', 700, 750, '31/05/2019'),
(440, '6939020404328', 'DP LED LIGHT400MAH', 'LIGHT', '1111-11-11', 1, 1, 1, 'DP LED LIGHT 400MAH', 450, 500, '31/05/2019'),
(441, '6941335410161', 'RECHARGEABLE TYPE FLASHLIGHT (LED)', 'TORCHLIGHT', '1111-11-11', 1, 1, 1, 'RECHARGEABLE TYPE FLASHLIGHT (LED)', 250, 300, '31/05/2019'),
(442, '6291003193491', 'EVA GOLD', 'BATHING SOAP', '1111-11-11', 4, 4, 4, 'EVA GOLD', 150, 200, '31/05/2019'),
(443, '5000101911828', 'JOY BEAUTY BAR ', 'BATHING SOAP', '1111-11-11', 6, 6, 6, 'JOY BEAUTY BAR', 80, 100, '31/05/2019'),
(444, '5285002321826', 'PASSION', 'TALCUUM POWDER', '1111-11-11', 10, 10, 10, 'PASSION', 100, 150, '31/05/2019'),
(445, 'MP3 ', 'REFRESHING TALCOM POWDER', 'FACE POWDER', '1111-11-11', 8, 8, 8, 'MP3 REFRESHING TALCOM POWDER', 160, 200, '31/05/2019'),
(446, '639713277746', 'LONEN LED', 'TOECHLIGHT', '1111-11-11', 1, 1, 1, 'LONEN LED', 450, 500, '31/05/2019'),
(447, 'WHITE CLEAN', 'HARD TOOTHPASTE', 'BRUSHING TEETH', '1111-11-11', 3, 3, 3, 'WHITE CLEAN', 70, 100, '31/05/2019'),
(448, 'MAXORAL ', 'MEDIUM TOOTHPASTE', 'BRUSHING TETTH', '1111-11-11', 2, 2, 2, 'maxoral', 70, 100, '31/05/2019'),
(449, '6939020404342', 'dp- led light 800 mah', 'rechargeable light', '1111-11-11', 1, 1, 1, 'dp led light 800mah', 850, 900, '31/05/2019'),
(450, 'perfect boss (hard) clean', 'tooth brush ', 'washing teeth', '1111-11-11', 6, 6, 6, 'perfectboss hard clean', 70, 100, '31/05/2019'),
(451, '6291003193484', 'EVA IRONY', 'BATHING SOAP', '1111-11-11', 2, 2, 2, 'EVA IRONY', 180, 200, '31/05/2019'),
(452, 'PERFECT BOSS', ' (SOFT)CLEAN', 'TOOTHBHRUSH', '1111-11-11', 3, 3, 3, 'PERFECT BOSS SOFT', 80, 100, '31/05/2019'),
(453, 'LOLA CLAIR', 'POWDER', 'FACE POWDER', '1111-11-11', 1, 1, 1, 'LOLA CLAIR', 150, 200, '31/05/2019'),
(454, 'KS NEW FAMILY PACK TOOTHBRUSH', 'TOOTHBRUSH', 'TOOTHBRUS', '1111-11-11', 5, 5, 5, 'KS NEW FAMILY PACK TOOTHBRUSH', 100, 150, '31/05/2019'),
(455, 'ORANGE UNIT', 'PERFUME TALC', 'FACE POWWDER', '1111-11-11', 13, 13, 13, 'ORANGE UNIT', 70, 100, '31/05/2019'),
(456, 'GET ME ', 'OIL CONTROL TALC', 'FACE POWDER', '1111-11-11', 1, 1, 1, 'GET ME', 190, 200, '31/05/2019'),
(457, '6154000086947', 'MEGA GROWTH', 'RELEXER', '1111-11-11', 1, 1, 1, 'MEGA GROWTH ', 900, 1000, '31/05/2019'),
(458, '8512154152532', 'ORALWISE', 'TOOTHPASTE', '1111-11-11', 7, 7, 7, 'ORALWISE', 90, 100, '31/05/2019'),
(459, '6156000185255', 'FUNBACT', 'MOISTURING SOAP', '1111-11-11', 12, 12, 12, 'FUNBACT', 180, 200, '31/05/2019'),
(460, '6154000017828', 'PREMIER COOL', 'DEO ANTISEPTIC SOAP', '1111-11-11', 15, 15, 15, 'PREMIER COOL', 150, 200, '31/05/2019'),
(461, '6151100055286', 'RENEW ', 'INSTTANT COLD WATER STARCH', '1111-11-11', 1, 1, 1, 'RENEW', 25, 30, '31/05/2019'),
(462, '6154000111076', 'WAW MULTI PURPOSE SOAP', 'WASHING SOAP', '1111-11-11', 19, 19, 19, 'WAW MULTI PURPOSE SOAP', 100, 120, '31/05/2019'),
(463, '640509040147', 'HYPO TOILET CLEANER', 'TOILET WASH', '1111-11-11', 10, 10, 10, 'HYPO TOILET CLEANER', 30, 40, '31/05/2019'),
(464, '6009826820599', 'NO.1 ', 'MEDICATED SOAP', '1111-11-11', 30, 30, 30, 'NO.1 ', 80, 100, '31/05/2019'),
(465, '6154000018672', 'IMPERIAL LEATHER ', 'BATHING SOAP', '1111-11-11', 30, 30, 30, 'IMPERIAL LEATHER', 150, 200, '31/05/2019'),
(466, '6156000039602', 'HYPO 75ML SACHET', 'HYPO SACHET', '1111-11-11', 1, 1, 1, 'HYPO 75ML SACHET', 20, 30, '31/05/2019'),
(467, '6033000102829', 'GAINT PREMIER (GENTLE ROSE)', 'BATHING SOAP', '1111-11-11', 10, 10, 10, 'GAINT PREMIER (GENTLE SOAP)', 100, 150, '31/05/2019'),
(468, '6033000102799', 'gaint premier (aloe vera)', 'bathing soap', '1111-11-11', 20, 20, 20, 'gaint premier (aloe vera)', 100, 150, '31/05/2019'),
(469, '6156000108223', 'baby and me ', 'bathing soap', '1111-11-11', 30, 30, 30, 'baby and me ', 100, 150, '31/05/2019'),
(470, '705632130155', 'viva plus', 'multi purpose soap', '1111-11-11', 30, 30, 30, 'viva plus', 100, 150, '31/05/2019'),
(471, '6151100139177', 'lux', 'soft cares bathing soap', '1111-11-11', 15, 15, 15, 'lux', 70, 100, '31/05/2019'),
(472, '6033000102768', 'premier pure milk', 'bathing soap', '1111-11-11', 20, 20, 20, 'premier piure milk', 50, 60, '31/05/2019'),
(473, '6033000102744', 'premier calming aloe vera small', 'bathing soap', '1111-11-11', 19, 19, 19, 'premier calming aloe vera soap', 50, 60, '31/05/2019'),
(474, '6033000102751', 'premier soft peach ', 'bathing soap', '1111-11-11', 20, 20, 20, 'premier soft peach', 50, 60, '31/05/2019'),
(475, 'sparkle clean', 'sparkel clean toothbrush', 'toothbrush', '1111-11-11', 6, 6, 6, 'sparkel clean toothbrush', 40, 50, '31/05/2019'),
(476, 'ASDA', 'ASDA', 'WASHING SOAP', '1111-11-11', 50, 50, 50, 'ASDA', 80, 100, '31/05/2019'),
(477, 'CAMP', 'CAMP ', 'WASHING SOAP', '1111-11-11', 30, 30, 30, 'CAMP', 40, 50, '31/05/2019'),
(478, 'SOLO DORA ', 'SOLO DORA SOAP', 'WASHING SOAP', '1111-11-11', 20, 20, 20, 'SOLO DORA SOAP', 70, 100, '31/05/2019'),
(479, 'TOP GUM', 'TOP GUM', 'TOP GUM', '1111-11-11', 10, 10, 10, 'TOP GUM', 95, 100, '31/05/2019'),
(480, '6929655580085', 'WHITEBOARD MARKER ', 'REFILLABLE', '1111-11-11', 3, 3, 3, 'WHITE BOARD MARKER', 90, 100, '31/05/2019'),
(481, '6970330660011', 'MATHEMATICAL INSTRUMENTS', 'MATHEMATICAL INSTRUMENT', '1111-11-11', 1, 1, 1, 'MATHEMATICAL INSTRUMENT', 250, 300, '31/05/2019'),
(482, 'SWAN GLUE', 'SWAN GLUE ', 'swan glue ', '1111-11-11', 5, 5, 5, 'SWAN GLUE', 40, 50, '31/05/2019'),
(483, '4006856551464', 'TETRING TIKKY 20 ', 'ERASIER', '1111-11-11', 7, 7, 7, 'TETRING TIKKY20', 40, 50, '31/05/2019'),
(484, '6931100502337', 'IGLE', 'CORRECTION PEN', '1111-11-11', 8, 8, 8, 'IGLE CORRECTION PEN', 100, 150, '31/05/2019'),
(485, 'JOE BOND ', 'ULTIMATE POWER GLUE', 'GUM', '1111-11-11', 12, 12, 12, 'JOE BOND', 70, 100, '31/05/2019'),
(486, 'MAPLEAF', 'MAPLELEAF 60LEAVES', 'MAPLELEAF 60 LEAVES', '1111-11-11', 10, 10, 10, 'MAPLELEAF LEAVES', 100, 120, '31/05/2019'),
(487, 'DEBOSSS', '1000LEDGER WF 4NOTE BOOK', '1000LEDGER WF 4NOTE BOOK', '1111-11-11', 10, 10, 10, '1000LEDGER WF 4NOTE BOOK', 450, 500, '31/05/2019'),
(488, 'DE BOSS', 'NOTEBOOK NO. 4 (BLUE)', 'NOTEBOOK NO. 4 (BLUE)', '1111-11-11', 10, 10, 10, 'NOTEBOOK NO. 4 (BLUE)', 650, 700, '31/05/2019'),
(489, 'OFFICE FLAT FILE', 'OFFICE FLAT FILE', 'OFFICE FLAT FILE', '1111-11-11', 20, 20, 20, 'OFFICE FLAT FILE40', 40, 50, '31/05/2019'),
(490, '8691206060114', 'SITIL', 'LIQUID SHOE POLISH SELF SHINING (BLACK)', '1111-11-11', 15, 15, 15, 'LIQUID SHOE POLISH SELF SHINING (BLACK)2', 200, 250, '31/05/2019'),
(491, '8691206060312', 'SITIL', 'LIQUID SHOE POLISH SELF SHINING (BROWN)', '1111-11-11', 15, 15, 15, 'LIQUID SHOE POLISH SELF SHINING (BROWN)', 200, 250, '31/05/2019'),
(492, 'LONG NOTE', 'LONG NOTE', 'LONG NOTE', '1111-11-11', 20, 20, 20, 'LONG NOTE', 5, 10, '31/05/2019'),
(493, '8411250019346', 'AFRE SUED NUBUCK', 'NAVYBLUE RESTORTER', '1111-11-11', 1, 1, 1, 'AFRE NAVYBLUE RESTORTERA', 700, 750, '31/05/2019'),
(494, '8691206060916', 'SITIL', 'LIQUID SHOE POLISH SELF SHINING (WHITE)', '1111-11-11', 12, 12, 12, 'LIQUID SHOE POLISH SELF SHINING (WHITE)', 200, 250, '31/05/2019'),
(495, 'PENCIL SHARPENER', 'PENCIL SHARPENER', 'PENCIL SHARPENER', '1111-11-11', 8, 8, 8, 'PENCIL SHARPENER', 10, 20, '31/05/2019'),
(496, 'SHARPENER', 'SHARPENER', 'pencil sharpener', '1111-11-11', 31, 31, 31, 'SHARPENER', 45, 50, '31/05/2019'),
(497, '6001298959883', 'kiwi ', 'quality shoe polish (black)', '1111-11-11', 10, 10, 10, 'quality shoe polish (black)', 550, 600, '31/05/2019'),
(498, 'bee and flowers', 'toney red shoe polish', 'toney red shoe polish', '1111-11-11', 15, 15, 15, 'toney red shoe polish', 200, 220, '31/05/2019'),
(499, 'LUDE', 'TONEY RED SHOE POLISH', 'TONEY RED SHOE POLISH', '1111-11-11', 15, 15, 15, 'TONEY RED SHOE POLISH', 150, 200, '31/05/2019'),
(500, 'TRANS PARENT RULER', 'TRANSPARENT RULER', 'TRANSPERENT RULER', '1111-11-11', 5, 5, 5, 'RANSPERENT RULER', 40, 50, '31/05/2019'),
(501, 'CRAYON', 'CRAYON', 'CRAYON', '1111-11-11', 10, 10, 10, 'CRAYON', 90, 100, '31/05/2019'),
(502, 'MULTIPLICATION PLASTIC RULER', 'MULTIPLICATION PLASTIC RULER', 'MULTIPLICATION PLASTIC RULER', '1111-11-11', 9, 9, 9, 'MULTIPLICATION PLASTIC RULER', 40, 50, '31/05/2019'),
(503, 'WOOD RULER', 'WOOD RULER', 'WOOD RULER', '1111-11-11', 2, 2, 2, 'WOOD RULER', 40, 50, '31/05/2019'),
(504, 'OMEGA GRAPH NOTE  BOOK', 'OMEGA GRAPH NOTE  BOOK', 'OMEGA GRAPH NOTE BOOK', '1111-11-11', 7, 7, 7, 'OMEGA GRAPH NOT', 90, 100, '31/05/2019'),
(505, 'graph exercise book+-', 'graphy errecise book', 'graph exercise book', '1111-11-11', 15, 15, 15, 'graph exercise book', 90, 100, '31/05/2019'),
(506, 'de boss ', 'no.4 note book', 'no.4 note book', '1111-11-11', 15, 15, 15, 'no.4 note book', 250, 300, '31/05/2019'),
(507, 'CROWNSTAR EXPRESSION 80 LEAVES', 'CROWNSTAR EXPRESSION 80 LEAVES', 'CROWNSTAR EXPRESSION 80 LEAVES', '1111-11-11', 12, 12, 12, 'CROWNSTAR EXPRESSION 80 LEAVES', 180, 200, '31/05/2019'),
(508, 'CROWNSTAR EXPRESSION 20LEAVES', 'CROWNSTAR EXPRESSION 20LEAVES', 'CROWNSTAR EXPRESSION 20LEAVES', '1111-11-11', 10, 10, 10, 'CROWNSTAR EXPRESSION 20LEAVES', 45, 50, '31/05/2019'),
(509, 'BIG JOE 500LEGER TICKBACK NOTE', 'BIG JOE 500LEGER TICKBACK NOTE', 'BIG JOE 500LEGER TICKBACK NOTE', '1111-11-11', 18, 18, 18, 'BIG JOE 500LEGER TICKBACK NOTE', 1000, 1200, '31/05/2019'),
(510, 'PACKET OF  PENCIL', 'PACKET OF  PENCIL', 'PACKET OF  PENCIL', '1111-11-11', 120, 120, 120, 'PACKET OF  PENCIL', 100, 150, '31/05/2019'),
(512, 'PLASTIC FILE', 'PLASTIC FILE', 'PLASTIC FILE', '1111-11-11', 5, 5, 5, 'PLASTIC FILE', 50, 70, '31/05/2019');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `invoice` varchar(20) DEFAULT NULL,
  `user` varchar(20) DEFAULT NULL,
  `products_sold` varchar(40) DEFAULT NULL,
  `sold_quantity` int(11) DEFAULT NULL,
  `amount_sold` int(11) DEFAULT NULL,
  `date_sold` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `invoice`, `user`, `products_sold`, `sold_quantity`, `amount_sold`, `date_sold`) VALUES
(1, '378607', 'user', 'lumatem', 12, 5400, '2018-10-22'),
(2, '530870', 'user', 'lumatem', 8, 3600, '2018-10-22'),
(3, '364013', 'user', 'lumatem', 3, 1350, '2018-10-24'),
(4, '707281', 'user', 'lumatem', 4, 3200, '2019-04-18'),
(5, '468892', 'user', 'lumatem', 4, 2000, '2019-04-20'),
(6, '267569', 'user', 'lumatem', 5, 2500, '04-20-2019'),
(7, '826997', 'user', 'kjbnkjbn', 100, 40000, '2019-04-20'),
(8, '165725', 'user', 'lumatem', 10, 5000, '2019-04-20'),
(9, '585040', 'user', 'lumatem', 5, 500, '2019-05-22'),
(10, '411783', 'user', 'lumatem', 5, 500, '2019-05-28'),
(11, '441515', 'user', 'lumatem', 1, 500, '2019-05-28'),
(12, '974441', 'user', 'lumatem', 9, 500, '2019-05-28'),
(13, '654886', 'user', 'lumatem', 3, 500, '2019-05-28'),
(14, '654886', 'user', 'kjbnkjbn', 10, 400, '2019-05-28'),
(15, '451304', 'user', 'lumatem', 2, 500, '2019-05-29');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `date_added` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `date_added`) VALUES
(1, 'emzor', '28/Oct/2018'),
(2, 'juhel', '28/Oct/2018');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `supplier` varchar(40) DEFAULT NULL,
  `invoice` int(11) DEFAULT NULL,
  `product` varchar(40) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `amount_paid` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `date_paid` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `supplier`, `invoice`, `product`, `quantity`, `amount_paid`, `balance`, `price`, `date_paid`) VALUES
(6, 'emzor', 232693, 'vasoprin', 80, 180, 20, 200, '28/Oct/2018'),
(7, 'emzor', 950086, 'sudrex', 23, 230, 0, 230, '28/Oct/2018'),
(8, 'emzor', 116563, 'vasoprin', 20, 200, 0, 200, '28/Oct/2018'),
(9, 'juhel', 723822, 'sudrex', 50, 50, 450, 500, '28/Oct/2018'),
(10, 'juhel', 723822, 'sudrex', 50, 5, 445, 500, '28/Oct/2018'),
(11, 'juhel', 723822, 'sudrex', 50, 1, 444, 500, '28/Oct/2018'),
(12, 'juhel', 723822, 'sudrex', 50, 4, 440, 500, '28/Oct/2018');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(40) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `town` varchar(20) DEFAULT NULL,
  `village` varchar(20) DEFAULT NULL,
  `house_address` varchar(100) DEFAULT NULL,
  `date_of_birth` varchar(10) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `position` varchar(20) DEFAULT NULL,
  `date_added` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `username`, `password`, `state`, `town`, `village`, `house_address`, `date_of_birth`, `phone`, `position`, `date_added`) VALUES
(1, 'user', 'user', 'cGFzcw==', 'anambra', 'awka', 'ifite', 'ifite', '1111-11-11', '0909090909', 'cashier', '21/10/2018'),
(2, 'bossy', 'bossy', 'Ym9zc3k=', 'anambra', 'awka', 'ifite', 'ifite', '1990-11-11', '12345678909', 'admin', '22/10/2018');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arrivals`
--
ALTER TABLE `arrivals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `arrivals`
--
ALTER TABLE `arrivals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=513;
--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
