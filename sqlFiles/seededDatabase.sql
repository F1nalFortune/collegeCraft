-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2018 at 05:24 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";
DROP DATABASE IF EXISTS collegeCraft;
CREATE DATABASE IF NOT EXISTS collegeCraft;
USE collegeCraft;
DROP TABLE IF EXISTS advertises, buys, product, review, sells, trade_ad, trade_request, users;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `collegecraft`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertises`
--

CREATE TABLE `advertises` (
  `product_id` int(11) NOT NULL,
  `trade_ad_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `advertises`
--

INSERT INTO `advertises` (`product_id`, `trade_ad_id`) VALUES
(1, 2),
(2, 3),
(3, 4),
(4, 5),
(5, 6),
(6, 7),
(7, 8),
(8, 9),
(9, 10),
(10, 11),
(11, 12),
(12, 13),
(13, 14),
(14, 15),
(15, 16),
(16, 17),
(17, 18),
(18, 19),
(19, 20),
(20, 21),
(21, 22),
(22, 23),
(23, 24),
(24, 25),
(25, 26),
(26, 27),
(27, 28),
(28, 29),
(29, 30),
(30, 31),
(31, 32),
(32, 33),
(33, 34),
(34, 35),
(35, 36),
(36, 37),
(37, 38),
(38, 39),
(39, 40),
(40, 41),
(41, 42),
(42, 43),
(43, 44),
(44, 45),
(45, 46),
(46, 47),
(47, 48),
(48, 49),
(49, 50),
(50, 51),
(51, 52),
(52, 53),
(53, 54),
(54, 55),
(55, 56),
(56, 57),
(57, 58),
(58, 59),
(59, 60),
(60, 61),
(61, 62),
(62, 63),
(63, 64),
(64, 65),
(65, 66),
(66, 67),
(67, 68),
(68, 69),
(69, 70),
(70, 71),
(71, 72),
(72, 73),
(73, 74),
(74, 75),
(75, 76),
(76, 77),
(77, 78),
(78, 79),
(79, 80),
(80, 81),
(81, 82),
(82, 83),
(83, 84),
(84, 85),
(85, 86),
(86, 87),
(87, 88),
(88, 89),
(89, 90),
(90, 91),
(91, 92),
(92, 93),
(93, 94),
(94, 95),
(95, 96),
(96, 97),
(97, 98),
(98, 99),
(99, 100),
(102, 102),
(103, 103),
(104, 104),
(105, 105);

-- --------------------------------------------------------

--
-- Table structure for table `buys`
--

