-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2018 at 05:21 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";
DROP DATABASE IF EXISTS collegeCraft;
CREATE DATABASE IF NOT EXISTS collegeCraft;
USE collegeCraft;
DROP TABLE IF EXISTS users, roles, product, comments, sells, reputation, trade_ad, review;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `collegecraft`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `trade_ad_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `review` varchar(256) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `trade_ad_id`, `user_id`, `review`, `rating`) VALUES
(2, 2, 2, 'Laboriosam ducimus in neque.', 191473),
(3, 3, 3, 'Harum molestias sed ab veniam autem.', 8439968),
(4, 4, 4, 'A ea asperiores atque dolorem qui.', 807),
(5, 5, 5, 'Debitis necessitatibus omnis sed consequatur ea facere impedit.', 5966),
(6, 6, 6, 'Praesentium quisquam maiores id et.', 1269),
(7, 7, 7, 'Molestiae quisquam rerum nulla non.', 3),
(8, 8, 8, 'Perferendis est nemo consequatur asperiores minima voluptatem et quas.', 181990),
(9, 9, 9, 'Optio reprehenderit qui qui qui quasi delectus.', 2),
(10, 10, 10, 'Laboriosam possimus dolores quis labore corrupti deserunt.', 5156130),
(11, 11, 11, 'Quia ullam tempora ut aperiam saepe doloribus labore.', 290059),
(12, 12, 12, 'Distinctio cumque quo provident omnis quia quia.', 599672),
(13, 13, 13, 'Minus eum consequatur deleniti.', 24),
(14, 14, 14, 'Et molestiae dolores consectetur nihil.', 0),
(15, 15, 15, 'Enim animi aliquid qui ut et consequatur.', 9902699),
(16, 16, 16, 'Nobis id nihil qui inventore tenetur.', 0),
(17, 17, 17, 'Totam dolores deleniti qui et maxime.', 0),
(18, 18, 18, 'Sed dolore non qui est autem ipsum.', 223953809),
(19, 19, 19, 'Necessitatibus tempora placeat recusandae sit.', 714946897),
(20, 20, 20, 'Ex odit quaerat deserunt sit odio cupiditate qui.', 0),
(21, 21, 21, 'Quas consequatur non excepturi ab.', 0),
(22, 22, 22, 'Eum et veniam tenetur provident.', 775),
(23, 23, 23, 'Quae perferendis est alias eaque iste.', 9947195),
(24, 24, 24, 'Culpa vitae alias voluptas corrupti sunt.', 356),
(25, 25, 25, 'Consequuntur enim sunt quos totam accusamus ex sequi.', 8119),
(26, 26, 26, 'Id quae libero est consequatur ut est quod.', 985508),
(27, 27, 27, 'Aut sed velit porro ipsa.', 52354),
(28, 28, 28, 'Est ut assumenda asperiores numquam.', 2844626),
(29, 29, 29, 'Pariatur non aut sit voluptate ratione tempora.', 45460509),
(30, 30, 30, 'Omnis culpa ab odit veniam eligendi.', 17901017),
(31, 31, 31, 'Facere est facilis corrupti eveniet et.', 4),
(32, 32, 32, 'Commodi fugiat expedita omnis nemo ut possimus.', 9268),
(33, 33, 33, 'Unde eligendi beatae quia magnam quae deserunt optio non.', 65465846),
(34, 34, 34, 'Quis ut ut asperiores omnis.', 0),
(35, 35, 35, 'Occaecati quas explicabo est cumque assumenda nulla animi.', 212),
(36, 36, 36, 'Quos dolorem dolore quod corrupti consectetur ex autem.', 2303),
(37, 37, 37, 'Sint aut quia est minus.', 53043),
(38, 38, 38, 'Corporis minus beatae totam consequuntur voluptates numquam.', 79),
(39, 39, 39, 'Quam vel magni est quos ex ea.', 68175593),
(40, 40, 40, 'Eius dolorem odio numquam eveniet voluptate.', 295142295),
(41, 41, 41, 'Libero quo repellat dolorem in harum et sit.', 463),
(42, 42, 42, 'Vel suscipit molestiae voluptate eius.', 0),
(43, 43, 43, 'Quasi consequuntur iure iusto deleniti vel enim.', 1),
(44, 44, 44, 'Qui aut laudantium voluptas aut.', 516094521),
(45, 45, 45, 'Fuga accusamus et excepturi et rerum ut.', 7585747),
(46, 46, 46, 'Magni magni corrupti aut eos ullam aut minus.', 206),
(47, 47, 47, 'Saepe placeat ipsam consectetur delectus.', 223),
(48, 48, 48, 'Deleniti eos provident et corrupti quas.', 695825578),
(49, 49, 49, 'Autem voluptate voluptatem perferendis.', 129),
(50, 50, 50, 'Suscipit rerum quasi optio molestiae ipsum ut.', 1356),
(51, 51, 51, 'Corrupti consectetur voluptas recusandae voluptatem et.', 839893),
(52, 52, 52, 'Dolorem numquam esse repudiandae neque.', 506178),
(53, 53, 53, 'Esse minus excepturi corporis praesentium.', 483),
(54, 54, 54, 'Esse eos nulla nisi sit sunt impedit.', 49936397),
(55, 55, 55, 'Dolores facilis quis enim maxime ducimus voluptates corrupti.', 375101446),
(56, 56, 56, 'Cupiditate placeat qui est mollitia beatae aut.', 50068728),
(57, 57, 57, 'Minima molestiae dolores ratione nemo consequatur voluptatem.', 812217020),
(58, 58, 58, 'Sunt tempora quos error blanditiis voluptas.', 29257),
(59, 59, 59, 'Nesciunt voluptatem asperiores et voluptate quaerat.', 944),
(60, 60, 60, 'Et ut nemo repellendus culpa.', 52722),
(61, 61, 61, 'Et magnam alias nihil maxime aut.', 690999),
(62, 62, 62, 'Voluptas et quam accusantium deleniti accusantium vitae facilis.', 696821696),
(63, 63, 63, 'Laborum aut aut nihil.', 261),
(64, 64, 64, 'Explicabo et veritatis laboriosam ipsum inventore voluptatem.', 0),
(65, 65, 65, 'Consequatur laudantium at maiores corrupti et.', 66123),
(66, 66, 66, 'Debitis labore qui delectus omnis reprehenderit temporibus minima.', 8707531),
(67, 67, 67, 'Sunt omnis omnis consequatur ut sequi et adipisci.', 3),
(68, 68, 68, 'Aut earum aut quos quia.', 465),
(69, 69, 69, 'Dolorem et magnam molestias ullam pariatur fugiat totam eaque.', 3012),
(70, 70, 70, 'Ipsum et eveniet ut laborum perferendis aliquam.', 9794136),
(71, 71, 71, 'Ea quis eum maxime sed officia.', 6898),
(72, 72, 72, 'Consequuntur non quia et reprehenderit quo.', 947207023),
(73, 73, 73, 'Tempore beatae ut vero quod.', 7746826),
(74, 74, 74, 'Velit illum impedit impedit aut veniam modi ipsum atque.', 609),
(75, 75, 75, 'Cupiditate asperiores officia tempore dolorem suscipit enim nihil.', 51473),
(76, 76, 76, 'Natus veritatis aperiam ipsam qui doloremque expedita.', 241785),
(77, 77, 77, 'Nemo nobis enim sint.', 32237),
(78, 78, 78, 'Voluptatem exercitationem hic laudantium sit.', 7418),
(79, 79, 79, 'Accusantium officia vitae eum deleniti inventore aut et.', 90),
(80, 80, 80, 'Qui placeat sequi nihil voluptatum.', 114229),
(81, 81, 81, 'At eius tempora vero aut dolor.', 7),
(82, 82, 82, 'Adipisci et voluptate quia qui asperiores dolorum.', 745),
(83, 83, 83, 'Laborum voluptatibus dignissimos sequi in.', 72),
(84, 84, 84, 'Molestiae magni quisquam expedita nemo natus illum rerum.', 8),
(85, 85, 85, 'Amet odit qui voluptas placeat quis voluptatem velit ab.', 5730),
(86, 86, 86, 'Dolores voluptatem incidunt aut nobis illo.', 60),
(87, 87, 87, 'Nihil explicabo quis error veritatis.', 0),
(88, 88, 88, 'Dolorem optio nihil maiores ut dolorum dolore.', 99),
(89, 89, 89, 'Autem suscipit minus a dolore et ad.', 9496),
(90, 90, 90, 'Est delectus esse quidem et minus molestiae.', 31730371),
(91, 91, 91, 'Quibusdam non ut ipsum.', 3),
(92, 92, 92, 'Nemo accusantium sunt et doloremque ea quaerat necessitatibus vitae.', 256797),
(93, 93, 93, 'Dicta cumque est laudantium.', 60609706),
(94, 94, 94, 'Et omnis iusto fuga excepturi voluptatem.', 2),
(95, 95, 95, 'Repudiandae repellat modi saepe expedita.', 9860115),
(96, 96, 96, 'Tempora dolor assumenda rerum ratione perspiciatis enim corrupti.', 6),
(97, 97, 97, 'Debitis quia molestiae ullam sit illum quos repudiandae.', 8898),
(98, 98, 98, 'Eum quis placeat velit vel consequatur placeat.', 53),
(99, 99, 99, 'Dignissimos eaque aspernatur adipisci et cumque.', 7010028),
(100, 100, 100, 'Corporis sapiente ea modi occaecati qui.', 0);

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
(1, ' book', 'Quia iste aut saepe est voluptas ut quibusdam. Non cum eveniet quia ut. Error ut consequuntur omnis. Voluptas ea dolor maiores recusandae assumenda in ut mollitia.', ' books'),
(2, ' camera', 'Quia omnis non iusto magni. Similique voluptatem qui accusamus impedit perspiciatis. Itaque quibusdam autem rerum natus delectus ipsum qui.', ' electronics'),
(3, ' stapler', 'Neque ullam nam odit ut nesciunt vero. Non harum et ea voluptas excepturi illum. Impedit pariatur possimus omnis quia occaecati corrupti itaque. Vero id a rem autem at.', ' books'),
(4, ' notebook', 'Voluptas et consequatur fugit atque ratione vel voluptate. Assumenda quia est perferendis quis. Quis ratione quia nulla ea. Delectus enim enim repellendus modi quia vel dolorem.', ' books'),
(5, ' monitor', 'Aut sit illo cupiditate et. Omnis autem blanditiis officiis rerum praesentium. Inventore officiis et nostrum. Sint quos molestiae minima totam reiciendis et et.', ' dorm'),
(6, ' phone', 'Aliquam qui aspernatur numquam enim maxime sed corporis praesentium. Sed quam beatae sunt similique voluptas deleniti. Rerum ipsum omnis libero consectetur vitae omnis quaerat.', ' dorm'),
(7, ' ruler', 'Voluptatum voluptates non quo inventore nemo sit iure. Veniam sapiente libero eos similique. Nam est excepturi in ut alias. Repellat fuga sed porro aperiam.', ' books'),
(8, ' shoes', 'Fugit et inventore commodi ut omnis accusantium. Ipsum nam perspiciatis reiciendis quidem et.', ' books'),
(9, ' mini-fridge', 'Quia modi laudantium perspiciatis enim. Ipsam velit non quis. Quia et est accusantium suscipit aspernatur.', 'school'),
(10, ' hat', 'Commodi nesciunt et possimus ab delectus nostrum. Nulla nemo deleniti occaecati optio blanditiis veritatis sunt. Ratione est quisquam molestiae rerum ut adipisci exercitationem aliquid. Atque illo nam quis aut.', ' electronics'),
(11, 'pencil', 'Aliquid dolorum autem accusamus expedita aliquid qui recusandae. Illo et similique consequuntur quo quidem sed et. Quos voluptates ea et vel et excepturi. Consequatur debitis nemo cumque.', ' dorm'),
(12, ' monitor', 'Et labore in tenetur possimus. Voluptas eos ex similique omnis. Quia suscipit non fuga praesentium vero incidunt nisi id.', ' books'),
(13, ' air-conditioner', 'Sit voluptas voluptate nostrum quod id culpa. Recusandae quas id ut sint. Eveniet eligendi rerum est corrupti. Doloremque architecto ipsa veniam possimus ipsum sit culpa id.', ' books'),
(14, ' shirt', 'Sint animi provident voluptate et vero. Harum vel atque iste illum. Perspiciatis rem aut doloribus ut et voluptas fuga.', ' electronics'),
(15, ' phone', 'Eius necessitatibus molestiae cumque cumque id nesciunt at. Enim numquam quas qui sunt sunt aut. Nisi deleniti maxime sequi in illo. Voluptatem sunt tempora accusantium voluptate soluta.', 'school'),
(16, ' phone', 'Iste dolorum praesentium sequi laudantium eos illo dignissimos perspiciatis. Et enim rem non alias fuga. Odio occaecati eos non id. Dolore perspiciatis a quo voluptatum qui corporis doloremque qui.', 'school'),
(17, ' hoody', 'Ea iste saepe esse quaerat atque nulla ipsum. Quam alias repellendus deserunt quis cupiditate. Sunt voluptatem tenetur facilis quis quia qui.', 'school'),
(18, ' shoes', 'Est corrupti praesentium nihil ea explicabo. Eos esse et quidem mollitia. Incidunt et deleniti dolor et.', ' books'),
(19, ' pants', 'Eos facilis quasi sunt hic nulla sunt iste. Et minus molestias est explicabo voluptas. Aspernatur eius minima fugiat ullam dignissimos. Commodi voluptas sit rem sed magnam.', ' electronics'),
(20, ' phone', 'Consequuntur debitis aut sed neque rerum. Rerum quae voluptatem ut sit iusto voluptatibus dolorum. Aliquam animi ut esse voluptatum. Animi sunt consequatur dicta ut quas.', ' electronics'),
(21, ' stick-notes', 'Sint cum laboriosam adipisci. Perferendis voluptas sit non ad laboriosam. Id nulla necessitatibus porro reiciendis est. Eveniet asperiores autem voluptatem nesciunt aut deserunt.', 'school'),
(22, ' hat', 'Molestiae et quibusdam incidunt ratione dolorem quibusdam. Sunt cupiditate aut eaque saepe modi. Veritatis porro et nihil velit.', 'school'),
(23, ' shirt', 'Eius quod voluptatem expedita sint impedit soluta error. Sunt repellat doloribus porro inventore libero esse.', 'school'),
(24, ' keyboard', 'Facilis aut quidem numquam ad minima voluptatum vel. Eos perferendis sunt numquam deleniti. Et totam voluptatem ex culpa.', ' dorm'),
(25, ' poster', 'Impedit inventore labore est non et dolor. Delectus consequatur corporis ex corporis. Similique quia veniam corporis hic a ut voluptates.', ' dorm'),
(26, ' notebook', 'Natus sit explicabo ratione illum et. Repellat qui sed similique voluptates cumque. Nemo quia cumque rerum.', ' electronics'),
(27, ' poster', 'In omnis atque quasi voluptas. Repellendus minus veritatis quis maiores molestiae voluptas ratione. Et consequuntur perspiciatis vel culpa et mollitia voluptas eligendi.', 'school'),
(28, ' shirt', 'Voluptas rerum nihil nemo vero aut. Sit dicta possimus vel fugit ea. Dignissimos et ab a fugit. Veritatis eligendi impedit saepe sed. Quo sunt et quae repellendus repellat quidem dolorum.', ' dorm'),
(29, ' camera', 'Optio libero temporibus possimus asperiores. Sunt voluptas aspernatur et id. Numquam temporibus id vero fuga aut vero. Rerum quis inventore ex asperiores quos.', ' books'),
(30, ' camera', 'Aperiam distinctio alias labore praesentium libero. Omnis voluptatem mollitia dolore.', ' dorm'),
(31, ' monitor', 'Cupiditate voluptatem sed quisquam. Ducimus veritatis aut et et. Est nisi cupiditate et necessitatibus occaecati. Nam unde natus reprehenderit nobis.', ' dorm'),
(32, ' shirt', 'Qui error soluta veniam occaecati in illum. Doloremque est ad debitis magni. Consequatur nostrum aliquid illo nostrum quae sed.', ' books'),
(33, ' shirt', 'Quas hic placeat qui fugit doloribus facilis sint. Quasi dolorum eos amet quos. Non magnam placeat magni sapiente facere. Suscipit aperiam tenetur explicabo ea.', 'school'),
(34, ' air-conditioner', 'Nemo inventore inventore asperiores iste fugit odio inventore hic. Et et corrupti distinctio adipisci. Saepe autem quaerat autem cupiditate et et maiores. Ullam doloremque dicta aut est quod omnis maiores.', ' dorm'),
(35, ' stick-notes', 'Debitis quibusdam ipsa ut qui enim architecto voluptatem. Et aut asperiores illum impedit.', ' electronics'),
(36, ' ruler', 'Vitae incidunt dolores placeat dolor asperiores. Qui ut consequuntur qui enim ut. Et voluptate fugit repellat officiis est quam incidunt.', ' books'),
(37, 'pencil', 'Corrupti quasi sequi debitis sed. Et natus dolorem velit nihil id quis.', ' electronics'),
(38, ' shoes', 'Ducimus dolores id perferendis tenetur voluptas officia similique. Consequatur adipisci et animi fugiat. Alias iusto sequi et explicabo provident. Modi voluptatum nemo voluptas commodi.', 'school'),
(39, ' shoes', 'Nulla maiores sit unde rerum similique consectetur. A occaecati nam cupiditate beatae consectetur. Doloremque deserunt voluptatibus ullam nesciunt quia nisi. Voluptas aspernatur vel mollitia ipsam accusamus porro expedita.', 'school'),
(40, ' hoody', 'Molestiae reiciendis soluta illum repellendus et. Eum et omnis deserunt ut pariatur. Aspernatur eos consectetur id quos quis assumenda.', ' dorm'),
(41, ' book', 'Sed eveniet minus est inventore ipsam voluptatem cumque. Qui tenetur rem sit mollitia velit sapiente soluta molestiae. Amet sunt dolores et nulla quam amet nihil sit.', ' books'),
(42, ' stapler', 'Iure rem voluptas cum. Et tempora quod laudantium nisi blanditiis corporis et. Quo consequatur error eligendi nihil ut.', ' books'),
(43, ' notebook', 'Quia necessitatibus illo rem sint magnam. Excepturi veritatis ut quas iusto quae. Ea doloremque qui quidem porro earum rerum dolores. Saepe eos ut dolorem maxime assumenda aspernatur accusamus.', 'school'),
(44, ' stapler', 'Voluptas deleniti dolorem quia velit tempore. Eligendi quia consectetur voluptatum porro. Cum numquam culpa rerum omnis dolor natus aut.', 'school'),
(45, ' hat', 'Qui fuga in voluptates alias quod optio deserunt. Alias vel incidunt quibusdam doloremque aut. Veritatis impedit praesentium laboriosam sed quam vel repellat.', ' books'),
(46, ' notebook', 'Cupiditate eaque ut eos. Sit dolorem rerum a quae culpa maiores animi. Qui molestias aut magnam est adipisci fugiat. Nemo vero culpa illo numquam.', ' dorm'),
(47, ' keyboard', 'Optio et qui iure occaecati quia. Excepturi molestias laudantium et itaque voluptatibus esse minima. Voluptatum voluptatem voluptates ad aut quidem ipsa.', 'school'),
(48, ' stick-notes', 'Quia aspernatur quia reiciendis molestiae illo repellendus itaque. Est vel ad accusantium facilis magni sint adipisci praesentium. Asperiores ipsa minus facilis. Error omnis nisi sunt magnam atque.', 'school'),
(49, ' mouse', 'Molestiae nihil aliquid aliquam temporibus. Non molestiae quis et molestiae. Adipisci cum suscipit non omnis quam eligendi. Autem in tempore vero.', ' books'),
(50, ' mouse', 'Eveniet corporis soluta soluta similique nisi tempora aut ea. At optio magni voluptas sunt ipsam velit. Aspernatur deserunt sequi sequi ullam in ut neque sunt. Molestiae eos beatae et dolorum delectus odit eaque. Et earum eum officia quae.', ' dorm'),
(51, ' air-conditioner', 'Enim similique maxime occaecati eius. Doloremque consectetur ut tempore quas iusto veniam. Eveniet facilis sequi hic maiores facilis aut.', ' electronics'),
(52, ' shirt', 'Dolor consequatur facere velit id quo. Et natus rem similique et maiores quia distinctio. Sequi illo sequi omnis nisi. Laudantium et dolores cumque perferendis et est.', ' dorm'),
(53, ' book', 'Et ducimus qui quaerat laborum. Ullam ad eaque sed laudantium dolor error modi. Id at est accusantium. Possimus consequatur iste dolores iste.', ' books'),
(54, ' mouse', 'Autem quasi qui sint laudantium. Velit ipsum repudiandae tenetur eius aperiam quam animi libero. Incidunt fugit voluptatibus soluta voluptatem similique. Nemo similique ex nesciunt pariatur eveniet. Earum dolorem natus non.', ' dorm'),
(55, ' flashlight', 'Libero quia voluptatem suscipit ducimus harum autem excepturi. Dolores non architecto aut sunt quibusdam vel perspiciatis deserunt. Et et accusamus ex aut voluptatem rerum corporis dolor.', ' dorm'),
(56, ' stick-notes', 'Deleniti nam sed dolor eos nulla. Esse sequi adipisci ea quasi sapiente ut. Dolor sint doloribus dolore sit.', ' dorm'),
(57, ' hoody', 'Asperiores cumque sed sit laboriosam molestias. Soluta vel sed quis. Ut sapiente accusantium ratione quia error.', 'school'),
(58, ' stapler', 'Tenetur sint iusto minus voluptatem. Odit voluptas facilis labore facere quia ut. Animi ipsam ea consequatur illo fuga est nihil a.', ' electronics'),
(59, ' mini-fridge', 'Rerum omnis accusamus saepe et aut rerum. Vel et doloremque tempora sed est. At eveniet ad doloribus sit dolores voluptatem. Blanditiis esse neque modi ratione asperiores reiciendis. Laudantium consectetur accusantium cumque est voluptatem possimus omnis.', ' dorm'),
(60, ' stapler', 'Dolore nihil corporis in nisi enim. Amet possimus omnis similique debitis et aut repudiandae. Perferendis laboriosam in minima et vel sunt qui totam.', ' books'),
(61, ' flashlight', 'Natus consequuntur voluptatum voluptates natus. Dolorem ratione illum fugiat et placeat. Saepe vitae dolorem neque. Dolore ab fugiat dicta necessitatibus aliquam ut.', 'school'),
(62, ' camera', 'Officia possimus incidunt eos vitae et. Eos nisi enim libero quas. Libero necessitatibus illum est hic vitae quidem sint aut.', ' books'),
(63, ' stick-notes', 'Nesciunt aut amet alias ex. Temporibus et fugiat hic alias. Voluptas fugiat odit totam voluptates fugit sed. Optio id consequatur labore ad quisquam et aperiam.', ' electronics'),
(64, ' hoody', 'Earum ratione ullam odio dolorum sunt et illum. Et aut exercitationem blanditiis voluptatem. Quidem doloribus consequatur et commodi.', ' dorm'),
(65, ' pants', 'Illum autem modi quia. Id quasi rerum laborum alias dicta sint neque sed. Tempora et magnam voluptatem similique est.', ' books'),
(66, ' mouse', 'Accusamus quaerat voluptatibus aut maxime unde. Ab incidunt et ipsa. Enim consequatur dolorum amet nemo quis unde.', ' electronics'),
(67, 'pencil', 'Voluptatum qui doloremque maiores ut nihil. Ratione est aut molestiae delectus deleniti. Nulla ea nobis fuga voluptas aliquid ut aperiam officiis. Sit ducimus blanditiis dolores non quasi earum aspernatur.', ' dorm'),
(68, ' pants', 'Est cupiditate vero aut maxime ut sed. Pariatur et vero impedit ad ut atque laboriosam unde. Sit et facilis voluptas consequatur eos. Sit est quis est qui.', 'school'),
(69, ' shoes', 'A temporibus soluta id eveniet. Explicabo laboriosam cum quaerat. Culpa cumque doloremque asperiores vel ullam voluptas omnis. Sit assumenda odio qui dolorum nisi provident et.', ' dorm'),
(70, ' mouse', 'Quisquam quia nemo eos voluptate iste et ipsum. Quis quia dolores sit aut eum animi. Nemo pariatur praesentium architecto voluptas voluptatem. Quia itaque ut eos reprehenderit dolor quia voluptates. Facilis magnam debitis aut nisi illum nesciunt.', 'school'),
(71, ' ruler', 'Suscipit ea quia libero. Sit ullam ut expedita et quis iusto rerum. Illo praesentium laudantium velit tenetur voluptatem deserunt veritatis. Dolorum debitis ducimus alias qui nihil ducimus facilis. Quia tempore earum et consectetur.', ' electronics'),
(72, ' stick-notes', 'Molestiae nisi quo quisquam aut. Et dolorem dolores repellendus eum rerum. Corrupti porro quod repudiandae eos soluta necessitatibus voluptatem.', ' dorm'),
(73, ' camera', 'Et qui neque odit facere omnis provident reprehenderit provident. Nihil nisi assumenda libero consequatur animi. Placeat labore praesentium ad. Mollitia blanditiis omnis eum libero illum aut.', ' dorm'),
(74, ' hoody', 'Cumque saepe sit minus. Eos quis error quae iste. Accusantium odio voluptatem modi et. Magni dolore sed voluptates.', ' books'),
(75, ' hoody', 'Amet fugit rerum temporibus voluptas quia minus sit. Temporibus corporis est id est. Harum qui voluptatem velit. Quibusdam aperiam culpa voluptatem natus distinctio nam.', ' electronics'),
(76, 'pencil', 'Magni ipsum aut beatae quam. Quibusdam nihil culpa dolorem et molestiae et est. Est asperiores labore quibusdam quisquam omnis. Unde quaerat adipisci aut sed cupiditate accusantium rerum.', ' electronics'),
(77, ' keyboard', 'Ea et est et et. Vel architecto ea sunt occaecati ut amet et sit. Consectetur atque cumque est id distinctio.', ' dorm'),
(78, ' shirt', 'Animi et rerum animi pariatur velit porro. Et amet et in magnam laudantium. Voluptates voluptate et odio a quo accusamus quaerat. Et qui ad omnis est. Ab laudantium similique quia.', ' dorm'),
(79, ' hoody', 'Sunt ipsum et tempore corrupti voluptatibus repellat amet. Autem ea quia qui ipsa neque. Sed commodi sequi velit voluptates nostrum recusandae doloremque cumque.', ' books'),
(80, ' book', 'Eaque qui officia a optio. Ut libero et odio blanditiis magnam et vero. Porro facilis ut maxime quis aut.', ' electronics'),
(81, ' book', 'Eum dolores eos quia voluptas. Suscipit optio voluptatum accusantium incidunt rerum. Asperiores distinctio maiores eligendi eos consequatur pariatur magnam sequi.', 'school'),
(82, ' shoes', 'Vel eos atque et nam libero facere et in. Rerum et ut aut quasi est. Perferendis earum quo enim minima animi. Maiores mollitia dignissimos aut inventore.', 'school'),
(83, ' poster', 'Et distinctio enim natus dolorum inventore qui. Eius ducimus maiores perferendis molestiae asperiores et et. Iusto eos exercitationem neque repellendus et esse eveniet. Hic dicta impedit commodi occaecati ea est dolore iusto. Laboriosam ullam voluptatibus ', 'school'),
(84, ' stapler', 'Dolores modi nihil exercitationem eum impedit optio id. Quasi commodi vitae et deserunt atque animi qui. Et soluta aliquam at. Voluptas optio consectetur dolore aut.', 'school'),
(85, ' stick-notes', 'Dolore illo voluptate impedit ea aliquid ut. Reiciendis molestias placeat numquam consequatur. Voluptate voluptatem officia tempora vero inventore. Aspernatur totam tempora facilis cupiditate vitae cumque suscipit.', 'school'),
(86, ' flashlight', 'Repudiandae qui voluptatem facere esse reiciendis. Harum quo omnis temporibus exercitationem. Sit minima ipsum fugit ut. Voluptatem non sed deserunt ut voluptatem.', ' electronics'),
(87, ' hoody', 'Dolorem laboriosam unde ipsum voluptas esse laborum. Et excepturi natus et magnam repudiandae fuga minima. Earum consequatur non consequatur ut. Eveniet omnis architecto facilis ut incidunt quidem.', 'school'),
(88, ' ruler', 'Sunt numquam et repellendus. Natus et sed quae et animi non quia. Repellendus natus magni a est.', ' books'),
(89, ' air-conditioner', 'Nostrum quidem eaque sed laudantium dolorem. Officiis et sunt ipsa praesentium soluta. Eaque quis qui et aut.', ' electronics'),
(90, ' flashlight', 'Vel debitis quibusdam cumque consequatur quaerat sunt. Modi adipisci nam quis quia. Odit consequatur ea veniam iusto corporis. Omnis quia est alias et.', ' dorm'),
(91, ' keyboard', 'Officiis rerum commodi dicta quasi. Consequatur temporibus dolorem quae voluptates et aspernatur. Et quasi qui labore.', 'school'),
(92, ' ruler', 'Quo nam qui at quisquam sed facilis. Beatae ducimus in eligendi ducimus consequatur ipsam. Alias sequi eveniet accusantium numquam ut eveniet.', ' books'),
(93, 'pencil', 'Sit optio suscipit dolorem commodi. Accusamus voluptas rerum blanditiis itaque. Quos magni aut perferendis et voluptas.', ' books'),
(94, ' mini-fridge', 'Natus unde architecto quos et ullam quo. Soluta consectetur temporibus mollitia quae beatae. Aperiam provident possimus eum.', 'school'),
(95, 'pencil', 'Fuga animi nam officiis vel nihil non voluptas. Aut incidunt temporibus vel. Voluptates porro et expedita eos doloribus id voluptates.', 'school'),
(96, ' mini-fridge', 'Et beatae ut magnam dicta nostrum a. Aut laborum accusamus cum saepe sit unde. Atque sequi est quas tenetur cupiditate totam sapiente.', ' books'),
(97, ' monitor', 'Enim qui necessitatibus facilis praesentium veritatis vitae nam. Est aspernatur tempora quasi iure optio fugiat sint id. Hic animi ut officia repellat quis dolorem.', ' electronics'),
(98, ' mini-fridge', 'Eos est quia qui labore velit ex. Est et ut vel atque deleniti. Quae ipsam illo est illo consequatur. Quia voluptas magnam at necessitatibus voluptates.', ' electronics'),
(99, ' shoes', 'Enim sint ipsum porro at. Voluptatem quo qui quo ipsa vero. Optio non est omnis eos ipsam.', 'school'),
(100, ' shoes', 'Laborum non porro quos molestiae eaque quam officia error. Amet quisquam quia et ipsum. Sit consequatur molestias aut sit cum id qui nesciunt. Ea nam est ipsam qui.', ' books');

-- --------------------------------------------------------

--
-- Table structure for table `reputation`
--

CREATE TABLE `reputation` (
  `id` int(11) NOT NULL,
  `trust_level` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `review` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `review`, `product_id`) VALUES
(2, 4, 2),
(3, 1, 3),
(4, 2, 4),
(5, 8, 5),
(6, 5, 6),
(7, 9, 7),
(8, 8, 8),
(9, 8, 9),
(10, 1, 10),
(11, 7, 11),
(12, 1, 12),
(13, 1, 13),
(14, 2, 14),
(15, 1, 15),
(16, 1, 16),
(17, 4, 17),
(18, 9, 18),
(19, 3, 19),
(20, 2, 20),
(21, 5, 21),
(22, 1, 22),
(23, 0, 23),
(24, 1, 24),
(25, 4, 25),
(26, 5, 26),
(27, 5, 27),
(28, 3, 28),
(29, 5, 29),
(30, 2, 30),
(31, 2, 31),
(32, 7, 32),
(33, 9, 33),
(34, 5, 34),
(35, 0, 35),
(36, 8, 36),
(37, 2, 37),
(38, 9, 38),
(39, 4, 39),
(40, 6, 40),
(41, 5, 41),
(42, 0, 42),
(43, 0, 43),
(44, 2, 44),
(45, 5, 45),
(46, 0, 46),
(47, 1, 47),
(48, 0, 48),
(49, 6, 49),
(50, 9, 50),
(51, 6, 51),
(52, 1, 52),
(53, 8, 53),
(54, 5, 54),
(55, 3, 55),
(56, 6, 56),
(57, 3, 57),
(58, 9, 58),
(59, 4, 59),
(60, 9, 60),
(61, 6, 61),
(62, 9, 62),
(63, 5, 63),
(64, 6, 64),
(65, 1, 65),
(66, 9, 66),
(67, 3, 67),
(68, 5, 68),
(69, 4, 69),
(70, 0, 70),
(71, 6, 71),
(72, 6, 72),
(73, 7, 73),
(74, 7, 74),
(75, 8, 75),
(76, 2, 76),
(77, 7, 77),
(78, 3, 78),
(79, 4, 79),
(80, 5, 80),
(81, 7, 81),
(82, 0, 82),
(83, 6, 83),
(84, 5, 84),
(85, 6, 85),
(86, 7, 86),
(87, 9, 87),
(88, 6, 88),
(89, 8, 89),
(90, 6, 90),
(91, 4, 91),
(92, 0, 92),
(93, 5, 93),
(94, 7, 94),
(95, 6, 95),
(96, 4, 96),
(97, 5, 97),
(98, 4, 98),
(99, 3, 99),
(100, 2, 100);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role`) VALUES
(1, ' Admin'),
(2, ' Admin'),
(3, ' Admin'),
(4, ' Admin'),
(5, ' Buyer'),
(6, ' Buyer'),
(7, 'Seller'),
(8, ' Buyer'),
(9, ' Buyer'),
(10, ' Buyer'),
(11, ' Buyer'),
(12, ' Admin'),
(13, 'Seller'),
(14, 'Seller'),
(15, ' Buyer'),
(16, 'Seller'),
(17, ' Admin'),
(18, ' Buyer'),
(19, ' Admin'),
(20, ' Admin'),
(21, ' Admin'),
(22, ' Buyer'),
(23, ' Admin'),
(24, ' Buyer'),
(25, 'Seller'),
(26, ' Buyer'),
(27, 'Seller'),
(28, ' Admin'),
(29, ' Admin'),
(30, ' Buyer'),
(31, ' Buyer'),
(32, ' Buyer'),
(33, ' Buyer'),
(34, ' Admin'),
(35, ' Admin'),
(36, ' Buyer'),
(37, ' Buyer'),
(38, ' Admin'),
(39, 'Seller'),
(40, ' Buyer'),
(41, ' Admin'),
(42, 'Seller'),
(43, ' Admin'),
(44, ' Admin'),
(45, 'Seller'),
(46, 'Seller'),
(47, ' Buyer'),
(48, ' Admin'),
(49, ' Admin'),
(50, ' Buyer'),
(51, 'Seller'),
(52, ' Admin'),
(53, 'Seller'),
(54, ' Buyer'),
(55, ' Buyer'),
(56, ' Admin'),
(57, 'Seller'),
(58, ' Admin'),
(59, 'Seller'),
(60, ' Buyer'),
(61, ' Admin'),
(62, 'Seller'),
(63, ' Admin'),
(64, 'Seller'),
(65, 'Seller'),
(66, ' Admin'),
(67, ' Buyer'),
(68, 'Seller'),
(69, 'Seller'),
(70, ' Buyer'),
(71, 'Seller'),
(72, ' Buyer'),
(73, ' Admin'),
(74, ' Buyer'),
(75, 'Seller'),
(76, ' Admin'),
(77, ' Admin'),
(78, ' Admin'),
(79, 'Seller'),
(80, ' Buyer'),
(81, 'Seller'),
(82, 'Seller'),
(83, ' Admin'),
(84, ' Buyer'),
(85, 'Seller'),
(86, ' Admin'),
(87, ' Admin'),
(88, ' Buyer'),
(89, 'Seller'),
(90, ' Admin'),
(91, ' Buyer'),
(92, ' Buyer'),
(93, 'Seller'),
(94, 'Seller'),
(95, ' Admin'),
(96, ' Admin'),
(97, 'Seller'),
(98, ' Admin'),
(99, 'Seller'),
(100, 'Seller');

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
('100', 100);

