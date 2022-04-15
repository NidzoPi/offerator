-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2022 at 01:13 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scraperdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `id` int(11) NOT NULL,
  `storeName` varchar(1000) NOT NULL,
  `storeURL` varchar(1000) NOT NULL,
  `dealSelector` varchar(1000) NOT NULL,
  `deal` varchar(1000) NOT NULL,
  `timeStam` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`id`, `storeName`, `storeURL`, `dealSelector`, `deal`, `timeStam`) VALUES
(133, 'lumabylaura', 'https://lumabylaura.com/', '.announcement-message-item>p', 'Free USA Shipping for Orders Over $50', '04/13/2022 11:24 am'),
(134, 'doodahdeals', 'https://doodahdeals.com/', '.announcement-bar__content', 'FREE SHIPPING ON ALL ORDERS!', '04/13/2022 11:34 am'),
(135, 'nfsports', 'https://nfsports.com/', '.announcement-bar__message', 'FREE USA SHIPPING on orders over $75', '04/13/2022 11:36 am'),
(136, 'ellsworthandivey', 'https://www.ellsworthandivey.com/', '.announcement-slider__slide', 'Free shipping on orders of $200+', '04/13/2022 11:38 am'),
(137, 'bloomhemp', 'https://bloomhemp.com/', '#header>div>div>span', 'FREE SHIPPING ON ALL ORDERS (U.S Only)', '04/13/2022 11:40 am'),
(138, 'napjitsu', 'https://napjitsu.com/', '.announcement-bar__message', 'USE &quot;BETTERSLEEP&quot; FOR A FREE REST (A $30 VALUE) WHEN YOU SPEND $20 — BECAUSE IT&#39;S NATIONAL SLEEP AWARENESS MONTH', '04/13/2022 11:41 am'),
(139, 'amino-vital', 'https://www.amino-vital.com/', '.topbar-section>div>p', 'FREE SHIPPING ON ALL ORDERS $50+', '04/13/2022 11:43 am'),
(140, 'sackville', 'https://sackville.co/', '#__next div>p', '50% OFF ALL ROOM SPRAYS!              STAY FRESH BITCH', '04/13/2022 11:46 am'),
(141, 'leafoflifewellness', 'https://leafoflifewellness.com/', '.jet-slider__desc', 'Free shipping on orders over $50!', '04/13/2022 11:49 am'),
(142, 'naturalshilajit', 'https://naturalshilajit.com/', '.topheader-ribbon', 'Free Shipping Worldwide On All Orders Over $59', '04/13/2022 11:59 am'),
(143, 'lxrco', 'https://lxrco.com/', '#announcement_bar>div>a>p', 'Spring season is here – Take 20% off your purchase with code SPRING20 – Shop here', '04/13/2022 12:00 pm'),
(144, 'poshbabyandkids', 'https://poshbabyandkids.com/', '.announcement-slider__slide', 'EASTER SALE IS LIVE NOW! USE THE CODE EASTER20 UPON CHECKOUT FOR 20% OFF ON ALL ORDERS OVER $150', '04/13/2022 12:02 pm'),
(145, 'hollyandbeau', 'https://hollyandbeau.com/', '.announcement-bar__inner', 'FREE US Shipping on all orders over $80', '04/13/2022 12:08 pm'),
(146, 'royalandpure', 'https://royalandpure.com/', '.elementor-widget-container', 'Free Shipping on domestic orders over $35', '04/13/2022 12:09 pm'),
(147, 'luca-co', 'https://luca-co.com/', '.clearfix.announcement_header>div>p', '50% OFF SITEWIDE with code: HOLIDAYS | Free Shipping & Free Returns On All US Orders! ', '04/13/2022 12:10 pm'),
(148, 'overnightflowers', 'https://www.overnightflowers.com/', '.announcement__text', '25% Off + Free Delivery w/ SAVE25', '04/13/2022 12:14 pm'),
(149, 'balancegenics', 'https://www.balancegenics.com/', '.w-slide>div>a', 'FREE SHIPPING + 45-DAY GUARANTEE →', '04/13/2022 12:15 pm'),
(150, 'opkix', 'https://opkix.com/', '.announcement__text', 'All OPKIX Eyewear Styles Now 50% OFF', '04/13/2022 12:19 pm'),
(151, 'thelumicharge', 'https://thelumicharge.com/', '.small-promo-content', 'Get 15% Off Storewide                                                  \n\n Use Code - \"LUMI15\"                                                 \n\nUse Code - \"LUMI15\"', '04/13/2022 12:20 pm'),
(152, 'antopusa', 'https://antopusa.com/', 'li.ubermenu-item>div>div>div>div+div>a', 'Subscribe for 10% OFF', '04/13/2022 12:22 pm'),
(153, 'sulinashop', 'https://sulinashop.com/', '.cart__message-default', 'Spend      $50     more for free shipping', '04/13/2022 12:27 pm'),
(154, 'minimalbottle', 'https://minimalbottle.com/', '#promo-bar>div', 'Free Shipping on Order $59+ in US &amp; Canada', '04/13/2022 12:29 pm'),
(155, 'uvebeauty', 'https://uvebeauty.com/', '.announcement--text', 'FREE SHIPPING on orders over $75 (standard ground domestic)', '04/13/2022 12:29 pm'),
(156, 'upstateelevator', 'https://www.upstateelevator.com/', '#top-bar li>p', '**Free Shipping on Orders Over $49.99**', '04/13/2022 12:31 pm'),
(157, 'spinealign', 'https://www.spinealign.com/', '#shopify-section-header_banner>div>div>div>div', '10% OFF SITEWIDE SPRING SALE.  USE CODE \"WELCOME5\" FOR AN EXTRA 5% OFF ALL ORDERS! OFFER ENDS IN', '04/13/2022 12:38 pm'),
(158, 'hereafter', 'https://www.hereafter.co/', '#___gatsby>div>button>p', 'Sign up for 10% off →', '04/13/2022 12:43 pm'),
(159, 'kierin-nyc', 'https://kierin-nyc.com/', '.alert-title.h4>p', 'FREE DOMESTIC USA SHIPPING - ORDERS OVER $100', '04/13/2022 12:45 pm'),
(160, 'asterralabs', 'https://asterralabs.com/', '.swiper-slide>p', 'Free Shipping on Orders Over $50', '04/13/2022 12:51 pm'),
(161, '100percentpure', 'https://www.100percentpure.com/', '#TopBannerMessage>p>a', 'Receive $87  gift FREE with purchase of $95 USD  or more!', '04/13/2022 12:53 pm'),
(162, 'liweli', 'https://liweli.com/', '.announcement-bar__message', 'Free Shipping', '04/13/2022 12:53 pm'),
(163, 'sustainbrilliance', 'https://www.sustainbrilliance.com/', '.headr-info>span', 'Free domestic shipping on all orders - Same day shipping by 2PM EST', '04/13/2022 12:54 pm'),
(164, 'metromobilityusa', 'https://metromobilityusa.com/', '.wpfront-message', 'Holiday Deal. $60 Additional savings, use code Holidaysaving when check out', '04/13/2022 12:56 pm'),
(165, 'innovetpet', 'https://www.innovetpet.com/', '.announcement-bar__message', 'Subscribe and Save 35% | First Subscription Only | Code: PET35', '04/13/2022 12:56 pm'),
(166, 'modernmatchlingerie', 'https://modernmatchlingerie.com/', '.announcement__text', 'FREE shipping on orders over $150', '04/13/2022 12:57 pm'),
(167, 'andreacarrano', 'https://andreacarrano.com/', '.featured-row__subtext', 'The Easter Sale is live. Shop pastels and delicate floral shades within each capsule. 30% off of each collection with code: TULIP', '04/13/2022 12:58 pm'),
(168, 'yizzam', 'https://yizzam.com/', '.header-top>div>p>a', 'Free Shipping On Orders Over $100! *See Details', '04/13/2022 01:01 pm'),
(169, 'garboandkelly', 'https://www.garboandkelly.com/', '.notification-bar__message', 'FREE SHIPPING ON ALL NATIONAL ORDERS OVER $70', '04/13/2022 01:01 pm'),
(170, 'yesterdaywellness', 'https://yesterdaywellness.com/', '#signupTextWrapper>h2', 'Sign up for 10% off your first CBD order.', '04/13/2022 01:03 pm'),
(171, 'renasorganic', 'https://renasorganic.com/', '.sale-h2', 'Special April Sale Pricing', '04/13/2022 01:06 pm'),
(172, 'mission', 'https://www.mission.com/', '.header-bottom-banner>p', '25% OFF SITEWIDE | FREE SHIPPING OVER $50', '04/13/2022 01:07 pm'),
(173, 'purehempbotanicals', 'https://purehempbotanicals.com/', '.et_pb_section_5 div>p', 'Free Shipping On All Orders Over $75', '04/13/2022 01:10 pm'),
(174, 'hotsox', 'https://www.hotsox.com/', '.notification-bar__message', 'Spring socks that rock. Buy 2, get 1 free &amp; Free shipping on $35+ &gt;', '04/13/2022 01:11 pm'),
(175, 'bobore', 'https://bobore.com/', '.announcement-bar__message', 'Free Shipping Worldwide', '04/13/2022 01:12 pm'),
(176, 'planetarie', 'https://planetarie.com/', '.announcement-bar__message', 'Free Shipping on orders over $75 |  30 Day Money Back Guarantee', '04/13/2022 01:13 pm'),
(177, 'getfurna', 'https://getfurna.com/', '.announcement-bar__message', 'Free Shipping to Canada and USA with orders over $100!', '04/13/2022 01:13 pm'),
(178, 'thebudgrower', 'https://thebudgrower.com/', '.nectar-center-text>a', 'LIMITED TIME OFFER: FREE SHIPPING ON ALL ORDERS', '04/13/2022 01:14 pm'),
(179, 'strainz', 'https://strainz.com/', '.et_pb_text_inner>h3', 'FREE SHIPPING ON ORDERS OVER $75', '04/13/2022 01:16 pm'),
(180, 'buylegxercise', 'https://buylegxercise.com/', 'main div+div+figure+div+div>div', '1 YEAR WARRANTY • 100% MONEY BACK GUARANTEE • FREE SHIPPING!', '04/13/2022 01:19 pm'),
(181, 'revessel', 'https://revessel.com/', '.announcement__text', 'Free shipping on orders $99+', '04/13/2022 01:23 pm'),
(188, 'lxrco', 'https://lxrco.com/', '#announcement_bar>div>a>p', 'Get 15% off your purchase when you sign up to our newsletter – Sign up here', '04/15/2022 01:10 pm'),
(189, 'spinealign', 'https://www.spinealign.com/', '#shopify-section-header_banner>div>div>div>div', 'EASTER SALE!  USE CODE \"WELCOME10\" FOR A TOTAL OF 20% SAVINGS SITEWIDE. OFFER ENDS IN', '04/15/2022 01:10 pm'),
(190, '100percentpure', 'https://www.100percentpure.com/', '#TopBannerMessage>p>a', 'Free USA Domestic Shipping on $50+ | CA/UK/EU Shipping', '04/15/2022 01:10 pm'),
(191, 'hotsox', 'https://www.hotsox.com/', '.notification-bar__message', 'Spring socks that rock. Buy 2, get 1 free &gt;', '04/15/2022 01:10 pm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
