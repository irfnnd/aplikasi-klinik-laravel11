-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 12, 2024 at 03:20 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aplikasi-klinik`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `daftars`
--

CREATE TABLE `daftars` (
  `id` bigint UNSIGNED NOT NULL,
  `pasien_id` bigint UNSIGNED NOT NULL,
  `tanggal_daftar` date NOT NULL,
  `poli_id` bigint UNSIGNED NOT NULL,
  `keluhan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `diagnosis` text COLLATE utf8mb4_unicode_ci,
  `tindakan` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `daftars`
--

INSERT INTO `daftars` (`id`, `pasien_id`, `tanggal_daftar`, `poli_id`, `keluhan`, `diagnosis`, `tindakan`, `created_at`, `updated_at`) VALUES
(1, 69, '1973-06-27', 1, 'Ut qui nihil est consequuntur distinctio sed.', 'Aut quas labore dolores inventore ut maxime.', 'Laborum veniam alias nemo esse ipsum id nam.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(3, 67, '2000-08-08', 1, 'Ut nihil recusandae dolores doloremque excepturi soluta.', 'Provident dolor perferendis laborum deleniti mollitia accusamus distinctio.', 'Mati aja', '2024-11-22 15:39:49', '2024-11-27 07:20:06'),
(4, 57, '1984-01-17', 1, 'Omnis minima incidunt quasi qui.', 'Numquam rem ducimus non nobis maiores.', 'Optio id sed perspiciatis dolorum placeat enim.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(5, 58, '1975-06-28', 2, 'Et quam corporis temporibus iusto consequatur omnis cupiditate exercitationem.', 'Corporis voluptate libero non explicabo.', 'Aut occaecati sapiente at quaerat ipsa.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(6, 28, '2000-08-25', 2, 'Modi et quaerat officiis aut.', 'Et sit tempore voluptates eveniet aut et quia autem.', 'Iusto doloremque odio sed libero.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(7, 68, '2023-04-04', 2, 'Est voluptatem consequatur magnam est et esse error repellat.', 'Quia iure provident suscipit ullam et repellendus non animi.', 'Tenetur veritatis asperiores adipisci et consequatur illo ut ut.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(8, 68, '2002-03-20', 2, 'Natus adipisci facilis officiis vel soluta.', 'Placeat et aliquid ex et beatae quos.', 'Dolores assumenda quis omnis velit.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(9, 21, '2009-10-21', 1, 'Iste rem vero dolor omnis.', 'Occaecati dolorum atque exercitationem ullam doloribus beatae soluta reprehenderit.', 'Aut hic itaque consectetur at eligendi quia quae.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(10, 78, '1971-01-08', 1, 'Aperiam cum aut id.', 'Nisi aut unde tenetur molestias magnam.', 'Ipsum eum velit eveniet praesentium architecto iure omnis.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(11, 7, '1988-03-22', 2, 'Iure aut nostrum sunt in hic.', 'Quaerat autem ab esse et vel.', 'Vel debitis quam labore qui delectus fuga qui facere.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(12, 43, '1987-08-09', 1, 'Nisi in nihil repellat autem sed.', 'Velit sit ipsam qui placeat.', 'Et cupiditate vero est.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(13, 19, '1996-03-21', 1, 'Aperiam sed explicabo debitis fuga.', 'Assumenda laboriosam eaque molestiae omnis omnis quo corporis ea.', 'Enim vero ratione facilis est.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(14, 97, '2000-06-08', 2, 'Repudiandae dignissimos voluptatem illo dicta id ut.', 'Incidunt maiores repellendus quaerat ut eveniet ullam alias.', 'Accusamus qui atque officiis totam itaque.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(15, 92, '2008-02-01', 1, 'Odit doloribus aut inventore dicta blanditiis dolore earum.', 'Facere cum quod incidunt ea iste totam sed.', 'Vel tenetur reiciendis consequatur non alias.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(16, 29, '2005-10-23', 1, 'Nam dolorem quod porro reprehenderit voluptas.', 'Beatae tempore magnam non aut ut.', 'Omnis officiis in eum inventore officiis tempora minus.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(17, 72, '2003-04-03', 1, 'Aspernatur laborum sed quae eveniet recusandae.', 'Eius vero illo quo enim corrupti quae odit velit.', 'Maxime corrupti minima magnam sit.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(18, 57, '1972-07-25', 2, 'Alias est exercitationem sapiente dolorem.', 'Odit ab et ipsum quisquam est dicta.', 'Assumenda natus eaque placeat molestiae.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(19, 43, '1984-11-03', 1, 'Expedita labore asperiores non et assumenda enim adipisci.', 'Aut eum dolorum tempora sunt ea.', 'Culpa quas eos impedit.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(20, 18, '1972-11-17', 1, 'Ea dolores maxime et quia qui omnis.', 'Illo at consectetur quia velit neque voluptatem sunt.', 'Possimus vitae ea quisquam provident et.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(21, 69, '1995-01-08', 2, 'Et repellendus repudiandae rerum praesentium unde enim necessitatibus.', 'Id beatae unde ut architecto cum.', 'Doloremque ut vel odit quo.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(22, 15, '1988-11-01', 1, 'Aut voluptatibus omnis exercitationem labore aut.', 'Occaecati ut at perspiciatis eos aliquid.', 'Ut labore amet iure.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(23, 26, '2003-02-13', 2, 'Velit nostrum accusantium asperiores.', 'Labore earum nesciunt vel quisquam sint.', 'Possimus et deleniti quia cupiditate quae.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(24, 39, '2001-09-14', 2, 'Delectus autem ipsa laborum facere et unde molestiae cumque.', 'Expedita aut sit inventore ex esse.', 'Modi qui est odit ad voluptatem minima numquam voluptatem.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(25, 67, '1989-10-24', 1, 'Libero praesentium eum iusto aut quaerat magnam quia.', 'Quaerat deserunt quis enim culpa assumenda nam.', 'Qui vel explicabo ut molestias.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(26, 90, '1992-07-22', 2, 'Et quasi ut sit iure omnis.', 'Illum et nemo ab a.', 'Necessitatibus soluta qui maiores ut.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(27, 31, '2018-07-07', 1, 'Quam cumque ipsam harum consequuntur numquam quos doloremque.', 'Ad sapiente doloribus qui.', 'Deserunt aspernatur et dolorem nulla quibusdam.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(28, 23, '1998-09-18', 2, 'Ea alias aliquam soluta tempore delectus.', 'Perferendis illum iusto voluptate.', 'Qui quos sapiente ea dolore.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(29, 79, '2008-06-30', 2, 'Asperiores numquam perferendis numquam quod eligendi ad.', 'Ratione sint odio laudantium.', 'Non culpa porro omnis facilis labore aut aut.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(30, 9, '2008-05-14', 1, 'Atque sequi ex sunt nisi.', 'Praesentium dignissimos quas qui repellat eum iste enim.', 'Illum cum eum nostrum sed porro ut.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(31, 43, '1985-10-19', 1, 'Ea necessitatibus magnam est dolor.', 'Quia fugiat in et rem natus eligendi iure.', 'Ipsum voluptas omnis voluptatem ut voluptatem magnam.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(32, 50, '2023-07-25', 1, 'Tempore cupiditate facilis dolore temporibus.', 'Aut soluta sed molestiae dolorem ut similique accusamus.', 'Quia reprehenderit eum enim odit incidunt ut.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(33, 100, '1999-06-08', 2, 'Optio omnis qui ut voluptatem dicta.', 'Voluptate voluptas eos quam sunt voluptas quam eligendi qui.', 'Voluptas tenetur dicta ratione.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(34, 88, '1976-12-31', 2, 'Dicta voluptas labore ut repudiandae blanditiis.', 'Harum cum temporibus officia qui ut magni.', 'Ab debitis veritatis consequatur autem odit perspiciatis dolore.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(35, 47, '2014-01-19', 2, 'Sit nihil sint debitis.', 'Nam ducimus iusto aperiam a et.', 'Aut dicta ducimus voluptates ut consequatur.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(36, 67, '2017-12-20', 1, 'Rerum quod et debitis voluptate.', 'Doloribus similique temporibus perferendis.', 'Eveniet quasi ipsum numquam.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(37, 7, '2019-03-21', 1, 'Dolor praesentium reprehenderit omnis cum sed est.', 'Dolorem cupiditate ipsum ipsum molestias placeat delectus vel.', 'Fuga unde inventore nostrum quia eos ducimus officia ut.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(38, 48, '2011-11-27', 1, 'Tempore qui autem ipsam dolores nihil quod.', 'Quo ducimus aperiam commodi.', 'Enim illum nemo necessitatibus impedit sit qui non.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(39, 68, '2004-01-09', 1, 'Omnis esse velit corrupti quas possimus.', 'Sequi esse illo voluptatum earum soluta.', 'Animi cumque minus voluptatum quo sunt est est rerum.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(40, 43, '2007-11-19', 1, 'Autem maiores quibusdam ut sint ea.', 'Magnam sequi omnis ea quod enim reiciendis.', 'Enim et rem numquam voluptas dolorem voluptates aut.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(41, 80, '2021-08-07', 2, 'Officia iste laboriosam a minima.', 'Et ad exercitationem occaecati aliquid.', 'Natus quia dolor adipisci quos reiciendis.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(42, 79, '2013-06-16', 2, 'Exercitationem omnis dolore in quae ea suscipit.', 'Doloremque voluptatem consequatur dolorem officia officiis.', 'Dignissimos quo atque aut.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(43, 10, '2021-09-24', 2, 'Nemo dolore numquam sed officiis autem rerum.', 'Natus eius aspernatur possimus quidem autem veritatis.', 'Maiores cumque fuga qui qui quis.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(44, 91, '1999-12-02', 1, 'Ratione hic earum natus ut.', 'Maiores natus excepturi distinctio perspiciatis omnis molestiae numquam.', 'Quas error et illo voluptatem alias.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(45, 99, '2023-11-18', 2, 'Voluptas corrupti eum officiis error nihil debitis.', 'Provident quam quis impedit voluptas velit laborum.', 'Fuga earum ea officia rerum ipsum.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(46, 7, '1973-01-19', 1, 'Et id ipsa quia modi.', 'Aut minus dolores libero ipsa dolor fuga.', 'Qui a quam assumenda suscipit.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(47, 56, '1988-12-03', 1, 'At rem in iste laudantium aut deserunt autem consequatur.', 'Qui ut praesentium quaerat numquam et quidem ut.', 'Hic incidunt et et non non.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(48, 98, '1980-11-22', 2, 'Aliquam est ex cumque.', 'Error molestiae a aut nisi ut.', 'Suscipit tempora molestiae et et repellendus.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(49, 89, '1991-05-16', 1, 'Harum sed aperiam perspiciatis.', 'Officiis praesentium illum eum quis non.', 'Consequuntur inventore quis laboriosam et delectus fuga magni.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(50, 92, '2006-03-15', 1, 'Hic sequi aliquid architecto maxime.', 'Perspiciatis minus culpa ratione odio perspiciatis ex.', 'Itaque soluta cumque consequatur nobis.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(51, 73, '1996-12-05', 1, 'Illo nihil consequatur quibusdam ullam et et.', 'Enim nulla veritatis ea eligendi ipsa distinctio deleniti.', 'Ab ratione qui nemo ut dolore ratione laudantium.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(52, 56, '2012-11-22', 2, 'Velit est corrupti nihil non.', 'Vero aut dolor dolorem quibusdam.', 'Illum esse debitis dolores rerum nulla.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(53, 83, '1983-01-13', 2, 'Consequatur ut non itaque voluptatem.', 'Sint laboriosam aliquam cum itaque eveniet quas.', 'Necessitatibus aliquam fugiat accusamus eveniet.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(54, 46, '2022-02-24', 1, 'Sed est beatae magnam sed dolorum.', 'Necessitatibus eum optio fuga cumque soluta odit mollitia.', 'Animi sapiente cum alias iste reprehenderit rerum.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(55, 13, '2018-08-19', 2, 'Deserunt ut vero optio est fuga ipsam.', 'Asperiores sequi et molestiae est magnam pariatur minus.', 'Sunt vel consequatur esse adipisci pariatur.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(56, 100, '2009-01-27', 1, 'Minima tempora cumque sit nemo ab exercitationem dolor.', 'Est ullam eaque nesciunt magnam eum.', 'Occaecati repellat omnis eos vero laboriosam deserunt.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(57, 33, '2005-12-13', 2, 'Dicta eum repudiandae sit quas asperiores.', 'Repellendus qui maiores voluptates voluptas.', 'Consequuntur molestiae vel animi sapiente qui.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(58, 87, '2024-06-04', 2, 'Dicta qui est quia qui veniam.', 'Sapiente repellat voluptatum eos omnis harum molestiae mollitia.', 'Cum laudantium odit laudantium optio.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(59, 76, '2022-12-29', 1, 'Excepturi optio optio nostrum magni qui.', 'Rerum modi excepturi mollitia ipsum velit quisquam soluta.', 'Aut neque numquam voluptates dolores at.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(60, 83, '2005-11-17', 1, 'Omnis delectus enim minima voluptate itaque.', 'Ipsum eius est dignissimos ea.', 'Ipsam aut illo quia quo dolor nesciunt possimus.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(61, 79, '1978-07-28', 2, 'Dolores hic odio dolorem in ipsum assumenda officiis.', 'Minus eum animi et laborum rerum ducimus.', 'Dolores eveniet delectus fuga non recusandae qui voluptates fugit.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(62, 34, '1997-08-07', 1, 'Qui velit sint magnam at quo officiis.', 'Corrupti quis atque dolor modi odit.', 'Error aut dolore tempore aut.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(63, 4, '2021-07-01', 2, 'Quia odio provident hic ut optio blanditiis autem ipsam.', 'Sit omnis ad illum aut deserunt dolores.', 'Iste est est necessitatibus atque voluptate praesentium.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(64, 21, '2004-08-13', 1, 'Facere doloribus in in unde.', 'Ad eligendi officiis officia rerum vitae incidunt repudiandae.', 'Sed corrupti doloremque culpa sed occaecati et sit ut.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(65, 26, '1987-06-29', 2, 'At impedit velit occaecati dolorem facilis nobis.', 'Dolor eveniet fugit qui aut.', 'Est sed sint architecto rerum.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(66, 92, '2008-02-12', 1, 'Repellat voluptate earum voluptatem voluptatem cum nulla voluptate voluptatum.', 'Itaque saepe sint molestias ea.', 'Voluptatem reprehenderit amet neque earum beatae et.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(67, 97, '1984-05-23', 2, 'Eum beatae similique aspernatur reiciendis natus dolores.', 'Recusandae ex corrupti voluptatum a nam in et.', 'Aspernatur dolorum temporibus tempora laudantium.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(68, 64, '1987-05-21', 1, 'Et a laboriosam sit aut.', 'Quis officia ex eligendi laborum.', 'Rem beatae voluptate voluptatem a facere distinctio vitae.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(69, 81, '2012-10-22', 2, 'Qui itaque et cumque maxime laboriosam.', 'Qui ab repellat voluptatem dicta eum.', 'Ducimus aut repellendus dolorem iste.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(70, 55, '2008-07-15', 2, 'Quis aut nostrum pariatur dolorem delectus unde.', 'Impedit possimus sed doloremque et facilis quidem.', 'Aut rem delectus unde et excepturi.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(71, 61, '2016-06-04', 1, 'Hic vitae qui sunt aliquam.', 'Omnis tenetur et rerum nam dicta et ut.', 'Molestiae laudantium quia reprehenderit nihil molestiae veniam.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(72, 58, '1982-03-04', 2, 'Aut et aspernatur quo aut saepe voluptas.', 'Dolores et eos et et quae quaerat delectus ut.', 'Ipsam sapiente omnis beatae aut quia labore.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(73, 71, '2011-09-23', 2, 'A deleniti maiores repudiandae architecto fugiat cum.', 'Sint et fuga molestias et vel blanditiis.', 'Sunt reprehenderit in consectetur aliquid eos fuga.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(74, 97, '1986-12-27', 2, 'Quia distinctio voluptatem maiores dolore.', 'Nam voluptatibus qui vitae quos aut quia atque.', 'Est in voluptas pariatur minima libero voluptatibus non.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(75, 15, '2009-02-03', 2, 'Et dolor quo vitae qui.', 'Voluptatem dolore omnis et et asperiores.', 'Pariatur debitis quis qui a placeat quae consectetur.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(76, 3, '1979-03-23', 2, 'Voluptas in dicta et qui eaque rerum aut.', 'Autem sed consequatur hic distinctio consequatur nobis.', 'Error dicta dolorem dicta culpa.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(77, 68, '2012-09-01', 1, 'Sed libero sed tempore praesentium non qui.', 'Rerum illo similique et ut cum fugit.', 'Odio placeat velit a maiores nesciunt eius quam.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(78, 10, '1988-08-05', 2, 'Quia consequuntur sed dignissimos minus asperiores.', 'Sed qui at reiciendis modi distinctio enim nam.', 'Ducimus in natus voluptatem id ad odit incidunt.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(79, 5, '2020-11-20', 1, 'Ducimus labore voluptas rerum dolor ut et laboriosam.', 'Perspiciatis sequi unde amet cum.', 'Aut est nemo possimus aut voluptas.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(80, 50, '1987-12-07', 1, 'Alias sit dolore maxime molestias ipsam quia mollitia.', 'Nihil ut quaerat consequatur dolorum.', 'Vel molestiae optio occaecati ut blanditiis cum.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(81, 49, '1980-08-31', 1, 'Dignissimos sint repudiandae in.', 'Molestiae ducimus sint accusantium mollitia eligendi dolores veritatis et.', 'Libero pariatur et libero.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(82, 51, '2018-10-15', 1, 'Soluta iste assumenda quam est et quos delectus animi.', 'Ut et possimus eum asperiores error sunt nesciunt.', 'Ad ab aut earum placeat eius minima.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(83, 43, '2019-10-18', 1, 'Fugit aspernatur ut velit sit laudantium velit praesentium.', 'Deleniti velit perspiciatis adipisci ut sint doloremque in.', 'Ex dignissimos voluptates distinctio sit.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(84, 63, '1979-12-19', 2, 'Aut at beatae sapiente ut officiis nesciunt voluptatibus.', 'Itaque sed quos quia quod fugit adipisci in.', 'Commodi ipsam fugiat quod quis sint.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(85, 45, '1985-06-30', 1, 'Quisquam cumque eaque expedita non omnis autem exercitationem.', 'Rerum perspiciatis voluptates aut.', 'Atque quia doloribus quos sed tenetur facere.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(86, 77, '1975-03-18', 1, 'Odio quis voluptatem ullam nam vel consequatur magnam.', 'Excepturi natus cumque quia sunt quam dolores doloremque.', 'Aut deleniti neque blanditiis recusandae occaecati.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(87, 72, '1974-07-15', 2, 'Sint non sed aut reiciendis officiis.', 'Quia dolorum culpa nostrum iure quod optio voluptatem.', 'Accusantium soluta velit minus illo deserunt sed quae.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(88, 84, '2006-08-12', 2, 'Qui sed facere officia mollitia laudantium.', 'Atque a quidem non dolor.', 'Magni molestiae est labore vel.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(89, 72, '1982-02-16', 1, 'Accusamus magni sit cum dolorem ratione unde.', 'Quibusdam error a sint qui culpa ipsum.', 'Blanditiis esse blanditiis veritatis iure perspiciatis.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(90, 29, '2011-05-08', 1, 'Et cum necessitatibus et.', 'Suscipit iusto recusandae facilis nostrum reprehenderit qui iusto.', 'Sed ea asperiores odio numquam totam aut.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(91, 13, '1996-05-21', 1, 'Rerum voluptatibus sapiente similique et hic.', 'Quia dolorum facilis quo suscipit.', 'Non est dolorem quidem iure eligendi velit suscipit.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(92, 83, '2018-02-15', 1, 'Quo placeat id tempora.', 'Nemo facilis quo quis iure.', 'Aut ipsa voluptatibus nobis enim soluta commodi.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(93, 74, '1999-08-21', 2, 'Quas nesciunt et quia id quidem molestiae.', 'Sequi rem dignissimos iste minima omnis aperiam dolor.', 'Eum repellat sequi id consequuntur id soluta.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(94, 92, '1990-01-18', 2, 'Error saepe asperiores hic ipsam et eos.', 'Alias occaecati veritatis officiis harum provident soluta.', 'Pariatur et voluptatem et incidunt mollitia aut est harum.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(95, 71, '1973-11-01', 2, 'Repudiandae nisi qui ipsa autem beatae.', 'Animi laboriosam ratione aliquam consequatur eaque et amet.', 'Exercitationem deleniti quam quibusdam placeat nulla.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(96, 72, '1988-08-18', 2, 'Rerum inventore ut quibusdam maxime quas nostrum ut.', 'Dolores explicabo explicabo quam quidem.', 'Architecto et ut veritatis nobis laboriosam.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(97, 64, '1985-04-25', 1, 'Praesentium ab qui quibusdam voluptatem.', 'Laborum consectetur deleniti quae odit et saepe.', 'Harum corrupti unde sequi aut est voluptatibus odit.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(98, 43, '2020-10-15', 2, 'Laborum ut dolor officiis animi aut assumenda sed minima.', 'Ut officia consequatur modi porro.', 'Expedita harum aperiam repellat nulla corrupti.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(99, 68, '2003-12-26', 2, 'Autem architecto laboriosam sed laborum quia.', 'Quam fugit nihil ut voluptatum dolorem officiis voluptate.', 'Ex itaque odio in rerum voluptate saepe voluptate.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(100, 79, '2019-03-03', 2, 'Voluptatem debitis qui expedita omnis mollitia placeat cum.', 'Omnis et esse qui accusamus.', 'Omnis quis numquam reiciendis nesciunt autem reprehenderit eaque aspernatur.', '2024-11-22 15:39:49', '2024-11-22 15:39:49'),
(101, 108, '2024-11-22', 1, 'cabut gigi', 'Gigi berlubang', 'Tambal gigi', '2024-11-22 15:40:30', '2024-11-23 14:17:10'),
(102, 108, '2024-11-28', 2, 'Kelilipan', NULL, NULL, '2024-11-28 14:56:22', '2024-11-28 14:56:22'),
(103, 108, '2024-11-28', 1, 'Gigi berlubang', NULL, NULL, '2024-11-28 14:58:54', '2024-11-28 14:58:54'),
(104, 37, '2024-11-28', 1, 'Sakit gigi', NULL, NULL, '2024-11-28 15:30:20', '2024-11-28 15:30:20'),
(105, 37, '2024-11-28', 3, 'aslk;la', NULL, NULL, '2024-11-28 15:52:11', '2024-11-28 15:52:11'),
(106, 33, '2024-11-29', 3, 'Vaksin', NULL, NULL, '2024-11-29 00:39:28', '2024-11-29 00:39:28');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_11_19_142742_create_pasiens_table', 2),
(5, '2024_11_19_173513_add_foto_to_pasiens', 3),
(6, '2024_11_20_203729_create_daftars_table', 4),
(7, '2024_11_21_214500_create_polis_table', 5),
(8, '2024_11_22_223843_create_daftars_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `pasiens`
--

CREATE TABLE `pasiens` (
  `id` bigint UNSIGNED NOT NULL,
  `no_pasien` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `umur` int NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pasiens`
--

INSERT INTO `pasiens` (`id`, `no_pasien`, `nama`, `umur`, `jenis_kelamin`, `alamat`, `created_at`, `updated_at`, `foto`) VALUES
(3, '734457', 'Ulya Pertiwi', 45, 'Perempuan', 'Jln. Samanhudi No. 694, Manado 50279, Sulbar', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(4, '354342', 'Jatmiko Haryanto', 31, 'Perempuan', 'Gg. Batako No. 29, Cimahi 24886, Bali', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(5, '408844', 'Edi Hakim', 39, 'Perempuan', 'Jr. Taman No. 432, Subulussalam 60953, NTB', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(6, '885204', 'Dasa Enteng Tamba S.Psi', 25, 'Laki-laki', 'Kpg. Gading No. 380, Bandung 56155, Jambi', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(7, '891871', 'Rendy Cawisadi Pangestu M.Kom.', 42, 'Perempuan', 'Kpg. Muwardi No. 96, Ambon 99225, Lampung', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(8, '161761', 'Aswani Jailani', 45, 'Perempuan', 'Jln. Pelajar Pejuang 45 No. 520, Bima 57121, Jateng', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(9, '470154', 'Bakiman Mustofa Budiman S.Farm', 41, 'Laki-laki', 'Ki. Adisumarmo No. 836, Makassar 82481, Sulteng', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(10, '413694', 'Carla Agustina', 48, 'Perempuan', 'Ki. Cikutra Barat No. 807, Kediri 63173, Kalbar', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(11, '789629', 'Eja Tarihoran S.E.', 46, 'Perempuan', 'Ki. Surapati No. 984, Tebing Tinggi 77073, Babel', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(12, '415295', 'Keisha Mandasari', 48, 'Perempuan', 'Dk. Basmol Raya No. 27, Mojokerto 27172, Kaltim', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(13, '968885', 'Cakrawala Wasita S.T.', 40, 'Laki-laki', 'Kpg. Mulyadi No. 124, Prabumulih 81089, Lampung', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(14, '322473', 'Wawan Luwes Sihotang', 33, 'Laki-laki', 'Ki. W.R. Supratman No. 835, Cirebon 14705, NTT', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(15, '975960', 'Banawa Irawan', 32, 'Perempuan', 'Dk. Supono No. 917, Banjar 56493, Sumbar', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(16, '671734', 'Betania Farida S.Farm', 25, 'Perempuan', 'Ds. BKR No. 83, Palopo 95183, Sulsel', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(17, '825981', 'Digdaya Gatra Marpaung', 30, 'Laki-laki', 'Ds. Sugiono No. 71, Sukabumi 41231, Maluku', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(18, '130647', 'Titi Maya Halimah M.M.', 38, 'Laki-laki', 'Dk. Tangkuban Perahu No. 862, Batu 21534, NTB', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(19, '806163', 'Ellis Mardhiyah', 28, 'Laki-laki', 'Jr. Babah No. 930, Sungai Penuh 75462, Gorontalo', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(20, '690626', 'Asmianto Kuswoyo', 39, 'Laki-laki', 'Psr. HOS. Cjokroaminoto (Pasirkaliki) No. 969, Pasuruan 77981, Sulteng', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(21, '315730', 'Garan Maheswara S.Gz', 40, 'Perempuan', 'Ds. Ahmad Dahlan No. 28, Sabang 24856, Jambi', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(22, '403332', 'Luluh Wijaya', 33, 'Laki-laki', 'Kpg. Teuku Umar No. 204, Banjarmasin 21236, Babel', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(23, '689045', 'Kasiyah Melani S.Farm', 57, 'Perempuan', 'Gg. Bayam No. 262, Kotamobagu 23032, Sulbar', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(24, '378512', 'Hana Nasyiah S.I.Kom', 32, 'Laki-laki', 'Ki. Banceng Pondok No. 320, Palopo 17859, Jatim', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(25, '6707', 'Lurhur Halim', 54, 'Laki-laki', 'Jln. Suprapto No. 80, Makassar 73130, Aceh', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(26, '13150', 'Sari Nasyiah', 28, 'Perempuan', 'Jln. Fajar No. 630, Kediri 42216, Sulteng', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(27, '16149', 'Puput Purnawati S.H.', 56, 'Perempuan', 'Psr. Urip Sumoharjo No. 941, Jambi 57575, Kalbar', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(28, '983907', 'Ratna Sabrina Pudjiastuti M.Ak', 60, 'Perempuan', 'Gg. Kalimalang No. 43, Banjar 75124, Kalsel', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(29, '590392', 'Clara Pertiwi', 54, 'Perempuan', 'Jln. Cut Nyak Dien No. 471, Singkawang 12801, Sulsel', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(30, '506460', 'Timbul Tarihoran', 30, 'Laki-laki', 'Gg. Sudiarto No. 591, Parepare 37576, Papua', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(31, '323854', 'Lintang Wastuti', 38, 'Laki-laki', 'Psr. Bagas Pati No. 520, Tanjungbalai 43474, Kalbar', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(32, '93356', 'Hendra Ikin Hidayat S.Pd', 36, 'Laki-laki', 'Kpg. Kebonjati No. 92, Mataram 89221, Banten', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(33, '759775', 'Aditya Situmorang', 36, 'Laki-laki', 'Kpg. Ujung No. 368, Banjarbaru 76898, Kaltim', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(34, '40751', 'Johan Asmianto Kusumo S.Sos', 54, 'Perempuan', 'Psr. Bakaru No. 817, Surabaya 60032, Sumbar', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(35, '270432', 'Jessica Rahayu', 52, 'Laki-laki', 'Psr. Wahid No. 420, Bengkulu 68821, Sulut', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(36, '483559', 'Prayogo Thamrin', 50, 'Laki-laki', 'Gg. Jayawijaya No. 825, Cimahi 69617, DIY', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(37, '619102', 'Abyasa Rajasa', 54, 'Perempuan', 'Ds. Perintis Kemerdekaan No. 525, Cilegon 35529, Babel', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(38, '289990', 'Kani Farida', 53, 'Laki-laki', 'Dk. Umalas No. 79, Bengkulu 34343, Malut', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(39, '419634', 'Tania Yolanda', 21, 'Perempuan', 'Kpg. Bak Air No. 508, Cirebon 73749, Papua', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(40, '149022', 'Hartaka Anggriawan', 20, 'Perempuan', 'Gg. Suryo Pranoto No. 993, Balikpapan 19297, Sulteng', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(41, '503934', 'Ilsa Safitri', 59, 'Laki-laki', 'Psr. Wahidin Sudirohusodo No. 891, Singkawang 43581, Kaltara', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(42, '667034', 'Oliva Nuraini', 29, 'Perempuan', 'Ds. Sutarjo No. 237, Cilegon 54153, DKI', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(43, '463137', 'Ilsa Farida', 37, 'Laki-laki', 'Gg. Elang No. 356, Yogyakarta 22572, Sumsel', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(44, '718431', 'Kacung Maryadi S.E.', 58, 'Perempuan', 'Gg. Bass No. 885, Batu 27227, Jabar', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(45, '502367', 'Lintang Suryatmi', 53, 'Laki-laki', 'Psr. Barat No. 741, Administrasi Jakarta Barat 40562, Sumsel', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(46, '273084', 'Liman Marpaung S.I.Kom', 41, 'Perempuan', 'Jln. Casablanca No. 237, Malang 38293, Jateng', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(47, '572522', 'Indah Rahayu S.Sos', 46, 'Laki-laki', 'Ds. Abang No. 84, Cilegon 70876, Babel', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(48, '787714', 'Tri Siregar S.I.Kom', 40, 'Perempuan', 'Dk. Sutarjo No. 923, Padangsidempuan 35941, Sulsel', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(49, '25894', 'Laras Yolanda S.Sos', 30, 'Laki-laki', 'Psr. Nanas No. 850, Bima 46327, Papua', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(50, '792749', 'Gawati Oktaviani', 54, 'Perempuan', 'Jln. Balikpapan No. 280, Salatiga 47890, Lampung', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(51, '503514', 'Wirda Rahmi Susanti M.Ak', 54, 'Laki-laki', 'Jln. Sutami No. 270, Palu 47603, Sumbar', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(52, '542949', 'Yance Namaga', 40, 'Laki-laki', 'Gg. Flores No. 501, Langsa 83296, Sulbar', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(53, '940540', 'Prasetya Kuncara Tamba S.E.I', 25, 'Laki-laki', 'Ds. Flora No. 995, Tanjung Pinang 45298, Sumbar', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(54, '817213', 'Martani Rahmat Hidayanto', 40, 'Perempuan', 'Dk. Wahid Hasyim No. 376, Cilegon 49686, Maluku', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(55, '844673', 'Kasiyah Mardhiyah', 48, 'Laki-laki', 'Ki. Nakula No. 637, Metro 87980, Papua', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(56, '132889', 'Vinsen Utama S.Farm', 40, 'Perempuan', 'Dk. Sugiyopranoto No. 689, Mojokerto 62137, Kaltim', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(57, '204407', 'Muni Firgantoro', 43, 'Laki-laki', 'Jln. Umalas No. 95, Madiun 30319, Babel', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(58, '763304', 'Hasan Lukman Santoso S.H.', 20, 'Laki-laki', 'Ki. Abdullah No. 432, Parepare 93266, Papua', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(59, '548534', 'Lalita Umi Susanti S.E.', 57, 'Perempuan', 'Gg. Lada No. 186, Pariaman 50505, Jambi', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(60, '934388', 'Omar Sitompul', 31, 'Laki-laki', 'Ki. Sukajadi No. 320, Administrasi Jakarta Pusat 27465, Jateng', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(61, '345604', 'Paris Namaga M.M.', 56, 'Laki-laki', 'Kpg. Baya Kali Bungur No. 810, Bandar Lampung 74768, Sulsel', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(62, '589694', 'Purwanto Dacin Januar M.Pd', 45, 'Perempuan', 'Dk. Teuku Umar No. 229, Kediri 67772, Kalteng', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(63, '356441', 'Taufan Tamba', 28, 'Laki-laki', 'Ki. Warga No. 189, Sawahlunto 30022, Jambi', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(64, '565750', 'Vanesa Ilsa Yuliarti', 51, 'Laki-laki', 'Dk. Ahmad Dahlan No. 245, Bitung 46916, Jateng', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(65, '764661', 'Amalia Wastuti M.Kom.', 40, 'Perempuan', 'Psr. Bagonwoto  No. 169, Palembang 74520, Jateng', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(66, '482182', 'Salman Saefullah', 50, 'Laki-laki', 'Dk. Teuku Umar No. 46, Padangpanjang 21734, Kaltara', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(67, '567552', 'Prasetyo Prabu Marpaung', 22, 'Laki-laki', 'Psr. Bara No. 150, Mojokerto 26065, Bali', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(68, '431564', 'Salwa Zelda Lailasari', 36, 'Laki-laki', 'Jr. Gedebage Selatan No. 580, Subulussalam 33283, Sulteng', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(69, '605113', 'Prabu Lazuardi', 35, 'Laki-laki', 'Ds. Monginsidi No. 116, Probolinggo 39802, DIY', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(70, '226204', 'Saka Prabowo', 44, 'Laki-laki', 'Kpg. Kusmanto No. 436, Palangka Raya 82596, Pabar', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(71, '979457', 'Samsul Vinsen Damanik', 35, 'Laki-laki', 'Gg. Balikpapan No. 676, Tangerang 25104, Pabar', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(72, '154983', 'Wirda Palastri', 29, 'Perempuan', 'Dk. Bank Dagang Negara No. 503, Bontang 97357, NTB', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(73, '240319', 'Nabila Novitasari', 48, 'Laki-laki', 'Jln. Soekarno Hatta No. 90, Tual 28161, Babel', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(74, '320217', 'Panji Niyaga Saefullah S.T.', 24, 'Perempuan', 'Psr. Radio No. 544, Banda Aceh 96888, Kaltara', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(75, '493798', 'Nadia Lestari M.Kom.', 59, 'Laki-laki', 'Jr. Jend. A. Yani No. 461, Depok 71825, Maluku', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(76, '684036', 'Reksa Januar', 35, 'Perempuan', 'Ds. Baranangsiang No. 269, Tomohon 30287, Bali', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(77, '195821', 'Danu Latupono M.Farm', 27, 'Perempuan', 'Ds. Sutarjo No. 733, Pasuruan 47088, Sulbar', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(78, '600608', 'Ida Pudjiastuti', 26, 'Perempuan', 'Ki. Baung No. 55, Bengkulu 99776, Jabar', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(79, '939433', 'Enteng Manullang M.Farm', 59, 'Perempuan', 'Dk. Kyai Gede No. 454, Pematangsiantar 67748, Gorontalo', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(80, '116434', 'Fitria Safitri', 45, 'Perempuan', 'Gg. Moch. Ramdan No. 214, Tebing Tinggi 91472, Sumbar', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(81, '608229', 'Reza Nashiruddin', 43, 'Perempuan', 'Jln. Asia Afrika No. 773, Surakarta 26721, Sulut', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(82, '895257', 'Cengkal Kusumo S.Psi', 32, 'Laki-laki', 'Psr. BKR No. 724, Banda Aceh 67397, Pabar', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(83, '39106', 'Tira Nuraini', 38, 'Perempuan', 'Jr. Warga No. 889, Pariaman 33163, Sulut', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(84, '193901', 'Bahuraksa Hidayat', 35, 'Perempuan', 'Ds. Gegerkalong Hilir No. 270, Administrasi Jakarta Pusat 12143, Kaltara', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(85, '477636', 'Mahdi Waluyo', 23, 'Perempuan', 'Kpg. Padma No. 506, Tarakan 92797, Kalteng', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(86, '204471', 'Raharja Simanjuntak M.Pd', 27, 'Perempuan', 'Ds. Bara Tambar No. 239, Batam 22513, Papua', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(87, '137582', 'Erik Limar Tampubolon S.IP', 56, 'Laki-laki', 'Ds. Abdullah No. 187, Batu 65676, Sulsel', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(88, '837663', 'Tri Hutapea S.Pd', 40, 'Laki-laki', 'Kpg. Ujung No. 927, Medan 99791, DKI', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(89, '93309', 'Tantri Puspita', 44, 'Laki-laki', 'Ki. Pasirkoja No. 406, Tidore Kepulauan 22387, Kepri', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(90, '614636', 'Jagapati Manullang', 24, 'Laki-laki', 'Jr. Gegerkalong Hilir No. 836, Cilegon 40645, Sulbar', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(91, '991815', 'Sabrina Uyainah', 33, 'Laki-laki', 'Ki. Sadang Serang No. 790, Jambi 37217, Sumbar', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(92, '51207', 'Septi Fitriani Rahayu', 58, 'Perempuan', 'Gg. Sugiyopranoto No. 666, Kupang 90576, Jabar', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(93, '484365', 'Jati Damu Lazuardi', 36, 'Perempuan', 'Ki. Bahagia No. 364, Gorontalo 56310, Bengkulu', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(94, '921476', 'Syahrini Dalima Mardhiyah M.Pd', 41, 'Perempuan', 'Dk. Supono No. 398, Padangpanjang 25229, Sumbar', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(95, '107763', 'Catur Pratama S.E.', 32, 'Perempuan', 'Dk. Perintis Kemerdekaan No. 66, Samarinda 72411, Papua', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(96, '701546', 'Kemba Jaeman Prayoga S.T.', 33, 'Laki-laki', 'Ds. Supono No. 909, Tebing Tinggi 84726, Jabar', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(97, '431496', 'Kajen Vinsen Budiman', 46, 'Laki-laki', 'Dk. Qrisdoren No. 643, Lubuklinggau 79799, Riau', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(98, '705013', 'Pangeran Hidayanto S.Pd', 33, 'Perempuan', 'Ki. Ekonomi No. 54, Madiun 82977, Riau', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(99, '894214', 'Edison Tirtayasa Prayoga S.T.', 34, 'Laki-laki', 'Jln. Thamrin No. 309, Tebing Tinggi 13609, Jabar', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(100, '25425', 'Laras Halimah S.Pt', 54, 'Laki-laki', 'Ds. Raya Ujungberung No. 524, Bima 37023, Malut', '2024-11-19 08:00:44', '2024-11-19 08:00:44', NULL),
(108, '62736', 'M. Irfandi Atarza', 20, 'Laki-laki', 'Padang, Sumatera Barat', '2024-11-19 14:04:26', '2024-11-28 13:31:38', 'uploads/qaIbRVDrLsR5axZikx6VyEuuqPSEHBNk5BEalP8A.jpg'),
(111, '2309', 'Teuku Hamzah', 20, 'Laki-laki', NULL, '2024-11-28 15:31:21', '2024-11-28 15:31:21', NULL),
(112, '9219', 'Irfandi', 20, 'Laki-laki', 'Jl. Sudirman', '2024-12-11 09:34:17', '2024-12-11 09:34:17', 'uploads/RUiBMBl78E7fQavX8O4VvAikgUqmEnMJMZBJMVtF.png');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('lobuoku@gmail.com', '$2y$12$vdvttReIwcOIqXOfOeRDhuVnTAIBB.xPo1EtWxXGf12yimloXBgYa', '2024-11-26 14:51:03');

-- --------------------------------------------------------

--
-- Table structure for table `polis`
--

CREATE TABLE `polis` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `biaya` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `polis`
--

INSERT INTO `polis` (`id`, `nama`, `biaya`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'Gigi', '30000', NULL, '2024-11-21 15:26:48', '2024-11-21 15:26:48'),
(2, 'Mata', '20000', NULL, '2024-11-21 15:29:18', '2024-11-21 15:29:18'),
(3, 'Anak', '40000', NULL, '2024-11-28 15:31:48', '2024-11-28 15:31:48');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('67DFHZGyn1fYiuVXMpk6bv9iEiTvLTVZBD9OmeOl', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiSXBZQzdrdGNTSGwzcXZHZmVMYVZlcW12TFpPa3A5S0tNZ3dFVjI4QiI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMzOiJodHRwOi8vYXBsaWthc2kta2xpbmlrLnRlc3QvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6NDoiYXV0aCI7YToxOntzOjIxOiJwYXNzd29yZF9jb25maXJtZWRfYXQiO2k6MTczMzkwNDY0Nzt9fQ==', 1733904647),
('9qBT0iIfK5p4Ad9c6K9f2hVNUALfs9Tv3XVIdWTY', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiazE0WjdNWGJTeWZNOUZYanBiQVdZZUp1TmowVGpheGVBUDVFTmZ1OSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9hcGxpa2FzaS1rbGluaWsudGVzdC9sb2dpbiI7fXM6NDoiYXV0aCI7YToxOntzOjIxOiJwYXNzd29yZF9jb25maXJtZWRfYXQiO2k6MTczMzkwOTM4MTt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1733909382),
('DTSUPccwakhtnMYF4lj1Xn0wUUaKIj5fM2OFm3o3', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiblFnbzJMcmc4WjNFZXNpSFJXWnRMQkdNMkEzWFVVc2pnVFBFT2dNMiI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjg3OiJodHRwOi8vYXBsaWthc2kta2xpbmlrLnRlc3QvbGFwb3Jhbi1wYXNpZW4/amVuaXNfa2VsYW1pbj0mdGFuZ2dhbF9ha2hpcj0mdGFuZ2dhbF9tdWxhaT0iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO3M6NDoiYXV0aCI7YToxOntzOjIxOiJwYXNzd29yZF9jb25maXJtZWRfYXQiO2k6MTczMzkzMDQyNDt9fQ==', 1733930449),
('lmcXwToXyAHkyO7t3LmUZi9Tp3GNzRTGDfKPkS57', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiOTV5aGtvRHNxMm1tOVl4Ylk0eTRTWHZLZGdLbFRXUjdVemdsYk41byI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9hcGxpa2FzaS1rbGluaWsudGVzdC9sb2dpbiI7fXM6NDoiYXV0aCI7YToxOntzOjIxOiJwYXNzd29yZF9jb25maXJtZWRfYXQiO2k6MTczMzkwOTM4MTt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1733909382),
('UnuzpCINj74jKbKwGuIagNUuanIvS4is86HIiaJ9', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoicVBIYlZvQXlDOEdjdDkxTzA5ZWpMZ3BReGtPYXVDN0JKZXFDbmhxRCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly9hcGxpa2FzaS1rbGluaWsudGVzdC9sYXBvcmFuLWRhZnRhci9jcmVhdGUiO31zOjQ6ImF1dGgiO2E6MTp7czoyMToicGFzc3dvcmRfY29uZmlybWVkX2F0IjtpOjE3MzM5MDk4MzQ7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7fQ==', 1733910201);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'M. Irfandi Atarza', 'lobuoku@gmail.com', NULL, '$2y$12$sbWtBd/GIrhxphQ7TRmGVOM4Bi8xHhb0kHFg4HaOTTsv2Ob6i.jQa', 'admin', 'npJ161dbId35mZRHxKixftPxUtZAvWHmQzp0MiVahq4s7VtgDjgASxcdtubY', '2024-11-19 15:34:28', '2024-11-19 15:34:28'),
(2, 'M. Irfandi Atarza', 'akunoperasinal@gmail.com', NULL, '$2y$12$KlkyhRyav5Rqr1dE8Gh7PefBb54P6KqRXyrKWk/Tj3gCgAIfVJuyq', 'user', NULL, '2024-11-26 14:49:36', '2024-11-26 14:49:36'),
(3, 'Ahmad Sanusi', 'asdasa@mail.com', NULL, '$2y$12$k8DaV4JJ/wIhCAOeKLHFme5ws5P8TfmOkPs7V8Ie6pW/iURVvnSjW', 'user', NULL, '2024-11-28 13:54:41', '2024-11-28 14:24:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `daftars`
--
ALTER TABLE `daftars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pasiens`
--
ALTER TABLE `pasiens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `polis`
--
ALTER TABLE `polis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `daftars`
--
ALTER TABLE `daftars`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pasiens`
--
ALTER TABLE `pasiens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `polis`
--
ALTER TABLE `polis`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
