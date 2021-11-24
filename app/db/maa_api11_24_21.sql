-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 24, 2021 at 03:38 AM
-- Server version: 5.6.51-cll-lve
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `maa_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `deviceId` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `create_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `api_token`
--

CREATE TABLE `api_token` (
  `id` int(11) NOT NULL,
  `token` varchar(256) NOT NULL,
  `status` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `api_token`
--

INSERT INTO `api_token` (`id`, `token`, `status`) VALUES
(1, '12341234', '1');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(100) NOT NULL,
  `text` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sender_id` int(100) NOT NULL,
  `receiver_id` int(100) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `seen` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `coin`
--

CREATE TABLE `coin` (
  `id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(100) NOT NULL,
  `text` varchar(255) NOT NULL,
  `user_id` int(100) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `post_id` int(100) NOT NULL,
  `create_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `iso` char(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `nicename` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  `phonecode` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES
(1, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4, 93),
(2, 'AL', 'ALBANIA', 'Albania', 'ALB', 8, 355),
(3, 'DZ', 'ALGERIA', 'Algeria', 'DZA', 12, 213),
(4, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 16, 1684),
(5, 'AD', 'ANDORRA', 'Andorra', 'AND', 20, 376),
(6, 'AO', 'ANGOLA', 'Angola', 'AGO', 24, 244),
(7, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', 660, 1264),
(8, 'AQ', 'ANTARCTICA', 'Antarctica', NULL, NULL, 0),
(9, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 28, 1268),
(10, 'AR', 'ARGENTINA', 'Argentina', 'ARG', 32, 54),
(11, 'AM', 'ARMENIA', 'Armenia', 'ARM', 51, 374),
(12, 'AW', 'ARUBA', 'Aruba', 'ABW', 533, 297),
(13, 'AU', 'AUSTRALIA', 'Australia', 'AUS', 36, 61),
(14, 'AT', 'AUSTRIA', 'Austria', 'AUT', 40, 43),
(15, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 31, 994),
(16, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', 44, 1242),
(17, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', 48, 973),
(18, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50, 880),
(19, 'BB', 'BARBADOS', 'Barbados', 'BRB', 52, 1246),
(20, 'BY', 'BELARUS', 'Belarus', 'BLR', 112, 375),
(21, 'BE', 'BELGIUM', 'Belgium', 'BEL', 56, 32),
(22, 'BZ', 'BELIZE', 'Belize', 'BLZ', 84, 501),
(23, 'BJ', 'BENIN', 'Benin', 'BEN', 204, 229),
(24, 'BM', 'BERMUDA', 'Bermuda', 'BMU', 60, 1441),
(25, 'BT', 'BHUTAN', 'Bhutan', 'BTN', 64, 975),
(26, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', 68, 591),
(27, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 70, 387),
(28, 'BW', 'BOTSWANA', 'Botswana', 'BWA', 72, 267),
(29, 'BV', 'BOUVET ISLAND', 'Bouvet Island', NULL, NULL, 0),
(30, 'BR', 'BRAZIL', 'Brazil', 'BRA', 76, 55),
(31, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', NULL, NULL, 246),
(32, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96, 673),
(33, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', 100, 359),
(34, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854, 226),
(35, 'BI', 'BURUNDI', 'Burundi', 'BDI', 108, 257),
(36, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', 116, 855),
(37, 'CM', 'CAMEROON', 'Cameroon', 'CMR', 120, 237),
(38, 'CA', 'CANADA', 'Canada', 'CAN', 124, 1),
(39, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 132, 238),
(40, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 136, 1345),
(41, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 140, 236),
(42, 'TD', 'CHAD', 'Chad', 'TCD', 148, 235),
(43, 'CL', 'CHILE', 'Chile', 'CHL', 152, 56),
(44, 'CN', 'CHINA', 'China', 'CHN', 156, 86),
(45, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', NULL, NULL, 61),
(46, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', NULL, NULL, 672),
(47, 'CO', 'COLOMBIA', 'Colombia', 'COL', 170, 57),
(48, 'KM', 'COMOROS', 'Comoros', 'COM', 174, 269),
(49, 'CG', 'CONGO', 'Congo', 'COG', 178, 242),
(50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180, 242),
(51, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 184, 682),
(52, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188, 506),
(53, 'CI', 'COTE D\'IVOIRE', 'Cote D\'Ivoire', 'CIV', 384, 225),
(54, 'HR', 'CROATIA', 'Croatia', 'HRV', 191, 385),
(55, 'CU', 'CUBA', 'Cuba', 'CUB', 192, 53),
(56, 'CY', 'CYPRUS', 'Cyprus', 'CYP', 196, 357),
(57, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 203, 420),
(58, 'DK', 'DENMARK', 'Denmark', 'DNK', 208, 45),
(59, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262, 253),
(60, 'DM', 'DOMINICA', 'Dominica', 'DMA', 212, 1767),
(61, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 214, 1809),
(62, 'EC', 'ECUADOR', 'Ecuador', 'ECU', 218, 593),
(63, 'EG', 'EGYPT', 'Egypt', 'EGY', 818, 20),
(64, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222, 503),
(65, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 226, 240),
(66, 'ER', 'ERITREA', 'Eritrea', 'ERI', 232, 291),
(67, 'EE', 'ESTONIA', 'Estonia', 'EST', 233, 372),
(68, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 231, 251),
(69, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 238, 500),
(70, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 234, 298),
(71, 'FJ', 'FIJI', 'Fiji', 'FJI', 242, 679),
(72, 'FI', 'FINLAND', 'Finland', 'FIN', 246, 358),
(73, 'FR', 'FRANCE', 'France', 'FRA', 250, 33),
(74, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 254, 594),
(75, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 258, 689),
(76, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', NULL, NULL, 0),
(77, 'GA', 'GABON', 'Gabon', 'GAB', 266, 241),
(78, 'GM', 'GAMBIA', 'Gambia', 'GMB', 270, 220),
(79, 'GE', 'GEORGIA', 'Georgia', 'GEO', 268, 995),
(80, 'DE', 'GERMANY', 'Germany', 'DEU', 276, 49),
(81, 'GH', 'GHANA', 'Ghana', 'GHA', 288, 233),
(82, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292, 350),
(83, 'GR', 'GREECE', 'Greece', 'GRC', 300, 30),
(84, 'GL', 'GREENLAND', 'Greenland', 'GRL', 304, 299),
(85, 'GD', 'GRENADA', 'Grenada', 'GRD', 308, 1473),
(86, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312, 590),
(87, 'GU', 'GUAM', 'Guam', 'GUM', 316, 1671),
(88, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', 320, 502),
(89, 'GN', 'GUINEA', 'Guinea', 'GIN', 324, 224),
(90, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 624, 245),
(91, 'GY', 'GUYANA', 'Guyana', 'GUY', 328, 592),
(92, 'HT', 'HAITI', 'Haiti', 'HTI', 332, 509),
(93, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', NULL, NULL, 0),
(94, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 336, 39),
(95, 'HN', 'HONDURAS', 'Honduras', 'HND', 340, 504),
(96, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', 344, 852),
(97, 'HU', 'HUNGARY', 'Hungary', 'HUN', 348, 36),
(98, 'IS', 'ICELAND', 'Iceland', 'ISL', 352, 354),
(99, 'IN', 'INDIA', 'India', 'IND', 356, 91),
(100, 'ID', 'INDONESIA', 'Indonesia', 'IDN', 360, 62),
(101, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 364, 98),
(102, 'IQ', 'IRAQ', 'Iraq', 'IRQ', 368, 964),
(103, 'IE', 'IRELAND', 'Ireland', 'IRL', 372, 353),
(104, 'IL', 'ISRAEL', 'Israel', 'ISR', 376, 972),
(105, 'IT', 'ITALY', 'Italy', 'ITA', 380, 39),
(106, 'JM', 'JAMAICA', 'Jamaica', 'JAM', 388, 1876),
(107, 'JP', 'JAPAN', 'Japan', 'JPN', 392, 81),
(108, 'JO', 'JORDAN', 'Jordan', 'JOR', 400, 962),
(109, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398, 7),
(110, 'KE', 'KENYA', 'Kenya', 'KEN', 404, 254),
(111, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', 296, 686),
(112, 'KP', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'Korea, Democratic People\'s Republic of', 'PRK', 408, 850),
(113, 'KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', 410, 82),
(114, 'KW', 'KUWAIT', 'Kuwait', 'KWT', 414, 965),
(115, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 417, 996),
(116, 'LA', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'Lao People\'s Democratic Republic', 'LAO', 418, 856),
(117, 'LV', 'LATVIA', 'Latvia', 'LVA', 428, 371),
(118, 'LB', 'LEBANON', 'Lebanon', 'LBN', 422, 961),
(119, 'LS', 'LESOTHO', 'Lesotho', 'LSO', 426, 266),
(120, 'LR', 'LIBERIA', 'Liberia', 'LBR', 430, 231),
(121, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 434, 218),
(122, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438, 423),
(123, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', 440, 370),
(124, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442, 352),
(125, 'MO', 'MACAO', 'Macao', 'MAC', 446, 853),
(126, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807, 389),
(127, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450, 261),
(128, 'MW', 'MALAWI', 'Malawi', 'MWI', 454, 265),
(129, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', 458, 60),
(130, 'MV', 'MALDIVES', 'Maldives', 'MDV', 462, 960),
(131, 'ML', 'MALI', 'Mali', 'MLI', 466, 223),
(132, 'MT', 'MALTA', 'Malta', 'MLT', 470, 356),
(133, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 584, 692),
(134, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474, 596),
(135, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', 478, 222),
(136, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', 480, 230),
(137, 'YT', 'MAYOTTE', 'Mayotte', NULL, NULL, 269),
(138, 'MX', 'MEXICO', 'Mexico', 'MEX', 484, 52),
(139, 'FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 583, 691),
(140, 'MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 498, 373),
(141, 'MC', 'MONACO', 'Monaco', 'MCO', 492, 377),
(142, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', 496, 976),
(143, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500, 1664),
(144, 'MA', 'MOROCCO', 'Morocco', 'MAR', 504, 212),
(145, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508, 258),
(146, 'MM', 'MYANMAR', 'Myanmar', 'MMR', 104, 95),
(147, 'NA', 'NAMIBIA', 'Namibia', 'NAM', 516, 264),
(148, 'NR', 'NAURU', 'Nauru', 'NRU', 520, 674),
(149, 'NP', 'NEPAL', 'Nepal', 'NPL', 524, 977),
(150, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', 528, 31),
(151, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 530, 599),
(152, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 540, 687),
(153, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554, 64),
(154, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558, 505),
(155, 'NE', 'NIGER', 'Niger', 'NER', 562, 227),
(156, 'NG', 'NIGERIA', 'Nigeria', 'NGA', 566, 234),
(157, 'NU', 'NIUE', 'Niue', 'NIU', 570, 683),
(158, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 574, 672),
(159, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 580, 1670),
(160, 'NO', 'NORWAY', 'Norway', 'NOR', 578, 47),
(161, 'OM', 'OMAN', 'Oman', 'OMN', 512, 968),
(162, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', 586, 92),
(163, 'PW', 'PALAU', 'Palau', 'PLW', 585, 680),
(164, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', NULL, NULL, 970),
(165, 'PA', 'PANAMA', 'Panama', 'PAN', 591, 507),
(166, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598, 675),
(167, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', 600, 595),
(168, 'PE', 'PERU', 'Peru', 'PER', 604, 51),
(169, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', 608, 63),
(170, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', 612, 0),
(171, 'PL', 'POLAND', 'Poland', 'POL', 616, 48),
(172, 'PT', 'PORTUGAL', 'Portugal', 'PRT', 620, 351),
(173, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630, 1787),
(174, 'QA', 'QATAR', 'Qatar', 'QAT', 634, 974),
(175, 'RE', 'REUNION', 'Reunion', 'REU', 638, 262),
(176, 'RO', 'ROMANIA', 'Romania', 'ROM', 642, 40),
(177, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643, 70),
(178, 'RW', 'RWANDA', 'Rwanda', 'RWA', 646, 250),
(179, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 654, 290),
(180, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 659, 1869),
(181, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 662, 1758),
(182, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 666, 508),
(183, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 670, 1784),
(184, 'WS', 'SAMOA', 'Samoa', 'WSM', 882, 684),
(185, 'SM', 'SAN MARINO', 'San Marino', 'SMR', 674, 378),
(186, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678, 239),
(187, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 682, 966),
(188, 'SN', 'SENEGAL', 'Senegal', 'SEN', 686, 221),
(189, 'CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', NULL, NULL, 381),
(190, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690, 248),
(191, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694, 232),
(192, 'SG', 'SINGAPORE', 'Singapore', 'SGP', 702, 65),
(193, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', 703, 421),
(194, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', 705, 386),
(195, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 90, 677),
(196, 'SO', 'SOMALIA', 'Somalia', 'SOM', 706, 252),
(197, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 710, 27),
(198, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', NULL, NULL, 0),
(199, 'ES', 'SPAIN', 'Spain', 'ESP', 724, 34),
(200, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144, 94),
(201, 'SD', 'SUDAN', 'Sudan', 'SDN', 736, 249),
(202, 'SR', 'SURINAME', 'Suriname', 'SUR', 740, 597),
(203, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 744, 47),
(204, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748, 268),
(205, 'SE', 'SWEDEN', 'Sweden', 'SWE', 752, 46),
(206, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', 756, 41),
(207, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 760, 963),
(208, 'TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', 158, 886),
(209, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762, 992),
(210, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 834, 255),
(211, 'TH', 'THAILAND', 'Thailand', 'THA', 764, 66),
(212, 'TL', 'TIMOR-LESTE', 'Timor-Leste', NULL, NULL, 670),
(213, 'TG', 'TOGO', 'Togo', 'TGO', 768, 228),
(214, 'TK', 'TOKELAU', 'Tokelau', 'TKL', 772, 690),
(215, 'TO', 'TONGA', 'Tonga', 'TON', 776, 676),
(216, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780, 1868),
(217, 'TN', 'TUNISIA', 'Tunisia', 'TUN', 788, 216),
(218, 'TR', 'TURKEY', 'Turkey', 'TUR', 792, 90),
(219, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 795, 7370),
(220, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 796, 1649),
(221, 'TV', 'TUVALU', 'Tuvalu', 'TUV', 798, 688),
(222, 'UG', 'UGANDA', 'Uganda', 'UGA', 800, 256),
(223, 'UA', 'UKRAINE', 'Ukraine', 'UKR', 804, 380),
(224, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 784, 971),
(225, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 826, 44),
(226, 'US', 'UNITED STATES', 'United States', 'USA', 840, 1),
(227, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', NULL, NULL, 1),
(228, 'UY', 'URUGUAY', 'Uruguay', 'URY', 858, 598),
(229, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 860, 998),
(230, 'VU', 'VANUATU', 'Vanuatu', 'VUT', 548, 678),
(231, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', 862, 58),
(232, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', 704, 84),
(233, 'VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 92, 1284),
(234, 'VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 850, 1340),
(235, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 876, 681),
(236, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 732, 212),
(237, 'YE', 'YEMEN', 'Yemen', 'YEM', 887, 967),
(238, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894, 260),
(239, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716, 263);

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE `group` (
  `id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_user` int(100) NOT NULL,
  `admins` varchar(255) NOT NULL,
  `members` varchar(255) NOT NULL,
  `cover_photo` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `group_chat`
--

CREATE TABLE `group_chat` (
  `id` int(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `admins` varchar(255) NOT NULL,
  `members` varchar(255) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kyc`
--

CREATE TABLE `kyc` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cnic_number` int(255) NOT NULL,
  `passport_number` varchar(255) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `create_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payment_detail`
--

CREATE TABLE `payment_detail` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_varified` tinyint(1) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `create_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `payment_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(100) NOT NULL,
  `text` varchar(255) NOT NULL,
  `user_id` int(100) NOT NULL,
  `images` varchar(255) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `likes` int(100) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `user_id` int(100) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `create_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `id` int(100) NOT NULL,
  `type` varchar(255) NOT NULL,
  `price` int(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `followers` int(100) NOT NULL,
  `product_id` int(100) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `fb_link` varchar(255) NOT NULL,
  `twitter_link` varchar(255) NOT NULL,
  `linkedin_link` varchar(255) NOT NULL,
  `instagram_link` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `security`
--

CREATE TABLE `security` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `isthumb` tinyint(1) NOT NULL,
  `ispattern` tinyint(1) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `create_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `payment_currency_id` int(11) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tip`
--

CREATE TABLE `tip` (
  `id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `coin_id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `purchase_rate` varchar(255) NOT NULL,
  `followers` varchar(255) NOT NULL,
  `stop_loss` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `spot` tinyint(1) NOT NULL,
  `future` tinyint(1) NOT NULL,
  `leverage` varchar(100) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users_info`
--

CREATE TABLE `users_info` (
  `id` int(100) NOT NULL,
  `username` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL DEFAULT 'First Name',
  `last_name` varchar(255) NOT NULL DEFAULT 'Last Name',
  `email` varchar(255) NOT NULL,
  `number` varchar(100) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `password` varchar(255) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `user_type_id` int(11) NOT NULL DEFAULT '1',
  `ip_address` varchar(100) NOT NULL,
  `os_version` varchar(255) NOT NULL,
  `device_id` varchar(255) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_info`
--

INSERT INTO `users_info` (`id`, `username`, `first_name`, `last_name`, `email`, `number`, `gender`, `dob`, `password`, `isActive`, `user_type_id`, `ip_address`, `os_version`, `device_id`, `create_at`, `updated_at`) VALUES
(20, 'ZubairAyub', 'first_name', 'last_name', 'zubairayub@hotmail.com', '923150234592', '', '0000-00-00', '$2y$10$uAxTFjpbwKVZADCauEDpwe.PxYs4nCpsAycCvTiFjuE1VAHeipxa2', 0, 1, '', '', '', '2021-09-11 06:15:48', '2021-09-11 06:15:48'),
(21, 'Maaz', 'first_name', 'last_name', 'Maaz1@gmail.com', '12345612345', '', '0000-00-00', '$2y$10$gP8hXHA3QsUeaYwGOb2md.W00XX53T9PmM46TwRopGSGI7dKSJkyK', 0, 1, '', '', '', '2021-09-14 12:48:59', '2021-09-14 12:48:59'),
(22, 'Test', 'first_name', 'last_name', 'test1@gmail.com', '12345612345', '', '0000-00-00', '$2y$10$IQHk1LVymYzDwLi6GSjG5OMsAqEHBIeqP88IT6d00cuYxox98Brge', 0, 1, '', '', '', '2021-09-14 13:12:12', '2021-09-14 13:12:12'),
(23, 'MrZubair', 'first_name', 'last_name', 'Zubb@hotmail.com', '923150234592', '', '0000-00-00', '$2y$10$Hlo4mB6eE1O/8kWzDVHpluQSKj/z6syVXIlktcP0zyBVZtKcdgrki', 0, 1, '', '', '', '2021-09-18 04:40:13', '2021-09-18 04:40:13'),
(24, 'xyz', 'first_name', 'last_name', 'xyz@gmail.com', '+923001231231', '', '0000-00-00', '$2y$10$fB.Cyk.Dm4A07dGArlJRFeal1LC5KB5tGczTb5I.tmWClOCJqjJLS', 0, 1, '', '', '', '2021-09-29 13:01:18', '2021-09-29 13:01:18'),
(25, 'ppp', 'first_name', 'last_name', 'ppp@gmail.com', '+933006932154', '', '0000-00-00', '$2y$10$vHw8rQ0wIY3kmd.NwvaXpOP5sfqZfOuxgDu/74qYesIuhiVJMy/2y', 0, 1, '', '', '', '2021-09-29 13:04:45', '2021-09-29 13:04:45'),
(26, 'kkk', 'first_name', 'last_name', 'kkk@gmail.com', '+933211236541', '', '0000-00-00', '$2y$10$Ye2dIl8Tfii6BdCSzVOxKO2H0S1ltkm8.RiKP7icmL2PtNNe6v.wi', 0, 1, '', '', '', '2021-09-29 14:20:09', '2021-09-29 14:20:09'),
(27, 'zubair', 'first_name', 'last_name', 'zubx2010@hotmail.com', '+92+923150234592', '', '0000-00-00', '$2y$10$knJUCRXmDK46.4aIt8FZOu1YDYLaioud4J9mO7kzSOK57gY8NqVoK', 0, 1, '', '', '', '2021-10-05 03:50:54', '2021-10-05 03:50:54'),
(28, 'bali', 'first_name', 'last_name', 'zhazuinc2@gmail.com', '+18323888618', '', '0000-00-00', '$2y$10$1foh8Op8IIRj/bdexXfFpOzM.nJLpVc1MoJeaOLr9srE7EvXJx30e', 0, 1, '', '', '', '2021-10-05 10:04:49', '2021-10-05 10:04:49'),
(29, 'Nida hanif', 'first_name', 'last_name', 'nidahanif321@gmail.com', '+9203320378131', '', '0000-00-00', '$2y$10$lSkvHMvUsobMlELNjj5Dcey.oyL1aervXy8XWmgWcLfGnopbxp7u6', 0, 1, '', '', '', '2021-10-09 17:33:05', '2021-10-09 17:33:05');

-- --------------------------------------------------------

--
-- Table structure for table `users_type`
--

CREATE TABLE `users_type` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `category` int(255) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_type`
--

INSERT INTO `users_type` (`id`, `type`, `category`, `isActive`, `created_at`, `updated`) VALUES
(1, 'user', 0, 1, '2021-08-26 16:57:43', '2021-08-26 16:57:43'),
(2, 'admin', 0, 1, '2021-08-26 16:58:16', '2021-08-26 16:58:16');

-- --------------------------------------------------------

--
-- Table structure for table `user_sessions`
--

CREATE TABLE `user_sessions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sess_key` varchar(255) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isactive` int(1) NOT NULL DEFAULT '1',
  `updated_at` datetime DEFAULT NULL,
  `device_id` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `ip_address` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_sessions`
--

INSERT INTO `user_sessions` (`id`, `user_id`, `sess_key`, `datetime`, `isactive`, `updated_at`, `device_id`, `version`, `ip_address`) VALUES
(3, 11, 'a008fbb056f5c2ce0480af376635e4ed', '2021-09-11 17:22:12', 0, '2021-09-21 03:09:49', NULL, NULL, ''),
(8, 11, '1064134d9f97c66f1e3af9b732125c2c', '2021-09-11 17:33:19', 0, '2021-09-21 03:13:11', NULL, NULL, ''),
(9, 20, '8d84f20dc1ff84d3da2c902a87ac163a', '2021-09-11 06:16:02', 1, NULL, NULL, NULL, ''),
(10, 21, '35b576a4d8d2de654aa3fc07a3918aa9', '2021-09-14 12:49:24', 1, NULL, NULL, NULL, ''),
(11, 21, '76355df5c05f7cf0a1b33baef168438b', '2021-09-14 13:05:52', 1, NULL, NULL, NULL, ''),
(12, 21, '38b14caafa7381e988f8a440770b7cfd', '2021-09-14 13:09:59', 1, NULL, NULL, NULL, ''),
(13, 21, '13622a2c7c971671cac965a052e51990', '2021-09-14 13:12:29', 1, NULL, NULL, NULL, ''),
(14, 21, '477e944cb5f4cb7182483b1401ef2fdb', '2021-09-14 13:14:07', 1, NULL, NULL, NULL, ''),
(15, 21, '0331bcf057f62b6bd2bb1ab84fa7972e', '2021-09-14 13:14:26', 1, NULL, NULL, NULL, ''),
(16, 21, '9d0a930413af2f5923c0646abc69ba46', '2021-09-14 13:23:12', 1, NULL, NULL, NULL, ''),
(17, 21, '01795b8ca6a19aac17300a05b7f6719d', '2021-09-14 13:24:31', 1, NULL, NULL, NULL, ''),
(18, 21, 'f22b5081036206a31713a61e80de3661', '2021-09-14 13:26:43', 1, NULL, NULL, NULL, ''),
(19, 21, '7d6262aa6abf266dd0f8edbc30b89f56', '2021-09-16 12:26:03', 1, NULL, NULL, NULL, ''),
(20, 21, 'c144d72344a3c4b242c126901bb5dc7b', '2021-09-16 12:55:35', 1, NULL, NULL, NULL, ''),
(21, 21, 'ba959277490701f88f15562fbd705362', '2021-09-16 12:57:23', 1, NULL, NULL, NULL, ''),
(22, 21, 'e7336cbdf20e850ded4aa5fe43fa1719', '2021-09-16 12:57:56', 1, NULL, NULL, NULL, ''),
(23, 21, '1f97d5b6d88fdbccaa8d3a84dd5ecd38', '2021-09-16 12:59:03', 1, NULL, NULL, NULL, ''),
(24, 21, '967e745f3ca99693e267438d62f49052', '2021-09-16 13:00:39', 1, NULL, NULL, NULL, ''),
(25, 21, '89c301455981a8845cb0a264371b72d4', '2021-09-16 13:12:21', 1, NULL, NULL, NULL, ''),
(26, 21, 'a2e4c6d01e1819c84adfb19ef33d6880', '2021-09-18 04:00:35', 1, NULL, NULL, NULL, ''),
(27, 21, 'c591003d6c291ae9f500893bfde79fa4', '2021-09-18 04:06:11', 1, NULL, NULL, NULL, ''),
(28, 21, '7461bb169d1fc5908ef8904da54f6c38', '2021-09-18 04:07:01', 1, NULL, NULL, NULL, ''),
(29, 21, 'c4c4989804d0d81092f62dc58681886a', '2021-09-18 04:08:11', 1, NULL, NULL, NULL, ''),
(30, 21, 'aef3daae0430ca7d8fd76591367124a1', '2021-09-18 04:12:43', 1, NULL, NULL, NULL, ''),
(31, 21, 'e2765c45c87ebcc68510edeeb53421f6', '2021-09-18 04:16:14', 1, NULL, NULL, NULL, ''),
(32, 21, '9572dfb3cb2e44fa9a273b113d766489', '2021-09-18 04:17:53', 1, NULL, NULL, NULL, ''),
(33, 21, 'ec760f47bbeb70d2207073510ce1ba3f', '2021-09-18 04:19:00', 1, NULL, NULL, NULL, ''),
(34, 21, '3fcb515047c4790e07ced9f86fc86b40', '2021-09-18 04:37:15', 1, NULL, NULL, NULL, ''),
(35, 23, 'c10f71059ef183b14d9d38f9480ef9a4', '2021-09-18 04:41:05', 1, NULL, NULL, NULL, ''),
(36, 21, '283c0918e7924b4150bfa709eecbdb0b', '2021-09-22 12:08:51', 0, '2021-09-22 12:18:32', '123123131', 'ANDROID', ''),
(37, 21, 'a4e074cb590e3b7cddb6320cd201ccd0', '2021-09-22 12:19:42', 0, '2021-09-22 12:19:49', '123123131', 'ANDROID', ''),
(38, 21, 'bacab54d2071cb97de990eebb8c6d2d7', '2021-09-27 14:10:59', 0, '2021-09-27 14:12:16', '123123131', 'ANDROID', ''),
(39, 21, '9635d62a14e15a0d263aeb287c0e0716', '2021-09-28 13:50:08', 0, '2021-09-28 13:50:15', '92:0A:95:66:AF:D8 Nokia 3.4', 'ANDROID', ''),
(40, 21, '343d20f6e981544bbbbfa5e673c3ce61', '2021-09-28 14:49:29', 0, '2021-09-28 14:49:41', '92:0A:95:66:AF:D8 Nokia 3.4', 'ANDROID', ''),
(41, 21, '57f532ed1581b71cc7daafc5fc3b3d18', '2021-09-28 14:50:09', 0, '2021-09-28 14:50:33', '92:0A:95:66:AF:D8 Nokia 3.4', 'ANDROID', ''),
(42, 21, 'a9ed4ea8ffd5314b00ecff75efcf2933', '2021-09-29 12:49:42', 1, NULL, 'device_id', 'version', 'ip_address'),
(43, 21, '7a4dc9ac49bc85d922b31273f21079fb', '2021-09-29 12:58:38', 0, '2021-09-29 12:58:50', '92:0A:95:66:AF:D8 Nokia 3.4', 'ANDROID', '192.168.10.3'),
(44, 21, '46e54feb3b8e6ac2f10d863bbbe0001a', '2021-09-29 13:46:44', 0, '2021-09-29 13:46:50', '92:0A:95:66:AF:D8 Nokia 3.4', 'ANDROID', '192.168.10.3'),
(45, 21, 'acccb110f54354640e94de48a8ab2b39', '2021-09-29 13:58:04', 0, '2021-09-29 13:59:22', '92:0A:95:66:AF:D8 Nokia 3.4', 'ANDROID', '192.168.10.3'),
(46, 21, 'de3855650e7255bcd1e4c58a11848a4a', '2021-09-29 13:59:03', 1, NULL, '92:0A:95:66:AF:D8 Nokia 3.4', 'ANDROID', '192.168.10.3'),
(47, 21, '1381d49a418507cadacd990756200523', '2021-09-29 13:59:31', 0, '2021-09-29 14:01:40', '92:0A:95:66:AF:D8 Nokia 3.4', 'ANDROID', '192.168.10.3'),
(48, 21, '8d11c007258ae1c8bed83d2fedb7fd9d', '2021-09-29 14:06:18', 0, '2021-09-29 14:08:13', '92:0A:95:66:AF:D8 Nokia 3.4', 'ANDROID', '192.168.10.3'),
(49, 21, 'b1b5eeff810e328ef49e0fab72e30983', '2021-09-29 14:27:28', 1, NULL, '92:0A:95:66:AF:D8 Nokia 3.4', 'ANDROID', '192.168.10.3'),
(50, 21, 'a2f201756d1d4419ffde83489020f244', '2021-10-01 13:20:34', 0, '2021-10-01 13:20:42', 'Nokia 3.4', 'ANDROID', '192.168.1.1'),
(51, 21, '513a99594a684d086b92aa0e74ae286f', '2021-10-01 13:21:30', 1, NULL, 'Nokia 3.4', 'ANDROID', '192.168.1.1'),
(52, 21, 'ab6307a8908e4249cbc2927dbf464a7c', '2021-10-01 13:57:25', 0, '2021-10-01 14:02:39', '92:0A:95:66:AF:D8 Nokia 3.4', 'ANDROID', '192.168.10.2'),
(53, 21, '9dc1cf1e56fd6733bdb22cfe731fe7b9', '2021-10-01 14:03:00', 0, '2021-10-01 14:03:06', '92:0A:95:66:AF:D8 Nokia 3.4', 'ANDROID', '192.168.10.2'),
(54, 21, '6681262814a6c785988c0f2402e2de8b', '2021-10-01 14:16:42', 0, '2021-10-01 14:16:57', '92:0A:95:66:AF:D8 Nokia 3.4', 'ANDROID', '192.168.10.2'),
(55, 21, '950f20173cfab2470a5002e47a32defb', '2021-10-01 14:20:14', 0, '2021-10-01 14:29:24', '92:0A:95:66:AF:D8 Nokia 3.4', 'ANDROID', '192.168.10.2'),
(56, 21, 'ae15b730e431e48758f8fc923ffdb723', '2021-10-01 14:30:59', 0, '2021-10-01 14:33:15', '92:0A:95:66:AF:D8 Nokia 3.4', 'ANDROID', '192.168.10.2'),
(57, 21, '6f9867365bff249c7d5abddbc29155d2', '2021-10-01 15:09:24', 0, '2021-10-01 15:09:52', '92:0A:95:66:AF:D8 Nokia 3.4', 'ANDROID', '192.168.10.2'),
(58, 21, '4a4f76389d6f7d01980551e4e2d758cc', '2021-10-01 15:10:25', 0, '2021-10-01 15:10:34', '92:0A:95:66:AF:D8 Nokia 3.4', 'ANDROID', '192.168.10.2'),
(59, 21, '1141023bcee07859444f325bf9e3db0d', '2021-10-01 15:11:04', 0, '2021-10-01 15:11:12', '92:0A:95:66:AF:D8 Nokia 3.4', 'ANDROID', '192.168.10.2'),
(60, 21, '318e0130dc29e83d75035ad4c348cca7', '2021-10-03 14:51:17', 0, '2021-10-03 14:51:35', '92:0A:95:66:AF:D8 Nokia 3.4', 'ANDROID', '192.168.10.2'),
(61, 21, '233ac00172f2e270070e4e211d843907', '2021-10-03 14:54:37', 1, NULL, '92:0A:95:66:AF:D8 Nokia 3.4', 'ANDROID', '192.168.10.2'),
(62, 21, '66f13d50a1b8ffa9355a3f51b7f3d30e', '2021-10-03 14:54:53', 1, NULL, '92:0A:95:66:AF:D8 Nokia 3.4', 'ANDROID', '192.168.10.2'),
(63, 21, '6a86baa3229d06b0c811bda54ed5692a', '2021-10-04 13:48:32', 1, NULL, '92:0A:95:66:AF:D8 Nokia 3.4', 'ANDROID', '192.168.10.3'),
(64, 21, 'e7abbd1058dc5599afd17dc189e6f75d', '2021-10-04 13:50:03', 1, NULL, '92:0A:95:66:AF:D8 Nokia 3.4', 'ANDROID', '192.168.10.3'),
(65, 21, 'b341f06e12c1314b8142a7b47b118a8a', '2021-10-04 13:55:52', 1, NULL, '192:0A:95:66:AF:D8 Nokia 3.4', 'ANDROID', '192.168.10.3'),
(66, 21, '03e0290a04b1567db71224720f44f4ca', '2021-10-04 13:56:30', 1, NULL, '92:0A:95:66:AF:D8 Nokia 3.4', 'ANDROID', '192.168.10.2'),
(67, 21, '96465f5216f27648d2b2405a141e14c5', '2021-10-04 13:57:00', 1, NULL, '92:0A:95:66:AF:D8 Nokia 3.4', 'ANDROID', '192.168.10.2'),
(68, 21, '1c16fd6d5c50e3e469cfe4ad1bc74fe3', '2021-10-04 14:16:48', 1, NULL, '92:0A:95:66:AF:D8 Nokia 3.4', 'ANDROID', '192.168.10.3'),
(69, 21, '00ecdea5cdff5544fb6bf7b70aefc931', '2021-10-04 14:22:08', 1, NULL, '92:0A:95:66:AF:D8 Nokia 3.4', 'ANDROID', '192.168.10.3'),
(70, 21, 'f8000e0b09582e74f63ba9d3b6ba78c3', '2021-10-04 14:27:22', 1, NULL, '92:0A:95:66:AF:D8 Nokia 3.4', 'ANDROID', '192.168.10.3'),
(71, 21, '558852670bf141667045b26aa9bb24e2', '2021-10-04 14:59:51', 0, '2021-10-04 14:59:59', '92:0A:95:66:A2:D1', 'ANDROID', '192.168.10.3'),
(72, 25, '33c193c06241f6329b212cf26948285a', '2021-10-04 15:00:07', 0, '2021-10-04 15:00:11', '92:0A:95:66:A2:D1', 'ANDROID', '192.168.10.3'),
(73, 21, 'd23b4ff90c980a080ba0e8214d18c8d4', '2021-10-04 15:00:19', 0, '2021-10-04 15:00:50', '92:0A:95:66:A2:D1', 'ANDROID', '192.168.10.3'),
(74, 27, 'b443c63f2db3363e62d7dbe0482fea58', '2021-10-05 03:51:04', 0, '2021-10-05 03:51:10', '92:0A:95:66:A2:D1', 'ANDROID', '192.168.10.3'),
(75, 28, 'e110996e69b48e236d208bdc3e0646ce', '2021-10-05 10:05:09', 1, NULL, '92:0A:95:66:A2:D1', 'ANDROID', '192.168.10.3'),
(76, 29, '63261fa8e63ecec736216d17104000f0', '2021-10-09 17:33:49', 0, '2021-10-09 17:34:28', '92:0A:95:66:A2:D1', 'ANDROID', '192.168.10.3'),
(77, 20, '252bef885caf6be7707106e97ce5abf2', '2021-10-10 07:05:42', 1, NULL, '92:0A:95:66:A2:D1', 'ANDROID', '192.168.10.3'),
(78, 21, '43cc95d0ae899c356c33889ce14564d7', '2021-10-19 13:45:28', 0, '2021-10-19 13:45:41', '92:0A:95:66:A2:D1', 'ANDROID', '192.168.10.3'),
(79, 21, '076613da8554a53566f7de0c75cdd4e7', '2021-10-19 13:48:00', 0, '2021-10-19 13:48:15', '92:0A:95:66:A2:D1', 'ANDROID', '192.168.10.3'),
(80, 21, '7c006e44a5df1953d5af97c415ac33eb', '2021-10-19 13:56:35', 0, '2021-10-19 13:56:46', '92:0A:95:66:A2:D1', 'ANDROID', '192.168.10.3'),
(81, 21, '2ded402ad3b55b7ab6d4fec387ba5b00', '2021-10-19 13:57:08', 0, '2021-10-19 13:57:13', '92:0A:95:66:A2:D1', 'ANDROID', '192.168.10.3'),
(82, 25, 'a5d2906f9f2a5ed4b1e074e8eb4961e4', '2021-10-19 13:57:48', 0, '2021-10-19 14:05:42', '92:0A:95:66:A2:D1', 'ANDROID', '192.168.10.3'),
(83, 25, '320983aa7b9217946ae3c30af0c13332', '2021-10-19 14:05:52', 0, '2021-10-19 14:05:56', '92:0A:95:66:A2:D1', 'ANDROID', '192.168.10.3'),
(84, 25, 'fd77763dd0b355ff1ae755db7ad12b3b', '2021-10-19 14:12:21', 0, '2021-10-19 14:12:26', '92:0A:95:66:A2:D1', 'ANDROID', '192.168.10.3'),
(85, 21, '93a8ca6dd2146ae1e78ccde9dcc94bd6', '2021-10-19 14:12:37', 0, '2021-10-19 14:12:52', '92:0A:95:66:A2:D1', 'ANDROID', '192.168.10.3'),
(86, 25, 'ee772dedfde219e368c4ae1989b1b3b8', '2021-10-19 14:13:48', 0, '2021-10-19 14:13:52', '92:0A:95:66:A2:D1', 'ANDROID', '192.168.10.3'),
(87, 21, 'e5f37b3a613948d73242418b1eeb53a7', '2021-10-19 14:14:03', 0, '2021-10-19 14:14:10', '92:0A:95:66:A2:D1', 'ANDROID', '192.168.10.3'),
(88, 21, 'a04992b410b284e458a9228e3bcd7ee8', '2021-10-19 14:14:49', 0, '2021-10-19 14:14:58', '92:0A:95:66:A2:D1', 'ANDROID', '192.168.10.3'),
(89, 25, 'cb9be999fa3d3e00fe732eff3dddb088', '2021-10-19 14:15:26', 0, '2021-10-19 14:15:38', '92:0A:95:66:A2:D1', 'ANDROID', '192.168.10.3'),
(90, 21, '3a731d3e178c1793d073825584846283', '2021-10-19 14:16:09', 0, '2021-10-19 14:16:14', '92:0A:95:66:A2:D1', 'ANDROID', '192.168.10.3'),
(91, 21, 'bdeaff2280ab37d5d22cfc97050ea773', '2021-10-19 14:22:15', 0, '2021-10-19 14:22:22', '92:0A:95:66:A2:D1', 'ANDROID', '192.168.10.3'),
(92, 21, 'e401a7937c836334a5c00d914ae65be9', '2021-10-19 14:27:44', 0, '2021-10-19 14:27:54', '92:0A:95:66:A2:D1', 'ANDROID', '192.168.10.3'),
(93, 21, '5f810e27cdd5461e85be59ac8b529580', '2021-10-19 14:29:47', 0, '2021-10-19 14:30:00', '92:0A:95:66:A2:D1', 'ANDROID', '192.168.10.3'),
(94, 21, '2acbec541f77da065e113d6b58243ca3', '2021-10-19 14:30:05', 0, '2021-10-19 14:30:13', '92:0A:95:66:A2:D1', 'ANDROID', '192.168.10.3'),
(95, 25, '603277916380e86c3a8cee272a2748b5', '2021-10-19 14:30:31', 0, '2021-10-19 14:30:53', '92:0A:95:66:A2:D1', 'ANDROID', '192.168.10.3'),
(96, 25, 'caa98db7133654aa43f45d8f9d625095', '2021-10-19 14:31:13', 0, '2021-10-19 14:31:21', '92:0A:95:66:A2:D1', 'ANDROID', '192.168.10.3'),
(97, 21, '432e90863cf321c6a5c36d66324d99fc', '2021-10-19 14:31:30', 0, '2021-10-19 14:31:40', '92:0A:95:66:A2:D1', 'ANDROID', '192.168.10.3'),
(98, 25, '3cc7918b4af5ecc7adcb9a586c9157ab', '2021-10-19 14:31:58', 0, '2021-10-19 14:32:04', '92:0A:95:66:A2:D1', 'ANDROID', '192.168.10.3'),
(99, 21, '66b4db548111e9192233d3169c8808be', '2021-10-19 14:38:14', 0, '2021-10-19 14:38:21', '92:0A:95:66:A2:D1', 'ANDROID', '192.168.10.3'),
(100, 21, 'd6545c871832ed5e4d043f15b8673e5c', '2021-10-19 14:38:23', 0, '2021-10-19 14:38:28', '92:0A:95:66:A2:D1', 'ANDROID', '192.168.10.3'),
(101, 25, 'ed0edaec0212f8bc828ad826a15b67b2', '2021-10-19 14:38:37', 0, '2021-10-19 14:38:45', '92:0A:95:66:A2:D1', 'ANDROID', '192.168.10.3'),
(102, 21, '3febb1202f785dfbae6282b56c074519', '2021-10-19 14:38:55', 0, '2021-10-19 14:38:58', '92:0A:95:66:A2:D1', 'ANDROID', '192.168.10.3'),
(103, 21, '277345928fa7ac3855824d5f98359639', '2021-10-19 14:39:12', 0, '2021-10-19 14:39:16', '92:0A:95:66:A2:D1', 'ANDROID', '192.168.10.3'),
(104, 21, '5fdaceb687a6c5e80b1eb32af08d1341', '2021-10-23 03:52:10', 0, '2021-10-23 03:52:17', '92:0A:95:66:A2:D1', 'ANDROID', '192.168.10.3'),
(105, 21, '226faae4e7ef1cc7855b287f9263359f', '2021-10-23 03:52:21', 0, '2021-10-23 03:52:29', '92:0A:95:66:A2:D1', 'ANDROID', '192.168.10.3'),
(106, 21, '82fa19a9dbd941213a58404f71ebea69', '2021-10-23 03:52:51', 0, '2021-10-23 03:53:02', '92:0A:95:66:A2:D1', 'ANDROID', '192.168.10.3'),
(107, 25, '0747508bc1b2659ea863ec9e89f62446', '2021-10-23 03:53:13', 0, '2021-10-23 03:53:37', '92:0A:95:66:A2:D1', 'ANDROID', '192.168.10.3'),
(108, 21, '080b2c97f85000395428e0f6f21f4ee4', '2021-10-23 03:53:53', 0, '2021-10-23 03:54:07', '92:0A:95:66:A2:D1', 'ANDROID', '192.168.10.3'),
(109, 21, '5f91371d6259ca2bfe0e719de96f8aa7', '2021-10-23 05:30:31', 0, '2021-11-10 03:09:31', '92:0A:95:66:A2:D1', 'ANDROID', '192.168.10.3'),
(110, 21, '9d4a97a217dfa4d859a1e4e875570faa', '2021-11-10 03:09:34', 0, '2021-11-10 03:09:37', '92:0A:95:66:A2:D1', 'ANDROID', '192.168.10.3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `api_token`
--
ALTER TABLE `api_token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coin`
--
ALTER TABLE `coin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_chat`
--
ALTER TABLE `group_chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kyc`
--
ALTER TABLE `kyc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_detail`
--
ALTER TABLE `payment_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `security`
--
ALTER TABLE `security`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tip`
--
ALTER TABLE `tip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_info`
--
ALTER TABLE `users_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `users_type`
--
ALTER TABLE `users_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sessions`
--
ALTER TABLE `user_sessions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `api_token`
--
ALTER TABLE `api_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coin`
--
ALTER TABLE `coin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `group`
--
ALTER TABLE `group`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group_chat`
--
ALTER TABLE `group_chat`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kyc`
--
ALTER TABLE `kyc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_detail`
--
ALTER TABLE `payment_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_type`
--
ALTER TABLE `product_type`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `security`
--
ALTER TABLE `security`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tip`
--
ALTER TABLE `tip`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_info`
--
ALTER TABLE `users_info`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users_type`
--
ALTER TABLE `users_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_sessions`
--
ALTER TABLE `user_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
