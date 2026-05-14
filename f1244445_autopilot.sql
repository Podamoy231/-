-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 10.0.254.190
-- Время создания: Май 11 2026 г., 11:21
-- Версия сервера: 8.0.37-29
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `f1244445_autopilot`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cars`
--

CREATE TABLE `cars` (
  `id` int UNSIGNED NOT NULL,
  `client_id` int UNSIGNED NOT NULL,
  `make` varchar(60) COLLATE utf8mb3_unicode_ci NOT NULL,
  `model` varchar(60) COLLATE utf8mb3_unicode_ci NOT NULL,
  `year` year NOT NULL,
  `plate` varchar(20) COLLATE utf8mb3_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Дамп данных таблицы `cars`
--

INSERT INTO `cars` (`id`, `client_id`, `make`, `model`, `year`, `plate`) VALUES
(1, 5, 'XCMG', 'Экскаватор', '2016', '-'),
(2, 5, 'Hitachi', 'Экс', '2016', 'ауф222'),
(3, 5, 'Hitachi', '321', '2025', '321'),
(4, 5, 'Volvo', 'Эксоватор', '2003', 'А666МР122');

-- --------------------------------------------------------

--
-- Структура таблицы `notifications`
--

CREATE TABLE `notifications` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `request_id` int UNSIGNED DEFAULT NULL,
  `type` varchar(40) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'info',
  `title` varchar(200) COLLATE utf8mb3_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Дамп данных таблицы `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `request_id`, `type`, `title`, `message`, `is_read`, `created_at`) VALUES
