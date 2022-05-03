-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2022 at 08:11 PM
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
(191, 'hotsox', 'https://www.hotsox.com/', '.notification-bar__message', 'Spring socks that rock. Buy 2, get 1 free &gt;', '04/15/2022 01:10 pm'),
(192, 'allvane', 'https://allvane.com/', '.header-notice>p', 'Free shipping with purchase of any 2 products and all subscriptions SHOP', '04/20/2022 11:33 am'),
(193, 'kiddietotes', 'https://kiddietotes.com/luggage-backpack-set/', '.free-shipping-sec h3', 'FREE \r\n SHIPPING', '04/20/2022 11:44 am'),
(194, 'woken', 'https://woken.coffee/', '.promobar', 'Free Shipping On Orders Over $30.                          Shop Now', '04/20/2022 11:46 am'),
(195, 'getshimmy', 'https://getshimmy.com/', '.announcement-bar__content>p', 'Free ground shipping on orders over $50!', '04/20/2022 12:26 pm'),
(196, 'tremormiracle', 'https://tremormiracle.com/', '.promo_banner>p', 'Free Shipping on All Products!', '04/20/2022 12:27 pm'),
(197, 'strawesome', 'https://www.strawesome.com/', '.vc_message_box-rounded>p', 'Save up to 50% on items in our Glass Straw Outlet. Free Shipping on USA orders of $49, Canadian orders of $69, and Worldwide on orders of $100. Use code EARTH22 for a FREE limited edition Earth Straw with an order of $22 or more.', '04/20/2022 12:29 pm'),
(198, 'directnic', 'https://directnic.com/', '#search_form>p', 'Get a FREE domain name with the purchase of any annual hosting plan.', '04/20/2022 12:33 pm'),
(199, 'wooflinen', 'https://wooflinen.com/', '.uvc-sub-heading>h6', 'Clear the shelves with HUGE SAVINGS on bedding.\r\n Promo Code: MARCHFLASH', '04/20/2022 12:36 pm'),
(200, 'threemain', 'https://www.threemain.com/', '.header-promotion-text', 'FREE SHIPPING ON SUBSCRIPTIONS AND ORDERS OF $45+', '04/20/2022 12:38 pm'),
(201, 'myremede', 'https://www.myremede.com/', '.price-level-wallet-info>span', 'Welcome to MyRemede.com – Use promo code MR25 for 25% off your entire order. Exclusions Apply', '04/20/2022 12:38 pm'),
(202, 'cancooker', 'https://www.cancooker.com/', '.fbr-message', 'FREE SHIPPING ON ORDERS OVER $99!', '04/20/2022 12:40 pm'),
(203, 'vesselbrand', 'https://www.vesselbrand.com/', '.announcement-bar__text>p', 'FREE SHIPPING ON ORDERS OVER $99', '04/20/2022 12:41 pm'),
(204, 'cannazall', 'https://cannazall.com/', '.et_pb_text_2 span', 'The best Priced Highest Quality CBD Products&#8230; and Shipping is Always Free!', '04/20/2022 12:43 pm'),
(205, 'theanxiouspet', 'https://theanxiouspet.com/', '.announcement-bar__message', 'Stay calm and enjoy  FREE shipping  on all orders!', '04/20/2022 12:43 pm'),
(206, 'chefsvisionknives', 'https://chefsvisionknives.com/', '.promo_banner__content', 'FREE Shipping Worldwide', '04/20/2022 12:44 pm'),
(207, 'weightedevolution', 'https://weightedevolution.com/', '.gt_topbar-text', 'Free Shipping | 100 Night Trial', '04/20/2022 12:44 pm'),
(208, 'natureshighwaycbd', 'https://natureshighwaycbd.com/', 'span.h5', 'Free Shipping on all orders over $75!', '04/20/2022 12:46 pm'),
(209, 'chassisformen', 'https://chassisformen.com/', '.announcement__text--open', 'Save 15% with Subscribe & Save + FREE Expedited Shipping on all US Orders', '04/20/2022 12:47 pm'),
(210, 'redlinegoods', 'https://www.redlinegoods.com/', '#content-1>p', 'Subscribe to our newsletter to get an instant 20% discount!', '04/20/2022 12:48 pm'),
(211, 'buycbdhub', 'https://buycbdhub.com/', '.AnnouncementBar__Content>a', 'FREE SHIPPING $50+ | LOWEST PRICE GUARANTEED', '04/20/2022 12:49 pm'),
(212, 'lensesforless', 'https://www.lensesforless.com/', '.announcement-bar__inner', 'Free Shipping on ALL orders', '04/20/2022 12:50 pm'),
(213, 'valuepetsupplies', 'https://www.valuepetsupplies.com/', 'p.announcement-bar__content', 'Free Shipping • US48 Street Address Only', '04/20/2022 12:54 pm'),
(214, 'getsom', 'https://getsom.com/', '.header-promotion-text', 'Over 3 Million Nights of Sleep Delivered. Free Shipping on orders $50+.', '04/20/2022 12:54 pm'),
(215, 'unearthedcandles', 'https://www.unearthedcandles.com/', 'aside.promo', 'FREE SHIPPING ON ORDERS OVER $80                        |                         Coconut, soy & essential oil candles', '04/20/2022 01:01 pm'),
(216, 'honeyskin', 'https://honeyskin.com/', '.announcement-bar__text', 'Free Shipping on Orders over $50.00', '04/20/2022 01:02 pm'),
(217, 'happydelta', 'https://happydelta.com/', '.announcement__text', 'Free Shipping on all orders over $35', '04/20/2022 01:07 pm'),
(218, 'garypoppins', 'https://garypoppins.com/', '.promo_banner', 'free shipping on orders $60+', '04/20/2022 01:08 pm'),
(219, 'cairebeauty', 'https://www.cairebeauty.com/', '.promo-banner__content>p', 'FREE COSMETICS POUCH & US SHIPPING | 100% MONEY BACK GUARANTEE', '04/20/2022 01:08 pm'),
(220, 'luckyjackcoffee', 'https://www.luckyjackcoffee.com/', '.notification-bar p', 'Intro Discount of 15% use code \" LUCKY15\" at checkout - Free Shipping on orders of $25 or more!', '04/20/2022 01:09 pm'),
(221, 'nabohood', 'https://nabohood.us/', '.announcement--text', 'Free Ground Shipping and Returns on all U.S. Orders', '04/20/2022 01:11 pm'),
(222, 'capsuljewelry', 'https://capsuljewelry.com/', '.section-content>div:nth-last-child(2)', 'Premium, Personalized Jewelry created uniquely for you                                 shop new styles                               \"The Sweetest Gifts for Moms\" - BuzzFeed                                 Take 20% Off Sitewide with CODE: MOMROCKS', '04/20/2022 01:13 pm'),
(223, 'bondpets', 'https://www.bondpets.com/', '.announcement-text', 'FREE SHIPPING ON ALL PRODUCTS.', '04/20/2022 01:15 pm'),
(224, 'singingmachine', 'https://singingmachine.com/', '.promo_banner', '15% OFF with: MICDROP15', '04/20/2022 01:16 pm'),
(225, 'stepanistyle', 'https://www.stepanistyle.com/', '.banner p', 'Free Shipping + 5% off with code \"5off\"', '04/20/2022 01:20 pm'),
(226, 'soooketolicious', 'https://soooketolicious.com/', '.announcement-bar__message.h5', 'NEW YEAR DISCOUNT - Use Discount Code &quot;KETO15&quot; for 15% off sitewide', '04/20/2022 01:22 pm'),
(227, 'backembrace', 'https://backembrace.com/', '.announcement-bar__content', 'FREE SHIPPING IN THE U.S.!', '04/20/2022 01:24 pm'),
(228, 'stickytoffeetextiles', 'https://stickytoffeetextiles.com/', '.announcement-link-text', 'FREE SHIPPING + 20% OFF ALL ORDERS WITH CODE STICKYTOFFEE20', '04/20/2022 01:24 pm'),
(229, 'pytbeauty', 'https://pytbeauty.com/', '.announcement-bar__text', 'FREE SHIPPING on orders $30+', '04/20/2022 01:25 pm'),
(230, 'microbiomeplus', 'https://microbiomeplus.com/', '.announcement-bar__message', 'Give $10, Save $10            -  Join Our Referral Program Here.', '04/20/2022 01:29 pm'),
(231, 'totaltea', 'https://www.totaltea.com/', '.top-bar__message', 'FREE SHIPPING ON ALL US ORDERS $25+', '04/20/2022 01:32 pm'),
(232, 'smithhonig', 'https://smithhonig.com/', '.top-bar p', 'DESIGNER CLOSEOUT: 50% OFF SALE ITEMS', '04/20/2022 01:33 pm'),
(233, 'nutratrek', 'https://www.nutratrek.com/', '.gt_topbar-text>span', '\"Spring Sale is Live\" Exclusive Discount on Probiotic Gummies! Code \"PROSPRING\" |&nbsp; FREE SHIPPING | Bundles | Instalments | Subscription', '04/20/2022 01:34 pm'),
(234, 'scanmyphotos', 'https://www.scanmyphotos.com/', '.t-site-header__message', 'Since 1990, over one billion photo memories preserved. Save 22% use promo code: ProScanning', '04/20/2022 01:35 pm'),
(235, 'shirecityherbals', 'https://shirecityherbals.com/', '.announcement__text', 'FREE SHIPPING ON ALL ORDERS |  *Only available in the contiguous US. See shipping policy for Alaska &amp; Hawaii', '04/20/2022 01:40 pm'),
(236, 'prettylitter', 'https://www.prettylitter.com/', '#announcement-bar', 'Spring Special - 20% off your first order!', '04/20/2022 01:46 pm'),
(237, 'iegreentea', 'https://iegreentea.com/', '#shopify-section-header-announcement', 'FREE SHIPPING on USA orders of $20 or more!  $30 or more Worldwide!                                    \"Your discount code has been activated.All applicable discounts will be applied at Checkout.\"\n\nHere is code', '04/20/2022 01:49 pm'),
(238, 'bellysleep', 'https://bellysleep.com/', '.topbar-child1', 'Free Shipping On all Orders', '04/20/2022 01:53 pm'),
(239, 'teakruthi', 'https://teakruthi.com/', '.announcement-shipping', '15% OFF 1st order&nbsp;&middot;&nbsp;30% OFF over US$ 120  [Details]', '04/20/2022 01:54 pm'),
(240, 'philterlabs', 'https://philterlabs.com/', '.promo_banner__content>p', 'FREE DOMESTIC SHIPPING ON orders of $30 or more! Free International Shipping on orders of $100 or more!', '04/20/2022 01:56 pm'),
(241, 'lxrco', 'https://lxrco.com/', '#announcement_bar>div>a>p', 'Make a purchase to help plant trees and receive an exclusive discount code for up to 30% off! Shop here', '04/20/2022 02:03 pm'),
(242, 'spinealign', 'https://www.spinealign.com/', '#shopify-section-header_banner>div>div>div>div', 'EASTER SALE EXTENDED!  USE CODE \"WELCOME10\" FOR AN EXTRA 10% OFF SITEWIDE. OFFER ENDS IN', '04/20/2022 02:03 pm'),
(243, 'andreacarrano', 'https://andreacarrano.com/', '.featured-row__subtext', 'Shop pastels and delicate floral shades within each capsule during the transitional springtime season', '04/20/2022 02:03 pm'),
(244, 'hotsox', 'https://www.hotsox.com/', '.notification-bar__message', '25% off all styles and free shipping on $35+ &gt;', '04/20/2022 02:03 pm'),
(245, 'strainz', 'https://strainz.com/', '.et_pb_text_inner>h3', 'LIMITED TIME OFFER: FREE SHIPPING ON ALL ORDERS', '04/20/2022 02:03 pm'),
(246, 'strainz', 'https://strainz.com/', '.et_pb_text_inner>h3', 'FREE SHIPPING ON ORDERS OVER $75', '04/20/2022 02:15 pm'),
(247, 'decoratorsbest', 'https://www.decoratorsbest.com/', '.announcement-bar__inner', 'SAVE 10%! CODE: SPR22 \r\nFREE SHIPPING ON ORDERS OVER $100*', '04/26/2022 10:57 am'),
(248, 'romadesignerjewelry', 'https://www.romadesignerjewelry.com/', '#announcement-bar-carousel', 'SAVE 25% SITEWIDE | CODE: MOM25                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           \n\nFREE SHIPPING OVER $50 | FREE RETURNS                                                                       ', '04/26/2022 10:59 am'),
(254, 'snackshop', 'https://snackshop.com/', '.m-promo-banner__message', 'Free Shipping  on orders over $40', '04/26/2022 12:33 pm'),
(255, 'bamboobat', 'https://bamboobat.com/', '.shipp_info span', 'Free Shipping on orders $49.99 and up!', '04/26/2022 12:34 pm'),
(257, 'philosophersguild', 'https://philosophersguild.com/', '.announce-header', '!!! FREE SHIPPING ANYWHERE IN THE CONTINENTAL U.S. FOR ALL RETAIL ORDERS OVER $50.00 !!!', '04/26/2022 12:58 pm'),
(258, 'bigfeetpjs', 'https://www.bigfeetpjs.com/', '#top-banner-promo', 'FREE USA SHIPPING  &nbsp; &nbsp;   -  &nbsp; &nbsp;   $25 OFF INSTANTLY ON ORDERS OVER $150 WITH CODE FREE25', '04/26/2022 01:02 pm'),
(259, 'bakblade', 'https://bakblade.com/', '.homepagecontent h6', 'Innovative, reliable, and easy to use grooming systems.\r\n\r\n2-day FAST & FREE SHIPPING on orders over $54. \r\n (Based on carrier availability)', '04/26/2022 01:03 pm'),
(260, 'drjacobsnaturals', 'https://drjacobsnaturals.com/', '.announcement__text', '🚚Free Shipping On Purchase Over $40 (US ONLY except VI & HI)', '04/26/2022 01:06 pm'),
(261, 'coletteandsebastian', 'https://www.coletteandsebastian.com/', '.announcement-bar__message>p', 'FREE DOMESTIC SHIPPING', '04/26/2022 01:36 pm'),
(262, 'tattoogoo', 'https://tattoogoo.com/', '.promo-banner>span', 'Free Shipping in U.S. on orders over $49', '04/26/2022 01:39 pm'),
(263, 'biophileskin', 'https://biophileskin.com/', '.header-message--crowded', 'Always free shipping to the USA', '04/26/2022 01:47 pm'),
(264, 'directcbdonline', 'https://www.directcbdonline.com/', '.kyan-promotions__columns', 'Welcome to Direct CBD Online!\r\n Enjoy 35% Off your first purchase with code: NEW35', '04/26/2022 01:50 pm'),
(265, 'scosche', 'https://www.scosche.com/', '.international-shipping', 'Free Domestic Shipping  |  (800) 363-4490 ext.1', '04/26/2022 01:51 pm'),
(266, 'shop', 'https://shop.lovedandy.com/', '.announcement-bar__message', '50% off your first month with code 2WEEKSFREE', '04/26/2022 02:17 pm'),
(267, 'shop', 'https://shop.lovedandy.com/', '.announcement-bar__message', '50% off your first month with code 2WEEKSFREE', '04/26/2022 02:17 pm'),
(268, 'love', 'https://shop.lovedandy.com/', '.announcement-bar__message', '50% off your first month with code 2WEEKSFREE', '04/26/2022 02:19 pm'),
(269, 'lovedandy', 'https://shop.lovedandy.com/', '.announcement-bar__message', '50% off your first month with code 2WEEKSFREE', '04/26/2022 02:21 pm'),
(270, 'vayasleep', 'https://vayasleep.com/', '.info-message', 'Ends Sunday                                 $300 off any mattress. &nbsp;Free shipping &amp; returns.&nbsp;                                  Promo:               VAYA300                                 D                H                M                S', '04/26/2022 02:23 pm'),
(271, 'zerorestriction', 'https://www.zerorestriction.com/', '.justify-around>a', 'Always free shippingOn all orders', '04/26/2022 02:27 pm'),
(272, 'reggie', 'https://reggie.com/', '.announcement__text', 'Only      :      to                   GET 20% OFF WITH CODE \"REGGIEDOG\" Shop now', '04/26/2022 02:29 pm'),
(273, 'myupspring', 'https://www.myupspring.com/', '.promo-content-wrapper', 'FREE DOMESTIC SHIPPING OVER $40                                               \n\nExpand', '04/26/2022 02:38 pm'),
(274, 'mureandgrand', 'https://mureandgrand.com/', '.header-account-link+div', '🔥 FREE SHIPPING ON ALL U.S. ORDERS $35+ 🔥', '04/26/2022 02:40 pm'),
(275, 'activegear', 'https://www.activegear.co/', '.announcement-link', 'Free shipping On all orders over $100', '04/26/2022 02:41 pm'),
(276, 'miraflora', 'https://miraflora.co/', '.promo>strong', 'FAST & FREE SHIPPING ON ALL ORDERS', '04/26/2022 02:44 pm'),
(277, 'pseudolabs', 'https://pseudolabs.com/', '.AnnouncementBar__Content', 'FREE SHIPPING ON ORDERS OVER $29 + Free 30 day returns', '04/26/2022 02:45 pm'),
(278, 'crushtheciaexam', 'https://crushtheciaexam.com/cia-review-course-discounts/', '.coupon_main-title_inner', 'Surgent CIA Discount Save $125 Off', '04/26/2022 02:47 pm'),
(279, 'vousvitamin', 'https://www.vousvitamin.com/', '.elementor-widget-container>a', 'RECEIVE 20% OFF YOUR FIRST ORDER | USE VOUS20', '04/26/2022 02:50 pm'),
(282, 'barbellapparel', 'https://barbellapparel.com/', '.announcement-text', 'Get a free t-shirt with any purchase over $125!', '04/26/2022 02:58 pm'),
(283, 'whybars', 'https://whybars.com/', '.shg-box-content strong', 'Free shipping on all orders.  Shop now.', '04/26/2022 03:12 pm'),
(284, 'aavrani', 'https://aavrani.com/', '.pxs-announcement-bar-text-desktop', 'FREE SHIPPING ON ALL US ORDERS $50+', '04/26/2022 03:13 pm'),
(286, 'kingkanine', 'https://kingkanine.com/', '.promo-banner__content', 'FREE Domestic Shipping on all Orders $100 and up!', '04/26/2022 03:17 pm'),
(287, 'monspeakix', 'https://www.monspeakix.com/', '.promo-banner', 'Free Expedited Shipping | Global Shipping</p>', '04/26/2022 03:18 pm'),
(288, 'lagunabeachtextileco', 'https://lagunabeachtextileco.com/', '.pxs-announcement-bar-text-desktop', 'Orders over $100 ship free!', '04/26/2022 03:19 pm'),
(289, 'melindamaria', 'https://melindamaria.com/', '.AnnouncementBar__Content', 'Free Shipping Free Returns Always', '04/26/2022 03:22 pm'),
(290, 'cocoandbark', 'https://www.cocoandbark.com/', '.announcement-slider__slide', 'Free shipping On all orders over $50', '04/26/2022 03:23 pm'),
(291, 'scentbird', 'https://www.scentbird.com/', '#root>div>div>a>div>span', 'Get 50% off! Offer ends in', '04/26/2022 03:25 pm'),
(292, 'mannioil', 'https://mannioil.com/', '[data-section-type=\"header-section\"]>div', 'Enjoy our free shipping from Tuscany', '04/26/2022 03:26 pm'),
(293, 'amberwingorganics', 'https://amberwingorganics.com/', '.strapline.in-top-header', 'FREE SHIPPING ON ORDERS OVER $75 \r\n 100% SATISFACTION GUARANTEED!', '04/26/2022 03:27 pm'),
(294, 'nextevo', 'https://nextevo.com/', '.announcement-text', 'free shipping on all orders', '04/26/2022 03:28 pm'),
(295, 'bastiongear', 'https://www.bastiongear.com/', '.top-message', 'Customize your life and equip yourself with premium EDC gear for a fraction of the cost. SHOP NOW!  \r\n FREE SHIPPING ON ALL USA ORDERS OVER $75', '04/26/2022 03:29 pm'),
(296, 'habitual', 'https://habitual.com/', '.free-shipping-info', 'Free Shipping On Orders $30 & Up', '04/26/2022 03:31 pm'),
(297, 'purkratom', 'https://purkratom.com/', '.announcement-bar__message.h5', 'Free Shipping On Orders Over $75', '04/26/2022 03:32 pm'),
(298, 'christiancafe', 'https://www.christiancafe.com/', 'div.intro-message h3:nth-last-child(2)', 'Join A Great Christian Dating Site For Free                     All Christian. All Single.                     Proudly Christian Owned                                           &nbsp;Sign Up for a Free Trial                      &nbsp;Sign                         Up for a Free Trial                                           Meet Christian singles today. Communicate absolutely FREE during your 10 day trial!                                                                  Already a member? Sign in                     here.', '04/27/2022 01:42 pm'),
(299, 'munskin', 'https://munskin.com/', 'div.desktop-navbar-banner', 'Free Shipping with Orders $50+. Buy Now, Pay Later with Klarna.', '04/27/2022 01:44 pm'),
(300, 'highfallshempny', 'https://highfallshempny.com/', 'p.announcement-bar__message', 'FREE SHIPPING ON $25+  |   30-day Money Back Guarantee »', '04/27/2022 01:46 pm'),
(301, 'longevebrands', 'https://www.longevebrands.com/', '.promo-banner__content', 'FREE shipping on crumbles 3-packs and orders $50+ 🚚', '04/27/2022 01:49 pm'),
(302, 'bajavida', 'https://bajavida.com/', '.top-bar-link>span>a', 'Bite into our Beef Sticks with 15% off!', '04/27/2022 01:50 pm'),
(303, 'globein.c', 'https://shop.globein.com/', '.header-message+.header-message', 'FREE SHIPPING ON ORDERS OVER $99 (CONTINENTAL U.S ONLY)', '04/27/2022 01:52 pm'),
(304, 'globein', 'https://shop.globein.com/', '.header-message+.header-message', 'FREE SHIPPING ON ORDERS OVER $99 (CONTINENTAL U.S ONLY)', '04/27/2022 02:04 pm'),
(305, 'cannablissorganic', 'https://cannablissorganic.com/', '.announcement-text', 'free shipping & returns on all US orders', '04/27/2022 02:06 pm'),
(306, 'shopzimba', 'https://shopzimba.com/', '.announcement-bar__content', 'FREE SHIPPING ON U.S. ORDERS $50+', '04/27/2022 02:07 pm'),
(307, 'turkishtowelcompany', 'https://turkishtowelcompany.com/', '.notice-bar>p', '50% off all tablecloth sets!', '04/27/2022 02:09 pm'),
(308, 'nexwear', 'https://nexwear.com/', '.header-promotion-text', 'Get premium products delivered straight to your door! Over 5,000,000 products sold nationwide. FREE shipping over $50!Learn more', '04/27/2022 02:10 pm'),
(309, 'bourbonandboweties', 'https://www.bourbonandboweties.com/', '.free-ship', 'FREE STANDARD SHIPPING ON ORDERS OVER $75 *US ONLY*', '04/27/2022 02:14 pm'),
(310, 'lesbelles', 'https://lesbelles.co/', 'p.AnnouncementBar__Content>a', 'Free shipping on domestic orders above $60.', '04/27/2022 02:21 pm'),
(311, 'wildlygoods', 'https://wildlygoods.com/', 'div.tt-top-panel div.tt-description', 'FREE U.S. SHIPPING AT $40', '04/27/2022 02:22 pm'),
(312, 'offcourt', 'https://offcourt.com/', 'p.announcement-bar__message', 'Shipping to US + CAD --- Free US Shipping > $25', '04/27/2022 02:26 pm'),
(313, 'eccobella', 'https://eccobella.com/', 'div.top-header div.container>div', 'FREE SHIPPING ON ALL CONTINENTAL US $75 + ORDERS', '04/27/2022 02:26 pm'),
(314, 'oodsciencebeauty', 'http://goodsciencebeauty.com/', 'section.announcement span', 'FREE SHIPPING and MONEY BACK GUARANTEE', '04/27/2022 02:27 pm'),
(315, 'goodsciencebeauty', 'https://goodsciencebeauty.com/', 'section.announcement span', 'FREE SHIPPING and MONEY BACK GUARANTEE', '04/27/2022 02:28 pm'),
(316, 'enerhealthbotanicals', 'https://enerhealthbotanicals.com/', 'p.announcement-bar__message', 'Save $10 Over $75 w/ Code: SAVE10', '04/27/2022 02:28 pm'),
(317, 'bobeau', 'https://bobeau.com/', 'a.promo--link', 'FREE GROUND SHIPPING ON ALL ORDERS                        |                         NO CODE REQUIRED', '04/27/2022 02:30 pm'),
(318, 'health-ade', 'https://health-ade.com/', '.pencil__wrapper>.desktop', 'FREE SHIPPING ON ALL ORDERS!', '04/29/2022 11:55 am'),
(319, 'reelpaper', 'https://reelpaper.com/', '.announcement-bar p', 'free expedited shipping on all orders', '04/29/2022 12:00 pm'),
(320, 'truhair', 'https://truhair.com/', '.announcement__text', 'Free Shipping over $50', '04/29/2022 12:09 pm'),
(321, 'joylot', 'https://www.joylot.com/', '.alert-dismissible>p', '&nbsp;Free&nbsp;JoyLot Rapid&trade;&nbsp;1-2&nbsp;Day&nbsp;Shipping and FREE Returns on Selected Items.  details', '04/29/2022 12:16 pm'),
(322, 'skinnytan', 'https://www.skinnytan.com/', '.announcement--text', '🎁 FREE GIFT at Checkout 🎁', '04/29/2022 12:17 pm'),
(323, 'yaasa', 'https://yaasa.com/', '.header-infobar p', 'Free shipping + returns on all orders in the contiguous USA.', '04/29/2022 12:18 pm'),
(324, 'simplyorganicbamboo', 'https://simplyorganicbamboo.com/', '.announcement-link-text', 'Free Throw Blanket On Orders $300+', '04/29/2022 12:22 pm'),
(325, 'verveculture', 'https://verveculture.com/', '.promo--link', 'FREE U.S* SHIPPING                        |                         for a limited time only                      </a>            </aside>                                                                                                                                                                                                                                                    Menu                                             	 	Instagram  	Pinterest  	Facebook  	 	YouTube  	 	 	 	                                                                                                                                                                                                                                          Registry                                                       My Account                                                                                 Search                                                                                                  Cart                  ', '04/29/2022 12:24 pm'),
(326, 'orgain', 'https://orgain.com/', '.preheader__content-text', '25% off first Subscribe & Save orders!', '04/29/2022 12:26 pm'),
(327, 'brodo', 'https://www.brodo.com/', '.top-bar__text', 'Subscribe &amp; save up to 15% per order!', '04/29/2022 01:50 pm'),
(328, 'veldskoenshoes', 'https://www.veldskoenshoes.com/', '.promo-banner__content', 'We have the perfect gift for mom order by 4/27 for delivery by 5/8 Shop Now', '04/29/2022 01:59 pm'),
(329, 'cerusgear', 'https://cerusgear.com/', '.shipping-bar-text', 'WE PAY SHIPPING ON ORDERS OVER                                                                                             $50.00                                                                                            &nbsp', '04/29/2022 02:00 pm'),
(330, 'bluecoolers', 'https://bluecoolers.com/', '.notification-bar__message', 'FREE SHIPPING ON ALL NEW 3.0 COOLERS!', '04/29/2022 02:01 pm'),
(331, 'morebeds', 'http://amorebeds.com/', '.l-subheader-cell.at_center', 'Rest easy with 20% OFF any mattress and up to 2 FREE Pillows.\n\nExpires 04/29/2022 at 11:59 pm CST. Discount automatically applied at checkout. Cannot be combined with other offers', '04/29/2022 02:04 pm'),
(332, 'onzie', 'https://www.onzie.com/', '.announcement__text', '24 HOURS ONLY - $30 THURSDAY IS HAPPENING NOW! Free shipping on U.S. orders over $99 and Intl. Orders over $250', '04/29/2022 02:07 pm'),
(333, 'petprosupplyco', 'https://www.petprosupplyco.com/', '.headerTwo a', '&nbsp; Free Shipping >$499', '04/29/2022 02:08 pm'),
(334, 'wowskinscience', 'https://wowskinscience.com/', '.top-message span', 'Free Shipping on $49+ Orders', '04/29/2022 02:10 pm'),
(335, 'smartforlife', 'https://www.smartforlife.com/', '.notification-bar__message', 'FREE Shipping on Purchases of $45+', '04/29/2022 02:14 pm'),
(336, 'lookoptic', 'https://www.lookoptic.com/', '.announcement-bar__message.h5', 'MOTHER&#39;S DAY SALE 22% OFF 🌸 CODE: MOM22', '04/29/2022 02:32 pm'),
(337, 'americanhempoil', 'https://americanhempoil.net/', '.elementor-column+.elementor-column p.elementor-heading-title', 'BUY 2, GET 1 FREE. MIX &amp; MATCH CODE: NOSTRESS', '04/29/2022 02:33 pm'),
(338, 'halolife', 'https://halolife.io/', '.promo_banner__content', 'Buy any TWO Masks at Regular Price and get ONE FREE With Code: SHARETHELOVE', '04/29/2022 02:37 pm'),
(339, 'casadesante', 'https://casadesante.com/', '.navbar-striptext', 'BUY NOW PAY LATER WITH SHOP PAY. 10% OFF 1ST ORDER WITH CODE FIRST', '04/29/2022 02:38 pm'),
(340, 'instyler', 'https://www.instyler.com/', '.newsletter-container>p', 'Join our newsletter for 15% off your first order', '04/29/2022 02:41 pm'),
(341, 'lureessentials', 'https://lureessentials.com/', '.promo_banner__content', 'Free US Domestic Shipping on Orders Over $75', '04/29/2022 02:43 pm'),
(342, 'scoutalarm', 'https://www.scoutalarm.com/', 'img+img+span+span', 'Orders $200+ Ship Free', '04/29/2022 02:45 pm'),
(343, 'jackiemackdesigns', 'https://www.jackiemackdesigns.com/', '.afpromobar_text', '20% off Selected Styles. USE CODE: SAVE20 Shop Now', '04/29/2022 02:47 pm'),
(344, 'monsterbass', 'https://monsterbass.com/', '.announcement__text', 'Buy a 3 mo. plan & get a 4th box free - use code B3G4', '04/29/2022 02:48 pm'),
(345, 'getsunflow', 'https://getsunflow.com/', '.AnnouncementBar__Content', 'free fedex ground shipping 🚛 in the continental us on orders of $150 or more', '04/29/2022 02:50 pm'),
(346, 'barse', 'https://www.barse.com/', '.announcement-text', 'Weve Got You Covered with FREE Shipping and FREE Returns! Click here to join our email list for 20% OFF your first order', '04/29/2022 02:59 pm'),
(347, 'intotheam', 'https://www.intotheam.com/', '.header div.custom_countdown_timer>a', '30% OFF CLEARANCE! SHOP $3.95 TEES →', '04/29/2022 03:00 pm'),
(348, 'protectly', 'https://www.protectly.co/', '.top-bar-message>p', 'Abbott COVID-19 Test Kits Available | Free Shipping on orders over $60+', '04/29/2022 03:02 pm');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=349;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