-- --------------------------------------------------------

--
-- Table structure for table `trade_ad`
--

CREATE TABLE `trade_ad` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `seller` int(11) DEFAULT NULL,
  `buyer` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trade_ad`
--

INSERT INTO `trade_ad` (`id`, `product_id`, `price`, `qty`, `seller`, `buyer`) VALUES
(2, 2, 77.44, 47, 2, 2),
(3, 3, 23.81, 9, 3, 3),
(4, 4, 65.25, 15, 4, 4),
(5, 5, 50.02, 17, 5, 5),
(6, 6, 37.99, 45, 6, 6),
(7, 7, 54.07, 10, 7, 7),
(8, 8, 82.99, 9, 8, 8),
(9, 9, 89.45, 11, 9, 9),
(10, 10, 19.73, 50, 10, 10),
(11, 11, 44.73, 6, 11, 11),
(12, 12, 53.52, 37, 12, 12),
(13, 13, 18.05, 25, 13, 13),
(14, 14, 71.79, 28, 14, 14),
(15, 15, 48.29, 28, 15, 15),
(16, 16, 95.74, 29, 16, 16),
(17, 17, 99.53, 32, 17, 17),
(18, 18, 44.64, 42, 18, 18),
(19, 19, 9.5, 13, 19, 19),
(20, 20, 95.89, 36, 20, 20),
(21, 21, 89.86, 20, 21, 21),
(22, 22, 90.97, 26, 22, 22),
(23, 23, 99.8, 6, 23, 23),
(24, 24, 42.63, 48, 24, 24),
(25, 25, 4.73, 9, 25, 25),
(26, 26, 6.41, 16, 26, 26),
(27, 27, 81.58, 16, 27, 27),
(28, 28, 56.85, 42, 28, 28),
(29, 29, 49.16, 22, 29, 29),
(30, 30, 31.48, 6, 30, 30),
(31, 31, 59.38, 2, 31, 31),
(32, 32, 36.4, 44, 32, 32),
(33, 33, 93.83, 25, 33, 33),
(34, 34, 59.56, 36, 34, 34),
(35, 35, 13.9, 49, 35, 35),
(36, 36, 47.64, 3, 36, 36),
(37, 37, 87.62, 42, 37, 37),
(38, 38, 29.34, 6, 38, 38),
(39, 39, 54.32, 23, 39, 39),
(40, 40, 5.27, 27, 40, 40),
(41, 41, 96.52, 16, 41, 41),
(42, 42, 62.77, 47, 42, 42),
(43, 43, 49.96, 22, 43, 43),
(44, 44, 4.31, 21, 44, 44),
(45, 45, 48.71, 4, 45, 45),
(46, 46, 3.65, 18, 46, 46),
(47, 47, 87.66, 50, 47, 47),
(48, 48, 29.22, 25, 48, 48),
(49, 49, 80.91, 26, 49, 49),
(50, 50, 20.4, 22, 50, 50),
(51, 51, 55.95, 41, 51, 51),
(52, 52, 22.61, 29, 52, 52),
(53, 53, 30.79, 47, 53, 53),
(54, 54, 95.81, 10, 54, 54),
(55, 55, 91.48, 44, 55, 55),
(56, 56, 48, 29, 56, 56),
(57, 57, 75.98, 2, 57, 57),
(58, 58, 20.47, 33, 58, 58),
(59, 59, 26.77, 33, 59, 59),
(60, 60, 17.3, 12, 60, 60),
(61, 61, 80.47, 25, 61, 61),
(62, 62, 12.69, 28, 62, 62),
(63, 63, 36.85, 35, 63, 63),
(64, 64, 46.71, 12, 64, 64),
(65, 65, 54.62, 7, 65, 65),
(66, 66, 92.58, 32, 66, 66),
(67, 67, 13.81, 10, 67, 67),
(68, 68, 77.28, 45, 68, 68),
(69, 69, 53.42, 35, 69, 69),
(70, 70, 94.15, 13, 70, 70),
(71, 71, 13.77, 9, 71, 71),
(72, 72, 93.68, 45, 72, 72),
(73, 73, 12.37, 48, 73, 73),
(74, 74, 85.32, 28, 74, 74),
(75, 75, 85.46, 17, 75, 75),
(76, 76, 56.77, 30, 76, 76),
(77, 77, 73.67, 3, 77, 77),
(78, 78, 7.8, 4, 78, 78),
(79, 79, 11.45, 43, 79, 79),
(80, 80, 70.86, 50, 80, 80),
(81, 81, 1.44, 31, 81, 81),
(82, 82, 13.01, 3, 82, 82),
(83, 83, 3.16, 4, 83, 83),
(84, 84, 19.94, 33, 84, 84),
(85, 85, 2.8, 27, 85, 85),
(86, 86, 38.43, 37, 86, 86),
(87, 87, 76.52, 48, 87, 87),
(88, 88, 27.53, 39, 88, 88),
(89, 89, 94.3, 42, 89, 89),
(90, 90, 92.47, 26, 90, 90),
(91, 91, 85.75, 42, 91, 91),
(92, 92, 65.07, 8, 92, 92),
(93, 93, 6.16, 30, 93, 93),
(94, 94, 74.46, 19, 94, 94),
(95, 95, 66.44, 46, 95, 95),
(96, 96, 79.25, 5, 96, 96),
(97, 97, 81.62, 29, 97, 97),
(98, 98, 69.35, 23, 98, 98),
(99, 99, 1.74, 18, 99, 99),
(100, 100, 20.55, 0, 100, 100);

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
(2, 'neal.torphy', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'carole52@example.org', 'Quaerat et dolorem sed aut consectetur corporis totam. Occaecati ea ut in id saepe ipsum.\nSed non rerum recusandae qui eaque. Dolorum minus quia repudiandae doloremque.', 0, ' Dartmouth College Hanover', 'Destin'),
(3, 'thalvorson', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'jett.willms@example.org', 'Hic vel earum qui assumenda. In dolor nesciunt dolorem quis dicta dolorem ipsam fugit. Voluptas id voluptatem ipsa.', 0, ' University of Rhode Island Kingston', 'Javon'),
(4, 'arthur.grant', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'sedrick.yundt@example.org', 'Quibusdam possimus tempora autem accusamus. Alias suscipit quo nihil. Ipsum qui modi consequatur iusto reprehenderit aut nostrum.', 0, ' Johnson & Wales University Providence Providence', 'Jarred'),
(5, 'cassandra58', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'bmcclure@example.net', 'Hic qui laboriosam maxime dolores fuga. Molestiae non ex et beatae voluptatem. Minus et eius explicabo molestiae.', 0, ' University of Massachusetts Amherst Amherst', 'Jalen'),
(6, 'gkunde', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'gavin.bailey@example.org', 'Quos fugiat sed et harum neque ut iste. Ipsa totam doloribus officiis voluptatem maiores. Magni voluptatem beatae non ut sed. Non ab ex eum alias impedit.', 0, ' Emerson College Boston', 'Scot'),
(7, 'reyes02', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'predovic.javonte@example.net', 'Quia rerum veritatis aspernatur. Tempore dolorem fugiat velit magni hic dolores dicta cupiditate. Aspernatur quo ipsa est dolores hic aut. Quos est eveniet odio maiores et provident.', 0, ' University of New England Biddeford', 'Eldon'),
(8, 'nakia50', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'tschulist@example.com', 'Recusandae asperiores ipsa aliquid quas dolor quaerat. Provident mollitia non est cupiditate consectetur non enim. Hic maiores facilis architecto suscipit sed.', 0, ' Brown University Providence', 'Cesar'),
(9, 'ghagenes', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'blaze.walsh@example.net', 'Iusto impedit quis at animi sunt sit nisi. Est quod qui inventore consequatur occaecati quam aut. Rerum porro officia enim. Quasi minus reiciendis dolorum.', 0, ' University of Southern Maine Portland', 'Camron'),
(10, 'trystan61', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'alexzander85@example.net', 'Ut et modi voluptatem cupiditate aliquid. Dolorum ut at ab quo. Dolorum inventore aut similique et tempore necessitatibus sequi.', 0, ' University of Connecticut Storrs', 'Tomas'),
(11, 'halvorson.kayla', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'scarroll@example.org', 'Eos et ut culpa iste porro. Commodi fugiat totam quibusdam aut facilis molestiae deleniti. Tenetur non blanditiis nobis consequuntur. Assumenda eius sint praesentium nisi voluptatem ut.', 0, ' University of Hartford West Hartford', 'Jon'),
(12, 'rkertzmann', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'mitchell.clemmie@example.net', 'Eos ex consequatur ipsum at quae error facilis fuga. Enim nisi in ratione cumque. Deleniti sed quo fugit eum id. Delectus fuga molestias dolorum.', 0, ' Boston College Chestnut Hill', 'Enid'),
(13, 'sedrick.prosacc', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'treutel.raoul@example.com', 'Molestias amet voluptatibus quibusdam quibusdam exercitationem nam ducimus. Blanditiis et impedit sint omnis nostrum sint id. Illum non et perspiciatis quae.', 0, ' Berklee College of Music Boston', 'Hilario'),
(14, 'maxie.mayert', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'ruthe19@example.org', 'Possimus omnis alias omnis totam odio. Pariatur non error ad quis soluta. Consequatur et quibusdam molestiae possimus aperiam.', 0, ' Bridgewater State University Bridgewater', 'Nat'),
(15, 'fisher.onie', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'betty91@example.com', 'Voluptates est sed sit ad. In laudantium qui sequi rerum velit voluptates ex porro. In repellendus quia necessitatibus facilis non.', 0, ' University of New Haven West Haven', 'Nigel'),
(16, 'xvolkman', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'jacquelyn.purdy@example.net', 'Reprehenderit ut laboriosam reiciendis mollitia consequatur veritatis et. Adipisci eum ea quo qui vitae rerum. Excepturi et amet qui dolores eum.', 0, ' Bridgewater State University Bridgewater', 'Jairo'),
(17, 'lstrosin', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'evert.balistreri@example.com', 'Veniam sint aut nulla nihil labore possimus. Vel ducimus numquam earum nemo nihil suscipit ut.', 0, ' Yale University New Haven', 'Gene'),
(18, 'kali.braun', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'kerluke.arjun@example.net', 'Officia architecto doloremque explicabo id eum consequatur ut. Assumenda eligendi quam doloribus praesentium exercitationem est eum. Illo laboriosam laboriosam necessitatibus.', 0, 'Boston University Boston', 'Lucious'),
(19, 'lennie.kozey', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'gkemmer@example.org', 'A dolores quia inventore et laboriosam. Temporibus ut voluptas exercitationem nisi autem aut. Adipisci dolorum vero possimus quisquam.', 0, ' Salem State University Salem', 'Lesley'),
(20, 'llehner', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'veum.antoinette@example.com', 'Ut laboriosam ullam suscipit qui non. Illo omnis ut quo perspiciatis. Ullam eaque sapiente rem aut molestias saepe. Vel consequatur beatae cupiditate et.', 0, ' University of Connecticut Storrs', 'Marty'),
(21, 'elinore.goldner', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'minnie.schultz@example.net', 'Quo nesciunt expedita nihil mollitia praesentium adipisci voluptatem. Pariatur dolore aut at rerum voluptatibus perspiciatis. Molestiae veritatis similique ut est natus iusto.', 0, ' Bristol Community College Fall River', 'Nikolas'),
(22, 'schowalter.jayd', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'kuhn.jessyca@example.com', 'Fugiat modi assumenda quis accusantium aspernatur soluta. Porro tempora nulla explicabo enim earum rerum. Assumenda mollitia perferendis modi.', 0, ' Southern Connecticut State University New Haven', 'Jaren'),
(23, 'schumm.teresa', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'schinner.ted@example.com', 'Doloribus autem quas non quis fugiat. Et laudantium rerum dolorum et est quis possimus. Ut odit sequi labore et vel quisquam iusto. Ut dicta id debitis magni quo.', 0, ' Worcester Polytechnic Institute Worcester', 'Jared'),
(24, 'mertie60', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'chermiston@example.net', 'Laudantium quia delectus consequatur accusamus sint. Adipisci debitis repellendus sunt distinctio asperiores. Itaque dolor commodi omnis. Dolor a omnis quas reiciendis aliquid.', 0, ' Harvard University Cambridge', 'Leonard'),
(25, 'leatha81', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'madeline.hayes@example.net', 'Non quod perferendis excepturi est nesciunt reprehenderit. Illo eveniet libero doloribus dolores. Error quis dolorem maxime totam sit autem sunt.', 0, ' Rhode Island College Providence', 'Lennie'),
(26, 'maverick.farrel', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'block.stanford@example.com', 'Libero incidunt omnis et et laborum ratione. Itaque pariatur ab ut in magni. Illum vel maxime voluptate. Reprehenderit aut distinctio rem doloribus dolores velit omnis.', 0, ' University of Massachusetts Dartmouth North Dartmouth', 'Godfrey'),
(27, 'danyka.kuhic', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'raphael.trantow@example.com', 'Deserunt velit exercitationem impedit reprehenderit et quidem. Error laborum deserunt delectus ea dolor ex ex. Placeat odio praesentium aut sunt totam dolores.', 0, ' Bridgewater State University Bridgewater', 'Luigi'),
(28, 'marks.jesus', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'edgar29@example.com', 'Et distinctio tempora eum est est voluptatem ratione. Nostrum suscipit tenetur soluta eos qui rerum accusantium.', 0, 'Boston University Boston', 'Bernardo'),
(29, 'wilford.vonrued', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'bbailey@example.org', 'Quas perferendis id eaque omnis est quae. Consequatur reprehenderit magni officia laboriosam. Deserunt eum accusantium et ut dolor repellendus. Eius ut voluptate voluptatum ex maxime.', 0, ' University of Rhode Island Kingston', 'Rocky'),
(30, 'hwaters', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'armstrong.yasmin@example.org', 'Alias assumenda voluptatum quos qui. Et est praesentium error neque praesentium. Sed totam quia aut placeat nemo. Incidunt repudiandae vel ut eum.', 0, ' University of New Haven West Haven', 'Westley'),
(31, 'iokuneva', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'nlindgren@example.com', 'Eligendi eligendi et excepturi sunt ipsum quo. Non omnis non in pariatur dolor laborum asperiores eum. Labore itaque ipsum provident quasi.', 0, ' Bentley University Waltham', 'Shaun'),
(32, 'sylvia09', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'una85@example.net', 'Aut earum voluptatem dignissimos qui. Doloremque in sequi eum neque deserunt a. Repellendus est magnam necessitatibus. Et et odit et dolorum omnis id.', 0, ' Keene State College Keene', 'Hudson'),
(33, 'xhuels', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'acarter@example.org', 'Quia odio accusamus vel rerum rerum qui excepturi. Blanditiis et enim libero nobis. Atque cum aperiam eos voluptates. Ut repellendus officiis sed fuga est. Animi consectetur mollitia ut labore.', 0, ' University of Massachusetts Amherst Amherst', 'Celestino'),
(34, 'vivian52', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'jbecker@example.net', 'Quos enim rerum quo sed voluptatem minima nemo. Est voluptatem hic natus. In impedit quae enim sequi ut laboriosam eveniet. Ut et quaerat aliquid et.', 0, ' Suffolk University Boston', 'Kristoffer'),
(35, 'amurray', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'sophie18@example.org', 'Veniam omnis esse et quis. Optio et voluptatem et.', 0, ' Bridgewater State University Bridgewater', 'Cecil'),
(36, 'vbernier', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'trycia.klein@example.org', 'Eligendi qui et sapiente sequi corrupti non quos. Est consectetur ipsum in eum numquam. Autem suscipit rem quibusdam corrupti inventore. Non cupiditate numquam officiis.', 0, ' Brown University Providence', 'Raymond'),
(37, 'armstrong.janel', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'modesto54@example.com', 'Ipsa dolor perspiciatis quibusdam quam veritatis. Quasi praesentium quod unde odio consequatur nihil architecto.\nEst vel quia deleniti et unde in. Blanditiis eaque dolor est distinctio inventore.', 0, ' University of Vermont Burlington', 'Dagmar'),
(38, 'ezequiel.maggio', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'rolfson.marlee@example.org', 'Placeat voluptas aut rerum. Dolor ut molestias voluptas autem maiores corrupti eum. Quam aliquam est iure repellat. Ut veritatis reiciendis reprehenderit velit molestiae temporibus.', 0, ' Eastern Connecticut State University Willimantic', 'Ruben'),
(39, 'abbott.stephan', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'maxwell24@example.org', 'Nihil ut rerum cupiditate consequatur. At illo ad tenetur corrupti in. Odio alias tenetur odit recusandae at doloremque ducimus.', 0, ' Bentley University Waltham', 'Karl'),
(40, 'immanuel16', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'hans.walker@example.org', 'Soluta maxime et maiores fugit est. Dolor omnis laborum consequatur. Accusamus et ullam deserunt enim. Vitae adipisci assumenda est saepe porro at.', 0, ' Yale University New Haven', 'Watson'),
(41, 'hermann.carmelo', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'stephan59@example.com', 'Impedit ad placeat voluptatem facere tempora optio. Ut voluptatibus quia qui atque ut. Distinctio consequatur aut qui. Fugit quibusdam aut nostrum exercitationem.', 0, ' Worcester Polytechnic Institute Worcester', 'Finn'),
(42, 'brakus.barton', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'arturo.heathcote@example.com', 'Voluptas eligendi qui voluptate. Aut consequuntur et est est. Ut facilis rem vitae nihil.', 0, ' Worcester Polytechnic Institute Worcester', 'Kyle'),
(43, 'ggoldner', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'heathcote.stanley@example.com', 'Sed exercitationem laboriosam recusandae. Occaecati aliquam alias et distinctio est aliquid hic. Repudiandae perferendis rem amet quia. Rerum laborum animi suscipit ut.', 0, ' University of Massachusetts Amherst Amherst', 'Sven'),
(44, 'ruthie.o\'kon', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'retha.reilly@example.org', 'Et sit praesentium delectus voluptatem. Ea est incidunt et ut nulla non. Ducimus est ratione optio eos et fugiat aut. Sit sed nesciunt ab reprehenderit.', 0, ' Boston College Chestnut Hill', 'Casimer'),
(45, 'konopelski.cory', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'boehm.ezequiel@example.org', 'Quam placeat error quibusdam nulla ut. Sint iusto vero saepe quo expedita. Enim esse libero ullam. Nesciunt mollitia dolorem autem non eum nemo omnis.', 0, ' University of Southern Maine Portland', 'Jasmin'),
(46, 'stanford19', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'johnston.dexter@example.org', 'Omnis ex qui et quia est. Repellendus aspernatur et enim at assumenda corporis et. Quo accusantium eum inventore minus rem est odit. Culpa assumenda placeat quasi et in quod.', 0, ' Southern New Hampshire University Manchester', 'Ansley'),
(47, 'carrie01', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'celia06@example.org', 'Aspernatur iste veritatis voluptas eum. Architecto omnis dolorum sed occaecati nobis nemo molestiae.', 0, ' Bridgewater State University Bridgewater', 'Tre'),
(48, 'brenden.haley', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'toy33@example.org', 'Omnis in quibusdam quam quos totam. Eum eaque officiis dicta et velit at. Eaque laudantium laboriosam similique perferendis mollitia. Iste porro magnam magnam.', 0, 'Boston University Boston', 'Uriah'),
(49, 'caden.fisher', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'aisha.mccullough@example.org', 'Nihil veritatis numquam dolorem a expedita quia in. Omnis est aut ut sit rerum. Unde officiis sed sit.', 0, ' Bristol Community College Fall River', 'Maximillian'),
(50, 'jody.cruickshan', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'spinka.edgardo@example.com', 'Vitae error nostrum molestias impedit hic. Tempore consequuntur mollitia quisquam sunt. Deleniti ut dolor rerum magni explicabo. Nihil dolorum adipisci et sapiente.', 0, ' Western Connecticut State University Danbury', 'Cedrick'),
(51, 'pasquale.o\'reil', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'evan.ruecker@example.com', 'Ut quia eos minima non. Aut quo at assumenda. Culpa est quod voluptas omnis consequatur quibusdam voluptatem. Aliquam distinctio voluptatem molestiae earum.', 0, ' Dartmouth College Hanover', 'Gennaro'),
(52, 'sporer.margie', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'marley53@example.net', 'Velit voluptas officiis quasi sunt. Sint quaerat id ipsum excepturi voluptas. Harum dolorem repellendus quo dolorum et. Quaerat doloremque hic minus facilis deserunt iusto.', 0, ' Worcester Polytechnic Institute Worcester', 'Tre'),
(53, 'adan15', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'rwindler@example.net', 'Voluptatum inventore expedita mollitia quas. Facilis veritatis distinctio culpa maiores placeat dolores dolor. Et ipsam laborum vel. Possimus velit quos quidem amet aut. Ad nam in vel facere quis.', 0, ' Johnson & Wales University Providence Providence', 'Marcel'),
(54, 'schaden.savanna', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'rosemary73@example.net', 'Officia est nihil error qui. Illum inventore laudantium facilis qui nihil aliquam error.', 0, ' Northeastern University Boston', 'Rahul'),
(55, 'conroy.hank', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'schmitt.misael@example.com', 'Incidunt ipsum voluptas iure sit rem vel qui. Aut sed similique rerum dolores perferendis atque occaecati.\nQuia voluptas aliquid molestiae beatae eaque. Et sit voluptates illum.', 0, ' Dartmouth College Hanover', 'Edward'),
(56, 'lehner.ralph', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'lew70@example.org', 'Assumenda voluptas necessitatibus ea nostrum eum quo inventore. Nostrum aspernatur ea ea quas nesciunt amet nihil. Odit vitae commodi cum temporibus aut eos.', 0, ' Keene State College Keene', 'Rick'),
(57, 'koelpin.jaiden', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'walter.easter@example.com', 'Magni laudantium distinctio inventore exercitationem. Culpa et sed aliquam quo. Cum consectetur soluta eum ipsum hic ut.', 0, ' Yale University New Haven', 'Enrico'),
(58, 'labadie.eusebio', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'bbergnaum@example.com', 'Nulla consectetur et possimus. Est ducimus at perferendis corrupti. Sed dicta eos fugiat nisi quo et. Officia nulla quis soluta ex et sequi.', 0, ' Keene State College Keene', 'Peter'),
(59, 'meredith01', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'bbruen@example.com', 'Impedit cupiditate porro voluptate nobis iste quia. Repellendus architecto veritatis rerum eum maiores. Aliquid aliquid similique culpa nemo perferendis.', 0, ' Worcester Polytechnic Institute Worcester', 'Trystan'),
(60, 'oliver50', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'marvin.tabitha@example.net', 'Sed quasi nesciunt eum in sapiente. Voluptatem expedita est inventore rerum rem sint hic. Atque voluptates saepe id commodi quaerat cumque quasi distinctio. Quis est nemo laboriosam repellendus et.', 0, ' Southern New Hampshire University Manchester', 'Elvis'),
(61, 'schmitt.jovan', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'edward.pollich@example.com', 'Sapiente et repellat aut quod. Aut delectus libero atque illo velit sint est. Perspiciatis placeat in sit aut quibusdam earum.', 0, ' University of Rhode Island Kingston', 'Chaim'),
(62, 'ernie.nolan', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'evalyn.green@example.org', 'Velit magni provident voluptates quibusdam. Enim maxime et perferendis id eum. Nostrum cumque nihil enim aspernatur quam ad dolores accusamus. Quae id fuga est fugiat velit numquam veritatis.', 0, ' Emerson College Boston', 'Chesley'),
(63, 'ablock', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'tremblay.lois@example.org', 'Placeat ut perferendis quisquam minus id recusandae. Aut sint est sint quo atque hic. Omnis aut sapiente assumenda distinctio ullam molestias id. Omnis porro exercitationem et voluptates magni.', 0, ' University of Southern Maine Portland', 'Cleo'),
(64, 'danyka.blick', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'damion21@example.net', 'Ut ullam ratione ut. Voluptas inventore in est id quia. Perspiciatis placeat magni cupiditate quaerat similique. Consequuntur suscipit totam alias iusto suscipit aut quos.', 0, ' Bunker Hill Community College Boston', 'Griffin'),
(65, 'isauer', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'cleora45@example.net', 'Quia soluta quod libero non illum. Eius odio et sunt nemo ipsa quidem. Enim deserunt harum rerum est et delectus. Odio occaecati dolores eum esse in ipsa.', 0, ' Bunker Hill Community College Boston', 'Jon'),
(66, 'gutmann.nathani', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'vkoch@example.net', 'Accusamus magni consectetur dicta optio. Voluptas reiciendis dolor unde cupiditate delectus omnis. Quaerat molestiae qui at.', 0, ' Tufts University Medford', 'Tito'),
(67, 'luella.schroede', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'constantin67@example.org', 'Non doloremque ducimus sit unde exercitationem voluptates commodi. Quia excepturi dolorum est tempore iusto dignissimos. Eum inventore veritatis fugit.', 0, ' University of New Haven West Haven', 'Grady'),
(68, 'mitchell.lue', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'merle.gulgowski@example.net', 'Quae id voluptates provident. Voluptatem sit sunt veniam error ut nam. Ut aliquid soluta consectetur beatae. Vel aut vel totam.', 0, ' Suffolk University Boston', 'Eloy'),
(69, 'willms.macie', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'mschamberger@example.org', 'Odio labore sunt deleniti autem dolor voluptatibus consequatur. Rerum amet voluptatibus qui autem laudantium. Aut ipsam velit impedit sed vel nam.', 0, ' Sacred Heart University Fairfield', 'Bret'),
(70, 'samson.ernser', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'ayla.kohler@example.net', 'Sunt ea ab enim dolor delectus. Sit voluptatibus voluptas eius eligendi ratione eos dolores quis. Est et qui blanditiis voluptate. Ullam ipsam autem ipsam veniam quis et.', 0, ' Community College of Rhode Island Warwick', 'Keyshawn'),
(71, 'skiles.vada', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'alejandrin03@example.org', 'Suscipit cum incidunt autem. Possimus ex voluptatem enim ullam porro velit nemo. Dolore odit enim aspernatur omnis et animi deserunt et. Sed nihil eligendi enim nostrum odio qui dolores.', 0, ' University of Massachusetts Dartmouth North Dartmouth', 'Wiley'),
(72, 'irma.kassulke', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'lavinia.barrows@example.com', 'Dolorem ut harum cum. Voluptate modi necessitatibus vitae facere molestiae ipsa dicta. Sit vitae nam qui vitae excepturi. Sed soluta et dolores neque et omnis sint.', 0, ' University of New Hampshire Main Campus Durham', 'Tyreek'),
(73, 'jenkins.fleta', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'johns.harley@example.org', 'Consequatur excepturi hic et. Architecto et velit doloremque velit. Necessitatibus nesciunt rem corrupti rerum. Est autem dignissimos sunt laborum perspiciatis.', 0, ' Tufts University Medford', 'Raymond'),
(74, 'torp.tremaine', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'delores64@example.org', 'Provident fugit enim quia vel occaecati. Quibusdam id reiciendis rem voluptatibus repellendus quam. Eos adipisci suscipit unde a qui.', 0, ' University of Connecticut Storrs', 'Emory'),
(75, 'ashlynn.johnsto', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'wiza.laurel@example.net', 'Quo nihil repellendus et ut. Debitis itaque et sunt. Perferendis rem impedit beatae maiores omnis culpa dolores.\nBlanditiis consequatur reiciendis voluptatem. Quos sit vel dolores ipsum.', 0, ' Bristol Community College Fall River', 'Dean'),
(76, 'jordan.kassulke', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'ewell27@example.org', 'Est aliquid dolorem omnis repellat voluptatem qui non ex. Ipsam unde ut possimus. Quia quis aut voluptatibus omnis illo. Ad omnis et quia magni accusantium aut dolor repellat.', 0, ' Yale University New Haven', 'Owen'),
(77, 'presley82', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'chickle@example.org', 'Sint ratione minima sint facilis ea et. Ad enim reprehenderit porro non adipisci aliquid.', 0, ' University of New Hampshire Main Campus Durham', 'Amparo'),
(78, 'howell.howe', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'ikoch@example.org', 'Tenetur tempora ut velit dolores. Optio saepe quis perferendis vel ut. Eos voluptatem in ut vel adipisci.', 0, ' Rhode Island College Providence', 'Olin'),
(79, 'tyshawn06', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'frank.larkin@example.com', 'Temporibus rerum quo ipsa molestias cupiditate minus. Eveniet ut enim illum quo incidunt. Recusandae iste alias atque voluptas. Dignissimos voluptatum iste ducimus ut et suscipit ipsam.', 0, ' Johnson & Wales University Providence Providence', 'Gustave'),
(80, 'laurel79', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'cronin.keegan@example.org', 'Perspiciatis praesentium quaerat aliquid sit nihil quibusdam. Molestiae vitae veritatis asperiores dolores. Et asperiores mollitia commodi et molestiae ut. Molestiae qui aut eius vel ex qui sit.', 0, ' Fairfield University Fairfield', 'Melvina'),
(81, 'wcasper', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'hreilly@example.net', 'Delectus maxime totam natus animi id provident. Doloribus reprehenderit id debitis nihil aut et. Nam sit est cumque molestias ea id cupiditate.', 0, ' University of Massachusetts Boston Boston', 'Percival'),
(82, 'atorp', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'omertz@example.org', 'Eaque provident architecto quam. Et in excepturi deleniti ut eum quo. Deserunt quam et sunt ad. Explicabo unde dolor minima soluta nulla ratione fuga.', 0, ' University of Massachusetts Boston Boston', 'Dusty'),
(83, 'art.mckenzie', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'mayer.giuseppe@example.com', 'Porro mollitia fugiat facere nobis voluptatem. Culpa ut tenetur et totam quae quas. Natus deserunt fugiat eius. Praesentium id est atque veritatis.', 0, ' University of Connecticut Storrs', 'Hubert'),
(84, 'mustafa.doyle', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'vziemann@example.net', 'Quasi quo pariatur quidem. Quia voluptas eaque pariatur molestias accusamus doloribus quae voluptas. Dolor repellendus non quo quibusdam perferendis expedita.', 0, ' Community College of Rhode Island Warwick', 'Clinton'),
(85, 'melyssa55', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'cormier.jany@example.org', 'Doloremque et voluptatem quidem cupiditate sit repellat sapiente. Porro quae magni harum quo recusandae occaecati. Earum tenetur nisi quod molestiae. Et non molestiae quo adipisci quia.', 0, ' University of Massachusetts Dartmouth North Dartmouth', 'Manley'),
(86, 'sylvan13', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'hertha.mills@example.net', 'Dolorum et non voluptas sunt impedit minus qui iure. Voluptatem est officia perspiciatis. Sit quisquam similique deserunt officia qui error. Ipsa atque aut est dolores est est.', 0, ' Emerson College Boston', 'Larry'),
(87, 'antone05', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'jameson.welch@example.net', 'Error minus autem non nulla. Doloremque mollitia debitis et ut quos occaecati consectetur.', 0, ' University of Massachusetts Amherst Amherst', 'Ethel'),
(88, 'edouglas', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'fkonopelski@example.com', 'Aut saepe dolores est tempora laborum. Qui quia ab fuga et quis quaerat veniam. Ut quidem molestiae quam soluta magnam.', 0, ' Plymouth State University Plymouth', 'Geo'),
(89, 'uwiegand', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'brennan.abbott@example.com', 'Harum ex hic voluptas ad excepturi accusantium ea. Maiores corrupti provident tempore sunt dolores. Praesentium et illum quae rerum consequatur ut dolorem. Et et sunt tenetur.', 0, ' Bridgewater State University Bridgewater', 'Zechariah'),
(90, 'henderson.hermi', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'katelyn17@example.com', 'Qui aliquid aut odio quam sint in. Odit qui earum quidem ad magni repellendus. Minima officia repellat consectetur sapiente aperiam minus. Qui eligendi quisquam et rerum velit sed.', 0, ' Suffolk University Boston', 'Sammy'),
(91, 'bharber', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'eulalia69@example.net', 'Enim dolor ad aut saepe tenetur et unde. Aspernatur fugiat voluptatem deserunt eos. Expedita provident et dolor quibusdam maiores est.', 0, ' Wentworth Institute of Technology Boston', 'Kurt'),
(92, 'dock.kihn', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'kmorissette@example.org', 'Aperiam aut officiis ducimus amet numquam. Placeat non aperiam corporis laboriosam doloribus. Minus molestias non doloribus.', 0, ' Southern New Hampshire University Manchester', 'Jabari'),
(93, 'maximilian.mcke', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'mwunsch@example.org', 'Vel hic dolor eum molestias dolor officiis. Suscipit exercitationem sequi qui pariatur in iusto sint. Nesciunt ea quasi et occaecati. Corporis cumque voluptatum accusamus quia beatae.', 0, ' University of Massachusetts Lowell Lowell', 'Laverne'),
(94, 'pondricka', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'kmarks@example.com', 'Consequatur fugiat aspernatur repellendus aut. Aut assumenda rerum eos et nihil placeat voluptatem. Esse error harum id eaque.', 0, ' University of New Haven West Haven', 'Everett'),
(95, 'belle95', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'loren.graham@example.net', 'Rerum reprehenderit et et corporis iusto molestiae. Molestias perspiciatis et aut amet. Alias cum et nostrum incidunt necessitatibus quisquam. Voluptatem minus dolor dolores vitae ducimus aperiam et.', 0, ' Southern New Hampshire University Manchester', 'Brendan'),
(96, 'bernhard.haylie', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'will.collier@example.org', 'Illo ad voluptatem enim dignissimos voluptates. Odit saepe sapiente ipsum omnis quos esse.\nSunt et nam qui occaecati quam. Consectetur qui ut temporibus et. Sit numquam libero eaque totam vitae.', 0, ' Quinnipiac University Hamden', 'Emery'),
(97, 'tyler.willms', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'rahsaan32@example.net', 'Repudiandae optio consequuntur voluptatibus. Ratione nesciunt non aperiam hic modi.', 0, ' University of Rhode Island Kingston', 'Cecil'),
(98, 'nkuhic', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'yjacobs@example.net', 'Nesciunt veniam dicta at. Rerum optio beatae nulla. Ipsam sunt animi quis itaque.', 0, ' Johnson & Wales University Providence Providence', 'Ewald'),
(99, 'rath.elyssa', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'rharris@example.net', 'Sit dolore aut laudantium magnam iure dolorem. Laboriosam necessitatibus nesciunt sequi enim sit aut asperiores. Quaerat modi mollitia vel velit.', 0, ' Keene State College Keene', 'Glen'),
(100, 'kreiger.skyla', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', 'leanna20@example.org', 'In accusamus omnis illum esse culpa dignissimos. Fugit dolores omnis amet totam reiciendis magnam nisi. Quis nihil voluptate dicta consectetur eos. Qui dolorem quidem fuga voluptatem adipisci ad.', 0, ' Wentworth Institute of Technology Boston', 'Rupert');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `COMMENTS_tradeid` (`trade_ad_id`),
  ADD KEY `COMMENTS_user` (`user_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `reputation`
--
ALTER TABLE `reputation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `REPUTATION_user` (`user_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `REVIEW_product` (`product_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `trade_ad`
--
ALTER TABLE `trade_ad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `TRADE_Product` (`product_id`),
  ADD KEY `TRADE_Seller` (`seller`),
  ADD KEY `TRADE_Buyer` (`buyer`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `reputation`
--
ALTER TABLE `reputation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `trade_ad`
--
ALTER TABLE `trade_ad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `COMMENTS_tradeid` FOREIGN KEY (`trade_ad_id`) REFERENCES `trade_ad` (`id`),
  ADD CONSTRAINT `COMMENTS_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `reputation`
--
ALTER TABLE `reputation`
  ADD CONSTRAINT `REPUTATION_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `REVIEW_product` FOREIGN KEY (`product_id`) REFERENCES `trade_ad` (`product_id`);

--
-- Constraints for table `trade_ad`
--
ALTER TABLE `trade_ad`
  ADD CONSTRAINT `TRADE_Buyer` FOREIGN KEY (`buyer`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `TRADE_Product` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  ADD CONSTRAINT `TRADE_Seller` FOREIGN KEY (`seller`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
