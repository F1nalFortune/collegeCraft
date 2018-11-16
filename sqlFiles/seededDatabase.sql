-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2018 at 10:31 PM
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
(100, ' shoes', 'Laborum non porro quos molestiae eaque quam officia error. Amet quisquam quia et ipsum. Sit consequatur molestias aut sit cum id qui nesciunt. Ea nam est ipsam qui.', 'books');

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
  `trade_id` int(11) DEFAULT NULL,
  `feedback` varchar(256) DEFAULT NULL,
  `created` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `review`, `trade_id`, `feedback`, `created`) VALUES
(1, 5, 50, 'Maiores aut ullam repellat ipsa eos esse autem.', '1997-01-10'),
(2, 1, 48, 'Maxime eos magnam rerum porro.', '2002-07-23'),
(3, 4, 22, 'Dignissimos mollitia sed asperiores dignissimos culpa.', '2012-11-01'),
(4, 4, 27, 'Mollitia unde dicta sint quod.', '1979-09-17'),
(5, 3, 25, 'Dolor esse et maiores quo illum asperiores dolore.', '1976-04-19'),
(6, 3, 87, 'Atque provident qui quia qui quos impedit.', '1994-09-18'),
(7, 5, 6, 'Voluptate molestiae quia laudantium aut tenetur ipsam.', '2012-06-14'),
(8, 3, 52, 'Consequatur ut autem consequatur autem.', '2009-04-05'),
(9, 1, 9, 'Voluptas repellat est rerum neque.', '2015-09-06'),
(10, 2, 13, 'Perspiciatis quae ut nam voluptates.', '2000-08-04'),
(11, 1, 71, 'Facilis aliquam eveniet ipsum et et atque at amet.', '2005-05-01'),
(12, 2, 48, 'Blanditiis iste consectetur et quis voluptas et.', '1981-02-09'),
(13, 2, 16, 'Perferendis suscipit pariatur modi labore officiis voluptas.', '2008-03-27'),
(14, 2, 9, 'Voluptates ut vel quidem totam omnis neque qui doloremque.', '1973-06-09'),
(15, 4, 51, 'Maxime et tempora enim.', '1975-08-02'),
(16, 3, 53, 'Ullam officiis recusandae praesentium ullam quasi quaerat dolore quibusdam.', '2008-11-26'),
(17, 5, 56, 'Ratione cum aut voluptas quaerat.', '1997-05-27'),
(18, 5, 32, 'Non impedit quia mollitia omnis explicabo commodi labore.', '2000-09-30'),
(19, 3, 51, 'Assumenda et culpa qui incidunt aspernatur.', '2011-05-03'),
(20, 5, 94, 'Explicabo qui dignissimos quisquam voluptate quia eaque dolor.', '1990-12-19'),
(21, 5, 76, 'Rerum dignissimos ut nulla velit.', '1993-12-01'),
(22, 5, 21, 'Quo qui ea quae recusandae beatae voluptate mollitia aut.', '1972-07-15'),
(23, 5, 35, 'Sed at harum ad.', '1977-11-29'),
(24, 1, 83, 'Qui consequatur ut ex id.', '1974-10-29'),
(25, 1, 37, 'Harum in laborum neque voluptatibus est magnam laudantium.', '1998-11-04'),
(26, 4, 64, 'Et non explicabo illo dolores esse.', '1974-10-15'),
(27, 4, 95, 'Ea qui provident et aperiam neque unde.', '1984-04-05'),
(28, 1, 20, 'Sequi assumenda et ut.', '2017-11-30'),
(29, 4, 31, 'Sint earum autem numquam natus facilis iusto sed voluptatem.', '1983-11-13'),
(30, 5, 99, 'Voluptatem nisi tempora quaerat dolore rerum dolorem vitae.', '1996-02-21'),
(31, 4, 5, 'Enim voluptatem illum voluptatum voluptas.', '2000-02-02'),
(32, 2, 50, 'Ipsam voluptatum excepturi tempora quasi.', '1991-12-12'),
(33, 4, 66, 'Rerum accusantium nihil temporibus deserunt ullam totam id inventore.', '2008-09-26'),
(34, 3, 91, 'Voluptatem voluptatem quia consequatur nisi quo.', '2000-07-17'),
(35, 4, 71, 'Dolor cum sit omnis officiis quia.', '2004-02-20'),
(36, 1, 34, 'Quod et fugiat voluptas.', '2017-07-25'),
(37, 5, 42, 'Delectus fuga quia eum corrupti.', '1998-06-18'),
(38, 5, 42, 'Velit aut voluptate aut vero.', '1986-01-24'),
(39, 2, 31, 'Consequuntur et voluptas saepe nesciunt magni.', '1983-04-30'),
(40, 1, 94, 'Tempore earum beatae eveniet vitae voluptas.', '2009-09-23'),
(41, 1, 100, 'Eius cupiditate ut animi a.', '2008-12-29'),
(42, 5, 24, 'Magnam et culpa a repellat doloribus enim laudantium.', '1974-04-18'),
(43, 4, 87, 'Quos illum incidunt incidunt cupiditate.', '2006-03-28'),
(44, 3, 48, 'Laudantium odio exercitationem numquam qui voluptatem.', '2015-04-29'),
(45, 2, 81, 'Reprehenderit deserunt dolores dolorum natus sapiente qui qui.', '2005-07-26'),
(46, 1, 93, 'Sunt ullam nihil in dolorum.', '1987-10-03'),
(47, 3, 7, 'Aut libero earum ut aspernatur odit minima esse.', '2004-06-27'),
(48, 5, 5, 'Blanditiis repudiandae fugit molestias molestiae quam reprehenderit.', '1973-12-28'),
(49, 5, 67, 'Est doloribus ut et deserunt fugit aliquid est.', '1982-03-18'),
(50, 5, 49, 'Tempore itaque nihil ea voluptas.', '1973-11-11'),
(51, 4, 9, 'Assumenda voluptas veritatis velit error.', '1978-02-01'),
(52, 3, 100, 'Voluptatem repudiandae quibusdam perspiciatis maxime eos tempora facere.', '1980-06-25'),
(53, 1, 15, 'Cumque aspernatur id occaecati asperiores.', '2007-06-21'),
(54, 5, 43, 'Rerum sequi consequatur cum necessitatibus nihil voluptas.', '2006-08-04'),
(55, 5, 48, 'Doloremque ut earum dolorem laborum.', '1975-03-29'),
(56, 1, 27, 'Vel ut et ipsa voluptatem.', '1971-03-28'),
(57, 5, 79, 'Ut repellendus praesentium et ut aut unde.', '1986-04-19'),
(58, 4, 35, 'Voluptatem recusandae animi maiores suscipit tenetur.', '1987-01-02'),
(59, 5, 46, 'Placeat blanditiis id qui.', '1976-09-01'),
(60, 5, 14, 'Atque cum reiciendis fugiat.', '1997-12-24'),
(61, 5, 45, 'Et ex adipisci quaerat est itaque autem.', '1971-01-10'),
(62, 4, 26, 'Quis ut sit totam sint.', '1975-10-21'),
(63, 3, 43, 'Vel voluptas doloremque ipsa nesciunt.', '2011-04-07'),
(64, 3, 92, 'Nostrum aspernatur ex molestiae iste sed voluptatem.', '2018-04-23'),
(65, 2, 75, 'Omnis nesciunt ullam quibusdam quidem officiis consequuntur ad.', '1997-09-19'),
(66, 2, 11, 'Numquam placeat vel harum.', '1989-10-08'),
(67, 4, 17, 'Error illum repellat recusandae.', '1986-08-03'),
(68, 2, 5, 'Neque ea quo temporibus nihil incidunt voluptatem.', '1971-10-08'),
(69, 4, 40, 'Sed autem earum quasi magnam similique.', '1991-07-16'),
(70, 1, 71, 'Ut consequatur quis laboriosam placeat hic optio harum.', '2003-10-26'),
(71, 3, 6, 'Et unde culpa odio.', '1995-05-06'),
(72, 4, 64, 'Saepe omnis occaecati nesciunt occaecati.', '2007-12-25'),
(73, 1, 26, 'Rerum laudantium necessitatibus ea molestiae.', '2015-07-11'),
(74, 4, 96, 'Reprehenderit et consequatur quo eos qui cumque corporis dicta.', '2003-02-16'),
(75, 4, 18, 'Voluptatum quos voluptates autem quis porro.', '2016-09-16'),
(76, 3, 26, 'Fuga aspernatur ea fugit.', '2010-04-16'),
(77, 1, 41, 'Possimus eaque voluptas quasi est consequatur officiis ipsam omnis.', '1981-03-05'),
(78, 3, 56, 'Dignissimos et repellendus commodi labore.', '1987-07-18'),
(79, 1, 40, 'Quidem necessitatibus architecto ab sequi.', '1984-09-19'),
(80, 4, 87, 'Corrupti hic et delectus eveniet ullam consectetur odit dolores.', '2010-05-06'),
(81, 1, 51, 'Sunt quo in quas excepturi.', '1994-06-01'),
(82, 3, 77, 'Pariatur deleniti dolor sit tenetur similique suscipit.', '1990-03-20'),
(83, 1, 100, 'Consectetur est adipisci rerum libero qui perferendis in accusamus.', '1996-10-02'),
(84, 1, 10, 'Aut consequatur ratione non provident quasi.', '1990-08-26'),
(85, 4, 2, 'Rerum eligendi hic tenetur aliquid doloribus.', '1984-12-07'),
(86, 4, 68, 'Et aspernatur similique sed at sit labore.', '2010-04-16'),
(87, 1, 81, 'Eum inventore officiis ad incidunt consequatur.', '2003-06-14'),
(88, 4, 41, 'Sit pariatur tempora quaerat facere est inventore in.', '2012-04-28'),
(89, 1, 56, 'Enim a odit fuga pariatur quasi.', '1974-08-08'),
(90, 2, 56, 'Eos ut delectus sed beatae labore exercitationem quos neque.', '2010-07-21'),
(91, 4, 30, 'Numquam possimus ipsam eos earum occaecati et.', '1989-10-16'),
(92, 4, 87, 'Qui quisquam non maxime dicta eius numquam ut.', '1982-11-10'),
(93, 5, 92, 'Omnis dicta expedita totam id.', '2017-11-05'),
(94, 5, 7, 'Quibusdam odit eum non numquam.', '1994-03-04'),
(95, 3, 67, 'Nostrum eligendi illo ad minima consectetur non.', '1971-04-17'),
(96, 4, 40, 'Neque qui aut tenetur ab incidunt ea nihil qui.', '1973-02-25'),
(97, 1, 25, 'Perferendis assumenda distinctio tenetur aperiam ratione illum ea.', '1990-09-07'),
(98, 2, 19, 'Eius aut sint repellendus possimus officia consectetur nostrum.', '2008-06-18'),
(99, 5, 37, 'Numquam doloribus id laboriosam et temporibus veritatis ea.', '1989-05-29'),
(100, 2, 85, 'Perspiciatis odio quam qui possimus voluptatem.', '2006-06-23'),
(101, 3, 54, 'Quia quod laborum magni aut delectus sit quasi deleniti.', '1999-08-24'),
(102, 3, 89, 'Eius laudantium beatae blanditiis eos neque sequi est.', '2003-03-31'),
(103, 1, 74, 'Id sed eligendi consequatur aut.', '2014-07-04'),
(104, 1, 2, 'Consequatur ut est consequatur ullam.', '1970-08-25'),
(105, 2, 30, 'Aspernatur voluptates voluptas distinctio consequatur.', '1997-08-10'),
(106, 1, 54, 'Ut consequatur maxime facilis cumque perferendis asperiores consectetur quod.', '2002-03-17'),
(107, 1, 70, 'Dolor dolorum voluptatibus et voluptas et perferendis architecto.', '1975-07-28'),
(108, 4, 26, 'Voluptate quia architecto quaerat dolor dolor.', '1981-11-24'),
(109, 4, 18, 'Ipsa voluptas accusantium omnis non excepturi magni.', '2014-07-29'),
(110, 3, 29, 'Et deserunt dolore voluptatem.', '1996-10-23'),
(111, 2, 22, 'Blanditiis commodi quo non laborum.', '1994-09-02'),
(112, 4, 43, 'Dolor aut asperiores exercitationem pariatur odit rem et.', '1980-09-27'),
(113, 1, 61, 'Dolore commodi iusto facere qui.', '1980-09-16'),
(114, 5, 37, 'Illo voluptas occaecati esse fugiat.', '1977-12-10'),
(115, 1, 79, 'Culpa suscipit recusandae quas sed et voluptas incidunt.', '1979-07-25'),
(116, 4, 98, 'Vero vel assumenda harum provident quia.', '2002-10-13'),
(117, 1, 95, 'Impedit et eos aliquid.', '2016-10-25'),
(118, 1, 12, 'Magni et minima veniam et voluptates aut est.', '1997-08-04'),
(119, 2, 67, 'Mollitia labore ad aliquid consectetur.', '1990-10-02'),
(120, 5, 49, 'Eos nesciunt totam distinctio omnis odio est laudantium aut.', '1981-06-23'),
(121, 3, 26, 'Quis et iure laudantium ut.', '2011-01-19'),
(122, 5, 70, 'Ut quibusdam dignissimos nulla libero consequuntur at mollitia.', '1979-03-18'),
(123, 5, 63, 'Qui quidem architecto aliquam iusto est numquam molestias.', '2009-07-10'),
(124, 4, 55, 'Ut sed dignissimos molestias vitae tempora qui officiis.', '1990-02-02'),
(125, 4, 12, 'Non accusantium rerum voluptas aperiam placeat.', '1997-09-30'),
(126, 4, 86, 'Laudantium ad fugiat iure qui dolorum consequatur.', '1977-01-25'),
(127, 1, 12, 'Qui amet neque est qui.', '2017-11-30'),
(128, 3, 54, 'Nobis consequuntur quibusdam voluptatum a officia ea non.', '1997-03-20'),
(129, 5, 10, 'Voluptatem quo neque dolores quae.', '1994-05-23'),
(130, 2, 86, 'Eos molestiae porro dolorem sit.', '1978-08-06'),
(131, 3, 94, 'Doloribus est repellat placeat et in eum in.', '2009-01-07'),
(132, 3, 55, 'Dolores est deserunt sit aut debitis.', '2016-09-10'),
(133, 5, 55, 'Nihil impedit vel in error.', '2000-03-18'),
(134, 5, 15, 'Dolor culpa in ut voluptatem suscipit.', '2018-05-13'),
(135, 4, 77, 'Cumque est et repudiandae dolore velit labore neque nihil.', '1982-04-06'),
(136, 5, 63, 'Pariatur est ratione quos porro cupiditate optio dolorem.', '2005-10-21'),
(137, 2, 59, 'Doloribus ipsa quisquam voluptas fugit sequi ut.', '1986-08-01'),
(138, 4, 68, 'Ipsa et nihil est nulla doloribus delectus.', '1990-08-19'),
(139, 1, 53, 'Voluptatem adipisci asperiores ut consequatur quasi.', '2018-08-28'),
(140, 5, 74, 'Libero rerum perspiciatis non harum.', '2012-01-29'),
(141, 3, 25, 'Nihil nihil aliquam quidem magni nesciunt.', '2003-02-09'),
(142, 1, 56, 'In ut incidunt suscipit natus.', '2011-01-29'),
(143, 1, 26, 'A est occaecati sit error nulla.', '2013-12-01'),
(144, 2, 78, 'Et laudantium eos ea nam harum a.', '2009-08-15'),
(145, 4, 14, 'Qui ut cupiditate reiciendis mollitia placeat voluptate nam.', '1975-02-15'),
(146, 2, 72, 'Id reprehenderit nobis magnam delectus quis.', '1989-04-16'),
(147, 1, 60, 'Quod explicabo alias at neque sed.', '1985-09-17'),
(148, 3, 27, 'Dolore ad dolores molestiae magnam.', '1997-04-17'),
(149, 3, 47, 'Fugit aut vel ipsa quam.', '2012-01-09'),
(150, 5, 81, 'Numquam fuga asperiores sunt qui.', '1991-01-22'),
(151, 3, 63, 'Laborum in vero et a.', '1979-05-27'),
(152, 4, 78, 'Est ea aut sequi facilis autem debitis.', '1980-05-28'),
(153, 3, 68, 'Hic alias molestiae necessitatibus atque dignissimos totam quasi.', '1970-01-28'),
(154, 5, 59, 'Facere animi error maxime recusandae.', '1996-03-04'),
(155, 3, 91, 'Expedita fuga in minima assumenda aut.', '2005-06-02'),
(156, 4, 39, 'Harum quisquam vero similique animi eligendi pariatur.', '1999-03-23'),
(157, 2, 17, 'Blanditiis tenetur incidunt voluptatem.', '2014-09-03'),
(158, 4, 30, 'Aut eum similique quia vel accusamus labore aut qui.', '1985-03-09'),
(159, 5, 50, 'Est similique autem vero sed temporibus et.', '2010-04-19'),
(160, 5, 70, 'Necessitatibus harum sunt sit quas aliquid.', '1989-03-26'),
(161, 1, 8, 'Nemo vel excepturi autem quasi ut aut.', '2016-07-06'),
(162, 3, 64, 'Qui incidunt ut repellat impedit sit.', '1982-01-28'),
(163, 3, 72, 'Dolorem deleniti a nulla dolore temporibus.', '1994-10-18'),
(164, 2, 77, 'Officia sunt nesciunt illo ut omnis aut architecto voluptatem.', '2011-10-27'),
(165, 1, 60, 'Temporibus quia quo temporibus repudiandae id.', '2003-09-01'),
(166, 5, 91, 'Doloremque iste assumenda repudiandae commodi animi architecto veniam.', '1975-09-09'),
(167, 5, 15, 'Voluptatem accusamus non voluptatem fugit.', '1981-03-25'),
(168, 5, 83, 'Odio consequuntur excepturi maiores accusamus et eaque.', '2010-11-28'),
(169, 5, 6, 'Eveniet voluptates facilis odit recusandae voluptatum nihil temporibus.', '1998-08-31'),
(170, 5, 16, 'Sunt ut laboriosam voluptatibus fugiat ea et.', '1992-10-22'),
(171, 3, 6, 'Et et porro placeat dolore quod molestiae.', '2004-07-07'),
(172, 3, 76, 'Pariatur quia quisquam neque consequatur unde atque.', '1976-01-22'),
(173, 1, 59, 'Voluptas magni exercitationem animi ea saepe iste voluptatem.', '2018-09-26'),
(174, 2, 62, 'Labore et doloremque quae architecto laboriosam nisi corporis modi.', '2005-04-19'),
(175, 3, 45, 'Autem aliquid earum qui eos iste placeat commodi dignissimos.', '1993-02-16'),
(176, 1, 98, 'Possimus quod ducimus voluptas voluptatem.', '2003-12-05'),
(177, 3, 97, 'Aut non quisquam consequatur laboriosam quia magnam voluptatem repellendus.', '2012-10-05'),
(178, 4, 57, 'Non vel et non eligendi.', '2014-03-30'),
(179, 5, 56, 'Nihil nisi ducimus occaecati quisquam quos.', '1976-11-22'),
(180, 3, 70, 'Totam est vero inventore voluptatibus necessitatibus dolores aut.', '1988-10-16'),
(181, 3, 16, 'Unde qui velit sunt dolor explicabo ad.', '1998-02-24'),
(182, 3, 67, 'Nulla ut qui labore rerum provident illo.', '1988-02-01'),
(183, 3, 33, 'Cum voluptatem maiores dolor quia itaque incidunt.', '2004-12-08'),
(184, 3, 2, 'Voluptatem quo neque repellat dicta qui minus vitae.', '1982-12-05'),
(185, 5, 53, 'Doloribus quia aut voluptatem.', '1998-12-23'),
(186, 1, 57, 'Exercitationem veritatis dolor qui et beatae.', '2009-02-24'),
(187, 2, 66, 'Consequatur modi magnam est non nulla nisi id.', '1983-06-14'),
(188, 1, 18, 'Et et sed qui officiis sapiente laudantium et.', '1982-10-30'),
(189, 5, 50, 'Quia beatae fugit omnis est necessitatibus facilis suscipit.', '1989-08-18'),
(190, 4, 27, 'Officia earum ut autem sint sequi numquam aperiam.', '1985-02-10'),
(191, 4, 22, 'Sapiente impedit aut delectus.', '1975-03-06'),
(192, 4, 73, 'Fuga facere vero et voluptas dolorem.', '2016-01-13'),
(193, 3, 34, 'Ratione animi ea deleniti quo excepturi minus iste.', '2004-07-14'),
(194, 3, 8, 'Ex omnis temporibus ducimus modi sit modi.', '2002-01-30'),
(195, 1, 98, 'Quia eos dolores quis explicabo earum ut commodi.', '2018-04-25'),
(196, 5, 84, 'Earum cupiditate voluptate eos ut consequatur animi.', '2012-07-28'),
(197, 1, 11, 'Sunt labore temporibus sed incidunt aut reiciendis nemo.', '1997-03-15'),
(198, 2, 97, 'Rerum doloribus debitis commodi et odit.', '1990-08-08'),
(199, 5, 8, 'Ut at blanditiis ipsum autem.', '2003-01-24'),
(200, 3, 82, 'Aut ut quisquam vel qui sapiente.', '1975-09-22');

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
(3, 3, 23.81, 9, 2, 3),
(4, 4, 65.25, 15, 2, 4),
(5, 5, 50.02, 17, 2, 5),
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
(101, 'admin', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', NULL, NULL, NULL, NULL, NULL),
(102, 'admin', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', NULL, NULL, NULL, NULL, NULL),
(103, 'admin', '$1$salt0123$O7peeN/6eCXL0x9F/yb.81', NULL, NULL, NULL, NULL, NULL);

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
  ADD KEY `REVIEW_trade` (`trade_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

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
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

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
