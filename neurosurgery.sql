-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Фев 11 2021 г., 02:17
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `neurosurgery`
--

-- --------------------------------------------------------

--
-- Структура таблицы `clinical_examination`
--

CREATE TABLE IF NOT EXISTS `clinical_examination` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mkb` text NOT NULL,
  `disability` tinyint(1) DEFAULT NULL,
  `date_of_diagnosis` date NOT NULL,
  `registration_in_the_clinic` date NOT NULL,
  `withdrawal_from_the_clinic` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Дамп данных таблицы `clinical_examination`
--

INSERT INTO `clinical_examination` (`id`, `mkb`, `disability`, `date_of_diagnosis`, `registration_in_the_clinic`, `withdrawal_from_the_clinic`) VALUES
(5, 'R55', NULL, '2020-07-17', '2020-08-31', '0000-00-00'),
(7, 'D33.0', NULL, '2020-05-12', '2020-06-12', '0000-00-00'),
(8, 'D33.0', NULL, '2020-10-01', '2020-11-01', '0000-00-00'),
(9, 'D33.1', NULL, '2020-02-12', '2020-03-28', '0000-00-00'),
(14, 'G91.0', NULL, '2020-10-06', '2020-11-08', '0000-00-00');

-- --------------------------------------------------------

--
-- Структура таблицы `concomitant_diseases`
--

CREATE TABLE IF NOT EXISTS `concomitant_diseases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mkb` text NOT NULL,
  `treatment` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Дамп данных таблицы `concomitant_diseases`
--

INSERT INTO `concomitant_diseases` (`id`, `mkb`, `treatment`) VALUES
(3, 'E10', 'Глибенкламид'),
(5, 'H12.1', 'ФТЛ'),
(7, 'E10', 'Глибенкламид'),
(8, 'E10', 'Глибенкламид'),
(13, 'J45', 'Физиотерапия'),
(17, 'A20.3', 'Глюкокортикоиды'),
(20, 'M12.5', 'ЛФК, ФТЛ');

-- --------------------------------------------------------

--
-- Структура таблицы `conservative_therapy`
--

CREATE TABLE IF NOT EXISTS `conservative_therapy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nootropic` tinyint(1) DEFAULT NULL,
  `adrenal_hormones` tinyint(1) DEFAULT NULL,
  `antihistamines` tinyint(1) DEFAULT NULL,
  `diuretic` tinyint(1) DEFAULT NULL,
  `antibiotic` tinyint(1) DEFAULT NULL,
  `oxygen` tinyint(1) DEFAULT NULL,
  `intensive_care` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `conservative_therapy`
--

INSERT INTO `conservative_therapy` (`id`, `nootropic`, `adrenal_hormones`, `antihistamines`, `diuretic`, `antibiotic`, `oxygen`, `intensive_care`) VALUES
(1, 1, 0, 0, 1, 1, 0, 0),
(2, 1, 1, 1, 1, 1, 0, 0),
(3, 1, 0, 0, 0, 1, 0, 0),
(4, 1, 1, 0, 0, 0, 0, 0),
(5, 1, 1, 1, 0, 1, 0, 0),
(6, 1, 0, 1, 1, 1, 0, 0),
(7, 1, 0, 1, 0, 1, 0, 0),
(8, 1, 0, 0, 1, 1, 0, 0),
(9, 1, 1, 0, 1, 0, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `federal_hospitals`
--

CREATE TABLE IF NOT EXISTS `federal_hospitals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `federal_hospital` text NOT NULL,
  `treatment` text NOT NULL,
  `result` text NOT NULL,
  `hospitalisation_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Дамп данных таблицы `federal_hospitals`
--

INSERT INTO `federal_hospitals` (`id`, `federal_hospital`, `treatment`, `result`, `hospitalisation_date`) VALUES
(7, 'НИИ Бурденко', 'Операция', 'Улучшение', '2019-05-06'),
(8, 'НМИЦ Алмазово', 'Операция', 'Улучшение', '2020-01-25'),
(9, 'НМИЦ Алмазово', 'Операция', 'Улучшение', '2018-09-23'),
(10, 'НИИ Бурденк', 'Операция', 'Улучшение', '2019-07-08'),
(19, 'НИИ Бурденк', 'Программируемый капан', 'Улучшение', '2020-12-01');

-- --------------------------------------------------------

--
-- Структура таблицы `moving_between_regions`
--

CREATE TABLE IF NOT EXISTS `moving_between_regions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mooving_in` text NOT NULL,
  `mooving_out` text NOT NULL,
  `data_transferring` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Дамп данных таблицы `moving_between_regions`
--

INSERT INTO `moving_between_regions` (`id`, `mooving_in`, `mooving_out`, `data_transferring`) VALUES
(2, '1', '0', 'Амбауторная карта выдана на руки'),
(4, '1', '0', 'Амбауторная карта выдана на руки'),
(7, '1', '0', 'Амбауторная карта выдана на руки'),
(8, '1', '0', 'Амбауторная карта выдана на руки'),
(11, '0', '1', 'Амбауторная карта выдана на руки'),
(12, '1', '0', 'Амбауторная карта выдана на руки'),
(16, '1', '0', 'Амбауторная карта выдана на руки');

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `oxygen_needs`
--
CREATE TABLE IF NOT EXISTS `oxygen_needs` (
`id` int(10) unsigned
,`nootropic` tinyint(1)
,`adrenal_hormones` tinyint(1)
,`antihistamines` tinyint(1)
,`diuretic` tinyint(1)
,`antibiotic` tinyint(1)
,`oxygen` tinyint(1)
,`intensive_care` tinyint(1)
);
-- --------------------------------------------------------

--
-- Структура таблицы `patients`
--

CREATE TABLE IF NOT EXISTS `patients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `birthday` date NOT NULL,
  `address` text NOT NULL,
  `phone` int(11) NOT NULL,
  `mkb` text NOT NULL,
  `result` text NOT NULL,
  `admission_date` date NOT NULL COMMENT 'год.месяц.день.',
  `discharge_date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_patientID` (`id`,`mkb`(4))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Дамп данных таблицы `patients`