(1, 5, 1, 'new_request', 'Заявка создана', 'Заявка AP-9475 принята. Мы свяжемся с вами.', 1, '2026-04-07 11:41:56'),
(2, 3, 1, 'new_request', 'Новая заявка', 'Поступила заявка AP-9475: XCMG Экскаватор 2016', 0, '2026-04-07 11:41:56'),
(3, 2, 1, 'new_request', 'Новая заявка', 'Поступила заявка AP-9475: XCMG Экскаватор 2016', 0, '2026-04-07 11:41:56'),
(4, 4, 1, 'new_request', 'Новая заявка', 'Клиент создал заявку AP-9475: XCMG Экскаватор', 0, '2026-04-07 11:41:56'),
(5, 2, 1, 'new_request', 'Новая заявка', 'Клиент создал заявку AP-9475: XCMG Экскаватор', 0, '2026-04-07 11:41:56'),
(6, 4, 1, 'storage_ext', 'Хранение продлено', 'По заявке AP-9475 клиент продлил хранение авто до 2026-04-10', 0, '2026-04-07 11:42:06'),
(7, 2, 1, 'storage_ext', 'Хранение продлено', 'По заявке AP-9475 клиент продлил хранение авто до 2026-04-10', 0, '2026-04-07 11:42:06'),
(8, 5, 1, 'status_change', 'Авто принято в сервис', 'Заявка AP-9475: Авто принято в сервис', 1, '2026-04-07 11:43:12'),
(9, 5, 1, 'status_change', 'Начата диагностика', 'Заявка AP-9475: Начата диагностика', 1, '2026-04-07 11:44:19'),
(10, 5, 1, 'status_change', 'Начат ремонт', 'Заявка AP-9475: Начат ремонт', 1, '2026-04-07 11:45:06'),
(11, 5, 1, 'status_change', 'Ваш автомобиль готов к выдаче!', 'Заявка AP-9475: Ваш автомобиль готов к выдаче!', 1, '2026-04-07 11:45:24'),
(12, 5, 2, 'new_request', 'Заявка создана', 'Заявка AP-7700 принята. Мы свяжемся с вами.', 1, '2026-04-13 13:31:41'),
(13, 3, 2, 'new_request', 'Новая заявка', 'Поступила заявка AP-7700: Hitachi Экс 2016', 0, '2026-04-13 13:31:41'),
(14, 2, 2, 'new_request', 'Новая заявка', 'Поступила заявка AP-7700: Hitachi Экс 2016', 0, '2026-04-13 13:31:41'),
(15, 4, 2, 'new_request', 'Новая заявка', 'Клиент создал заявку AP-7700: Hitachi Экс', 0, '2026-04-13 13:31:41'),
(16, 2, 2, 'new_request', 'Новая заявка', 'Клиент создал заявку AP-7700: Hitachi Экс', 0, '2026-04-13 13:31:41'),
(17, 5, 2, 'status_change', 'Авто принято в сервис', 'Заявка AP-7700: Авто принято в сервис', 1, '2026-04-13 13:31:58'),
(18, 5, 2, 'status_change', 'Начата диагностика', 'Заявка AP-7700: Начата диагностика', 1, '2026-04-13 13:32:16'),
(19, 2, 2, 'storage_ext', 'Продление хранения', 'Клиент запросил продление хранения авто по заявке AP-7700 на 3 дня (до 2026-04-16)', 0, '2026-04-13 13:32:38'),
(20, 4, 2, 'storage_ext', 'Хранение продлено', 'По заявке AP-7700 клиент продлил хранение авто до 2026-04-16', 0, '2026-04-13 13:32:38'),
(21, 2, 2, 'storage_ext', 'Хранение продлено', 'По заявке AP-7700 клиент продлил хранение авто до 2026-04-16', 0, '2026-04-13 13:32:38'),
(22, 5, 2, 'status_change', 'Начат ремонт', 'Заявка AP-7700: Начат ремонт', 0, '2026-04-13 13:33:02'),
(23, 5, 2, 'status_change', 'Ваш автомобиль готов к выдаче!', 'Заявка AP-7700: Ваш автомобиль готов к выдаче!', 0, '2026-04-13 13:33:03'),
(24, 5, 3, 'new_request', 'Заявка создана', 'Заявка AP-3700 принята. Мы свяжемся с вами.', 0, '2026-04-14 16:40:01'),
(25, 3, 3, 'new_request', 'Новая заявка', 'Поступила заявка AP-3700: Hitachi 321 2025', 0, '2026-04-14 16:40:01'),
(26, 2, 3, 'new_request', 'Новая заявка', 'Поступила заявка AP-3700: Hitachi 321 2025', 0, '2026-04-14 16:40:01'),
(27, 4, 3, 'new_request', 'Новая заявка', 'Клиент создал заявку AP-3700: Hitachi 321', 0, '2026-04-14 16:40:01'),
(28, 2, 3, 'new_request', 'Новая заявка', 'Клиент создал заявку AP-3700: Hitachi 321', 0, '2026-04-14 16:40:01'),
(29, 4, 3, 'storage_ext', 'Хранение продлено', 'По заявке AP-3700 клиент продлил хранение авто до 2026-04-17', 0, '2026-04-14 16:46:06'),
(30, 2, 3, 'storage_ext', 'Хранение продлено', 'По заявке AP-3700 клиент продлил хранение авто до 2026-04-17', 0, '2026-04-14 16:46:06'),
(31, 4, 3, 'storage_ext', 'Хранение продлено', 'По заявке AP-3700 клиент продлил хранение авто до 2026-04-20', 0, '2026-04-30 06:15:10'),
(32, 2, 3, 'storage_ext', 'Хранение продлено', 'По заявке AP-3700 клиент продлил хранение авто до 2026-04-20', 0, '2026-04-30 06:15:10'),
(33, 5, 3, 'status_change', 'Авто принято в сервис', 'Заявка AP-3700: Авто принято в сервис', 0, '2026-05-05 11:51:56'),
(34, 2, 3, 'storage_ext', 'Продление хранения', 'Клиент запросил продление хранения авто по заявке AP-3700 на 3 дня (до 2026-04-23)', 0, '2026-05-05 11:52:05'),
(35, 4, 3, 'storage_ext', 'Хранение продлено', 'По заявке AP-3700 клиент продлил хранение авто до 2026-04-23', 0, '2026-05-05 11:52:05'),
(36, 2, 3, 'storage_ext', 'Хранение продлено', 'По заявке AP-3700 клиент продлил хранение авто до 2026-04-23', 0, '2026-05-05 11:52:05'),
(37, 5, 4, 'new_request', 'Заявка создана', 'Заявка AP-8675 принята. Мы свяжемся с вами.', 0, '2026-05-10 10:02:41'),
(38, 3, 4, 'new_request', 'Новая заявка', 'Поступила заявка AP-8675: Volvo Эксоватор 2003', 0, '2026-05-10 10:02:41'),
(39, 2, 4, 'new_request', 'Новая заявка', 'Поступила заявка AP-8675: Volvo Эксоватор 2003', 0, '2026-05-10 10:02:41'),
(40, 4, 4, 'new_request', 'Новая заявка', 'Клиент создал заявку AP-8675: Volvo Эксоватор', 0, '2026-05-10 10:02:41'),
(41, 2, 4, 'new_request', 'Новая заявка', 'Клиент создал заявку AP-8675: Volvo Эксоватор', 0, '2026-05-10 10:02:41'),
(42, 5, 4, 'status_change', 'Авто принято в сервис', 'Заявка AP-8675: Авто принято в сервис', 0, '2026-05-10 10:02:55');

