-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 22 2024 г., 08:36
-- Версия сервера: 10.5.17-MariaDB
-- Версия PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `gleaming_сlean`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Applications`
--

CREATE TABLE `Applications` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Applications`
--

INSERT INTO `Applications` (`id`, `name`, `surname`, `lastName`, `phone`, `createdAt`, `updatedAt`) VALUES
(1, 'вася', 'пупкин', 'пупкович', '791991234323', '2024-02-22 08:05:59', '2024-02-22 08:05:59'),
(2, NULL, '', NULL, '', '2024-02-22 05:32:06', '2024-02-22 05:32:06');

-- --------------------------------------------------------

--
-- Структура таблицы `Categories`
--

CREATE TABLE `Categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Categories`
--

INSERT INTO `Categories` (`id`, `title`, `createdAt`, `updatedAt`) VALUES
(2, 'Мебель', '2024-02-09 10:07:53', '2024-02-09 10:07:53'),
(3, 'Диваны', '2024-02-09 10:07:53', '2024-02-09 10:07:53'),
(4, 'Шторы', '2024-02-09 10:07:53', '2024-02-09 10:07:53'),
(5, 'Ковры', '2024-02-09 10:07:53', '2024-02-09 10:07:53'),
(6, 'Одежда', '2024-02-09 10:07:53', '2024-02-09 10:07:53');

-- --------------------------------------------------------

--
-- Структура таблицы `Objects`
--