--

INSERT INTO `patients` (`id`, `name`, `birthday`, `address`, `phone`, `mkb`, `result`, `admission_date`, `discharge_date`) VALUES
(1, 'Никита Козлов', '2015-01-18', 'Калининград', 2147483647, 'S06.0', 'Улучшение', '2020-10-04', '2020-10-06'),
(2, 'Наташа Стрелецкая', '2017-01-22', 'Калининград', 2147483647, 'S06.4', 'Смерть', '2020-07-04', '2020-07-06'),
(3, 'Денис Попов', '2018-04-02', 'Светлогорск', 2147483647, 'S06.0', 'Улучшение', '2020-10-04', '2020-10-06'),
(4, 'Мария Гаудас', '2014-03-24', 'Светлогорск', 2147483647, 'S06.3', 'Улучшение', '2020-06-04', '2020-06-16'),
(5, 'Петр Литвиненко', '2019-06-17', 'Калининград', 366474894, 'R55', 'Улучшение', '2020-07-17', '2020-07-21'),
(6, 'Константин Баутин', '2016-07-02', 'Калининград', 454685905, 'S00.0', 'Выздоровление', '2020-03-01', '2020-03-05'),
(7, 'Ирина Литвиненко', '2017-10-30', 'Советск', 35437495, 'D33.0', 'Улучшение', '2020-05-12', '2020-05-28'),
(8, 'Ольга Болотина', '2017-03-26', 'Калининград', 647489404, 'D33.0', 'Улучшение', '2020-10-01', '2020-10-04'),
(9, 'Алина Болотина', '2019-01-18', 'Калининград', 2147483647, 'D33.1', 'Улучшение', '2020-02-12', '2020-02-16'),
(10, 'Станислав Говорухин', '2013-10-17', 'Калининград', 2147483647, 'C17.0', 'Улучшение', '2020-03-12', '2020-03-27'),
(11, 'Эрен Егер', '2016-10-04', 'Шинганшина', 546479894, 'P12.0', 'Улучшение', '2020-05-20', '2020-05-24'),
(12, 'Татьяна Савичева', '2016-10-02', 'Гурьевск', 84746453, 'P12.0', 'Улучшение', '2020-01-22', '2020-01-27'),
(13, 'Станислав Лем', '2017-10-15', 'Калининград', 2147483647, 'D34.0', 'Отправлен в федеральный центр', '2020-10-04', '2020-10-06'),
(14, 'Геннадий Петров', '2018-03-02', 'Калининград', 2147483647, 'G91.0', 'Улучшение', '2020-10-06', '2020-10-26'),
(15, 'Лидия  Заремба', '2014-06-17', 'Зеленоградск', 32223494, 'Q04.6', 'Улучшение', '2020-06-01', '2020-06-30'),
(16, 'Никита Иванов', '2015-07-12', 'Калининград', 373287332, 'Q04.6', 'Улучшение', '2020-07-12', '2020-07-29'),
(17, 'Азамат Цораев', '2016-10-02', 'Калининград', 2147483647, 'G91.1', 'Улучшение', '2020-10-04', '2020-11-01'),
(18, 'Анастасия Вертинская', '2015-10-02', 'Калининград', 2147483647, 'G91.8', 'Улучшение', '2020-09-04', '2020-10-06'),
(19, 'Мила Васильева', '2015-08-02', 'Калининград', 454457845, 'G91.0', 'Улучшение', '2020-08-04', '2020-09-06'),
(20, 'Айшвария Рай', '2015-10-02', 'Калининград', 2147483647, 'G91.0', 'Улучшение', '2020-08-04', '2020-09-06');

