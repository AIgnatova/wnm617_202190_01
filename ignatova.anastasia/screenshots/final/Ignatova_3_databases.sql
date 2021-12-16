-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 15, 2021 at 10:00 PM
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
-- Database: `innerbloom_products_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `brand_name` varchar(32) NOT NULL,
  `name` varchar(64) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(10) NOT NULL,
  `category` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `thumbnail` varchar(128) NOT NULL,
  `images` varchar(256) NOT NULL,
  `date_create` datetime NOT NULL,
  `date_modify` datetime NOT NULL,
  `skin_type` varchar(64) NOT NULL,
  `url` varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_name`, `name`, `price`, `quantity`, `category`, `description`, `thumbnail`, `images`, `date_create`, `date_modify`, `skin_type`, `url`) VALUES
(1, 'Drunk Elephant', 'Protini Polypeptide Moisturizer', 68.00, 100, 'moisturizer', 'A protein moisturizer that combines signal peptides, growth factors, amino acids, and pygmy waterlily to visibly improve skin‘s tone, texture, and firmness.', 'img/protini_thumb.jpeg', 'img/protini_1.jpeg', '2021-04-18 15:39:28', '2021-04-18 15:39:28', 'Normal, Dry, Combination, and Oily', ''),
(2, 'Drunk Elephant', 'Lala Retro™ Whipped Moisturizer', 60.00, 100, 'moisturizer', 'A rescue cream infused with six African oils and a plant ceramide complex for intense moisture and replenishing barrier support.', 'img/lalaretro_thumb.jpeg', 'img/lalaretro_1.jpeg', '2021-04-18 15:49:41', '2021-04-18 15:49:41', 'Normal, Dry, Combination, and Oily', ''),
(3, 'Lancôme', 'Re-Hydrating Comforting Toner', 35.00, 100, 'toner', 'A soothing and moisturizing toner that gently cleanses and hydrates dry skin for a smooth, glowing appearance.', 'img/lancome_toner_thumb.jpeg', 'img/lancome_toner_1.jpeg, img/lancome_toner_2.jpeg', '2021-04-18 16:02:34', '2021-04-18 16:02:34', 'Normal, Dry, Combination, and Oily', ''),
(4, 'OLEHENRIKSEN', 'Truth Serum®', 50.00, 100, 'serum', 'A powerful anti-aging serum formulated with vitamin C and collagen for brightening and all-day hydration.', 'img/truthserum_thumb.jpeg', 'img/truthserum_1.jpeg', '2021-04-18 16:09:40', '2021-04-18 16:09:40', 'Normal, Dry, Combination, and Oily', ''),
(5, 'OLEHENRIKSEN', 'Banana Bright Eye Crème', 39.00, 100, 'eye_cream', 'A brightening, vitamin C-rich eye crème that targets signs of aging, reducing the look of dark circles while improving concealer application and wear—inspired by makeup artist secret, banana powder.', 'img/bananabright_thumb.jpeg', 'img/bananabright_1.jpeg,\r\nimg/bananabright_2.jpeg', '2021-04-18 16:12:43', '2021-04-18 16:12:43', 'Normal, Oily, Combination, Dry, Sensitive', ''),
(6, 'Clarins', 'Natural Lip Perfector', 26.00, 100, 'lip_balm', 'Smoothes, softens and visibly plumps with Acacia micro-pearls and vegetable waxes to smooth, and soothes the senses with a delicate scent of vanilla. ', 'img/clarinslipperfefctor_thumb.jpeg', 'img/clarinslipperfefctor_1.jpeg', '2021-04-18 16:19:05', '2021-04-18 16:19:05', 'Dry', ''),
(7, 'Sol de Janeiro', 'Brazilian Bum Bum Cream', 45.00, 100, 'body_cream', 'A fast-absorbing body cream with an addictive scent and a visibly tightening, smoothing formula that adds a hint of shimmer to skin.', 'img/bumbumcream_thumb.jpeg', 'img/bumbumcream_1.jpeg,\r\nimg/bumbumcream_2.jpeg, img/bumbumcream_3.jpeg,', '2021-04-18 16:23:02', '2021-04-18 16:23:02', 'All', ''),
(8, 'Sol de Janeiro', 'Bom Dia Bright™ Body Cream', 45.00, 100, 'body_cream', 'A retexturizing and nourishing daily body cream with Fruit AHAs and Vitamin C that reveals visibly brighter, smoother skin.', 'img/bomdia_thumb.jpeg', 'img/bomdia_1.jpeg,\r\nimg/bomdia_2.jpeg', '2021-04-18 16:26:01', '2021-04-18 16:26:01', 'All', ''),
(9, 'Kiehl\'s', 'Turmeric & Cranberry Seed Mask', 45.00, 100, 'face_mask', 'An energizing radiance mask that helps visibly brighten dull, fatigued skin.', 'img/kiehls_cranberry_mask_thumb.jpeg', 'img/kiehls_cranberry_mask_1.jpeg', '2021-04-18 16:30:36', '2021-04-18 16:30:36', 'Normal, Combination, and Oily', ''),
(10, 'SUNDAY RILEY', 'C.E.O Glow Face Oil', 80.00, 100, 'lightweight_oil', 'An instantly absorbing face oil infused with advanced vitamin C (THD ascorbate), turmeric, and evening primrose oil, to brighten, hydrate, and leave skin glowing.', 'img/sundayriley_ceoglow_thumb.jpeg', 'img/sundayriley_ceoglow_1.jpeg,\r\nimg/sundayriley_ceoglow_2.jpeg,\r\nimg/sundayriley_ceoglow_3.jpeg', '2021-04-18 16:35:23', '2021-04-18 16:35:23', 'Normal, Dry, and Combination', ''),
(11, 'SUNDAY RILEY', 'Luna Retinol Sleeping Night Oil', 55.00, 100, 'lightweight_oil', 'A gentle, glow-giving retinoid night oil—perfect for new and experienced retinol users—that is balanced with blue tansy to calm skin while improving the look of wrinkles, redness, and pores.', 'img/sundayriley_luna_thumb.jpeg', 'img/sundayriley_luna_1.jpeg,\r\nimg/sundayriley_luna_2.jpeg, \r\nimg/sundayriley_luna_3.jpeg', '2021-04-18 16:38:23', '2021-04-18 16:38:23', 'Normal, Dry, Combination, and Oily', ''),
(12, 'Glow Recipe', 'Avocado Ceramide Redness Relief Serum', 85.00, 100, 'serum', 'A lactic-acid, AHA serum that targets the look of pores, hyperpigmentation, and dark spots and is clinically shown to reduce the look of fine lines and wrinkles.', 'img/avocado_serum_thumb.jpeg', 'img/avocado_serum_1.jpeg', '2021-04-18 16:41:33', '2021-04-18 16:41:33', 'Normal, Dry, Combination, and Oily', ''),
(13, 'Drunk Elephant', 'T.L.C. Sukari Babyfacial™ Mask', 80.00, 100, 'face_mask', 'A pro-quality AHA/BHA \"facial\" that resurfaces skin to visibly reveal greater clarity, improved skin texture and tone, and a more youthful-looking appearance.', 'img/drunkelephant_babyfacial_thumb.jpeg', 'img/drunkelephant_babyfacial_1.jpeg,\r\nimg/drunkelephant_babyfacial_2.jpeg', '2021-04-18 16:44:27', '2021-04-18 16:44:27', 'Normal, Dry, Combination, and Oily', '');

-- --------------------------------------------------------

--
-- Table structure for table `track_locations`
--

