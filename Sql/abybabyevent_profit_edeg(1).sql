-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2023 at 02:32 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abybabyevent_profit_edeg`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin', '25d55ad283aa400af464c76d713c07ad', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `data_save`
--

CREATE TABLE `data_save` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `q_id` int(11) DEFAULT NULL,
  `answare_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_save`
--

INSERT INTO `data_save` (`id`, `user_id`, `level`, `q_id`, `answare_id`, `status`) VALUES
(2, 2, 1, 1, 2, 1),
(3, 21, 1, 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

CREATE TABLE `flights` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `airline` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(17, '2014_10_12_000000_create_users_table', 1),
(18, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(19, '2019_08_19_000000_create_failed_jobs_table', 1),
(20, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(21, '2023_12_01_110630_create_questions_table', 1),
(22, '2023_12_07_134954_create_admins_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(2, 'App\\Models\\User', 2, 'auth_token', '987fa9b2157a1a8eef666eb9c5cbe93adb952be5980ad9c07f7f9d98ce891459', '[\"*\"]', '2023-12-05 06:42:06', NULL, '2023-12-05 06:41:49', '2023-12-05 06:42:06'),
(3, 'App\\Models\\User', 3, 'auth_token', 'bf7ffc1947d8740a8b08f842399c93e2e543f60101e5c5d93e657e57c92c4d6d', '[\"*\"]', '2023-12-05 07:51:18', NULL, '2023-12-05 06:43:05', '2023-12-05 07:51:18'),
(4, 'App\\Models\\User', 3, 'auth_token', '23d54d31244476a5d2f6ba3286ccfdd9bd1fad3f2b52c5a6906cb7dacd681c07', '[\"*\"]', '2023-12-06 01:27:25', NULL, '2023-12-06 00:57:38', '2023-12-06 01:27:25'),
(5, 'App\\Models\\User', 2, 'auth_token', '2a4baa559106ed0496cf87159313ce6a892ccd021e39f969e42b7fa39ce584ca', '[\"*\"]', '2023-12-06 01:25:35', NULL, '2023-12-06 01:25:05', '2023-12-06 01:25:35'),
(6, 'App\\Models\\User', 4, 'auth_token', 'b5a4e1cd6ef8a405aa08ccb4e004d2a9cd71983b8b2542d0ca19467f3c42002d', '[\"*\"]', '2023-12-06 02:03:47', NULL, '2023-12-06 02:03:22', '2023-12-06 02:03:47'),
(7, 'App\\Models\\User', 3, 'auth_token', '850d4c6f980aa1cadf26a5b79d1446f95100520da6eec1b9a2bb92e684385e32', '[\"*\"]', '2023-12-06 04:14:55', NULL, '2023-12-06 02:33:13', '2023-12-06 04:14:55'),
(8, 'App\\Models\\User', 5, 'auth_token', '3f60cd360aaa24b6ff1d2d626a6827a0d9f41cae69cdd400380773134b4a741e', '[\"*\"]', NULL, NULL, '2023-12-06 03:07:46', '2023-12-06 03:07:46'),
(9, 'App\\Models\\User', 3, 'auth_token', '3ff5559bfe297ceb640c3dae1094dc7f2207c79674e5653d490be372b6331cc7', '[\"*\"]', NULL, NULL, '2023-12-06 03:08:49', '2023-12-06 03:08:49'),
(10, 'App\\Models\\User', 6, 'auth_token', 'f5b08cde1914daf5e04e3bdca65c42a034885912cf3003e68a53bb15c562c525', '[\"*\"]', NULL, NULL, '2023-12-06 03:09:51', '2023-12-06 03:09:51'),
(11, 'App\\Models\\User', 7, 'auth_token', 'a8ed81e91d11d8108c8d045033986e3c677105d4dec22c0c3064811b5f3c0a6e', '[\"*\"]', NULL, NULL, '2023-12-06 03:11:46', '2023-12-06 03:11:46'),
(12, 'App\\Models\\User', 7, 'auth_token', 'b7a16c3fa7bf82e47c3c89a7e7e19749a8a46cb97b0b128211edaacad0d93f1d', '[\"*\"]', NULL, NULL, '2023-12-06 03:12:48', '2023-12-06 03:12:48'),
(13, 'App\\Models\\User', 8, 'auth_token', 'dc4ed4e49e9c1d8e349db49bde06039b7f825debffa43f8f4e943449810fec9d', '[\"*\"]', NULL, NULL, '2023-12-06 03:13:59', '2023-12-06 03:13:59'),
(14, 'App\\Models\\User', 3, 'auth_token', 'd5ce930d7e04e08f5181ac7b7cfb3c2e2c9209981be4a63122b5dd5b76ed7204', '[\"*\"]', NULL, NULL, '2023-12-06 03:52:53', '2023-12-06 03:52:53'),
(15, 'App\\Models\\User', 3, 'auth_token', 'c88b867123a174be2f39699fd2f647f779bcbb9742c18c54190b4a633b490c51', '[\"*\"]', '2023-12-06 04:25:06', NULL, '2023-12-06 04:21:03', '2023-12-06 04:25:06'),
(16, 'App\\Models\\User', 3, 'auth_token', 'af2d63caf44dd10ecdd25f035172852e66cbfa26e2d19b78c58e564817ec4a4f', '[\"*\"]', '2023-12-06 04:33:05', NULL, '2023-12-06 04:32:42', '2023-12-06 04:33:05'),
(17, 'App\\Models\\User', 9, 'auth_token', 'c4d50ce2119d00bb9bad7d0ba6421ebd21747e9d3a3b37845884d4996bc1fe5d', '[\"*\"]', NULL, NULL, '2023-12-06 04:46:43', '2023-12-06 04:46:43'),
(18, 'App\\Models\\User', 10, 'auth_token', '9069b9cead8b38fd916ee8907a0852df590a6639f865d3ee3f782af1b9bc5d2f', '[\"*\"]', NULL, NULL, '2023-12-06 04:48:17', '2023-12-06 04:48:17'),
(19, 'App\\Models\\User', 11, 'auth_token', 'f7d596c04b292630f1410c6d00ed47e62dcea4c8cc825d579649e7b589b17b78', '[\"*\"]', NULL, NULL, '2023-12-06 05:00:52', '2023-12-06 05:00:52'),
(20, 'App\\Models\\User', 12, 'auth_token', '1e0480b11473ab2e317d19c7dca253a7de66255432153c9a8e892771d19ceb57', '[\"*\"]', NULL, NULL, '2023-12-06 05:01:27', '2023-12-06 05:01:27'),
(21, 'App\\Models\\User', 12, 'auth_token', '2914cfd7bc27dc002b5e972feb24acc64d4be6fddf0f5a32c4e4756971f09f83', '[\"*\"]', NULL, NULL, '2023-12-06 05:02:40', '2023-12-06 05:02:40'),
(22, 'App\\Models\\User', 12, 'auth_token', '1bc31470f898f14205d45ea92ab4610c7a32c5f953ab47e438d0a893818220b2', '[\"*\"]', NULL, NULL, '2023-12-06 05:02:44', '2023-12-06 05:02:44'),
(23, 'App\\Models\\User', 12, 'auth_token', '718aa96fe92a35b25e784fa4f1397b64729281123d59e3463e0da7dac0e170cd', '[\"*\"]', NULL, NULL, '2023-12-06 05:02:54', '2023-12-06 05:02:54'),
(24, 'App\\Models\\User', 12, 'auth_token', '79e1e439c70090b06a7696fb7f7ed4c2ec70d307dcada8c95a417bad480559ff', '[\"*\"]', NULL, NULL, '2023-12-06 05:02:56', '2023-12-06 05:02:56'),
(25, 'App\\Models\\User', 12, 'auth_token', '57aae21d30a8e527c8bc7d0e8425bcdc14a345d87cdf4d9154dd9db09dcce6c3', '[\"*\"]', NULL, NULL, '2023-12-06 05:03:01', '2023-12-06 05:03:01'),
(26, 'App\\Models\\User', 4, 'auth_token', '5f2a1c4d0ab726fa0ee2dc955bdd6480d693a70f4908af471ed772a3ee80e8eb', '[\"*\"]', '2023-12-06 05:29:40', NULL, '2023-12-06 05:03:33', '2023-12-06 05:29:40'),
(27, 'App\\Models\\User', 12, 'auth_token', 'eb8954ca959edf9e56c60cba7e9ce1d378ac079395b334ae53d482c9af1c9062', '[\"*\"]', '2023-12-06 05:05:18', NULL, '2023-12-06 05:03:52', '2023-12-06 05:05:18'),
(28, 'App\\Models\\User', 13, 'auth_token', '97b485d6bf04814159df44c5f5c589b1091625df6ca039012c2ebc3e7cafacf5', '[\"*\"]', '2023-12-06 05:29:18', NULL, '2023-12-06 05:28:49', '2023-12-06 05:29:18'),
(29, 'App\\Models\\User', 9, 'auth_token', 'a8ae5c37127f5e432c417e3f14e0c5be5b05e0ea962d21c08a4e9dc8a02f8059', '[\"*\"]', NULL, NULL, '2023-12-06 05:31:54', '2023-12-06 05:31:54'),
(30, 'App\\Models\\User', 3, 'auth_token', '64e39a11ae347300084822a985c7724c54e17e2b1925faf83319aea484159d04', '[\"*\"]', '2023-12-06 05:45:27', NULL, '2023-12-06 05:34:59', '2023-12-06 05:45:27'),
(31, 'App\\Models\\User', 14, 'auth_token', 'd6e60c89de1be18b5697bea9e3f278b0efe6821e936e3d913ce54129d3baecfd', '[\"*\"]', NULL, NULL, '2023-12-06 06:22:20', '2023-12-06 06:22:20'),
(32, 'App\\Models\\User', 3, 'auth_token', '246d695976b1cede607004ae9ca421122202633dbaf44a75545c0c4dfe9bb16c', '[\"*\"]', NULL, NULL, '2023-12-06 06:24:40', '2023-12-06 06:24:40'),
(33, 'App\\Models\\User', 15, 'auth_token', '7d86c8adbb3b5510f5cb52e299f1270ac2feb48231d23037cf42ad86b0a932de', '[\"*\"]', NULL, NULL, '2023-12-06 06:33:42', '2023-12-06 06:33:42'),
(34, 'App\\Models\\User', 3, 'auth_token', 'c39532e1d8e70271d83a72fe6d394e556771f94998297a17d7f72651221f69cb', '[\"*\"]', NULL, NULL, '2023-12-06 06:40:22', '2023-12-06 06:40:22'),
(35, 'App\\Models\\User', 3, 'auth_token', '576eb7418103ca0fba498fc4556b81c04f5d635c774cf58adaeb00ef4586efd3', '[\"*\"]', '2023-12-06 06:47:02', NULL, '2023-12-06 06:44:15', '2023-12-06 06:47:02'),
(36, 'App\\Models\\User', 9, 'auth_token', '9e6bec7c0237514c06dbc380f460eda01e53940d4717eaf63aadea28f882cdbb', '[\"*\"]', NULL, NULL, '2023-12-06 06:50:33', '2023-12-06 06:50:33'),
(37, 'App\\Models\\User', 9, 'auth_token', '7be121e0e144810acf500edb68be2179775c0fd633dabbebd6813f713cf0788c', '[\"*\"]', NULL, NULL, '2023-12-06 06:50:57', '2023-12-06 06:50:57'),
(38, 'App\\Models\\User', 9, 'auth_token', '4109f06513efd4be41cc84e52ef5c414f8fa6ad672faef55c9026fbc8513a85d', '[\"*\"]', NULL, NULL, '2023-12-06 06:57:41', '2023-12-06 06:57:41'),
(39, 'App\\Models\\User', 9, 'auth_token', '6ef5f576a80a9de7bbb81923f3d7658a32879588897240815d620981e333a952', '[\"*\"]', NULL, NULL, '2023-12-06 06:58:15', '2023-12-06 06:58:15'),
(40, 'App\\Models\\User', 9, 'auth_token', 'c5fc6d311a85d4c96d2f504de6e2c7972f715f68041a7ea4510f2398fae30969', '[\"*\"]', NULL, NULL, '2023-12-06 06:59:21', '2023-12-06 06:59:21'),
(41, 'App\\Models\\User', 16, 'auth_token', 'dc990146e018f0a750a668973ae6e4f1b6315a87384918d056065581c14c1784', '[\"*\"]', NULL, NULL, '2023-12-06 07:00:22', '2023-12-06 07:00:22'),
(42, 'App\\Models\\User', 16, 'auth_token', 'f2ec3de6e5533514290b2f55cf23f02c5ab5359a8620cdddd169c8fe7f210734', '[\"*\"]', NULL, NULL, '2023-12-06 07:00:48', '2023-12-06 07:00:48'),
(43, 'App\\Models\\User', 16, 'auth_token', '2ea45a1b44e8dc583590e7e15a5fdc9309de1f8c8e5796e77f59b7071914b877', '[\"*\"]', NULL, NULL, '2023-12-06 07:01:30', '2023-12-06 07:01:30'),
(44, 'App\\Models\\User', 16, 'auth_token', '3c5afa533a5230ada548859804b986312289dae0e15fb00135197fc8352ccad2', '[\"*\"]', NULL, NULL, '2023-12-06 07:02:11', '2023-12-06 07:02:11'),
(45, 'App\\Models\\User', 14, 'auth_token', '29ecabe92e2bc17aef9c19ac99afa46917d07ad3ed5e58255e1a41332239d847', '[\"*\"]', NULL, NULL, '2023-12-06 07:02:24', '2023-12-06 07:02:24'),
(46, 'App\\Models\\User', 9, 'auth_token', '765cacbdbe4bbdcccc8cc0eea5edae29ea5d46ec11fad4ce00e7ff1329a11dbf', '[\"*\"]', NULL, NULL, '2023-12-06 07:14:23', '2023-12-06 07:14:23'),
(47, 'App\\Models\\User', 17, 'auth_token', '9e1c8d6707acc77b259fe67f4bd9a07af9b1f9b1d74a4396e52a1c1cd854476c', '[\"*\"]', NULL, NULL, '2023-12-06 07:18:18', '2023-12-06 07:18:18'),
(48, 'App\\Models\\User', 17, 'auth_token', '5d84df4acdb4247f2af75506c051972bd99a28014979a5cac2d94fc8c672277f', '[\"*\"]', NULL, NULL, '2023-12-06 07:18:42', '2023-12-06 07:18:42'),
(49, 'App\\Models\\User', 7, 'auth_token', '73581fe1f09e71994fe8da36f2c47ae7e472dddc9a4f023977f31c9613af4e78', '[\"*\"]', NULL, NULL, '2023-12-06 07:26:21', '2023-12-06 07:26:21'),
(50, 'App\\Models\\User', 18, 'auth_token', '466f53489e6f9cad3cb467db06908642a49f61dbb304f211fdb93341d0087e64', '[\"*\"]', NULL, NULL, '2023-12-06 07:37:41', '2023-12-06 07:37:41'),
(51, 'App\\Models\\User', 3, 'auth_token', 'dbc5d0913b3adbb6ba40ea2c75637417482ff5188065c217f926bf9d646b4a03', '[\"*\"]', '2023-12-06 08:21:47', NULL, '2023-12-06 07:59:41', '2023-12-06 08:21:47'),
(52, 'App\\Models\\User', 3, 'auth_token', '716892e8544a091ced9847e9c0cf804589199461fb171e12a3ee14c1ade4c3b2', '[\"*\"]', NULL, NULL, '2023-12-06 08:22:46', '2023-12-06 08:22:46'),
(53, 'App\\Models\\User', 3, 'auth_token', '0bffb0ae3dea5f6f8d4b5b437746df71acb9ec00d3c7b603cf5245eec3170bf4', '[\"*\"]', '2023-12-06 08:35:09', NULL, '2023-12-06 08:34:32', '2023-12-06 08:35:09'),
(54, 'App\\Models\\User', 3, 'auth_token', 'e3403b384aef1bf46973d7f4a2ae4ac66dc66ce21195b133f3604dc37704ae16', '[\"*\"]', '2023-12-06 08:40:22', NULL, '2023-12-06 08:37:52', '2023-12-06 08:40:22'),
(55, 'App\\Models\\User', 3, 'auth_token', 'bbdd268e0d90f1b295b0cd999691ce442e945fe4480c489965fbc9dbf790cb6c', '[\"*\"]', '2023-12-06 08:46:44', NULL, '2023-12-06 08:44:00', '2023-12-06 08:46:44'),
(56, 'App\\Models\\User', 9, 'auth_token', 'da4667cb9e1275e33d7b8a09078e6d100ddfc17f2053827ab54a90e8931005aa', '[\"*\"]', NULL, NULL, '2023-12-07 01:14:28', '2023-12-07 01:14:28'),
(57, 'App\\Models\\User', 19, 'auth_token', 'e71be053e1c7e5eb075b538704c4f6264059c9abda5e4f976e1d167881b64a30', '[\"*\"]', '2023-12-07 01:26:51', NULL, '2023-12-07 01:25:20', '2023-12-07 01:26:51'),
(58, 'App\\Models\\User', 3, 'auth_token', '6461eeab856416dd83ad7364615b6b2042e6533e64e4d14a64e23756bdbc4cb1', '[\"*\"]', '2023-12-07 01:33:55', NULL, '2023-12-07 01:27:43', '2023-12-07 01:33:55'),
(59, 'App\\Models\\User', 3, 'auth_token', 'e702d7fd15c1d1a14d6aa7821707294415be007b64f60fd00bc37f2530d7bc46', '[\"*\"]', '2023-12-07 01:44:06', NULL, '2023-12-07 01:42:39', '2023-12-07 01:44:06'),
(60, 'App\\Models\\User', 20, 'auth_token', '8a35da07cf02ab867cc643814cc5def91d8be862577b69faa702e180dc6b5118', '[\"*\"]', '2023-12-07 03:10:21', NULL, '2023-12-07 03:07:50', '2023-12-07 03:10:21'),
(61, 'App\\Models\\User', 2, 'auth_token', '3748146324227ebc0fe58cb0b333512c3214a374384515761905d7b07032d18d', '[\"*\"]', '2023-12-07 03:26:21', NULL, '2023-12-07 03:20:59', '2023-12-07 03:26:21'),
(89, 'App\\Models\\User', 2, 'auth_token', 'b3f435a3cd5f982d7fd4f7f28f962acfea77564c850ce5b5cfead85ea41eb893', '[\"*\"]', NULL, NULL, '2023-12-08 01:04:30', '2023-12-08 01:04:30'),
(90, 'App\\Models\\User', 2, 'auth_token', '4f4a262e6d0310450814bd8c2d84bfd09682decb5ff05aaf77a05d51ea240e07', '[\"*\"]', NULL, NULL, '2023-12-08 01:06:01', '2023-12-08 01:06:01'),
(93, 'App\\Models\\User', 21, 'MyApp', '6c2e6aa59fae9066fca71ecc47e9ba618ba0d857deb417558e7426ce617c63f8', '[\"*\"]', '2023-12-08 08:29:39', NULL, '2023-12-08 02:26:42', '2023-12-08 08:29:39');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `level` int(11) NOT NULL,
  `question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `option_one` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `option_two` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `option_three` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `option_four` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `correct_ans` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `correct_ans_str` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `fifty_fifty` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `created_at`, `updated_at`, `level`, `question`, `option_one`, `option_two`, `option_three`, `option_four`, `correct_ans`, `correct_ans_str`, `status`, `fifty_fifty`) VALUES
