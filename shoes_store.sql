-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Фев 09 2022 г., 09:17
-- Версия сервера: 10.4.22-MariaDB
-- Версия PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `shoes_store`
--

-- --------------------------------------------------------

--
-- Структура таблицы `brands`
--

CREATE TABLE `brands` (
  `idBrands` int(11) NOT NULL,
  `Brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `brands`
--

INSERT INTO `brands` (`idBrands`, `Brand`) VALUES
(0, 'Adidas'),
(1, 'Nike');

-- --------------------------------------------------------

--
-- Структура таблицы `colors`
--

CREATE TABLE `colors` (
  `idColors` int(11) NOT NULL,
  `Color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `colors`
--

INSERT INTO `colors` (`idColors`, `Color`) VALUES
(0, 'Білий'),
(1, 'Чорний'),
(2, 'Синій');

-- --------------------------------------------------------

--
-- Структура таблицы `customers`
--

CREATE TABLE `customers` (
  `idCustomer` int(11) NOT NULL,
  `fName` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lName` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adress_line` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` int(10) DEFAULT NULL,
  `home` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `customers`
--

INSERT INTO `customers` (`idCustomer`, `fName`, `lName`, `email`, `password1`, `phone`, `adress_line`, `city`, `zipcode`, `home`) VALUES
(1, 'Василь', 'Гакман', 'vasiagakman.v.g.40@gmail.com', '12345678', NULL, 'Шевченка', 'Чернівці', 59334, 40),
(2, '[value-2]', '[value-3]', '[value-4]', '[value-5]', '[value-6]', '[value-7]', '[value-8]', 0, 0),
(3, '[value-2]', '[value-3]', '[value-4]', '[value-5]', '[value-6]', '[value-7]', '[value-8]', 0, 0),
(4, '[value-2]', '[value-3]', '[value-4]', '[value-5]', '[value-6]', '[value-7]', '[value-8]', 0, 0),
(5, '[value-2]', '[value-3]', '[value-4]', '[value-5]', '[value-6]', '[value-7]', '[value-8]', 0, 0),
(6, '', '', '', '', '', '', '', 0, 0),
(7, '', '', '', '', '', '', '', 0, 0),
(8, '', '', '', '', '', '', '', 0, 0),
(9, '[value-2]', '[value-3]', '[value-4]', '[value-5]', '[value-6]', '[value-7]', '[value-8]', 0, 0),
(10, '[value-2]', '[value-3]', '[value-4]', '[value-5]', '[value-6]', '[value-7]', '[value-8]', 0, 0),
(11, '[value-2]', '[value-3]', '[value-4]', '[value-5]', '[value-6]', '[value-7]', '[value-8]', 0, 0),
(12, '[value-2]', '[value-3]', '[value-4]', '[value-5]', '[value-6]', '[value-7]', '[value-8]', 0, 0),
(13, '[value-2]', '[value-3]', '[value-4]', '[value-5]', '[value-6]', '[value-7]', '[value-8]', 0, 0),
(14, '1', '[value-3]', '[value-4]', '[value-5]', '[value-6]', '[value-7]', '[value-8]', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `lightnigs`
--

CREATE TABLE `lightnigs` (
  `idLightnings` int(11) NOT NULL,
  `Lightnig` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `lightnigs`
--

INSERT INTO `lightnigs` (`idLightnings`, `Lightnig`) VALUES
(0, 'Шнирки'),
(1, 'Липучка');

-- --------------------------------------------------------

--
-- Структура таблицы `sexs`
--

CREATE TABLE `sexs` (
  `idSexs` int(11) NOT NULL,
  `Sex` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sexs`
--

INSERT INTO `sexs` (`idSexs`, `Sex`) VALUES
(0, 'Чоловічі'),
(1, 'Жіночі');

-- --------------------------------------------------------

--
-- Структура таблицы `shoes`
--

CREATE TABLE `shoes` (
  `idShoes` int(11) NOT NULL,
  `Model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idBrands` int(11) DEFAULT NULL,
  `idSoles` int(11) DEFAULT NULL,
  `idTypes` int(11) DEFAULT NULL,
  `idSexs` int(11) DEFAULT NULL,
  `idColors` int(11) DEFAULT NULL,
  `idLightnigs` int(11) DEFAULT NULL,
  `imgsrc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Price` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `shoes`
--

INSERT INTO `shoes` (`idShoes`, `Model`, `idBrands`, `idSoles`, `idTypes`, `idSexs`, `idColors`, `idLightnigs`, `imgsrc`, `Price`) VALUES
(1, 'model 1', 0, NULL, NULL, NULL, 0, NULL, 'images/airmax.jpg', 80),
(2, 'model 2', 1, NULL, NULL, NULL, NULL, NULL, 'images/ultraboost.jpg', 100),
(3, 'model 3', 1, NULL, NULL, NULL, NULL, NULL, 'images/airmax97.jpg', 220),
(4, 'model 4', 1, NULL, NULL, NULL, NULL, NULL, 'images/ultraboost.jpg', 0),
(5, 'model 5', 1, NULL, NULL, NULL, NULL, NULL, 'images/ultraboost.jpg', 70),
(6, 'model 6', 1, NULL, NULL, NULL, NULL, NULL, 'images/ultraboost.jpg', 0),
(7, 'model 7', 1, NULL, NULL, NULL, NULL, NULL, 'images/ultraboost.jpg', 0),
(8, 'model 6', 1, NULL, NULL, NULL, NULL, NULL, 'images/nmd.jpg', 0),
(23, '..', 0, 0, 0, 0, 0, 0, '.', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `soles`
--

CREATE TABLE `soles` (
  `idSoles` int(11) NOT NULL,
  `Sole` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `soles`
--

INSERT INTO `soles` (`idSoles`, `Sole`) VALUES
(0, 'Поліуретан'),
(1, 'Плоска'),
(2, 'Шкіряна');

-- --------------------------------------------------------

--
-- Структура таблицы `types`
--

CREATE TABLE `types` (
  `idTypes` int(11) NOT NULL,
  `Type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `types`
--

INSERT INTO `types` (`idTypes`, `Type`) VALUES
(0, 'Кросівки'),
(1, 'Кеди');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`idBrands`);

--
-- Индексы таблицы `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`idColors`);

--
-- Индексы таблицы `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`idCustomer`);

--
-- Индексы таблицы `lightnigs`
--
ALTER TABLE `lightnigs`
  ADD PRIMARY KEY (`idLightnings`);

--
-- Индексы таблицы `sexs`
--
ALTER TABLE `sexs`
  ADD PRIMARY KEY (`idSexs`),
  ADD UNIQUE KEY `idSexs` (`idSexs`);

--
-- Индексы таблицы `shoes`
--
ALTER TABLE `shoes`
  ADD PRIMARY KEY (`idShoes`),
  ADD UNIQUE KEY `idShoes` (`idShoes`),
  ADD KEY `idBrands` (`idBrands`),
  ADD KEY `idShoes_2` (`idShoes`),
  ADD KEY `idLightnigs` (`idLightnigs`),
  ADD KEY `idSexs` (`idSexs`),
  ADD KEY `idSoles` (`idSoles`),
  ADD KEY `idTypes` (`idTypes`),
  ADD KEY `idColors` (`idColors`);

--
-- Индексы таблицы `soles`
--
ALTER TABLE `soles`
  ADD PRIMARY KEY (`idSoles`);

--
-- Индексы таблицы `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`idTypes`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `customers`
--
ALTER TABLE `customers`
  MODIFY `idCustomer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `shoes`
--
ALTER TABLE `shoes`
  MODIFY `idShoes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `shoes`
--
ALTER TABLE `shoes`
  ADD CONSTRAINT `shoes_ibfk_1` FOREIGN KEY (`idBrands`) REFERENCES `brands` (`idBrands`),
  ADD CONSTRAINT `shoes_ibfk_3` FOREIGN KEY (`idLightnigs`) REFERENCES `lightnigs` (`idLightnings`),
  ADD CONSTRAINT `shoes_ibfk_4` FOREIGN KEY (`idSexs`) REFERENCES `sexs` (`idSexs`),
  ADD CONSTRAINT `shoes_ibfk_5` FOREIGN KEY (`idSoles`) REFERENCES `soles` (`idSoles`),
  ADD CONSTRAINT `shoes_ibfk_6` FOREIGN KEY (`idTypes`) REFERENCES `types` (`idTypes`),
  ADD CONSTRAINT `shoes_ibfk_7` FOREIGN KEY (`idColors`) REFERENCES `colors` (`idColors`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
