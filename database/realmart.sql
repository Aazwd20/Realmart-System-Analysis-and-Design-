-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2022 at 11:55 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Beverage', 'laptops'),
(2, 'Fresh Food', 'desktop-pc'),
(3, 'Grocery', 'tablets'),
(4, 'Bakery & Snacks', '');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(1, 1, 'SUNDROP MANGO FRUIT DRINK 500ML', '<ul>\r\n	<li>Product Type:&nbsp;SUNDROP MANGO FRUIT DRINK -500ML&nbsp;</li>\r\n	<li>Brand :Pran</li>\r\n	<li>Weight:500ml</li>\r\n	<li>Fresh and good quality product</li>\r\n</ul>\r\n', 'sundrop-mango-fruit-drink-500ml', 45, 'sundrop-mango-fruit-drink-500ml_1661805626.jpg', '2022-08-29', 2),
(2, 1, 'Mirinda Orange Pet 1 Ltr', '<p>Mirinda Orange Pet 1 Ltr</p>\r\n', 'mirinda-orange-pet-1-ltr', 60, 'mirinda-orange-pet-1-ltr_1661806151.jpg', '2018-05-10', 3),
(3, 1, 'Pran Low Fat Milk 500ml', '<p>Collected from homestead dairy farmers across Bangladesh every day, the milk is pasteurized to keep it healthy, fresh-tasting and flavorful.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'pran-low-fat-milk-500ml', 75, 'pran-low-fat-milk-500ml_1661805559.png', '2022-08-29', 1),
(4, 1, 'Tang Mango Jar 2.5kg', '<p>This is a&nbsp;<strong>Vegetarian</strong>&nbsp;product.</p>\r\n\r\n<p>Filled With Goodness Of Mango</p>\r\n\r\n<p>Beat This Summer With The Easy To Prepare And Refreshing Taste Of Tang</p>\r\n\r\n<p>This Is A Vegetarian Product.</p>\r\n', 'tang-mango-jar-2-5kg', 1500, 'tang-mango-jar-2-5kg_1661806003.jpg', '2018-05-10', 3),
(5, 3, 'Le Blanc Sunflower Oil 1liter', '<ul>\r\n	<li>It supplies some monounsaturated fat (20 percent) and is low in saturated fat (11 percent), making it an overall&nbsp;heart-healthy option. Sunflower oil is a good all-purpose oil because it can withstand high cooking temperatures.</li>\r\n	<li>Sunflower oil has many health benefits because it is low in&nbsp;<a href=\"https://www.webmd.com/cholesterol-management/qa/what-foods-have-saturated-fats\">saturated fat</a>&nbsp;and high in two types of fatty acids, polyunsaturated fatty acids and monounsaturated fatty acids.</li>\r\n</ul>\r\n', 'le-blanc-sunflower-oil-1liter', 455, 'le-blanc-sunflower-oil-1liter_1661802965.jpg', '2018-07-09', 3),
(6, 1, 'Pepsi', '<p>Pepsi</p>\r\n', 'pepsi', 50, 'pepsi_1661805495.jpg', '0000-00-00', 0),
(7, 3, 'Green Park Mushrooms Whole 425gm', '<p>Mushroom 425gm Green Park</p>\r\n', 'green-park-mushrooms-whole-425gm', 125, 'green-park-mushrooms-whole-425gm_1661802881.jpg', '0000-00-00', 0),
(8, 1, 'coke', '<p>coca cola</p>\r\n', 'coke', 50, 'coke_1661805465.jpg', '0000-00-00', 0),
(9, 2, 'Premium Maryam Dates - 500 Gm', '<ul>\r\n	<li>Premium Maryam Dates - 500 g the fruit of the date palm tree.</li>\r\n	<li>This is 100% organic and chemical free product. It is fully organic, imported from Iran and Saudi Arabia without any quality loss.&nbsp;</li>\r\n	<li>It contains rich vitamins and minerals.</li>\r\n	<li>Taste of Premium Maryam Dates - 500 g feels like enjoying a soft chocolate.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'premium-maryam-dates-500-gm', 510, 'premium-maryam-dates-500-gm_1661806887.jpg', '2022-08-29', 1),
(10, 2, 'Dragon Fruits Local Bulk', '<ul>\r\n	<li>It&#39;s rich in antioxidants like flavonoids, phenolic acid, and betacyanin. ...</li>\r\n	<li>It&#39;s naturally fat-free and high in fiber. ...</li>\r\n	<li>It may help lower your blood sugar. ...</li>\r\n	<li>It contains prebiotics, which are foods that feed the healthy bacteria called probiotics in your gut. ...</li>\r\n	<li>It can strengthen your immune system.</li>\r\n</ul>\r\n', 'dragon-fruits-local-bulk', 440, 'dragon-fruits-local-bulk_1661805751.jpg', '2018-05-10', 1),
(11, 2, 'Banana (Bangla) Ripe Regular Pcs', '<p>Bananas are a&nbsp;healthy source of fiber, potassium, vitamin B6, vitamin C, and various antioxidants and phytonutrients.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'banana-bangla-ripe-regular-pcs', 10, 'banana-bangla-ripe-regular-pcs_1661805875.jpg', '2018-05-12', 1),
(12, 2, 'Meat', '<p>Beef(???? ????) is the flesh of livestock. It is known as red meat, a term used for mammalian meat that contains greater quantities of iron than chicken or fish. Beef(???? ????) is also commonly ground or minced, usually eaten as roasts, ribs, or steaks. In hamburgers, patties of ground beef are also used. Beef items that are processed include corned beef, beef jerky, and sausages.</p>\r\n\r\n<p>Different vitamins and minerals, especially iron and zinc, are rich in fresh, lean beef. Moderate beef(???? ????) intake can, therefore, be recommended as part of a healthy diet.</p>\r\n\r\n<p>Beef(???? ????) can be cooked in many ways. Grilling, Barbecue, Broiling, Griddle, Roasting are most popular way to cook beef.</p>\r\n\r\n<p>Grilling:</p>\r\n\r\n<p>Cook the beef(???? ????), usually in excess of 340 &deg;C (650 &deg;F), over or under a strong radiant heat source. This contributes to the searing of the beef surface, which produces a crust that is flavorsome. Grilling, particularly over charcoal, is often referred to as barbecuing in Australia, New Zealand, the United States, Canada, the United Kingdom, Germany, and the Netherlands, sometimes abbreviated to &#39;BBQ.&#39; This technique may also be called charbroiling when cooked over charcoal.</p>\r\n\r\n<p>Barbecue:</p>\r\n\r\n<p>A cooking method involving cooking meat at low temperatures with smoke from a wood fire for long periods of time.</p>\r\n\r\n<p>Broiling:</p>\r\n\r\n<p>A description used in North America. It is similar to grilling but still above the meat with the heat source. This is considered a style of grilling elsewhere.</p>\r\n\r\n<p>Griddle:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Meat can be cooked on a hot metal griddle. In order to inhibit sticking, a little oil or fat can be added; the dividing line when the method becomes shallow frying is not well recognized</p>\r\n\r\n<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Beef(???? ????) Provides a Large Source of L-Carnitine</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&middot; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Bones themselves are rich in vitamins and nutrients, including calcium, magnesium, and phosphorus.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&middot; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Beef (???? ????)Provides the &ldquo;Master Antioxidant&rdquo; Glutathione.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&middot; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Beef is High in Protein and Helps Improve Muscle Mass</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&middot; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Beef is Extremely Rich in Minerals</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&middot; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Eating Beef Helps Prevent Iron Deficiency Anemia</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&middot; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Beef Contains Carnosine, a Potent Amino Acid.</p>\r\n', 'meat', 749.99, 'meat_1661806089.jpg', '2018-05-12', 3),
(13, 2, 'Pineapple Regular Pcs', '<ul>\r\n	<li>Pineapples are tropical fruits that are rich in vitamins, enzymes, and antioxidants.</li>\r\n	<li>They may help boost the immune system, build strong bones, and aid indigestion. And, despite their sweetness, pineapples are low in calories.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'pineapple-regular-pcs', 60, 'pineapple-regular-pcs_1661805930.jpg', '2018-05-12', 1),
(14, 2, 'Kenu-Orange Australian', '<p>The &#39;Kinnow&#39; is a high yield mandarin hybrid cultivated extensively in the wider Punjab region of India and Pakistan. It is a hybrid of two citrus cultivars &#39;King&#39; (Citrus nobilis) &times; &#39;Willow Leaf&#39; (Citrus &times; deliciosa) first developed by Howard B. Frost, at the University of California Citrus Experiment Station.</p>\r\n', 'kenu-orange-australian', 330, 'kenu-orange-australian_1661806075.jpg', '2018-05-10', 13),
(15, 2, 'Apple Golden S.Africa Bulk', '<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>High in vitamin C (6mg per 100g)</p>\r\n	</li>\r\n	<li>\r\n	<p>Low in fat and do not contain any cholesterol</p>\r\n	</li>\r\n	<li>\r\n	<p>High in dietary fiber (1.8g per 100g)</p>\r\n	</li>\r\n	<li>\r\n	<p>A good source of potassium (120mg per 100g)</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'apple-golden-s-africa-bulk', 375, 'apple-golden-s-africa-bulk_1661806951.jpg', '2018-07-09', 1),
(16, 2, 'PUMPKIN GREEN [SWEET GOURD] PCS', '<ul>\r\n	<li>PUMPKIN GREEN [SWEET GOURD] is rich in vitamins&nbsp;A,&nbsp;C, D, E, K, B1, B2, B3, B6 and minerals such as potassium, calcium, iron, phosphorus, selenium, zinc, magnesium, boron, cobalt.</li>\r\n	<li>It has &nbsp;excellent taste and various way to prepare it.</li>\r\n	<li>It is perfect for human nutrition.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'pumpkin-green-sweet-gourd-pcs', 90, 'pumpkin-green-sweet-gourd-pcs_1661806817.jpg', '2018-05-10', 2),
(17, 3, 'SHUKRAN 100% CHINIGURA RICE 1KG', '<p>A hygenically maintained rice produced and processed by automated machines.</p>\r\n', 'shukran-100-chinigura-rice-1kg', 150, 'shukran-100-chinigura-rice-1kg_1661802479.jpg', '2018-05-12', 1),
(18, 3, 'PRAN FISH MASALA PACK 20GM', '<p>PRAN Fish Masala is an easy mix of spices and herbs to make fish curry. This takes much less time to make and adds much more flavor to the curry.</p>\r\n', 'pran-fish-masala-pack-20gm', 14, 'pran-fish-masala-pack-20gm_1661802570.jpg', '2018-05-12', 2),
(19, 3, 'SUNSHINE MAIDA 2KG', '<p>Eat in your daily breakfast</p>\r\n', 'sunshine-maida-2kg', 99.99, 'sunshine-maida-2kg_1661802687.jpg', '2018-05-10', 1),
(20, 3, 'PRAN HOT TOMATO SAUCE 750GM', '<p>Pran hot Tomato sauce is rich in vitamins. Vitamin A works well not only for the eyes, but also for the skin, bones, and teeth.</p>\r\n', 'pran-hot-tomato-sauce-750gm', 145, 'pran-hot-tomato-sauce-750gm_1661805418.jpg', '2018-05-12', 1),
(27, 1, 'SEYLON FAMILY BLEND TEA POLY 100GM', '<p>Seylon Tea is produced from best tea leaves of the finest tea gardens. Seylon is a refreshing and reviving infusion. Seylon tea with its distinct taste and character has now become every consumer?s favorite tea.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'seylon-family-blend-tea-poly-100gm', 50, 'seylon-family-blend-tea-poly-100gm_1661805800.jpg', '2018-07-09', 9),
(28, 4, 'SWEETS PLAIN CAKE 450GM', '<p>SWEETS PLAIN CAKE 450GM</p>\r\n', 'sweets-plain-cake-450gm', 225, 'sweets-plain-cake-450gm_1661807132.jpg', '2022-08-29', 2),
(29, 4, 'SUNFEAST D FANTASY CHOCO FILLS BIS 300G', '<p>An exquisite combination of luscious chocolate filling enrobed within a perfectly baked rich cookie outer</p>\r\n\r\n<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; An offer that fully epitomizes the brand promise of pure indulgence</p>\r\n\r\n<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sunfeast dark fantasy choco fills is the latest and the most premium offering from the portfolio of sunfeast</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'sunfeast-d-fantasy-choco-fills-bis-300g', 420, 'sunfeast-d-fantasy-choco-fills-bis-300g_1661807047.jpg', '2018-07-09', 3),
(30, 1, 'Maccoffee 3in1 White Coffee Sachets 15gm', '<ul>\r\n	<li>This is like most classics; part of its appeal comes from its simplicity.</li>\r\n	<li>MacCoffee 3 in 1 Original is simply a blend of premium coffee beans, non-dairy creamer and sugar.</li>\r\n	<li>It offers a unique and distinct flavor that is rich, smooth and deeply aromatic.</li>\r\n</ul>\r\n', 'maccoffee-3in1-white-coffee-sachets-15gm', 15, 'maccoffee-3in1-white-coffee-sachets-15gm.jpg', '0000-00-00', 0),
(31, 1, 'Lovello Stick Premium Crunchy Bar -Mega 71 Ml', '<ul>\r\n	<li>cruncy</li>\r\n	<li>mega size</li>\r\n</ul>\r\n', 'lovello-stick-premium-crunchy-bar-mega-71-ml', 35, 'lovello-stick-premium-crunchy-bar-mega-71-ml.jpg', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 9, 'PAY-1RT494832H294925RLLZ7TZA', '2018-05-10'),
(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2018-05-10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$0SHFfoWzz8WZpdu9Qw//E.tWamILbiNCX7bqhy3od0gvK5.kSJ8N2', 1, 'Admin', 'Realmart', '', '', 'profile.jpg', 1, '', '', '2022-08-29'),
(13, 'user1@yahoo.com', '$2y$10$C9ZZTp8nzLsWaxDLXgPmwOJwTC9kMFET.wmKePWLItTySobhVbn/2', 0, 'User', 'one', 'Dhaka', '01215451215', 'cover.jpg', 1, '', '', '2020-12-30'),
(14, 'tanzil@mail.com', '$2y$10$C3K/k9ljpNVGSqehRTKjMOSQN8FbCBElogRyTMSMiYQ6CMFnjYgna', 0, 'Tanzil', 'Tasfir', '138/1 Farmgate Dhaka', '01866054737', 'profile.jpg', 1, '', '', '2022-08-29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
