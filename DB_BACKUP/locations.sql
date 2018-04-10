-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2018 at 06:31 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `locations`
--

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `locationid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `locationid`, `name`, `created_at`, `updated_at`) VALUES
(13, '72057594038812915', 'Mutare, Zimbabwe', '2018-04-09 07:06:12', '2018-04-09 07:06:12'),
(14, '72057594038822637', 'Bulawayo, Zimbabwe', '2018-04-09 08:16:13', '2018-04-09 08:16:13'),
(15, '72057594038818235', 'Harare, Zimbabwe', '2018-04-09 08:16:29', '2018-04-09 08:16:29'),
(16, '72057594042873847', 'Norton, MA, United States', '2018-04-09 08:16:42', '2018-04-09 08:16:42'),
(17, '72057594038822997', 'Bindura, Zimbabwe', '2018-04-09 09:06:37', '2018-04-09 09:06:37'),
(18, '72057594042703639', 'New Canton, VA, United States', '2018-04-10 01:51:12', '2018-04-10 01:51:12'),
(25, '72057594043488907', 'Capetown, CA, United States', '2018-04-10 02:09:38', '2018-04-10 02:09:38'),
(27, '72057594038817878', 'Hwange, Zimbabwe', '2018-04-10 02:23:47', '2018-04-10 02:23:47');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_04_08_210002_create_locations_table', 2),
(4, '2018_04_08_210758_create_photos_table', 2),
(5, '2018_04_08_213222_create_user_locations_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `photoid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `suffix` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `venueid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_id` int(10) UNSIGNED NOT NULL,
  `coordinates` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `photoid`, `prefix`, `suffix`, `venueid`, `name`, `city`, `state`, `country`, `category`, `location_id`, `coordinates`, `created_at`, `updated_at`) VALUES