CREATE TABLE `track_locations` (
  `id` int(13) NOT NULL,
  `venue_id` int(13) NOT NULL,
  `lat` decimal(8,6) NOT NULL,
  `lng` decimal(9,6) NOT NULL,
  `description` text NOT NULL,
  `photo` varchar(256) NOT NULL,
  `icon` varchar(256) NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track_locations`
--

INSERT INTO `track_locations` (`id`, `venue_id`, `lat`, `lng`, `description`, `photo`, `icon`, `date_create`) VALUES
(1, 12, 37.721376, -122.461475, 'Do eu eu voluptate anim ullamco cupidatat cillum veniam id excepteur nisi reprehenderit laborum ipsum. Id excepteur sunt anim eiusmod excepteur voluptate culpa. Exercitation irure amet ex ut tempor aliqua.', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-11-17 02:39:33'),
(2, 47, 37.752309, -122.448815, 'Id Lorem dolor ad ad voluptate. Qui nulla laborum nisi eu aliquip Lorem amet et eu proident non proident aute occaecat. Velit ex ipsum irure ullamco eu voluptate minim minim dolore fugiat officia.', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-11-01 11:53:20'),
(3, 29, 37.780046, -122.433448, 'Culpa enim veniam sunt laborum dolor excepteur commodo Lorem mollit qui irure nulla. Pariatur nisi occaecat fugiat Lorem do dolor. Aute consequat occaecat irure tempor irure duis nulla cillum.', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-08-29 09:14:46'),
(4, 24, 37.791809, -122.385656, 'Aliquip non sit aliquip sunt officia quis aliquip magna proident eiusmod minim velit. Quis ex eu ut nisi Lorem magna irure ullamco sunt est ea. Cillum proident sit fugiat adipisicing excepteur nisi ea.', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-11-01 01:35:04'),
(5, 41, 37.739079, -122.375186, 'Cillum id mollit aute consectetur. Sit ad commodo cupidatat irure occaecat magna ea. Anim proident excepteur nulla aliqua occaecat cillum tempor aliquip.', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-06-29 03:49:20'),
(6, 16, 37.724819, -122.460279, 'Nulla aliqua adipisicing commodo aliqua commodo ad excepteur. Aute non reprehenderit eu duis. Ad in reprehenderit aliqua Lorem et.', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-10-24 07:10:31'),
(7, 40, 37.797895, -122.364847, 'Laboris ea magna aliqua ut labore reprehenderit commodo sint occaecat nulla. Velit aliquip ipsum ullamco labore aliqua sint ipsum dolor eu amet et ad tempor non. Dolore aliqua deserunt aute dolor cupidatat qui reprehenderit adipisicing ipsum culpa incididunt eu.', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-06-10 01:28:23'),
(8, 21, 37.743003, -122.418595, 'Id nulla nostrud consectetur exercitation id adipisicing proident reprehenderit veniam velit enim qui commodo sit. Cupidatat esse ea nostrud incididunt pariatur ex ut. Duis laborum aute anim ullamco minim Lorem cillum.', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-12-20 11:46:26'),
(9, 11, 37.723057, -122.492093, 'Occaecat ullamco eu magna dolor ex laborum nostrud magna excepteur fugiat mollit. Irure enim in duis laboris proident. Enim ex aliquip ex veniam enim irure labore voluptate non aliquip adipisicing.', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-10-07 10:20:31'),
(10, 12, 37.731240, -122.432612, 'Dolor magna quis labore ut aliqua qui et. Adipisicing laborum enim officia ut minim cupidatat officia mollit nostrud adipisicing aute laborum nostrud. Exercitation ad tempor esse nisi aliquip in pariatur irure quis duis.', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-02-07 10:26:31'),
(11, 49, 37.779657, -122.393163, 'Ea culpa eu enim dolore aliqua. Mollit ut est et deserunt ea laborum. Magna cupidatat nostrud veniam laboris excepteur ut amet consectetur excepteur sit.', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-04-27 09:29:32'),
(12, 16, 37.764704, -122.433008, 'Laboris et consequat eu in nulla veniam culpa do officia irure ea anim sunt. Aliquip dolor exercitation in enim adipisicing. Laboris minim consequat magna anim excepteur cupidatat do nulla fugiat cillum ipsum et.', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-05-25 11:09:23'),
(13, 47, 37.800411, -122.433739, 'Laboris do pariatur dolore consectetur excepteur aliqua nisi consequat est pariatur qui ipsum pariatur eiusmod. Irure consequat magna commodo ea consectetur exercitation sit. Labore duis officia amet adipisicing consectetur fugiat dolor.', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-05-01 04:27:03'),
(14, 11, 37.782249, -122.378734, 'Incididunt amet velit irure adipisicing incididunt cupidatat consequat in culpa occaecat. Dolore exercitation ipsum occaecat id officia. Ex magna proident non excepteur eiusmod sunt non officia Lorem enim nostrud consectetur voluptate.', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-03-06 12:09:44'),
(15, 36, 37.781920, -122.365171, 'Aliqua aliquip ipsum in ad velit. Commodo commodo eiusmod velit commodo et sunt magna culpa consequat quis velit ex laboris officia. Labore est tempor pariatur sint labore ullamco ullamco.', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-09-26 10:52:51'),
(16, 8, 37.719840, -122.417382, 'Mollit proident irure commodo elit qui laboris reprehenderit laborum proident voluptate tempor officia fugiat ipsum. Ad ex esse dolor laboris quis eiusmod sunt labore tempor aliquip enim occaecat. Sint et quis anim occaecat duis sint consectetur ut.', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-05-29 04:35:42'),
(17, 4, 37.789620, -122.376454, 'Ad sunt adipisicing eu incididunt aliqua eiusmod sit reprehenderit dolore enim et officia tempor. Commodo cillum incididunt commodo cillum nisi esse ad veniam eiusmod laborum velit. Ad pariatur irure occaecat ad ullamco dolor.', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-05-07 10:45:43'),
(18, 27, 37.723938, -122.395155, 'Ipsum pariatur sunt enim laboris officia officia. Officia consectetur id laboris consectetur. Veniam est nisi pariatur nisi qui adipisicing mollit duis labore ea ut ad non officia.', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-05-23 03:04:24'),
(19, 34, 37.728999, -122.492882, 'Commodo laboris anim mollit pariatur ullamco cupidatat Lorem qui commodo ea anim. Occaecat adipisicing dolore nostrud dolore ea nulla anim est. Elit eiusmod dolore irure officia adipisicing fugiat minim ullamco.', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-04-18 09:35:30'),
(20, 43, 37.784491, -122.473294, 'Lorem consequat amet elit anim culpa voluptate aute duis incididunt eu sint consequat. Amet excepteur qui irure voluptate consequat anim proident id sint. Esse adipisicing voluptate nulla minim duis fugiat duis amet cillum aliqua adipisicing.', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-09-24 05:29:56'),
(21, 4, 37.756234, -122.451403, 'Id ullamco nulla duis excepteur voluptate anim. Aliqua non do non nisi officia aliqua aliquip cillum veniam minim deserunt dolore. Do nostrud consequat quis excepteur aute est enim esse deserunt ut qui aute.', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-10-16 05:01:01'),
(22, 17, 37.772614, -122.401512, 'Cupidatat non velit nisi voluptate exercitation ullamco incididunt qui. Amet dolore voluptate deserunt exercitation excepteur sunt officia voluptate ad magna ad veniam officia eiusmod. In adipisicing minim amet tempor ea sunt.', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-05-21 06:28:07'),
(23, 11, 37.705895, -122.508965, 'Veniam ut velit cupidatat consectetur cillum voluptate officia sint velit. Do laboris cillum occaecat ex nisi non consectetur. Ipsum voluptate sint nostrud velit aliquip consequat culpa culpa.', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-08-11 10:50:47'),
(24, 25, 37.742910, -122.408165, 'Ad sint in ullamco non cupidatat nulla ut et veniam irure amet. Ullamco nisi aute reprehenderit aliqua labore non dolor proident velit. Laboris laborum mollit laboris aliqua ipsum qui consequat consectetur exercitation reprehenderit pariatur.', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-02-24 09:50:35'),
(25, 15, 37.743724, -122.364118, 'Non velit non minim veniam reprehenderit et adipisicing ea duis dolore eiusmod mollit ut culpa. Sit eu Lorem ipsum enim esse commodo fugiat eiusmod anim nostrud laboris velit occaecat dolor. Ad ea excepteur nostrud ex fugiat dolor aliqua excepteur ipsum excepteur adipisicing.', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-06-24 07:50:24'),
(26, 37, 37.754754, -122.441332, 'In eiusmod incididunt in enim do ex sit. Non sint laboris voluptate cupidatat dolor eiusmod enim magna laborum eu. Magna amet aute velit ipsum id adipisicing incididunt ipsum do consectetur anim dolore ut esse.', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-04-14 07:51:12'),
(27, 30, 37.758849, -122.385686, 'Sit sint duis consequat consectetur irure commodo labore duis velit sint mollit sunt. Nostrud mollit sit velit voluptate et aliqua eiusmod irure esse tempor labore. Qui ad occaecat commodo esse voluptate.', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-08-11 01:58:39'),
(28, 6, 37.743106, -122.453594, 'Deserunt consequat anim elit exercitation ea amet exercitation dolore elit labore est nostrud non exercitation. Elit minim reprehenderit eiusmod dolore amet adipisicing ex non id ea ex laborum aliquip fugiat. Aliquip non laboris velit reprehenderit aliquip proident nulla in ea duis ex tempor et magna.', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-03-08 09:15:28'),
(29, 27, 37.761177, -122.422480, 'Pariatur elit minim minim laborum consectetur anim. Consequat et esse nulla nostrud sit sunt ipsum ex irure. Sint qui commodo cupidatat elit deserunt ex anim est ipsum enim reprehenderit irure id.', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-04-11 06:24:07'),
(30, 9, 37.801461, -122.500062, 'Nulla duis qui ipsum est veniam et elit sunt magna non anim quis sit. Excepteur commodo laboris do pariatur eiusmod occaecat laborum ex voluptate minim laborum. Commodo aliqua ea ex qui cupidatat pariatur veniam.', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-06-03 08:19:01'),
(31, 36, 37.763193, -122.436429, 'Consectetur duis eiusmod incididunt ad et do quis pariatur. In duis pariatur in nisi sit et velit id. Voluptate ut eu magna reprehenderit labore sint aliqua.', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-07-07 09:10:48'),
(32, 16, 37.706771, -122.469068, 'Ullamco sit esse est velit ullamco quis sint eiusmod dolore qui aliquip anim nostrud voluptate. Enim irure quis ut eiusmod sit amet est id minim. Laborum enim aute aliqua ea mollit id magna enim esse consectetur esse ea.', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-05-16 12:00:02'),
(33, 8, 37.751221, -122.444417, 'Veniam nostrud consequat excepteur sint sint est officia exercitation pariatur incididunt. Fugiat deserunt enim quis esse ullamco. Ipsum id aliqua sint ut est ipsum velit.', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-03-23 10:18:01'),
(34, 30, 37.784717, -122.372441, 'Dolore minim quis excepteur ex non mollit occaecat. Amet voluptate non in reprehenderit tempor qui dolore labore. Cupidatat consectetur mollit sunt deserunt nulla nulla commodo.', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-06-21 08:22:09'),
(35, 35, 37.729253, -122.380981, 'Pariatur veniam excepteur non laborum ipsum nulla laborum culpa ad do mollit exercitation proident. Aute ea do proident Lorem non pariatur veniam adipisicing. Duis do officia excepteur sunt aliqua quis aliqua in fugiat sint elit ad deserunt pariatur.', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-12-15 07:17:00'),
(36, 6, 37.784806, -122.486200, 'Ad voluptate ea quis ea duis laborum veniam Lorem mollit ut qui eu. Dolor adipisicing Lorem pariatur pariatur duis elit proident voluptate commodo ullamco. Nisi do enim ex elit minim officia exercitation.', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-05-26 03:22:10'),
(37, 18, 37.738989, -122.513598, 'Laboris commodo cillum commodo mollit. Exercitation culpa veniam minim veniam minim qui. Ex ullamco aliqua nostrud et Lorem nostrud in proident veniam proident aliqua exercitation aute id.', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-11-20 02:44:02'),
(38, 13, 37.712895, -122.370883, 'Aute do laboris incididunt culpa do. Officia et ullamco velit eu eu commodo aliqua esse aliqua sunt id et proident non. Et dolor consectetur deserunt minim eu laborum id.', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-04-23 02:32:30'),
(39, 27, 37.785129, -122.512833, 'Nostrud magna officia velit Lorem qui sint occaecat consectetur labore magna. Veniam consequat ea cupidatat magna voluptate dolore elit irure in ipsum. Id sunt do magna exercitation exercitation aliquip adipisicing proident.', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-04-10 01:26:19'),
(40, 40, 37.706353, -122.434283, 'Eu labore ut officia occaecat eiusmod officia deserunt id elit pariatur. Velit fugiat reprehenderit ad ullamco est enim exercitation adipisicing commodo. In deserunt officia dolor cupidatat cupidatat ex quis elit minim cillum cupidatat quis duis ipsum.', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-11-01 02:04:56'),
(41, 37, 37.742694, -122.427310, 'Labore et aute tempor labore. Ea voluptate ad adipisicing officia proident sit ipsum enim aliquip. In laboris anim irure velit.', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-04-13 01:15:06'),
(42, 1, 37.798640, -122.476376, 'Non commodo laborum velit enim. In ad mollit cupidatat excepteur eu excepteur labore culpa duis deserunt est velit. Reprehenderit ipsum dolore aute ut consectetur quis ea elit amet.', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-03-18 05:23:00'),
(43, 30, 37.774724, -122.394570, 'Exercitation proident non ullamco elit culpa ullamco. Esse ipsum deserunt labore mollit qui. Labore occaecat veniam commodo deserunt ex qui deserunt eu esse.', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-03-11 05:24:16'),
(44, 27, 37.797491, -122.476836, 'Do fugiat eiusmod quis et pariatur sit est proident enim. Mollit exercitation consectetur adipisicing eu consectetur consequat nisi. Id aliqua ut occaecat tempor aliqua sint consectetur proident non.', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-05-11 07:50:33'),
(45, 43, 37.802236, -122.373731, 'Enim sit culpa nisi ullamco ullamco cillum quis incididunt labore sunt cupidatat mollit culpa fugiat. Cupidatat cupidatat eu exercitation in proident velit incididunt sunt elit mollit est. Sunt pariatur consequat excepteur exercitation reprehenderit excepteur aliqua aute.', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-07-02 06:42:26'),
(46, 14, 37.760336, -122.451912, 'Voluptate sint et tempor occaecat. Ipsum voluptate non deserunt labore est dolor mollit cupidatat est ad duis sint. Labore eu labore voluptate velit sit ex in.', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-03-25 06:37:44'),
(47, 10, 37.757331, -122.426631, 'Commodo non non ipsum sit exercitation in qui ut sit pariatur laborum esse. Ut velit occaecat non qui exercitation id proident. Eiusmod velit adipisicing non incididunt esse aliquip occaecat eiusmod elit excepteur.', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-07-28 02:59:51'),
(48, 46, 37.713181, -122.460871, 'Eiusmod amet Lorem esse dolore eu sint incididunt sint occaecat. Culpa do in sunt enim incididunt sunt veniam do occaecat qui sit. Eu veniam veniam eiusmod officia.', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-07-11 11:03:59'),
(49, 10, 37.718865, -122.389861, 'Ullamco ullamco incididunt Lorem consequat cillum pariatur cupidatat nostrud veniam. Minim magna ut incididunt minim incididunt nostrud consectetur est culpa cupidatat consectetur consequat voluptate. Non id anim laboris irure mollit minim.', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-01-12 02:42:18'),
(50, 16, 37.796738, -122.389690, 'Aliquip ipsum adipisicing ipsum nisi eiusmod velit ullamco tempor amet aliquip et exercitation consequat cillum. Labore veniam exercitation consequat ullamco nulla sit ullamco laboris minim. Officia consectetur fugiat elit ullamco sit minim Lorem ad officia eu.', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-02-04 06:55:46'),
(51, 24, 37.797906, -122.480955, 'Consequat commodo laborum ullamco qui pariatur veniam dolor aliqua sunt pariatur eu. Lorem consectetur esse nisi occaecat cillum dolor fugiat proident ex pariatur exercitation qui eiusmod. Enim exercitation nostrud irure mollit occaecat.', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-09-05 08:09:00'),
(52, 48, 37.721439, -122.494256, 'Reprehenderit culpa sunt anim ut. Do dolor nostrud cillum ullamco sunt voluptate ut enim et aliqua anim. Pariatur culpa Lorem officia qui nulla exercitation eiusmod.', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-10-30 06:29:32'),
(53, 41, 37.710086, -122.416021, 'Deserunt consectetur est esse voluptate adipisicing excepteur. Ex deserunt occaecat veniam dolor mollit aute elit enim. Veniam ullamco sint ex nulla id occaecat nulla cupidatat enim irure ipsum.', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-10-14 12:33:42'),
(54, 9, 37.742041, -122.452205, 'Ut velit nulla culpa adipisicing ex in veniam incididunt excepteur. Ea reprehenderit ipsum eu enim consequat minim tempor veniam esse enim. Exercitation est Lorem fugiat consectetur do amet qui.', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-09-03 09:53:48'),
(263, 51, 37.738728, -122.454037, '', 'http://via.placeholder.com/400/?text=PHOTO', 'http://via.placeholder.com/400/?text=ICON', '2021-12-15 14:01:06'),
(264, 51, 37.738728, -122.454037, '', 'http://via.placeholder.com/400/?text=PHOTO', 'http://via.placeholder.com/400/?text=ICON', '2021-12-15 14:01:06'),
(265, 51, 0.000000, 0.000000, '', 'http://via.placeholder.com/400/?text=PHOTO', 'http://via.placeholder.com/400/?text=ICON', '2021-12-15 14:37:11'),
(266, 58, 37.793920, -122.459504, 'It was outside in a park so it was great but it got a bit muddy at the end.', 'http://via.placeholder.com/400/?text=PHOTO', 'http://via.placeholder.com/400/?text=ICON', '2021-12-15 16:50:14'),
(267, 59, 37.761383, -122.463148, 'It was the greatest party of the year.', 'http://via.placeholder.com/400/?text=PHOTO', 'http://via.placeholder.com/400/?text=ICON', '2021-12-15 17:13:26'),
(268, 52, 37.794108, -122.454031, '', 'http://via.placeholder.com/400/?text=PHOTO', 'http://via.placeholder.com/400/?text=ICON', '2021-12-15 18:17:14'),
(269, 54, 37.699490, -122.430327, '', 'http://via.placeholder.com/400/?text=PHOTO', 'http://via.placeholder.com/400/?text=ICON', '2021-12-15 18:17:30'),
(270, 60, 37.791473, -122.465218, '', 'http://via.placeholder.com/400/?text=PHOTO', 'http://via.placeholder.com/400/?text=ICON', '2021-12-15 18:23:26');

-- --------------------------------------------------------

--
-- Table structure for table `track_users`
--

CREATE TABLE `track_users` (
  `id` int(13) NOT NULL,
  `name` varchar(3464) NOT NULL,
  `username` varchar(64) NOT NULL,
  `email` varchar(124) NOT NULL,
  `password` varchar(32) NOT NULL,
  `img` varchar(256) NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track_users`
--

INSERT INTO `track_users` (`id`, `name`, `username`, `email`, `password`, `img`, `date_create`) VALUES
(1, 'Ballard Huber', 'user1', 'user1@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/731/fff/?text=user1', '2020-08-22 06:39:43'),
(2, 'Gordon Hinton', 'user2', 'user2@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/966/fff/?text=user2', '2021-02-24 04:14:01'),
(3, 'Bryan Conley', 'user3', 'user3@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/973/fff/?text=user3', '2020-05-19 01:38:17'),
(4, 'Dominique Wolf', 'user4', 'user4@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/721/fff/?text=user4', '2020-07-05 12:00:17'),
(5, 'Gallegos Thornton', 'user5', 'user5@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/856/fff/?text=user5', '2020-06-10 02:51:43'),
(6, 'Christine Willis', 'user6', 'user6@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/776/fff/?text=user6', '2020-03-20 09:19:23'),
(7, 'Chris Wood', 'user7', 'user7@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/845/fff/?text=user7', '2021-08-12 05:12:02'),
(8, 'Jimmy', 'user8', 'user8@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/840/fff/?text=user8', '2020-11-26 09:36:23'),
(9, 'Williamson Riggs', 'user9', 'user9@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/851/fff/?text=user9', '2020-12-25 03:57:43'),
(10, 'Monique Moses', 'user10', 'user10@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/762/fff/?text=user10', '2021-10-13 03:53:42'),
(11, 'Evangeline Moss', 'user11', 'evamoss@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'uploads/1639599289.5813_Screen Shot 2021-12-15 at 12.12.59 PM Small.png', '2021-10-13 03:53:42'),
(20, 'Dahlia Moore', 'user20', 'user23@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'uploads/1639617666.6229_Screen Shot 2021-12-14 at 6.55.40 PM.png', '2021-12-15 18:19:31'),
(21, 'Dahlia Moore', 'user23', 'user21@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'uploads/1639625250.9053_Screen Shot 2021-12-15 at 12.12.59 PM Small.png', '2021-12-15 20:02:21');

-- --------------------------------------------------------

--
-- Table structure for table `track_venues`
--

CREATE TABLE `track_venues` (
  `id` int(13) NOT NULL,
  `user_id` int(13) NOT NULL,
  `name` varchar(64) NOT NULL,
  `type` varchar(64) NOT NULL,
  `genre` varchar(64) NOT NULL,
  `phone` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `img` varchar(256) NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track_venues`
--

INSERT INTO `track_venues` (`id`, `user_id`, `name`, `type`, `genre`, `phone`, `description`, `img`, `date_create`) VALUES
(1, 2, 'Quordate', 'outdoor', 'camp-out', '+1 (875) 543-3016', 'Laborum culpa labore laborum sint adipisicing adipisicing laboris officia quis consequat dolore. Dolor incididunt aute mollit ipsum velit. Ad tempor id Lorem consequat tempor excepteur. Laborum in quis ut sit ullamco culpa. Elit do reprehenderit excepteur officia ut quis consequat sint ad minim excepteur cupidatat velit.\r\n\n', 'https://via.placeholder.com/400/852/fff/?text=Quordate', '2020-01-11 05:41:04'),
(2, 9, 'Zeam', 'concert', 'alternative', '+1 (987) 407-3655', 'Eu aliquip cupidatat qui mollit. Cupidatat do occaecat est consectetur labore id aliquip amet tempor dolor nulla. Elit id duis quis est aute velit magna duis aute aute officia proident. Ex adipisicing deserunt exercitation eiusmod ex Lorem enim quis mollit ut dolor.\r\n\n', 'https://via.placeholder.com/400/824/fff/?text=Zeam', '2020-08-15 07:00:57'),
(3, 8, 'Printspan', 'outdoor', 'festival', '+1 (836) 511-2155', 'Do consequat minim proident deserunt nisi laboris ad proident do minim quis do occaecat labore. Deserunt ex aliqua cupidatat magna cillum nisi reprehenderit. Nisi duis excepteur non ex voluptate duis laboris pariatur. Do ex veniam occaecat ex dolore ex ad qui aute ipsum eu aute.\r\n\n', 'https://via.placeholder.com/400/824/fff/?text=Printspan', '2020-01-06 03:46:46'),
(4, 4, 'Opticon', 'outdoor', 'festival', '+1 (838) 528-2859', 'Tempor duis duis velit incididunt duis eiusmod adipisicing aliquip sunt ex. Enim amet exercitation in laboris dolore deserunt. Minim est labore esse id eu ut veniam elit ea adipisicing. Nisi cupidatat tempor excepteur culpa non cupidatat aliquip tempor est nisi minim. Est ea cupidatat nostrud in veniam id proident aliquip exercitation voluptate. Proident culpa ullamco esse laboris aliqua. Voluptate proident consequat labore minim officia.\r\n\n', 'https://via.placeholder.com/400/719/fff/?text=Opticon', '2020-05-31 07:25:45'),
(5, 1, 'Cinaster', 'club', 'edm', '+1 (880) 449-2935', 'Pariatur mollit consequat anim Lorem veniam quis ut tempor magna incididunt voluptate. Minim et aliqua minim fugiat mollit duis adipisicing velit anim minim. Incididunt ea eu amet excepteur ea incididunt nostrud Lorem proident excepteur enim occaecat commodo qui. Exercitation veniam nulla id et id ea aliqua consectetur laborum ea incididunt ipsum ex nisi. Incididunt minim eiusmod eiusmod dolore voluptate. Incididunt occaecat sint quis occaecat laboris anim sunt ea cupidatat nulla amet.\r\n\n', 'https://via.placeholder.com/400/714/fff/?text=Cinaster', '2021-06-17 12:00:13'),
(6, 1, 'Knowlysis', 'outdoor', 'camp-out', '+1 (811) 492-2174', 'Pariatur ipsum aute irure cupidatat exercitation ipsum ipsum adipisicing commodo magna ex excepteur. Incididunt enim cillum Lorem minim magna incididunt. Elit fugiat velit officia ea excepteur deserunt.\r\n\n', 'https://via.placeholder.com/400/891/fff/?text=Knowlysis', '2021-06-23 10:09:47'),
(7, 7, 'Entality', 'club', 'house', '+1 (926) 410-2354', 'Nostrud cupidatat deserunt ea magna deserunt deserunt ea enim qui ad sint. Deserunt anim laboris enim voluptate irure veniam eu ipsum. Ea enim sint cupidatat commodo Lorem ea tempor magna magna incididunt sint. Elit magna deserunt esse est. Nulla nostrud duis dolor aute commodo aliquip ullamco exercitation irure quis. Minim adipisicing nisi nulla tempor adipisicing consequat Lorem ullamco.\r\n\n', 'https://via.placeholder.com/400/734/fff/?text=Entality', '2021-11-06 08:15:40'),
(8, 9, 'Acium', 'outdoor', 'gathering', '+1 (818) 409-2910', 'Consectetur nulla dolor minim anim eu exercitation cupidatat aliquip. Non magna anim deserunt cupidatat. Tempor aliqua occaecat do quis officia fugiat ipsum sit elit. Eu reprehenderit non consectetur velit duis irure anim pariatur deserunt veniam.\r\n\n', 'https://via.placeholder.com/400/872/fff/?text=Acium', '2021-04-09 07:59:11'),
(9, 1, 'Lyria', 'outdoor', 'camp-out', '+1 (960) 433-3099', 'Ullamco laborum irure esse pariatur sunt. Laborum cillum proident exercitation officia consequat amet esse consequat ad eiusmod ut est. Minim sunt ipsum cupidatat nisi in est nulla consectetur ipsum aliquip reprehenderit anim adipisicing elit. Et sunt laboris proident occaecat enim ullamco nisi ipsum ipsum minim fugiat pariatur commodo pariatur. Ullamco duis ut eu ullamco irure anim id.\r\n\n', 'https://via.placeholder.com/400/732/fff/?text=Lyria', '2021-05-09 02:38:26'),
(10, 7, 'Pharmacon', 'concert', 'rock', '+1 (831) 413-2376', 'Pariatur quis voluptate id qui non deserunt fugiat ea. Adipisicing nulla sint consequat elit. Sint laboris deserunt in sint exercitation mollit dolore duis laborum. Non culpa minim enim tempor veniam enim incididunt incididunt. Adipisicing minim eu esse dolor duis incididunt proident ullamco do ut. Dolore nulla et et commodo aliqua cupidatat.\r\n\n', 'https://via.placeholder.com/400/946/fff/?text=Pharmacon', '2021-08-29 03:44:56'),
(11, 5, 'Snowpoke', 'outdoor', 'camp-out', '+1 (885) 442-2344', 'Ad anim esse cupidatat ex laborum veniam veniam consectetur officia nostrud ipsum. Adipisicing Lorem eu ea eu consectetur magna non id esse adipisicing. Mollit Lorem velit nisi enim elit non nostrud amet sit veniam ad sunt. Amet pariatur officia pariatur mollit et eiusmod laborum tempor excepteur aute cillum sunt.\r\n\n', 'uploads/1639616956.3105_IMG_5514.JPG', '2021-05-03 03:35:15'),
(12, 10, 'Netbook', 'concert', 'rock', '+1 (899) 432-2570', 'Adipisicing mollit do tempor esse adipisicing occaecat culpa tempor. Elit eu excepteur eu veniam elit excepteur aute qui dolore consectetur est eiusmod dolor labore. Laborum adipisicing velit incididunt excepteur incididunt aliquip id ex minim sit dolore occaecat non. Nisi commodo occaecat nisi mollit esse commodo elit ut ut ea mollit commodo elit. Minim deserunt nisi non pariatur qui dolore amet velit laborum labore pariatur velit laborum. Aliqua excepteur commodo non irure ullamco fugiat excepteur commodo incididunt do Lorem labore.\r\n\n', 'https://via.placeholder.com/400/967/fff/?text=Netbook', '2021-06-13 03:55:19'),
(13, 8, 'Viagrand', 'concert', 'alternative', '+1 (964) 441-3036', 'Est Lorem ipsum consequat consequat ullamco sit. Amet excepteur occaecat in ullamco eiusmod. Est commodo ipsum sit consequat consectetur duis amet. Aute adipisicing velit ad cupidatat velit. Occaecat commodo magna Lorem esse amet consequat Lorem tempor eiusmod commodo velit. Esse consequat nulla voluptate nostrud ut mollit cupidatat velit proident laboris aliqua esse enim dolore. Veniam cillum aute pariatur mollit deserunt minim tempor enim.\r\n\n', 'https://via.placeholder.com/400/967/fff/?text=Viagrand', '2020-07-22 10:51:27'),
(14, 6, 'Pyrami', 'outdoor', 'gathering', '+1 (810) 419-3404', 'Nisi veniam officia pariatur anim consectetur consequat commodo sint consequat proident velit officia. Nulla elit pariatur amet in qui reprehenderit dolore ullamco commodo Lorem pariatur exercitation. Velit eu et esse sit enim enim ad ipsum in voluptate. Laborum ut voluptate excepteur amet in eiusmod consequat aliqua proident nulla. Officia laboris id enim laboris nostrud pariatur.\r\n\n', 'https://via.placeholder.com/400/948/fff/?text=Pyrami', '2021-06-05 12:38:05'),
(15, 7, 'Zentry', 'concert', 'rap', '+1 (964) 540-2948', 'Officia nisi consequat aliqua duis. Consectetur et aute nisi do esse qui exercitation nulla incididunt cupidatat excepteur pariatur. Consequat ea excepteur ex culpa excepteur.\r\n\n', 'https://via.placeholder.com/400/755/fff/?text=Zentry', '2021-06-19 03:35:38'),
(16, 5, 'Zaj', 'concert', 'alternative', '+1 (855) 560-3461', 'Enim id cillum ullamco sit aliquip reprehenderit nisi mollit ea veniam ullamco veniam. Consectetur enim magna ut anim officia nulla nulla quis. Ea in irure laboris duis esse sit proident aliqua. Anim et incididunt laboris elit velit aliquip aliquip enim est ipsum ad reprehenderit velit deserunt. In tempor do tempor excepteur. Elit tempor nulla deserunt consectetur do. Aute incididunt magna proident reprehenderit.\r\n\n', 'https://via.placeholder.com/400/918/fff/?text=Zaj', '2020-07-31 04:25:46'),
(17, 4, 'Organica', 'club', 'house', '+1 (807) 587-3250', 'Adipisicing non sint nulla sit commodo incididunt irure in commodo. Occaecat nostrud adipisicing nulla tempor irure deserunt consequat aliquip. Quis ut proident nostrud in sit incididunt quis. In duis consectetur elit duis qui mollit sunt excepteur tempor excepteur fugiat in ex. Est dolor Lorem deserunt et adipisicing.\r\n\n', 'https://via.placeholder.com/400/702/fff/?text=Organica', '2021-07-18 06:37:03'),
(18, 7, 'Zinca', 'club', 'techno', '+1 (990) 537-2669', 'Amet minim officia pariatur aliqua id deserunt aliqua ex. Aute occaecat ipsum Lorem consectetur minim cillum in occaecat et proident proident consectetur ipsum ea. Voluptate sit voluptate dolor esse tempor deserunt exercitation adipisicing proident cillum minim qui. Velit anim eu irure anim mollit aute aliquip adipisicing ex consectetur sit. Tempor nisi cillum sit ipsum velit aute laborum Lorem nulla.\r\n\n', 'https://via.placeholder.com/400/946/fff/?text=Zinca', '2020-08-17 11:20:29'),
(19, 1, 'Teraprene', 'outdoor', 'gathering', '+1 (874) 536-3667', 'Et quis nulla non et in labore fugiat aute ex consectetur elit qui fugiat voluptate. Dolor est exercitation quis voluptate esse elit. Occaecat qui dolore consectetur velit exercitation Lorem veniam et voluptate ullamco consectetur anim Lorem. Aliqua enim voluptate commodo est enim officia.\r\n\n', 'https://via.placeholder.com/400/864/fff/?text=Teraprene', '2021-03-25 01:25:00'),
(20, 9, 'Digigen', 'concert', 'rock', '+1 (896) 443-2038', 'Elit sint aliqua ex adipisicing Lorem deserunt commodo consectetur non consequat cillum amet. Nisi officia do reprehenderit adipisicing aliqua eu tempor occaecat. Officia cupidatat elit duis elit elit laborum magna eiusmod. Reprehenderit enim pariatur et occaecat amet eiusmod eu occaecat pariatur qui reprehenderit. Consectetur in nulla laborum ullamco in pariatur aute id laboris occaecat. Minim esse commodo consectetur dolor.\r\n\n', 'https://via.placeholder.com/400/720/fff/?text=Digigen', '2020-05-29 12:32:47'),
(21, 1, 'Strezzo', 'club', 'edm', '+1 (972) 558-3756', 'Nostrud laboris ullamco id nostrud culpa eiusmod adipisicing consequat irure. Minim officia reprehenderit occaecat qui duis deserunt ut irure ex nostrud in nostrud. Et nostrud dolore eiusmod aliquip velit aliquip. Esse id aliquip duis dolore sint est magna sit.\r\n\n', 'uploads/1639625333.288_Screen Shot 2021-12-15 at 12.12.59 PM Small.png', '2020-10-05 10:05:08'),
(22, 2, 'Centuria', 'concert', 'alternative', '+1 (964) 408-3118', 'Occaecat do labore veniam culpa et magna commodo quis. Ullamco cupidatat ea proident incididunt voluptate. Proident velit et consequat aute dolor cupidatat dolore consequat proident minim laborum. Elit quis in mollit cupidatat. Cillum quis quis sunt sit amet ut in. Culpa proident qui consectetur cupidatat officia irure nostrud. Laboris velit sit deserunt esse.\r\n\n', 'https://via.placeholder.com/400/808/fff/?text=Centuria', '2021-09-29 07:22:52'),
(23, 7, 'Tropoli', 'club', 'edm', '+1 (975) 480-2288', 'Ad adipisicing sint Lorem ad aliqua cupidatat ea eiusmod. Excepteur ea anim consequat excepteur et irure fugiat. Ut amet nulla duis non minim ex fugiat adipisicing exercitation ut deserunt ipsum sint. Eiusmod anim in Lorem quis ad sint do ullamco sint cillum dolor eiusmod pariatur velit. Culpa et laborum sint est eiusmod mollit ad. Ullamco dolore cillum est magna excepteur.\r\n\n', 'https://via.placeholder.com/400/934/fff/?text=Tropoli', '2020-01-02 11:30:53'),
(24, 4, 'Quarmony', 'concert', 'alternative', '+1 (979) 584-2741', 'Veniam adipisicing eiusmod incididunt nostrud esse voluptate sunt reprehenderit anim cupidatat ad dolore occaecat mollit. Fugiat voluptate consequat eiusmod anim irure nostrud. Labore eu eiusmod fugiat sit nisi voluptate anim anim eiusmod.\r\n\n', 'https://via.placeholder.com/400/726/fff/?text=Quarmony', '2021-05-27 05:38:00'),
(25, 4, 'Stockpost', 'club', 'edm', '+1 (838) 457-3883', 'Incididunt aliqua reprehenderit et laborum anim. Ullamco irure ad aliqua dolor exercitation excepteur qui. Deserunt sint cupidatat dolore do dolor est nostrud magna.\r\n\n', 'https://via.placeholder.com/400/908/fff/?text=Stockpost', '2020-04-22 11:48:11'),
(26, 1, 'Aquacine', 'concert', 'alternative', '+1 (824) 429-3377', 'Officia aute sint nisi fugiat. Do labore aliquip est consectetur dolor consequat officia occaecat ut veniam duis quis cillum esse. Laborum sit aute esse do labore esse. Reprehenderit duis est cupidatat fugiat fugiat do eiusmod qui sint. Aliquip nisi non in enim cillum. Sint velit eu consectetur esse labore nulla enim sit consequat. Anim in sint et et nisi exercitation magna excepteur irure.\r\n\n', 'https://via.placeholder.com/400/843/fff/?text=Aquacine', '2020-07-10 02:32:12'),
(27, 6, 'Pyramis', 'club', 'techno', '+1 (973) 497-3632', 'Incididunt ea cupidatat eiusmod cillum aliqua culpa ex enim consequat eu ea. Veniam proident occaecat labore magna reprehenderit duis laboris eu. Nisi eiusmod pariatur do ea incididunt ad minim sunt minim mollit.\r\n\n', 'https://via.placeholder.com/400/812/fff/?text=Pyramis', '2021-02-21 10:53:29'),
(28, 7, 'Netplax', 'club', 'techno', '+1 (839) 511-2084', 'Incididunt ullamco cillum mollit dolore consectetur. Sint commodo nulla Lorem aliquip est velit nostrud dolor cillum dolore. Eiusmod aliqua aliqua magna incididunt.\r\n\n', 'https://via.placeholder.com/400/760/fff/?text=Netplax', '2020-08-17 12:24:17'),
(29, 7, 'Chorizon', 'concert', 'alternative', '+1 (844) 587-3471', 'Aliquip cillum quis enim Lorem pariatur incididunt minim ipsum ut anim. Dolore ea ad do Lorem qui dolor consectetur consectetur non do et duis. Aute nostrud culpa adipisicing elit excepteur ad laborum laboris cupidatat cillum adipisicing nisi. Ipsum do est elit qui sint fugiat reprehenderit.\r\n\n', 'https://via.placeholder.com/400/935/fff/?text=Chorizon', '2020-11-01 07:23:50'),
(30, 1, 'Candecor', 'outdoor', 'camp-out', '+1 (863) 509-3756', 'Culpa dolor officia consectetur sint pariatur. Id dolore esse officia deserunt ad eiusmod excepteur. Ut do anim minim enim voluptate eiusmod labore magna. Irure aliquip dolore anim sit duis est nostrud.\r\n\n', 'https://via.placeholder.com/400/776/fff/?text=Candecor', '2020-04-02 06:22:34'),
(31, 6, 'Callflex', 'club', 'house', '+1 (985) 502-3530', 'Commodo ipsum magna commodo est incididunt mollit adipisicing consequat laborum Lorem. Anim elit id exercitation irure tempor sunt. Nostrud fugiat quis ipsum esse. Commodo in non labore velit aliqua pariatur magna pariatur voluptate dolore. Commodo duis laboris est irure dolore proident enim in fugiat cillum consequat et.\r\n\n', 'https://via.placeholder.com/400/894/fff/?text=Callflex', '2021-03-27 08:48:17'),
(32, 7, 'Zerbina', 'outdoor', 'festival', '+1 (905) 507-3944', 'Veniam velit eiusmod nostrud minim duis anim anim culpa tempor amet ut. Amet cupidatat tempor ipsum labore reprehenderit reprehenderit excepteur ad quis elit id non veniam aliquip. Magna ullamco laborum in cillum officia excepteur magna. Consectetur elit nisi ipsum velit sunt. Pariatur in velit incididunt laboris ex reprehenderit qui consectetur laboris esse amet non nisi voluptate. Tempor nisi dolor ipsum excepteur sit.\r\n\n', 'https://via.placeholder.com/400/794/fff/?text=Zerbina', '2020-09-26 06:21:39'),
(33, 2, 'Synkgen', 'club', 'edm', '+1 (846) 538-2243', 'Esse consectetur in est voluptate non nostrud enim ullamco reprehenderit nisi aliqua anim sint ullamco. Exercitation ad consequat labore fugiat. Commodo duis sint pariatur mollit adipisicing nisi incididunt nostrud ad ex nulla. Enim incididunt pariatur tempor sunt dolore aliqua aute quis aute. Aliquip laboris nostrud proident aliquip dolore. Et officia anim sunt proident dolor Lorem do consequat consectetur commodo exercitation exercitation. Exercitation ipsum est non sit nisi cillum magna fugiat et adipisicing.\r\n\n', 'https://via.placeholder.com/400/976/fff/?text=Synkgen', '2020-06-11 05:09:26'),
(34, 8, 'Codact', 'outdoor', 'gathering', '+1 (964) 421-3869', 'Excepteur reprehenderit est adipisicing fugiat laborum quis. Fugiat ullamco fugiat magna eu consectetur magna cillum sunt amet. Lorem consequat quis qui ut ad ut ullamco Lorem magna. Minim ea ut do esse esse dolor anim ex commodo Lorem. Voluptate irure in consequat ullamco deserunt tempor ullamco dolore ex. Voluptate in irure reprehenderit sint adipisicing adipisicing cupidatat enim deserunt.\r\n\n', 'https://via.placeholder.com/400/872/fff/?text=Codact', '2021-03-31 12:02:37'),
(35, 2, 'Fortean', 'concert', 'rap', '+1 (803) 434-3527', 'Esse sit occaecat dolor est anim incididunt minim consequat laborum voluptate irure. Eu nulla reprehenderit reprehenderit dolor anim fugiat elit excepteur aliqua labore pariatur reprehenderit. Dolore adipisicing commodo duis amet cillum pariatur in nostrud ea veniam deserunt cillum sunt eu.\r\n\n', 'https://via.placeholder.com/400/961/fff/?text=Fortean', '2021-10-12 02:03:46'),
(36, 3, 'Xixan', 'outdoor', 'camp-out', '+1 (908) 400-3206', 'Occaecat ex laborum ut magna consectetur aliqua nostrud minim. Do qui ipsum adipisicing ut consectetur ex adipisicing et esse in commodo enim. Officia enim eu excepteur velit pariatur consectetur tempor. Laborum occaecat sint sit reprehenderit.\r\n\n', 'https://via.placeholder.com/400/837/fff/?text=Xixan', '2020-06-20 12:49:04'),
(37, 10, 'Qiao', 'outdoor', 'festival', '+1 (853) 512-3570', 'Deserunt aute esse irure magna adipisicing elit. Do id mollit ad velit excepteur quis. Labore ipsum ex dolore aliquip laboris incididunt ex cupidatat incididunt nisi esse voluptate magna. Tempor aute enim nostrud exercitation. Sint non irure incididunt aute pariatur.\r\n\n', 'https://via.placeholder.com/400/828/fff/?text=Qiao', '2020-07-08 05:14:49'),
(38, 4, 'Applidec', 'outdoor', 'camp-out', '+1 (976) 564-2911', 'Commodo anim cupidatat aliqua nulla exercitation exercitation labore nostrud ullamco tempor magna adipisicing elit. Qui veniam anim minim veniam aute ex adipisicing excepteur laborum sit ea. Dolore et velit elit est ullamco anim eiusmod nisi amet consequat quis ex tempor. Ullamco amet amet quis exercitation consectetur. Ad Lorem occaecat magna eiusmod aliquip laborum.\r\n\n', 'https://via.placeholder.com/400/977/fff/?text=Applidec', '2020-02-11 02:07:50'),
(39, 7, 'Nikuda', 'concert', 'rap', '+1 (843) 501-3953', 'Sint proident aliqua veniam velit pariatur. Nulla exercitation magna enim ad ea enim enim incididunt irure aliquip officia enim. Ut velit incididunt ullamco aliqua eu consectetur eu fugiat adipisicing velit adipisicing eu dolor labore. Do voluptate eu esse cupidatat id. Sunt id Lorem adipisicing excepteur. Incididunt sit labore exercitation enim consequat.\r\n\n', 'https://via.placeholder.com/400/970/fff/?text=Nikuda', '2020-07-21 04:22:50'),
(40, 3, 'Isosure', 'club', 'house', '+1 (967) 567-2799', 'Excepteur officia Lorem consequat quis sit velit eu ea mollit consectetur elit. Deserunt ullamco ex esse aliqua amet mollit occaecat dolor pariatur velit mollit. Nostrud enim ex ex magna eiusmod non nulla sunt nostrud officia aliquip sit. Velit ut proident eiusmod non. Dolore laboris cillum aliquip reprehenderit voluptate labore reprehenderit do commodo velit exercitation in proident ullamco. Nisi dolore aliqua quis ad.\r\n\n', 'https://via.placeholder.com/400/827/fff/?text=Isosure', '2021-04-24 03:42:56'),
(41, 5, 'Olympix', 'club', 'techno', '+1 (938) 556-3116', 'Magna excepteur dolore velit occaecat. Cupidatat id eu reprehenderit ut tempor laborum laborum. Qui excepteur in culpa mollit eu consectetur cillum elit enim. Labore tempor nostrud mollit adipisicing occaecat nostrud voluptate eiusmod occaecat voluptate ut. Nisi tempor et velit pariatur. Reprehenderit id amet aliqua ipsum exercitation dolor aliquip culpa nostrud. Veniam aute laboris tempor aute qui eu id ipsum.\r\n\n', 'https://via.placeholder.com/400/870/fff/?text=Olympix', '2021-01-04 08:18:36'),
(42, 10, 'Skyplex', 'concert', 'rock', '+1 (831) 477-3011', 'Deserunt exercitation adipisicing laborum nulla velit dolor non duis ea non qui quis incididunt. Irure reprehenderit tempor reprehenderit minim magna exercitation excepteur labore anim duis non. In occaecat eu nulla consectetur commodo irure sunt id incididunt nulla magna.\r\n\n', 'https://via.placeholder.com/400/896/fff/?text=Skyplex', '2020-01-06 01:27:02'),
(43, 9, 'Extragen', 'club', 'edm', '+1 (969) 477-3721', 'Amet qui reprehenderit cillum qui. Consequat ea nulla ipsum commodo veniam ea ad velit esse et et mollit occaecat. Labore cillum nostrud ut sint. Est aliquip Lorem sunt consequat eiusmod ad Lorem enim. Et incididunt qui esse anim laboris est. Adipisicing duis cupidatat laborum in nisi officia.\r\n\n', 'https://via.placeholder.com/400/827/fff/?text=Extragen', '2020-11-21 05:32:36'),
(44, 8, 'Navir', 'outdoor', 'festival', '+1 (850) 421-2298', 'Cillum duis commodo quis labore reprehenderit cupidatat incididunt culpa. Adipisicing do et esse aute eu nisi exercitation. Cupidatat dolore sunt enim reprehenderit officia deserunt proident culpa reprehenderit ullamco eiusmod duis enim. Sit labore ex est et ea cillum deserunt aliquip veniam enim in duis dolore officia. Culpa occaecat minim minim commodo ut dolor velit. Ea sit culpa enim excepteur dolore elit non dolore excepteur laborum occaecat eu dolore ipsum.\r\n\n', 'https://via.placeholder.com/400/969/fff/?text=Navir', '2021-05-06 07:08:20'),
(45, 6, 'Furnafix', 'concert', 'rock', '+1 (954) 529-2851', 'Dolor cupidatat id fugiat ullamco amet elit eu nulla sit sit veniam. Incididunt Lorem cupidatat laborum qui. Ut cupidatat adipisicing excepteur mollit esse minim occaecat cupidatat voluptate. Mollit minim aliqua occaecat amet quis Lorem officia nisi do est. Eu laborum qui magna mollit consequat reprehenderit. Aute pariatur sunt nisi minim laboris irure consequat proident amet cupidatat pariatur enim ad. Ut pariatur mollit ullamco elit laboris.\r\n\n', 'https://via.placeholder.com/400/749/fff/?text=Furnafix', '2021-04-18 08:26:13'),
(46, 7, 'Tribalog', 'concert', 'rock', '+1 (939) 560-3286', 'Ut duis laboris veniam in eu. Pariatur commodo Lorem aliquip ad excepteur quis voluptate mollit id ut. Anim et ut non magna consectetur ut magna aliquip officia tempor consectetur. Non officia voluptate proident aute fugiat tempor commodo. Et esse et velit dolor culpa in enim amet. Esse aliquip minim aliquip adipisicing enim sunt pariatur exercitation velit cupidatat. Ad tempor amet id cupidatat excepteur ut tempor velit esse enim amet ea.\r\n\n', 'https://via.placeholder.com/400/702/fff/?text=Tribalog', '2021-09-07 01:17:09'),
(47, 7, 'Protodyne', 'outdoor', 'festival', '+1 (884) 597-3575', 'Dolor excepteur irure occaecat anim tempor ea irure elit. Ipsum culpa magna sit qui mollit nostrud. Exercitation excepteur veniam magna tempor consequat et. Ipsum cupidatat reprehenderit in dolor id.\r\n\n', 'https://via.placeholder.com/400/915/fff/?text=Protodyne', '2020-01-25 12:41:25'),
(48, 1, 'Tetratrex', 'outdoor', 'festival', '+1 (869) 464-3252', 'Commodo exercitation velit officia pariatur magna culpa. Aliquip nulla voluptate est laborum reprehenderit veniam. Tempor consectetur aute tempor excepteur aliquip est irure velit eu. Labore proident exercitation minim aliquip cillum sunt minim in ad irure enim officia cupidatat. Adipisicing consectetur officia cupidatat minim cillum pariatur proident deserunt cillum anim nostrud in sint. Eiusmod magna dolore reprehenderit sunt nulla.\r\n\n', 'https://via.placeholder.com/400/726/fff/?text=Tetratrex', '2020-06-29 03:35:15'),
(49, 7, 'Snips', 'outdoor', 'festival', '+1 (891) 495-2186', 'Fugiat cupidatat deserunt officia officia magna incididunt dolore laborum eu. Pariatur ut Lorem minim minim sint ut quis ea ipsum ea ex magna velit. Culpa laborum excepteur consectetur tempor. Amet dolor culpa eu qui officia culpa eu velit in aliquip veniam in.\r\n\n', 'https://via.placeholder.com/400/701/fff/?text=Snips', '2020-02-04 08:05:44'),
(50, 10, 'Dognosis', 'concert', 'alternative', '+1 (837) 585-3128', 'Velit qui nostrud laboris excepteur ipsum nisi voluptate ex pariatur. Eiusmod incididunt elit ex ut qui consequat. Est laborum ut cupidatat ut. Commodo tempor eiusmod do et tempor ullamco adipisicing amet eu aute consequat ut. Deserunt ea voluptate ut mollit ullamco officia eu fugiat magna et elit quis. Deserunt laboris enim nisi tempor tempor irure aliquip commodo.\r\n\n', 'https://via.placeholder.com/400/756/fff/?text=Dognosis', '2020-10-20 05:01:54'),
(51, 11, 'Afterlife', 'club', 'techno', '', 'Welcome to the Afterlife...\n', 'uploads/1639628239.0959_IMG_9215.jpg', '2021-12-01 21:38:25'),
(52, 11, 'Nikuda', 'club', 'house', '', 'Searching for meaning of life in Nikuda...\n', 'uploads/1639628468.2329_IMG_5886.jpg', '2021-12-01 21:38:13'),
(54, 11, 'Euphoria', 'festival', 'house', '', 'You don\'t want to miss this', 'uploads/1639628881.8426_IMG_2123.jpg', '2021-12-08 23:15:50'),
(56, 9, 'Ouch', 'festival', 'rock', '123456789', 'mh hv', 'http://via.placeholder.com/400/?text=Venue', '2021-12-14 16:04:24'),
(57, 11, 'Midnight Sun', 'club', 'house', '', 'This is where I found myself at midnight... ', 'uploads/1639628900.8394_IMG_7733.jpg', '2021-12-15 14:39:00'),
(58, 11, 'IYKYK', 'festival', 'deep house', '', 'Awee this was a great experience. I met a ton of fun people.', 'uploads/1639628927.6744_IMG_5050.jpg', '2021-12-15 16:49:00'),
(59, 11, 'House Party at Fred\'s', 'House party', 'all of it', '', 'What a legendary party. ', 'uploads/1639629115.6387_IMG_0050.JPG', '2021-12-15 16:51:12'),
(60, 20, 'Gravity', 'festival', 'punk', '12345678098', 'Loud music, moshpits, and mohawks... and other funsies', 'http://via.placeholder.com/400/?text=Venue', '2021-12-15 18:23:08'),
(61, 20, 'Bill Graham ', 'Concert', 'pop', '', 'Another great show to add to the list.', 'http://via.placeholder.com/400/?text=Venue', '2021-12-15 18:28:04'),
(62, 21, 'Midnight Sun', 'festival', 'techno', '', 'This was a cool experience', 'uploads/1639625839.395_Screen Shot 2021-12-15 at 12.07.31 PM.png', '2021-12-15 20:03:16'),
(67, 21, 'IYKYK', 'club', 'punk', '', 'well, well, well', 'http://via.placeholder.com/400/?text=Venue', '2021-12-15 20:25:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `track_locations`
--
ALTER TABLE `track_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `track_users`
--
ALTER TABLE `track_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `track_venues`
--
ALTER TABLE `track_venues`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `track_locations`
--
ALTER TABLE `track_locations`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- AUTO_INCREMENT for table `track_users`
--
ALTER TABLE `track_users`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `track_venues`
--
ALTER TABLE `track_venues`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