CREATE TABLE `buys` (
  `user_id` varchar(64) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buys`
--

INSERT INTO `buys` (`user_id`, `product_id`) VALUES
('1', 1),
('2', 2),
('3', 3),
('4', 4),
('5', 5),
('6', 6),
('7', 7),
('8', 8),
('9', 9),
('10', 10),
('11', 11),
('12', 12),
('13', 13),
('14', 14),
('15', 15),
('16', 16),
('17', 17),
('18', 18),
('19', 19),
('20', 20),
('21', 21),
('22', 22),
('23', 23),
('24', 24),
('25', 25),
('26', 26),
('27', 27),
('28', 28),
('29', 29),
('30', 30),
('31', 31),
('32', 32),
('33', 33),
('34', 34),
('35', 35),
('36', 36),
('37', 37),
('38', 38),
('39', 39),
('40', 40),
('41', 41),
('42', 42),
('43', 43),
('44', 44),
('45', 45),
('46', 46),
('47', 47),
('48', 48),
('49', 49),
('50', 50),
('51', 51),
('52', 52),
('53', 53),
('54', 54),
('55', 55),
('56', 56),
('57', 57),
('58', 58),
('59', 59),
('60', 60),
('61', 61),
('62', 62),
('63', 63),
('64', 64),
('65', 65),
('66', 66),
('67', 67),
('68', 68),
('69', 69),
('70', 70),
('71', 71),
('72', 72),
('73', 73),
('74', 74),
('75', 75),
('76', 76),
('77', 77),
('78', 78),
('79', 79),
('80', 80),
('81', 81),
('82', 82),
('83', 83),
('84', 84),
('85', 85),
('86', 86),
('87', 87),
('88', 88),
('89', 89),
('90', 90),
('91', 91),
('92', 92),
('93', 93),
('94', 94),
('95', 95),
('96', 96),
('97', 97),
('98', 98),
('99', 99),
('100', 100),
('103', 103),
('103', 104),
('103', 105);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `category` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `name`, `description`, `category`) VALUES
(1, ' book', 'Quia iste aut saepe est voluptas ut quibusdam. Non cum eveniet quia ut. Error ut consequuntur omnis. Voluptas ea dolor maiores recusandae assumenda in ut mollitia.', 'books'),
(2, ' camera', 'Quia omnis non iusto magni. Similique voluptatem qui accusamus impedit perspiciatis. Itaque quibusdam autem rerum natus delectus ipsum qui.', 'electronics'),
(3, ' stapler', 'Neque ullam nam odit ut nesciunt vero. Non harum et ea voluptas excepturi illum. Impedit pariatur possimus omnis quia occaecati corrupti itaque. Vero id a rem autem at.', 'books'),
(4, ' notebook', 'Voluptas et consequatur fugit atque ratione vel voluptate. Assumenda quia est perferendis quis. Quis ratione quia nulla ea. Delectus enim enim repellendus modi quia vel dolorem.', 'books'),
(5, ' monitor', 'Aut sit illo cupiditate et. Omnis autem blanditiis officiis rerum praesentium. Inventore officiis et nostrum. Sint quos molestiae minima totam reiciendis et et.', 'dorm'),
(6, ' phone', 'Aliquam qui aspernatur numquam enim maxime sed corporis praesentium. Sed quam beatae sunt similique voluptas deleniti. Rerum ipsum omnis libero consectetur vitae omnis quaerat.', 'dorm'),
(7, ' ruler', 'Voluptatum voluptates non quo inventore nemo sit iure. Veniam sapiente libero eos similique. Nam est excepturi in ut alias. Repellat fuga sed porro aperiam.', 'books'),
(8, ' shoes', 'Fugit et inventore commodi ut omnis accusantium. Ipsum nam perspiciatis reiciendis quidem et.', 'books'),
(9, ' mini-fridge', 'Quia modi laudantium perspiciatis enim. Ipsam velit non quis. Quia et est accusantium suscipit aspernatur.', 'school'),
(10, ' hat', 'Commodi nesciunt et possimus ab delectus nostrum. Nulla nemo deleniti occaecati optio blanditiis veritatis sunt. Ratione est quisquam molestiae rerum ut adipisci exercitationem aliquid. Atque illo nam quis aut.', 'electronics'),
(11, 'pencil', 'Aliquid dolorum autem accusamus expedita aliquid qui recusandae. Illo et similique consequuntur quo quidem sed et. Quos voluptates ea et vel et excepturi. Consequatur debitis nemo cumque.', 'dorm'),
(12, ' monitor', 'Et labore in tenetur possimus. Voluptas eos ex similique omnis. Quia suscipit non fuga praesentium vero incidunt nisi id.', 'books'),
(13, ' air-conditioner', 'Sit voluptas voluptate nostrum quod id culpa. Recusandae quas id ut sint. Eveniet eligendi rerum est corrupti. Doloremque architecto ipsa veniam possimus ipsum sit culpa id.', 'books'),
(14, ' shirt', 'Sint animi provident voluptate et vero. Harum vel atque iste illum. Perspiciatis rem aut doloribus ut et voluptas fuga.', 'electronics'),
(15, ' phone', 'Eius necessitatibus molestiae cumque cumque id nesciunt at. Enim numquam quas qui sunt sunt aut. Nisi deleniti maxime sequi in illo. Voluptatem sunt tempora accusantium voluptate soluta.', 'school'),
(16, ' phone', 'Iste dolorum praesentium sequi laudantium eos illo dignissimos perspiciatis. Et enim rem non alias fuga. Odio occaecati eos non id. Dolore perspiciatis a quo voluptatum qui corporis doloremque qui.', 'school'),
(17, ' hoody', 'Ea iste saepe esse quaerat atque nulla ipsum. Quam alias repellendus deserunt quis cupiditate. Sunt voluptatem tenetur facilis quis quia qui.', 'school'),
(18, ' shoes', 'Est corrupti praesentium nihil ea explicabo. Eos esse et quidem mollitia. Incidunt et deleniti dolor et.', 'books'),
(19, ' pants', 'Eos facilis quasi sunt hic nulla sunt iste. Et minus molestias est explicabo voluptas. Aspernatur eius minima fugiat ullam dignissimos. Commodi voluptas sit rem sed magnam.', 'electronics'),
(20, ' phone', 'Consequuntur debitis aut sed neque rerum. Rerum quae voluptatem ut sit iusto voluptatibus dolorum. Aliquam animi ut esse voluptatum. Animi sunt consequatur dicta ut quas.', 'electronics'),
(21, ' stick-notes', 'Sint cum laboriosam adipisci. Perferendis voluptas sit non ad laboriosam. Id nulla necessitatibus porro reiciendis est. Eveniet asperiores autem voluptatem nesciunt aut deserunt.', 'school'),
(22, ' hat', 'Molestiae et quibusdam incidunt ratione dolorem quibusdam. Sunt cupiditate aut eaque saepe modi. Veritatis porro et nihil velit.', 'school'),
(23, ' shirt', 'Eius quod voluptatem expedita sint impedit soluta error. Sunt repellat doloribus porro inventore libero esse.', 'school'),
(24, ' keyboard', 'Facilis aut quidem numquam ad minima voluptatum vel. Eos perferendis sunt numquam deleniti. Et totam voluptatem ex culpa.', 'dorm'),
(25, ' poster', 'Impedit inventore labore est non et dolor. Delectus consequatur corporis ex corporis. Similique quia veniam corporis hic a ut voluptates.', 'dorm'),
(26, ' notebook', 'Natus sit explicabo ratione illum et. Repellat qui sed similique voluptates cumque. Nemo quia cumque rerum.', 'electronics'),
(27, ' poster', 'In omnis atque quasi voluptas. Repellendus minus veritatis quis maiores molestiae voluptas ratione. Et consequuntur perspiciatis vel culpa et mollitia voluptas eligendi.', 'school'),
(28, ' shirt', 'Voluptas rerum nihil nemo vero aut. Sit dicta possimus vel fugit ea. Dignissimos et ab a fugit. Veritatis eligendi impedit saepe sed. Quo sunt et quae repellendus repellat quidem dolorum.', 'dorm'),
(29, ' camera', 'Optio libero temporibus possimus asperiores. Sunt voluptas aspernatur et id. Numquam temporibus id vero fuga aut vero. Rerum quis inventore ex asperiores quos.', 'books'),
(30, ' camera', 'Aperiam distinctio alias labore praesentium libero. Omnis voluptatem mollitia dolore.', 'dorm'),
(31, ' monitor', 'Cupiditate voluptatem sed quisquam. Ducimus veritatis aut et et. Est nisi cupiditate et necessitatibus occaecati. Nam unde natus reprehenderit nobis.', 'dorm'),
(32, ' shirt', 'Qui error soluta veniam occaecati in illum. Doloremque est ad debitis magni. Consequatur nostrum aliquid illo nostrum quae sed.', 'books'),
(33, ' shirt', 'Quas hic placeat qui fugit doloribus facilis sint. Quasi dolorum eos amet quos. Non magnam placeat magni sapiente facere. Suscipit aperiam tenetur explicabo ea.', 'school'),
(34, ' air-conditioner', 'Nemo inventore inventore asperiores iste fugit odio inventore hic. Et et corrupti distinctio adipisci. Saepe autem quaerat autem cupiditate et et maiores. Ullam doloremque dicta aut est quod omnis maiores.', 'dorm'),
(35, ' stick-notes', 'Debitis quibusdam ipsa ut qui enim architecto voluptatem. Et aut asperiores illum impedit.', 'electronics'),
(36, ' ruler', 'Vitae incidunt dolores placeat dolor asperiores. Qui ut consequuntur qui enim ut. Et voluptate fugit repellat officiis est quam incidunt.', 'books'),
(37, 'pencil', 'Corrupti quasi sequi debitis sed. Et natus dolorem velit nihil id quis.', 'electronics'),
(38, ' shoes', 'Ducimus dolores id perferendis tenetur voluptas officia similique. Consequatur adipisci et animi fugiat. Alias iusto sequi et explicabo provident. Modi voluptatum nemo voluptas commodi.', 'school'),
(39, ' shoes', 'Nulla maiores sit unde rerum similique consectetur. A occaecati nam cupiditate beatae consectetur. Doloremque deserunt voluptatibus ullam nesciunt quia nisi. Voluptas aspernatur vel mollitia ipsam accusamus porro expedita.', 'school'),
(40, ' hoody', 'Molestiae reiciendis soluta illum repellendus et. Eum et omnis deserunt ut pariatur. Aspernatur eos consectetur id quos quis assumenda.', 'dorm'),
(41, ' book', 'Sed eveniet minus est inventore ipsam voluptatem cumque. Qui tenetur rem sit mollitia velit sapiente soluta molestiae. Amet sunt dolores et nulla quam amet nihil sit.', 'books'),
(42, ' stapler', 'Iure rem voluptas cum. Et tempora quod laudantium nisi blanditiis corporis et. Quo consequatur error eligendi nihil ut.', 'books'),
(43, ' notebook', 'Quia necessitatibus illo rem sint magnam. Excepturi veritatis ut quas iusto quae. Ea doloremque qui quidem porro earum rerum dolores. Saepe eos ut dolorem maxime assumenda aspernatur accusamus.', 'school'),
(44, ' stapler', 'Voluptas deleniti dolorem quia velit tempore. Eligendi quia consectetur voluptatum porro. Cum numquam culpa rerum omnis dolor natus aut.', 'school'),
(45, ' hat', 'Qui fuga in voluptates alias quod optio deserunt. Alias vel incidunt quibusdam doloremque aut. Veritatis impedit praesentium laboriosam sed quam vel repellat.', 'books'),
(46, ' notebook', 'Cupiditate eaque ut eos. Sit dolorem rerum a quae culpa maiores animi. Qui molestias aut magnam est adipisci fugiat. Nemo vero culpa illo numquam.', 'dorm'),
(47, ' keyboard', 'Optio et qui iure occaecati quia. Excepturi molestias laudantium et itaque voluptatibus esse minima. Voluptatum voluptatem voluptates ad aut quidem ipsa.', 'school'),
(48, ' stick-notes', 'Quia aspernatur quia reiciendis molestiae illo repellendus itaque. Est vel ad accusantium facilis magni sint adipisci praesentium. Asperiores ipsa minus facilis. Error omnis nisi sunt magnam atque.', 'school'),
(49, ' mouse', 'Molestiae nihil aliquid aliquam temporibus. Non molestiae quis et molestiae. Adipisci cum suscipit non omnis quam eligendi. Autem in tempore vero.', 'books'),
(50, ' mouse', 'Eveniet corporis soluta soluta similique nisi tempora aut ea. At optio magni voluptas sunt ipsam velit. Aspernatur deserunt sequi sequi ullam in ut neque sunt. Molestiae eos beatae et dolorum delectus odit eaque. Et earum eum officia quae.', 'dorm'),
(51, ' air-conditioner', 'Enim similique maxime occaecati eius. Doloremque consectetur ut tempore quas iusto veniam. Eveniet facilis sequi hic maiores facilis aut.', 'electronics'),
(52, ' shirt', 'Dolor consequatur facere velit id quo. Et natus rem similique et maiores quia distinctio. Sequi illo sequi omnis nisi. Laudantium et dolores cumque perferendis et est.', 'dorm'),
(53, ' book', 'Et ducimus qui quaerat laborum. Ullam ad eaque sed laudantium dolor error modi. Id at est accusantium. Possimus consequatur iste dolores iste.', 'books'),
(54, ' mouse', 'Autem quasi qui sint laudantium. Velit ipsum repudiandae tenetur eius aperiam quam animi libero. Incidunt fugit voluptatibus soluta voluptatem similique. Nemo similique ex nesciunt pariatur eveniet. Earum dolorem natus non.', 'dorm'),
(55, ' flashlight', 'Libero quia voluptatem suscipit ducimus harum autem excepturi. Dolores non architecto aut sunt quibusdam vel perspiciatis deserunt. Et et accusamus ex aut voluptatem rerum corporis dolor.', 'dorm'),
(56, ' stick-notes', 'Deleniti nam sed dolor eos nulla. Esse sequi adipisci ea quasi sapiente ut. Dolor sint doloribus dolore sit.', 'dorm'),
(57, ' hoody', 'Asperiores cumque sed sit laboriosam molestias. Soluta vel sed quis. Ut sapiente accusantium ratione quia error.', 'school'),
(58, ' stapler', 'Tenetur sint iusto minus voluptatem. Odit voluptas facilis labore facere quia ut. Animi ipsam ea consequatur illo fuga est nihil a.', 'electronics'),
(59, ' mini-fridge', 'Rerum omnis accusamus saepe et aut rerum. Vel et doloremque tempora sed est. At eveniet ad doloribus sit dolores voluptatem. Blanditiis esse neque modi ratione asperiores reiciendis. Laudantium consectetur accusantium cumque est voluptatem possimus omnis.', 'dorm'),
(60, ' stapler', 'Dolore nihil corporis in nisi enim. Amet possimus omnis similique debitis et aut repudiandae. Perferendis laboriosam in minima et vel sunt qui totam.', 'books'),
(61, ' flashlight', 'Natus consequuntur voluptatum voluptates natus. Dolorem ratione illum fugiat et placeat. Saepe vitae dolorem neque. Dolore ab fugiat dicta necessitatibus aliquam ut.', 'school'),
(62, ' camera', 'Officia possimus incidunt eos vitae et. Eos nisi enim libero quas. Libero necessitatibus illum est hic vitae quidem sint aut.', 'books'),
(63, ' stick-notes', 'Nesciunt aut amet alias ex. Temporibus et fugiat hic alias. Voluptas fugiat odit totam voluptates fugit sed. Optio id consequatur labore ad quisquam et aperiam.', 'electronics'),
(64, ' hoody', 'Earum ratione ullam odio dolorum sunt et illum. Et aut exercitationem blanditiis voluptatem. Quidem doloribus consequatur et commodi.', 'dorm'),
(65, ' pants', 'Illum autem modi quia. Id quasi rerum laborum alias dicta sint neque sed. Tempora et magnam voluptatem similique est.', 'books'),
(66, ' mouse', 'Accusamus quaerat voluptatibus aut maxime unde. Ab incidunt et ipsa. Enim consequatur dolorum amet nemo quis unde.', 'electronics'),
(67, 'pencil', 'Voluptatum qui doloremque maiores ut nihil. Ratione est aut molestiae delectus deleniti. Nulla ea nobis fuga voluptas aliquid ut aperiam officiis. Sit ducimus blanditiis dolores non quasi earum aspernatur.', 'dorm'),
(68, ' pants', 'Est cupiditate vero aut maxime ut sed. Pariatur et vero impedit ad ut atque laboriosam unde. Sit et facilis voluptas consequatur eos. Sit est quis est qui.', 'school'),
(69, ' shoes', 'A temporibus soluta id eveniet. Explicabo laboriosam cum quaerat. Culpa cumque doloremque asperiores vel ullam voluptas omnis. Sit assumenda odio qui dolorum nisi provident et.', 'dorm'),
(70, ' mouse', 'Quisquam quia nemo eos voluptate iste et ipsum. Quis quia dolores sit aut eum animi. Nemo pariatur praesentium architecto voluptas voluptatem. Quia itaque ut eos reprehenderit dolor quia voluptates. Facilis magnam debitis aut nisi illum nesciunt.', 'school'),
(71, ' ruler', 'Suscipit ea quia libero. Sit ullam ut expedita et quis iusto rerum. Illo praesentium laudantium velit tenetur voluptatem deserunt veritatis. Dolorum debitis ducimus alias qui nihil ducimus facilis. Quia tempore earum et consectetur.', 'electronics'),
(72, ' stick-notes', 'Molestiae nisi quo quisquam aut. Et dolorem dolores repellendus eum rerum. Corrupti porro quod repudiandae eos soluta necessitatibus voluptatem.', 'dorm'),
(73, ' camera', 'Et qui neque odit facere omnis provident reprehenderit provident. Nihil nisi assumenda libero consequatur animi. Placeat labore praesentium ad. Mollitia blanditiis omnis eum libero illum aut.', 'dorm'),
(74, ' hoody', 'Cumque saepe sit minus. Eos quis error quae iste. Accusantium odio voluptatem modi et. Magni dolore sed voluptates.', 'books'),
(75, ' hoody', 'Amet fugit rerum temporibus voluptas quia minus sit. Temporibus corporis est id est. Harum qui voluptatem velit. Quibusdam aperiam culpa voluptatem natus distinctio nam.', 'electronics'),
(76, 'pencil', 'Magni ipsum aut beatae quam. Quibusdam nihil culpa dolorem et molestiae et est. Est asperiores labore quibusdam quisquam omnis. Unde quaerat adipisci aut sed cupiditate accusantium rerum.', 'electronics'),
(77, ' keyboard', 'Ea et est et et. Vel architecto ea sunt occaecati ut amet et sit. Consectetur atque cumque est id distinctio.', 'dorm'),
(78, ' shirt', 'Animi et rerum animi pariatur velit porro. Et amet et in magnam laudantium. Voluptates voluptate et odio a quo accusamus quaerat. Et qui ad omnis est. Ab laudantium similique quia.', 'dorm'),
(79, ' hoody', 'Sunt ipsum et tempore corrupti voluptatibus repellat amet. Autem ea quia qui ipsa neque. Sed commodi sequi velit voluptates nostrum recusandae doloremque cumque.', 'books'),
(80, ' book', 'Eaque qui officia a optio. Ut libero et odio blanditiis magnam et vero. Porro facilis ut maxime quis aut.', 'electronics'),
(81, ' book', 'Eum dolores eos quia voluptas. Suscipit optio voluptatum accusantium incidunt rerum. Asperiores distinctio maiores eligendi eos consequatur pariatur magnam sequi.', 'school'),
(82, ' shoes', 'Vel eos atque et nam libero facere et in. Rerum et ut aut quasi est. Perferendis earum quo enim minima animi. Maiores mollitia dignissimos aut inventore.', 'school'),
(83, ' poster', 'Et distinctio enim natus dolorum inventore qui. Eius ducimus maiores perferendis molestiae asperiores et et. Iusto eos exercitationem neque repellendus et esse eveniet. Hic dicta impedit commodi occaecati ea est dolore iusto. Laboriosam ullam voluptatibus ', 'school'),
(84, ' stapler', 'Dolores modi nihil exercitationem eum impedit optio id. Quasi commodi vitae et deserunt atque animi qui. Et soluta aliquam at. Voluptas optio consectetur dolore aut.', 'school'),
(85, ' stick-notes', 'Dolore illo voluptate impedit ea aliquid ut. Reiciendis molestias placeat numquam consequatur. Voluptate voluptatem officia tempora vero inventore. Aspernatur totam tempora facilis cupiditate vitae cumque suscipit.', 'school'),
(86, ' flashlight', 'Repudiandae qui voluptatem facere esse reiciendis. Harum quo omnis temporibus exercitationem. Sit minima ipsum fugit ut. Voluptatem non sed deserunt ut voluptatem.', 'electronics'),
(87, ' hoody', 'Dolorem laboriosam unde ipsum voluptas esse laborum. Et excepturi natus et magnam repudiandae fuga minima. Earum consequatur non consequatur ut. Eveniet omnis architecto facilis ut incidunt quidem.', 'school'),
(88, ' ruler', 'Sunt numquam et repellendus. Natus et sed quae et animi non quia. Repellendus natus magni a est.', 'books'),
(89, ' air-conditioner', 'Nostrum quidem eaque sed laudantium dolorem. Officiis et sunt ipsa praesentium soluta. Eaque quis qui et aut.', 'electronics'),
(90, ' flashlight', 'Vel debitis quibusdam cumque consequatur quaerat sunt. Modi adipisci nam quis quia. Odit consequatur ea veniam iusto corporis. Omnis quia est alias et.', 'dorm'),
(91, ' keyboard', 'Officiis rerum commodi dicta quasi. Consequatur temporibus dolorem quae voluptates et aspernatur. Et quasi qui labore.', 'school'),
(92, ' ruler', 'Quo nam qui at quisquam sed facilis. Beatae ducimus in eligendi ducimus consequatur ipsam. Alias sequi eveniet accusantium numquam ut eveniet.', 'books'),
(93, 'pencil', 'Sit optio suscipit dolorem commodi. Accusamus voluptas rerum blanditiis itaque. Quos magni aut perferendis et voluptas.', 'books'),
(94, ' mini-fridge', 'Natus unde architecto quos et ullam quo. Soluta consectetur temporibus mollitia quae beatae. Aperiam provident possimus eum.', 'school'),
(95, 'pencil', 'Fuga animi nam officiis vel nihil non voluptas. Aut incidunt temporibus vel. Voluptates porro et expedita eos doloribus id voluptates.', 'school'),
(96, ' mini-fridge', 'Et beatae ut magnam dicta nostrum a. Aut laborum accusamus cum saepe sit unde. Atque sequi est quas tenetur cupiditate totam sapiente.', 'books'),
(97, ' monitor', 'Enim qui necessitatibus facilis praesentium veritatis vitae nam. Est aspernatur tempora quasi iure optio fugiat sint id. Hic animi ut officia repellat quis dolorem.', 'electronics'),
(98, ' mini-fridge', 'Eos est quia qui labore velit ex. Est et ut vel atque deleniti. Quae ipsam illo est illo consequatur. Quia voluptas magnam at necessitatibus voluptates.', 'electronics'),
(99, ' shoes', 'Enim sint ipsum porro at. Voluptatem quo qui quo ipsa vero. Optio non est omnis eos ipsam.', 'school'),
(102, ' shoes', 'Laborum non porro quos molestiae eaque quam officia error. Amet quisquam quia et ipsum. Sit consequatur molestias aut sit cum id qui nesciunt. Ea nam est ipsam qui.', 'books'),
(103, 'gameboy', 'Sweet handheld gaming system', 'dorm'),
(104, 'Ramen', 'College Staple Food', 'Dorm'),
(105, 'Raspberry Pi', 'sweet raspberry pi with included breadboard', 'school');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `review` int(11) DEFAULT NULL,
  `trade_id` int(11) DEFAULT NULL,
  `feedback` varchar(256) DEFAULT NULL,
  `created` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `review`, `trade_id`, `feedback`, `created`) VALUES
(201, 2, 100, 'A ad omnis est cumque.', '2017-08-18'),
(202, 1, 55, 'Voluptate qui delectus hic.', '1991-04-09'),
(203, 4, 94, 'Molestiae in quisquam quia itaque.', '2014-04-07'),
(204, 5, 91, 'Tenetur praesentium eum vero molestiae.', '1997-01-01'),
(205, 4, 92, 'Vero velit sint dolores eligendi tenetur velit cupiditate.', '2000-12-25'),
(206, 2, 23, 'Et harum rerum nulla harum velit.', '2003-11-04'),
(207, 3, 51, 'Aperiam id illum quibusdam a.', '2005-08-18'),
(208, 2, 76, 'Explicabo ipsam est aut omnis numquam.', '1975-04-17'),
(209, 4, 23, 'Et minus ex quia vitae recusandae iure qui.', '1974-08-29'),
(210, 1, 37, 'Non eum quia fugiat fugiat officia.', '1974-07-31'),
(211, 4, 2, 'Dolorum sint tempora voluptatibus voluptas ad quibusdam.', '1976-08-22'),
(212, 5, 50, 'Quas a corrupti vel voluptas nam aliquid.', '1980-03-20'),
(213, 5, 87, 'Nam aspernatur maiores natus rem ullam corrupti.', '1996-08-15'),
(214, 3, 68, 'Voluptatem debitis porro et deserunt sed et voluptatibus.', '1979-03-23'),
(215, 1, 69, 'Consequuntur perferendis exercitationem perferendis ut id.', '1989-11-24'),
(216, 5, 72, 'Quaerat aut autem nobis omnis.', '1993-01-01'),
(217, 5, 32, 'Architecto ut consectetur omnis dolorem error.', '1976-06-19'),
(218, 5, 4, 'Sint ut quis nobis velit vel officia vel.', '2012-07-21'),
(219, 5, 56, 'Laborum molestiae quasi et aperiam rem.', '2015-06-21'),
(220, 3, 51, 'Libero culpa qui doloribus omnis ea iste.', '2014-08-28'),
(221, 2, 40, 'Unde odio libero consequuntur unde.', '1975-02-03'),
(222, 1, 34, 'Cumque qui consequuntur nulla.', '1994-01-08'),
(223, 3, 5, 'Qui voluptas rerum sit libero quisquam recusandae.', '1983-03-11'),
(224, 3, 24, 'Aut unde tempora quasi dolor.', '1993-06-27'),
(225, 4, 40, 'Quia sunt ea pariatur animi consequatur molestias dolore.', '2001-06-29'),
(226, 4, 43, 'Qui tempora et id sit delectus.', '1984-10-14'),
(227, 2, 50, 'Ratione amet rerum autem.', '1983-11-11'),
(228, 1, 6, 'Sed nulla excepturi culpa.', '1992-01-28'),
(229, 3, 44, 'Possimus ab a id mollitia.', '1992-02-12'),
(230, 3, 79, 'Qui aliquid exercitationem cum ut occaecati velit nihil.', '1977-01-23'),
(231, 4, 35, 'Ab beatae sit in qui eveniet aut dolores.', '1987-05-16'),
(232, 2, 42, 'Minima architecto quia aliquam pariatur.', '2000-07-30'),
(233, 1, 22, 'Fuga consequatur ut rerum.', '2010-11-21'),
(234, 3, 98, 'Iure voluptatem possimus ea dolorum voluptatibus velit.', '1973-12-29'),
(235, 5, 48, 'Consequatur non expedita velit incidunt perferendis tempora dicta.', '1975-02-04'),
(236, 2, 100, 'Nesciunt sequi deleniti harum reprehenderit fuga et dolores.', '1991-04-29'),
(237, 5, 95, 'Molestias eligendi et alias.', '1992-01-05'),
(238, 5, 41, 'Vitae id recusandae quod voluptatum aut laborum.', '1980-07-30'),
(239, 2, 67, 'Odio libero mollitia non eos qui.', '2003-08-07'),
(240, 2, 82, 'Magnam labore ut iste nam asperiores et.', '1985-12-31'),
(241, 4, 41, 'Cum sequi rerum id error consequatur.', '1985-07-15'),
(242, 2, 32, 'Illum sed repudiandae dolore ducimus architecto quia sit.', '1992-08-29'),
(243, 4, 87, 'Eius rem corrupti fugit nam illo iure asperiores aut.', '1986-03-12'),
(244, 3, 65, 'Quia commodi fugiat dolor et qui ex.', '1975-04-08'),
(245, 5, 44, 'Dolores maiores ut enim illum quia velit quo et.', '2004-06-09'),
(246, 3, 66, 'Voluptas velit occaecati doloribus et enim.', '1970-04-20'),
(247, 2, 6, 'Rem laudantium labore assumenda nam est.', '1984-08-04'),
(248, 2, 28, 'Vel vel et et optio.', '1987-01-14'),
(249, 4, 6, 'Aut facere in possimus ullam.', '2016-10-04'),
(250, 2, 57, 'Quos quia facere tenetur voluptate recusandae magnam officiis.', '1971-04-19'),
(251, 2, 36, 'Veniam eum esse dolores quidem ratione asperiores temporibus occaecati.', '2001-08-22'),
(252, 1, 69, 'Recusandae earum delectus omnis asperiores eveniet quam.', '1987-11-15'),
(253, 4, 97, 'Delectus voluptas quos cumque libero voluptates dignissimos est temporibus.', '1995-09-30'),
(254, 1, 30, 'Doloremque nam voluptas praesentium vel.', '2010-06-11'),
(255, 2, 97, 'Ut consequatur velit rerum vel voluptas dolores.', '1996-03-16'),
(256, 1, 96, 'Esse minima nulla molestias delectus eius quod alias.', '1980-04-29'),
(257, 2, 37, 'Similique delectus reiciendis et sit animi nulla fuga aut.', '1974-10-12'),
(258, 1, 97, 'Quos explicabo voluptatem dolorum rerum sit doloribus vero.', '1985-10-22'),
(259, 5, 70, 'Cupiditate qui deserunt delectus molestias aperiam dolor.', '2004-05-02'),
(260, 2, 56, 'Modi nisi eius et excepturi facilis sint quis.', '2000-07-15'),
(261, 5, 66, 'Et dolorem non praesentium ad quasi dolores cum.', '1981-03-24'),
(262, 4, 91, 'Quis beatae recusandae dolor esse qui provident.', '2018-09-17'),
(263, 3, 24, 'Iure voluptatem sit explicabo repellendus voluptates.', '2000-09-05'),
(264, 5, 69, 'Officiis eveniet quaerat ut recusandae commodi.', '2015-07-13'),
(265, 3, 17, 'Aperiam officiis illum incidunt est.', '1978-08-21'),
(266, 4, 3, 'Dolorum facere cupiditate voluptates distinctio.', '1989-12-30'),
(267, 3, 24, 'Eos et quibusdam et magnam ullam qui non.', '1972-12-18'),
(268, 5, 73, 'Molestias aut molestiae quidem illo quibusdam.', '1982-02-27'),
(269, 5, 83, 'Ex odit repellat mollitia rem officia perspiciatis voluptas.', '1971-07-15'),
(270, 1, 6, 'At aliquam rerum sed beatae nostrum totam ipsam earum.', '2000-03-02'),
(271, 3, 78, 'Omnis labore similique perferendis rerum vero.', '1983-01-12'),
(272, 4, 63, 'Eos quo est rerum.', '1985-09-28'),
(273, 1, 74, 'Commodi iste non soluta omnis vero nihil.', '1999-07-17'),
(274, 4, 93, 'Dolorem qui aut delectus eum cum.', '1995-06-21'),
(275, 4, 71, 'Officiis ut fugit libero asperiores voluptates officiis reprehenderit.', '2000-02-09'),
(276, 3, 15, 'Sit quaerat non quasi id tempora neque.', '2000-10-28'),
(277, 4, 51, 'Dolores dolores repudiandae nostrum mollitia.', '1986-02-19'),
(278, 1, 16, 'Cupiditate quos aspernatur rerum recusandae commodi labore et.', '1999-06-04'),
(279, 5, 54, 'Aut non debitis nihil saepe architecto aut necessitatibus blanditiis.', '1992-02-06'),
(280, 2, 23, 'Rem quis dignissimos sint animi.', '1971-12-07'),
(281, 1, 39, 'Quidem voluptas non aut et exercitationem consequuntur asperiores.', '1999-06-09'),
(282, 1, 13, 'Veritatis et voluptas quisquam dolorem voluptatem corporis delectus.', '1978-02-19'),
(283, 2, 35, 'Et blanditiis animi atque esse accusantium in necessitatibus.', '1989-04-19'),
(284, 2, 38, 'Qui accusantium neque ut reprehenderit.', '1979-08-29'),
(285, 3, 75, 'Ut voluptate praesentium ea vel iusto et ut.', '1975-11-17'),
(286, 1, 12, 'Magni nisi mollitia sed.', '2011-10-17'),
(287, 4, 36, 'Animi ut ipsam sit excepturi possimus.', '2002-07-10'),
(288, 2, 75, 'Aut libero cupiditate aut voluptates.', '1993-11-20'),
(289, 2, 80, 'Quaerat voluptatem illum ipsum error ipsum nam est.', '2001-01-21'),
(290, 3, 39, 'Cum omnis laborum architecto et qui quas earum.', '2000-10-11'),
(291, 4, 12, 'Est repellat est soluta omnis quasi dolore ut quibusdam.', '1999-05-11'),
(292, 4, 16, 'Sint nisi at aut sed cupiditate rerum.', '1998-04-02'),
(293, 4, 85, 'Error sunt odio in sint culpa est rerum.', '1992-08-08'),
(294, 5, 78, 'Omnis facere possimus debitis amet provident aliquam ut.', '1980-04-14'),
(295, 1, 18, 'Ut ducimus autem quo ratione dolor.', '1998-01-06'),
(296, 2, 5, 'Rerum saepe maiores voluptas aut eaque dolores sapiente.', '2009-03-19'),
(297, 5, 18, 'Alias fugit unde distinctio sed similique.', '1980-09-05'),
(298, 1, 5, 'Officiis dolores voluptatem quia odit.', '2018-03-26'),
(299, 4, 18, 'Natus quas cupiditate quaerat ratione quod suscipit magnam et.', '1979-08-15'),
(300, 1, 70, 'In reiciendis in delectus illum.', '2009-11-29'),
(301, 1, 10, 'Aperiam ut nemo dolorem.', '1972-09-19'),
(302, 1, 59, 'Voluptatum numquam et velit.', '2000-05-29'),
(303, 4, 60, 'Laudantium et recusandae unde.', '1985-01-01'),
(304, 2, 97, 'Reprehenderit earum fugiat deleniti sint quia voluptas.', '1983-01-10'),
(305, 4, 52, 'Assumenda quidem quia eveniet.', '1996-03-26'),
(306, 4, 78, 'Ducimus consequatur sequi quos itaque.', '2011-12-29'),
(307, 4, 79, 'Voluptatibus earum deserunt aut nihil.', '2013-09-17'),
(308, 2, 40, 'Error suscipit atque voluptatem non aliquid.', '1972-09-15'),
(309, 1, 76, 'Et aut aspernatur et molestiae dolor.', '2003-07-15'),
(310, 3, 59, 'Dolor commodi sunt deserunt est voluptatem.', '1972-02-04'),
(311, 5, 65, 'Cum id sint debitis occaecati.', '1994-07-18'),
(312, 2, 87, 'Nihil dolorem doloremque non et.', '1998-10-07'),
(313, 3, 91, 'Veniam reprehenderit non atque harum aut mollitia.', '1998-01-20'),
(314, 5, 72, 'Cum qui excepturi est ut autem et.', '1981-12-30'),
(315, 2, 98, 'Voluptatibus nostrum cupiditate nam placeat dolores.', '2004-04-26'),
(316, 2, 40, 'Non id pariatur et aliquid.', '1999-10-10'),
(317, 5, 19, 'Reiciendis iste asperiores eos rem ut nihil.', '1976-09-11'),
(318, 3, 4, 'Ex rerum veniam et dolores quia.', '2003-10-31'),
(319, 5, 60, 'Explicabo aliquam incidunt assumenda corporis reprehenderit.', '1977-02-09'),
(320, 3, 10, 'Dolorem atque error sunt architecto quaerat ducimus.', '2003-08-28'),
(321, 1, 81, 'Natus et dolorem facilis et quibusdam consequatur recusandae possimus.', '1986-08-28'),
(322, 4, 99, 'Est quia accusamus rerum modi quia.', '1985-05-25'),
(323, 3, 61, 'Dolor qui necessitatibus nobis corrupti.', '2018-08-05'),
(324, 4, 53, 'Quia id nam autem laudantium.', '1992-09-23'),
(325, 1, 2, 'Mollitia minus incidunt sunt et sunt ut.', '1979-06-23'),
(326, 1, 58, 'Repellendus qui mollitia vero vel.', '2010-10-18'),
(327, 3, 66, 'Dolore quis omnis consequatur ut assumenda fugit molestiae.', '1994-02-26'),
(328, 4, 5, 'Fuga et eveniet perspiciatis repellendus voluptates itaque et.', '2003-10-15'),
(329, 4, 22, 'Voluptatum officiis autem velit quia animi explicabo.', '1997-11-28'),
(330, 5, 1, 'Quia dolore enim qui praesentium aut.', '2012-01-30'),
(331, 5, 7, 'Ipsam asperiores molestias aut fugit illo iure dicta ut.', '1977-06-03'),
(332, 5, 99, 'Enim dolorum non et et.', '1982-02-16'),
(333, 2, 63, 'Aut ad odio sit aut et omnis.', '1974-04-03'),
(334, 5, 64, 'Atque eveniet adipisci qui necessitatibus in vel.', '2017-04-18'),
(335, 1, 45, 'Voluptatem sit necessitatibus quae.', '1987-08-31'),
(336, 1, 97, 'Sequi eos animi minus ducimus voluptatem provident aut.', '1994-03-02'),
(337, 2, 84, 'Ipsa nostrum in tempora id perspiciatis a.', '1988-03-01'),
(338, 4, 6, 'Suscipit voluptate omnis rerum hic accusantium accusantium asperiores quisquam.', '1976-02-20'),
(339, 4, 95, 'Quas quia nostrum dolore ut alias.', '1989-05-23'),
(340, 2, 30, 'Dolores laudantium voluptatem magnam autem est.', '1975-09-27'),
(341, 3, 72, 'Iste assumenda voluptatibus tempora est.', '2011-11-03'),
(342, 4, 9, 'Et ut ut enim eius iste cumque accusantium dicta.', '1992-09-05'),
(343, 5, 48, 'Asperiores illum placeat blanditiis dolores dolore debitis nobis nulla.', '1999-09-12'),
(344, 3, 10, 'Rerum iste et atque ipsum.', '2003-05-23'),
(345, 5, 27, 'Consectetur ut ipsum dolore optio.', '2014-01-05'),
(346, 3, 28, 'Laboriosam ut sit ea cumque.', '1991-05-16'),
(347, 4, 59, 'Voluptatem delectus ut sint ab natus repudiandae.', '1988-03-18'),
(348, 4, 84, 'Provident in molestiae nisi corporis mollitia voluptatibus unde.', '1980-01-02'),
(349, 3, 59, 'Explicabo natus cumque aspernatur quia.', '1993-07-09'),
(350, 5, 5, 'Hic necessitatibus et dolorum totam repudiandae.', '1986-07-23'),
(351, 5, 9, 'Unde numquam ea sed iure aut alias harum.', '1970-07-11'),
(352, 4, 31, 'Qui itaque ut tempora minus dolor quasi accusamus.', '1980-03-22'),
(353, 2, 89, 'Sapiente provident ut velit et soluta voluptas aut.', '1989-03-12'),
(354, 4, 79, 'Rerum eius omnis non nemo quis consectetur.', '1974-11-11'),
(355, 1, 1, 'Et inventore non doloremque molestias temporibus consequatur.', '1984-10-27'),
(356, 4, 36, 'Cum vitae consequatur voluptatum eos excepturi esse sint.', '1974-09-28'),
(357, 3, 3, 'Quidem aliquid architecto eius ut.', '1989-02-15'),
(358, 1, 38, 'Delectus veritatis nisi quae aut.', '2011-10-22'),
(359, 4, 57, 'Omnis officiis mollitia magni explicabo.', '2000-06-18'),
(360, 5, 88, 'Quo deleniti id asperiores rerum repudiandae.', '1996-04-10'),
(361, 3, 44, 'Ipsam enim quibusdam non quae.', '1998-09-08'),
(362, 2, 60, 'Praesentium voluptatem minima et vel ipsam id corrupti.', '1998-04-14'),
(363, 2, 42, 'Ea consequuntur nihil perspiciatis et odit et beatae ullam.', '2006-07-29'),
(364, 4, 2, 'Quo porro dolorem nesciunt vel sint vel.', '1978-05-20'),
(365, 2, 4, 'Cumque earum sint illo nostrum provident vel.', '1979-07-15'),
(366, 3, 11, 'Laborum necessitatibus quia eos distinctio nesciunt est.', '1972-10-11'),
(367, 4, 8, 'Consequatur necessitatibus pariatur nulla dolor iusto quia.', '2011-08-02'),
(368, 4, 29, 'Ea quasi commodi deserunt.', '1986-05-15'),
(369, 5, 48, 'Ut amet officia necessitatibus in exercitationem ad.', '2013-04-10'),
(370, 4, 33, 'Consectetur laudantium itaque perspiciatis ut enim aut.', '1971-04-26'),
(371, 2, 41, 'Corporis eos modi et corporis aut quia iure voluptatem.', '2007-05-04'),
(372, 2, 51, 'Enim at vel corporis nobis et aut quo.', '1987-11-25'),
(373, 4, 1, 'Eius neque cumque pariatur est.', '2018-10-21'),
(374, 3, 79, 'Cumque ut et qui ipsum maxime qui et consequatur.', '1996-01-20'),
(375, 4, 45, 'Aut qui quis sit eos.', '2006-02-05'),
(376, 5, 65, 'Consectetur vel culpa itaque.', '1992-02-15'),
(377, 4, 57, 'Eos soluta velit eum est quo alias fuga.', '1998-05-22'),
(378, 5, 49, 'Accusantium sit nihil quod quia et voluptatem autem.', '1998-07-08'),
(379, 4, 38, 'Aspernatur incidunt consectetur et.', '1977-06-22'),
(380, 4, 99, 'Dolorem placeat eaque est ullam minus aut.', '2003-08-08'),
(381, 4, 57, 'Fugit tempora modi iusto ipsam quos recusandae commodi.', '1995-09-08'),
(382, 1, 97, 'Error consequuntur officia vitae perferendis enim.', '2006-01-07'),
(383, 2, 70, 'Magni possimus sed quae est voluptate molestias.', '1978-09-28'),
(384, 5, 92, 'Assumenda sit odit a veritatis.', '1973-12-01'),
(385, 2, 84, 'Nihil maxime blanditiis dolor voluptatum veritatis.', '2002-11-15'),
(386, 2, 69, 'Odio non beatae itaque consequuntur illum est.', '2007-08-29'),
(387, 2, 73, 'Unde labore porro fugiat incidunt.', '1992-10-21'),
(388, 4, 90, 'Voluptatibus dolore minima itaque asperiores sint cum.', '2000-07-30'),
(389, 3, 87, 'Minima fugit vel velit ratione provident eos doloremque.', '2009-10-27'),
(390, 3, 44, 'Repellat pariatur eligendi inventore eaque similique.', '2004-11-01'),
(391, 2, 58, 'Quam doloribus aliquam deleniti in.', '1985-11-25'),
(392, 1, 100, 'Quis voluptates ducimus aliquam iusto ut dolores saepe.', '2014-04-16'),
(393, 1, 7, 'Vel omnis vitae consequatur repudiandae quam.', '1997-12-09'),
(394, 1, 29, 'Neque quasi possimus explicabo et alias nesciunt quis.', '1988-11-22'),
(395, 2, 98, 'Omnis corporis nulla inventore eos velit.', '2013-07-15'),
(396, 3, 95, 'Et ex voluptatibus veritatis aliquid aperiam harum ducimus.', '1980-01-18'),
(397, 5, 55, 'Eveniet maiores dolor est possimus suscipit quia non quo.', '1978-09-05'),
(398, 5, 55, 'Rem est eos soluta quibusdam.', '1979-12-14'),
(399, 4, 39, 'Dolorum consequatur dolores culpa et aut.', '1972-09-02'),
(400, 4, 72, 'Autem doloremque voluptate rem adipisci qui ea architecto sed.', '1993-10-03'),
(409, 1, 1, 'asdfasf', '2018-11-0'),
(410, 3, 50, 'Wohooo', '2018-11-0'),
(411, 5, 70, 'WohoooO!', '2018-12-9'),
(412, 5, 70, 'Wohoo !', '2018-12-9'),
(413, 5, 4, 'Great Item! Grade A quality.', '2018-12-9'),
(414, 5, 103, 'Sweet Gameboy!', '2018-12-10'),
(416, 3, 104, 'Ramen was chicken flavor :( ', '2018-12-10'),
(419, 5, 105, 'Came with a breadboard. I had some extra wires too which made for a nice weekend project.', '2018-12-10');

-- --------------------------------------------------------

--
-- Table structure for table `sells`
--

CREATE TABLE `sells` (
  `user_id` varchar(64) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sells`
--

INSERT INTO `sells` (`user_id`, `product_id`) VALUES
('102', 1),
('2', 2),
('3', 3),
('4', 4),
('5', 5),
('6', 6),
('7', 7),
('8', 8),
('9', 9),
('10', 10),
('11', 11),
('12', 12),
('13', 13),
('14', 14),
('15', 15),
('16', 16),
('17', 17),
('18', 18),
('19', 19),
('20', 20),
('21', 21),
('22', 22),
('23', 23),
('24', 24),
('25', 25),
('26', 26),
('27', 27),
('28', 28),
('29', 29),
('30', 30),
('31', 31),
('32', 32),
('33', 33),
('34', 34),
('35', 35),
('36', 36),
('37', 37),
('38', 38),
('39', 39),
('40', 40),
('41', 41),
('42', 42),
('43', 43),
('44', 44),
('45', 45),
('46', 46),
('47', 47),
('48', 48),
('49', 49),
('50', 50),
('51', 51),
('52', 52),
('53', 53),
('54', 54),
('55', 55),
('56', 56),
('57', 57),
('58', 58),
('59', 59),
('60', 60),
('61', 61),
('62', 62),
('63', 63),
('64', 64),
('65', 65),
('66', 66),
('67', 67),
('68', 68),
('69', 69),
('70', 70),
('71', 71),
('72', 72),
('73', 73),
('74', 74),
('75', 75),
('76', 76),
('77', 77),
('78', 78),
('79', 79),
('80', 80),
('81', 81),
('82', 82),
('83', 83),
('84', 84),
('85', 85),
('86', 86),
('87', 87),
('88', 88),
('89', 89),
('90', 90),
('91', 91),
('92', 92),
('93', 93),
('94', 94),
('95', 95),
('96', 96),
('97', 97),
('98', 98),
('99', 99),
('100', 100),
('102', 102),
('102', 103),
('102', 104),
('102', 105);

-- --------------------------------------------------------

--
-- Table structure for table `trade_ad`
--

CREATE TABLE `trade_ad` (
  `id` int(11) NOT NULL,
  `price` float DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `img` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trade_ad`
--

INSERT INTO `trade_ad` (`id`, `price`, `qty`, `img`) VALUES
(1, 10.25, 1, 'https://images.penguinrandomhouse.com/cover/9780451529701'),
(2, 77.44, 47, 'https://www.bhphotovideo.com/images/images1500x1500/nikon_d5600_dslr_camera_with_1308820.jpg'),
(3, 23.81, 9, 'https://images-na.ssl-images-amazon.com/images/I/61ED7jQCO-L._SX425_.jpg'),
(4, 65.25, 15, 'https://i5.walmartimages.com/asr/d0c3a51c-fca1-467b-818a-0c8ec3feaf0f_1.92d4cad25e46ab4203673573a8bfe367.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF'),
(5, 50.02, 17, 'https://ssl-product-images.www8-hp.com/digmedialib/prodimg/lowres/c04938204.png'),
(6, 37.99, 45, 'https://assets.pcmag.com/media/images/320179-blackberry-q10-at-t.jpg?width=615&height=1000'),
(7, 54.07, 10, 'https://store.schoolspecialty.com/OA_HTML/xxssi_ibeGetWCCImage.jsp?docName=F1602576&Rendition=Large'),
(8, 82.99, 9, 'https://www.reebok.com/dis/dw/image/v2/AAJP_PRD/on/demandware.static/-/Sites-reebok-products/default/dw32abaa19/zoom/AR0459_01_standard.jpg?sw=230&sfrm=jpg'),
(9, 89.45, 11, NULL),
(10, 19.73, 50, 'https://www.baileyhats.com/media/catalog/product/cache/image/700x560/e9c3970ab036de70892d86c6d221abfe/B/a/Bailey-of-Hollywood-Bankside-Elite-Fedora-Fedora-Black-MAIN-655722464908-6933.jpg'),
(11, 44.73, 6, 'https://officedepot.scene7.com/is/image/officedepot/531472_p_ticonderoga_tri_write_triangular_no_2_pencils?$OD-Large$&wid=450&hei=450'),
(12, 53.52, 37, 'https://ssl-product-images.www8-hp.com/digmedialib/prodimg/lowres/c04938204.png'),
(13, 18.05, 25, 'https://s3.sywcdn.net/getImage?url=http%3A%2F%2Fcontent.abt.com%2Fimage.php%2Fbig_ZW6500R.jpg%3Fimage%3D%2Fimages%2Fproducts%2FBDP_Images%2Fbig_ZW6500R.jpg%26canvas%3D1%26quality%3D100%26width%3D400%26height%3D275%26ck%3D353&t=Product&w=600&h=600&qlt=100&mrg=1&str=1&s=0c0bbf521141cf85b3dc3cb4959e09cf'),
(14, 71.79, 28, 'https://www.docsity.com/public/cache/images/4/c/a/9/d/4ca9d3f5979a7d9927687c5589f91387910d5fd4.jpg'),
(15, 48.29, 28, 'https://assets.pcmag.com/media/images/320179-blackberry-q10-at-t.jpg?width=615&height=1000'),
(16, 95.74, 29, 'https://assets.pcmag.com/media/images/320179-blackberry-q10-at-t.jpg?width=615&height=1000'),
(17, 99.53, 32, 'https://i3.cpcache.com/product/2045391796/Python_Sweatshirt_300x300.jpg?height=300&width=300&qv=90&side=front&Filters=[{%22name%22:%22background%22,%22value%22:%22ddddde%22,%22sequence%22:2}]'),
(18, 44.64, 42, 'https://www.reebok.com/dis/dw/image/v2/AAJP_PRD/on/demandware.static/-/Sites-reebok-products/default/dw32abaa19/zoom/AR0459_01_standard.jpg?sw=230&sfrm=jpg'),
(19, 9.5, 13, 'https://lsco1.scene7.com/is/image/lsco/1_w_superskinny_front?fmt=png8-alpha&scl=1&fmt=png-alpha'),
(20, 95.89, 36, 'https://assets.pcmag.com/media/images/320179-blackberry-q10-at-t.jpg?width=615&height=1000'),
(21, 89.86, 20, 'https://pics.drugstore.com/prodimg/304852/900.jpg'),
(22, 90.97, 26, 'https://www.baileyhats.com/media/catalog/product/cache/image/700x560/e9c3970ab036de70892d86c6d221abfe/B/a/Bailey-of-Hollywood-Bankside-Elite-Fedora-Fedora-Black-MAIN-655722464908-6933.jpg'),
(23, 99.8, 6, 'https://www.docsity.com/public/cache/images/4/c/a/9/d/4ca9d3f5979a7d9927687c5589f91387910d5fd4.jpg'),
(24, 42.63, 48, 'https://cf5.s3.souqcdn.com/item/2018/01/21/30/10/13/58/item_XL_30101358_92321134.jpg'),
(25, 4.73, 9, NULL),
(26, 6.41, 16, 'https://i5.walmartimages.com/asr/d0c3a51c-fca1-467b-818a-0c8ec3feaf0f_1.92d4cad25e46ab4203673573a8bfe367.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF'),
(27, 81.58, 16, NULL),
(28, 56.85, 42, 'https://www.docsity.com/public/cache/images/4/c/a/9/d/4ca9d3f5979a7d9927687c5589f91387910d5fd4.jpg'),
(29, 49.16, 22, 'https://www.bhphotovideo.com/images/images1500x1500/nikon_d5600_dslr_camera_with_1308820.jpg'),
(30, 31.48, 6, 'https://www.bhphotovideo.com/images/images1500x1500/nikon_d5600_dslr_camera_with_1308820.jpg'),
(31, 59.38, 2, 'https://ssl-product-images.www8-hp.com/digmedialib/prodimg/lowres/c04938204.png'),
(32, 36.4, 44, 'https://www.docsity.com/public/cache/images/4/c/a/9/d/4ca9d3f5979a7d9927687c5589f91387910d5fd4.jpg'),
(33, 93.83, 25, 'https://www.docsity.com/public/cache/images/4/c/a/9/d/4ca9d3f5979a7d9927687c5589f91387910d5fd4.jpg'),
(34, 59.56, 36, 'https://s3.sywcdn.net/getImage?url=http%3A%2F%2Fcontent.abt.com%2Fimage.php%2Fbig_ZW6500R.jpg%3Fimage%3D%2Fimages%2Fproducts%2FBDP_Images%2Fbig_ZW6500R.jpg%26canvas%3D1%26quality%3D100%26width%3D400%26height%3D275%26ck%3D353&t=Product&w=600&h=600&qlt=100&mrg=1&str=1&s=0c0bbf521141cf85b3dc3cb4959e09cf'),
(35, 13.9, 49, 'https://pics.drugstore.com/prodimg/304852/900.jpg'),
(36, 47.64, 3, 'https://store.schoolspecialty.com/OA_HTML/xxssi_ibeGetWCCImage.jsp?docName=F1602576&Rendition=Large'),
(37, 87.62, 42, 'https://officedepot.scene7.com/is/image/officedepot/531472_p_ticonderoga_tri_write_triangular_no_2_pencils?$OD-Large$&wid=450&hei=450'),
(38, 29.34, 6, 'https://www.reebok.com/dis/dw/image/v2/AAJP_PRD/on/demandware.static/-/Sites-reebok-products/default/dw32abaa19/zoom/AR0459_01_standard.jpg?sw=230&sfrm=jpg'),
(39, 54.32, 23, 'https://www.reebok.com/dis/dw/image/v2/AAJP_PRD/on/demandware.static/-/Sites-reebok-products/default/dw32abaa19/zoom/AR0459_01_standard.jpg?sw=230&sfrm=jpg'),
(40, 5.27, 27, 'https://i3.cpcache.com/product/2045391796/Python_Sweatshirt_300x300.jpg?height=300&width=300&qv=90&side=front&Filters=[{%22name%22:%22background%22,%22value%22:%22ddddde%22,%22sequence%22:2}]'),
(41, 96.52, 16, 'https://images.penguinrandomhouse.com/cover/9780451529701'),
(42, 62.77, 47, 'https://images-na.ssl-images-amazon.com/images/I/61ED7jQCO-L._SX425_.jpg'),
(43, 49.96, 22, 'https://i5.walmartimages.com/asr/d0c3a51c-fca1-467b-818a-0c8ec3feaf0f_1.92d4cad25e46ab4203673573a8bfe367.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF'),
(44, 4.31, 21, 'https://images-na.ssl-images-amazon.com/images/I/61ED7jQCO-L._SX425_.jpg'),
(45, 48.71, 4, 'https://www.baileyhats.com/media/catalog/product/cache/image/700x560/e9c3970ab036de70892d86c6d221abfe/B/a/Bailey-of-Hollywood-Bankside-Elite-Fedora-Fedora-Black-MAIN-655722464908-6933.jpg'),
(46, 3.65, 18, 'https://i5.walmartimages.com/asr/d0c3a51c-fca1-467b-818a-0c8ec3feaf0f_1.92d4cad25e46ab4203673573a8bfe367.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF'),
(47, 87.66, 50, 'https://cf5.s3.souqcdn.com/item/2018/01/21/30/10/13/58/item_XL_30101358_92321134.jpg'),
(48, 29.22, 25, 'https://pics.drugstore.com/prodimg/304852/900.jpg'),
(49, 80.91, 26, NULL),
(50, 20.4, 22, NULL),
(51, 55.95, 41, 'https://s3.sywcdn.net/getImage?url=http%3A%2F%2Fcontent.abt.com%2Fimage.php%2Fbig_ZW6500R.jpg%3Fimage%3D%2Fimages%2Fproducts%2FBDP_Images%2Fbig_ZW6500R.jpg%26canvas%3D1%26quality%3D100%26width%3D400%26height%3D275%26ck%3D353&t=Product&w=600&h=600&qlt=100&mrg=1&str=1&s=0c0bbf521141cf85b3dc3cb4959e09cf'),
(52, 22.61, 29, 'https://www.docsity.com/public/cache/images/4/c/a/9/d/4ca9d3f5979a7d9927687c5589f91387910d5fd4.jpg'),
(53, 30.79, 47, 'https://images.penguinrandomhouse.com/cover/9780451529701'),
(54, 95.81, 10, NULL),
(55, 91.48, 44, NULL),
(56, 48, 29, 'https://pics.drugstore.com/prodimg/304852/900.jpg'),
(57, 75.98, 2, 'https://i3.cpcache.com/product/2045391796/Python_Sweatshirt_300x300.jpg?height=300&width=300&qv=90&side=front&Filters=[{%22name%22:%22background%22,%22value%22:%22ddddde%22,%22sequence%22:2}]'),
(58, 20.47, 33, 'https://images-na.ssl-images-amazon.com/images/I/61ED7jQCO-L._SX425_.jpg'),
(59, 26.77, 33, NULL),
(60, 17.3, 12, 'https://images-na.ssl-images-amazon.com/images/I/61ED7jQCO-L._SX425_.jpg'),
(61, 80.47, 25, NULL),
(62, 12.69, 28, 'https://www.bhphotovideo.com/images/images1500x1500/nikon_d5600_dslr_camera_with_1308820.jpg'),
(63, 36.85, 35, 'https://pics.drugstore.com/prodimg/304852/900.jpg'),
(64, 46.71, 12, 'https://i3.cpcache.com/product/2045391796/Python_Sweatshirt_300x300.jpg?height=300&width=300&qv=90&side=front&Filters=[{%22name%22:%22background%22,%22value%22:%22ddddde%22,%22sequence%22:2}]'),
(65, 54.62, 7, 'https://lsco1.scene7.com/is/image/lsco/1_w_superskinny_front?fmt=png8-alpha&scl=1&fmt=png-alpha'),
(66, 92.58, 32, NULL),
(67, 13.81, 10, 'https://officedepot.scene7.com/is/image/officedepot/531472_p_ticonderoga_tri_write_triangular_no_2_pencils?$OD-Large$&wid=450&hei=450'),
(68, 77.28, 45, 'https://lsco1.scene7.com/is/image/lsco/1_w_superskinny_front?fmt=png8-alpha&scl=1&fmt=png-alpha'),
(69, 53.42, 35, 'https://www.reebok.com/dis/dw/image/v2/AAJP_PRD/on/demandware.static/-/Sites-reebok-products/default/dw32abaa19/zoom/AR0459_01_standard.jpg?sw=230&sfrm=jpg'),
(70, 94.15, 13, NULL),
(71, 13.77, 9, 'https://store.schoolspecialty.com/OA_HTML/xxssi_ibeGetWCCImage.jsp?docName=F1602576&Rendition=Large'),
(72, 93.68, 45, 'https://pics.drugstore.com/prodimg/304852/900.jpg'),
(73, 12.37, 48, 'https://www.bhphotovideo.com/images/images1500x1500/nikon_d5600_dslr_camera_with_1308820.jpg'),
(74, 85.32, 28, 'https://i3.cpcache.com/product/2045391796/Python_Sweatshirt_300x300.jpg?height=300&width=300&qv=90&side=front&Filters=[{%22name%22:%22background%22,%22value%22:%22ddddde%22,%22sequence%22:2}]'),
(75, 85.46, 17, 'https://i3.cpcache.com/product/2045391796/Python_Sweatshirt_300x300.jpg?height=300&width=300&qv=90&side=front&Filters=[{%22name%22:%22background%22,%22value%22:%22ddddde%22,%22sequence%22:2}]'),
(76, 56.77, 30, 'https://officedepot.scene7.com/is/image/officedepot/531472_p_ticonderoga_tri_write_triangular_no_2_pencils?$OD-Large$&wid=450&hei=450'),
(77, 73.67, 3, 'https://cf5.s3.souqcdn.com/item/2018/01/21/30/10/13/58/item_XL_30101358_92321134.jpg'),
(78, 7.8, 4, 'https://www.docsity.com/public/cache/images/4/c/a/9/d/4ca9d3f5979a7d9927687c5589f91387910d5fd4.jpg'),
(79, 11.45, 43, 'https://i3.cpcache.com/product/2045391796/Python_Sweatshirt_300x300.jpg?height=300&width=300&qv=90&side=front&Filters=[{%22name%22:%22background%22,%22value%22:%22ddddde%22,%22sequence%22:2}]'),
(80, 70.86, 50, 'https://images.penguinrandomhouse.com/cover/9780451529701'),
(81, 1.44, 31, 'https://images.penguinrandomhouse.com/cover/9780451529701'),
(82, 13.01, 3, 'https://www.reebok.com/dis/dw/image/v2/AAJP_PRD/on/demandware.static/-/Sites-reebok-products/default/dw32abaa19/zoom/AR0459_01_standard.jpg?sw=230&sfrm=jpg'),
(83, 3.16, 4, NULL),
(84, 19.94, 33, 'https://images-na.ssl-images-amazon.com/images/I/61ED7jQCO-L._SX425_.jpg'),
(85, 2.8, 27, 'https://pics.drugstore.com/prodimg/304852/900.jpg'),
(86, 38.43, 37, NULL),
(87, 76.52, 48, 'https://i3.cpcache.com/product/2045391796/Python_Sweatshirt_300x300.jpg?height=300&width=300&qv=90&side=front&Filters=[{%22name%22:%22background%22,%22value%22:%22ddddde%22,%22sequence%22:2}]'),
(88, 27.53, 39, 'https://store.schoolspecialty.com/OA_HTML/xxssi_ibeGetWCCImage.jsp?docName=F1602576&Rendition=Large'),
(89, 94.3, 42, 'https://s3.sywcdn.net/getImage?url=http%3A%2F%2Fcontent.abt.com%2Fimage.php%2Fbig_ZW6500R.jpg%3Fimage%3D%2Fimages%2Fproducts%2FBDP_Images%2Fbig_ZW6500R.jpg%26canvas%3D1%26quality%3D100%26width%3D400%26height%3D275%26ck%3D353&t=Product&w=600&h=600&qlt=100&mrg=1&str=1&s=0c0bbf521141cf85b3dc3cb4959e09cf'),
(90, 92.47, 26, NULL),
(91, 85.75, 42, 'https://cf5.s3.souqcdn.com/item/2018/01/21/30/10/13/58/item_XL_30101358_92321134.jpg'),
(92, 65.07, 8, 'https://store.schoolspecialty.com/OA_HTML/xxssi_ibeGetWCCImage.jsp?docName=F1602576&Rendition=Large'),
(93, 6.16, 30, 'https://officedepot.scene7.com/is/image/officedepot/531472_p_ticonderoga_tri_write_triangular_no_2_pencils?$OD-Large$&wid=450&hei=450'),
(94, 74.46, 19, NULL),
(95, 66.44, 46, 'https://officedepot.scene7.com/is/image/officedepot/531472_p_ticonderoga_tri_write_triangular_no_2_pencils?$OD-Large$&wid=450&hei=450'),
(96, 79.25, 5, NULL),
(97, 81.62, 29, 'https://ssl-product-images.www8-hp.com/digmedialib/prodimg/lowres/c04938204.png'),
(98, 69.35, 23, NULL),
(99, 1.74, 18, 'https://www.reebok.com/dis/dw/image/v2/AAJP_PRD/on/demandware.static/-/Sites-reebok-products/default/dw32abaa19/zoom/AR0459_01_standard.jpg?sw=230&sfrm=jpg'),
(102, 20.55, 0, 'https://www.reebok.com/dis/dw/image/v2/AAJP_PRD/on/demandware.static/-/Sites-reebok-products/default/dw32abaa19/zoom/AR0459_01_standard.jpg?sw=230&sfrm=jpg'),
(103, 25, 1, 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/66/Game-Boy-Light-FL.jpg/170px-Game-Boy-Light-FL.jpg'),
(104, 1, 1, 'https://images-na.ssl-images-amazon.com/images/I/81S96HadPlL._SL1500_.jpg'),
(105, 20, 1, 'https://cdn-shop.adafruit.com/970x728/3775-04.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `trade_request`
--

CREATE TABLE `trade_request` (
  `id` int(11) NOT NULL,
  `seller` int(11) DEFAULT NULL,
  `buyer` int(11) DEFAULT NULL,
  `request` int(11) DEFAULT NULL,
  `offer` int(11) DEFAULT NULL,
  `cash` tinyint(1) DEFAULT NULL,
  `trade` tinyint(1) DEFAULT NULL,
  `COMMENT` varchar(255) DEFAULT NULL,
  `complete` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trade_request`
--

INSERT INTO `trade_request` (`id`, `seller`, `buyer`, `request`, `offer`, `cash`, `trade`, `COMMENT`, `complete`) VALUES
(1, 102, 4, 4, 3, 0, 1, 'asdf', 0),
(6, 102, 44, 15, 2, 0, 1, 'asdfasdf', 0),
(9, 94, 102, 94, 2, 0, 1, 'asdfasdf', 1),
(10, 94, 102, 94, 2, 0, 1, 'asdfa', 0),
(12, 93, 102, 93, 3, 0, 1, 'jkl;lj', 0),
(13, 50, 108, 50, 10, 0, 1, NULL, 0),
(14, 50, 109, 50, 10, 0, 1, NULL, 0),
(15, 50, 102, 50, NULL, 1, 0, NULL, 1),
(16, 2, 102, 2, 1, 0, 1, '', 0),
(17, 70, 102, 70, NULL, 1, 0, NULL, 1),
(18, 91, 102, 91, NULL, 1, 0, NULL, 1),
(19, 4, 102, 4, NULL, 1, 0, NULL, 1),
(20, 102, 103, 103, NULL, 1, 0, NULL, 1),
(21, 102, 103, 104, NULL, 1, 0, NULL, 1),
(22, 102, 103, 105, NULL, 1, 0, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `hashed_password` varchar(255) DEFAULT NULL,
  `email_address` varchar(30) DEFAULT NULL,
  `bio` varchar(512) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `location` varchar(128) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `hashed_password`, `email_address`, `bio`, `role_id`, `location`, `name`) VALUES
(1, 'amelie71', '48fd10c7d9536b94dd61c04077aebc2035f1d4c1', 'kulas.matilda@example.net', 'Dolorem dolorum rem excepturi a. Voluptas et nisi dicta delectus numquam ut excepturi. Qui atque est architecto aut asperiores ipsa. Delectus dolor sint expedita molestiae rerum maxime est.', 0, ' University of Massachusetts Amherst', 'Lew'),
(2, 'rmetz', 'ecc3585d652a81fa95708970e21299c0cc574efb', 'flatley.caitlyn@example.com', 'Quis odit et nihil. Neque praesentium iusto voluptatum quae quia id repellat. Nesciunt ut a harum magnam ullam rem. Neque quia voluptatibus id voluptatem cum ratione.', 0, 'University of Vermont', 'Sherwood'),
(3, 'xfunk', 'bc462ca9e43c7727cf75cc431d76ee408179a1b1', 'josephine69@example.org', 'Necessitatibus eos debitis et impedit. Recusandae a minus atque quam. Quidem labore est excepturi.', 0, ' University of Massachusetts Amherst', 'Clair'),
(4, 'heaney.jefferey', 'a19b9ea5495b44dcac0573d0e27ebaf686c25057', 'clemmie74@example.com', 'Et aut suscipit molestiae ut velit inventore. Ut est consequatur occaecati inventore.\nDolores et fugiat sunt doloremque ducimus. Quisquam ea ad quia nihil labore aut.', 0, ' University of Massachusetts Lowell', 'Royal'),
(5, 'payton98', 'd381eb8e4c12604df372179f115f6397a5226710', 'vmohr@example.net', 'Neque dolorum dignissimos dolor distinctio blanditiis quis rem. Totam est architecto est ab dignissimos consequatur animi. Et et nihil sit voluptates voluptas. Sit rerum ipsa nihil autem.', 0, ' University of New Hampshire Main Campus', 'Louisa'),
(6, 'zemlak.ignatius', 'beae2f810a8d0a054cc6cfe386908ceda6a2d47d', 'lmaggio@example.net', 'Quo facilis dolor enim eum. Laboriosam sunt est libero ab harum inventore odio. Magni quod ab ipsa eius facilis culpa sed.', 0, ' Northeastern University', 'Haskell'),
(7, 'xkihn', 'f175aa61e94845877d258de806ae630d344b0c06', 'ashly.johnston@example.com', 'Reiciendis numquam quia quae placeat provident eligendi dolor. Dolores itaque aut perspiciatis. Temporibus architecto magnam culpa expedita.', 0, ' University of New Hampshire Main Campus', 'Dock'),
(8, 'bert45', '79542514677f92660e3e32e96020cea8c666f20c', 'hauck.aubrey@example.com', 'Sapiente est est nihil explicabo ut esse vero voluptatum. Ipsa provident officia suscipit doloremque impedit commodi aut. Necessitatibus quo id assumenda dignissimos vero vitae deleniti.', 0, ' University of Connecticut', 'Herminio'),
(9, 'cummings.jessic', 'dcf3d05fbcefc7b56d29e35f121ff86d1989538c', 'blaise.waelchi@example.com', 'Consectetur voluptatum odit fugiat aspernatur qui aut vel laborum. Corrupti qui aut consectetur inventore saepe dolorem doloribus. Occaecati sunt ullam aut inventore sunt.', 0, ' Massachusetts Institute of Technology', 'Dock'),
(10, 'hbartoletti', '04108116dcce45e54ec806b61ea3e92e6ffb4ee9', 'xschuster@example.net', 'Aut qui error quasi molestias tenetur sunt voluptas nostrum. Aut distinctio eaque veritatis ab laborum. Enim vel commodi cumque. Quam ut sed est ut.', 0, ' Massachusetts Institute of Technology', 'Napoleon'),
(11, 'tatum02', '067dd9da0593c8ffeb85362b3dde73324c4e7e00', 'elesch@example.org', 'Quam ex voluptas neque aut dolore qui. Veniam quis autem fugit enim veniam eaque. Ipsa odit quas provident minima.', 0, ' Yale University', 'Salvatore'),
(12, 'levi17', 'e1f9ec7f322c43755abe2651845e968797044f01', 'michaela.casper@example.org', 'Qui dolores quasi reprehenderit magni et asperiores at. Nisi eos cupiditate quaerat sed est. Esse sunt voluptas qui tempora doloremque ea eius.', 0, ' University of Vermont', 'Cielo'),
(13, 'tyree.mertz', '0eee490968f910a2333ccf4fcbcf50bbd00e62e9', 'garry05@example.net', 'Illum distinctio nostrum quia quia. Est sit delectus delectus. Facilis hic molestiae officia neque odit.', 0, ' Harvard University', 'Lorenza'),
(14, 'alda98', '99849eb6ff3d2f6b8df7f827a3fe334a632ee44f', 'nicholas12@example.org', 'Ut ab et dolores iste possimus. Similique explicabo modi sunt quis voluptatem. Voluptas nulla ipsa neque voluptates facilis. Ut ea ut illo fugit et quia aliquam quasi.', 0, ' Northeastern University', 'Urban'),
(15, 'cbergnaum', '0a0894555a3c18abd7650d0be701e678a67e9071', 'kiehn.shyann@example.net', 'Consequatur distinctio doloribus occaecati neque nihil eos. Recusandae ducimus suscipit pariatur non. Similique quibusdam quia quia pariatur.', 0, ' University of New Hampshire Main Campus', 'Joel'),
(16, 'leland11', '0b70af1e4f92f71a5ce16e319e8564e5b6806a16', 'lheaney@example.com', 'Iste facilis quia error consequatur qui mollitia aut. Assumenda qui illo incidunt veniam quidem nihil aut. Aliquid enim sed est. Magni et rem id consectetur facilis.', 0, ' University of Vermont', 'Gaetano'),
(17, 'devon14', 'df68fd6c915f7757af6f1b18a218cc943c7c48ea', 'cgraham@example.org', 'Incidunt molestiae eius quibusdam optio nisi ea perspiciatis. Esse et doloribus enim reiciendis doloribus. Molestiae dolores sint ut at. Aut possimus officia officia qui atque mollitia quas.', 0, ' Harvard University', 'Tyrel'),
(18, 'savanah44', 'b35de4672582f952d85a19dc77196c6cd1d67bee', 'hackett.brent@example.org', 'Non quaerat enim nihil corporis expedita. Consequatur molestias eius veritatis incidunt non sint. Sunt voluptatibus impedit nisi voluptatem facere similique animi.', 0, ' University of Vermont', 'Kaleb'),
(19, 'kuhlman.jane', '6a08d470bc7bc12b1eceac78201f48eca22e5e8d', 'schiller.destiny@example.net', 'Aut nobis vel eaque natus. Quo non laboriosam nisi ut reiciendis in. Asperiores id ut cum aut sit eveniet. Vitae ut dolorum omnis nesciunt.', 0, ' Boston College', 'Cody'),
(20, 'daphnee03', 'bba6ec58be256a3f4c2c5a81ec40437bdaea460c', 'khoppe@example.com', 'Modi consectetur eos natus. Excepturi est molestias placeat aut facilis at cupiditate. Incidunt unde nesciunt eligendi illo quam et veniam aliquam. Quia qui quasi quis et nesciunt.', 0, ' University of Massachusetts Lowell', 'Mortimer'),
(21, 'nikita70', 'cef9cfca209e30288ce6ebffd2da07ae1887f576', 'curtis.stiedemann@example.com', 'Minus autem nostrum dolor similique molestias. Quibusdam quo aperiam sit. Quisquam minus velit eaque quis excepturi modi saepe. Repellendus animi ex non consequatur dolores ut.', 0, ' Harvard University', 'Darian'),
(22, 'ankunding.stuar', 'deabd76b36c9664a8ff22a70a76c9a4dfacaad21', 'yjakubowski@example.org', 'Debitis distinctio ut deserunt nam totam et. Labore nostrum architecto nihil. Tempora culpa rerum sapiente quia qui eum.', 0, ' University of Rhode Island', 'Emmanuel'),
(23, 'jwiegand', 'e2bf2b33b45996da3081fd52002f18b48c837a20', 'shirley.langosh@example.com', 'Eum animi est corrupti dignissimos aliquid vero consequatur. Distinctio recusandae sint vel impedit totam dicta consequuntur. Quibusdam fugit ut fugit consequatur.', 0, ' University of Massachusetts Lowell', 'Casper'),
(24, 'precious.steube', '0168123f364ece37217ab16d058046e3455302ad', 'ebba76@example.net', 'Eum doloribus aut vero autem voluptas omnis. Corporis ut dolorem assumenda amet reiciendis architecto. Reprehenderit et mollitia iste consequatur omnis error.', 0, 'Boston University', 'Adelbert'),
(25, 'tristian96', '56b0a058dd1597833849070bf35b724c0f7356c4', 'yundt.hallie@example.com', 'Sit ut nam quia aliquam id. Voluptas molestiae assumenda omnis accusantium eum molestiae. Qui eos labore ut dolorem aut. Error corporis reprehenderit architecto vel. Nulla vel voluptas sint.', 0, ' University of Rhode Island', 'Delbert'),
(26, 'qgreenfelder', 'd58f2729cfee1e9720bb1e49e0ecf082b4d51d51', 'streich.vincenza@example.net', 'Dolore accusamus in autem similique. Et consequatur sed autem enim recusandae esse reprehenderit aliquid. Distinctio eum maxime veritatis deserunt ipsum voluptatum. Omnis temporibus fuga velit nemo.', 0, ' Yale University', 'Carlos'),
(27, 'mohammad.hoppe', '580c7d2e3c6ce65bb1bc813fc05ada82dcb54a9e', 'lessie.padberg@example.com', 'Aut possimus tempore voluptatem ratione voluptatibus similique tempora. Libero voluptatem est excepturi. Consequatur quia occaecati consectetur magni aut molestiae.', 0, ' University of Connecticut', 'Arthur'),
(28, 'parisian.vincen', 'bd17129f83322489d21affd4f7060b8c9b9671ed', 'deshaun64@example.org', 'Perspiciatis nemo omnis ut quisquam sit voluptas qui qui. Tempore aut nihil nam laudantium omnis libero. Laboriosam et dolores vitae ea assumenda nostrum.', 0, ' Massachusetts Institute of Technology', 'Xavier'),
(29, 'kayleigh.rohan', '7db106edb16ad0f0f59b1705ba734a7559c95c69', 'joanne.donnelly@example.net', 'In et sit iste tempore. Omnis vel enim sint iure similique necessitatibus at iste. Minima nisi inventore excepturi aut ut. Laboriosam qui et atque occaecati est sunt hic.', 0, ' Massachusetts Institute of Technology', 'Quinten'),
(30, 'rubye77', '3a703b4ed14f4347a30e760c5e06933f9cae8edf', 'grimes.maud@example.org', 'Et eum et dignissimos architecto animi. Accusamus voluptatem beatae et laborum ab. Unde fugiat et non delectus.', 0, ' University of Massachusetts Lowell', 'Hayley'),
(31, 'haag.jaylan', 'e4bf8962b32aaae4cadc8e5d0a990a2a22d95268', 'hermann.hanna@example.net', 'Nisi natus molestiae voluptas ut expedita sed. Distinctio numquam tempora eos ipsum. Minus quo aut officiis officia quos fugit. Fugiat non voluptas voluptatibus laborum in sequi tenetur.', 0, ' University of Massachusetts Amherst', 'Ari'),
(32, 'buford11', 'c12696b9dd6aa2c94adf4a1602e53ca9d527d3ef', 'crystel.bradtke@example.net', 'Voluptates illo et aperiam modi vel. Ducimus nemo quia ratione ea quia. Vel adipisci cupiditate repellendus maxime. Eaque quis ut maiores voluptatibus aut voluptatem sit.', 0, ' Massachusetts Institute of Technology', 'Laurel'),
(33, 'ereinger', '1d6dfc48767e378626054ad7d2d785407acb65dc', 'tressie.mcclure@example.org', 'Qui incidunt debitis vel quis blanditiis optio qui. Autem et sapiente maxime officia. Qui ullam mollitia harum neque et occaecati et ad. Mollitia sint necessitatibus nobis eos est at.', 0, ' University of Vermont', 'Jackson'),
(34, 'angelica81', '31de17ec4a735766cb5baa71aba3b4105e04c7aa', 'emmerich.preston@example.com', 'Nesciunt ex fugit fugit vero et magnam. Eius rerum cumque eum voluptate. Perferendis ad eius quia harum eius veniam. Et explicabo corporis incidunt dolorem enim ut necessitatibus.', 0, ' Massachusetts Institute of Technology', 'Green'),
(35, 'adelle71', '2f67dd782e091b64af5e17cff7590beee0ac257c', 'roob.wilburn@example.com', 'Iusto voluptatem accusamus nobis harum consectetur itaque. Placeat voluptas deleniti earum sit. Veritatis dolores fugiat illo. Quas assumenda alias quo aut odit voluptatem.', 0, ' Boston College', 'Ike'),
(36, 'kolby.boyle', '2b3b3ae1cf452296a26e76df20b4c91b4dd8f844', 'bradtke.eldridge@example.net', 'Debitis voluptas sed aut quo. Eveniet voluptatum et alias modi. Consequuntur nobis rerum qui recusandae aut quibusdam.', 0, ' Harvard University', 'Marty'),
(37, 'felipe05', '4488834ab7ca4d1a506b98e8f26bef8e7dbffee5', 'jerod84@example.org', 'Deleniti est voluptas quibusdam cupiditate sit. Asperiores qui aut error non et recusandae. Id et unde qui iure quos.\nEveniet in enim aut. Et quasi velit adipisci. Libero iure ut dolores.', 0, ' University of Connecticut', 'Rashawn'),
(38, 'king.humberto', '354f8722c0d1ac43f7420083a5c83a522b25fff9', 'moshe.mueller@example.net', 'Et provident animi sed dignissimos totam qui adipisci. Dicta at consequuntur debitis soluta ipsam. Doloribus officia sit earum architecto.', 0, ' University of Massachusetts Amherst', 'Taylor'),
(39, 'jerde.maya', '5c8c6a9e53479baac9bedbd8c285a88f3b585c5e', 'brice18@example.org', 'Vero sit maxime cum veniam itaque quo aut. A quia facere doloribus magni est deleniti voluptatem minima. Repudiandae id consequatur laborum officiis sequi vel quibusdam. Illum deserunt odio a.', 0, ' Boston College', 'Jayden'),
(40, 'cora.langworth', '2a47c5980fd5dd52b2382756573c590837408f30', 'maurine.russel@example.com', 'Nesciunt veniam voluptate doloremque ratione molestias unde. Provident et omnis atque doloremque quo. Numquam nulla est quod. At quibusdam fugiat mollitia voluptatem.', 0, ' Massachusetts Institute of Technology', 'Mathew'),
(41, 'do\'hara', '76de0efbfa6674a2490bd4979cebacb35134dba4', 'joana81@example.org', 'Ipsum aut beatae repellendus dolorem. In vero labore in fuga qui sint. Repellat quia sapiente at nulla sit et voluptatum. Voluptatum similique et at mollitia. Voluptate unde debitis aut quas.', 0, ' University of Massachusetts Lowell', 'Orion'),
(42, 'hegmann.chet', 'a67a9e844f95a72a3e4089b8b371be663cb4e6fe', 'kunde.silas@example.org', 'Iure consequatur beatae temporibus. Voluptas id et enim numquam quibusdam quibusdam reiciendis. A blanditiis praesentium dignissimos qui non et qui.', 0, ' University of Vermont', 'Cristopher'),
(43, 'wiley23', 'c1b86e7cb9002f818a5b87f1fd05ee08b800f290', 'hank.barrows@example.net', 'Harum distinctio tempore est illum. Omnis voluptatum quas velit voluptas voluptatem molestiae et aspernatur. Fugit iusto earum reiciendis tenetur sapiente.', 0, ' Harvard University', 'Hilario'),
(44, 'raoul.runolfsdo', 'b502c082e18037d743fb8b5ebfe66c6a7764fcae', 'darrel.ratke@example.com', 'Provident blanditiis ipsum aut libero qui explicabo quaerat. Labore consequatur nisi reiciendis id mollitia ipsam nostrum. Harum voluptatem vitae a voluptatum est. Qui omnis consequatur nemo est.', 0, ' University of Massachusetts Lowell', 'Zander'),
(45, 'rico.konopelski', '68aea619b653271f666efbf5b94b66b5dcd9376c', 'kkessler@example.net', 'Ut libero soluta accusantium mollitia modi. Asperiores possimus similique atque tempora. Earum consequatur dolor sit dolores reprehenderit dolorum. Rerum enim quidem aut maxime eos.', 0, ' University of Massachusetts Boston', 'Peyton'),
(46, 'bmorar', 'a1556da909b89c932bc49f6b3019fd373cb9e1d1', 'conroy.marielle@example.org', 'Impedit blanditiis ut ex atque deserunt natus incidunt amet. Non explicabo soluta ea expedita omnis. Autem beatae omnis consequatur est ut.', 0, ' University of Vermont', 'Chadrick'),
(47, 'frederick.treut', 'c9996e831d38b3bed6a69c719aa7eef90715b0af', 'haag.treva@example.net', 'Et asperiores dignissimos nisi quaerat magnam laboriosam repellendus. Placeat quo voluptas beatae reprehenderit.', 0, ' Northeastern University', 'Boris'),
(48, 'lucile59', 'de9aa209d1cf0ecc63e9b7095d1549097618589a', 'torphy.barton@example.net', 'Dicta ipsa delectus praesentium sapiente fugiat porro voluptate. Et qui id sunt expedita aperiam aliquid. Inventore error molestiae asperiores.', 0, ' University of Massachusetts Boston', 'Sanford'),
(49, 'waters.deondre', 'b1b792edc5b08e79b6ddbfd4d1dfd2c0b2bb3e40', 'gblanda@example.net', 'Esse molestiae consequuntur necessitatibus consectetur. Corporis ducimus nisi delectus enim in.', 0, ' Massachusetts Institute of Technology', 'Ethan'),
(50, 'osinski.hayley', '850e13a45a805cd24647bfe1528fe5fef6121033', 'antonette.turner@example.net', 'Praesentium sed laborum unde assumenda quibusdam iusto nihil. Id dolores dolor natus consequatur reprehenderit consequuntur. Ipsum aut eos labore officia id velit et.', 0, ' Northeastern University', 'Marcelino'),
(51, 'dario96', 'd48caaeacfe6e413affe5b9728ca88a1b501e717', 'kub.hulda@example.org', 'Aut sunt ratione aliquid provident ut a. Harum omnis repudiandae consequatur nihil aut. Sed voluptate fugiat occaecati consectetur vel modi.', 0, ' University of Massachusetts Amherst', 'Thomas'),
(52, 'rreilly', '41c4f1c2a291e03406383c14afebb125e8ad9bb6', 'xrutherford@example.net', 'A ut autem consectetur sed nesciunt ipsum. Cum atque quidem in perspiciatis ducimus. Consequatur provident pariatur sit porro.', 0, ' University of Vermont', 'Kaleigh'),
(53, 'oskiles', 'c886da2d4153d57100eedab5461511d327f513e7', 'kenna36@example.net', 'Aliquam optio est quis amet qui. Et error quis sint suscipit facere minus. Quo cupiditate ea omnis in cum.', 0, ' University of Rhode Island', 'Douglas'),
(54, 'agutkowski', '84ec1a98ef3a0b4c688591d2d701aabad866212f', 'darrick.bergnaum@example.org', 'Quidem quis ratione rerum corrupti ut tempore mollitia. Earum est maxime eum sunt. Magni dolores accusamus aut sunt consequatur tempora hic. Consequatur accusantium id eum pariatur autem quis.', 0, ' University of Massachusetts Boston', 'Chris'),
(55, 'equigley', '7b2c34fd4ca5b22e49239eeb24cf007c5452a1c2', 'lempi23@example.net', 'Nihil unde quod tempora delectus id. Nisi sed et labore. Molestiae molestiae eligendi iure facilis. Sit id tempore alias commodi et.', 0, ' University of Vermont', 'Ephraim'),
(56, 'bryana72', '76e8aa7ea30c6a3bf8d60eeeadfe119e5435d9de', 'tremblay.reggie@example.com', 'Quia veritatis dolor quia alias nemo fugiat. Consequuntur quod est mollitia voluptas. Veniam et ipsum itaque sed.', 0, ' University of Massachusetts Lowell', 'Brandt'),
(57, 'kshlerin.britta', '6b1c56937fec7818e7c0f0a1fee1703c7ef5704a', 'moen.danika@example.net', 'Voluptas quis et sunt eos amet et. Omnis dolorum aperiam a odio minima enim est. Voluptas ipsa qui quia.', 0, ' University of Massachusetts Boston', 'Russel'),
(58, 'cruz.lind', 'f7325a55ce02ee6baaf6f9a2377efcb521c7d643', 'hagenes.cali@example.net', 'Dignissimos amet ea veniam alias aut sit. Id enim animi dicta iusto iure.', 0, ' Boston College', 'Dedrick'),
(59, 'grimes.flo', '16a4a302228f8782f1c60928cf28be82079d0cfd', 'hleannon@example.org', 'Impedit quam sapiente sit totam quia id eos odio. Ad quidem nihil eum odio consequuntur ut aspernatur accusantium. Quia magni minus quia et.', 0, ' Boston College', 'Blaze'),
(60, 'haven.zboncak', 'e43c14f0cc8020272b79593bf0b881f8e9c62dc3', 'mlemke@example.org', 'Est at itaque hic quidem dolorem ipsum omnis. Consequatur odit necessitatibus dolore reiciendis saepe. Facilis culpa aut eius ratione corrupti et. Aut ea sunt et est eaque accusantium.', 0, 'Boston University', 'Eusebio'),
(61, 'maxime48', '29915632d6a49688baa97c9a7f2e6e6efefda969', 'afadel@example.org', 'Sequi occaecati voluptatem aut dignissimos earum. Repellendus alias in eveniet ut harum.', 0, ' Southern New Hampshire University', 'Gerard'),
(62, 'arielle.sawayn', '5aff3a3e5d635ab15d5090846926fd092e9bcaae', 'eupton@example.net', 'Officia odio animi officia doloremque molestiae rerum alias. Quaerat velit molestiae dolorem quis. Et commodi at id omnis veniam illo ut. Reiciendis mollitia tempora in sed enim amet.', 0, ' University of Rhode Island', 'King'),
(63, 'jose.kub', 'e037d09a1f355bebd0e7cd4350f60b39896edcde', 'lynch.creola@example.com', 'Nobis necessitatibus expedita magnam ipsam. Fugiat ad ut consequatur maiores quae. Harum eos sit quos sunt. Ut veritatis laudantium illo deserunt in porro.', 0, ' Southern New Hampshire University', 'Ladarius'),
(64, 'cronin.astrid', '6e0cedc9ca40441f40ca34d99ffe173e177067c5', 'dakota49@example.com', 'Fugit modi fuga iusto id aspernatur dolor voluptatum. Reprehenderit ut sint sed tempore. Est aliquam aut dicta a natus non.', 0, ' University of Vermont', 'Uriah'),
(65, 'bhodkiewicz', '11f6f11f9f8712bcb2b1dfebd4d8304a90f3007a', 'rhianna.torphy@example.org', 'Inventore amet quia ut magnam. Vero odit tenetur id. Tenetur vel quo et cumque voluptatem quod rerum.', 0, ' Harvard University', 'Kiel'),
(66, 'brakus.meghan', 'b246c4125fbc304e1424800d919d937d008614be', 'kskiles@example.com', 'Aliquam aspernatur qui quasi quisquam. Blanditiis ipsa ab possimus voluptatem maxime. Voluptatibus vero facilis officiis sit aut fugiat. Nesciunt quis voluptatibus et enim consectetur.', 0, ' Southern New Hampshire University', 'Jayden'),
(67, 'elmer64', '3ffc9545701e79deb9542cc393b0e4f8eb9d2587', 'corwin.jacinto@example.org', 'Eos dolor quidem ducimus. Impedit repellat occaecati minima nihil alias unde sit qui. Assumenda dolorum praesentium deserunt sint. Ut sit eveniet dolores a sequi quis dolores sunt.', 0, ' University of Vermont', 'Alfred'),
(68, 'concepcion22', 'b551d7faa5143b904dfc75d9f281fb2246932f6c', 'darby.moore@example.net', 'Accusantium velit tempora culpa voluptates. Et non voluptatem soluta alias eveniet aut. Maiores totam facere sint id veniam aliquid.', 0, ' University of New Hampshire Main Campus', 'Milan'),
(69, 'mharvey', '405e39fd8be5d973bd660603987e53fc5ead0615', 'meggie05@example.org', 'Repellendus molestiae fugiat odit nobis. Rem inventore aliquam id aut dolorum placeat et. Error asperiores voluptatum nobis quia reprehenderit. Eveniet quaerat atque rerum rerum culpa.', 0, ' Northeastern University', 'Hans'),
(70, 'abbott.jaron', 'c614bb0067a406ef5b06cdf71d697fc07138f677', 'garnet.bruen@example.com', 'Ipsum impedit accusamus eos. Nisi totam aperiam eos ea. Sunt doloribus odio sunt.', 0, ' Northeastern University', 'Griffin'),
(71, 'shana11', 'f14512109cff32c26a5af6856a39640d251ad3a0', 'schoen.ezra@example.org', 'Et excepturi voluptas velit animi. Dignissimos officia impedit veritatis aut nihil sed. Inventore sit cupiditate suscipit quia ab fuga. Sunt nulla aut natus. Beatae odio ea reprehenderit ea.', 0, ' University of Massachusetts Amherst', 'Randy'),
(72, 'ytreutel', '114e9d217bf86f228b84bb5bb2777c917ba5b7fe', 'zbradtke@example.com', 'Rerum ab ipsa voluptates. Odio voluptas officia facilis iste nam. Quis et eos voluptas dolorum ducimus voluptas. Alias reprehenderit dolore maiores quo adipisci architecto a.', 0, ' Harvard University', 'Cordell'),
(73, 'shields.lenna', '228084f8488cf0e93a596e7071e315d9201394cd', 'mante.aimee@example.net', 'Laborum illo eum sed quo quia molestiae. Expedita sunt laudantium nesciunt porro non eaque aut distinctio. Et sit quo eum facilis qui. Dignissimos modi et quo suscipit libero vel.', 0, ' University of Rhode Island', 'Emanuel'),
(74, 'cronin.earline', '61263b753e38ac2fa5bf2c925c0a999a990cc3b7', 'smith.kyle@example.org', 'Non est molestias dolore veritatis. Numquam laboriosam aut eligendi ut quia libero. In beatae est iusto atque est non.', 0, 'Boston University', 'Moriah'),
(75, 'flo.medhurst', '82db45242305ef3cb1023be64757a8c061ba3f10', 'caleb99@example.net', 'Quo dolorem pariatur placeat accusamus quo. Eligendi est qui autem labore architecto voluptatem rerum. Qui quia odio vel ut eum nam. Ut quas aut minima id sint unde.', 0, ' University of Massachusetts Lowell', 'Tyrese'),
(76, 'ruben.ziemann', '5856e88cb2085fc6da0b2d84407fa6cd30bf52a2', 'brook38@example.org', 'Eligendi iste molestiae aut soluta. Velit provident perspiciatis deleniti id sit ut doloribus. Provident occaecati neque optio sapiente deleniti ea.', 0, ' University of Massachusetts Boston', 'Joshuah'),
(77, 'ryan.wilderman', 'e9ac096d5a50b94ce4a375912722312868e174b7', 'maureen.sauer@example.com', 'Eveniet cumque unde aut et in. Sed illo nisi ut perspiciatis explicabo qui. Suscipit laborum ipsa possimus voluptatibus ut dolor qui quo.', 0, ' University of New Hampshire Main Campus', 'Dangelo'),
(78, 'ewiza', '2d7e7d02ab86bba690ea87e6420d130f95cf1d65', 'americo38@example.net', 'Nihil voluptas tempora excepturi. Explicabo rem sit suscipit. Hic quia alias ducimus.', 0, 'Boston University', 'Bud'),
(79, 'sleannon', '3cd96ce1df0f30b312ea5efc146bdbf85fcbea11', 'jerod.abernathy@example.com', 'Veniam laborum voluptatem ut dignissimos. Quos suscipit fugiat nulla praesentium eum non. Id itaque perferendis eaque corporis omnis alias.', 0, ' University of Massachusetts Amherst', 'Elbert'),
(80, 'cassin.annamae', 'e6a16b8b7549dc66553e0a06b9abda8b355c59be', 'thiel.kara@example.com', 'Unde quia aut quisquam non facere ut quia. Voluptas quis magni pariatur deserunt. Repellat et nihil minus voluptatem voluptates sint.', 0, ' Southern New Hampshire University', 'Marc'),
(81, 'kassandra87', 'e66a8f1dae4cae16f3234dc23d74aeb53e8b0ede', 'fadel.favian@example.com', 'Eveniet fugiat sint omnis aperiam sunt qui harum veritatis. Reprehenderit consequatur assumenda ea architecto fugiat iure. Qui vitae aut beatae aut labore officiis.', 0, 'Boston University', 'Derick'),
(82, 'thiel.bernard', 'ead0ad9314046f77c904e658d1827a7fe6f2f43b', 'faye.hickle@example.com', 'Iusto dignissimos quisquam quo quo sunt et quis suscipit. Magni ipsa beatae vitae possimus. Quis dolores sed enim sapiente.', 0, ' University of Massachusetts Boston', 'Chase'),
(83, 'vandervort.grov', '0f380f5d548c5cf739840e80ea5f4382f5a9c5a1', 'ehermann@example.org', 'Qui eveniet adipisci suscipit consequatur non aliquid. Quo soluta qui qui est aspernatur dolorem aspernatur. Et voluptatem voluptatem id ullam nesciunt qui non. Laboriosam labore repellat nihil aut.', 0, ' University of New Hampshire Main Campus', 'Granville'),
(84, 'gaston14', '780166e0c8f722488c18189c159d98a8f14c0890', 'vince72@example.org', 'Vitae et deleniti voluptas et porro. Assumenda ad odit illo doloribus.', 0, ' Massachusetts Institute of Technology', 'Delmer'),
(85, 'zyundt', 'e85ad8b3a7e47b4513a592ed2a3d277d47a5fa04', 'predovic.colby@example.net', 'A distinctio earum ut repudiandae rerum nobis. Nihil placeat provident voluptate nulla. Sit enim non molestiae in ut.', 0, ' University of Vermont', 'Zachariah'),
(86, 'nannie.prohaska', '6685b230591be42ff371e1b50df6ca355fa48d1c', 'caitlyn.zulauf@example.org', 'Ab laudantium pariatur optio et. Nobis officiis debitis sunt numquam corporis vitae vel. Vel minus deleniti vero magnam.', 0, ' University of Vermont', 'Marcos'),
(87, 'conroy.trenton', 'f9c89935517351ed7443f97a82b95ad7af8fdcc9', 'susie64@example.net', 'Natus commodi sit autem dolores assumenda harum. Laborum eum tempora vitae rem rem. Mollitia sunt voluptatem deserunt eum quaerat voluptatem corrupti.', 0, ' University of Massachusetts Lowell', 'Triston'),
(88, 'tia.crooks', 'a8e956a574bb02f52bfb3e2558794481fa0ab92d', 'nicholaus36@example.net', 'Eos aut sit sunt neque ut facere fugit. Facere natus nesciunt dolor ratione libero. Optio tempore est error assumenda et. Aliquam ut velit veritatis consequatur voluptas excepturi ut dolore.', 0, ' Harvard University', 'Kennedy'),
(89, 'savion.o\'reilly', 'e847960bf0f2b303aac8421c5d6cee4602759a64', 'iva04@example.org', 'Rerum voluptatum autem culpa tempore. Ut consequuntur et id maxime vel. Aut veniam magni eligendi eos incidunt. Rerum aut error optio recusandae a saepe vero ullam.', 0, ' University of Connecticut', 'Alek'),
(90, 'emmanuel02', '8859cea22ce071166f05e41796da97b534da72a9', 'zrunte@example.com', 'Libero iste quas deserunt. Consequatur aut culpa reiciendis cumque incidunt totam. Est et blanditiis provident perferendis. Sequi ea quam atque assumenda hic.', 0, ' University of Massachusetts Amherst', 'Johan'),
(91, 'irwin73', '8db067d02a618b45adaf0a4cb1039bec38a8a8f8', 'vallie.dare@example.org', 'Blanditiis ea tempore voluptatem qui ipsa deserunt. Hic repellat rerum tempora in illum quibusdam.', 0, ' Harvard University', 'Joaquin'),
(92, 'mayra18', '377011fcf23964034c590eb2b8a4d436cb8b6051', 'arolfson@example.net', 'Quidem et minus enim. Asperiores vel maxime quod voluptates. Consequatur necessitatibus aut laborum. Cumque laborum optio rerum nihil aut.', 0, ' University of Vermont', 'Alexys'),
(93, 'kattie48', 'ff5b7c5630d359945fc3b022d20c1b951a78dfc2', 'lea50@example.com', 'Nam consequatur voluptatem voluptas maiores. Distinctio atque delectus natus ducimus.', 0, ' University of Vermont', 'Nico'),
(94, 'jamel.daugherty', '0c5de00a04e186b4b8d1992b046ef8d5d1f52bd2', 'elaina.kreiger@example.com', 'Accusantium et et quia at ex. Earum reprehenderit quo esse aut iste. Quis quibusdam autem recusandae exercitationem molestias. Quas et ratione quia ipsum et voluptatem porro qui.', 0, ' Yale University', 'Brandt'),
(95, 'theresa66', 'd41db9766797f2b844daefe2a7635123af2703b0', 'thalia.rempel@example.com', 'Dolorum autem consequuntur ut architecto sit. Sapiente sit blanditiis distinctio similique. Id eum dignissimos fugit perferendis magni aut ea. Quo quibusdam expedita aliquam tempore modi est.', 0, ' University of Vermont', 'Abdul'),
(96, 'grant.vivian', 'f69cd8c3803747b96c531fd483a7d823b6c2885e', 'everett58@example.com', 'Blanditiis et impedit veniam autem molestiae velit error. Aut tenetur cupiditate voluptatum corporis aliquid qui sit earum. Molestiae ex quam beatae nihil.', 0, ' Harvard University', 'Stuart'),
(97, 'imoore', '09c8061eab3245def437fb8ccdd6b95260432088', 'kmcglynn@example.net', 'At aspernatur ut quia voluptatem. Delectus voluptas rerum quam rerum ut qui quidem. Sunt quas est asperiores totam in est. Qui aliquid quia voluptatem non sed.', 0, ' University of New Hampshire Main Campus', 'Dejon'),
(98, 'reilly87', 'f0bfcbe24556e7d749c595f74c34aa3669fca58d', 'xsmith@example.com', 'Totam suscipit eos quaerat ut impedit dolores est. Odit sapiente quam laudantium velit. Necessitatibus quaerat sit rem in hic in reprehenderit. Sint ea sed et ut.', 0, 'Boston University', 'Art'),
(99, 'rae28', '1291117e4dcc46be28dc3c6344a3e0de82cf6d17', 'felton54@example.net', 'Soluta fugiat debitis velit ullam qui. Beatae incidunt autem eligendi.', 0, ' Northeastern University', 'Obie'),
(100, 'zvandervort', 'ba4f8465b61ccccd5d1c871b8bfe5335b95c1acd', 'nreichert@example.com', 'Delectus aut tenetur sunt maxime error beatae. Et ipsa et eveniet voluptatem sint dolores modi. Temporibus minima nobis nemo voluptas aut sed.', 0, ' Boston College', 'Rusty'),
(102, 'admin', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', NULL, NULL, NULL, NULL, NULL),
(103, 'user', '$1$salt0123$.yA7p3SZo7SXM2nRlihWQ0', NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertises`
--
ALTER TABLE `advertises`
  ADD PRIMARY KEY (`product_id`,`trade_ad_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `REVIEW_trade` (`trade_id`);

--
-- Indexes for table `trade_ad`
--
ALTER TABLE `trade_ad`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trade_request`
--
ALTER TABLE `trade_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seller` (`seller`),
  ADD KEY `buyer` (`buyer`),
  ADD KEY `request` (`request`),
  ADD KEY `offer` (`offer`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=420;

--
-- AUTO_INCREMENT for table `trade_ad`
--
ALTER TABLE `trade_ad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `trade_request`
--
ALTER TABLE `trade_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