(7, '52eceff6498e5300a7ec8f73', 'https://igx.4sqi.net/img/general/', '/63738524_fKVO5IU-i2qOdODdECMqDRJjwKQpnJrwqciB1FA5Vxw.jpg', '52a9d943498e6f6b4c88b88b', 'Golden Peacock Hotel', NULL, NULL, 'Zimbabwe', 'Bed & Breakfast', 13, '-19.001745567592,32.623161438344', NULL, NULL),
(8, '5038d6dde4b0c1904ecc9d63', 'https://igx.4sqi.net/img/general/', '/s6Iy2TItaXgRKqzVwhf_8i-0Zg2b7vvs_3ry2EaYIFk.jpg', '4db1b8e40cb6442b2ecfb148', 'Nandos', NULL, NULL, 'Zimbabwe', 'Fast Food Restaurant', 13, '-18.976458376274,32.667830566943', NULL, NULL),
(9, '4fd5d403e4b00a1643e174a6', 'https://igx.4sqi.net/img/general/', '/IGtzAfKAX2VFasT0XCMilbZluSnXMJzjDGeqQPCHvnk.jpg', '4d622c77b19fa14356540bc9', 'Bytron', NULL, NULL, 'Zimbabwe', 'Internet Cafe', 13, '-18.9683144,32.6734892', NULL, NULL),
(10, '532b3848498e8321f8154b22', 'https://igx.4sqi.net/img/general/', '/70205566_WPP-wjELKhugKZ-DXqtRJcjHaspVNKBxCtU5xw2d9hM.jpg', '502c9d26e4b04515096c5faf', 'Wimpy', NULL, NULL, 'Zimbabwe', 'Restaurant', 13, '-18.981007490553,32.617983769822', NULL, NULL),
(11, '531b08fb498ec8f7d5bf23b5', 'https://igx.4sqi.net/img/general/', '/5891328_tToWqzKMsbOXwjaAfFL8CctfaxeAq3zjDbysS6sGSPA.jpg', '4d8623555ad3a0939cd2f2fd', 'Nandos', NULL, NULL, 'Zimbabwe', 'Fried Chicken Joint', 14, '-20.154108310422,28.583653551732', NULL, NULL),
(12, '57b9ccb4498ec386e47bf9fd', 'https://igx.4sqi.net/img/general/', '/26359436_Y-pv0t-NOm-BhM16jN84V4DZWD-OC7d0s0w9cfPbDpc.jpg', '507ffdd7e4b0894ae8087197', 'Food Lover''s Market', NULL, NULL, 'Zimbabwe', 'Farmers Market', 14, '-20.175424115675,28.589848285706', NULL, NULL),
(13, '56b232fb498e975751b42deb', 'https://igx.4sqi.net/img/general/', '/138302434_tJX17h0IyME7exc6BEHYbYxrLnWWEQyrrinNL3Uo83A.jpg', '4d712f4677f65941b1cff8a3', 'Holiday Inn', NULL, NULL, 'Zimbabwe', 'Hotel', 14, '-20.160807834132,28.608758085069', NULL, NULL),
(14, '57eb4942498eca3debf5a234', 'https://igx.4sqi.net/img/general/', '/138302434_SG63CelrX1m0xfs3f6pZt7XpwlXRZfBCNEWHcK5pHmw.jpg', '4e6089b062e13e3bcdcd74ec', 'Bulawayo Rainbow Hotel', NULL, NULL, 'Zimbabwe', 'Hotel', 14, '-20.158651696216,28.587064760496', NULL, NULL),
(15, '589ee77326a95333d6ee3abe', 'https://igx.4sqi.net/img/general/', '/394199022_Z1XnToIn4lcD81odkE2x0KDZE_BLgA1A8XqQgbvhSsw.jpg', '4d7465656820ba7a2ede3dfe', '26 on Park', NULL, NULL, 'Zimbabwe', 'Restaurant', 14, '-20.15502877755,28.597997393022', NULL, NULL),
(16, '57f762d4498ef233499e086c', 'https://igx.4sqi.net/img/general/', '/20203753_Pqh26R7mgGmoSvPE5bEvcPL8zHx_xPtFbyKtTBjgqE4.jpg', '4d426e58860a8eec496e4e8c', 'Joshua Mqabuko Nkomo International Airport (BUQ)', NULL, NULL, 'Zimbabwe', 'Airport', 14, '-20.018409666225,28.627996550005', NULL, NULL),
(17, '5405b542498e835b92a3c7a8', 'https://igx.4sqi.net/img/general/', '/54578127_D8d3oCAM3sak3kHOpTmCIV42jii6mpH09buhiIwEqIc.jpg', '4d271783ec272d4378b6334c', 'Royal Harare Golf Club', NULL, NULL, 'Zimbabwe', 'Golf Course', 15, '-17.811415447704,31.051462763292', NULL, NULL),
(18, '4f606816bb3d79729d17563a', 'https://igx.4sqi.net/img/general/', '/M63Jd63Te1FS7RPaKKoQBYFMdhM2rd6JBKy8dlZ1lFA.jpg', '4c8667ddb139b7138f28ca91', 'Amanzi', NULL, NULL, 'Zimbabwe', 'Tapas Restaurant', 15, '-17.793677310155,31.105467333232', NULL, NULL),
(19, '54094a72498e543340f6cfe1', 'https://igx.4sqi.net/img/general/', '/25538346_j1vSMlPJBFA0TLE3Eq9EJ6xuoOzIozbpJ08pz9G78L8.jpg', '4d24916ddaa937042989c681', 'Harare Sports Club', NULL, NULL, 'Zimbabwe', 'Cricket Ground', 15, '-17.814163109518,31.051194038078', NULL, NULL),
(20, '50c481afe4b09610f36ab888', 'https://igx.4sqi.net/img/general/', '/38217701_4NGFRqmL9nwQTQW-9_pj1phoe_jpMpNsnS9QAcW3-aU.jpg', '4c8a18863dc2a1cd978ba932', 'Sam Levy''s Village', NULL, NULL, 'Zimbabwe', 'Shopping Mall', 15, '-17.760128129423,31.088585857559', NULL, NULL),
(21, '51867ea6498e87fa5706ddf1', 'https://igx.4sqi.net/img/general/', '/32438426_N0aLZvK0WSAUpojorcA1GEPMbg-f_GEqPZs7ZQK_vo0.jpg', '4d9303e462ad5481c79f774b', 'Harare Gardens', NULL, NULL, 'Zimbabwe', 'Performing Arts Venue', 15, '-17.825330064549,31.047599780699', NULL, NULL),
(22, '51c45a6f498e977ecdb61e03', 'https://igx.4sqi.net/img/general/', '/51995985_zVQrCgHFAZtiSB2Q6gWuUHu8UAaH0SDLpIR_yfv9UVg.jpg', '4bc8b635c1c6eee105dbfd92', 'Meikles Hotel Harare', NULL, NULL, 'Zimbabwe', 'Hotel', 15, '-17.830386635003,31.052901552668', NULL, NULL),
(23, '52c9b1ea498e4fa99bdc9e1d', 'https://igx.4sqi.net/img/general/', '/32342210_axsfAOUGzTUIqqHX5cj4hCobRIhMsuuBRMFXH-lwv-E.jpg', '4dcacb8c7d8bc0c0b8861208', 'Tin Roof', NULL, NULL, 'Zimbabwe', 'Dive Bar', 15, '-17.788545413095,31.109670225955', NULL, NULL),
(24, '5135fdbfe4b01ef55fd46ff3', 'https://igx.4sqi.net/img/general/', '/14127417_T_5H9bNGZyeVcPVhAMa6gLJ8Hf8F6VuHP6EM_7gDz8Q.jpg', '4d15a37825cda143621a6bd6', 'Westgate Shopping Mall', NULL, NULL, 'Zimbabwe', 'Shopping Mall', 15, '-17.762948714163,30.977804070507', NULL, NULL),
(25, '5336c50e498ed5a19549c591', 'https://igx.4sqi.net/img/general/', '/51995985_gCUH-F1S8dZpQ8CxM8SDTGKBmN5kaSTVOOlGiN5fbfA.jpg', '4dd560bdfa7645a53caeabd2', 'Shangri-La Restaurant', NULL, NULL, 'Zimbabwe', 'Chinese Restaurant', 15, '-17.789198511303,31.106969627917', NULL, NULL),
(26, '56715322498e3c33319d38cb', 'https://igx.4sqi.net/img/general/', '/37796843_MfTEH2K7ZWuA4OHtXo60C4GdeB2QW5zdUR876eqKV-E.jpg', '4ddfd411d164da4f2337250d', 'Cafe Nush', NULL, NULL, 'Zimbabwe', 'Café', 15, '-17.802712905719,31.038501973004', NULL, NULL),
(27, '56211891498e60d1c02d5d7c', 'https://igx.4sqi.net/img/general/', '/143034328_0IiC_qdQ_gTd_y8dFM4XN6nJ1XcsWVz2_MfXorP0Qyk.jpg', '52482854498e729b2e3bb59a', 'The Centurion Pub and Grill', NULL, NULL, 'Zimbabwe', 'Restaurant', 15, '-17.813354280802,31.051072105864', NULL, NULL),
(28, '55ad3e98498ef015ffae8584', 'https://igx.4sqi.net/img/general/', '/32342210_2Xh1AHSf2gCQbMBuRpLRDyOSo2UaL1bKMD0u3VYLvsc.jpg', '5298e47411d26f8a8f0d4745', 'Maestro Restro Lounge & Bar', NULL, NULL, 'Zimbabwe', 'Comfort Food Restaurant', 15, '-17.795489938792,31.102754367744', NULL, NULL),
(29, '536cd781498e3f23a4cd8d10', 'https://igx.4sqi.net/img/general/', '/33621520_Yhod1HIfJg1Fel2K6od1rcwFK3OihYgb2b8XDcxBD3A.jpg', '500128f1c84c6f5fde7cfe15', 'Insignia Bookshop', NULL, NULL, 'Zimbabwe', 'Bookstore', 15, '-17.831522468716,31.04732226012', NULL, NULL),
(30, '53c4fef6498e9eca15cebabe', 'https://igx.4sqi.net/img/general/', '/14300884_boxRM4m_5RgYkhyioZ1fIqcJCpYG_7GN_MS8_XvSuEI.jpg', '4d846f5c61676dcb353872e4', 'Arundel Village', NULL, NULL, 'Zimbabwe', 'Shopping Mall', 15, '-17.763183118221,31.051493636998', NULL, NULL),
(31, '4e940a7346900e559d1f8166', 'https://igx.4sqi.net/img/general/', '/EM5JB5IDCQHICAYXH2Y4MMXL44GHQLPF022XR4URIHVB5KP0.jpg', '4d78c547c1d56ea83209d52b', 'Nando''s', NULL, NULL, 'Zimbabwe', 'Restaurant', 15, '-17.802910969314,31.037591093695', NULL, NULL),
(32, '515e5dede4b09179686312dc', 'https://igx.4sqi.net/img/general/', '/14127417_EiQewuP9WrzDNw5Iz5fU8Lw1_kH5gUnZbcjSacuGBAM.jpg', '4ddeaf0bd16415421848ff7c', 'Avondale Shopping Center', NULL, NULL, 'Zimbabwe', 'Miscellaneous Shop', 15, '-17.80285042977,31.038143348404', NULL, NULL),
(33, '4e9c14f9d3e3697fc074dc65', 'https://igx.4sqi.net/img/general/', '/VV5ONCF04PEPJXFOASOOWDSX3AJROQ0PLZPFDBE5PSZTNUGV.jpg', '4d83722fd5fab60c0428cc9b', 'Joina Centre', NULL, NULL, 'Zimbabwe', 'Building', 15, '-17.831772915471,31.047224672891', NULL, NULL),
(34, '55ef2871498e4ffe1e381460', 'https://igx.4sqi.net/img/general/', '/139499571_TxxHEp5LcJXYRLqvVcF2W9eVXITnjQwdmYCeuHIMw90.jpg', '52a7861b11d225be0d2723c0', 'Pariah State', NULL, NULL, 'Zimbabwe', 'Cocktail Bar', 15, '-17.803343432344,31.037009827302', NULL, NULL),
(35, '55e9785c498e31df924071a1', 'https://igx.4sqi.net/img/general/', '/23427316_OP2uFLnOBRPpiDfzy6fjDDooEnjhdsq5lvcD8f2nXmY.jpg', '4e86bc11e5fa41cedbd6682b', 'The Bronte Hotel', NULL, NULL, 'Zimbabwe', 'Hotel', 15, '-17.817210756002,31.052476075889', NULL, NULL),
(36, '4e691ea4d22df5c11f9cb53f', 'https://igx.4sqi.net/img/general/', '/UFVO5DA2GSW2O324IMO1DMIGCW0WXGUHRFDK32QHDWKNZM2Z.jpg', '4e567071b993e0d1940925e4', 'Mekka Sushi Bar', NULL, NULL, 'Zimbabwe', 'Cocktail Bar', 15, '-17.760299142475,31.087321329537', NULL, NULL),
(37, '53392dbb498ecd23020eadf8', 'https://igx.4sqi.net/img/general/', '/82687720_hoTCdJjv-ubRG-53-nWJU-xpDzArJzLM1P_osbGrcSQ.jpg', '52498e94498ecf8966b1f902', 'Long Cheng Plaza', NULL, NULL, 'Zimbabwe', 'Shopping Mall', 15, '-17.826793261573,31.003463422223', NULL, NULL),
(38, '53f47a89498e5dbd87375542', 'https://igx.4sqi.net/img/general/', '/10636785_CHIPBWFUDyi66yDczMSTuzaTxbzk77_s7lPEehvXy1I.jpg', '4e2bfc31fa76bbf847deea16', 'Fife Avenue Shopping Center', NULL, NULL, 'Zimbabwe', 'Shopping Mall', 15, '-17.818823873211,31.054362718054', NULL, NULL),
(39, '561cd20f498e25ea87015d25', 'https://igx.4sqi.net/img/general/', '/10223582_2tzxtOtRSHYmJ-ogqpUuexeHX2YI19lRUjOQ95OSYYE.jpg', '4d7a60f17451236a47bee0fe', 'Alliance Francaise', NULL, NULL, 'Zimbabwe', 'Performing Arts Venue', 15, '-17.818320244064,31.061470217488', NULL, NULL),
(40, '59763f18f2905e41f98ee54f', 'https://igx.4sqi.net/img/general/', '/32864358_2q2mjMlyXhrBFnf-qXOl0ER7YaOFvB0wGHs5rXpOrfg.jpg', '4bdf1c407ea362b5485543c4', 'Cresta Lodge Harare', NULL, NULL, 'Zimbabwe', 'Hotel', 15, '-17.83289603415,31.100883056208', NULL, NULL),
(41, '526d07b1498e46e83035b68a', 'https://igx.4sqi.net/img/general/', '/6983959_H71Op9fGPs-43rq49gTGYNMMsWgM5oAG44S5xvXLL3o.jpg', '4edda061be7be2833b918409', 'Avondale Flea Market', NULL, NULL, 'Zimbabwe', 'Flea Market', 15, '-17.801800922673,31.03795857946', NULL, NULL),
(42, '512f41dfe4b00f42931414e0', 'https://igx.4sqi.net/img/general/', '/6983959_b7Z2UWN0cKGFt7bZd38vOda8GqjdKMMVPYrx-Ysj8q0.jpg', '4d8b83d87d4c548113f67f71', 'Spar', NULL, NULL, 'Zimbabwe', 'Grocery Store', 15, '-17.776356331233,31.065276710285', NULL, NULL),
(43, '4ed0ecd261af476c0927f8c7', 'https://igx.4sqi.net/img/general/', '/1OPFN2LKHUYIN1REROYSM5GL4AAMSX3E1LKUOVQNHSEPYY5N.jpg', '4e8ad9818231cd825421fffd', 'Nando''s Samora Machel', NULL, NULL, 'Zimbabwe', 'Portuguese Restaurant', 15, '-17.82458736845,31.056785424963', NULL, NULL),
(44, '511e8a87e4b0f2db5bec7a35', 'https://igx.4sqi.net/img/general/', '/6983959_Egysv10-EhqhlCxZiiwxzL4iHyM7-RB-0-qFJsdt_bg.jpg', '4ede7c06f9abeea3de684638', 'Athienitis Spar Five Avenue', NULL, NULL, 'Zimbabwe', 'Grocery Store', 15, '-17.818831509189,31.054250751986', NULL, NULL),
(45, '525b899711d21669088c5d21', 'https://igx.4sqi.net/img/general/', '/31657702_R_B_5hApbp5Ud01EKalCyrYtJEUvhw1CXtOIaPcOQCc.jpg', '4d61aa07865a224bf9a8b985', 'Holiday Inn', NULL, NULL, 'Zimbabwe', 'Hotel', 15, '-17.825712683785,31.055891044478', NULL, NULL),
(46, '520d645b11d26b98681633a6', 'https://igx.4sqi.net/img/general/', '/803408_kAvI_2Nc_aQIAh8ZtoyVIU6pLZutocPEQhfy8J8Etfw.jpg', '4abccf30f964a5205c8720e3', 'TPC Boston', NULL, NULL, 'United States', 'Golf Course', 16, '41.982587843752,-71.223339106152', NULL, NULL),
(47, '5a9099021c675b48862667db', 'https://igx.4sqi.net/img/general/', '/13352159_8ym0mp4kYFOHdLc2LXFUJlaH2Zf8CPePafvDsDGQkzQ.jpg', '51830da9454a583ea8ff0fbf', 'Bog Iron Brewing', NULL, NULL, 'United States', 'Brewery', 16, '41.96560503183,-71.190053263518', NULL, NULL),
(48, '56dcd132498e07b126839ce2', 'https://igx.4sqi.net/img/general/', '/15750513_C3SLhxW5bGVxC7HKcWkGs1WQSvPY6IMCQvDpIJiwwuc.jpg', '509b0cfee4b0bd1e6734bf6f', 'Sabatino''s Trattoria', NULL, NULL, 'United States', 'Restaurant', 16, '41.961225503063,-71.199682516009', NULL, NULL),
(49, '507314e5e4b0a1f8872de584', 'https://igx.4sqi.net/img/general/', '/1242875_jEqiPSeeBhDwegzUFDhukhD3zdaHLybj2eOfT_PGmo8.jpg', '4bb13afaf964a5208a853ce3', 'Emma''s Pub & Pizza', NULL, NULL, 'United States', 'Pub', 16, '41.978399865934,-71.202780418647', NULL, NULL),
(50, '594f0d279ef8ef328a77b3b9', 'https://igx.4sqi.net/img/general/', '/1870216_W59_rsCdXMunN3gGEdzA-4xCHBRjL2c3J0POp_LD_Zs.jpg', '4bf326c7354e9c748f8d2602', 'Gold''s Gym', NULL, NULL, 'United States', 'Gym', 16, '41.997363565801,-71.149722339452', NULL, NULL),
(51, '57ed5a4e498ed87f8217052c', 'https://igx.4sqi.net/img/general/', '/345607158_m4WTCG_lqA8alOsbV1b5WodU5onV95lZ6-xdo-0GlII.jpg', '4d6d12fe392b5941ea65a17c', 'The Best Sandwich Shop', NULL, NULL, 'United States', 'Sandwich Place', 16, '41.981847594338,-71.209001963763', NULL, NULL),
(52, '4f89698de4b0abaa029a18a4', 'https://igx.4sqi.net/img/general/', '/-w4iWHDn1_84y2QYHznL7C5z9uXluDFOBuQ_WEGnP4o.jpg', '4c49af306594be9ab2b56925', 'Dunkin'' Donuts', NULL, NULL, 'United States', 'Donut Shop', 16, '41.953075260972,-71.242690291183', NULL, NULL),
(53, '585444897220e62803a9617f', 'https://igx.4sqi.net/img/general/', '/58175588_2AbSTQukaqVQDtEgPMXNICxdzLYmFUZxSpZs0wCO_sE.jpg', '4befef5d25afb71331ca4a6f', 'Dunkin Donuts', NULL, NULL, 'United States', 'Donut Shop', 16, '41.985649138652,-71.157606516542', NULL, NULL),
(54, '4ff76ec5e4b01a84edbd9ca3', 'https://igx.4sqi.net/img/general/', '/eHC6HdAXubQ6uJyPJjzw1yOg6MbjhV1yVRnVbo0EKiE.jpg', '4bf702f913aed13ad9a1eaf7', 'Alberto''s Pub & Pizza', NULL, NULL, 'United States', 'Pizza Place', 16, '41.991207519651,-71.210282698065', NULL, NULL),
(55, '52ffb0f4498e68814a6aafc8', 'https://igx.4sqi.net/img/general/', '/11939392_0gm1TN6GY9iww3Jk5Koyqbt-kAg1yp_uynkjSlzrUMY.jpg', '4e42edcc1f6ec2e1931561d6', 'Planet Fitness', NULL, NULL, 'United States', 'Gym / Fitness Center', 16, '41.954933446267,-71.241815358527', NULL, NULL),
(56, '544aec04498e511fa1d0d62a', 'https://igx.4sqi.net/img/general/', '/46536268_4oBM5tP6EGGB8keNkm9uo2BCr0xdzPkn3jzKt8S8ev0.jpg', '5138d8b6e4b09cebdde951ef', 'Fiesta Mexican Grille', NULL, NULL, 'United States', 'Mexican Restaurant', 16, '41.982633874047,-71.209042543778', NULL, NULL),
(57, '5380cdf3498ec674ef37664b', 'https://igx.4sqi.net/img/general/', '/42070488_fK1Gr27E-p7JCLoMmJTdhju7SFauQE94Ui5IwZmckJg.jpg', '4c674d1e9cb82d7f607993d2', 'Downtown Cafe', NULL, NULL, 'United States', 'Pizza Place', 16, '41.952219940195,-71.222563745798', NULL, NULL),
(58, '53f8f8a3498e18bb36fd67c8', 'https://igx.4sqi.net/img/general/', '/59840408_XqL_vpY47Iu62bGr9XGAmMpg0UTqEalueuBi5k8Z1RU.jpg', '4bb2423da32876b0695b00fe', 'Winslow Farm Animal Sanctuary', NULL, NULL, 'United States', 'Farm', 16, '41.936277426321,-71.165324449539', NULL, NULL),
(59, '502a4566e4b0f12a43b3bf8d', 'https://igx.4sqi.net/img/general/', '/pFztw3bdN_s86WzZgNfdnmGW0EvpTPVuopryTueBcm8.jpg', '4d06593e30a58cfacf77aae7', 'CVS/pharmacy', NULL, NULL, 'United States', 'Pharmacy', 16, '41.965135534582,-71.190765528548', NULL, NULL),
(60, '583b42c9fd271627abfd5755', 'https://igx.4sqi.net/img/general/', '/58175588_IcdFZAvTghd0x_RzRwHceSWB7Ml-9F88p3oJ0NI_6sE.jpg', '4c2b514ad1a10f4737b5f764', 'Cumberland Farms', NULL, NULL, 'United States', 'Convenience Store', 16, '41.990696976322,-71.211160719395', NULL, NULL),
(61, '5840f09b91936a0f7e4a6f76', 'https://igx.4sqi.net/img/general/', '/87388367_nDDKCEDLM4TxpMDqzL1vJhWHtHNnyrlFkp-bd4wrHRg.jpg', '4c60118723e303bba6d77407', 'Walgreens', NULL, NULL, 'United States', 'Pharmacy', 16, '41.964605025357,-71.18978168819', NULL, NULL),
(62, '52a49a4511d20a5d03b6149a', 'https://igx.4sqi.net/img/general/', '/25779836_A4QFa9bDCFurtSHvOVp8ZAyzkAfjelrXlkF1z_COhZk.jpg', '51ed522f498ed28752d6f885', 'Kelly''s Place', NULL, NULL, 'United States', 'Breakfast Spot', 16, '41.992227068784,-71.155717707343', NULL, NULL),
(63, '578f4917498ecddce5ecaf98', 'https://igx.4sqi.net/img/general/', '/151916789_ifbX-gktRr0Hl837ZuFRnc297Hv2LHNWduLTcq0sWeQ.png', '4c4db7e1ea24c9b6916e8914', 'Pizza Tyme', NULL, NULL, 'United States', 'Pizza Place', 16, '41.986270557553,-71.158298665546', NULL, NULL),
(64, '510ef727e4b0d7e122190a65', 'https://igx.4sqi.net/img/general/', '/41566743_BVuCghf7rKH8O-z-uugN3VMRePo__wjK4hSkFLgcvuw.jpg', '4acbc346f964a52059c520e3', 'The Chateau', NULL, NULL, 'United States', 'Italian Restaurant', 16, '41.973334464042,-71.127588574994', NULL, NULL),
(65, '502a459be4b0e46579b22b0d', 'https://igx.4sqi.net/img/general/', '/-Ro3wOejAaToiqlFrRMkItcCVbK3aIgP0FZU2WWOSa4.jpg', '4a7b19bdf964a52006ea1fe3', 'Dunkin'' Donuts', NULL, NULL, 'United States', 'Donut Shop', 16, '41.961724418264,-71.198897970734', NULL, NULL),
(66, '5316426411d2658b7b4f8992', 'https://igx.4sqi.net/img/general/', '/3065971_sc4xpHBdsycdxZkt_VRTZjGvm1gOGUGzW-a23-wN_nA.jpg', '4dee7c31e4cd032b18a3d5cb', 'Dollar Tree', NULL, NULL, 'United States', 'Discount Store', 16, '41.981676725617,-71.20909724965', NULL, NULL),
(67, '558a96a2498e944951982317', 'https://igx.4sqi.net/img/general/', '/1228391_PCKhOOelR2VvQaofjrPhRyFodBMJjA88nG-8iGb4fXQ.jpg', '4beaab4662c0c928f213e1d4', 'T-Mobile', NULL, NULL, 'United States', 'Mobile Phone Shop', 16, '41.960113,-71.134876', NULL, NULL),
(68, '5186a3cc498e995ae7b3d9d7', 'https://igx.4sqi.net/img/general/', '/9915423_IczhOeqTtvCOZfmi5Iys6mPyJnUovw5STX9m1hUaybk.jpg', '4b1c4b5ef964a520a30524e3', 'Wendell''s Pub', NULL, NULL, 'United States', 'Wings Joint', 16, '41.965372347722,-71.189461324228', NULL, NULL),
(69, '4ed0fed50e01f1a8807b093b', 'https://igx.4sqi.net/img/general/', '/T3VBETJAKNEXLVSTFZ420KT2UFI1RHUHSUQS4D4LGLTSWFC4.jpg', '4bcb1c8d511f9521e3c1b0c7', 'Patty''s Place', NULL, NULL, 'United States', 'Breakfast Spot', 16, '41.95157713399,-71.234935243944', NULL, NULL),
(70, '509441a2e4b055b34c156895', 'https://igx.4sqi.net/img/general/', '/21359640_XgqMMf1N_K_Cu9a3p1RADMNurIdoV-J7fB4KNc0NDAk.jpg', '4baca94af964a520a7013be3', 'Dunkin Donuts', NULL, NULL, 'United States', 'Donut Shop', 16, '41.981474335454,-71.209392850616', NULL, NULL),
(71, '52d3e404498ee33f29b2a99e', 'https://igx.4sqi.net/img/general/', '/14741965_VDL5VXd7b38OnrInnaEEm834wOVrxDtf8ocogpLnJOs.jpg', '52d3e38511d27f74ce56a713', 'Blantyer', NULL, NULL, 'Zimbabwe', 'Bar', 17, '-17.32785453766,31.294729864814', NULL, NULL),
(72, '51db2d31498e318c17ed4b7c', 'https://igx.4sqi.net/img/general/', '/26737237_lDWzGgNo_Jmab3-AtdEXkSGlVD7qi07mlNh1HcAmNV0.jpg', '519921d0498e75b32d48819d', 'Yellow Rose', NULL, NULL, 'United States', 'Restaurant', 25, '40.326458324846,-124.2937309378', NULL, NULL),
(73, '51791820e4b09dfb18eb1d81', 'https://igx.4sqi.net/img/general/', '/12020966_8P7tLHhqG4Y3IzHkMTR2KxcDxmTzOT3pGElFi6XA0hU.jpg', '517112d6e4b070092a83b26d', 'Baobabhotel', NULL, NULL, 'Zimbabwe', 'Hotel', 27, '-18.343975622723,26.503913181527', NULL, NULL),
(74, '51247bb7e4b06a37a251ba95', 'https://igx.4sqi.net/img/general/', '/965382_U4qy_FfVCsxBnaylYMUkvfji7mFBdRs3qV6YVkPxBTc.jpg', '4ea4749610818280526a5b0e', 'Hwange National Park Airport (HWN)', NULL, NULL, 'Zimbabwe', 'Airport', 27, '-18.635199765084,27.000234425068', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test', 'test@testing.com', '$2y$10$X4uIUfmFp2MjIKrGPjrrV.LHtrnA7V0Ansyt.ST09cokGLYQByrKe', 'euTykh5dw847esK0zcpxCdsO4X3t65b7XkV7Nbw4lhfwioPUMhqnsIyLH2E0', '2018-04-05 18:18:22', '2018-04-05 18:18:22');

-- --------------------------------------------------------

--
-- Table structure for table `user_locations`
--

CREATE TABLE `user_locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `location_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `locations_locationid_unique` (`locationid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `photos_photoid_unique` (`photoid`),
  ADD KEY `photos_location_id_foreign` (`location_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_locations`
--
ALTER TABLE `user_locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_locations_user_id_foreign` (`user_id`),
  ADD KEY `user_locations_location_id_foreign` (`location_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_locations`
--
ALTER TABLE `user_locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `photos`
--
ALTER TABLE `photos`
  ADD CONSTRAINT `photos_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`);

--
-- Constraints for table `user_locations`
--
ALTER TABLE `user_locations`
  ADD CONSTRAINT `user_locations_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`),
  ADD CONSTRAINT `user_locations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