(1, '2023-12-05 08:30:00', '2023-12-05 08:30:00', 1, 'In which section customer can check his service history?', '{\"id\":1,\"name\":\"Track\",\"ca\":false,\"50-50\":true}', '{\"id\":2, \"name\":\"Insights\", \"ca\":false, \"50-50\":false}', '{\"id\":3, \"name\":\"Analyze\", \"ca\":true, \"50-50\":true}', '{\"id\":4, \"name\":\"Fleet Master\", \"ca\":false, \"50-50\":false}', '3', 'Analyze', 1, '0'),
(2, '2023-12-05 08:30:00', '2023-12-05 08:30:00', 1, 'What all service types are included in the service history?', '{\"id\":1,\"name\":\"Schedule Services\",\"ca\":false,\"50-50\":true}', '{\"id\":2, \"name\":\"Break Down\", \"ca\":false, \"50-50\":false}', '{\"id\":3, \"name\":\"Accidental\", \"ca\":false, \"50-50\":false}', '{\"id\":4, \"name\":\"All\", \"ca\":true, \"50-50\":true}', '4', 'All', 1, '0'),
(3, '2023-12-05 08:30:00', '2023-12-05 08:30:00', 1, 'Service history will not be available in which of the following case?', '{\"id\":1,\"name\":\"Emergency repair at TML workshop\",\"ca\":false,\"50-50\":true}', '{\"id\":2, \"name\":\"Repairs at a local workshop\", \"ca\":true, \"50-50\":true}', '{\"id\":3, \"name\":\"Out of warranty vehicle\", \"ca\":false, \"50-50\":false}', '{\"id\":4, \"name\":\"Retro fitment at TML workshop\", \"ca\":false, \"50-50\":false}', '2', 'Repairs at a local workshop', 1, '0'),
(4, '2023-12-05 08:30:00', '2023-12-05 08:30:00', 1, 'Which all details customer can see in the service history?', '{\"id\":1,\"name\":\"Service Date\",\"ca\":false,\"50-50\":true}', '{\"id\":2, \"name\":\"Invoice Cost\", \"ca\":false, \"50-50\":false}', '{\"id\":3, \"name\":\"Job card number\", \"ca\":false, \"50-50\":false}', '{\"id\":4, \"name\":\"All\", \"ca\":true, \"50-50\":true}', '4', 'All', 1, '0'),
(5, '2023-12-05 08:30:00', '2023-12-05 08:30:00', 1, 'The final driving score comprises of total how many sub-sections?', '{\"id\":1,\"name\":\"3\",\"ca\":true,\"50-50\":true}', '{\"id\":2, \"name\":\"4\", \"ca\":false, \"50-50\":false}', '{\"id\":3, \"name\":\"5\", \"ca\":false, \"50-50\":false}', '{\"id\":4, \"name\":\"6\", \"ca\":false, \"50-50\":true}', '1', '3', 1, '0'),
(6, '2023-12-05 08:30:00', '2023-12-05 08:30:00', 1, 'What is the score scale of Fleet Edge driving scorecard?', '{\"id\":1,\"name\":\"1-10\",\"ca\":false,\"50-50\":false}', '{\"id\":2, \"name\":\"1-5\", \"ca\":true, \"50-50\":true}', '{\"id\":3, \"name\":\"1-100\", \"ca\":false, \"50-50\":false}', '{\"id\":4, \"name\":\"1-3\", \"ca\":false, \"50-50\":true}', '2', '1-May', 1, '0'),
(7, '2023-12-05 08:30:00', '2023-12-05 08:30:00', 1, 'Overall how many parameters comes in scorecard?', '{\"id\":1,\"name\":\"15\",\"ca\":false,\"50-50\":false}', '{\"id\":2, \"name\":\"18\", \"ca\":false, \"50-50\":true}', '{\"id\":3, \"name\":\"25\", \"ca\":false, \"50-50\":false}', '{\"id\":4, \"name\":\"20\", \"ca\":true, \"50-50\":true}', '4', '20', 1, '0'),
(8, '2023-12-05 08:30:00', '2023-12-05 08:30:00', 1, 'The final score is mapped with which of the data point?', '{\"id\":1,\"name\":\"Speed\",\"ca\":false,\"50-50\":false}', '{\"id\":2, \"name\":\"Fuel consumption\", \"ca\":false, \"50-50\":true}', '{\"id\":3, \"name\":\"Odometer\", \"ca\":false, \"50-50\":false}', '{\"id\":4, \"name\":\"Distance Covered\", \"ca\":true, \"50-50\":true}', '4', 'Distance Covered', 1, '0'),
(9, '2023-12-05 08:30:00', '2023-12-05 08:30:00', 2, 'How many days past tracking data is available at Fleet Edge?', '{\"id\":1,\"name\":\"60\",\"ca\":false,\"50-50\":false}', '{\"id\":2, \"name\":\"90\", \"ca\":true, \"50-50\":true}', '{\"id\":3, \"name\":\"120\", \"ca\":false, \"50-50\":false}', '{\"id\":4, \"name\":\"1 Year\", \"ca\":false, \"50-50\":true}', '2', '90', 1, '0'),
(10, '2023-12-05 08:30:00', '2023-12-05 08:30:00', 2, 'How many vehicle status are there on the landing page at Fleet Edge?', '{\"id\":1,\"name\":\"4\",\"ca\":false,\"50-50\":false}', '{\"id\":2, \"name\":\"5\", \"ca\":false, \"50-50\":true}', '{\"id\":3, \"name\":\"6\", \"ca\":true, \"50-50\":true}', '{\"id\":4, \"name\":\"7\", \"ca\":false, \"50-50\":false}', '3', '6', 1, '0'),
(11, '2023-12-05 08:30:00', '2023-12-05 08:30:00', 2, 'How many filters are there for filtering the vehicle set?', '{\"id\":1,\"name\":\"2\",\"ca\":true,\"50-50\":true}', '{\"id\":2, \"name\":\"3\", \"ca\":false, \"50-50\":true}', '{\"id\":3, \"name\":\"4\", \"ca\":false, \"50-50\":false}', '{\"id\":4, \"name\":\"No filter available\", \"ca\":false, \"50-50\":false}', '1', '2', 1, '0'),
(12, '2023-12-05 08:30:00', '2023-12-05 08:30:00', 2, 'Where can customer check the live fuel level in litres?', '{\"id\":1,\"name\":\"Vehicle Card\",\"ca\":false,\"50-50\":false}', '{\"id\":2, \"name\":\"Tracking map\", \"ca\":false, \"50-50\":true}', '{\"id\":3, \"name\":\"DIC Page\", \"ca\":true, \"50-50\":true}', '{\"id\":4, \"name\":\"Landing page\", \"ca\":false, \"50-50\":false}', '3', 'DIC Page', 1, '0'),
(13, '2023-12-05 08:30:00', '2023-12-05 08:30:00', 2, 'In the share location option, what is maximum validity available for tracking?', '{\"id\":1,\"name\":\"10 days\",\"ca\":false,\"50-50\":false}', '{\"id\":2, \"name\":\"15 days\", \"ca\":false, \"50-50\":true}', '{\"id\":3, \"name\":\"1 month\", \"ca\":true, \"50-50\":true}', '{\"id\":4, \"name\":\"2 months\", \"ca\":false, \"50-50\":false}', '3', '1 month', 1, '0'),
(14, '2023-12-05 08:30:00', '2023-12-05 08:30:00', 2, 'How is the GPS quality denoted for a vehicle in the Fleet Edge live details?', '{\"id\":1,\"name\":\"GPS Quality\",\"ca\":false,\"50-50\":false}', '{\"id\":2, \"name\":\"GPS Signal\", \"ca\":false, \"50-50\":true}', '{\"id\":3, \"name\":\"Satellite Quality\", \"ca\":false, \"50-50\":false}', '{\"id\":4, \"name\":\"No. of Satellites\", \"ca\":true, \"50-50\":true}', '4', 'No. of Satellites', 1, '0'),
(15, '2023-12-05 08:30:00', '2023-12-05 08:30:00', 2, 'There is a POI feature available in DIC page, what is the full form of POI?', '{\"id\":1,\"name\":\"Point of Inspection\",\"ca\":false,\"50-50\":false}', '{\"id\":2, \"name\":\"Place of installation\", \"ca\":false, \"50-50\":false}', '{\"id\":3, \"name\":\"Point of interest\", \"ca\":true, \"50-50\":true}', '{\"id\":4, \"name\":\"Proof of Identity\", \"ca\":false, \"50-50\":true}', '3', 'Point of interest', 1, '0'),
(16, '2023-12-05 08:30:00', '2023-12-05 08:30:00', 2, 'What are the types of Geofence available at Fleet Edge?', '{\"id\":1,\"name\":\"2\",\"ca\":true,\"50-50\":true}', '{\"id\":2, \"name\":\"3\", \"ca\":false, \"50-50\":false}', '{\"id\":3, \"name\":\"4\", \"ca\":false, \"50-50\":true}', '{\"id\":4, \"name\":\"5\", \"ca\":false, \"50-50\":false}', '1', '2', 1, '0'),
(17, '2023-12-05 08:30:00', '2023-12-05 08:30:00', 2, 'Fleet Edge allow minimum how much radius to create a Geofence?', '{\"id\":1,\"name\":\"10 Meters\",\"ca\":true,\"50-50\":true}', '{\"id\":2, \"name\":\"20 Meters\", \"ca\":false, \"50-50\":false}', '{\"id\":3, \"name\":\"50 meters\", \"ca\":false, \"50-50\":true}', '{\"id\":4, \"name\":\"90 meters\", \"ca\":false, \"50-50\":false}', '1', '10 Meters', 1, '0'),
(18, '2023-12-05 08:30:00', '2023-12-05 08:30:00', 2, 'Where is the Geofence report available in Fleet Edge?', '{\"id\":1,\"name\":\"Fleet edge landing page\",\"ca\":false,\"50-50\":false}', '{\"id\":2, \"name\":\"Tracking page\", \"ca\":false, \"50-50\":false}', '{\"id\":3, \"name\":\"Insights section\", \"ca\":false, \"50-50\":true}', '{\"id\":4, \"name\":\"Analyse section\", \"ca\":true, \"50-50\":true}', '4', 'Analyse section', 1, '0'),
(19, '2023-12-05 08:30:00', '2023-12-05 08:30:00', 2, 'If customer has Geofenced his delivery location, what all information he will have in Fleet Edge?', '{\"id\":1,\"name\":\"Total Duration spent in Geofence\",\"ca\":false,\"50-50\":false}', '{\"id\":2, \"name\":\"In-Out time\", \"ca\":false, \"50-50\":false}', '{\"id\":3, \"name\":\"Live vehicle status in Geofence\", \"ca\":false, \"50-50\":true}', '{\"id\":4, \"name\":\"All\", \"ca\":true, \"50-50\":true}', '4', 'All', 1, '0'),
(20, '2023-12-05 08:30:00', '2023-12-05 08:30:00', 2, 'In which colour vehicles are highlighted that are in the marked Geofence?', '{\"id\":1,\"name\":\"Red\",\"ca\":false,\"50-50\":false}', '{\"id\":2, \"name\":\"Green\", \"ca\":false, \"50-50\":false}', '{\"id\":3, \"name\":\"Yellow\", \"ca\":false, \"50-50\":true}', '{\"id\":4, \"name\":\"Blue\", \"ca\":true, \"50-50\":true}', '4', 'Blue', 1, '0'),
(21, '2023-12-05 08:30:00', '2023-12-05 08:30:00', 3, 'The top & bottom performing vehicles are categorized as per how many parameters?', '{\"id\":1,\"name\":\"10\",\"ca\":false,\"50-50\":false}', '{\"id\":2, \"name\":\"18\", \"ca\":false, \"50-50\":false}', '{\"id\":3, \"name\":\"12\", \"ca\":true, \"50-50\":true}', '{\"id\":4, \"name\":\"15\", \"ca\":false, \"50-50\":true}', '3', '12', 1, '0'),
(22, '2023-12-05 08:30:00', '2023-12-05 08:30:00', 3, 'Director\'s report is most useful for whom?', '{\"id\":1,\"name\":\"Drivers\",\"ca\":false,\"50-50\":false}', '{\"id\":2, \"name\":\"Fleet Operator\", \"ca\":false, \"50-50\":false}', '{\"id\":3, \"name\":\"Fleet Owners\", \"ca\":true, \"50-50\":true}', '{\"id\":4, \"name\":\"Not sure\", \"ca\":false, \"50-50\":true}', '3', 'Fleet Owners', 1, '0'),
(23, '2023-12-05 08:30:00', '2023-12-05 08:30:00', 3, 'Fleet owner wants to appraise his best drivers, but don\'t have time to look at each vehicle\'s or driver performance individually, what should he do to this activity?', '{\"id\":1,\"name\":\"Ask his Fleet Managers one-by-one\",\"ca\":false,\"50-50\":false}', '{\"id\":2, \"name\":\"Have a meeting with all the drivers\", \"ca\":false, \"50-50\":false}', '{\"id\":3, \"name\":\"Check each vehicle report in the Fleet Edge Portal\", \"ca\":false, \"50-50\":true}', '{\"id\":4, \"name\":\"Check the Director\'s report for single-shot clarity\", \"ca\":true, \"50-50\":true}', '4', 'Check the Directors report for single-shot clarity', 1, '0'),
(24, '2023-12-05 08:30:00', '2023-12-05 08:30:00', 3, 'Director\'s report is available in which of the Fleet Edge plans?', '{\"id\":1,\"name\":\"Standard\",\"ca\":false,\"50-50\":false}', '{\"id\":2, \"name\":\"Advance\", \"ca\":true, \"50-50\":true}', '{\"id\":3, \"name\":\"Both\", \"ca\":false, \"50-50\":true}', '{\"id\":4, \"name\":\"Not Sure\", \"ca\":false, \"50-50\":false}', '2', 'Advance', 1, '0'),
(25, '2023-12-05 08:30:00', '2023-12-05 08:30:00', 3, 'Fleet Owner wants to have a look at complete fleet report on every 1st of the month,what he should do as the simplest step?', '{\"id\":1,\"name\":\"Ask his managers to tell him about the detailed report of each vehicle\",\"ca\":false,\"50-50\":false}', '{\"id\":2, \"name\":\"Go to Fleet Edge on every 1st of month and check himself\", \"ca\":false, \"50-50\":true}', '{\"id\":3, \"name\":\"Schedule Director\'s report on Fleet Edge that will be triggered on every 1st of month to his mail directly\", \"ca\":true, \"50-50\":true}', '{\"id\":4, \"name\":\"Check all the logs and service paper of the previous month\", \"ca\":false, \"50-50\":false}', '3', 'Schedule Directors report on Fleet Edge that will be triggered on every 1st of month to his mail directly', 1, '0'),
(26, '2023-12-05 08:30:00', '2023-12-05 08:30:00', 3, 'How many status vehicle health is divided into?', '{\"id\":1,\"name\":\"2\",\"ca\":false,\"50-50\":false}', '{\"id\":2, \"name\":\"3\", \"ca\":true, \"50-50\":true}', '{\"id\":3, \"name\":\"4\", \"ca\":false, \"50-50\":true}', '{\"id\":4, \"name\":\"5\", \"ca\":false, \"50-50\":false}', '2', '3', 1, '0'),
(27, '2023-12-05 08:30:00', '2023-12-05 08:30:00', 3, 'Which is the most important category that fleet owners / fleet managers should pay special attention to?', '{\"id\":1,\"name\":\"Critical\",\"ca\":true,\"50-50\":true}', '{\"id\":2, \"name\":\"Warning\", \"ca\":false, \"50-50\":true}', '{\"id\":3, \"name\":\"Good\", \"ca\":false, \"50-50\":false}', '{\"id\":4, \"name\":\"All are important\", \"ca\":false, \"50-50\":false}', '1', 'Critical', 1, '0'),
(28, '2023-12-05 08:30:00', '2023-12-05 08:30:00', 3, 'Vehicle health report is available in which of the Fleet Edge plans?', '{\"id\":1,\"name\":\"Standard\",\"ca\":false,\"50-50\":true}', '{\"id\":2, \"name\":\"Advance\", \"ca\":true, \"50-50\":true}', '{\"id\":3, \"name\":\"Both\", \"ca\":false, \"50-50\":false}', '{\"id\":4, \"name\":\"Not Sure\", \"ca\":false, \"50-50\":false}', '2', 'Advance', 1, '0'),
(29, '2023-12-05 08:30:00', '2023-12-05 08:30:00', 3, 'What is the first step that customer is suggested If any vehicle triggers in \"warning health\" category?', '{\"id\":1,\"name\":\"Immediately visit to TML workshop\",\"ca\":false,\"50-50\":false}', '{\"id\":2, \"name\":\"Get the vehicle checked with any local workshop\", \"ca\":false, \"50-50\":true}', '{\"id\":3, \"name\":\"Continue the trip, but should visit the nearest TML workshop in next 8-10 hours, if warning still persists.\", \"ca\":true, \"50-50\":true}', '{\"id\":4, \"name\":\"Driver to fix the problem himself\", \"ca\":false, \"50-50\":false}', '3', 'Continue the trip, but should visit the nearest TML workshop in next 8-10 hours, if warning still persists.', 1, '0'),
(30, '2023-12-05 08:30:00', '2023-12-05 08:30:00', 3, 'Fleet owner got a new consignment to be shipped for a long route, and so he wants to pick his best truck from the fleet that can go smoothly all the way, what we can do to pick?', '{\"id\":1,\"name\":\"Ask his fleet managers to pick the best condition truck\",\"ca\":false,\"50-50\":false}', '{\"id\":2, \"name\":\"Pick any truck and first get it fully repaired\", \"ca\":false, \"50-50\":true}', '{\"id\":3, \"name\":\"Visit any workshop for detailed report\", \"ca\":false, \"50-50\":false}', '{\"id\":4, \"name\":\"Check the Fleet Edge vehicle health section, and pick from the vehicle in Good Category.\", \"ca\":true, \"50-50\":true}', '4', 'Check the Fleet Edge vehicle health section, and pick from the vehicle in Good Category.', 1, '0');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(45) NOT NULL,
  `fifty_fifty` int(11) NOT NULL DEFAULT 0,
  `fifty_fifty_q_id` int(11) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile`, `fifty_fifty`, `fifty_fifty_q_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Subhabrata Paul', NULL, '9123096629', 1, 2, NULL, NULL, NULL, NULL, NULL),
(2, 'Subhabrata Paul', NULL, '9123096620', 1, 2, NULL, NULL, NULL, NULL, NULL),
(3, 'adfr', NULL, '1234567890', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'asisn', NULL, '8240454407', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '5', NULL, '4556565858', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '2', NULL, '1254897890', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 't', NULL, '7894561230', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'u', NULL, '9599659865', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'viku', NULL, '9065546703', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'joy', NULL, '7894564789', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'viku', NULL, '9065546075', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'viu', NULL, '7301602719', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'viki', NULL, '3985632548', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Arjun', NULL, '9876543210', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'viku', NULL, '3026589562', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'ciku', NULL, '9026552563', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'cio', NULL, '9632587412', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'viku', NULL, '9063555463', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'gggggg', NULL, '1111111111', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'hdfhdf', NULL, '9999999999', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'Admin', NULL, '9865741230', 1, 2, NULL, '25d55ad283aa400af464c76d713c07ad', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_save`
--
ALTER TABLE `data_save`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `data_save`
--
ALTER TABLE `data_save`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flights`
--
ALTER TABLE `flights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
