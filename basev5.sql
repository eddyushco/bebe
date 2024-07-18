-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-07-2024 a las 03:30:46
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `upresult`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'eddyushco@gmail.com', '5aa8fed9741d33c63868a87f1af05ab7', '2022-09-04 10:30:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificaciones`
--

CREATE TABLE `calificaciones` (
  `id` int(11) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `StudentId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificaciones2`
--

CREATE TABLE `calificaciones2` (
  `id` int(11) NOT NULL,
  `nota` decimal(10,2) NOT NULL,
  `Student` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificaciones3`
--

CREATE TABLE `calificaciones3` (
  `id` int(11) NOT NULL,
  `notas` decimal(10,2) NOT NULL,
  `Students` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificaciones_nota`
--

CREATE TABLE `calificaciones_nota` (
  `id` int(11) NOT NULL,
  `nota1` decimal(10,2) NOT NULL,
  `Students` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificaciones_nota2`
--

CREATE TABLE `calificaciones_nota2` (
  `id` int(11) NOT NULL,
  `notas2` decimal(10,2) NOT NULL,
  `Students` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificaciones_nota3`
--

CREATE TABLE `calificaciones_nota3` (
  `id` int(11) NOT NULL,
  `nota11` decimal(10,2) NOT NULL,
  `nota22` decimal(10,2) NOT NULL,
  `Students` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente`
--

CREATE TABLE `docente` (
  `id` int(11) NOT NULL,
  `cedula` varchar(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  `estado` varchar(10) NOT NULL DEFAULT 'Activo',
  `educacion` varchar(250) DEFAULT NULL,
  `titulo_tercerNivel` varchar(500) DEFAULT NULL,
  `titulo_cuartoNivel` varchar(500) DEFAULT NULL,
  `especialidad_accion` varchar(500) DEFAULT NULL,
  `especialidad_requerida` varchar(500) DEFAULT NULL,
  `grupo_etnico` varchar(250) DEFAULT NULL,
  `nacionalidad_indigena` varchar(250) DEFAULT NULL,
  `relacion_laboral` varchar(250) DEFAULT NULL,
  `cargo` varchar(250) DEFAULT NULL,
  `categoria` varchar(250) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `fecha_ingreso` varchar(250) DEFAULT NULL,
  `fecha_ingreso_IE` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `docente`
--

INSERT INTO `docente` (`id`, `cedula`, `nombre`, `direccion`, `telefono`, `email`, `contrasena`, `estado`, `educacion`, `titulo_tercerNivel`, `titulo_cuartoNivel`, `especialidad_accion`, `especialidad_requerida`, `grupo_etnico`, `nacionalidad_indigena`, `relacion_laboral`, `cargo`, `categoria`, `fecha_nacimiento`, `fecha_ingreso`, `fecha_ingreso_IE`) VALUES
(92, '0504415696', 'USHCO CUCHIPARTE EDDY RUYÑO', 'La Maná', '0995523212', 'eddyushco@gmail.com', '$2y$10$FXl1/PSYIswUM12PgE1apueUyLF87l2u2TO.GBSrlm73EjDQIaQiO', 'Activo', 'Tercer Nivel', 'LICENCIADA EN CIENCIAS DE LA EDUCACIÓN MENCIÓN EDUCACIÓN BÁSICA ', NULL, 'GANADOR DE QSM 7 DOCENTE DE EGB 2DO A 7MO', 'EDUCACIÓN GENERAL BÁSICA (EGB) DE 2DO A 7MO', 'Mestizo', NULL, 'Nomb. Definitivo', 'Docente', 'Categoría G', '1986-03-05', '2018-10-01', '2021-11-04'),
(93, '0503272775', 'AIDA MARINA  CAÑAR CHASI ', 'LATACUNGA LA MERCED CALLES QUIJANO Y ORDOÑEZ Y FELIX VALENCIA FRENTE A LA COOPERATIVA TULCÁN ', '0987956996', 'aiditamarina_86@hotmail.com', '', 'Activo', 'Tercer Nivel', 'LICENCIADA EN CIENCIAS DE LA EDUCACIÓN MENCIÓN EDUCACIÓN BÁSICA ', '', 'GANADOR DE QSM 7 DOCENTE DE EGB 2DO A 7MO', 'EDUCACIÓN GENERAL BÁSICA (EGB) DE 2DO A 7MO', 'Mestizo', '', 'Nomb. Definitivo', 'Rector', 'Categoría G', '1986-03-05', '2018-10-01', '2021-11-04'),
(94, '0502260797', 'ANITA LUCIA RIVERA BAÑO ', 'Ciudadela Jaime Hurtado', '0987216892', 'anita.rivera22@hotmail.com', '$2y$10$iWGHFYxI9lh5RU5ySeNm/u2AN2cmPwnAzg84sjCHOrlK9v/QwzPyW', 'Activo', 'Tercer Nivel', 'LICENCIADA EN CIENCIAS DE LA EDUCACIÓN MENCIÓN EDUCACIÓN BÁSICA ', NULL, 'NOMBRAMIENTO PROVISIONAL  DESDE EL AÑO 2017 DOCENTE AULA', 'EDUCACIÓN GENERAL BÁSICA (EGB) DE 2DO A 7MO', 'Mestizo', NULL, 'Nomb. Provisional', 'Docente', 'Categoría G', '1976-04-28', '2010-09-06', '2017-07-07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `token` varchar(100) NOT NULL,
  `expiry` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recuperarestudiante`
--

CREATE TABLE `recuperarestudiante` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `token` varchar(100) NOT NULL,
  `expiry` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `student_subjects`
--

CREATE TABLE `student_subjects` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `student_subjects`
--

INSERT INTO `student_subjects` (`id`, `student_id`, `subject_id`) VALUES
(508, 354, 87),
(509, 354, 90),
(510, 354, 90),
(511, 354, 89);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblasistencia`
--

CREATE TABLE `tblasistencia` (
  `id` int(11) NOT NULL,
  `id_estudiante` int(11) NOT NULL,
  `id_asignatura` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `presente` tinyint(1) NOT NULL,
  `atraso` tinyint(1) NOT NULL DEFAULT '0',
  `justificacion` tinyint(1) NOT NULL DEFAULT '0',
  `injustificacion` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblcalificaciones`
--

CREATE TABLE `tblcalificaciones` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `calificacion` decimal(5,2) NOT NULL,
  `fecha_registro` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblcalifitrimestral`
--

CREATE TABLE `tblcalifitrimestral` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `ai1` decimal(5,2) NOT NULL,
  `ai2` decimal(5,2) NOT NULL,
  `ai3` decimal(5,2) NOT NULL,
  `indiciplinario` decimal(10,2) DEFAULT NULL,
  `Evaluacion_final` decimal(5,2) NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `promedio` decimal(4,2) DEFAULT '0.00',
  `calificacion` varchar(100) DEFAULT '',
  `ai4` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblcalifitrimestral2`
--

CREATE TABLE `tblcalifitrimestral2` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `ai1` decimal(5,2) NOT NULL,
  `ai2` decimal(5,2) NOT NULL,
  `ai3` decimal(5,2) NOT NULL,
  `indiciplinario` decimal(10,2) DEFAULT NULL,
  `Evaluacion_final` decimal(5,2) NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `promedio` decimal(4,2) DEFAULT '0.00',
  `calificacion` varchar(100) DEFAULT '',
  `ai4` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblcalifitrimestral3`
--

CREATE TABLE `tblcalifitrimestral3` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `ai1` decimal(5,2) NOT NULL,
  `ai2` decimal(5,2) NOT NULL,
  `ai3` decimal(5,2) NOT NULL,
  `indiciplinario` decimal(10,2) DEFAULT NULL,
  `Evaluacion_final` decimal(5,2) NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `promedio` decimal(4,2) DEFAULT '0.00',
  `calificacion` varchar(100) DEFAULT '',
  `ai4` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblcalifitrimestralgupal`
--

CREATE TABLE `tblcalifitrimestralgupal` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `ag1` decimal(5,2) NOT NULL,
  `ag2` decimal(5,2) NOT NULL,
  `ag3` decimal(5,2) NOT NULL,
  `promedioAG` decimal(10,2) DEFAULT NULL,
  `calificacionAG` varchar(100) DEFAULT '',
  `subject_id` int(11) DEFAULT NULL,
  `ag4` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblcalifitrimestralgupal2`
--

CREATE TABLE `tblcalifitrimestralgupal2` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `ag1` decimal(5,2) NOT NULL,
  `ag2` decimal(5,2) NOT NULL,
  `ag3` decimal(5,2) NOT NULL,
  `promedioAG` decimal(10,2) DEFAULT NULL,
  `calificacionAG` varchar(100) DEFAULT '',
  `subject_id` int(11) DEFAULT NULL,
  `ag4` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblcalifitrimestralgupal3`
--

CREATE TABLE `tblcalifitrimestralgupal3` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `ag1` decimal(5,2) NOT NULL,
  `ag2` decimal(5,2) NOT NULL,
  `ag3` decimal(5,2) NOT NULL,
  `promedioAG` decimal(10,2) DEFAULT NULL,
  `calificacionAG` varchar(100) DEFAULT '',
  `subject_id` int(11) DEFAULT NULL,
  `ag4` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblclasses`
--

CREATE TABLE `tblclasses` (
  `id` int(11) NOT NULL,
  `ClassName` varchar(80) DEFAULT NULL,
  `ClassNameNumeric` int(4) DEFAULT NULL,
  `Section` varchar(5) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `TeacherName` varchar(255) DEFAULT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Activo'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblclasses`
--

INSERT INTO `tblclasses` (`id`, `ClassName`, `ClassNameNumeric`, `Section`, `CreationDate`, `UpdationDate`, `TeacherName`, `status`) VALUES
(181, 'TERCERO BACHILLERATO', 92, 'A', '2024-07-18 00:04:17', NULL, 'USHCO CUCHIPARTE EDDY RUYÑO', 'Activo'),
(182, 's', 92, 'A', '2024-07-18 00:04:17', NULL, 'USHCO CUCHIPARTE EDDY RUYÑO', 'Activo'),
(183, 'e', 92, 'A', '2024-07-18 00:04:17', NULL, 'USHCO CUCHIPARTE EDDY RUYÑO', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblnotice`
--

CREATE TABLE `tblnotice` (
  `id` int(11) NOT NULL,
  `noticeTitle` varchar(255) DEFAULT NULL,
  `noticeDetails` mediumtext,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblnotice`
--

INSERT INTO `tblnotice` (`id`, `noticeTitle`, `noticeDetails`, `postingDate`) VALUES
(1, 'Classes Resume', 'Dear Students, The classes will resume from 05-09-2022 (Monday). Students must reach the school in proper uniform as per their arrival time.', '2022-09-04 08:42:47'),
(2, 'Holiday Homework 2022-2023', 'Holiday Homework of Summer vacation 2022 – 2023 has been uploaded and you can download it by clicking on the link.', '2022-09-04 08:43:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblresult`
--

CREATE TABLE `tblresult` (
  `id` int(11) NOT NULL,
  `StudentId` int(11) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblstudents`
--

CREATE TABLE `tblstudents` (
  `StudentId` int(11) NOT NULL,
  `StudentName` varchar(100) DEFAULT NULL,
  `RollId` varchar(100) DEFAULT NULL,
  `StudentEmail` varchar(100) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `DOB` varchar(100) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Status` varchar(20) DEFAULT 'Activo',
  `id_docente` int(11) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `Direccion` varchar(255) DEFAULT NULL,
  `Telefono` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblstudents`
--

INSERT INTO `tblstudents` (`StudentId`, `StudentName`, `RollId`, `StudentEmail`, `Gender`, `DOB`, `ClassId`, `RegDate`, `UpdationDate`, `Status`, `id_docente`, `password`, `Direccion`, `Telefono`) VALUES
(354, 'Eddy Ruy Ushco Cuchiparte', '0504415696', 'eddy@gmail.com', 'Masculino', '2001-11-24', 181, '2024-07-18 00:39:03', NULL, '1', 92, '$2y$10$FsBSRwcpj3ddXD3wzssZP.h8Ynr.G6t4GK3jXgAIZ44ieQcMSguZa', 'Latacunga', '0995523212');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblsubjectcombination`
--

CREATE TABLE `tblsubjectcombination` (
  `id` int(11) NOT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Updationdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblsubjects`
--

CREATE TABLE `tblsubjects` (
  `id` int(11) NOT NULL,
  `SubjectName` varchar(100) NOT NULL,
  `SubjectCode` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `id_docente` int(11) DEFAULT NULL,
  `CourseName` varchar(255) DEFAULT NULL,
  `CourseSection` varchar(10) DEFAULT NULL,
  `CursoEncargado` varchar(100) DEFAULT NULL,
  `estado` varchar(10) NOT NULL DEFAULT 'Activo'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblsubjects`
--

INSERT INTO `tblsubjects` (`id`, `SubjectName`, `SubjectCode`, `Creationdate`, `UpdationDate`, `id_docente`, `CourseName`, `CourseSection`, `CursoEncargado`, `estado`) VALUES
(84, 'SS', '181', '2024-07-18 00:08:56', NULL, 92, 'TERCERO BACHILLERATO', 'A', 'USHCO CUCHIPARTE EDDY RUYÑO', 'Activo'),
(85, 'Ss', '181', '2024-07-18 00:09:03', NULL, 92, 'TERCERO BACHILLERATO', 'A', 'USHCO CUCHIPARTE EDDY RUYÑO', 'Activo'),
(86, 'Ss', '182', '2024-07-18 00:09:12', NULL, 92, 's', 'A', 'USHCO CUCHIPARTE EDDY RUYÑO', 'Activo'),
(87, 'AD', '181', '2024-07-18 00:09:30', NULL, 92, 'TERCERO BACHILLERATO', 'A', 'USHCO CUCHIPARTE EDDY RUYÑO', 'Activo'),
(88, 'AD', '182', '2024-07-18 00:09:35', NULL, 92, 's', 'A', 'USHCO CUCHIPARTE EDDY RUYÑO', 'Activo'),
(89, 'TGG', '182', '2024-07-18 00:17:01', NULL, 92, 's', 'A', 'USHCO CUCHIPARTE EDDY RUYÑO', 'Activo'),
(90, 'HH', '182', '2024-07-18 00:17:30', NULL, 92, 's', 'A', 'USHCO CUCHIPARTE EDDY RUYÑO', 'Activo'),
(91, 'JJ', '182', '2024-07-18 00:18:09', NULL, 92, 's', 'A', 'USHCO CUCHIPARTE EDDY RUYÑO', 'Activo'),
(92, 'HH', '181', '2024-07-18 00:19:10', NULL, 92, 'TERCERO BACHILLERATO', 'A', 'USHCO CUCHIPARTE EDDY RUYÑO', 'Activo'),
(93, 'HH', '183', '2024-07-18 00:19:46', NULL, 92, 'e', 'A', 'USHCO CUCHIPARTE EDDY RUYÑO', 'Activo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_student` (`StudentId`);

--
-- Indices de la tabla `calificaciones2`
--
ALTER TABLE `calificaciones2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Student` (`Student`);

--
-- Indices de la tabla `calificaciones3`
--
ALTER TABLE `calificaciones3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Students` (`Students`);

--
-- Indices de la tabla `calificaciones_nota`
--
ALTER TABLE `calificaciones_nota`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Students` (`Students`);

--
-- Indices de la tabla `calificaciones_nota2`
--
ALTER TABLE `calificaciones_nota2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Students` (`Students`);

--
-- Indices de la tabla `calificaciones_nota3`
--
ALTER TABLE `calificaciones_nota3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Students` (`Students`);

--
-- Indices de la tabla `docente`
--
ALTER TABLE `docente`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cedula` (`cedula`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Indices de la tabla `recuperarestudiante`
--
ALTER TABLE `recuperarestudiante`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Indices de la tabla `student_subjects`
--
ALTER TABLE `student_subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indices de la tabla `tblasistencia`
--
ALTER TABLE `tblasistencia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_estudiante` (`id_estudiante`);

--
-- Indices de la tabla `tblcalificaciones`
--
ALTER TABLE `tblcalificaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indices de la tabla `tblcalifitrimestral`
--
ALTER TABLE `tblcalifitrimestral`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indices de la tabla `tblcalifitrimestral2`
--
ALTER TABLE `tblcalifitrimestral2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indices de la tabla `tblcalifitrimestral3`
--
ALTER TABLE `tblcalifitrimestral3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indices de la tabla `tblcalifitrimestralgupal`
--
ALTER TABLE `tblcalifitrimestralgupal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indices de la tabla `tblcalifitrimestralgupal2`
--
ALTER TABLE `tblcalifitrimestralgupal2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indices de la tabla `tblcalifitrimestralgupal3`
--
ALTER TABLE `tblcalifitrimestralgupal3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indices de la tabla `tblclasses`
--
ALTER TABLE `tblclasses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblnotice`
--
ALTER TABLE `tblnotice`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblresult`
--
ALTER TABLE `tblresult`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`StudentId`),
  ADD UNIQUE KEY `StudentEmail` (`StudentEmail`),
  ADD KEY `id_docente` (`id_docente`);

--
-- Indices de la tabla `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblsubjects`
--
ALTER TABLE `tblsubjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_docente` (`id_docente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `calificaciones2`
--
ALTER TABLE `calificaciones2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `calificaciones3`
--
ALTER TABLE `calificaciones3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `calificaciones_nota`
--
ALTER TABLE `calificaciones_nota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `calificaciones_nota2`
--
ALTER TABLE `calificaciones_nota2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `calificaciones_nota3`
--
ALTER TABLE `calificaciones_nota3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `docente`
--
ALTER TABLE `docente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `recuperarestudiante`
--
ALTER TABLE `recuperarestudiante`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `student_subjects`
--
ALTER TABLE `student_subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=512;

--
-- AUTO_INCREMENT de la tabla `tblasistencia`
--
ALTER TABLE `tblasistencia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `tblcalificaciones`
--
ALTER TABLE `tblcalificaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblcalifitrimestral`
--
ALTER TABLE `tblcalifitrimestral`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tblcalifitrimestral2`
--
ALTER TABLE `tblcalifitrimestral2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tblcalifitrimestral3`
--
ALTER TABLE `tblcalifitrimestral3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tblcalifitrimestralgupal`
--
ALTER TABLE `tblcalifitrimestralgupal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tblcalifitrimestralgupal2`
--
ALTER TABLE `tblcalifitrimestralgupal2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tblcalifitrimestralgupal3`
--
ALTER TABLE `tblcalifitrimestralgupal3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tblclasses`
--
ALTER TABLE `tblclasses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT de la tabla `tblnotice`
--
ALTER TABLE `tblnotice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tblresult`
--
ALTER TABLE `tblresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `StudentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=355;

--
-- AUTO_INCREMENT de la tabla `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblsubjects`
--
ALTER TABLE `tblsubjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD CONSTRAINT `fk_student` FOREIGN KEY (`StudentId`) REFERENCES `tblstudents` (`StudentId`);

--
-- Filtros para la tabla `calificaciones2`
--
ALTER TABLE `calificaciones2`
  ADD CONSTRAINT `calificaciones2_ibfk_1` FOREIGN KEY (`Student`) REFERENCES `tblstudents` (`StudentId`);

--
-- Filtros para la tabla `calificaciones3`
--
ALTER TABLE `calificaciones3`
  ADD CONSTRAINT `calificaciones3_ibfk_1` FOREIGN KEY (`Students`) REFERENCES `tblstudents` (`StudentId`);

--
-- Filtros para la tabla `calificaciones_nota`
--
ALTER TABLE `calificaciones_nota`
  ADD CONSTRAINT `calificaciones_nota_ibfk_1` FOREIGN KEY (`Students`) REFERENCES `tblstudents` (`StudentId`);

--
-- Filtros para la tabla `calificaciones_nota2`
--
ALTER TABLE `calificaciones_nota2`
  ADD CONSTRAINT `calificaciones_nota2_ibfk_1` FOREIGN KEY (`Students`) REFERENCES `tblstudents` (`StudentId`);

--
-- Filtros para la tabla `calificaciones_nota3`
--
ALTER TABLE `calificaciones_nota3`
  ADD CONSTRAINT `calificaciones_nota3_ibfk_1` FOREIGN KEY (`Students`) REFERENCES `tblstudents` (`StudentId`);

--
-- Filtros para la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD CONSTRAINT `password_resets_ibfk_1` FOREIGN KEY (`email`) REFERENCES `docente` (`email`);

--
-- Filtros para la tabla `recuperarestudiante`
--
ALTER TABLE `recuperarestudiante`
  ADD CONSTRAINT `recuperarestudiante_ibfk_1` FOREIGN KEY (`email`) REFERENCES `tblstudents` (`StudentEmail`);

--
-- Filtros para la tabla `student_subjects`
--
ALTER TABLE `student_subjects`
  ADD CONSTRAINT `student_subjects_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `tblstudents` (`StudentId`),
  ADD CONSTRAINT `student_subjects_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `tblsubjects` (`id`);

--
-- Filtros para la tabla `tblasistencia`
--
ALTER TABLE `tblasistencia`
  ADD CONSTRAINT `tblasistencia_ibfk_1` FOREIGN KEY (`id_estudiante`) REFERENCES `tblstudents` (`StudentId`);

--
-- Filtros para la tabla `tblcalificaciones`
--
ALTER TABLE `tblcalificaciones`
  ADD CONSTRAINT `tblcalificaciones_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `tblstudents` (`StudentId`),
  ADD CONSTRAINT `tblcalificaciones_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `tblsubjects` (`id`);

--
-- Filtros para la tabla `tblcalifitrimestral`
--
ALTER TABLE `tblcalifitrimestral`
  ADD CONSTRAINT `tblcalifitrimestral_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `tblstudents` (`StudentId`);

--
-- Filtros para la tabla `tblcalifitrimestralgupal`
--
ALTER TABLE `tblcalifitrimestralgupal`
  ADD CONSTRAINT `tblcalifitrimestralgupal_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `tblstudents` (`StudentId`),
  ADD CONSTRAINT `tblcalifitrimestralgupal_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `tblsubjects` (`id`);

--
-- Filtros para la tabla `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD CONSTRAINT `tblstudents_ibfk_1` FOREIGN KEY (`id_docente`) REFERENCES `docente` (`id`);

--
-- Filtros para la tabla `tblsubjects`
--
ALTER TABLE `tblsubjects`
  ADD CONSTRAINT `tblsubjects_ibfk_1` FOREIGN KEY (`id_docente`) REFERENCES `docente` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
