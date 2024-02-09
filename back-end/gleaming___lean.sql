-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 09 2024 г., 15:11
-- Версия сервера: 8.0.30
-- Версия PHP: 7.2.34

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
-- Структура таблицы `Categories`
--

CREATE TABLE `Categories` (
  `id` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

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
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text,
  `price` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `Objects`
--

INSERT INTO `Objects` (`id`, `name`, `image`, `description`, `price`, `createdAt`, `updatedAt`) VALUES
(1, 'Диван прямой', 'https://xn--80apgpaqhb4bg.xn--p1ai/wp-content/uploads/2023/06/prjamoi-divan.png', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus\r\n        \r\n          ', 1300, '2024-02-09 12:12:03', '2024-02-09 12:12:03'),
(2, 'Шкаф купе', 'https://xn--80apgpaqhb4bg.xn--p1ai/wp-content/uploads/2023/06/prjamoi-divan.png', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus\r\n          accusantium beatae dicta dolore ducimus earum, error impedit ipsum\r\n          iure laboriosam molestiae nam nesciunt nostrum, pariatur recusandae\r\n          saepe sint vel velit? Lorem ipsum dolor sit amet, consectetur\r\n          adipisicing elit. Accusamus accusantium beatae dicta dolore ducimus\r\n          earum, error impedit ipsum iure laboriosam molestiae nam nesciunt\r\n          nostrum, pariatur recusandae saepe sint vel velit?\r\n        \r\n          ', 3000, '2024-02-09 12:12:03', '2024-02-09 12:12:03'),
(3, 'Кресло', 'https://xn--80apgpaqhb4bg.xn--p1ai/wp-content/uploads/2023/06/kreslo.jpg', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus\r\n        \r\n          ', 1500, '2024-02-09 12:12:03', '2024-02-09 12:12:03'),
(4, 'Пуфики', 'https://xn--80apgpaqhb4bg.xn--p1ai/wp-content/uploads/2023/06/puf.jpg', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus\r\n          accusantium beatae dicta dolore ducimus earum, error impedit ipsum\r\n          iure laboriosam molestiae nam nesciunt nostrum, pariatur recusandae\r\n          saepe sint vel velit? Lorem ipsum dolor sit amet, consectetur\r\n          adipisicing elit. Accusamus accusantium beatae dicta dolore ducimus\r\n          earum, error impedit ipsum iure laboriosam molestiae nam nesciunt\r\n          nostrum, pariatur recusandae saepe sint vel velit?\r\n        \r\n          ', 1300, '2024-02-09 12:12:03', '2024-02-09 12:12:03'),
(5, 'Диван прямой', 'https://xn--80apgpaqhb4bg.xn--p1ai/wp-content/uploads/2023/06/prjamoi-divan.png', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus\r\n        \r\n          ', 1300, '2024-02-09 12:12:03', '2024-02-09 12:12:03'),
(6, 'Шкаф купе', 'https://xn--80apgpaqhb4bg.xn--p1ai/wp-content/uploads/2023/06/prjamoi-divan.png', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus\r\n          accusantium beatae dicta dolore ducimus earum, error impedit ipsum\r\n          iure laboriosam molestiae nam nesciunt nostrum, pariatur recusandae\r\n          saepe sint vel velit? Lorem ipsum dolor sit amet, consectetur\r\n          adipisicing elit. Accusamus accusantium beatae dicta dolore ducimus\r\n          earum, error impedit ipsum iure laboriosam molestiae nam nesciunt\r\n          nostrum, pariatur recusandae saepe sint vel velit?\r\n        \r\n          ', 3000, '2024-02-09 12:12:03', '2024-02-09 12:12:03'),
(7, 'Кресло', 'https://xn--80apgpaqhb4bg.xn--p1ai/wp-content/uploads/2023/06/kreslo.jpg', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus\r\n        \r\n          ', 1500, '2024-02-09 12:12:03', '2024-02-09 12:12:03'),
(8, 'Ковер/ковролин', 'https://xn--80apgpaqhb4bg.xn--p1ai/wp-content/uploads/2023/06/prjamoi-divan.png', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus\r\n          accusantium beatae dicta dolore ducimus earum, error impedit ipsum\r\n          iure laboriosam molestiae nam nesciunt nostrum, pariatur recusandae\r\n          saepe sint vel velit? Lorem ipsum dolor sit amet, consectetur\r\n          adipisicing elit. Accusamus accusantium beatae dicta dolore ducimus\r\n          earum, error impedit ipsum iure laboriosam molestiae nam nesciunt\r\n          nostrum, pariatur recusandae saepe sint vel velit?\r\n        \r\n          ', 1300, '2024-02-09 12:12:03', '2024-02-09 12:12:03'),
(9, 'Диван прямой', 'https://xn--80apgpaqhb4bg.xn--p1ai/wp-content/uploads/2023/06/prjamoi-divan.png', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus\r\n        \r\n          ', 1300, '2024-02-09 12:12:03', '2024-02-09 12:12:03'),
(10, 'Шкаф купе', 'https://xn--80apgpaqhb4bg.xn--p1ai/wp-content/uploads/2023/06/prjamoi-divan.png', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus\r\n          accusantium beatae dicta dolore ducimus earum, error impedit ipsum\r\n          iure laboriosam molestiae nam nesciunt nostrum, pariatur recusandae\r\n          saepe sint vel velit? Lorem ipsum dolor sit amet, consectetur\r\n          adipisicing elit. Accusamus accusantium beatae dicta dolore ducimus\r\n          earum, error impedit ipsum iure laboriosam molestiae nam nesciunt\r\n          nostrum, pariatur recusandae saepe sint vel velit?\r\n        \r\n          ', 3000, '2024-02-09 12:12:03', '2024-02-09 12:12:03'),
(11, 'Кресло', 'https://xn--80apgpaqhb4bg.xn--p1ai/wp-content/uploads/2023/06/kreslo.jpg', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus\r\n        \r\n          ', 1500, '2024-02-09 12:12:03', '2024-02-09 12:12:03'),
(12, 'Пуфики', 'https://xn--80apgpaqhb4bg.xn--p1ai/wp-content/uploads/2023/06/prjamoi-divan.png', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus\r\n          accusantium beatae dicta dolore ducimus earum, error impedit ipsum\r\n          iure laboriosam molestiae nam nesciunt nostrum, pariatur recusandae\r\n          saepe sint vel velit? Lorem ipsum dolor sit amet, consectetur\r\n          adipisicing elit. Accusamus accusantium beatae dicta dolore ducimus\r\n          earum, error impedit ipsum iure laboriosam molestiae nam nesciunt\r\n          nostrum, pariatur recusandae saepe sint vel velit?\r\n        \r\n          ', 1300, '2024-02-09 12:12:03', '2024-02-09 12:12:03'),
(13, 'Диван прямой', 'https://xn--80apgpaqhb4bg.xn--p1ai/wp-content/uploads/2023/06/prjamoi-divan.png', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus\r\n        \r\n          ', 1300, '2024-02-09 12:12:03', '2024-02-09 12:12:03'),
(14, 'Шкаф купе', 'https://xn--80apgpaqhb4bg.xn--p1ai/wp-content/uploads/2023/06/prjamoi-divan.png', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus\r\n          accusantium beatae dicta dolore ducimus earum, error impedit ipsum\r\n          iure laboriosam molestiae nam nesciunt nostrum, pariatur recusandae\r\n          saepe sint vel velit? Lorem ipsum dolor sit amet, consectetur\r\n          adipisicing elit. Accusamus accusantium beatae dicta dolore ducimus\r\n          earum, error impedit ipsum iure laboriosam molestiae nam nesciunt\r\n          nostrum, pariatur recusandae saepe sint vel velit?\r\n        \r\n          ', 3000, '2024-02-09 12:12:03', '2024-02-09 12:12:03'),
(15, 'Кресло', 'https://xn--80apgpaqhb4bg.xn--p1ai/wp-content/uploads/2023/06/kreslo.jpg', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus\r\n        \r\n          ', 1500, '2024-02-09 12:12:03', '2024-02-09 12:12:03'),
(16, 'Ковер/ковролин', 'https://xn--80apgpaqhb4bg.xn--p1ai/wp-content/uploads/2023/06/prjamoi-divan.png', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus\r\n          accusantium beatae dicta dolore ducimus earum, error impedit ipsum\r\n          iure laboriosam molestiae nam nesciunt nostrum, pariatur recusandae\r\n          saepe sint vel velit? Lorem ipsum dolor sit amet, consectetur\r\n          adipisicing elit. Accusamus accusantium beatae dicta dolore ducimus\r\n          earum, error impedit ipsum iure laboriosam molestiae nam nesciunt\r\n          nostrum, pariatur recusandae saepe sint vel velit?\r\n        \r\n          ', 1300, '2024-02-09 12:12:03', '2024-02-09 12:12:03'),
(17, 'Диван прямой', 'https://xn--80apgpaqhb4bg.xn--p1ai/wp-content/uploads/2023/06/prjamoi-divan.png', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus\r\n        \r\n          ', 1300, '2024-02-09 12:12:03', '2024-02-09 12:12:03'),
(18, 'Шкаф купе', 'https://xn--80apgpaqhb4bg.xn--p1ai/wp-content/uploads/2023/06/prjamoi-divan.png', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus\r\n          accusantium beatae dicta dolore ducimus earum, error impedit ipsum\r\n          iure laboriosam molestiae nam nesciunt nostrum, pariatur recusandae\r\n          saepe sint vel velit? Lorem ipsum dolor sit amet, consectetur\r\n          adipisicing elit. Accusamus accusantium beatae dicta dolore ducimus\r\n          earum, error impedit ipsum iure laboriosam molestiae nam nesciunt\r\n          nostrum, pariatur recusandae saepe sint vel velit?\r\n        \r\n          ', 3000, '2024-02-09 12:12:03', '2024-02-09 12:12:03'),
(19, 'Кресло', 'https://xn--80apgpaqhb4bg.xn--p1ai/wp-content/uploads/2023/06/kreslo.jpg', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus\r\n        \r\n          ', 1500, '2024-02-09 12:12:03', '2024-02-09 12:12:03'),
(20, 'Пуфики', 'https://xn--80apgpaqhb4bg.xn--p1ai/wp-content/uploads/2023/06/prjamoi-divan.png', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus\r\n          accusantium beatae dicta dolore ducimus earum, error impedit ipsum\r\n          iure laboriosam molestiae nam nesciunt nostrum, pariatur recusandae\r\n          saepe sint vel velit? Lorem ipsum dolor sit amet, consectetur\r\n          adipisicing elit. Accusamus accusantium beatae dicta dolore ducimus\r\n          earum, error impedit ipsum iure laboriosam molestiae nam nesciunt\r\n          nostrum, pariatur recusandae saepe sint vel velit?\r\n        \r\n          ', 1300, '2024-02-09 12:12:03', '2024-02-09 12:12:03'),
(21, 'Диван прямой', 'https://xn--80apgpaqhb4bg.xn--p1ai/wp-content/uploads/2023/06/prjamoi-divan.png', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus\r\n        \r\n          ', 1300, '2024-02-09 12:12:03', '2024-02-09 12:12:03'),
(22, 'Шкаф купе', 'https://xn--80apgpaqhb4bg.xn--p1ai/wp-content/uploads/2023/06/prjamoi-divan.png', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus\r\n          accusantium beatae dicta dolore ducimus earum, error impedit ipsum\r\n          iure laboriosam molestiae nam nesciunt nostrum, pariatur recusandae\r\n          saepe sint vel velit? Lorem ipsum dolor sit amet, consectetur\r\n          adipisicing elit. Accusamus accusantium beatae dicta dolore ducimus\r\n          earum, error impedit ipsum iure laboriosam molestiae nam nesciunt\r\n          nostrum, pariatur recusandae saepe sint vel velit?\r\n        \r\n          ', 3000, '2024-02-09 12:12:03', '2024-02-09 12:12:03'),
(23, 'Кресло', 'https://xn--80apgpaqhb4bg.xn--p1ai/wp-content/uploads/2023/06/kreslo.jpg', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus\r\n        \r\n          ', 1500, '2024-02-09 12:12:03', '2024-02-09 12:12:03'),
(24, 'Ковер/ковролин', 'https://xn--80apgpaqhb4bg.xn--p1ai/wp-content/uploads/2023/06/prjamoi-divan.png', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus\r\n          accusantium beatae dicta dolore ducimus earum, error impedit ipsum\r\n          iure laboriosam molestiae nam nesciunt nostrum, pariatur recusandae\r\n          saepe sint vel velit? Lorem ipsum dolor sit amet, consectetur\r\n          adipisicing elit. Accusamus accusantium beatae dicta dolore ducimus\r\n          earum, error impedit ipsum iure laboriosam molestiae nam nesciunt\r\n          nostrum, pariatur recusandae saepe sint vel velit?\r\n        \r\n          ', 1300, '2024-02-09 12:12:03', '2024-02-09 12:12:03'),
(25, 'Диван прямой', 'https://xn--80apgpaqhb4bg.xn--p1ai/wp-content/uploads/2023/06/prjamoi-divan.png', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus\r\n        \r\n          ', 1300, '2024-02-09 12:12:03', '2024-02-09 12:12:03'),
(26, 'Шкаф купе', 'https://xn--80apgpaqhb4bg.xn--p1ai/wp-content/uploads/2023/06/prjamoi-divan.png', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus\r\n          accusantium beatae dicta dolore ducimus earum, error impedit ipsum\r\n          iure laboriosam molestiae nam nesciunt nostrum, pariatur recusandae\r\n          saepe sint vel velit? Lorem ipsum dolor sit amet, consectetur\r\n          adipisicing elit. Accusamus accusantium beatae dicta dolore ducimus\r\n          earum, error impedit ipsum iure laboriosam molestiae nam nesciunt\r\n          nostrum, pariatur recusandae saepe sint vel velit?\r\n        \r\n          ', 3000, '2024-02-09 12:12:03', '2024-02-09 12:12:03'),
(27, 'Кресло', 'https://xn--80apgpaqhb4bg.xn--p1ai/wp-content/uploads/2023/06/kreslo.jpg', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus\r\n        \r\n          ', 1500, '2024-02-09 12:12:03', '2024-02-09 12:12:03'),
(28, 'Пуфики', 'https://xn--80apgpaqhb4bg.xn--p1ai/wp-content/uploads/2023/06/prjamoi-divan.png', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus\r\n          accusantium beatae dicta dolore ducimus earum, error impedit ipsum\r\n          iure laboriosam molestiae nam nesciunt nostrum, pariatur recusandae\r\n          saepe sint vel velit? Lorem ipsum dolor sit amet, consectetur\r\n          adipisicing elit. Accusamus accusantium beatae dicta dolore ducimus\r\n          earum, error impedit ipsum iure laboriosam molestiae nam nesciunt\r\n          nostrum, pariatur recusandae saepe sint vel velit?\r\n        \r\n          ', 1300, '2024-02-09 12:12:03', '2024-02-09 12:12:03'),
(29, 'Диван прямой', 'https://xn--80apgpaqhb4bg.xn--p1ai/wp-content/uploads/2023/06/prjamoi-divan.png', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus\r\n        \r\n          ', 1300, '2024-02-09 12:12:03', '2024-02-09 12:12:03'),
(30, 'Шкаф купе', 'https://xn--80apgpaqhb4bg.xn--p1ai/wp-content/uploads/2023/06/prjamoi-divan.png', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus\r\n          accusantium beatae dicta dolore ducimus earum, error impedit ipsum\r\n          iure laboriosam molestiae nam nesciunt nostrum, pariatur recusandae\r\n          saepe sint vel velit? Lorem ipsum dolor sit amet, consectetur\r\n          adipisicing elit. Accusamus accusantium beatae dicta dolore ducimus\r\n          earum, error impedit ipsum iure laboriosam molestiae nam nesciunt\r\n          nostrum, pariatur recusandae saepe sint vel velit?\r\n        \r\n          ', 3000, '2024-02-09 12:12:03', '2024-02-09 12:12:03'),
(31, 'Автошкаф', 'https://xn--80apgpaqhb4bg.xn--p1ai/wp-content/uploads/2023/06/prjamoi-divan.png', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus\r\n        \r\n          ', 1500, '2024-02-09 12:12:03', '2024-02-09 12:12:03'),
(32, 'Ковер/ковролин', 'https://xn--80apgpaqhb4bg.xn--p1ai/wp-content/uploads/2023/06/prjamoi-divan.png', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus\r\n          accusantium beatae dicta dolore ducimus earum, error impedit ipsum\r\n          iure laboriosam molestiae nam nesciunt nostrum, pariatur recusandae\r\n          saepe sint vel velit? Lorem ipsum dolor sit amet, consectetur\r\n          adipisicing elit. Accusamus accusantium beatae dicta dolore ducimus\r\n          earum, error impedit ipsum iure laboriosam molestiae nam nesciunt\r\n          nostrum, pariatur recusandae saepe sint vel velit?\r\n        \r\n          ', 1300, '2024-02-09 12:12:03', '2024-02-09 12:12:03');

-- --------------------------------------------------------

--
-- Структура таблицы `Users`
--

CREATE TABLE `Users` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `Users`
--

INSERT INTO `Users` (`id`, `name`, `lastName`, `phone`, `address`, `createdAt`, `updatedAt`) VALUES
(2, 'testName', 'testLastName', '7912312312313', 'testAddress', '2024-02-07 09:08:58', '2024-02-07 09:08:58'),
(3, 'testName', 'testLastName', '7912312312313', 'testAddress', '2024-02-07 09:08:58', '2024-02-07 09:08:58');

--
-- Индексы сохранённых таблиц
--

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
-- AUTO_INCREMENT для таблицы `Categories`
--
ALTER TABLE `Categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `Objects`
--
ALTER TABLE `Objects`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT для таблицы `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