CREATE TABLE `Objects` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `bonus` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Objects`
--

INSERT INTO `Objects` (`id`, `name`, `image`, `description`, `price`, `createdAt`, `updatedAt`, `bonus`) VALUES
(1, 'Диван прямой', 'https://мебельная-фабрика-имени-бадаева.рф/d/divany_v_gostinuyu.jpg', 'Ваш диван заслуживает только лучшего ухода! Наша услуга по химчистке дивана обеспечивает не только безупречную чистоту, но и сохраняет его оригинальный вид на долгие годы. ', 1300, '2024-02-09 12:12:03', '2024-02-09 12:12:03', NULL),
(2, 'Шкаф купе', 'https://mebelkakmebel.ru/assets/images/products/12953/dveri-kupe-ritaldi.jpg', 'Шкаф-купе - не только функциональная часть вашего интерьера, но и стильное дополнение, которое может преобразить ваше пространство. Наша услуга по обновлению и индивидуальной настройке шкафов-купе поможет вам максимально использовать пространство и создать уют и порядок в вашем доме.', 3000, '2024-02-09 12:12:03', '2024-02-09 12:12:03', NULL),
(3, 'Кресло', 'https://dms-spb.ru/img/goods/img1/784pojkdalocq57ujhhi3rc171i7ryok9c03048191d182312dc6914794abc36c34e.webp', 'Ваше кресло также заслуживает особого внимания и заботы! Наша услуга по химчистке кресел обеспечивает глубокое очищение и охрану красоты вашей мягкой мебели.', 1500, '2024-02-09 12:12:03', '2024-02-09 12:12:03', NULL),
(4, 'Пуфики', 'https://russianstartuprating.ru/wp-content/uploads/2017/04/1124.jpeg', 'Пуфики - удобные и стильные элементы мебели, которые могут добавить уют и функциональность в любое помещение. Наша услуга по уходу и обновлению пуфиков поможет вам сохранить их привлекательный внешний вид и комфорт.', 1300, '2024-02-09 12:12:03', '2024-02-09 12:12:03', NULL),
(5, 'Диван прямой', 'https://мебельная-фабрика-имени-бадаева.рф/d/divany_v_gostinuyu.jpg', 'Ваш диван заслуживает только лучшего ухода! Наша услуга по химчистке дивана обеспечивает не только безупречную чистоту, но и сохраняет его оригинальный вид на долгие годы. ', 1300, '2024-02-09 12:12:03', '2024-02-09 12:12:03', NULL),
(6, 'Шкаф купе', 'https://mebelkakmebel.ru/assets/images/products/12953/dveri-kupe-ritaldi.jpg', 'Шкаф-купе - не только функциональная часть вашего интерьера, но и стильное дополнение, которое может преобразить ваше пространство. Наша услуга по обновлению и индивидуальной настройке шкафов-купе поможет вам максимально использовать пространство и создать уют и порядок в вашем доме.', 3000, '2024-02-09 12:12:03', '2024-02-09 12:12:03', NULL),
(7, 'Кресло', 'https://dms-spb.ru/img/goods/img1/784pojkdalocq57ujhhi3rc171i7ryok9c03048191d182312dc6914794abc36c34e.webp', 'Ваше кресло также заслуживает особого внимания и заботы! Наша услуга по химчистке кресел обеспечивает глубокое очищение и охрану красоты вашей мягкой мебели.', 1500, '2024-02-09 12:12:03', '2024-02-09 12:12:03', NULL),
(8, 'Ковер/ковролин', 'https://avatars.mds.yandex.net/get-mpic/5252557/img_id8092893060052541014.jpeg/orig', 'Ваши ковры – это не только элемент декора, но и место, где уют и комфорт встречаются. Наша услуга по химчистке ковров поможет сохранить их идеальный вид и обеспечит чистоту в вашем доме.', 1300, '2024-02-09 12:12:03', '2024-02-09 12:12:03', NULL),
(9, 'Диван прямой', 'https://мебельная-фабрика-имени-бадаева.рф/d/divany_v_gostinuyu.jpg', 'Ваш диван заслуживает только лучшего ухода! Наша услуга по химчистке дивана обеспечивает не только безупречную чистоту, но и сохраняет его оригинальный вид на долгие годы. ', 1300, '2024-02-09 12:12:03', '2024-02-09 12:12:03', NULL),
(10, 'Шкаф купе', 'https://mebelkakmebel.ru/assets/images/products/12953/dveri-kupe-ritaldi.jpg', 'Шкаф-купе - не только функциональная часть вашего интерьера, но и стильное дополнение, которое может преобразить ваше пространство. Наша услуга по обновлению и индивидуальной настройке шкафов-купе поможет вам максимально использовать пространство и создать уют и порядок в вашем доме.', 3000, '2024-02-09 12:12:03', '2024-02-09 12:12:03', NULL),
(11, 'Кресло', 'https://dms-spb.ru/img/goods/img1/784pojkdalocq57ujhhi3rc171i7ryok9c03048191d182312dc6914794abc36c34e.webp', 'Ваше кресло также заслуживает особого внимания и заботы! Наша услуга по химчистке кресел обеспечивает глубокое очищение и охрану красоты вашей мягкой мебели.', 1500, '2024-02-09 12:12:03', '2024-02-09 12:12:03', NULL),
(12, 'Пуфики', 'https://russianstartuprating.ru/wp-content/uploads/2017/04/1124.jpeg', 'Пуфики - удобные и стильные элементы мебели, которые могут добавить уют и функциональность в любое помещение. Наша услуга по уходу и обновлению пуфиков поможет вам сохранить их привлекательный внешний вид и комфорт.', 1300, '2024-02-09 12:12:03', '2024-02-09 12:12:03', NULL),
(13, 'Диван прямой', 'https://мебельная-фабрика-имени-бадаева.рф/d/divany_v_gostinuyu.jpg', 'Ваш диван заслуживает только лучшего ухода! Наша услуга по химчистке дивана обеспечивает не только безупречную чистоту, но и сохраняет его оригинальный вид на долгие годы. ', 1300, '2024-02-09 12:12:03', '2024-02-09 12:12:03', NULL),
(14, 'Шкаф купе', 'https://mebelkakmebel.ru/assets/images/products/12953/dveri-kupe-ritaldi.jpg', 'Шкаф-купе - не только функциональная часть вашего интерьера, но и стильное дополнение, которое может преобразить ваше пространство. Наша услуга по обновлению и индивидуальной настройке шкафов-купе поможет вам максимально использовать пространство и создать уют и порядок в вашем доме.', 3000, '2024-02-09 12:12:03', '2024-02-09 12:12:03', NULL),
(15, 'Кресло', 'https://dms-spb.ru/img/goods/img1/784pojkdalocq57ujhhi3rc171i7ryok9c03048191d182312dc6914794abc36c34e.webp', 'Ваше кресло также заслуживает особого внимания и заботы! Наша услуга по химчистке кресел обеспечивает глубокое очищение и охрану красоты вашей мягкой мебели.', 1500, '2024-02-09 12:12:03', '2024-02-09 12:12:03', NULL),
(16, 'Ковер/ковролин', 'https://avatars.mds.yandex.net/get-mpic/5252557/img_id8092893060052541014.jpeg/orig', 'Ваши ковры – это не только элемент декора, но и место, где уют и комфорт встречаются. Наша услуга по химчистке ковров поможет сохранить их идеальный вид и обеспечит чистоту в вашем доме.', 1300, '2024-02-09 12:12:03', '2024-02-09 12:12:03', NULL),
(17, 'Диван прямой', 'https://мебельная-фабрика-имени-бадаева.рф/d/divany_v_gostinuyu.jpg', 'Ваш диван заслуживает только лучшего ухода! Наша услуга по химчистке дивана обеспечивает не только безупречную чистоту, но и сохраняет его оригинальный вид на долгие годы. ', 1300, '2024-02-09 12:12:03', '2024-02-09 12:12:03', NULL),
(18, 'Шкаф купе', 'https://mebelkakmebel.ru/assets/images/products/12953/dveri-kupe-ritaldi.jpg', 'Шкаф-купе - не только функциональная часть вашего интерьера, но и стильное дополнение, которое может преобразить ваше пространство. Наша услуга по обновлению и индивидуальной настройке шкафов-купе поможет вам максимально использовать пространство и создать уют и порядок в вашем доме.', 3000, '2024-02-09 12:12:03', '2024-02-09 12:12:03', NULL),
(19, 'Кресло', 'https://dms-spb.ru/img/goods/img1/784pojkdalocq57ujhhi3rc171i7ryok9c03048191d182312dc6914794abc36c34e.webp', 'Ваше кресло также заслуживает особого внимания и заботы! Наша услуга по химчистке кресел обеспечивает глубокое очищение и охрану красоты вашей мягкой мебели.', 1500, '2024-02-09 12:12:03', '2024-02-09 12:12:03', NULL),
(20, 'Пуфики', 'https://russianstartuprating.ru/wp-content/uploads/2017/04/1124.jpeg', 'Пуфики - удобные и стильные элементы мебели, которые могут добавить уют и функциональность в любое помещение. Наша услуга по уходу и обновлению пуфиков поможет вам сохранить их привлекательный внешний вид и комфорт.', 1300, '2024-02-09 12:12:03', '2024-02-09 12:12:03', NULL),
(21, 'Диван прямой', 'https://мебельная-фабрика-имени-бадаева.рф/d/divany_v_gostinuyu.jpg', 'Ваш диван заслуживает только лучшего ухода! Наша услуга по химчистке дивана обеспечивает не только безупречную чистоту, но и сохраняет его оригинальный вид на долгие годы. ', 1300, '2024-02-09 12:12:03', '2024-02-09 12:12:03', NULL),
(22, 'Шкаф купе', 'https://mebelkakmebel.ru/assets/images/products/12953/dveri-kupe-ritaldi.jpg', 'Шкаф-купе - не только функциональная часть вашего интерьера, но и стильное дополнение, которое может преобразить ваше пространство. Наша услуга по обновлению и индивидуальной настройке шкафов-купе поможет вам максимально использовать пространство и создать уют и порядок в вашем доме.', 3000, '2024-02-09 12:12:03', '2024-02-09 12:12:03', NULL),
(23, 'Кресло', 'https://dms-spb.ru/img/goods/img1/784pojkdalocq57ujhhi3rc171i7ryok9c03048191d182312dc6914794abc36c34e.webp', 'Ваше кресло также заслуживает особого внимания и заботы! Наша услуга по химчистке кресел обеспечивает глубокое очищение и охрану красоты вашей мягкой мебели.', 1500, '2024-02-09 12:12:03', '2024-02-09 12:12:03', NULL),
(24, 'Ковер/ковролин', 'https://avatars.mds.yandex.net/get-mpic/5252557/img_id8092893060052541014.jpeg/orig', 'Ваши ковры – это не только элемент декора, но и место, где уют и комфорт встречаются. Наша услуга по химчистке ковров поможет сохранить их идеальный вид и обеспечит чистоту в вашем доме.', 1300, '2024-02-09 12:12:03', '2024-02-09 12:12:03', NULL),
(25, 'Диван прямой', 'https://мебельная-фабрика-имени-бадаева.рф/d/divany_v_gostinuyu.jpg', 'Ваш диван заслуживает только лучшего ухода! Наша услуга по химчистке дивана обеспечивает не только безупречную чистоту, но и сохраняет его оригинальный вид на долгие годы. ', 1300, '2024-02-09 12:12:03', '2024-02-09 12:12:03', NULL),
(26, 'Шкаф купе', 'https://mebelkakmebel.ru/assets/images/products/12953/dveri-kupe-ritaldi.jpg', 'Шкаф-купе - не только функциональная часть вашего интерьера, но и стильное дополнение, которое может преобразить ваше пространство. Наша услуга по обновлению и индивидуальной настройке шкафов-купе поможет вам максимально использовать пространство и создать уют и порядок в вашем доме.', 3000, '2024-02-09 12:12:03', '2024-02-09 12:12:03', NULL),
(27, 'Кресло', 'https://dms-spb.ru/img/goods/img1/784pojkdalocq57ujhhi3rc171i7ryok9c03048191d182312dc6914794abc36c34e.webp', 'Ваше кресло также заслуживает особого внимания и заботы! Наша услуга по химчистке кресел обеспечивает глубокое очищение и охрану красоты вашей мягкой мебели.', 1500, '2024-02-09 12:12:03', '2024-02-09 12:12:03', NULL),
(28, 'Пуфики', 'https://russianstartuprating.ru/wp-content/uploads/2017/04/1124.jpeg', 'Пуфики - удобные и стильные элементы мебели, которые могут добавить уют и функциональность в любое помещение. Наша услуга по уходу и обновлению пуфиков поможет вам сохранить их привлекательный внешний вид и комфорт.', 1300, '2024-02-09 12:12:03', '2024-02-09 12:12:03', NULL),
(29, 'Диван прямой', 'https://мебельная-фабрика-имени-бадаева.рф/d/divany_v_gostinuyu.jpg', 'Ваш диван заслуживает только лучшего ухода! Наша услуга по химчистке дивана обеспечивает не только безупречную чистоту, но и сохраняет его оригинальный вид на долгие годы. ', 1300, '2024-02-09 12:12:03', '2024-02-09 12:12:03', NULL),
(30, 'Шкаф купе', 'https://mebelkakmebel.ru/assets/images/products/12953/dveri-kupe-ritaldi.jpg', 'Шкаф-купе - не только функциональная часть вашего интерьера, но и стильное дополнение, которое может преобразить ваше пространство. Наша услуга по обновлению и индивидуальной настройке шкафов-купе поможет вам максимально использовать пространство и создать уют и порядок в вашем доме.', 3000, '2024-02-09 12:12:03', '2024-02-09 12:12:03', NULL),
(31, 'Автошкаф', 'https://mebelkakmebel.ru/assets/images/products/16338/raspashnoy-shkaf-pinofrankeado.jpg', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus\r\n        \r\n          ', 1500, '2024-02-09 12:12:03', '2024-02-09 12:12:03', NULL),
(32, 'Ковер/ковролин', 'https://avatars.mds.yandex.net/get-mpic/5252557/img_id8092893060052541014.jpeg/orig', 'Ваши ковры – это не только элемент декора, но и место, где уют и комфорт встречаются. Наша услуга по химчистке ковров поможет сохранить их идеальный вид и обеспечит чистоту в вашем доме.', 1300, '2024-02-09 12:12:03', '2024-02-09 12:12:03', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `Users`
--

CREATE TABLE `Users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `bonusBalance` int(11) DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Users`
--

INSERT INTO `Users` (`id`, `name`, `lastName`, `phone`, `address`, `createdAt`, `updatedAt`, `bonusBalance`, `login`, `password`) VALUES
(2, 'testName', 'testLastName', '7912312312313', 'testAddress', '2024-02-07 09:08:58', '2024-02-07 09:08:58', 1342, 'user', 'foo'),
(3, 'testName', 'testLastName', '7912312312313', 'testAddress', '2024-02-07 09:08:58', '2024-02-07 09:08:58', 20, 'log', 'foo');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Applications`
--
ALTER TABLE `Applications`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Categories`
--
ALTER TABLE `Categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Objects`
--
ALTER TABLE `Objects`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Applications`
--
ALTER TABLE `Applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `Categories`
--
ALTER TABLE `Categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `Objects`
--
ALTER TABLE `Objects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT для таблицы `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