-- --------------------------------------------------------

--
-- Структура таблицы `requests`
--

CREATE TABLE `requests` (
  `id` int UNSIGNED NOT NULL,
  `number` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL,
  `client_id` int UNSIGNED NOT NULL,
  `car_id` int UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `preferred_date` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `status` enum('new','accepted','diag','repair','done','cancelled','stored') COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'new',
  `mechanic_id` int UNSIGNED DEFAULT NULL,
  `estimated_cost` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `eta` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `priority` enum('normal','high') COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'normal',
  `stored_until` date DEFAULT NULL,
  `storage_note` text COLLATE utf8mb3_unicode_ci,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Дамп данных таблицы `requests`
--

INSERT INTO `requests` (`id`, `number`, `client_id`, `car_id`, `description`, `preferred_date`, `phone`, `status`, `mechanic_id`, `estimated_cost`, `eta`, `priority`, `stored_until`, `storage_note`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 'AP-9475', 5, 1, 'Не работает подьем ковша', '2026-04-16', '89635319594', 'done', 2, '5500', '4 часа', 'normal', '2026-04-10', '\n[Продление +3 дня до 2026-04-10] — Клиент запросил продление через личный кабинет', '2026-04-07 11:45:24', '2026-04-07 11:41:56', '2026-04-07 11:45:24'),
(2, 'AP-7700', 5, 2, 'Хреново все', '2026-04-12', '893981489', 'done', 2, '12222', '6 часов', 'normal', '2026-04-16', '\n[Продление +3 дня до 2026-04-16] — Клиент запросил продление через личный кабинет', '2026-04-13 13:33:03', '2026-04-13 13:31:41', '2026-04-13 13:33:03'),
(3, 'AP-3700', 5, 3, '321', '2026-12-31', '2312321', 'accepted', 2, '5555', '2', 'normal', '2026-04-23', '\n[Продление +3 дня до 2026-04-17] — Клиент запросил продление через личный кабинет\n[Продление +3 дня до 2026-04-20] — Клиент запросил продление через личный кабинет\n[Продление +3 дня до 2026-04-23] — Клиент запросил продление через личный кабинет', NULL, '2026-04-14 16:40:01', '2026-05-05 11:52:05'),
(4, 'AP-8675', 5, 4, 'Разулись задние покрышки', '2026-05-12', '89635256737', 'accepted', 3, NULL, NULL, 'normal', NULL, NULL, NULL, '2026-05-10 10:02:41', '2026-05-10 10:02:55');

-- --------------------------------------------------------

--
-- Структура таблицы `request_extensions`
--

CREATE TABLE `request_extensions` (
  `id` int UNSIGNED NOT NULL,
  `request_id` int UNSIGNED NOT NULL,
  `requested_by` int UNSIGNED NOT NULL,
  `days` tinyint UNSIGNED NOT NULL DEFAULT '3',
  `new_date` date NOT NULL,
  `note` text COLLATE utf8mb3_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Дамп данных таблицы `request_extensions`
--

INSERT INTO `request_extensions` (`id`, `request_id`, `requested_by`, `days`, `new_date`, `note`, `created_at`) VALUES
(1, 1, 5, 3, '2026-04-10', 'Клиент запросил продление через личный кабинет', '2026-04-07 11:42:06'),
(2, 2, 5, 3, '2026-04-16', 'Клиент запросил продление через личный кабинет', '2026-04-13 13:32:38'),
(3, 3, 5, 3, '2026-04-17', 'Клиент запросил продление через личный кабинет', '2026-04-14 16:46:06'),
(4, 3, 5, 3, '2026-04-20', 'Клиент запросил продление через личный кабинет', '2026-04-30 06:15:10'),
(5, 3, 5, 3, '2026-04-23', 'Клиент запросил продление через личный кабинет', '2026-05-05 11:52:05');

-- --------------------------------------------------------

--
-- Структура таблицы `services`
--

CREATE TABLE `services` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb3_unicode_ci NOT NULL,
  `category` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `price_from` decimal(10,2) DEFAULT NULL,
  `price_to` decimal(10,2) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Дамп данных таблицы `services`
--

INSERT INTO `services` (`id`, `name`, `category`, `price_from`, `price_to`, `is_active`) VALUES
(1, 'Замена масла двигателя', 'ТО', 2500.00, 5000.00, 1),
(2, 'Замена масла в гидросистеме', 'Гидравлика', 3500.00, 7000.00, 1),
(3, 'Диагностика ходовой части', 'Диагностика', 2000.00, 4000.00, 1),
(4, 'Компьютерная диагностика', 'Диагностика', 2000.00, 3500.00, 1),
(5, 'Замена гусеничных траков', 'Ходовая', 15000.00, 40000.00, 1),
(6, 'Ремонт гидроцилиндров', 'Гидравлика', 8000.00, 25000.00, 1),
(7, 'Замена фильтров (воздух/масло/топл)', 'ТО', 1500.00, 4000.00, 1),
(8, 'Ремонт коробки передач', 'Трансмиссия', 20000.00, 80000.00, 1),
(9, 'Регулировка и ремонт тормозов', 'Тормоза', 5000.00, 15000.00, 1),
(10, 'Сварочные работы (кузов/рама)', 'Кузов', 5000.00, 30000.00, 1),
(11, 'Замена аккумулятора', 'Электрика', 3000.00, 8000.00, 1),
(12, 'Плановое ТО', 'ТО', 8000.00, 25000.00, 1),
(13, 'Замена ковша экскаватора', 'Навесное', 10000.00, 35000.00, 1),
(14, 'Ремонт стрелы / рукояти', 'Навесное', 15000.00, 60000.00, 1),
(15, 'Шиномонтаж (спецтехника)', 'Ходовая', 3000.00, 12000.00, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `sessions`
--

CREATE TABLE `sessions` (
  `token` varchar(64) COLLATE utf8mb3_unicode_ci NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `expires_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Дамп данных таблицы `sessions`
--

INSERT INTO `sessions` (`token`, `user_id`, `expires_at`) VALUES
('0d8a5926dbeefdcae15b62d2d5306d62aadcc4f4bea21f3b54d3fc680dd9b64c', 2, '2026-05-30 07:16:43'),
('2a76dd92e6f36486364ee51591f6f790749cdde14d177c6452a60027a5c80d40', 2, '2026-06-09 09:55:08'),
('3ca234497e19d6da3321ba107f0daa2c09ae4da00967837d4ce61ce2e5e5e2cb', 2, '2026-05-07 11:37:08'),
('4400da01d06b3e7b8bcb54fe88fed4f35fd12980d2c7d5a48dd23391d86d640b', 5, '2026-05-07 11:40:55'),
('4664426e3e2269c82a168357fa51a7a0078da3c35197af6d3f43e3715e263adb', 2, '2026-05-07 11:36:26'),
('50a4fafc42acfb1d7397c81987324323794ead329745602ea85bbd6e44f544e4', 5, '2026-05-30 07:06:36'),
('51d6a42233164030d17ca2a1096cb4ed1f0f616d8eac177c39e6c9a3cc3243cc', 2, '2026-05-14 16:31:41'),
('6f9f3adaf78b3fd89ea3c373ed85b35606002dfcaa41c8b7f0165d863fb9f366', 4, '2026-05-14 16:46:14'),
('82e6b35e70f5d38726c9fe16bfb4f5c5d9aa94a258a0c1eb7e15bb2017f6e666', 2, '2026-06-09 10:22:49'),
('83dbc7f5976dc5e57b1ff940f858c68d07e7e24929949c52c1c6269e6c1a437c', 4, '2026-06-04 11:52:24'),
('95a42a0bb45e4d96e1fb190d5144e7f75767b4f375175ba34cf2350c8a2e1bea', 2, '2026-05-13 13:30:34'),
('a22d2fd86bbbbceaeb666e63e6f2c46f54f5acac336f4b252576e6a9227620f8', 2, '2026-05-07 11:40:17'),
('c116dc8ec66c6cb6b56e645c6b0d9cdbef5dd12b8e664883d3f8d8c98571d58c', 2, '2026-06-10 07:58:43'),
('c980e59a92b646629bff92d3288d44bb5d04a8bccf8d67d8b3a0beb4aa020e71', 5, '2026-06-04 11:51:39'),
('d6ad60121be079b9b019882ca900e350539e4d16b1d463de8f415f09e2463ddc', 3, '2026-05-07 11:40:36'),
('dcf0271d14d314f731edb0b5cbeaf34d19472c63a3bc20f70bb726f327c2223d', 2, '2026-05-15 09:51:36');

-- --------------------------------------------------------

--
-- Структура таблицы `status_history`
--

CREATE TABLE `status_history` (
  `id` int UNSIGNED NOT NULL,
  `request_id` int UNSIGNED NOT NULL,
  `old_status` varchar(20) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `new_status` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL,
  `changed_by` int UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb3_unicode_ci,
  `eta` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `cost` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Дамп данных таблицы `status_history`
--

INSERT INTO `status_history` (`id`, `request_id`, `old_status`, `new_status`, `changed_by`, `comment`, `eta`, `cost`, `created_at`) VALUES
(1, 1, NULL, 'new', 5, 'Заявка создана клиентом', NULL, NULL, '2026-04-07 11:41:56'),
(2, 1, 'new', 'accepted', 2, 'Приняли технику внешнее не видно причину', NULL, NULL, '2026-04-07 11:43:12'),
(3, 1, 'accepted', 'diag', 2, 'Найдена причина поломки - пробита трубка гидравлики', '4 часа', '5500', '2026-04-07 11:44:19'),
(4, 1, 'diag', 'repair', 2, 'Поменяна трубка', '4 часа', '5500', '2026-04-07 11:45:06'),
(5, 1, 'repair', 'done', 2, 'Поменяна трубка заправлена жидкость', '4 часа', '5500', '2026-04-07 11:45:24'),
(6, 2, NULL, 'new', 5, 'Заявка создана клиентом', NULL, NULL, '2026-04-13 13:31:41'),
(7, 2, 'new', 'accepted', 2, 'аафыафы', '6', NULL, '2026-04-13 13:31:58'),
(8, 2, 'accepted', 'diag', 2, 'авйцуафы', '6 часов', '12222', '2026-04-13 13:32:16'),
(9, 2, 'diag', 'repair', 2, NULL, '6 часов', '12222', '2026-04-13 13:33:02'),
(10, 2, 'repair', 'done', 2, NULL, '6 часов', '12222', '2026-04-13 13:33:03'),
(11, 3, NULL, 'new', 5, 'Заявка создана клиентом', NULL, NULL, '2026-04-14 16:40:01'),
(12, 3, 'new', 'accepted', 2, 'FFD', '2', '5555', '2026-05-05 11:51:56'),
(13, 4, NULL, 'new', 5, 'Заявка создана клиентом', NULL, NULL, '2026-05-10 10:02:41'),
(14, 4, 'new', 'accepted', 3, 'у', NULL, NULL, '2026-05-10 10:02:55');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb3_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `phone` varchar(25) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `role` enum('client','mechanic','operator','admin') COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'client',
  `dual_mechanic` tinyint(1) NOT NULL DEFAULT '0',
  `initials` varchar(3) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `remember_token` varchar(64) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password_hash`, `phone`, `role`, `dual_mechanic`, `initials`, `remember_token`, `is_active`, `created_at`) VALUES
(2, 'Kirill Balabernikov', 'balabernikov99@mail.ru', '$2y$12$5JVurS84V9JVd2Aax.Rxv.eH2/2FmxNP6xsRv09M.wphEuKiC1Mpu', '+79635256737', 'admin', 0, 'KB', NULL, 1, '2026-04-07 11:32:58'),
(3, 'Кирюха Мех', 'balabernikov000@mail.ru', '$2y$12$O.Vj.bqVGtqs4EPxYcJ7j.q/yVrCkzjNmBn.LyH2w2W7qa6W56QkS', '89635526737', 'mechanic', 0, 'КМ', NULL, 1, '2026-04-07 11:34:51'),
(4, 'Кирюха Опер', 'balabernikov00@mail.ru', '$2y$12$T1N1mtmVJRBmvRMQw/v38eHQB4CfaW20.7hW6WLYTC5u8McKOTWHa', '89635226737', 'operator', 0, 'КО', NULL, 1, '2026-04-07 11:36:17'),
(5, 'Кирилл Клиент', 'balabernikov@mail.ru', '$2y$12$tCgBf9Ul3HvcoSYJy8//oOywXzn6u9olnCVcjQqqrQ6VpoYu9BalW', '89635556737', 'client', 0, 'КК', NULL, 1, '2026-04-07 11:36:53');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Индексы таблицы `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `request_id` (`request_id`),
  ADD KEY `idx_user_unread` (`user_id`,`is_read`);

--
-- Индексы таблицы `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_number` (`number`),
  ADD KEY `car_id` (`car_id`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_client` (`client_id`),
  ADD KEY `idx_mechanic` (`mechanic_id`);

--
-- Индексы таблицы `request_extensions`
--
ALTER TABLE `request_extensions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `request_id` (`request_id`),
  ADD KEY `requested_by` (`requested_by`);

--
-- Индексы таблицы `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`token`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `status_history`
--
ALTER TABLE `status_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `changed_by` (`changed_by`),
  ADD KEY `idx_req` (`request_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_email` (`email`),
  ADD KEY `idx_role` (`role`),
  ADD KEY `idx_token` (`remember_token`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT для таблицы `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `request_extensions`
--
ALTER TABLE `request_extensions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `services`
--
ALTER TABLE `services`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `status_history`
--
ALTER TABLE `status_history`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `cars`
--
ALTER TABLE `cars`
  ADD CONSTRAINT `cars_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_ibfk_2` FOREIGN KEY (`request_id`) REFERENCES `requests` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `requests`
--
ALTER TABLE `requests`
  ADD CONSTRAINT `requests_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `requests_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`),
  ADD CONSTRAINT `requests_ibfk_3` FOREIGN KEY (`mechanic_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `request_extensions`
--
ALTER TABLE `request_extensions`
  ADD CONSTRAINT `request_extensions_ibfk_1` FOREIGN KEY (`request_id`) REFERENCES `requests` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `request_extensions_ibfk_2` FOREIGN KEY (`requested_by`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `sessions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `status_history`
--
ALTER TABLE `status_history`
  ADD CONSTRAINT `status_history_ibfk_1` FOREIGN KEY (`request_id`) REFERENCES `requests` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `status_history_ibfk_2` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
