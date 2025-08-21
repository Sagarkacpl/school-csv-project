-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2025 at 11:37 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin_panel`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts_code`
--

CREATE TABLE `accounts_code` (
  `id` int(11) NOT NULL,
  `accounts_code` varchar(255) NOT NULL,
  `accounts` varchar(255) NOT NULL,
  `is_bs` enum('IS','BS') NOT NULL,
  `category` varchar(255) NOT NULL,
  `sub_category` varchar(255) NOT NULL,
  `debit_credit` enum('C','D') NOT NULL,
  `deleted_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts_code`
--

INSERT INTO `accounts_code` (`id`, `accounts_code`, `accounts`, `is_bs`, `category`, `sub_category`, `debit_credit`, `deleted_status`, `created_at`) VALUES
(1, '1000', 'Revenue', 'IS', 'Revenue', 'Revenue', 'C', 0, '2025-08-20 11:16:30'),
(2, '2000', 'Cost of Sales', 'IS', 'Cost of Goods Sold', 'Cost of Sales', 'D', 0, '2025-08-20 11:16:30'),
(3, '3010', 'Payroll expenses', 'IS', 'Expenses', 'General and administrative', 'D', 0, '2025-08-20 11:16:30'),
(4, '3020', 'Marketing expenses', 'IS', 'Expenses', 'Sales and marketing', 'D', 0, '2025-08-20 11:16:30'),
(5, '3030', 'Bank Charges', 'IS', 'Expenses', 'Finance costs', 'D', 0, '2025-08-20 11:16:30'),
(6, '3040', 'Promotion', 'IS', 'Expenses', 'Sales and marketing', 'D', 0, '2025-08-20 11:16:30'),
(7, '3050', 'Research and development', 'IS', 'Expenses', 'Research and development', 'D', 0, '2025-08-20 11:16:30'),
(8, '3060', 'Office Expenses', 'IS', 'Expenses', 'General and administrative', 'D', 0, '2025-08-20 11:16:30'),
(9, '3070', 'Utilities', 'IS', 'Expenses', 'General and administrative', 'D', 0, '2025-08-20 11:16:30'),
(10, '3080', 'Entertainment', 'IS', 'Expenses', 'General and administrative', 'D', 0, '2025-08-20 11:16:30'),
(11, '3090', 'Equipment maintenance', 'IS', 'Expenses', 'General and administrative', 'D', 0, '2025-08-20 11:16:30'),
(12, '3100', 'Premises insurance', 'IS', 'Expenses', 'General and administrative', 'D', 0, '2025-08-20 11:16:30'),
(13, '3110', 'Legal Fees', 'IS', 'Expenses', 'General and administrative', 'D', 0, '2025-08-20 11:16:30'),
(14, '3120', 'Motor Vehicle Expenses', 'IS', 'Expenses', 'General and administrative', 'D', 0, '2025-08-20 11:16:30'),
(15, '3130', 'Postage & carriage', 'IS', 'Expenses', 'General and administrative', 'D', 0, '2025-08-20 11:16:30'),
(16, '3140', 'Printing & Stationery', 'IS', 'Expenses', 'General and administrative', 'D', 0, '2025-08-20 11:16:30'),
(17, '3150', 'Consultancy fees', 'IS', 'Expenses', 'General and administrative', 'D', 0, '2025-08-20 11:16:30'),
(18, '3160', 'Rent Expenses', 'IS', 'Expenses', 'General and administrative', 'D', 0, '2025-08-20 11:16:30'),
(19, '3170', 'Repairs & Maintenance', 'IS', 'Expenses', 'General and administrative', 'D', 0, '2025-08-20 11:16:30'),
(20, '3180', 'Payroll', 'IS', 'Expenses', 'General and administrative', 'D', 0, '2025-08-20 11:16:30'),
(21, '3190', 'Security', 'IS', 'Expenses', 'General and administrative', 'D', 0, '2025-08-20 11:16:30'),
(22, '3200', 'Subscriptions', 'IS', 'Expenses', 'General and administrative', 'D', 0, '2025-08-20 11:16:30'),
(23, '3210', 'Telephone & Fax', 'IS', 'Expenses', 'General and administrative', 'D', 0, '2025-08-20 11:16:30'),
(24, '3220', 'Training Expenses', 'IS', 'Expenses', 'General and administrative', 'D', 0, '2025-08-20 11:16:30'),
(25, '3230', 'Uniforms', 'IS', 'Expenses', 'General and administrative', 'D', 0, '2025-08-20 11:16:30'),
(26, '4010', 'Depreciation', 'IS', 'Expenses', 'Depreciation', 'D', 0, '2025-08-20 11:16:30'),
(27, '5010', 'Interest', 'IS', 'Expenses', 'Finance costs', 'D', 0, '2025-08-20 11:16:30'),
(28, '6010', 'Taxation', 'IS', 'Expenses', 'Tax', 'D', 0, '2025-08-20 11:16:30'),
(29, '10000', 'Property, Plant & Equipment', 'BS', 'Assets', 'Long Term Assets', 'D', 0, '2025-08-20 11:16:30'),
(30, '15000', 'Accum Depr: PPE', 'BS', 'Assets', 'Long Term Assets', 'C', 0, '2025-08-20 11:16:30'),
(31, '20000', 'Inventory', 'BS', 'Assets', 'Current Assets', 'D', 0, '2025-08-20 11:16:30'),
(32, '40000', 'Receivables', 'BS', 'Assets', 'Current Assets', 'D', 0, '2025-08-20 11:16:30'),
(33, '30000', 'Cash', 'BS', 'Assets', 'Current Assets', 'D', 0, '2025-08-20 11:16:30'),
(34, '80000', 'Capital Contributions', 'BS', 'Equity', 'Shareholders Equity', 'C', 0, '2025-08-20 11:16:30'),
(35, '90000', 'Retained Earnings', 'BS', 'Equity', 'Retained Earnings', 'C', 0, '2025-08-20 11:16:30'),
(36, '70000', 'Long Term Loans', 'BS', 'Liabilities', 'Long Term Liabilities', 'C', 0, '2025-08-20 11:16:30'),
(37, '50000', 'Payables', 'BS', 'Liabilities', 'Current Liabilities', 'C', 0, '2025-08-20 11:16:30'),
(38, '50100', 'Provision for Taxation', 'BS', 'Liabilities', 'Current Liabilities', 'C', 0, '2025-08-20 11:16:30');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_login` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `username`, `password`, `created_at`, `last_login`) VALUES
(1, 'Admin', 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2025-07-17 11:22:43', '2025-08-18 04:56:57');

-- --------------------------------------------------------

--
-- Table structure for table `ap_ageing`
--

CREATE TABLE `ap_ageing` (
  `id` int(11) NOT NULL,
  `creditor_name` varchar(150) DEFAULT NULL,
  `month` date DEFAULT NULL,
  `balance_books` decimal(12,2) DEFAULT NULL,
  `ageing_days` int(11) DEFAULT NULL,
  `confirmed_balance` decimal(12,2) DEFAULT NULL,
  `deleted_status` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ap_ageing`
--

INSERT INTO `ap_ageing` (`id`, `creditor_name`, `month`, `balance_books`, `ageing_days`, `confirmed_balance`, `deleted_status`, `created_at`) VALUES
(1, 'Sysco Corporation', '2025-01-01', '14832.00', 79, '18680.00', 0, '2025-08-20 11:58:40'),
(2, 'US Foods, Inc.', '2025-01-01', '35041.00', 22, '44062.00', 0, '2025-08-20 11:58:40'),
(3, 'Ecolab Inc.', '2025-01-01', '17341.00', 100, '15439.00', 0, '2025-08-20 11:58:40'),
(4, 'Aramark Uniform Services', '2025-01-01', '25917.00', 49, '28899.00', 0, '2025-08-20 11:58:40'),
(5, 'Coca-Cola Bottling Co. Consolidated', '2025-01-01', '3615.00', 107, '7460.00', 0, '2025-08-20 11:58:40'),
(6, 'PepsiCo, Inc.', '2025-01-01', '10203.00', 90, '10596.00', 0, '2025-08-20 11:58:40'),
(7, 'Johnson Controls, Inc.', '2025-01-01', '34585.00', 21, '35803.00', 0, '2025-08-20 11:58:40'),
(8, 'Honeywell International Inc.', '2025-01-01', '24961.00', 61, '25086.00', 0, '2025-08-20 11:58:40'),
(9, 'Siemens Industry, Inc.', '2025-01-01', '44940.00', 159, '47602.00', 0, '2025-08-20 11:58:40'),
(10, 'Staples, Inc.', '2025-01-01', '47960.00', 156, '38401.00', 0, '2025-08-20 11:58:40'),
(11, 'Office Depot, Inc.', '2025-01-01', '28039.00', 29, '20763.00', 0, '2025-08-20 11:58:40'),
(12, 'American Hotel Register Company', '2025-01-01', '11701.00', 104, '5251.00', 0, '2025-08-20 11:58:40'),
(13, 'Cintas Corporation', '2025-01-01', '32018.00', 64, '26058.00', 0, '2025-08-20 11:58:41'),
(14, 'PepsiCo Foodservice', '2025-01-01', '42081.00', 94, '40731.00', 0, '2025-08-20 11:58:41'),
(15, 'Wells Fargo Bank, N.A.', '2025-01-01', '39114.00', 179, '37905.00', 0, '2025-08-20 11:58:41'),
(16, 'AT&T Inc.', '2025-01-01', '17494.00', 28, '19108.00', 0, '2025-08-20 11:58:41'),
(17, 'Comcast Corporation', '2025-01-01', '14241.00', 167, '6634.00', 0, '2025-08-20 11:58:41'),
(18, 'PG&E Corporation', '2025-01-01', '37967.00', 149, '45540.00', 0, '2025-08-20 11:58:41'),
(19, 'Constellation Energy', '2025-01-01', '41291.00', 57, '49299.00', 0, '2025-08-20 11:58:41'),
(20, 'Amazon Business LLC', '2025-01-01', '47644.00', 165, '57221.00', 0, '2025-08-20 11:58:41'),
(21, 'Sysco Corporation', '2025-02-01', '22636.00', 20, '24920.00', 0, '2025-08-20 11:58:41'),
(22, 'US Foods, Inc.', '2025-02-01', '31099.00', 170, '30534.00', 0, '2025-08-20 11:58:41'),
(23, 'Ecolab Inc.', '2025-02-01', '18911.00', 64, '21701.00', 0, '2025-08-20 11:58:41'),
(24, 'Aramark Uniform Services', '2025-02-01', '27614.00', 173, '26168.00', 0, '2025-08-20 11:58:41'),
(25, 'Coca-Cola Bottling Co. Consolidated', '2025-02-01', '37419.00', 22, '34447.00', 0, '2025-08-20 11:58:41'),
(26, 'PepsiCo, Inc.', '2025-02-01', '44393.00', 45, '36000.00', 0, '2025-08-20 11:58:41'),
(27, 'Johnson Controls, Inc.', '2025-02-01', '35778.00', 21, '27867.00', 0, '2025-08-20 11:58:41'),
(28, 'Honeywell International Inc.', '2025-02-01', '29194.00', 162, '33069.00', 0, '2025-08-20 11:58:41'),
(29, 'Siemens Industry, Inc.', '2025-02-01', '34238.00', 92, '37116.00', 0, '2025-08-20 11:58:41'),
(30, 'Staples, Inc.', '2025-02-01', '47245.00', 62, '49798.00', 0, '2025-08-20 11:58:41'),
(31, 'Office Depot, Inc.', '2025-02-01', '18328.00', 52, '23098.00', 0, '2025-08-20 11:58:41'),
(32, 'American Hotel Register Company', '2025-02-01', '20923.00', 132, '23479.00', 0, '2025-08-20 11:58:41'),
(33, 'Cintas Corporation', '2025-02-01', '4583.00', 59, '-3304.00', 0, '2025-08-20 11:58:41'),
(34, 'PepsiCo Foodservice', '2025-02-01', '44055.00', 77, '41308.00', 0, '2025-08-20 11:58:41'),
(35, 'Wells Fargo Bank, N.A.', '2025-02-01', '18043.00', 134, '12768.00', 0, '2025-08-20 11:58:41'),
(36, 'AT&T Inc.', '2025-02-01', '42677.00', 92, '35337.00', 0, '2025-08-20 11:58:41'),
(37, 'Comcast Corporation', '2025-02-01', '36739.00', 172, '27376.00', 0, '2025-08-20 11:58:41'),
(38, 'PG&E Corporation', '2025-02-01', '37203.00', 177, '32864.00', 0, '2025-08-20 11:58:41'),
(39, 'Constellation Energy', '2025-02-01', '956.00', 51, '6593.00', 0, '2025-08-20 11:58:41'),
(40, 'Amazon Business LLC', '2025-02-01', '6044.00', 122, '6905.00', 0, '2025-08-20 11:58:41'),
(41, 'Sysco Corporation', '2025-03-01', '25614.00', 143, '22497.00', 0, '2025-08-20 11:58:41'),
(42, 'US Foods, Inc.', '2025-03-01', '1681.00', 130, '1423.00', 0, '2025-08-20 11:58:41'),
(43, 'Ecolab Inc.', '2025-03-01', '33570.00', 75, '36569.00', 0, '2025-08-20 11:58:41'),
(44, 'Aramark Uniform Services', '2025-03-01', '49604.00', 102, '55978.00', 0, '2025-08-20 11:58:41'),
(45, 'Coca-Cola Bottling Co. Consolidated', '2025-03-01', '43669.00', 109, '40024.00', 0, '2025-08-20 11:58:41'),
(46, 'PepsiCo, Inc.', '2025-03-01', '893.00', 169, '-1879.00', 0, '2025-08-20 11:58:41'),
(47, 'Johnson Controls, Inc.', '2025-03-01', '45396.00', 137, '43602.00', 0, '2025-08-20 11:58:41'),
(48, 'Honeywell International Inc.', '2025-03-01', '11261.00', 126, '12860.00', 0, '2025-08-20 11:58:41'),
(49, 'Siemens Industry, Inc.', '2025-03-01', '22273.00', 172, '28539.00', 0, '2025-08-20 11:58:41'),
(50, 'Staples, Inc.', '2025-03-01', '10246.00', 174, '19381.00', 0, '2025-08-20 11:58:41'),
(51, 'Office Depot, Inc.', '2025-03-01', '32428.00', 142, '35332.00', 0, '2025-08-20 11:58:41'),
(52, 'American Hotel Register Company', '2025-03-01', '42316.00', 79, '42690.00', 0, '2025-08-20 11:58:41'),
(53, 'Cintas Corporation', '2025-03-01', '19686.00', 136, '9937.00', 0, '2025-08-20 11:58:41'),
(54, 'PepsiCo Foodservice', '2025-03-01', '10172.00', 139, '12811.00', 0, '2025-08-20 11:58:41'),
(55, 'Wells Fargo Bank, N.A.', '2025-03-01', '1619.00', 83, '-3076.00', 0, '2025-08-20 11:58:41'),
(56, 'AT&T Inc.', '2025-03-01', '16430.00', 136, '22326.00', 0, '2025-08-20 11:58:41'),
(57, 'Comcast Corporation', '2025-03-01', '35174.00', 72, '43698.00', 0, '2025-08-20 11:58:41'),
(58, 'PG&E Corporation', '2025-03-01', '48875.00', 107, '54700.00', 0, '2025-08-20 11:58:41'),
(59, 'Constellation Energy', '2025-03-01', '33944.00', 120, '41815.00', 0, '2025-08-20 11:58:41'),
(60, 'Amazon Business LLC', '2025-03-01', '7507.00', 125, '9477.00', 0, '2025-08-20 11:58:41'),
(61, 'Sysco Corporation', '2025-04-01', '47844.00', 117, '54059.00', 0, '2025-08-20 11:58:41'),
(62, 'US Foods, Inc.', '2025-04-01', '21287.00', 54, '14519.00', 0, '2025-08-20 11:58:41'),
(63, 'Ecolab Inc.', '2025-04-01', '1985.00', 160, '5788.00', 0, '2025-08-20 11:58:41'),
(64, 'Aramark Uniform Services', '2025-04-01', '49077.00', 102, '56644.00', 0, '2025-08-20 11:58:41'),
(65, 'Coca-Cola Bottling Co. Consolidated', '2025-04-01', '40577.00', 133, '37124.00', 0, '2025-08-20 11:58:41'),
(66, 'PepsiCo, Inc.', '2025-04-01', '19986.00', 47, '16745.00', 0, '2025-08-20 11:58:41'),
(67, 'Johnson Controls, Inc.', '2025-04-01', '35197.00', 57, '42230.00', 0, '2025-08-20 11:58:41'),
(68, 'Honeywell International Inc.', '2025-04-01', '15227.00', 167, '14477.00', 0, '2025-08-20 11:58:41'),
(69, 'Siemens Industry, Inc.', '2025-04-01', '10223.00', 57, '5377.00', 0, '2025-08-20 11:58:41'),
(70, 'Staples, Inc.', '2025-04-01', '15407.00', 147, '18748.00', 0, '2025-08-20 11:58:41'),
(71, 'Office Depot, Inc.', '2025-04-01', '44843.00', 20, '34881.00', 0, '2025-08-20 11:58:41'),
(72, 'American Hotel Register Company', '2025-04-01', '11346.00', 124, '8027.00', 0, '2025-08-20 11:58:41'),
(73, 'Cintas Corporation', '2025-04-01', '25179.00', 104, '20407.00', 0, '2025-08-20 11:58:41'),
(74, 'PepsiCo Foodservice', '2025-04-01', '5419.00', 155, '10619.00', 0, '2025-08-20 11:58:41'),
(75, 'Wells Fargo Bank, N.A.', '2025-04-01', '47380.00', 173, '54446.00', 0, '2025-08-20 11:58:41'),
(76, 'AT&T Inc.', '2025-04-01', '19470.00', 136, '20906.00', 0, '2025-08-20 11:58:41'),
(77, 'Comcast Corporation', '2025-04-01', '33345.00', 40, '35181.00', 0, '2025-08-20 11:58:41'),
(78, 'PG&E Corporation', '2025-04-01', '5381.00', 170, '-4090.00', 0, '2025-08-20 11:58:41'),
(79, 'Constellation Energy', '2025-04-01', '5142.00', 20, '-4844.00', 0, '2025-08-20 11:58:41'),
(80, 'Amazon Business LLC', '2025-04-01', '44348.00', 32, '42151.00', 0, '2025-08-20 11:58:41'),
(81, 'Sysco Corporation', '2025-05-01', '15865.00', 151, '7845.00', 0, '2025-08-20 11:58:41'),
(82, 'US Foods, Inc.', '2025-05-01', '7411.00', 166, '994.00', 0, '2025-08-20 11:58:41'),
(83, 'Ecolab Inc.', '2025-05-01', '42726.00', 180, '37786.00', 0, '2025-08-20 11:58:41'),
(84, 'Aramark Uniform Services', '2025-05-01', '33338.00', 39, '40825.00', 0, '2025-08-20 11:58:41'),
(85, 'Coca-Cola Bottling Co. Consolidated', '2025-05-01', '27069.00', 162, '26934.00', 0, '2025-08-20 11:58:41'),
(86, 'PepsiCo, Inc.', '2025-05-01', '41829.00', 142, '39444.00', 0, '2025-08-20 11:58:41'),
(87, 'Johnson Controls, Inc.', '2025-05-01', '729.00', 105, '-6491.00', 0, '2025-08-20 11:58:41'),
(88, 'Honeywell International Inc.', '2025-05-01', '46586.00', 67, '54890.00', 0, '2025-08-20 11:58:41'),
(89, 'Siemens Industry, Inc.', '2025-05-01', '6686.00', 88, '13002.00', 0, '2025-08-20 11:58:41'),
(90, 'Staples, Inc.', '2025-05-01', '24279.00', 69, '23391.00', 0, '2025-08-20 11:58:41'),
(91, 'Office Depot, Inc.', '2025-05-01', '30309.00', 130, '31481.00', 0, '2025-08-20 11:58:41'),
(92, 'American Hotel Register Company', '2025-05-01', '24374.00', 116, '23461.00', 0, '2025-08-20 11:58:41'),
(93, 'Cintas Corporation', '2025-05-01', '42980.00', 138, '40411.00', 0, '2025-08-20 11:58:41'),
(94, 'PepsiCo Foodservice', '2025-05-01', '45375.00', 38, '35589.00', 0, '2025-08-20 11:58:41'),
(95, 'Wells Fargo Bank, N.A.', '2025-05-01', '44819.00', 161, '43116.00', 0, '2025-08-20 11:58:41'),
(96, 'AT&T Inc.', '2025-05-01', '41825.00', 41, '36604.00', 0, '2025-08-20 11:58:41'),
(97, 'Comcast Corporation', '2025-05-01', '9112.00', 149, '3894.00', 0, '2025-08-20 11:58:41'),
(98, 'PG&E Corporation', '2025-05-01', '14470.00', 47, '4780.00', 0, '2025-08-20 11:58:41'),
(99, 'Constellation Energy', '2025-05-01', '2694.00', 104, '370.00', 0, '2025-08-20 11:58:41'),
(100, 'Amazon Business LLC', '2025-05-01', '49823.00', 87, '54548.00', 0, '2025-08-20 11:58:41'),
(101, 'Sysco Corporation', '2025-06-01', '9639.00', 140, '5117.00', 0, '2025-08-20 11:58:41'),
(102, 'US Foods, Inc.', '2025-06-01', '28351.00', 114, '34414.00', 0, '2025-08-20 11:58:41'),
(103, 'Ecolab Inc.', '2025-06-01', '46186.00', 114, '43566.00', 0, '2025-08-20 11:58:41'),
(104, 'Aramark Uniform Services', '2025-06-01', '13696.00', 38, '11639.00', 0, '2025-08-20 11:58:41'),
(105, 'Coca-Cola Bottling Co. Consolidated', '2025-06-01', '10620.00', 34, '9919.00', 0, '2025-08-20 11:58:41'),
(106, 'PepsiCo, Inc.', '2025-06-01', '21231.00', 109, '18188.00', 0, '2025-08-20 11:58:41'),
(107, 'Johnson Controls, Inc.', '2025-06-01', '25999.00', 109, '33235.00', 0, '2025-08-20 11:58:41'),
(108, 'Honeywell International Inc.', '2025-06-01', '8524.00', 92, '15082.00', 0, '2025-08-20 11:58:41'),
(109, 'Siemens Industry, Inc.', '2025-06-01', '6696.00', 82, '-1667.00', 0, '2025-08-20 11:58:41'),
(110, 'Staples, Inc.', '2025-06-01', '9086.00', 124, '8713.00', 0, '2025-08-20 11:58:41'),
(111, 'Office Depot, Inc.', '2025-06-01', '11270.00', 44, '5852.00', 0, '2025-08-20 11:58:41'),
(112, 'American Hotel Register Company', '2025-06-01', '31096.00', 21, '21355.00', 0, '2025-08-20 11:58:41'),
(113, 'Cintas Corporation', '2025-06-01', '27685.00', 160, '33804.00', 0, '2025-08-20 11:58:41'),
(114, 'PepsiCo Foodservice', '2025-06-01', '29267.00', 65, '23291.00', 0, '2025-08-20 11:58:41'),
(115, 'Wells Fargo Bank, N.A.', '2025-06-01', '31076.00', 95, '33823.00', 0, '2025-08-20 11:58:41'),
(116, 'AT&T Inc.', '2025-06-01', '26385.00', 49, '23681.00', 0, '2025-08-20 11:58:41'),
(117, 'Comcast Corporation', '2025-06-01', '6633.00', 160, '7051.00', 0, '2025-08-20 11:58:41'),
(118, 'PG&E Corporation', '2025-06-01', '20263.00', 52, '17522.00', 0, '2025-08-20 11:58:41'),
(119, 'Constellation Energy', '2025-06-01', '30489.00', 86, '36617.00', 0, '2025-08-20 11:58:41'),
(120, 'Amazon Business LLC', '2025-06-01', '10490.00', 42, '1489.00', 0, '2025-08-20 11:58:41');

-- --------------------------------------------------------

--
-- Table structure for table `ar_ageing`
--

CREATE TABLE `ar_ageing` (
  `id` int(11) NOT NULL,
  `creditor_name` varchar(150) DEFAULT NULL,
  `month` date DEFAULT NULL,
  `balance_books` decimal(12,2) DEFAULT NULL,
  `ageing_days` int(11) DEFAULT NULL,
  `confirmed_balance` decimal(12,2) DEFAULT NULL,
  `deleted_status` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ar_ageing`
--

INSERT INTO `ar_ageing` (`id`, `creditor_name`, `month`, `balance_books`, `ageing_days`, `confirmed_balance`, `deleted_status`, `created_at`) VALUES
(1, 'Expedia', '2025-01-01', '22441.00', 56, '27882.00', 0, '2025-08-20 12:00:24'),
(2, 'Booking.com', '2025-01-01', '30602.00', 99, '29291.00', 0, '2025-08-20 12:00:24'),
(3, 'Priceline', '2025-01-01', '38411.00', 142, '36538.00', 0, '2025-08-20 12:00:24'),
(4, 'Agoda', '2025-01-01', '15593.00', 154, '14055.00', 0, '2025-08-20 12:00:24'),
(5, 'Hotels.com', '2025-01-01', '42605.00', 48, '40342.00', 0, '2025-08-20 12:00:24'),
(6, 'Travelocity', '2025-01-01', '43708.00', 96, '44985.00', 0, '2025-08-20 12:00:24'),
(7, 'Orbitz', '2025-01-01', '30342.00', 151, '27826.00', 0, '2025-08-20 12:00:24'),
(8, 'TripAdvisor', '2025-01-01', '42211.00', 121, '44235.00', 0, '2025-08-20 12:00:24'),
(9, 'Kayak', '2025-01-01', '40580.00', 152, '41232.00', 0, '2025-08-20 12:00:24'),
(10, 'Trivago', '2025-01-01', '9140.00', 124, '-853.00', 0, '2025-08-20 12:00:24'),
(11, 'Hotwire', '2025-01-01', '12078.00', 41, '21070.00', 0, '2025-08-20 12:00:24'),
(12, 'CheapOair', '2025-01-01', '8288.00', 153, '16609.00', 0, '2025-08-20 12:00:24'),
(13, 'Hostelworld', '2025-01-01', '17522.00', 56, '14415.00', 0, '2025-08-20 12:00:24'),
(14, 'Ctrip (Trip.com)', '2025-01-01', '41610.00', 60, '36361.00', 0, '2025-08-20 12:00:24'),
(15, 'Skyscanner', '2025-01-01', '37459.00', 153, '32628.00', 0, '2025-08-20 12:00:24'),
(16, 'Airbnb', '2025-01-01', '10979.00', 80, '15098.00', 0, '2025-08-20 12:00:24'),
(17, 'Traveloka', '2025-01-01', '14277.00', 180, '15314.00', 0, '2025-08-20 12:00:24'),
(18, 'Lastminute.com', '2025-01-01', '10328.00', 85, '17692.00', 0, '2025-08-20 12:00:24'),
(19, 'Ebookers', '2025-01-01', '44613.00', 176, '52844.00', 0, '2025-08-20 12:00:24'),
(20, 'HotelTonight', '2025-01-01', '34880.00', 34, '31052.00', 0, '2025-08-20 12:00:24'),
(21, 'Expedia', '2025-02-01', '48194.00', 54, '40278.00', 0, '2025-08-20 12:00:24'),
(22, 'Booking.com', '2025-02-01', '41973.00', 38, '35589.00', 0, '2025-08-20 12:00:24'),
(23, 'Priceline', '2025-02-01', '27983.00', 125, '30080.00', 0, '2025-08-20 12:00:24'),
(24, 'Agoda', '2025-02-01', '16755.00', 96, '8373.00', 0, '2025-08-20 12:00:24'),
(25, 'Hotels.com', '2025-02-01', '37767.00', 39, '35488.00', 0, '2025-08-20 12:00:24'),
(26, 'Travelocity', '2025-02-01', '11767.00', 47, '2738.00', 0, '2025-08-20 12:00:24'),
(27, 'Orbitz', '2025-02-01', '2120.00', 36, '8755.00', 0, '2025-08-20 12:00:24'),
(28, 'TripAdvisor', '2025-02-01', '35785.00', 155, '31957.00', 0, '2025-08-20 12:00:24'),
(29, 'Kayak', '2025-02-01', '13434.00', 143, '17913.00', 0, '2025-08-20 12:00:24'),
(30, 'Trivago', '2025-02-01', '29938.00', 133, '23921.00', 0, '2025-08-20 12:00:24'),
(31, 'Hotwire', '2025-02-01', '43682.00', 170, '47261.00', 0, '2025-08-20 12:00:24'),
(32, 'CheapOair', '2025-02-01', '25285.00', 114, '31172.00', 0, '2025-08-20 12:00:24'),
(33, 'Hostelworld', '2025-02-01', '8540.00', 163, '11864.00', 0, '2025-08-20 12:00:24'),
(34, 'Ctrip (Trip.com)', '2025-02-01', '17781.00', 155, '22540.00', 0, '2025-08-20 12:00:24'),
(35, 'Skyscanner', '2025-02-01', '15226.00', 100, '20823.00', 0, '2025-08-20 12:00:24'),
(36, 'Airbnb', '2025-02-01', '7414.00', 169, '-1542.00', 0, '2025-08-20 12:00:24'),
(37, 'Traveloka', '2025-02-01', '9709.00', 137, '-238.00', 0, '2025-08-20 12:00:24'),
(38, 'Lastminute.com', '2025-02-01', '35146.00', 169, '35004.00', 0, '2025-08-20 12:00:24'),
(39, 'Ebookers', '2025-02-01', '7996.00', 29, '12929.00', 0, '2025-08-20 12:00:24'),
(40, 'HotelTonight', '2025-02-01', '42312.00', 144, '46359.00', 0, '2025-08-20 12:00:24'),
(41, 'Expedia', '2025-03-01', '30518.00', 91, '39851.00', 0, '2025-08-20 12:00:24'),
(42, 'Booking.com', '2025-03-01', '22859.00', 40, '31600.00', 0, '2025-08-20 12:00:24'),
(43, 'Priceline', '2025-03-01', '35392.00', 59, '26331.00', 0, '2025-08-20 12:00:24'),
(44, 'Agoda', '2025-03-01', '1588.00', 75, '4134.00', 0, '2025-08-20 12:00:24'),
(45, 'Hotels.com', '2025-03-01', '6910.00', 157, '3458.00', 0, '2025-08-20 12:00:24'),
(46, 'Travelocity', '2025-03-01', '18708.00', 118, '8783.00', 0, '2025-08-20 12:00:24'),
(47, 'Orbitz', '2025-03-01', '44165.00', 60, '35720.00', 0, '2025-08-20 12:00:24'),
(48, 'TripAdvisor', '2025-03-01', '45066.00', 44, '38847.00', 0, '2025-08-20 12:00:24'),
(49, 'Kayak', '2025-03-01', '33483.00', 163, '27718.00', 0, '2025-08-20 12:00:24'),
(50, 'Trivago', '2025-03-01', '21898.00', 135, '13764.00', 0, '2025-08-20 12:00:24'),
(51, 'Hotwire', '2025-03-01', '10021.00', 43, '6831.00', 0, '2025-08-20 12:00:24'),
(52, 'CheapOair', '2025-03-01', '29116.00', 33, '35729.00', 0, '2025-08-20 12:00:24'),
(53, 'Hostelworld', '2025-03-01', '25042.00', 121, '22932.00', 0, '2025-08-20 12:00:24'),
(54, 'Ctrip (Trip.com)', '2025-03-01', '18584.00', 82, '21426.00', 0, '2025-08-20 12:00:24'),
(55, 'Skyscanner', '2025-03-01', '5989.00', 171, '5526.00', 0, '2025-08-20 12:00:24'),
(56, 'Airbnb', '2025-03-01', '43436.00', 108, '40645.00', 0, '2025-08-20 12:00:24'),
(57, 'Traveloka', '2025-03-01', '802.00', 138, '-8762.00', 0, '2025-08-20 12:00:24'),
(58, 'Lastminute.com', '2025-03-01', '5268.00', 178, '-4334.00', 0, '2025-08-20 12:00:24'),
(59, 'Ebookers', '2025-03-01', '18201.00', 163, '27761.00', 0, '2025-08-20 12:00:24'),
(60, 'HotelTonight', '2025-03-01', '24933.00', 43, '24129.00', 0, '2025-08-20 12:00:24'),
(61, 'Expedia', '2025-04-01', '46462.00', 175, '54824.00', 0, '2025-08-20 12:00:24'),
(62, 'Booking.com', '2025-04-01', '14715.00', 147, '7554.00', 0, '2025-08-20 12:00:24'),
(63, 'Priceline', '2025-04-01', '8834.00', 71, '11078.00', 0, '2025-08-20 12:00:24'),
(64, 'Agoda', '2025-04-01', '43659.00', 123, '40857.00', 0, '2025-08-20 12:00:24'),
(65, 'Hotels.com', '2025-04-01', '39173.00', 26, '48389.00', 0, '2025-08-20 12:00:24'),
(66, 'Travelocity', '2025-04-01', '6433.00', 178, '14122.00', 0, '2025-08-20 12:00:24'),
(67, 'Orbitz', '2025-04-01', '26065.00', 120, '29497.00', 0, '2025-08-20 12:00:24'),
(68, 'TripAdvisor', '2025-04-01', '30092.00', 45, '23583.00', 0, '2025-08-20 12:00:24'),
(69, 'Kayak', '2025-04-01', '36424.00', 163, '33001.00', 0, '2025-08-20 12:00:24'),
(70, 'Trivago', '2025-04-01', '49658.00', 102, '49640.00', 0, '2025-08-20 12:00:24'),
(71, 'Hotwire', '2025-04-01', '23884.00', 64, '19695.00', 0, '2025-08-20 12:00:24'),
(72, 'CheapOair', '2025-04-01', '27474.00', 22, '36692.00', 0, '2025-08-20 12:00:24'),
(73, 'Hostelworld', '2025-04-01', '27559.00', 39, '27051.00', 0, '2025-08-20 12:00:24'),
(74, 'Ctrip (Trip.com)', '2025-04-01', '29318.00', 26, '25903.00', 0, '2025-08-20 12:00:24'),
(75, 'Skyscanner', '2025-04-01', '41185.00', 39, '40072.00', 0, '2025-08-20 12:00:24'),
(76, 'Airbnb', '2025-04-01', '46442.00', 37, '43433.00', 0, '2025-08-20 12:00:24'),
(77, 'Traveloka', '2025-04-01', '3962.00', 50, '1614.00', 0, '2025-08-20 12:00:24'),
(78, 'Lastminute.com', '2025-04-01', '39671.00', 128, '48729.00', 0, '2025-08-20 12:00:24'),
(79, 'Ebookers', '2025-04-01', '38500.00', 31, '38946.00', 0, '2025-08-20 12:00:24'),
(80, 'HotelTonight', '2025-04-01', '20332.00', 30, '25967.00', 0, '2025-08-20 12:00:24'),
(81, 'Expedia', '2025-05-01', '47350.00', 116, '56512.00', 0, '2025-08-20 12:00:24'),
(82, 'Booking.com', '2025-05-01', '17999.00', 58, '23552.00', 0, '2025-08-20 12:00:24'),
(83, 'Priceline', '2025-05-01', '11213.00', 43, '16906.00', 0, '2025-08-20 12:00:24'),
(84, 'Agoda', '2025-05-01', '48646.00', 41, '42704.00', 0, '2025-08-20 12:00:24'),
(85, 'Hotels.com', '2025-05-01', '49738.00', 77, '54411.00', 0, '2025-08-20 12:00:24'),
(86, 'Travelocity', '2025-05-01', '23112.00', 58, '21158.00', 0, '2025-08-20 12:00:24'),
(87, 'Orbitz', '2025-05-01', '6369.00', 40, '-2699.00', 0, '2025-08-20 12:00:24'),
(88, 'TripAdvisor', '2025-05-01', '31797.00', 161, '34364.00', 0, '2025-08-20 12:00:24'),
(89, 'Kayak', '2025-05-01', '17549.00', 48, '10531.00', 0, '2025-08-20 12:00:24'),
(90, 'Trivago', '2025-05-01', '49059.00', 75, '46342.00', 0, '2025-08-20 12:00:24'),
(91, 'Hotwire', '2025-05-01', '13588.00', 179, '11438.00', 0, '2025-08-20 12:00:24'),
(92, 'CheapOair', '2025-05-01', '22742.00', 145, '18988.00', 0, '2025-08-20 12:00:24'),
(93, 'Hostelworld', '2025-05-01', '38394.00', 122, '40794.00', 0, '2025-08-20 12:00:24'),
(94, 'Ctrip (Trip.com)', '2025-05-01', '5086.00', 102, '10918.00', 0, '2025-08-20 12:00:24'),
(95, 'Skyscanner', '2025-05-01', '20931.00', 120, '23010.00', 0, '2025-08-20 12:00:24'),
(96, 'Airbnb', '2025-05-01', '30114.00', 169, '29023.00', 0, '2025-08-20 12:00:24'),
(97, 'Traveloka', '2025-05-01', '25911.00', 107, '19015.00', 0, '2025-08-20 12:00:24'),
(98, 'Lastminute.com', '2025-05-01', '7856.00', 42, '14032.00', 0, '2025-08-20 12:00:24'),
(99, 'Ebookers', '2025-05-01', '22099.00', 143, '18291.00', 0, '2025-08-20 12:00:24'),
(100, 'HotelTonight', '2025-05-01', '23441.00', 96, '31783.00', 0, '2025-08-20 12:00:24'),
(101, 'Expedia', '2025-06-01', '42951.00', 45, '52829.00', 0, '2025-08-20 12:00:24'),
(102, 'Booking.com', '2025-06-01', '27571.00', 110, '18393.00', 0, '2025-08-20 12:00:24'),
(103, 'Priceline', '2025-06-01', '25514.00', 138, '31491.00', 0, '2025-08-20 12:00:24'),
(104, 'Agoda', '2025-06-01', '10014.00', 97, '14493.00', 0, '2025-08-20 12:00:24'),
(105, 'Hotels.com', '2025-06-01', '8961.00', 170, '7417.00', 0, '2025-08-20 12:00:24'),
(106, 'Travelocity', '2025-06-01', '43631.00', 175, '38702.00', 0, '2025-08-20 12:00:24'),
(107, 'Orbitz', '2025-06-01', '12809.00', 29, '17174.00', 0, '2025-08-20 12:00:24'),
(108, 'TripAdvisor', '2025-06-01', '29406.00', 59, '35325.00', 0, '2025-08-20 12:00:24'),
(109, 'Kayak', '2025-06-01', '47063.00', 76, '41319.00', 0, '2025-08-20 12:00:24'),
(110, 'Trivago', '2025-06-01', '5470.00', 158, '-2300.00', 0, '2025-08-20 12:00:24'),
(111, 'Hotwire', '2025-06-01', '38001.00', 80, '43212.00', 0, '2025-08-20 12:00:24'),
(112, 'CheapOair', '2025-06-01', '29448.00', 131, '22760.00', 0, '2025-08-20 12:00:24'),
(113, 'Hostelworld', '2025-06-01', '2299.00', 137, '-1752.00', 0, '2025-08-20 12:00:24'),
(114, 'Ctrip (Trip.com)', '2025-06-01', '43035.00', 79, '35235.00', 0, '2025-08-20 12:00:24'),
(115, 'Skyscanner', '2025-06-01', '43087.00', 50, '42326.00', 0, '2025-08-20 12:00:24'),
(116, 'Airbnb', '2025-06-01', '21417.00', 89, '27645.00', 0, '2025-08-20 12:00:24'),
(117, 'Traveloka', '2025-06-01', '28712.00', 114, '26840.00', 0, '2025-08-20 12:00:24'),
(118, 'Lastminute.com', '2025-06-01', '1842.00', 58, '8616.00', 0, '2025-08-20 12:00:24'),
(119, 'Ebookers', '2025-06-01', '23503.00', 85, '31916.00', 0, '2025-08-20 12:00:24'),
(120, 'HotelTonight', '2025-06-01', '24436.00', 47, '19486.00', 0, '2025-08-20 12:00:24');

-- --------------------------------------------------------

--
-- Table structure for table `audit_points`
--

CREATE TABLE `audit_points` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `month` date DEFAULT NULL,
  `audit_point` varchar(200) DEFAULT NULL,
  `discrepancy` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `closing_date` date DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `mistake_type` varchar(100) DEFAULT NULL,
  `risk_rate` int(11) DEFAULT NULL,
  `month_copy` date DEFAULT NULL,
  `final_po_audit_rating` decimal(5,2) DEFAULT NULL,
  `final_ageing_audit_rating` decimal(5,2) DEFAULT NULL,
  `ar_ageing_score` decimal(5,2) DEFAULT NULL,
  `paymaster_score` decimal(5,2) DEFAULT NULL,
  `delay_filing_audit_rate` decimal(5,2) DEFAULT NULL,
  `itc_audit_rating` decimal(5,2) DEFAULT NULL,
  `pos_audit_rating` decimal(5,2) DEFAULT NULL,
  `dd_audit_rating` decimal(5,2) DEFAULT NULL,
  `salary_accrual_audit_rating` decimal(5,2) DEFAULT NULL,
  `total_audit_score` decimal(8,2) DEFAULT NULL,
  `final_audit_score` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `employee_code` varchar(50) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `joining_date` date DEFAULT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `gl`
--

CREATE TABLE `gl` (
  `id` int(11) NOT NULL,
  `month` date DEFAULT NULL,
  `particulars` varchar(200) DEFAULT NULL,
  `amount` decimal(12,2) DEFAULT NULL,
  `audit_points` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(11) NOT NULL,
  `month` date DEFAULT NULL,
  `items` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `costs` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `inventory_value` double DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `ageing_days` int(11) DEFAULT NULL,
  `warehouse` varchar(255) DEFAULT NULL,
  `deleted_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `month`, `items`, `price`, `costs`, `count`, `inventory_value`, `category`, `ageing_days`, `warehouse`, `deleted_status`, `created_at`) VALUES
(1, '2025-01-01', 'Mug (White)', '24.99', '₹ 15.00', 20, 300, 'Other Inventory', 377, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(2, '2025-01-01', 'Mug (Black)', '24.99', '₹ 15.00', 40, 600, 'Other Inventory', 191, 'Banquet', '0', '2025-08-21 05:36:05'),
(3, '2025-01-01', 'Canopy Travel Mug (NEW - Flashbay)', '24.99', '₹ 13.99', 20, 279.8, 'Other Inventory', 364, 'Banquet', '0', '2025-08-21 05:36:05'),
(4, '2025-01-01', 'Canopy Cap (White) (NEW - Flashbay)', '25.99', '₹ 14.88', 23, 342.24, 'Other Inventory', 393, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(5, '2025-01-01', 'Canopy Cap (Black) (NEW - Flashbay)', '25.99', '₹ 14.88', 41, 610.08, 'Other Inventory', 222, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(6, '2025-01-01', 'Canopy Bottle (White) (NEW - Flashbay)', '29.99', '₹ 17.74', 40, 709.6, 'Other Inventory', 312, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(7, '2025-01-01', 'Canopy Bottle (Black) (NEW - Flashbay)', '29.99', '₹ 17.74', 45, 798.3, 'Other Inventory', 415, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(8, '2025-01-01', 'Sunglasses', '10', '₹ 4.00', 13, 52, 'Other Inventory', 155, 'Banquet', '0', '2025-08-21 05:36:05'),
(9, '2025-01-01', 'Travel Umbrellas', '35', '₹ 22.02', 27, 594.54, 'Other Inventory', 480, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(10, '2025-01-01', 'Sleep Mask', '6', '₹ 1.69', 0, NULL, 'Other Inventory', 384, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(11, '2025-01-01', 'Socks', '12.99', '₹ 4.62', 105, 485.1, 'Other Inventory', 264, 'Banquet', '0', '2025-08-21 05:36:05'),
(12, '2025-01-01', 'Playing Cards', '10', '₹ 2.70', 0, NULL, 'Other Inventory', 475, 'Banquet', '0', '2025-08-21 05:36:05'),
(13, '2025-01-01', 'Yoga Mat/Carrying Case', '40', '₹ 16.00', 15, 240, 'Other Inventory', 401, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(14, '2025-01-01', 'Canopy Key Chains', '6.99', '₹ 1.22', 0, NULL, 'Other Inventory', 139, 'Banquet', '0', '2025-08-21 05:36:05'),
(15, '2025-01-01', 'Canopy Scarf', '50', '₹ 13.10', 13, 170.3, 'Other Inventory', 286, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(16, '2025-01-01', 'Canopy Square Pocket', '30', '₹ 6.08', 4, 24.32, 'Other Inventory', 219, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(17, '2025-01-01', 'New Canopy Key Chains (NEW)', '7.99', '₹ 4.00', 5, 20, 'Other Inventory', 488, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(18, '2025-01-01', 'Canopy Magnets (NEW)', '5.99', '₹ 3.00', 5, 15, 'Other Inventory', 497, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(19, '2025-01-01', 'JF Candles', '30', '₹ 24.99', 7, 174.93, 'Other Inventory', 483, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(20, '2025-01-01', 'PrideBites Pet Toys', NULL, NULL, 0, NULL, 'Other Inventory', 196, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(21, '2025-01-01', 'Bee Local Honey', NULL, NULL, 0, NULL, 'Other Inventory', 475, 'Banquet', '0', '2025-08-21 05:36:05'),
(22, '2025-01-01', 'Small Batch 250g Toronto Neighbourhood Honey', '11.99', '₹ 2.12', 23, 48.76, 'Other Inventory', 114, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(23, '2025-01-01', 'Smaller batch', NULL, NULL, 0, NULL, 'Other Inventory', 450, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(24, '2025-01-01', 'Ivy & Zale', NULL, NULL, 0, NULL, 'Other Inventory', 211, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(25, '2025-01-01', 'Scented Soap Bars', '11.95', '₹ 9.11', 4, 36.44, 'Other Inventory', 468, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(26, '2025-01-01', 'Cinnamon Hearts', '11.95', '₹ 9.11', 0, NULL, 'Other Inventory', 197, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(27, '2025-01-01', 'Honeycomb Soap Bars', '9', '₹ 6.16', 0, NULL, 'Other Inventory', 425, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(28, '2025-01-01', 'Bath Salts', '22', '₹ 19.16', 0, NULL, 'Other Inventory', 407, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(29, '2025-01-01', 'Bamboo Dish', '14.5', '₹ 11.66', 0, NULL, 'Other Inventory', 346, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(30, '2025-01-01', 'Soap Saver Bag', '6.5', '₹ 3.66', 0, NULL, 'Other Inventory', 409, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(31, '2025-01-01', 'Black Walnut Soap Dish', '11', '₹ 8.16', 0, NULL, 'Other Inventory', 219, 'Banquet', '0', '2025-08-21 05:36:05'),
(32, '2025-01-01', 'Chip Bag', '₹ 3.50', '₹ 0.80', 0, NULL, 'Other Inventory', 361, 'Banquet', '0', '2025-08-21 05:36:05'),
(33, '2025-01-01', 'Sun Chips', '₹ 3.50', '₹ 0.83', 58, 48.14, 'Other Inventory', 474, 'Banquet', '0', '2025-08-21 05:36:05'),
(34, '2025-01-01', 'Smartfood White Cheddar Popcorn', '₹ 4.99', '₹ 1.04', 48, 49.88, 'Other Inventory', 121, 'Banquet', '0', '2025-08-21 05:36:05'),
(35, '2025-01-01', 'Cheetos', '₹ 3.50', '₹ 0.83', 56, 46.48, 'Other Inventory', 235, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(36, '2025-01-01', 'Rold Gold Pretzels', '₹ 3.98', '₹ 0.83', 22, 18.18, 'Other Inventory', 112, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(37, '2025-01-01', 'Doritos', '₹ 8.99', '₹ 0.83', 79, 65.57, 'Other Inventory', 337, 'Banquet', '0', '2025-08-21 05:36:05'),
(38, '2025-01-01', 'Hershey Chocolate', '₹ 3.50', '₹ 1.20', 45, 54, 'Other Inventory', 165, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(39, '2025-01-01', 'Aero Chocolate Bar', '₹ 4.50', '₹ 1.95', 0, NULL, 'Other Inventory', 363, 'Banquet', '0', '2025-08-21 05:36:05'),
(40, '2025-01-01', 'Kit Kat Chocolate Bar', '₹ 3.50', '₹ 1.47', 48, 70.56, 'Other Inventory', 229, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(41, '2025-01-01', 'Mars Chocolate Bar', '₹ 3.50', '₹ 1.39', 32, 44.48, 'Other Inventory', 291, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(42, '2025-01-01', 'Oreo Cookies', '₹ 2.99', '₹ 0.43', 0, NULL, 'Other Inventory', 436, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(43, '2025-01-01', 'KIND Sea Salt & Dark Chocolate Bar', '₹ 4.00', '₹ 1.52', 0, NULL, 'Other Inventory', 126, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(44, '2025-01-01', 'Clif Bar Oatmeal Raisin Walnut', '₹ 7.99', '₹ 3.03', 0, NULL, 'Other Inventory', 243, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(45, '2025-01-01', 'Mentos', '₹ 4.00', '₹ 0.89', 65, 57.85, 'Other Inventory', 489, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(46, '2025-01-01', 'Halls Honey', '₹ 2.99', '₹ 1.34', 18, 24.12, 'Other Inventory', 115, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(47, '2025-01-01', 'Halls Vitamin C', '₹ 2.99', '₹ 1.34', 0, NULL, 'Other Inventory', 230, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(48, '2025-01-01', 'Coffee Crisp Chocolate Bar', '₹ 3.50', '₹ 1.95', 6, 11.7, 'Other Inventory', 222, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(49, '2025-01-01', 'Snickers Chocolate Bar', '₹ 3.50', '₹ 1.98', 0, NULL, 'Other Inventory', 458, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(50, '2025-01-01', 'Reese\'s King Size', '₹ 4.50', '₹ 1.71', 28, 47.88, 'Other Inventory', 342, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(51, '2025-01-01', 'Excel Gum', '₹ 3.59', '₹ 1.10', 5, 5.5, 'Other Inventory', 177, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(52, '2025-01-01', 'Canned Sodas', '₹ 2.99', '₹ 0.56', 35, 19.6, 'Other Inventory', 496, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(53, '2025-01-01', 'Canopy Gin', '₹ 90.00', '₹ 35.75', 0, NULL, 'Other Inventory', 421, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(54, '2025-01-01', 'Evian Spring Water', '₹ 9.99', '₹ 2.62', 24, 62.88, 'Other Inventory', 177, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(55, '2025-01-01', 'Evian Sparkling Water', '₹ 12.99', '₹ 4.57', 24, 109.68, 'Other Inventory', 396, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(56, '2025-01-01', 'Water Bottle (crew)', NULL, '₹ 0.24', 107, 25.68, 'Other Inventory', 225, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(57, '2025-01-01', 'OMG Chocolate', '₹ 8.99', '₹ 3.69', 9, 33.21, 'Other Inventory', 292, 'Banquet', '0', '2025-08-21 05:36:05'),
(58, '2025-01-01', 'Kind Bar', '₹ 4.00', '₹ 0.76', 70, 53.2, 'Other Inventory', 420, 'Banquet', '0', '2025-08-21 05:36:05'),
(59, '2025-01-01', 'San Benedetto Sparkling Water', NULL, NULL, 0, NULL, 'Other Inventory', 423, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(60, '2025-01-01', 'Frozen Food', NULL, NULL, 196, 1, 'Food Inventory', 127, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(61, '2025-01-01', 'Beef & Lamb', NULL, NULL, 89, 968.72, 'Food Inventory', 121, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(62, '2025-01-01', 'Poultry', NULL, NULL, 57, 734.4, 'Food Inventory', 160, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(63, '2025-01-01', 'Pork', NULL, NULL, 14, 222.55, 'Food Inventory', 173, 'Banquet', '0', '2025-08-21 05:36:05'),
(64, '2025-01-01', 'Processed Meat', NULL, NULL, 15, 149.26, 'Food Inventory', 158, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(65, '2025-01-01', 'Seafood', NULL, NULL, 116, 807.38, 'Food Inventory', 238, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(66, '2025-01-01', 'Dairy', NULL, NULL, 59, 1, 'Food Inventory', 159, 'Banquet', '0', '2025-08-21 05:36:05'),
(67, '2025-01-01', 'Produce', NULL, NULL, 87, 1, 'Food Inventory', 94, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(68, '2025-01-01', 'Walk-In Fridge 1', NULL, NULL, 60, 1, 'Food Inventory', 50, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(69, '2025-01-01', 'Dry Storage', NULL, NULL, 693, 8, 'Food Inventory', 219, 'Banquet', '0', '2025-08-21 05:36:05'),
(70, '2025-01-01', 'Prepared Product', NULL, NULL, 174, 1, 'Food Inventory', 250, 'Banquet', '0', '2025-08-21 05:36:05'),
(71, '2025-01-01', 'Pastry Department', NULL, NULL, 500, 5, 'Food Inventory', 186, 'Banquet', '0', '2025-08-21 05:36:05'),
(72, '2025-01-01', 'Processed Food', NULL, NULL, 110, 657.34, 'Food Inventory', 68, 'Banquet', '0', '2025-08-21 05:36:05'),
(73, '2025-01-01', 'Food in Process', NULL, NULL, 44, 650, 'Food Inventory', 99, 'Banquet', '0', '2025-08-21 05:36:05'),
(74, '2025-01-01', 'Wine', NULL, NULL, 5, 23, 'Beverage Inventory', 381, 'Banquet', '0', '2025-08-21 05:36:05'),
(75, '2025-01-01', 'Liquor', NULL, NULL, 3, 18, 'Beverage Inventory', 430, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(76, '2025-01-01', 'Beer', NULL, NULL, 188, 3, 'Beverage Inventory', 100, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(77, '2025-01-01', 'Non-Alcoholic', NULL, NULL, 0, NULL, 'Beverage Inventory', 420, 'Banquet', '0', '2025-08-21 05:36:05'),
(78, '2025-01-01', 'Container', NULL, NULL, 2, 1, 'Beverage Inventory', 286, 'Banquet', '0', '2025-08-21 05:36:05'),
(79, '2025-02-01', 'Mug (White)', '24.99', '₹ 15.00', 3, 45, 'Other Inventory', 380, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(80, '2025-02-01', 'Mug (Black)', '24.99', '₹ 15.00', 16, 240, 'Other Inventory', 145, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(81, '2025-02-01', 'Canopy Travel Mug (NEW - Flashbay)', '24.99', '₹ 13.99', 30, 419.7, 'Other Inventory', 363, 'Banquet', '0', '2025-08-21 05:36:05'),
(82, '2025-02-01', 'Canopy Cap (White) (NEW - Flashbay)', '25.99', '₹ 14.88', 42, 624.96, 'Other Inventory', 215, 'Banquet', '0', '2025-08-21 05:36:05'),
(83, '2025-02-01', 'Canopy Cap (Black) (NEW - Flashbay)', '25.99', '₹ 14.88', 43, 639.84, 'Other Inventory', 465, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(84, '2025-02-01', 'Canopy Bottle (White) (NEW - Flashbay)', '29.99', '₹ 17.74', 44, 780.56, 'Other Inventory', 425, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(85, '2025-02-01', 'Canopy Bottle (Black) (NEW - Flashbay)', '29.99', '₹ 17.74', 2, 35.48, 'Other Inventory', 448, 'Banquet', '0', '2025-08-21 05:36:05'),
(86, '2025-02-01', 'Sunglasses', '10', '₹ 4.00', 6, 24, 'Other Inventory', 382, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(87, '2025-02-01', 'Travel Umbrellas', '35', '₹ 22.02', 25, 550.5, 'Other Inventory', 165, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(88, '2025-02-01', 'Sleep Mask', '6', '₹ 1.69', 18, 30.42, 'Other Inventory', 122, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(89, '2025-02-01', 'Socks', '12.99', '₹ 4.62', 7, 32.34, 'Other Inventory', 247, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(90, '2025-02-01', 'Playing Cards', '10', '₹ 2.70', 5, 13.5, 'Other Inventory', 349, 'Banquet', '0', '2025-08-21 05:36:05'),
(91, '2025-02-01', 'Yoga Mat/Carrying Case', '40', '₹ 16.00', 28, 448, 'Other Inventory', 165, 'Banquet', '0', '2025-08-21 05:36:05'),
(92, '2025-02-01', 'Canopy Key Chains', '6.99', '₹ 1.22', 33, 40.26, 'Other Inventory', 107, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(93, '2025-02-01', 'Canopy Scarf', '50', '₹ 13.10', 14, 183.4, 'Other Inventory', 299, 'Banquet', '0', '2025-08-21 05:36:05'),
(94, '2025-02-01', 'Canopy Square Pocket', '30', '₹ 6.08', 43, 261.44, 'Other Inventory', 303, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(95, '2025-02-01', 'New Canopy Key Chains (NEW)', '7.99', '₹ 4.00', 44, 176, 'Other Inventory', 278, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(96, '2025-02-01', 'Canopy Magnets (NEW)', '5.99', '₹ 3.00', 5, 15, 'Other Inventory', 280, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(97, '2025-02-01', 'JF Candles', '30', '₹ 24.99', 29, 724.71, 'Other Inventory', 367, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(98, '2025-02-01', 'PrideBites Pet Toys', NULL, NULL, 0, NULL, 'Other Inventory', 184, 'Banquet', '0', '2025-08-21 05:36:05'),
(99, '2025-02-01', 'Bee Local Honey', NULL, NULL, 0, NULL, 'Other Inventory', 279, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(100, '2025-02-01', 'Small Batch 250g Toronto Neighbourhood Honey', '11.99', '₹ 2.12', 33, 69.96, 'Other Inventory', 354, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(101, '2025-02-01', 'Smaller batch', NULL, NULL, 0, NULL, 'Other Inventory', 281, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(102, '2025-02-01', 'Ivy & Zale', NULL, NULL, 0, NULL, 'Other Inventory', 180, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(103, '2025-02-01', 'Scented Soap Bars', '11.95', '₹ 9.11', 40, 364.4, 'Other Inventory', 490, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(104, '2025-02-01', 'Cinnamon Hearts', '11.95', '₹ 9.11', 12, 109.32, 'Other Inventory', 246, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(105, '2025-02-01', 'Honeycomb Soap Bars', '9', '₹ 6.16', 30, 184.8, 'Other Inventory', 288, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(106, '2025-02-01', 'Bath Salts', '22', '₹ 19.16', 25, 479, 'Other Inventory', 482, 'Banquet', '0', '2025-08-21 05:36:05'),
(107, '2025-02-01', 'Bamboo Dish', '14.5', '₹ 11.66', 4, 46.64, 'Other Inventory', 221, 'Banquet', '0', '2025-08-21 05:36:05'),
(108, '2025-02-01', 'Soap Saver Bag', '6.5', '₹ 3.66', 40, 146.4, 'Other Inventory', 247, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(109, '2025-02-01', 'Black Walnut Soap Dish', '11', '₹ 8.16', 14, 114.24, 'Other Inventory', 238, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(110, '2025-02-01', 'Chip Bag', '₹ 3.50', '₹ 0.80', 47, 37.6, 'Other Inventory', 469, 'Banquet', '0', '2025-08-21 05:36:05'),
(111, '2025-02-01', 'Sun Chips', '₹ 3.50', '₹ 0.83', 17, 14.11, 'Other Inventory', 444, 'Banquet', '0', '2025-08-21 05:36:05'),
(112, '2025-02-01', 'Smartfood White Cheddar Popcorn', '₹ 4.99', '₹ 1.04', 11, 11.43, 'Other Inventory', 108, 'Banquet', '0', '2025-08-21 05:36:05'),
(113, '2025-02-01', 'Cheetos', '₹ 3.50', '₹ 0.83', 39, 32.37, 'Other Inventory', 460, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(114, '2025-02-01', 'Rold Gold Pretzels', '₹ 3.98', '₹ 0.83', 8, 6.61, 'Other Inventory', 423, 'Banquet', '0', '2025-08-21 05:36:05'),
(115, '2025-02-01', 'Doritos', '₹ 8.99', '₹ 0.83', 46, 38.18, 'Other Inventory', 194, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(116, '2025-02-01', 'Hershey Chocolate', '₹ 3.50', '₹ 1.20', 1, 1.2, 'Other Inventory', 277, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(117, '2025-02-01', 'Aero Chocolate Bar', '₹ 4.50', '₹ 1.95', 1, 1.95, 'Other Inventory', 258, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(118, '2025-02-01', 'Kit Kat Chocolate Bar', '₹ 3.50', '₹ 1.47', 37, 54.39, 'Other Inventory', 167, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(119, '2025-02-01', 'Mars Chocolate Bar', '₹ 3.50', '₹ 1.39', 3, 4.17, 'Other Inventory', 114, 'Banquet', '0', '2025-08-21 05:36:05'),
(120, '2025-02-01', 'Oreo Cookies', '₹ 2.99', '₹ 0.43', 5, 2.15, 'Other Inventory', 225, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(121, '2025-02-01', 'KIND Sea Salt & Dark Chocolate Bar', '₹ 4.00', '₹ 1.52', 17, 25.84, 'Other Inventory', 469, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(122, '2025-02-01', 'Clif Bar Oatmeal Raisin Walnut', '₹ 7.99', '₹ 3.03', 25, 75.75, 'Other Inventory', 449, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(123, '2025-02-01', 'Mentos', '₹ 4.00', '₹ 0.89', 4, 3.56, 'Other Inventory', 432, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(124, '2025-02-01', 'Halls Honey', '₹ 2.99', '₹ 1.34', 35, 46.9, 'Other Inventory', 334, 'Banquet', '0', '2025-08-21 05:36:05'),
(125, '2025-02-01', 'Halls Vitamin C', '₹ 2.99', '₹ 1.34', 33, 44.22, 'Other Inventory', 202, 'Banquet', '0', '2025-08-21 05:36:05'),
(126, '2025-02-01', 'Coffee Crisp Chocolate Bar', '₹ 3.50', '₹ 1.95', 20, 39, 'Other Inventory', 240, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(127, '2025-02-01', 'Snickers Chocolate Bar', '₹ 3.50', '₹ 1.98', 11, 21.78, 'Other Inventory', 470, 'Banquet', '0', '2025-08-21 05:36:05'),
(128, '2025-02-01', 'Reese\'s King Size', '₹ 4.50', '₹ 1.71', 45, 76.95, 'Other Inventory', 202, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(129, '2025-02-01', 'Excel Gum', '₹ 3.59', '₹ 1.10', 10, 11, 'Other Inventory', 426, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(130, '2025-02-01', 'Canned Sodas', '₹ 2.99', '₹ 0.56', 9, 5.04, 'Other Inventory', 395, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(131, '2025-02-01', 'Canopy Gin', '₹ 90.00', '₹ 35.75', 42, 1, 'Other Inventory', 110, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(132, '2025-02-01', 'Evian Spring Water', '₹ 9.99', '₹ 2.62', 31, 81.22, 'Other Inventory', 105, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(133, '2025-02-01', 'Evian Sparkling Water', '₹ 12.99', '₹ 4.57', 1, 4.57, 'Other Inventory', 325, 'Banquet', '0', '2025-08-21 05:36:05'),
(134, '2025-02-01', 'Water Bottle (crew)', NULL, '₹ 0.24', 43, 10.32, 'Other Inventory', 452, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(135, '2025-02-01', 'OMG Chocolate', '₹ 8.99', '₹ 3.69', 30, 110.7, 'Other Inventory', 364, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(136, '2025-02-01', 'Kind Bar', '₹ 4.00', '₹ 0.76', 35, 26.6, 'Other Inventory', 183, 'Banquet', '0', '2025-08-21 05:36:05'),
(137, '2025-02-01', 'San Benedetto Sparkling Water', NULL, NULL, 0, NULL, 'Other Inventory', 223, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(138, '2025-02-01', 'Frozen Food', NULL, NULL, 500, 4, 'Food Inventory', 136, 'Banquet', '0', '2025-08-21 05:36:05'),
(139, '2025-02-01', 'Beef & Lamb', NULL, NULL, 990, 4, 'Food Inventory', 191, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(140, '2025-02-01', 'Poultry', NULL, NULL, 45, 940, 'Food Inventory', 190, 'Banquet', '0', '2025-08-21 05:36:05'),
(141, '2025-02-01', 'Pork', NULL, NULL, 315, 1, 'Food Inventory', 134, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(142, '2025-02-01', 'Processed Meat', NULL, NULL, 22, 489, 'Food Inventory', 101, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(143, '2025-02-01', 'Seafood', NULL, NULL, 232, 1, 'Food Inventory', 72, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(144, '2025-02-01', 'Dairy', NULL, NULL, 98, 1, 'Food Inventory', 62, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(145, '2025-02-01', 'Produce', NULL, NULL, 264, 3, 'Food Inventory', 228, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(146, '2025-02-01', 'Walk-In Fridge 1', NULL, NULL, 78, 1, 'Food Inventory', 47, 'Banquet', '0', '2025-08-21 05:36:05'),
(147, '2025-02-01', 'Dry Storage', NULL, NULL, 352, 2, 'Food Inventory', 221, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(148, '2025-02-01', 'Prepared Product', NULL, NULL, 219, 1, 'Food Inventory', 158, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(149, '2025-02-01', 'Pastry Department', NULL, NULL, 146, 3, 'Food Inventory', 70, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(150, '2025-02-01', 'Processed Food', NULL, NULL, 107, 1, 'Food Inventory', 161, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(151, '2025-02-01', 'Food in Process', NULL, NULL, 132, 2, 'Food Inventory', 107, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(152, '2025-02-01', 'Wine', NULL, NULL, 348, 19, 'Beverage Inventory', 439, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(153, '2025-02-01', 'Liquor', NULL, NULL, 137, 9, 'Beverage Inventory', 274, 'Banquet', '0', '2025-08-21 05:36:05'),
(154, '2025-02-01', 'Beer', NULL, NULL, 483, 9, 'Beverage Inventory', 199, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(155, '2025-02-01', 'Non-Alcoholic', NULL, NULL, 634, 10, 'Beverage Inventory', 416, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(156, '2025-02-01', 'Container', NULL, NULL, 214, 10, 'Beverage Inventory', 301, 'Banquet', '0', '2025-08-21 05:36:05'),
(157, '2025-03-01', 'Mug (White)', '24.99', '₹ 15.00', 30, 450, 'Other Inventory', 117, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(158, '2025-03-01', 'Mug (Black)', '24.99', '₹ 15.00', 12, 180, 'Other Inventory', 276, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(159, '2025-03-01', 'Canopy Travel Mug (NEW - Flashbay)', '24.99', '₹ 13.99', 15, 209.85, 'Other Inventory', 181, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(160, '2025-03-01', 'Canopy Cap (White) (NEW - Flashbay)', '25.99', '₹ 14.88', 29, 431.52, 'Other Inventory', 422, 'Banquet', '0', '2025-08-21 05:36:05'),
(161, '2025-03-01', 'Canopy Cap (Black) (NEW - Flashbay)', '25.99', '₹ 14.88', 17, 252.96, 'Other Inventory', 364, 'Banquet', '0', '2025-08-21 05:36:05'),
(162, '2025-03-01', 'Canopy Bottle (White) (NEW - Flashbay)', '29.99', '₹ 17.74', 40, 709.6, 'Other Inventory', 468, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(163, '2025-03-01', 'Canopy Bottle (Black) (NEW - Flashbay)', '29.99', '₹ 17.74', 31, 549.94, 'Other Inventory', 129, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(164, '2025-03-01', 'Sunglasses', '10', '₹ 4.00', 47, 188, 'Other Inventory', 197, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(165, '2025-03-01', 'Travel Umbrellas', '35', '₹ 22.02', 44, 968.88, 'Other Inventory', 367, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(166, '2025-03-01', 'Sleep Mask', '6', '₹ 1.69', 38, 64.22, 'Other Inventory', 129, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(167, '2025-03-01', 'Socks', '12.99', '₹ 4.62', 2, 9.24, 'Other Inventory', 335, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(168, '2025-03-01', 'Playing Cards', '10', '₹ 2.70', 41, 110.7, 'Other Inventory', 447, 'Banquet', '0', '2025-08-21 05:36:05'),
(169, '2025-03-01', 'Yoga Mat/Carrying Case', '40', '₹ 16.00', 13, 208, 'Other Inventory', 345, 'Banquet', '0', '2025-08-21 05:36:05'),
(170, '2025-03-01', 'Canopy Key Chains', '6.99', '₹ 1.22', 8, 9.76, 'Other Inventory', 121, 'Banquet', '0', '2025-08-21 05:36:05'),
(171, '2025-03-01', 'Canopy Scarf', '50', '₹ 13.10', 19, 248.9, 'Other Inventory', 476, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(172, '2025-03-01', 'Canopy Square Pocket', '30', '₹ 6.08', 46, 279.68, 'Other Inventory', 100, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(173, '2025-03-01', 'New Canopy Key Chains (NEW)', '7.99', '₹ 4.00', 32, 128, 'Other Inventory', 141, 'Banquet', '0', '2025-08-21 05:36:05'),
(174, '2025-03-01', 'Canopy Magnets (NEW)', '5.99', '₹ 3.00', 36, 108, 'Other Inventory', 181, 'Banquet', '0', '2025-08-21 05:36:05'),
(175, '2025-03-01', 'JF Candles', '30', '₹ 24.99', 49, 1, 'Other Inventory', 442, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(176, '2025-03-01', 'PrideBites Pet Toys', NULL, NULL, 0, NULL, 'Other Inventory', 119, 'Banquet', '0', '2025-08-21 05:36:05'),
(177, '2025-03-01', 'Bee Local Honey', NULL, NULL, 0, NULL, 'Other Inventory', 275, 'Banquet', '0', '2025-08-21 05:36:05'),
(178, '2025-03-01', 'Small Batch 250g Toronto Neighbourhood Honey', '11.99', '₹ 2.12', 1, 2.12, 'Other Inventory', 419, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(179, '2025-03-01', 'Smaller batch', NULL, NULL, 0, NULL, 'Other Inventory', 109, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(180, '2025-03-01', 'Ivy & Zale', NULL, NULL, 0, NULL, 'Other Inventory', 284, 'Banquet', '0', '2025-08-21 05:36:05'),
(181, '2025-03-01', 'Scented Soap Bars', '11.95', '₹ 9.11', 13, 118.43, 'Other Inventory', 379, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(182, '2025-03-01', 'Cinnamon Hearts', '11.95', '₹ 9.11', 14, 127.54, 'Other Inventory', 497, 'Banquet', '0', '2025-08-21 05:36:05'),
(183, '2025-03-01', 'Honeycomb Soap Bars', '9', '₹ 6.16', 3, 18.48, 'Other Inventory', 279, 'Banquet', '0', '2025-08-21 05:36:05'),
(184, '2025-03-01', 'Bath Salts', '22', '₹ 19.16', 39, 747.24, 'Other Inventory', 356, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(185, '2025-03-01', 'Bamboo Dish', '14.5', '₹ 11.66', 16, 186.56, 'Other Inventory', 235, 'Banquet', '0', '2025-08-21 05:36:05'),
(186, '2025-03-01', 'Soap Saver Bag', '6.5', '₹ 3.66', 19, 69.54, 'Other Inventory', 295, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(187, '2025-03-01', 'Black Walnut Soap Dish', '11', '₹ 8.16', 24, 195.84, 'Other Inventory', 196, 'Banquet', '0', '2025-08-21 05:36:05'),
(188, '2025-03-01', 'Chip Bag', '₹ 3.50', '₹ 0.80', 25, 20, 'Other Inventory', 398, 'Banquet', '0', '2025-08-21 05:36:05'),
(189, '2025-03-01', 'Sun Chips', '₹ 3.50', '₹ 0.83', 39, 32.37, 'Other Inventory', 127, 'Banquet', '0', '2025-08-21 05:36:05'),
(190, '2025-03-01', 'Smartfood White Cheddar Popcorn', '₹ 4.99', '₹ 1.04', 31, 32.21, 'Other Inventory', 215, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(191, '2025-03-01', 'Cheetos', '₹ 3.50', '₹ 0.83', 30, 24.9, 'Other Inventory', 392, 'Banquet', '0', '2025-08-21 05:36:05'),
(192, '2025-03-01', 'Rold Gold Pretzels', '₹ 3.98', '₹ 0.83', 21, 17.36, 'Other Inventory', 224, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(193, '2025-03-01', 'Doritos', '₹ 8.99', '₹ 0.83', 31, 25.73, 'Other Inventory', 390, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(194, '2025-03-01', 'Hershey Chocolate', '₹ 3.50', '₹ 1.20', 29, 34.8, 'Other Inventory', 203, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(195, '2025-03-01', 'Aero Chocolate Bar', '₹ 4.50', '₹ 1.95', 44, 85.8, 'Other Inventory', 133, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(196, '2025-03-01', 'Kit Kat Chocolate Bar', '₹ 3.50', '₹ 1.47', 40, 58.8, 'Other Inventory', 361, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(197, '2025-03-01', 'Mars Chocolate Bar', '₹ 3.50', '₹ 1.39', 9, 12.51, 'Other Inventory', 222, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(198, '2025-03-01', 'Oreo Cookies', '₹ 2.99', '₹ 0.43', 44, 18.92, 'Other Inventory', 244, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(199, '2025-03-01', 'KIND Sea Salt & Dark Chocolate Bar', '₹ 4.00', '₹ 1.52', 38, 57.76, 'Other Inventory', 147, 'Banquet', '0', '2025-08-21 05:36:05'),
(200, '2025-03-01', 'Clif Bar Oatmeal Raisin Walnut', '₹ 7.99', '₹ 3.03', 6, 18.18, 'Other Inventory', 439, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(201, '2025-03-01', 'Mentos', '₹ 4.00', '₹ 0.89', 28, 24.92, 'Other Inventory', 101, 'Banquet', '0', '2025-08-21 05:36:05'),
(202, '2025-03-01', 'Halls Honey', '₹ 2.99', '₹ 1.34', 19, 25.46, 'Other Inventory', 246, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(203, '2025-03-01', 'Halls Vitamin C', '₹ 2.99', '₹ 1.34', 49, 65.66, 'Other Inventory', 163, 'Banquet', '0', '2025-08-21 05:36:05'),
(204, '2025-03-01', 'Coffee Crisp Chocolate Bar', '₹ 3.50', '₹ 1.95', 14, 27.3, 'Other Inventory', 305, 'Banquet', '0', '2025-08-21 05:36:05'),
(205, '2025-03-01', 'Snickers Chocolate Bar', '₹ 3.50', '₹ 1.98', 2, 3.96, 'Other Inventory', 395, 'Banquet', '0', '2025-08-21 05:36:05'),
(206, '2025-03-01', 'Reese\'s King Size', '₹ 4.50', '₹ 1.71', 36, 61.56, 'Other Inventory', 373, 'Banquet', '0', '2025-08-21 05:36:05'),
(207, '2025-03-01', 'Excel Gum', '₹ 3.59', '₹ 1.10', 0, NULL, 'Other Inventory', 201, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(208, '2025-03-01', 'Canned Sodas', '₹ 2.99', '₹ 0.56', 46, 25.76, 'Other Inventory', 201, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(209, '2025-03-01', 'Canopy Gin', '₹ 90.00', '₹ 35.75', 35, 1, 'Other Inventory', 303, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(210, '2025-03-01', 'Evian Spring Water', '₹ 9.99', '₹ 2.62', 46, 120.52, 'Other Inventory', 138, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(211, '2025-03-01', 'Evian Sparkling Water', '₹ 12.99', '₹ 4.57', 44, 201.08, 'Other Inventory', 395, 'Banquet', '0', '2025-08-21 05:36:05'),
(212, '2025-03-01', 'Water Bottle (crew)', NULL, '₹ 0.24', 32, 7.68, 'Other Inventory', 206, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(213, '2025-03-01', 'OMG Chocolate', '₹ 8.99', '₹ 3.69', 4, 14.76, 'Other Inventory', 114, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(214, '2025-03-01', 'Kind Bar', '₹ 4.00', '₹ 0.76', 16, 12.16, 'Other Inventory', 387, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(215, '2025-03-01', 'San Benedetto Sparkling Water', NULL, NULL, 0, NULL, 'Other Inventory', 272, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(216, '2025-03-01', 'Frozen Food', NULL, NULL, 30, 267, 'Food Inventory', 150, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(217, '2025-03-01', 'Beef & Lamb', NULL, NULL, 104, 2, 'Food Inventory', 246, 'Banquet', '0', '2025-08-21 05:36:05'),
(218, '2025-03-01', 'Poultry', NULL, NULL, 21, 103, 'Food Inventory', 113, 'Banquet', '0', '2025-08-21 05:36:05'),
(219, '2025-03-01', 'Pork', NULL, NULL, 306, 3, 'Food Inventory', 51, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(220, '2025-03-01', 'Processed Meat', NULL, NULL, 152, 3, 'Food Inventory', 107, 'Banquet', '0', '2025-08-21 05:36:05'),
(221, '2025-03-01', 'Seafood', NULL, NULL, 270, 2, 'Food Inventory', 207, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(222, '2025-03-01', 'Dairy', NULL, NULL, 206, 2, 'Food Inventory', 218, 'Banquet', '0', '2025-08-21 05:36:05'),
(223, '2025-03-01', 'Produce', NULL, NULL, 106, 2, 'Food Inventory', 234, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(224, '2025-03-01', 'Walk-In Fridge 1', NULL, NULL, 349, 3, 'Food Inventory', 67, 'Banquet', '0', '2025-08-21 05:36:05'),
(225, '2025-03-01', 'Dry Storage', NULL, NULL, 225, 4, 'Food Inventory', 97, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(226, '2025-03-01', 'Prepared Product', NULL, NULL, 34, 436, 'Food Inventory', 130, 'Banquet', '0', '2025-08-21 05:36:05'),
(227, '2025-03-01', 'Pastry Department', NULL, NULL, 365, 3, 'Food Inventory', 128, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(228, '2025-03-01', 'Processed Food', NULL, NULL, 166, 830, 'Food Inventory', 235, 'Banquet', '0', '2025-08-21 05:36:05'),
(229, '2025-03-01', 'Food in Process', NULL, NULL, 9, 49, 'Food Inventory', 98, 'Banquet', '0', '2025-08-21 05:36:05'),
(230, '2025-03-01', 'Wine', NULL, NULL, 48, 2, 'Beverage Inventory', 96, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(231, '2025-03-01', 'Liquor', NULL, NULL, 46, 3, 'Beverage Inventory', 282, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(232, '2025-03-01', 'Beer', NULL, NULL, 429, 8, 'Beverage Inventory', 58, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(233, '2025-03-01', 'Non-Alcoholic', NULL, NULL, 127, 19, 'Beverage Inventory', 40, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(234, '2025-03-01', 'Container', NULL, NULL, 202, 10, 'Beverage Inventory', 172, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(235, '2025-04-01', 'Mug (White)', '24.99', '₹ 15.00', 4, 60, 'Other Inventory', 428, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(236, '2025-04-01', 'Mug (Black)', '24.99', '₹ 15.00', 47, 705, 'Other Inventory', 123, 'Banquet', '0', '2025-08-21 05:36:05'),
(237, '2025-04-01', 'Canopy Travel Mug (NEW - Flashbay)', '24.99', '₹ 13.99', 44, 615.56, 'Other Inventory', 261, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(238, '2025-04-01', 'Canopy Cap (White) (NEW - Flashbay)', '25.99', '₹ 14.88', 14, 208.32, 'Other Inventory', 355, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(239, '2025-04-01', 'Canopy Cap (Black) (NEW - Flashbay)', '25.99', '₹ 14.88', 11, 163.68, 'Other Inventory', 329, 'Banquet', '0', '2025-08-21 05:36:05'),
(240, '2025-04-01', 'Canopy Bottle (White) (NEW - Flashbay)', '29.99', '₹ 17.74', 21, 372.54, 'Other Inventory', 208, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(241, '2025-04-01', 'Canopy Bottle (Black) (NEW - Flashbay)', '29.99', '₹ 17.74', 6, 106.44, 'Other Inventory', 264, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(242, '2025-04-01', 'Sunglasses', '10', '₹ 4.00', 38, 152, 'Other Inventory', 196, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(243, '2025-04-01', 'Travel Umbrellas', '35', '₹ 22.02', 27, 594.54, 'Other Inventory', 268, 'Banquet', '0', '2025-08-21 05:36:05'),
(244, '2025-04-01', 'Sleep Mask', '6', '₹ 1.69', 23, 38.87, 'Other Inventory', 413, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(245, '2025-04-01', 'Socks', '12.99', '₹ 4.62', 47, 217.14, 'Other Inventory', 111, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(246, '2025-04-01', 'Playing Cards', '10', '₹ 2.70', 29, 78.3, 'Other Inventory', 136, 'Banquet', '0', '2025-08-21 05:36:05'),
(247, '2025-04-01', 'Yoga Mat/Carrying Case', '40', '₹ 16.00', 40, 640, 'Other Inventory', 193, 'Banquet', '0', '2025-08-21 05:36:05'),
(248, '2025-04-01', 'Canopy Key Chains', '6.99', '₹ 1.22', 13, 15.86, 'Other Inventory', 329, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(249, '2025-04-01', 'Canopy Scarf', '50', '₹ 13.10', 1, 13.1, 'Other Inventory', 315, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(250, '2025-04-01', 'Canopy Square Pocket', '30', '₹ 6.08', 15, 91.2, 'Other Inventory', 416, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(251, '2025-04-01', 'New Canopy Key Chains (NEW)', '7.99', '₹ 4.00', 8, 32, 'Other Inventory', 220, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(252, '2025-04-01', 'Canopy Magnets (NEW)', '5.99', '₹ 3.00', 41, 123, 'Other Inventory', 210, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(253, '2025-04-01', 'JF Candles', '30', '₹ 24.99', 25, 624.75, 'Other Inventory', 493, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(254, '2025-04-01', 'PrideBites Pet Toys', NULL, NULL, 0, NULL, 'Other Inventory', 337, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(255, '2025-04-01', 'Bee Local Honey', NULL, NULL, 0, NULL, 'Other Inventory', 110, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(256, '2025-04-01', 'Small Batch 250g Toronto Neighbourhood Honey', '11.99', '₹ 2.12', 32, 67.84, 'Other Inventory', 225, 'Banquet', '0', '2025-08-21 05:36:05'),
(257, '2025-04-01', 'Smaller batch', NULL, NULL, 0, NULL, 'Other Inventory', 138, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(258, '2025-04-01', 'Ivy & Zale', NULL, NULL, 0, NULL, 'Other Inventory', 189, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(259, '2025-04-01', 'Scented Soap Bars', '11.95', '₹ 9.11', 12, 109.32, 'Other Inventory', 306, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(260, '2025-04-01', 'Cinnamon Hearts', '11.95', '₹ 9.11', 42, 382.62, 'Other Inventory', 306, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(261, '2025-04-01', 'Honeycomb Soap Bars', '9', '₹ 6.16', 3, 18.48, 'Other Inventory', 418, 'Banquet', '0', '2025-08-21 05:36:05'),
(262, '2025-04-01', 'Bath Salts', '22', '₹ 19.16', 41, 785.56, 'Other Inventory', 410, 'Banquet', '0', '2025-08-21 05:36:05'),
(263, '2025-04-01', 'Bamboo Dish', '14.5', '₹ 11.66', 48, 559.68, 'Other Inventory', 313, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(264, '2025-04-01', 'Soap Saver Bag', '6.5', '₹ 3.66', 47, 172.02, 'Other Inventory', 392, 'Banquet', '0', '2025-08-21 05:36:05'),
(265, '2025-04-01', 'Black Walnut Soap Dish', '11', '₹ 8.16', 28, 228.48, 'Other Inventory', 340, 'Banquet', '0', '2025-08-21 05:36:05'),
(266, '2025-04-01', 'Chip Bag', '₹ 3.50', '₹ 0.80', 32, 25.6, 'Other Inventory', 462, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(267, '2025-04-01', 'Sun Chips', '₹ 3.50', '₹ 0.83', 12, 9.96, 'Other Inventory', 475, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(268, '2025-04-01', 'Smartfood White Cheddar Popcorn', '₹ 4.99', '₹ 1.04', 14, 14.55, 'Other Inventory', 397, 'Banquet', '0', '2025-08-21 05:36:05'),
(269, '2025-04-01', 'Cheetos', '₹ 3.50', '₹ 0.83', 19, 15.77, 'Other Inventory', 348, 'Banquet', '0', '2025-08-21 05:36:05'),
(270, '2025-04-01', 'Rold Gold Pretzels', '₹ 3.98', '₹ 0.83', 14, 11.57, 'Other Inventory', 164, 'Banquet', '0', '2025-08-21 05:36:05'),
(271, '2025-04-01', 'Doritos', '₹ 8.99', '₹ 0.83', 8, 6.64, 'Other Inventory', 386, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(272, '2025-04-01', 'Hershey Chocolate', '₹ 3.50', '₹ 1.20', 6, 7.2, 'Other Inventory', 183, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(273, '2025-04-01', 'Aero Chocolate Bar', '₹ 4.50', '₹ 1.95', 33, 64.35, 'Other Inventory', 238, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(274, '2025-04-01', 'Kit Kat Chocolate Bar', '₹ 3.50', '₹ 1.47', 15, 22.05, 'Other Inventory', 204, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(275, '2025-04-01', 'Mars Chocolate Bar', '₹ 3.50', '₹ 1.39', 6, 8.34, 'Other Inventory', 340, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(276, '2025-04-01', 'Oreo Cookies', '₹ 2.99', '₹ 0.43', 25, 10.75, 'Other Inventory', 316, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(277, '2025-04-01', 'KIND Sea Salt & Dark Chocolate Bar', '₹ 4.00', '₹ 1.52', 40, 60.8, 'Other Inventory', 394, 'Banquet', '0', '2025-08-21 05:36:05'),
(278, '2025-04-01', 'Clif Bar Oatmeal Raisin Walnut', '₹ 7.99', '₹ 3.03', 49, 148.47, 'Other Inventory', 393, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(279, '2025-04-01', 'Mentos', '₹ 4.00', '₹ 0.89', 14, 12.46, 'Other Inventory', 490, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(280, '2025-04-01', 'Halls Honey', '₹ 2.99', '₹ 1.34', 8, 10.72, 'Other Inventory', 118, 'Banquet', '0', '2025-08-21 05:36:05'),
(281, '2025-04-01', 'Halls Vitamin C', '₹ 2.99', '₹ 1.34', 23, 30.82, 'Other Inventory', 439, 'Banquet', '0', '2025-08-21 05:36:05'),
(282, '2025-04-01', 'Coffee Crisp Chocolate Bar', '₹ 3.50', '₹ 1.95', 21, 40.95, 'Other Inventory', 172, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(283, '2025-04-01', 'Snickers Chocolate Bar', '₹ 3.50', '₹ 1.98', 13, 25.74, 'Other Inventory', 155, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(284, '2025-04-01', 'Reese\'s King Size', '₹ 4.50', '₹ 1.71', 38, 64.98, 'Other Inventory', 235, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(285, '2025-04-01', 'Excel Gum', '₹ 3.59', '₹ 1.10', 41, 45.1, 'Other Inventory', 358, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(286, '2025-04-01', 'Canned Sodas', '₹ 2.99', '₹ 0.56', 3, 1.68, 'Other Inventory', 258, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(287, '2025-04-01', 'Canopy Gin', '₹ 90.00', '₹ 35.75', 12, 429, 'Other Inventory', 378, 'Banquet', '0', '2025-08-21 05:36:05'),
(288, '2025-04-01', 'Evian Spring Water', '₹ 9.99', '₹ 2.62', 10, 26.2, 'Other Inventory', 205, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(289, '2025-04-01', 'Evian Sparkling Water', '₹ 12.99', '₹ 4.57', 42, 191.94, 'Other Inventory', 215, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(290, '2025-04-01', 'Water Bottle (crew)', NULL, '₹ 0.24', 8, 1.92, 'Other Inventory', 403, 'Banquet', '0', '2025-08-21 05:36:05'),
(291, '2025-04-01', 'OMG Chocolate', '₹ 8.99', '₹ 3.69', 28, 103.32, 'Other Inventory', 169, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(292, '2025-04-01', 'Kind Bar', '₹ 4.00', '₹ 0.76', 22, 16.72, 'Other Inventory', 324, 'Banquet', '0', '2025-08-21 05:36:05'),
(293, '2025-04-01', 'San Benedetto Sparkling Water', NULL, NULL, 0, NULL, 'Other Inventory', 253, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(294, '2025-04-01', 'Frozen Food', NULL, NULL, 71, 497, 'Food Inventory', 219, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(295, '2025-04-01', 'Beef & Lamb', NULL, NULL, 183, 3, 'Food Inventory', 203, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(296, '2025-04-01', 'Poultry', NULL, NULL, 35, 788, 'Food Inventory', 193, 'Banquet', '0', '2025-08-21 05:36:05'),
(297, '2025-04-01', 'Pork', NULL, NULL, 177, 2, 'Food Inventory', 249, 'Banquet', '0', '2025-08-21 05:36:05'),
(298, '2025-04-01', 'Processed Meat', NULL, NULL, 148, 3, 'Food Inventory', 148, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(299, '2025-04-01', 'Seafood', NULL, NULL, 115, 1, 'Food Inventory', 106, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(300, '2025-04-01', 'Dairy', NULL, NULL, 496, 3, 'Food Inventory', 230, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(301, '2025-04-01', 'Produce', NULL, NULL, 129, 2, 'Food Inventory', 133, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(302, '2025-04-01', 'Walk-In Fridge 1', NULL, NULL, 591, 4, 'Food Inventory', 244, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(303, '2025-04-01', 'Dry Storage', NULL, NULL, 271, 2, 'Food Inventory', 174, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(304, '2025-04-01', 'Prepared Product', NULL, NULL, 82, 1, 'Food Inventory', 74, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(305, '2025-04-01', 'Pastry Department', NULL, NULL, 250, 3, 'Food Inventory', 187, 'Banquet', '0', '2025-08-21 05:36:05'),
(306, '2025-04-01', 'Processed Food', NULL, NULL, 171, 4, 'Food Inventory', 161, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(307, '2025-04-01', 'Food in Process', NULL, NULL, 928, 4, 'Food Inventory', 64, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(308, '2025-04-01', 'Wine', NULL, NULL, 32, 1, 'Beverage Inventory', 309, 'Banquet', '0', '2025-08-21 05:36:05'),
(309, '2025-04-01', 'Liquor', NULL, NULL, 237, 16, 'Beverage Inventory', 246, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(310, '2025-04-01', 'Beer', NULL, NULL, 608, 12, 'Beverage Inventory', 385, 'Banquet', '0', '2025-08-21 05:36:05'),
(311, '2025-04-01', 'Non-Alcoholic', NULL, NULL, 300, 4, 'Beverage Inventory', 264, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(312, '2025-04-01', 'Container', NULL, NULL, 6, 309, 'Beverage Inventory', 202, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(313, '2025-05-01', 'Mug (White)', '24.99', '₹ 15.00', 45, 675, 'Other Inventory', 130, 'Banquet', '0', '2025-08-21 05:36:05'),
(314, '2025-05-01', 'Mug (Black)', '24.99', '₹ 15.00', 14, 210, 'Other Inventory', 428, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(315, '2025-05-01', 'Canopy Travel Mug (NEW - Flashbay)', '24.99', '₹ 13.99', 29, 405.71, 'Other Inventory', 401, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(316, '2025-05-01', 'Canopy Cap (White) (NEW - Flashbay)', '25.99', '₹ 14.88', 27, 401.76, 'Other Inventory', 123, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(317, '2025-05-01', 'Canopy Cap (Black) (NEW - Flashbay)', '25.99', '₹ 14.88', 11, 163.68, 'Other Inventory', 168, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(318, '2025-05-01', 'Canopy Bottle (White) (NEW - Flashbay)', '29.99', '₹ 17.74', 25, 443.5, 'Other Inventory', 170, 'Banquet', '0', '2025-08-21 05:36:05'),
(319, '2025-05-01', 'Canopy Bottle (Black) (NEW - Flashbay)', '29.99', '₹ 17.74', 31, 549.94, 'Other Inventory', 206, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(320, '2025-05-01', 'Sunglasses', '10', '₹ 4.00', 29, 116, 'Other Inventory', 217, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(321, '2025-05-01', 'Travel Umbrellas', '35', '₹ 22.02', 24, 528.48, 'Other Inventory', 301, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(322, '2025-05-01', 'Sleep Mask', '6', '₹ 1.69', 3, 5.07, 'Other Inventory', 376, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(323, '2025-05-01', 'Socks', '12.99', '₹ 4.62', 14, 64.68, 'Other Inventory', 407, 'Banquet', '0', '2025-08-21 05:36:05'),
(324, '2025-05-01', 'Playing Cards', '10', '₹ 2.70', 8, 21.6, 'Other Inventory', 498, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(325, '2025-05-01', 'Yoga Mat/Carrying Case', '40', '₹ 16.00', 28, 448, 'Other Inventory', 202, 'Banquet', '0', '2025-08-21 05:36:05'),
(326, '2025-05-01', 'Canopy Key Chains', '6.99', '₹ 1.22', 23, 28.06, 'Other Inventory', 230, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(327, '2025-05-01', 'Canopy Scarf', '50', '₹ 13.10', 46, 602.6, 'Other Inventory', 315, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(328, '2025-05-01', 'Canopy Square Pocket', '30', '₹ 6.08', 44, 267.52, 'Other Inventory', 186, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(329, '2025-05-01', 'New Canopy Key Chains (NEW)', '7.99', '₹ 4.00', 45, 180, 'Other Inventory', 246, 'Banquet', '0', '2025-08-21 05:36:05'),
(330, '2025-05-01', 'Canopy Magnets (NEW)', '5.99', '₹ 3.00', 47, 141, 'Other Inventory', 378, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(331, '2025-05-01', 'JF Candles', '30', '₹ 24.99', 12, 299.88, 'Other Inventory', 275, 'Banquet', '0', '2025-08-21 05:36:05'),
(332, '2025-05-01', 'PrideBites Pet Toys', NULL, NULL, 0, NULL, 'Other Inventory', 281, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(333, '2025-05-01', 'Bee Local Honey', NULL, NULL, 0, NULL, 'Other Inventory', 359, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(334, '2025-05-01', 'Small Batch 250g Toronto Neighbourhood Honey', '11.99', '₹ 2.12', 25, 53, 'Other Inventory', 405, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(335, '2025-05-01', 'Smaller batch', NULL, NULL, 0, NULL, 'Other Inventory', 410, 'Banquet', '0', '2025-08-21 05:36:05'),
(336, '2025-05-01', 'Ivy & Zale', NULL, NULL, 0, NULL, 'Other Inventory', 455, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(337, '2025-05-01', 'Scented Soap Bars', '11.95', '₹ 9.11', 34, 309.74, 'Other Inventory', 371, 'Banquet', '0', '2025-08-21 05:36:05'),
(338, '2025-05-01', 'Cinnamon Hearts', '11.95', '₹ 9.11', 43, 391.73, 'Other Inventory', 189, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(339, '2025-05-01', 'Honeycomb Soap Bars', '9', '₹ 6.16', 28, 172.48, 'Other Inventory', 104, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(340, '2025-05-01', 'Bath Salts', '22', '₹ 19.16', 44, 843.04, 'Other Inventory', 131, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(341, '2025-05-01', 'Bamboo Dish', '14.5', '₹ 11.66', 37, 431.42, 'Other Inventory', 135, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(342, '2025-05-01', 'Soap Saver Bag', '6.5', '₹ 3.66', 2, 7.32, 'Other Inventory', 387, 'Banquet', '0', '2025-08-21 05:36:05'),
(343, '2025-05-01', 'Black Walnut Soap Dish', '11', '₹ 8.16', 11, 89.76, 'Other Inventory', 348, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(344, '2025-05-01', 'Chip Bag', '₹ 3.50', '₹ 0.80', 43, 34.4, 'Other Inventory', 472, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(345, '2025-05-01', 'Sun Chips', '₹ 3.50', '₹ 0.83', 13, 10.79, 'Other Inventory', 483, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(346, '2025-05-01', 'Smartfood White Cheddar Popcorn', '₹ 4.99', '₹ 1.04', 33, 34.29, 'Other Inventory', 167, 'Banquet', '0', '2025-08-21 05:36:05'),
(347, '2025-05-01', 'Cheetos', '₹ 3.50', '₹ 0.83', 48, 39.84, 'Other Inventory', 294, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(348, '2025-05-01', 'Rold Gold Pretzels', '₹ 3.98', '₹ 0.83', 16, 13.22, 'Other Inventory', 362, 'Restaurant 1', '0', '2025-08-21 05:36:05'),
(349, '2025-05-01', 'Doritos', '₹ 8.99', '₹ 0.83', 20, 16.6, 'Other Inventory', 423, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(350, '2025-05-01', 'Hershey Chocolate', '₹ 3.50', '₹ 1.20', 3, 3.6, 'Other Inventory', 376, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(351, '2025-05-01', 'Aero Chocolate Bar', '₹ 4.50', '₹ 1.95', 30, 58.5, 'Other Inventory', 219, 'Restaurant 2', '0', '2025-08-21 05:36:05'),
(352, '2025-05-01', 'Kit Kat Chocolate Bar', '₹ 3.50', '₹ 1.47', 14, 20.58, 'Other Inventory', 326, 'Banquet', '0', '2025-08-21 05:36:06'),
(353, '2025-05-01', 'Mars Chocolate Bar', '₹ 3.50', '₹ 1.39', 43, 59.77, 'Other Inventory', 312, 'Restaurant 2', '0', '2025-08-21 05:36:06'),
(354, '2025-05-01', 'Oreo Cookies', '₹ 2.99', '₹ 0.43', 7, 3.01, 'Other Inventory', 390, 'Banquet', '0', '2025-08-21 05:36:06'),
(355, '2025-05-01', 'KIND Sea Salt & Dark Chocolate Bar', '₹ 4.00', '₹ 1.52', 9, 13.68, 'Other Inventory', 232, 'Restaurant 1', '0', '2025-08-21 05:36:06'),
(356, '2025-05-01', 'Clif Bar Oatmeal Raisin Walnut', '₹ 7.99', '₹ 3.03', 40, 121.2, 'Other Inventory', 335, 'Banquet', '0', '2025-08-21 05:36:06'),
(357, '2025-05-01', 'Mentos', '₹ 4.00', '₹ 0.89', 45, 40.05, 'Other Inventory', 483, 'Banquet', '0', '2025-08-21 05:36:06'),
(358, '2025-05-01', 'Halls Honey', '₹ 2.99', '₹ 1.34', 34, 45.56, 'Other Inventory', 259, 'Banquet', '0', '2025-08-21 05:36:06'),
(359, '2025-05-01', 'Halls Vitamin C', '₹ 2.99', '₹ 1.34', 39, 52.26, 'Other Inventory', 493, 'Restaurant 1', '0', '2025-08-21 05:36:06'),
(360, '2025-05-01', 'Coffee Crisp Chocolate Bar', '₹ 3.50', '₹ 1.95', 39, 76.05, 'Other Inventory', 225, 'Banquet', '0', '2025-08-21 05:36:06'),
(361, '2025-05-01', 'Snickers Chocolate Bar', '₹ 3.50', '₹ 1.98', 14, 27.72, 'Other Inventory', 439, 'Restaurant 2', '0', '2025-08-21 05:36:06'),
(362, '2025-05-01', 'Reese\'s King Size', '₹ 4.50', '₹ 1.71', 38, 64.98, 'Other Inventory', 254, 'Restaurant 1', '0', '2025-08-21 05:36:06'),
(363, '2025-05-01', 'Excel Gum', '₹ 3.59', '₹ 1.10', 25, 27.5, 'Other Inventory', 437, 'Banquet', '0', '2025-08-21 05:36:06'),
(364, '2025-05-01', 'Canned Sodas', '₹ 2.99', '₹ 0.56', 34, 19.04, 'Other Inventory', 250, 'Restaurant 2', '0', '2025-08-21 05:36:06'),
(365, '2025-05-01', 'Canopy Gin', '₹ 90.00', '₹ 35.75', 31, 1, 'Other Inventory', 258, 'Restaurant 1', '0', '2025-08-21 05:36:06'),
(366, '2025-05-01', 'Evian Spring Water', '₹ 9.99', '₹ 2.62', 19, 49.78, 'Other Inventory', 203, 'Banquet', '0', '2025-08-21 05:36:06'),
(367, '2025-05-01', 'Evian Sparkling Water', '₹ 12.99', '₹ 4.57', 8, 36.56, 'Other Inventory', 416, 'Restaurant 1', '0', '2025-08-21 05:36:06'),
(368, '2025-05-01', 'Water Bottle (crew)', NULL, '₹ 0.24', 31, 7.44, 'Other Inventory', 234, 'Restaurant 1', '0', '2025-08-21 05:36:06'),
(369, '2025-05-01', 'OMG Chocolate', '₹ 8.99', '₹ 3.69', 32, 118.08, 'Other Inventory', 437, 'Banquet', '0', '2025-08-21 05:36:06'),
(370, '2025-05-01', 'Kind Bar', '₹ 4.00', '₹ 0.76', 18, 13.68, 'Other Inventory', 196, 'Restaurant 1', '0', '2025-08-21 05:36:06'),
(371, '2025-05-01', 'San Benedetto Sparkling Water', NULL, NULL, 0, NULL, 'Other Inventory', 131, 'Restaurant 2', '0', '2025-08-21 05:36:06'),
(372, '2025-05-01', 'Frozen Food', NULL, NULL, 554, 3, 'Food Inventory', 70, 'Banquet', '0', '2025-08-21 05:36:06'),
(373, '2025-05-01', 'Beef & Lamb', NULL, NULL, 33, 262, 'Food Inventory', 55, 'Restaurant 2', '0', '2025-08-21 05:36:06'),
(374, '2025-05-01', 'Poultry', NULL, NULL, 114, 2, 'Food Inventory', 35, 'Banquet', '0', '2025-08-21 05:36:06'),
(375, '2025-05-01', 'Pork', NULL, NULL, 65, 1, 'Food Inventory', 175, 'Banquet', '0', '2025-08-21 05:36:06'),
(376, '2025-05-01', 'Processed Meat', NULL, NULL, 594, 4, 'Food Inventory', 136, 'Restaurant 1', '0', '2025-08-21 05:36:06'),
(377, '2025-05-01', 'Seafood', NULL, NULL, 208, 4, 'Food Inventory', 83, 'Banquet', '0', '2025-08-21 05:36:06');
INSERT INTO `inventory` (`id`, `month`, `items`, `price`, `costs`, `count`, `inventory_value`, `category`, `ageing_days`, `warehouse`, `deleted_status`, `created_at`) VALUES
(378, '2025-05-01', 'Dairy', NULL, NULL, 129, 2, 'Food Inventory', 146, 'Restaurant 1', '0', '2025-08-21 05:36:06'),
(379, '2025-05-01', 'Produce', NULL, NULL, 249, 1, 'Food Inventory', 147, 'Restaurant 1', '0', '2025-08-21 05:36:06'),
(380, '2025-05-01', 'Walk-In Fridge 1', NULL, NULL, 131, 2, 'Food Inventory', 104, 'Banquet', '0', '2025-08-21 05:36:06'),
(381, '2025-05-01', 'Dry Storage', NULL, NULL, 18, 251, 'Food Inventory', 188, 'Restaurant 2', '0', '2025-08-21 05:36:06'),
(382, '2025-05-01', 'Prepared Product', NULL, NULL, 130, 2, 'Food Inventory', 235, 'Restaurant 1', '0', '2025-08-21 05:36:06'),
(383, '2025-05-01', 'Pastry Department', NULL, NULL, 182, 3, 'Food Inventory', 189, 'Banquet', '0', '2025-08-21 05:36:06'),
(384, '2025-05-01', 'Processed Food', NULL, NULL, 122, 3, 'Food Inventory', 125, 'Restaurant 1', '0', '2025-08-21 05:36:06'),
(385, '2025-05-01', 'Food in Process', NULL, NULL, 21, 456, 'Food Inventory', 169, 'Restaurant 1', '0', '2025-08-21 05:36:06'),
(386, '2025-05-01', 'Wine', NULL, NULL, 360, 14, 'Beverage Inventory', 53, 'Banquet', '0', '2025-08-21 05:36:06'),
(387, '2025-05-01', 'Liquor', NULL, NULL, 27, 1, 'Beverage Inventory', 75, 'Restaurant 1', '0', '2025-08-21 05:36:06'),
(388, '2025-05-01', 'Beer', NULL, NULL, 472, 9, 'Beverage Inventory', 120, 'Restaurant 2', '0', '2025-08-21 05:36:06'),
(389, '2025-05-01', 'Non-Alcoholic', NULL, NULL, 348, 5, 'Beverage Inventory', 81, 'Banquet', '0', '2025-08-21 05:36:06'),
(390, '2025-05-01', 'Container', NULL, NULL, 117, 5, 'Beverage Inventory', 160, 'Banquet', '0', '2025-08-21 05:36:06'),
(391, '2025-06-01', 'Mug (White)', '24.99', '₹ 15.00', 19, 285, 'Other Inventory', 232, 'Restaurant 1', '0', '2025-08-21 05:36:06'),
(392, '2025-06-01', 'Mug (Black)', '24.99', '₹ 15.00', 9, 135, 'Other Inventory', 323, 'Restaurant 2', '0', '2025-08-21 05:36:06'),
(393, '2025-06-01', 'Canopy Travel Mug (NEW - Flashbay)', '24.99', '₹ 13.99', 25, 349.75, 'Other Inventory', 452, 'Restaurant 2', '0', '2025-08-21 05:36:06'),
(394, '2025-06-01', 'Canopy Cap (White) (NEW - Flashbay)', '25.99', '₹ 14.88', 2, 29.76, 'Other Inventory', 348, 'Restaurant 2', '0', '2025-08-21 05:36:06'),
(395, '2025-06-01', 'Canopy Cap (Black) (NEW - Flashbay)', '25.99', '₹ 14.88', 31, 461.28, 'Other Inventory', 246, 'Banquet', '0', '2025-08-21 05:36:06'),
(396, '2025-06-01', 'Canopy Bottle (White) (NEW - Flashbay)', '29.99', '₹ 17.74', 19, 337.06, 'Other Inventory', 278, 'Restaurant 1', '0', '2025-08-21 05:36:06'),
(397, '2025-06-01', 'Canopy Bottle (Black) (NEW - Flashbay)', '29.99', '₹ 17.74', 32, 567.68, 'Other Inventory', 464, 'Restaurant 2', '0', '2025-08-21 05:36:06'),
(398, '2025-06-01', 'Sunglasses', '10', '₹ 4.00', 38, 152, 'Other Inventory', 162, 'Restaurant 1', '0', '2025-08-21 05:36:06'),
(399, '2025-06-01', 'Travel Umbrellas', '35', '₹ 22.02', 9, 198.18, 'Other Inventory', 231, 'Restaurant 1', '0', '2025-08-21 05:36:06'),
(400, '2025-06-01', 'Sleep Mask', '6', '₹ 1.69', 17, 28.73, 'Other Inventory', 367, 'Restaurant 1', '0', '2025-08-21 05:36:06'),
(401, '2025-06-01', 'Socks', '12.99', '₹ 4.62', 5, 23.1, 'Other Inventory', 347, 'Banquet', '0', '2025-08-21 05:36:06'),
(402, '2025-06-01', 'Playing Cards', '10', '₹ 2.70', 21, 56.7, 'Other Inventory', 343, 'Restaurant 2', '0', '2025-08-21 05:36:06'),
(403, '2025-06-01', 'Yoga Mat/Carrying Case', '40', '₹ 16.00', 2, 32, 'Other Inventory', 485, 'Banquet', '0', '2025-08-21 05:36:06'),
(404, '2025-06-01', 'Canopy Key Chains', '6.99', '₹ 1.22', 43, 52.46, 'Other Inventory', 277, 'Restaurant 1', '0', '2025-08-21 05:36:06'),
(405, '2025-06-01', 'Canopy Scarf', '50', '₹ 13.10', 45, 589.5, 'Other Inventory', 127, 'Restaurant 1', '0', '2025-08-21 05:36:06'),
(406, '2025-06-01', 'Canopy Square Pocket', '30', '₹ 6.08', 40, 243.2, 'Other Inventory', 442, 'Restaurant 1', '0', '2025-08-21 05:36:06'),
(407, '2025-06-01', 'New Canopy Key Chains (NEW)', '7.99', '₹ 4.00', 46, 184, 'Other Inventory', 416, 'Banquet', '0', '2025-08-21 05:36:06'),
(408, '2025-06-01', 'Canopy Magnets (NEW)', '5.99', '₹ 3.00', 18, 54, 'Other Inventory', 295, 'Restaurant 1', '0', '2025-08-21 05:36:06'),
(409, '2025-06-01', 'JF Candles', '30', '₹ 24.99', 38, 949.62, 'Other Inventory', 349, 'Restaurant 2', '0', '2025-08-21 05:36:06'),
(410, '2025-06-01', 'PrideBites Pet Toys', NULL, NULL, 0, NULL, 'Other Inventory', 335, 'Banquet', '0', '2025-08-21 05:36:06'),
(411, '2025-06-01', 'Bee Local Honey', NULL, NULL, 0, NULL, 'Other Inventory', 498, 'Restaurant 2', '0', '2025-08-21 05:36:06'),
(412, '2025-06-01', 'Small Batch 250g Toronto Neighbourhood Honey', '11.99', '₹ 2.12', 47, 99.64, 'Other Inventory', 253, 'Banquet', '0', '2025-08-21 05:36:06'),
(413, '2025-06-01', 'Smaller batch', NULL, NULL, 0, NULL, 'Other Inventory', 487, 'Restaurant 2', '0', '2025-08-21 05:36:06'),
(414, '2025-06-01', 'Ivy & Zale', NULL, NULL, 0, NULL, 'Other Inventory', 356, 'Restaurant 2', '0', '2025-08-21 05:36:06'),
(415, '2025-06-01', 'Scented Soap Bars', '11.95', '₹ 9.11', 2, 18.22, 'Other Inventory', 252, 'Banquet', '0', '2025-08-21 05:36:06'),
(416, '2025-06-01', 'Cinnamon Hearts', '11.95', '₹ 9.11', 23, 209.53, 'Other Inventory', 128, 'Restaurant 1', '0', '2025-08-21 05:36:06'),
(417, '2025-06-01', 'Honeycomb Soap Bars', '9', '₹ 6.16', 32, 197.12, 'Other Inventory', 378, 'Banquet', '0', '2025-08-21 05:36:06'),
(418, '2025-06-01', 'Bath Salts', '22', '₹ 19.16', 43, 823.88, 'Other Inventory', 409, 'Banquet', '0', '2025-08-21 05:36:06'),
(419, '2025-06-01', 'Bamboo Dish', '14.5', '₹ 11.66', 20, 233.2, 'Other Inventory', 360, 'Banquet', '0', '2025-08-21 05:36:06'),
(420, '2025-06-01', 'Soap Saver Bag', '6.5', '₹ 3.66', 19, 69.54, 'Other Inventory', 499, 'Restaurant 1', '0', '2025-08-21 05:36:06'),
(421, '2025-06-01', 'Black Walnut Soap Dish', '11', '₹ 8.16', 50, 408, 'Other Inventory', 384, 'Restaurant 2', '0', '2025-08-21 05:36:06'),
(422, '2025-06-01', 'Chip Bag', '₹ 3.50', '₹ 0.80', 12, 9.6, 'Other Inventory', 313, 'Banquet', '0', '2025-08-21 05:36:06'),
(423, '2025-06-01', 'Sun Chips', '₹ 3.50', '₹ 0.83', 11, 9.13, 'Other Inventory', 366, 'Restaurant 2', '0', '2025-08-21 05:36:06'),
(424, '2025-06-01', 'Smartfood White Cheddar Popcorn', '₹ 4.99', '₹ 1.04', 11, 11.43, 'Other Inventory', 202, 'Restaurant 2', '0', '2025-08-21 05:36:06'),
(425, '2025-06-01', 'Cheetos', '₹ 3.50', '₹ 0.83', 6, 4.98, 'Other Inventory', 209, 'Restaurant 1', '0', '2025-08-21 05:36:06'),
(426, '2025-06-01', 'Rold Gold Pretzels', '₹ 3.98', '₹ 0.83', 14, 11.57, 'Other Inventory', 326, 'Restaurant 1', '0', '2025-08-21 05:36:06'),
(427, '2025-06-01', 'Doritos', '₹ 8.99', '₹ 0.83', 28, 23.24, 'Other Inventory', 193, 'Restaurant 1', '0', '2025-08-21 05:36:06'),
(428, '2025-06-01', 'Hershey Chocolate', '₹ 3.50', '₹ 1.20', 15, 18, 'Other Inventory', 450, 'Restaurant 2', '0', '2025-08-21 05:36:06'),
(429, '2025-06-01', 'Aero Chocolate Bar', '₹ 4.50', '₹ 1.95', 12, 23.4, 'Other Inventory', 445, 'Restaurant 2', '0', '2025-08-21 05:36:06'),
(430, '2025-06-01', 'Kit Kat Chocolate Bar', '₹ 3.50', '₹ 1.47', 43, 63.21, 'Other Inventory', 288, 'Restaurant 1', '0', '2025-08-21 05:36:06'),
(431, '2025-06-01', 'Mars Chocolate Bar', '₹ 3.50', '₹ 1.39', 48, 66.72, 'Other Inventory', 101, 'Banquet', '0', '2025-08-21 05:36:06'),
(432, '2025-06-01', 'Oreo Cookies', '₹ 2.99', '₹ 0.43', 42, 18.06, 'Other Inventory', 313, 'Restaurant 1', '0', '2025-08-21 05:36:06'),
(433, '2025-06-01', 'KIND Sea Salt & Dark Chocolate Bar', '₹ 4.00', '₹ 1.52', 19, 28.88, 'Other Inventory', 100, 'Banquet', '0', '2025-08-21 05:36:06'),
(434, '2025-06-01', 'Clif Bar Oatmeal Raisin Walnut', '₹ 7.99', '₹ 3.03', 2, 6.06, 'Other Inventory', 263, 'Banquet', '0', '2025-08-21 05:36:06'),
(435, '2025-06-01', 'Mentos', '₹ 4.00', '₹ 0.89', 37, 32.93, 'Other Inventory', 118, 'Restaurant 2', '0', '2025-08-21 05:36:06'),
(436, '2025-06-01', 'Halls Honey', '₹ 2.99', '₹ 1.34', 5, 6.7, 'Other Inventory', 435, 'Restaurant 1', '0', '2025-08-21 05:36:06'),
(437, '2025-06-01', 'Halls Vitamin C', '₹ 2.99', '₹ 1.34', 14, 18.76, 'Other Inventory', 295, 'Restaurant 2', '0', '2025-08-21 05:36:06'),
(438, '2025-06-01', 'Coffee Crisp Chocolate Bar', '₹ 3.50', '₹ 1.95', 13, 25.35, 'Other Inventory', 440, 'Restaurant 1', '0', '2025-08-21 05:36:06'),
(439, '2025-06-01', 'Snickers Chocolate Bar', '₹ 3.50', '₹ 1.98', 28, 55.44, 'Other Inventory', 289, 'Restaurant 2', '0', '2025-08-21 05:36:06'),
(440, '2025-06-01', 'Reese\'s King Size', '₹ 4.50', '₹ 1.71', 4, 6.84, 'Other Inventory', 158, 'Restaurant 1', '0', '2025-08-21 05:36:06'),
(441, '2025-06-01', 'Excel Gum', '₹ 3.59', '₹ 1.10', 14, 15.4, 'Other Inventory', 238, 'Restaurant 1', '0', '2025-08-21 05:36:06'),
(442, '2025-06-01', 'Canned Sodas', '₹ 2.99', '₹ 0.56', 25, 14, 'Other Inventory', 262, 'Restaurant 1', '0', '2025-08-21 05:36:06'),
(443, '2025-06-01', 'Canopy Gin', '₹ 90.00', '₹ 35.75', 41, 1, 'Other Inventory', 252, 'Banquet', '0', '2025-08-21 05:36:06'),
(444, '2025-06-01', 'Evian Spring Water', '₹ 9.99', '₹ 2.62', 19, 49.78, 'Other Inventory', 413, 'Restaurant 2', '0', '2025-08-21 05:36:06'),
(445, '2025-06-01', 'Evian Sparkling Water', '₹ 12.99', '₹ 4.57', 17, 77.69, 'Other Inventory', 233, 'Banquet', '0', '2025-08-21 05:36:06'),
(446, '2025-06-01', 'Water Bottle (crew)', NULL, '₹ 0.24', 31, 7.44, 'Other Inventory', 121, 'Restaurant 1', '0', '2025-08-21 05:36:06'),
(447, '2025-06-01', 'OMG Chocolate', '₹ 8.99', '₹ 3.69', 0, NULL, 'Other Inventory', 495, 'Banquet', '0', '2025-08-21 05:36:06'),
(448, '2025-06-01', 'Kind Bar', '₹ 4.00', '₹ 0.76', 32, 24.32, 'Other Inventory', 182, 'Banquet', '0', '2025-08-21 05:36:06'),
(449, '2025-06-01', 'San Benedetto Sparkling Water', NULL, NULL, 0, NULL, 'Other Inventory', 274, 'Banquet', '0', '2025-08-21 05:36:06'),
(450, '2025-06-01', 'Frozen Food', NULL, NULL, 78, 1, 'Food Inventory', 217, 'Banquet', '0', '2025-08-21 05:36:06'),
(451, '2025-06-01', 'Beef & Lamb', NULL, NULL, 130, 2, 'Food Inventory', 210, 'Restaurant 1', '0', '2025-08-21 05:36:06'),
(452, '2025-06-01', 'Poultry', NULL, NULL, 87, 1, 'Food Inventory', 99, 'Banquet', '0', '2025-08-21 05:36:06'),
(453, '2025-06-01', 'Pork', NULL, NULL, 169, 2, 'Food Inventory', 145, 'Restaurant 1', '0', '2025-08-21 05:36:06'),
(454, '2025-06-01', 'Processed Meat', NULL, NULL, 86, 1, 'Food Inventory', 66, 'Banquet', '0', '2025-08-21 05:36:06'),
(455, '2025-06-01', 'Seafood', NULL, NULL, 468, 3, 'Food Inventory', 136, 'Restaurant 2', '0', '2025-08-21 05:36:06'),
(456, '2025-06-01', 'Dairy', NULL, NULL, 479, 4, 'Food Inventory', 190, 'Restaurant 2', '0', '2025-08-21 05:36:06'),
(457, '2025-06-01', 'Produce', NULL, NULL, 18, 429, 'Food Inventory', 161, 'Restaurant 1', '0', '2025-08-21 05:36:06'),
(458, '2025-06-01', 'Walk-In Fridge 1', NULL, NULL, 18, 274, 'Food Inventory', 130, 'Restaurant 2', '0', '2025-08-21 05:36:06'),
(459, '2025-06-01', 'Dry Storage', NULL, NULL, 380, 4, 'Food Inventory', 70, 'Restaurant 2', '0', '2025-08-21 05:36:06'),
(460, '2025-06-01', 'Prepared Product', NULL, NULL, 31, 372, 'Food Inventory', 35, 'Restaurant 2', '0', '2025-08-21 05:36:06'),
(461, '2025-06-01', 'Pastry Department', NULL, NULL, 285, 3, 'Food Inventory', 34, 'Restaurant 2', '0', '2025-08-21 05:36:06'),
(462, '2025-06-01', 'Processed Food', NULL, NULL, 132, 2, 'Food Inventory', 36, 'Restaurant 1', '0', '2025-08-21 05:36:06'),
(463, '2025-06-01', 'Food in Process', NULL, NULL, 364, 2, 'Food Inventory', 60, 'Restaurant 2', '0', '2025-08-21 05:36:06'),
(464, '2025-06-01', 'Wine', NULL, NULL, 122, 6, 'Beverage Inventory', 427, 'Restaurant 1', '0', '2025-08-21 05:36:06'),
(465, '2025-06-01', 'Liquor', NULL, NULL, 226, 15, 'Beverage Inventory', 182, 'Restaurant 2', '0', '2025-08-21 05:36:06'),
(466, '2025-06-01', 'Beer', NULL, NULL, 691, 13, 'Beverage Inventory', 235, 'Restaurant 1', '0', '2025-08-21 05:36:06'),
(467, '2025-06-01', 'Non-Alcoholic', NULL, NULL, 635, 9, 'Beverage Inventory', 354, 'Restaurant 1', '0', '2025-08-21 05:36:06'),
(468, '2025-06-01', 'Container', NULL, NULL, 121, 6, 'Beverage Inventory', 46, 'Banquet', '0', '2025-08-21 05:36:06');

-- --------------------------------------------------------

--
-- Table structure for table `month_master`
--

CREATE TABLE `month_master` (
  `id` int(11) NOT NULL,
  `month` varchar(20) NOT NULL,
  `year` year(4) NOT NULL,
  `deleted_status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `month_master`
--

INSERT INTO `month_master` (`id`, `month`, `year`, `deleted_status`, `created_at`) VALUES
(1, 'January', 2025, 0, '2025-08-20 11:39:05'),
(2, 'February', 2025, 0, '2025-08-20 11:39:05'),
(3, 'March', 2025, 0, '2025-08-20 11:39:05'),
(4, 'April', 2025, 0, '2025-08-20 11:39:05'),
(5, 'May', 2025, 0, '2025-08-20 11:39:05'),
(6, 'June', 2025, 0, '2025-08-20 11:39:05'),
(7, 'July', 2025, 0, '2025-08-20 11:39:05'),
(8, 'August', 2025, 0, '2025-08-20 11:39:05'),
(9, 'September', 2025, 0, '2025-08-20 11:39:05'),
(10, 'October', 2025, 0, '2025-08-20 11:39:05'),
(11, 'November', 2025, 0, '2025-08-20 11:39:05'),
(12, 'December', 2025, 0, '2025-08-20 11:39:05');

-- --------------------------------------------------------

--
-- Table structure for table `paymaster`
--

CREATE TABLE `paymaster` (
  `id` int(11) NOT NULL,
  `creditor_name` varchar(150) DEFAULT NULL,
  `month` date DEFAULT NULL,
  `balance_books` decimal(12,2) DEFAULT NULL,
  `ageing_days` int(11) DEFAULT NULL,
  `weight` decimal(5,2) DEFAULT NULL,
  `paymaster_audit_rating` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `po_details`
--

CREATE TABLE `po_details` (
  `id` int(11) NOT NULL,
  `po_date` date DEFAULT NULL,
  `po_number` varchar(100) DEFAULT NULL,
  `po_amount` decimal(12,2) DEFAULT NULL,
  `invoice_amount` decimal(12,2) DEFAULT NULL,
  `audit_rating` decimal(5,2) DEFAULT NULL,
  `weight` decimal(5,2) DEFAULT NULL,
  `po_audit_rating` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `salary_accrual_payment`
--

CREATE TABLE `salary_accrual_payment` (
  `id` int(11) NOT NULL,
  `month` date DEFAULT NULL,
  `accrued` decimal(12,2) DEFAULT NULL,
  `paid` decimal(12,2) DEFAULT NULL,
  `audit_rating_salary_accrual` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `statutory_liabilities`
--

CREATE TABLE `statutory_liabilities` (
  `id` int(11) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `month` date DEFAULT NULL,
  `deducted` decimal(12,2) DEFAULT NULL,
  `deposited` decimal(12,2) DEFAULT NULL,
  `eligible_itc` decimal(12,2) DEFAULT NULL,
  `claimed_itc` decimal(12,2) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `actual_filing_date` date DEFAULT NULL,
  `tax_pos` decimal(12,2) DEFAULT NULL,
  `audit_rating_deposit_deduct` decimal(5,2) DEFAULT NULL,
  `delay_filing_audit_rate` decimal(5,2) DEFAULT NULL,
  `audit_point_itc` decimal(5,2) DEFAULT NULL,
  `audit_point_pos` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `suggestion`
--

CREATE TABLE `suggestion` (
  `id` int(11) NOT NULL,
  `srno` varchar(255) DEFAULT NULL,
  `Department` varchar(255) DEFAULT NULL,
  `Month` varchar(255) DEFAULT NULL,
  `Audit_Rating` varchar(255) DEFAULT NULL,
  `Suggestions_For_Next_Month` text DEFAULT NULL,
  `Deleted_Status` int(11) DEFAULT NULL,
  `Created_at` varchar(255) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `suggestion`
--

INSERT INTO `suggestion` (`id`, `srno`, `Department`, `Month`, `Audit_Rating`, `Suggestions_For_Next_Month`, `Deleted_Status`, `Created_at`) VALUES
(1, 'EE1', 'Accounts Payable', '2025-01-01', '0.96', '98% Sample Compliant-Policy 1456-Tighten three-way match by reconciling 100% of invoice quantities.', 0, '2147483647'),
(2, 'EE2', 'Accounts Receivable', '2025-01-01', '1.64', 'Breakfast Outlet-Implement daily billing-cutoff in POS terminal to overlap late breakfast in Lunch revenue.', NULL, '2147483647'),
(3, 'EE3', 'Payroll', '2025-01-01', '0.30', 'Institute automated variance thresholds on statutory remittances to nip formula drift.', NULL, '2147483647'),
(4, 'EE5', 'Tax Account', '2025-01-01', '1.57', 'Integrate real-time Sales Tax rate lookup to prevent rate-misclassification losses.', NULL, '2147483647'),
(5, 'EE6', 'Income', '2025-01-01', '0.34', 'Enforce system-driven sales cut-off controls to eradicate premature recognition.', NULL, '2147483647'),
(6, 'EE7', 'General Ledger', '2025-01-01', '0.03', 'Total no. of reversal correction journals reduced by 18%.', NULL, '2147483647'),
(7, 'EE1', 'Accounts Payable', '2025-02-01', '1.11', 'Ref PO Recon Automate PO-goods-receipt interface to reduce quantity mismatch write-offs.', NULL, '2147483647'),
(8, 'EE2', 'Accounts Receivable', '2025-02-01', '1.25', 'Deploy real-time credit-memo approval workflow to cut reversal cycle-time.', NULL, '2147483647'),
(9, 'EE3', 'Payroll', '2025-02-01', '0.50', 'Update tax-slab engine nightly to eliminate under-withholding in February payroll runs.', NULL, '2147483647'),
(10, 'EE5', 'Tax Account', '2025-02-01', '1.35', 'Institute mixed-supply rate flag alerts to block mis-rated invoices at source.', NULL, '2147483647'),
(11, 'EE6', 'Income', '2025-02-01', '0.85', 'Implement automated billing-hold flags to prevent end-period shipping-cutoff errors.', NULL, '2147483647'),
(12, 'EE7', 'General Ledger', '2025-02-01', '1.02', '-ve Balance in clearing account-Enforce daily suspense-account clearance based on SLA exceptions.', NULL, '2147483647'),
(13, 'EE1', 'Accounts Payable', '2025-03-01', '1.30', 'Invoice No.124 approved twice-Payment rejected in Po Reco.', NULL, '2147483647'),
(14, 'EE2', 'Accounts Receivable', '2025-03-01', '2.21', 'Bad-debt provision not accrued for the month of March, Ref Policy 114.', NULL, '2147483647'),
(15, 'EE3', 'Payroll', '2025-03-01', '0.40', 'Expand automated overtime-threshold alerts to include bonus plan deviations.', NULL, '2147483647'),
(16, 'EE5', 'Tax Account', '2025-03-01', '1.69', 'Expand automated overtime-threshold alerts to include bonus plan deviations.', NULL, '2147483647'),
(17, 'EE6', 'Income', '2025-03-01', '1.48', 'Log all contract amendments in sales module to ensure audit-trail completeness.', NULL, '2147483647'),
(18, 'EE7', 'General Ledger', '2025-03-01', '0.31', 'Journal 1162,1163,1164 missing Electronic sign-off on all manual adjustments to enforce adjustment control.', NULL, '2147483647'),
(19, 'EE1', 'Accounts Payable', '2025-04-01', '1.00', '100% Implementation of dual-control vendor-reactivation approval.', NULL, '2147483647'),
(20, 'EE2', 'Accounts Receivable', '2025-04-01', '1.27', 'MOM of Credit Report missing-Deploy escalation-matrix triggers for customers exceeding 60-day payment cycle.', NULL, '2147483647'),
(21, 'EE3', 'Payroll', '2025-04-01', '0.60', '#Error Variance Bonus Accrual %-\"$Value\"\"--Under Accrual***. Refer Policy 3641.', NULL, '2147483647'),
(22, 'EE5', 'Tax Account', '2025-04-01', '1.56', '#Sales Tax Upload file missing-Mandate complete tax-document package uploads for cross-border transactions.', NULL, '2147483647'),
(23, 'EE6', 'Income', '2025-04-01', '1.20', 'Ref Policy 1854-Standardize deferred-revenue accruals via system routines to eliminate manual carve-outs.', NULL, '2147483647'),
(24, 'EE7', 'General Ledger', '2025-04-01', '0.68', 'Automate fixed-asset disposal postings within period-end cycle to reinforce cut-off.', NULL, '2147483647'),
(25, 'EE1', 'Accounts Payable', '2025-05-01', '1.36', '2025 Rolled out exception analytics to investigate residual duplicate- invoice flags weekly performance reports.', NULL, '2147483647'),
(26, 'EE2', 'Accounts Receivable', '2025-05-01', '2.42', 'Sample- Hotel Beds writeoff $4,523-Integrate write-off approval logs into AR system to counter late reversals.', NULL, '2147483647'),
(27, 'EE3', 'Payroll', '2025-05-01', '1.55', 'Apply signature-capture for ad-hoc bonus approvals to close approval-signature gaps.', NULL, '2147483647'),
(28, 'EE5', 'Tax Account', '2025-05-01', '1.93', 'Schedule monthly API tax-rate validation against government tables to eliminate manual rate errors.', NULL, '2147483647'),
(29, 'EE6', 'Income', '2025-05-01', '1.50', 'Automate low-value transaction reconciliations in nightly batch to reduce manual effort.', NULL, '2147483647'),
(30, 'EE7', 'General Ledger', '2025-05-01', '1.39', 'Recommendation-Complete dormant COA cleanup with system-driven deletion protocols to maintain chart integrity.', NULL, '2147483647'),
(31, 'EE1', 'Accounts Payable', '2025-06-01', '1.61', 'Invoice No.4523,7456,1243-Link \"re-issued\" payment flags directly to reversal batches to close reconciliation gaps.', NULL, '2147483647'),
(32, 'EE2', 'Accounts Receivable', '2025-06-01', '1.49', 'Missing day 7,9,10,11 June- daily suspense-item resolution dashboards with SLA compliance metrics.', NULL, '2147483647'),
(33, 'EE3', 'Payroll', '2025-06-01', '0.60', 'Configure sub-$100 variance threshold investigation in system to drive residual error resolution.', NULL, '2147483647'),
(34, 'EE5', 'Tax Account', '2025-06-01', '1.47', 'Build tax-notice tracking module with automated deadline alerts to eliminate missed filings.', NULL, '2147483647'),
(35, 'EE6', 'Income', '2025-06-01', '1.26', 'Expand automated GL-sales reconciliation to cover all transaction tiers, not just high-value.', NULL, '2147483647'),
(36, 'EE7', 'General Ledger', '2025-06-01', '1.31', 'Inter Company Balance confirmation missing after upload.', NULL, '2147483647');

-- --------------------------------------------------------

--
-- Table structure for table `timesheet`
--

CREATE TABLE `timesheet` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `task_code` varchar(50) DEFAULT NULL,
  `task_type` varchar(100) DEFAULT NULL,
  `task_day` date DEFAULT NULL,
  `task_allocation_date` date DEFAULT NULL,
  `actual_task_start` date DEFAULT NULL,
  `actual_task_end` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `budgeted_hours` int(11) DEFAULT NULL,
  `actual_hours` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `completion_percent` decimal(5,2) DEFAULT NULL,
  `manager_review_1` varchar(50) DEFAULT NULL,
  `manager_comment_1` text DEFAULT NULL,
  `manager_review_2` varchar(50) DEFAULT NULL,
  `management_score` int(11) DEFAULT NULL,
  `delay_days` int(11) DEFAULT NULL,
  `month` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `trial_balance`
--

CREATE TABLE `trial_balance` (
  `id` int(11) NOT NULL,
  `account_code` varchar(50) DEFAULT NULL,
  `account` varchar(100) DEFAULT NULL,
  `month` date DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `deleted_status` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trial_balance`
--

INSERT INTO `trial_balance` (`id`, `account_code`, `account`, `month`, `amount`, `deleted_status`, `created_at`) VALUES
(1, '1000', 'Revenue', '2025-01-01', '-7.00', 0, '2025-08-20 11:50:00'),
(2, '2000', 'Cost of Sales', '2025-01-01', '4.00', 0, '2025-08-20 11:50:00'),
(3, '3010', 'Payroll expenses', '2025-01-01', '4.00', 0, '2025-08-20 11:50:00'),
(4, '3020', 'Marketing expenses', '2025-01-01', '12.00', 0, '2025-08-20 11:50:00'),
(5, '3030', 'Bank Charges', '2025-01-01', '609.76', 0, '2025-08-20 11:50:00'),
(6, '3040', 'Promotion', '2025-01-01', '1.00', 0, '2025-08-20 11:50:00'),
(7, '3050', 'Research and development', '2025-01-01', '0.00', 0, '2025-08-20 11:50:00'),
(8, '3060', 'Office Expenses', '2025-01-01', '3.00', 0, '2025-08-20 11:50:00'),
(9, '3070', 'Utilities', '2025-01-01', '2.00', 0, '2025-08-20 11:50:00'),
(10, '3080', 'Entertainment', '2025-01-01', '0.00', 0, '2025-08-20 11:50:00'),
(11, '3090', 'Equipment maintenance', '2025-01-01', '0.00', 0, '2025-08-20 11:50:00'),
(12, '3100', 'Premises insurance', '2025-01-01', '4.00', 0, '2025-08-20 11:50:00'),
(13, '3110', 'Legal Fees', '2025-01-01', '0.00', 0, '2025-08-20 11:50:00'),
(14, '3120', 'Motor Vehicle Expenses', '2025-01-01', '0.00', 0, '2025-08-20 11:50:00'),
(15, '3130', 'Postage & carriage', '2025-01-01', '243.90', 0, '2025-08-20 11:50:00'),
(16, '3140', 'Printing & Stationery', '2025-01-01', '731.71', 0, '2025-08-20 11:50:00'),
(17, '3150', 'Consultancy fees', '2025-01-01', '0.00', 0, '2025-08-20 11:50:00'),
(18, '3160', 'Rent Expenses', '2025-01-01', '24.00', 0, '2025-08-20 11:50:00'),
(19, '3170', 'Repairs & Maintenance', '2025-01-01', '0.00', 0, '2025-08-20 11:50:00'),
(20, '3180', 'Payroll', '2025-01-01', '55.00', 0, '2025-08-20 11:50:01'),
(21, '3190', 'Security', '2025-01-01', '792.68', 0, '2025-08-20 11:50:01'),
(22, '3200', 'Subscriptions', '2025-01-01', '0.00', 0, '2025-08-20 11:50:01'),
(23, '3210', 'Telephone & Fax', '2025-01-01', '6.00', 0, '2025-08-20 11:50:01'),
(24, '3220', 'Training Expenses', '2025-01-01', '0.00', 0, '2025-08-20 11:50:01'),
(25, '3230', 'Uniforms', '2025-01-01', '0.00', 0, '2025-08-20 11:50:01'),
(26, '4010', 'Depreciation', '2025-01-01', '32.00', 0, '2025-08-20 11:50:01'),
(27, '5010', 'Interest', '2025-01-01', '19.00', 0, '2025-08-20 11:50:01'),
(28, '6010', 'Taxation', '2025-01-01', '24.00', 0, '2025-08-20 11:50:01'),
(29, '10000', 'Property, Plant & Equipment', '2025-01-01', '23.00', 0, '2025-08-20 11:50:01'),
(30, '15000', 'Accum Depr: PPE', '2025-01-01', '-3.00', 0, '2025-08-20 11:50:01'),
(31, '20000', 'Inventory', '2025-01-01', '3.00', 0, '2025-08-20 11:50:01'),
(32, '40000', 'Receivables', '2025-01-01', '7.00', 0, '2025-08-20 11:50:01'),
(33, '30000', 'Cash', '2025-01-01', '29.00', 0, '2025-08-20 11:50:01'),
(34, '80000', 'Capital Contributions', '2025-01-01', '-26.00', 0, '2025-08-20 11:50:01'),
(35, '90000', 'Retained Earnings', '2025-01-01', '-2.00', 0, '2025-08-20 11:50:01'),
(36, '70000', 'Long Term Loans', '2025-01-01', '-26.00', 0, '2025-08-20 11:50:01'),
(37, '50000', 'Payables', '2025-01-01', '-2.00', 0, '2025-08-20 11:50:01'),
(38, '50100', 'Provision for Taxation', '2025-01-01', '-24.00', 0, '2025-08-20 11:50:01'),
(39, '1000', 'Revenue', '2025-02-01', '-8.00', 0, '2025-08-20 11:50:01'),
(40, '2000', 'Cost of Sales', '2025-02-01', '5.00', 0, '2025-08-20 11:50:01'),
(41, '3010', 'Payroll expenses', '2025-02-01', '4.00', 0, '2025-08-20 11:50:01'),
(42, '3020', 'Marketing expenses', '2025-02-01', '12.00', 0, '2025-08-20 11:50:01'),
(43, '3030', 'Bank Charges', '2025-02-01', '609.76', 0, '2025-08-20 11:50:01'),
(44, '3040', 'Promotion', '2025-02-01', '1.00', 0, '2025-08-20 11:50:01'),
(45, '3050', 'Research and development', '2025-02-01', '0.00', 0, '2025-08-20 11:50:01'),
(46, '3060', 'Office Expenses', '2025-02-01', '0.00', 0, '2025-08-20 11:50:01'),
(47, '3070', 'Utilities', '2025-02-01', '2.00', 0, '2025-08-20 11:50:01'),
(48, '3080', 'Entertainment', '2025-02-01', '0.00', 0, '2025-08-20 11:50:01'),
(49, '3090', 'Equipment maintenance', '2025-02-01', '0.00', 0, '2025-08-20 11:50:01'),
(50, '3100', 'Premises insurance', '2025-02-01', '4.00', 0, '2025-08-20 11:50:01'),
(51, '3110', 'Legal Fees', '2025-02-01', '0.00', 0, '2025-08-20 11:50:01'),
(52, '3120', 'Motor Vehicle Expenses', '2025-02-01', '0.00', 0, '2025-08-20 11:50:01'),
(53, '3130', 'Postage & carriage', '2025-02-01', '243.90', 0, '2025-08-20 11:50:01'),
(54, '3140', 'Printing & Stationery', '2025-02-01', '731.71', 0, '2025-08-20 11:50:01'),
(55, '3150', 'Consultancy fees', '2025-02-01', '0.00', 0, '2025-08-20 11:50:01'),
(56, '3160', 'Rent Expenses', '2025-02-01', '24.00', 0, '2025-08-20 11:50:01'),
(57, '3170', 'Repairs & Maintenance', '2025-02-01', '0.00', 0, '2025-08-20 11:50:01'),
(58, '3180', 'Payroll', '2025-02-01', '55.00', 0, '2025-08-20 11:50:01'),
(59, '3190', 'Security', '2025-02-01', '792.68', 0, '2025-08-20 11:50:01'),
(60, '3200', 'Subscriptions', '2025-02-01', '0.00', 0, '2025-08-20 11:50:01'),
(61, '3210', 'Telephone & Fax', '2025-02-01', '6.00', 0, '2025-08-20 11:50:01'),
(62, '3220', 'Training Expenses', '2025-02-01', '0.00', 0, '2025-08-20 11:50:01'),
(63, '3230', 'Uniforms', '2025-02-01', '0.00', 0, '2025-08-20 11:50:01'),
(64, '4010', 'Depreciation', '2025-02-01', '32.00', 0, '2025-08-20 11:50:01'),
(65, '5010', 'Interest', '2025-02-01', '18.00', 0, '2025-08-20 11:50:01'),
(66, '6010', 'Taxation', '2025-02-01', '37.00', 0, '2025-08-20 11:50:01'),
(67, '10000', 'Property, Plant & Equipment', '2025-02-01', '23.00', 0, '2025-08-20 11:50:01'),
(68, '15000', 'Accum Depr: PPE', '2025-02-01', '-4.00', 0, '2025-08-20 11:50:01'),
(69, '20000', 'Inventory', '2025-02-01', '4.00', 0, '2025-08-20 11:50:01'),
(70, '40000', 'Receivables', '2025-02-01', '8.00', 0, '2025-08-20 11:50:01'),
(71, '30000', 'Cash', '2025-02-01', '29.00', 0, '2025-08-20 11:50:01'),
(72, '80000', 'Capital Contributions', '2025-02-01', '-26.00', 0, '2025-08-20 11:50:01'),
(73, '90000', 'Retained Earnings', '2025-02-01', '-2.00', 0, '2025-08-20 11:50:01'),
(74, '70000', 'Long Term Loans', '2025-02-01', '-26.00', 0, '2025-08-20 11:50:01'),
(75, '50000', 'Payables', '2025-02-01', '-3.00', 0, '2025-08-20 11:50:01'),
(76, '50100', 'Provision for Taxation', '2025-02-01', '-61.00', 0, '2025-08-20 11:50:01'),
(77, '1000', 'Revenue', '2025-03-01', '-7.00', 0, '2025-08-20 11:50:01'),
(78, '2000', 'Cost of Sales', '2025-03-01', '5.00', 0, '2025-08-20 11:50:01'),
(79, '3010', 'Payroll expenses', '2025-03-01', '4.00', 0, '2025-08-20 11:50:01'),
(80, '3020', 'Marketing expenses', '2025-03-01', '24.00', 0, '2025-08-20 11:50:01'),
(81, '3030', 'Bank Charges', '2025-03-01', '609.76', 0, '2025-08-20 11:50:01'),
(82, '3040', 'Promotion', '2025-03-01', '1.00', 0, '2025-08-20 11:50:01'),
(83, '3050', 'Research and development', '2025-03-01', '0.00', 0, '2025-08-20 11:50:01'),
(84, '3060', 'Office Expenses', '2025-03-01', '0.00', 0, '2025-08-20 11:50:01'),
(85, '3070', 'Utilities', '2025-03-01', '2.00', 0, '2025-08-20 11:50:01'),
(86, '3080', 'Entertainment', '2025-03-01', '0.00', 0, '2025-08-20 11:50:01'),
(87, '3090', 'Equipment maintenance', '2025-03-01', '0.00', 0, '2025-08-20 11:50:01'),
(88, '3100', 'Premises insurance', '2025-03-01', '4.00', 0, '2025-08-20 11:50:01'),
(89, '3110', 'Legal Fees', '2025-03-01', '0.00', 0, '2025-08-20 11:50:01'),
(90, '3120', 'Motor Vehicle Expenses', '2025-03-01', '0.00', 0, '2025-08-20 11:50:01'),
(91, '3130', 'Postage & carriage', '2025-03-01', '243.90', 0, '2025-08-20 11:50:01'),
(92, '3140', 'Printing & Stationery', '2025-03-01', '731.71', 0, '2025-08-20 11:50:01'),
(93, '3150', 'Consultancy fees', '2025-03-01', '0.00', 0, '2025-08-20 11:50:01'),
(94, '3160', 'Rent Expenses', '2025-03-01', '24.00', 0, '2025-08-20 11:50:01'),
(95, '3170', 'Repairs & Maintenance', '2025-03-01', '1.00', 0, '2025-08-20 11:50:01'),
(96, '3180', 'Payroll', '2025-03-01', '55.00', 0, '2025-08-20 11:50:01'),
(97, '3190', 'Security', '2025-03-01', '792.68', 0, '2025-08-20 11:50:01'),
(98, '3200', 'Subscriptions', '2025-03-01', '0.00', 0, '2025-08-20 11:50:01'),
(99, '3210', 'Telephone & Fax', '2025-03-01', '6.00', 0, '2025-08-20 11:50:01'),
(100, '3220', 'Training Expenses', '2025-03-01', '0.00', 0, '2025-08-20 11:50:01'),
(101, '3230', 'Uniforms', '2025-03-01', '0.00', 0, '2025-08-20 11:50:01'),
(102, '4010', 'Depreciation', '2025-03-01', '34.00', 0, '2025-08-20 11:50:01'),
(103, '5010', 'Interest', '2025-03-01', '18.00', 0, '2025-08-20 11:50:01'),
(104, '6010', 'Taxation', '2025-03-01', '25.00', 0, '2025-08-20 11:50:01'),
(105, '10000', 'Property, Plant & Equipment', '2025-03-01', '24.00', 0, '2025-08-20 11:50:01'),
(106, '15000', 'Accum Depr: PPE', '2025-03-01', '-4.00', 0, '2025-08-20 11:50:01'),
(107, '20000', 'Inventory', '2025-03-01', '4.00', 0, '2025-08-20 11:50:01'),
(108, '40000', 'Receivables', '2025-03-01', '7.00', 0, '2025-08-20 11:50:01'),
(109, '30000', 'Cash', '2025-03-01', '29.00', 0, '2025-08-20 11:50:01'),
(110, '80000', 'Capital Contributions', '2025-03-01', '-26.00', 0, '2025-08-20 11:50:01'),
(111, '90000', 'Retained Earnings', '2025-03-01', '-2.00', 0, '2025-08-20 11:50:01'),
(112, '70000', 'Long Term Loans', '2025-03-01', '-25.00', 0, '2025-08-20 11:50:01'),
(113, '50000', 'Payables', '2025-03-01', '-3.00', 0, '2025-08-20 11:50:01'),
(114, '50100', 'Provision for Taxation', '2025-03-01', '-87.00', 0, '2025-08-20 11:50:01'),
(115, '1000', 'Revenue', '2025-04-01', '-7.00', 0, '2025-08-20 11:50:01'),
(116, '2000', 'Cost of Sales', '2025-04-01', '5.00', 0, '2025-08-20 11:50:01'),
(117, '3010', 'Payroll expenses', '2025-04-01', '4.00', 0, '2025-08-20 11:50:01'),
(118, '3020', 'Marketing expenses', '2025-04-01', '12.00', 0, '2025-08-20 11:50:01'),
(119, '3030', 'Bank Charges', '2025-04-01', '609.76', 0, '2025-08-20 11:50:01'),
(120, '3040', 'Promotion', '2025-04-01', '1.00', 0, '2025-08-20 11:50:01'),
(121, '3050', 'Research and development', '2025-04-01', '9.00', 0, '2025-08-20 11:50:01'),
(122, '3060', 'Office Expenses', '2025-04-01', '0.00', 0, '2025-08-20 11:50:01'),
(123, '3070', 'Utilities', '2025-04-01', '2.00', 0, '2025-08-20 11:50:01'),
(124, '3080', 'Entertainment', '2025-04-01', '0.00', 0, '2025-08-20 11:50:01'),
(125, '3090', 'Equipment maintenance', '2025-04-01', '0.00', 0, '2025-08-20 11:50:01'),
(126, '3100', 'Premises insurance', '2025-04-01', '4.00', 0, '2025-08-20 11:50:01'),
(127, '3110', 'Legal Fees', '2025-04-01', '1.00', 0, '2025-08-20 11:50:01'),
(128, '3120', 'Motor Vehicle Expenses', '2025-04-01', '0.00', 0, '2025-08-20 11:50:01'),
(129, '3130', 'Postage & carriage', '2025-04-01', '243.90', 0, '2025-08-20 11:50:01'),
(130, '3140', 'Printing & Stationery', '2025-04-01', '731.71', 0, '2025-08-20 11:50:01'),
(131, '3150', 'Consultancy fees', '2025-04-01', '0.00', 0, '2025-08-20 11:50:01'),
(132, '3160', 'Rent Expenses', '2025-04-01', '24.00', 0, '2025-08-20 11:50:01'),
(133, '3170', 'Repairs & Maintenance', '2025-04-01', '0.00', 0, '2025-08-20 11:50:01'),
(134, '3180', 'Payroll', '2025-04-01', '55.00', 0, '2025-08-20 11:50:01'),
(135, '3190', 'Security', '2025-04-01', '792.68', 0, '2025-08-20 11:50:01'),
(136, '3200', 'Subscriptions', '2025-04-01', '0.00', 0, '2025-08-20 11:50:01'),
(137, '3210', 'Telephone & Fax', '2025-04-01', '6.00', 0, '2025-08-20 11:50:01'),
(138, '3220', 'Training Expenses', '2025-04-01', '0.00', 0, '2025-08-20 11:50:01'),
(139, '3230', 'Uniforms', '2025-04-01', '0.00', 0, '2025-08-20 11:50:01'),
(140, '4010', 'Depreciation', '2025-04-01', '34.00', 0, '2025-08-20 11:50:01'),
(141, '5010', 'Interest', '2025-04-01', '18.00', 0, '2025-08-20 11:50:01'),
(142, '6010', 'Taxation', '2025-04-01', '-21.00', 0, '2025-08-20 11:50:01'),
(143, '10000', 'Property, Plant & Equipment', '2025-04-01', '24.00', 0, '2025-08-20 11:50:01'),
(144, '15000', 'Accum Depr: PPE', '2025-04-01', '-5.00', 0, '2025-08-20 11:50:01'),
(145, '20000', 'Inventory', '2025-04-01', '4.00', 0, '2025-08-20 11:50:01'),
(146, '40000', 'Receivables', '2025-04-01', '7.00', 0, '2025-08-20 11:50:01'),
(147, '30000', 'Cash', '2025-04-01', '29.00', 0, '2025-08-20 11:50:01'),
(148, '80000', 'Capital Contributions', '2025-04-01', '-26.00', 0, '2025-08-20 11:50:01'),
(149, '90000', 'Retained Earnings', '2025-04-01', '-2.00', 0, '2025-08-20 11:50:01'),
(150, '70000', 'Long Term Loans', '2025-04-01', '-25.00', 0, '2025-08-20 11:50:01'),
(151, '50000', 'Payables', '2025-04-01', '-4.00', 0, '2025-08-20 11:50:01'),
(152, '50100', 'Provision for Taxation', '2025-04-01', '-65.00', 0, '2025-08-20 11:50:01'),
(153, '1000', 'Revenue', '2025-05-01', '-7.00', 0, '2025-08-20 11:50:01'),
(154, '2000', 'Cost of Sales', '2025-05-01', '4.00', 0, '2025-08-20 11:50:01'),
(155, '3010', 'Payroll expenses', '2025-05-01', '4.00', 0, '2025-08-20 11:50:01'),
(156, '3020', 'Marketing expenses', '2025-05-01', '12.00', 0, '2025-08-20 11:50:01'),
(157, '3030', 'Bank Charges', '2025-05-01', '609.76', 0, '2025-08-20 11:50:01'),
(158, '3040', 'Promotion', '2025-05-01', '1.00', 0, '2025-08-20 11:50:01'),
(159, '3050', 'Research and development', '2025-05-01', '0.00', 0, '2025-08-20 11:50:01'),
(160, '3060', 'Office Expenses', '2025-05-01', '5.00', 0, '2025-08-20 11:50:01'),
(161, '3070', 'Utilities', '2025-05-01', '2.00', 0, '2025-08-20 11:50:01'),
(162, '3080', 'Entertainment', '2025-05-01', '0.00', 0, '2025-08-20 11:50:01'),
(163, '3090', 'Equipment maintenance', '2025-05-01', '43.00', 0, '2025-08-20 11:50:01'),
(164, '3100', 'Premises insurance', '2025-05-01', '4.00', 0, '2025-08-20 11:50:01'),
(165, '3110', 'Legal Fees', '2025-05-01', '0.00', 0, '2025-08-20 11:50:01'),
(166, '3120', 'Motor Vehicle Expenses', '2025-05-01', '0.00', 0, '2025-08-20 11:50:01'),
(167, '3130', 'Postage & carriage', '2025-05-01', '243.90', 0, '2025-08-20 11:50:01'),
(168, '3140', 'Printing & Stationery', '2025-05-01', '731.71', 0, '2025-08-20 11:50:01'),
(169, '3150', 'Consultancy fees', '2025-05-01', '0.00', 0, '2025-08-20 11:50:01'),
(170, '3160', 'Rent Expenses', '2025-05-01', '24.00', 0, '2025-08-20 11:50:01'),
(171, '3170', 'Repairs & Maintenance', '2025-05-01', '0.00', 0, '2025-08-20 11:50:01'),
(172, '3180', 'Payroll', '2025-05-01', '55.00', 0, '2025-08-20 11:50:01'),
(173, '3190', 'Security', '2025-05-01', '792.68', 0, '2025-08-20 11:50:01'),
(174, '3200', 'Subscriptions', '2025-05-01', '0.00', 0, '2025-08-20 11:50:01'),
(175, '3210', 'Telephone & Fax', '2025-05-01', '6.00', 0, '2025-08-20 11:50:01'),
(176, '3220', 'Training Expenses', '2025-05-01', '0.00', 0, '2025-08-20 11:50:01'),
(177, '3230', 'Uniforms', '2025-05-01', '0.00', 0, '2025-08-20 11:50:01'),
(178, '4010', 'Depreciation', '2025-05-01', '34.00', 0, '2025-08-20 11:50:01'),
(179, '5010', 'Interest', '2025-05-01', '19.00', 0, '2025-08-20 11:50:01'),
(180, '6010', 'Taxation', '2025-05-01', '15.00', 0, '2025-08-20 11:50:01'),
(181, '10000', 'Property, Plant & Equipment', '2025-05-01', '24.00', 0, '2025-08-20 11:50:01'),
(182, '15000', 'Accum Depr: PPE', '2025-05-01', '-5.00', 0, '2025-08-20 11:50:01'),
(183, '20000', 'Inventory', '2025-05-01', '3.00', 0, '2025-08-20 11:50:01'),
(184, '40000', 'Receivables', '2025-05-01', '7.00', 0, '2025-08-20 11:50:01'),
(185, '30000', 'Cash', '2025-05-01', '32.00', 0, '2025-08-20 11:50:01'),
(186, '80000', 'Capital Contributions', '2025-05-01', '-26.00', 0, '2025-08-20 11:50:01'),
(187, '90000', 'Retained Earnings', '2025-05-01', '-2.00', 0, '2025-08-20 11:50:01'),
(188, '70000', 'Long Term Loans', '2025-05-01', '-27.00', 0, '2025-08-20 11:50:01'),
(189, '50000', 'Payables', '2025-05-01', '-3.00', 0, '2025-08-20 11:50:01'),
(190, '50100', 'Provision for Taxation', '2025-05-01', '-81.00', 0, '2025-08-20 11:50:01'),
(191, '1000', 'Revenue', '2025-06-01', '-7.00', 0, '2025-08-20 11:50:01'),
(192, '2000', 'Cost of Sales', '2025-06-01', '4.00', 0, '2025-08-20 11:50:01'),
(193, '3010', 'Payroll expenses', '2025-06-01', '4.00', 0, '2025-08-20 11:50:01'),
(194, '3020', 'Marketing expenses', '2025-06-01', '60.00', 0, '2025-08-20 11:50:01'),
(195, '3030', 'Bank Charges', '2025-06-01', '609.76', 0, '2025-08-20 11:50:01'),
(196, '3040', 'Promotion', '2025-06-01', '2.00', 0, '2025-08-20 11:50:01'),
(197, '3050', 'Research and development', '2025-06-01', '0.00', 0, '2025-08-20 11:50:01'),
(198, '3060', 'Office Expenses', '2025-06-01', '1.00', 0, '2025-08-20 11:50:01'),
(199, '3070', 'Utilities', '2025-06-01', '2.00', 0, '2025-08-20 11:50:01'),
(200, '3080', 'Entertainment', '2025-06-01', '0.00', 0, '2025-08-20 11:50:01'),
(201, '3090', 'Equipment maintenance', '2025-06-01', '0.00', 0, '2025-08-20 11:50:01'),
(202, '3100', 'Premises insurance', '2025-06-01', '4.00', 0, '2025-08-20 11:50:01'),
(203, '3110', 'Legal Fees', '2025-06-01', '0.00', 0, '2025-08-20 11:50:01'),
(204, '3120', 'Motor Vehicle Expenses', '2025-06-01', '0.00', 0, '2025-08-20 11:50:01'),
(205, '3130', 'Postage & carriage', '2025-06-01', '243.90', 0, '2025-08-20 11:50:01'),
(206, '3140', 'Printing & Stationery', '2025-06-01', '731.71', 0, '2025-08-20 11:50:01'),
(207, '3150', 'Consultancy fees', '2025-06-01', '0.00', 0, '2025-08-20 11:50:01'),
(208, '3160', 'Rent Expenses', '2025-06-01', '24.00', 0, '2025-08-20 11:50:01'),
(209, '3170', 'Repairs & Maintenance', '2025-06-01', '1.00', 0, '2025-08-20 11:50:01'),
(210, '3180', 'Payroll', '2025-06-01', '55.00', 0, '2025-08-20 11:50:01'),
(211, '3190', 'Security', '2025-06-01', '792.68', 0, '2025-08-20 11:50:01'),
(212, '3200', 'Subscriptions', '2025-06-01', '7.00', 0, '2025-08-20 11:50:01'),
(213, '3210', 'Telephone & Fax', '2025-06-01', '6.00', 0, '2025-08-20 11:50:01'),
(214, '3220', 'Training Expenses', '2025-06-01', '0.00', 0, '2025-08-20 11:50:01'),
(215, '3230', 'Uniforms', '2025-06-01', '0.00', 0, '2025-08-20 11:50:01'),
(216, '4010', 'Depreciation', '2025-06-01', '37.00', 0, '2025-08-20 11:50:01'),
(217, '5010', 'Interest', '2025-06-01', '19.00', 0, '2025-08-20 11:50:01'),
(218, '6010', 'Taxation', '2025-06-01', '15.00', 0, '2025-08-20 11:50:01'),
(219, '10000', 'Property, Plant & Equipment', '2025-06-01', '26.00', 0, '2025-08-20 11:50:01'),
(220, '15000', 'Accum Depr: PPE', '2025-06-01', '-5.00', 0, '2025-08-20 11:50:01'),
(221, '20000', 'Inventory', '2025-06-01', '3.00', 0, '2025-08-20 11:50:01'),
(222, '40000', 'Receivables', '2025-06-01', '7.00', 0, '2025-08-20 11:50:01'),
(223, '30000', 'Cash', '2025-06-01', '30.00', 0, '2025-08-20 11:50:01'),
(224, '80000', 'Capital Contributions', '2025-06-01', '-26.00', 0, '2025-08-20 11:50:01'),
(225, '90000', 'Retained Earnings', '2025-06-01', '-2.00', 0, '2025-08-20 11:50:01'),
(226, '70000', 'Long Term Loans', '2025-06-01', '-27.00', 0, '2025-08-20 11:50:01'),
(227, '50000', 'Payables', '2025-06-01', '-3.00', 0, '2025-08-20 11:50:01'),
(228, '50100', 'Provision for Taxation', '2025-06-01', '0.00', 0, '2025-08-20 11:50:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts_code`
--
ALTER TABLE `accounts_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `ap_ageing`
--
ALTER TABLE `ap_ageing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ar_ageing`
--
ALTER TABLE `ar_ageing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audit_points`
--
ALTER TABLE `audit_points`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee_code` (`employee_code`);

--
-- Indexes for table `gl`
--
ALTER TABLE `gl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `month_master`
--
ALTER TABLE `month_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paymaster`
--
ALTER TABLE `paymaster`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `po_details`
--
ALTER TABLE `po_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary_accrual_payment`
--
ALTER TABLE `salary_accrual_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statutory_liabilities`
--
ALTER TABLE `statutory_liabilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suggestion`
--
ALTER TABLE `suggestion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timesheet`
--
ALTER TABLE `timesheet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `trial_balance`
--
ALTER TABLE `trial_balance`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts_code`
--
ALTER TABLE `accounts_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ap_ageing`
--
ALTER TABLE `ap_ageing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `ar_ageing`
--
ALTER TABLE `ar_ageing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `audit_points`
--
ALTER TABLE `audit_points`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gl`
--
ALTER TABLE `gl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=469;

--
-- AUTO_INCREMENT for table `month_master`
--
ALTER TABLE `month_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `paymaster`
--
ALTER TABLE `paymaster`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `po_details`
--
ALTER TABLE `po_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salary_accrual_payment`
--
ALTER TABLE `salary_accrual_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `statutory_liabilities`
--
ALTER TABLE `statutory_liabilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suggestion`
--
ALTER TABLE `suggestion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `timesheet`
--
ALTER TABLE `timesheet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trial_balance`
--
ALTER TABLE `trial_balance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `audit_points`
--
ALTER TABLE `audit_points`
  ADD CONSTRAINT `audit_points_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `timesheet`
--
ALTER TABLE `timesheet`
  ADD CONSTRAINT `timesheet_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