--
-- Триггеры `patients`
--
DROP TRIGGER IF EXISTS `changes`;
DELIMITER //
CREATE TRIGGER `changes` AFTER UPDATE ON `patients`
 FOR EACH ROW BEGIN
INSERT INTO backup Set row_id = patients.id, content = patients.content;
    END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Структура таблицы `patient_testimonials`
--

CREATE TABLE IF NOT EXISTS `patient_testimonials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `complaint` text NOT NULL,
  `thanks` text NOT NULL,
  `result` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Дамп данных таблицы `patient_testimonials`
--

INSERT INTO `patient_testimonials` (`id`, `complaint`, `thanks`, `result`) VALUES
(2, 'Запрос в следственный комитет', '', 'Раследование'),
(13, '', 'Благодарность отделению', 'Премирование сотрудников'),
(15, '', 'Благодарность отделению', 'Премирование сотрудников');

-- --------------------------------------------------------

--
-- Структура таблицы `sick_leave`
--

CREATE TABLE IF NOT EXISTS `sick_leave` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mkb` text NOT NULL,
  `quantity_of_days` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Дамп данных таблицы `sick_leave`
--

INSERT INTO `sick_leave` (`id`, `mkb`, `quantity_of_days`) VALUES
(1, 'S06.0', 21),
(2, 'S06.4', 24),
(10, 'C17.0', 30),
(14, 'G91.0', 15),
(16, 'Q04.6', 6),
(17, 'G91.1', 10),
(19, 'G91.0', 11);

-- --------------------------------------------------------

--
-- Структура таблицы `surgery`
--

CREATE TABLE IF NOT EXISTS `surgery` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `surgery_name` text NOT NULL,
  `complications` text NOT NULL,
  `revision` text NOT NULL,
  `days_before_operation` int(11) NOT NULL COMMENT 'От поступления',
  `days_before_discharge` int(11) NOT NULL COMMENT 'От операции',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Дамп данных таблицы `surgery`
--

INSERT INTO `surgery` (`id`, `surgery_name`, `complications`, `revision`, `days_before_operation`, `days_before_discharge`) VALUES
(13, 'ВПШ', 'Нет', '', 1, 10),
(14, 'ВПШ', 'Нет', '', 1, 10),
(16, 'Люмбаьный шунт', 'Нет', '', 1, 12),
(17, 'ВПШ', 'Нет', '', 1, 10),
(19, 'Программируемый клапан', 'Нет', '', 3, 23),
(20, 'ВПШ', 'Нет', '', 1, 10);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `surgery_complications`
--
CREATE TABLE IF NOT EXISTS `surgery_complications` (
`id` int(10) unsigned
,`conservative` tinyint(1)
,`surgery` tinyint(1)
,`complications` text
,`number_of_hospitalisation` int(10) unsigned
);
-- --------------------------------------------------------

--
-- Структура таблицы `treatment`
--

CREATE TABLE IF NOT EXISTS `treatment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `conservative` tinyint(1) DEFAULT NULL,
  `surgery` tinyint(1) DEFAULT NULL,
  `complications` text NOT NULL,
  `number_of_hospitalisation` int(10) unsigned NOT NULL COMMENT 'При конкретном заболевании',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Дамп данных таблицы `treatment`
--

INSERT INTO `treatment` (`id`, `conservative`, `surgery`, `complications`, `number_of_hospitalisation`) VALUES
(1, 1, 0, 'Нет', 1),
(2, 1, 0, 'Нет', 1),
(3, 1, 0, 'Нет', 1),
(4, 1, 0, 'Нет', 1),
(5, 1, 0, 'Нет', 1),
(6, 1, 0, 'Инфицирование послеоперационной раны', 1),
(7, 1, 0, 'Нет', 2),
(8, 1, 0, 'Нет', 2),
(9, 1, 0, 'Нет', 3),
(10, 1, 0, 'Нет', 1),
(11, 1, 0, 'Нет', 1),
(12, 1, 0, 'Нет', 1),
(13, 1, 1, 'Нет', 2),
(14, 1, 1, 'Нет', 3),
(15, 1, 0, 'Нет', 2),
(16, 1, 1, 'Нет', 4),
(17, 1, 1, 'Нет', 2),
(18, 1, 0, 'Вентрикулит', 2),
(19, 1, 1, 'Нет', 2),
(20, 1, 1, 'Нет', 2);

-- --------------------------------------------------------

--
-- Структура для представления `oxygen_needs`
--
DROP TABLE IF EXISTS `oxygen_needs`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `oxygen_needs` AS select `conservative_therapy`.`id` AS `id`,`conservative_therapy`.`nootropic` AS `nootropic`,`conservative_therapy`.`adrenal_hormones` AS `adrenal_hormones`,`conservative_therapy`.`antihistamines` AS `antihistamines`,`conservative_therapy`.`diuretic` AS `diuretic`,`conservative_therapy`.`antibiotic` AS `antibiotic`,`conservative_therapy`.`oxygen` AS `oxygen`,`conservative_therapy`.`intensive_care` AS `intensive_care` from `conservative_therapy` where (`conservative_therapy`.`oxygen` = 1);

-- --------------------------------------------------------

--
-- Структура для представления `surgery_complications`
--
DROP TABLE IF EXISTS `surgery_complications`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `surgery_complications` AS select `treatment`.`id` AS `id`,`treatment`.`conservative` AS `conservative`,`treatment`.`surgery` AS `surgery`,`treatment`.`complications` AS `complications`,`treatment`.`number_of_hospitalisation` AS `number_of_hospitalisation` from `treatment` where (`treatment`.`complications` <> 'Нет');

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `concomitant_diseases`
--
ALTER TABLE `concomitant_diseases`
  ADD CONSTRAINT `concomitant_diseases_ibfk_1` FOREIGN KEY (`id`) REFERENCES `patients` (`id`);

--
-- Ограничения внешнего ключа таблицы `conservative_therapy`
--
ALTER TABLE `conservative_therapy`
  ADD CONSTRAINT `conservative_therapy_ibfk_1` FOREIGN KEY (`id`) REFERENCES `patients` (`id`);

--
-- Ограничения внешнего ключа таблицы `moving_between_regions`
--
ALTER TABLE `moving_between_regions`
  ADD CONSTRAINT `moving_between_regions_ibfk_1` FOREIGN KEY (`id`) REFERENCES `patients` (`id`);

--
-- Ограничения внешнего ключа таблицы `patient_testimonials`
--
ALTER TABLE `patient_testimonials`
  ADD CONSTRAINT `patient_testimonials_ibfk_1` FOREIGN KEY (`id`) REFERENCES `patients` (`id`);

--
-- Ограничения внешнего ключа таблицы `treatment`
--
ALTER TABLE `treatment`
  ADD CONSTRAINT `treatment_ibfk_1` FOREIGN KEY (`id`) REFERENCES `patients` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
