
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";



CREATE TABLE alumno (
  codigo varchar(10) NOT NULL,
  nombre varchar(50) DEFAULT NULL,
  coddepartamento varchar(2) DEFAULT NULL,
  sexo varchar(1) DEFAULT NULL
);


INSERT INTO alumno VALUES('200', 'JJJ', '01', 'M');
INSERT INTO alumno VALUES('300', 'RRR', '03', 'M');
INSERT INTO alumno VALUES('100', 'OOO', '01', 'M');
INSERT INTO alumno VALUES('123', 'MMM', '01', 'F');

-- --------------------------------------------------------


CREATE TABLE flujoproceso(
  codflujo varchar(10) DEFAULT NULL,
  codproceso varchar(10) DEFAULT NULL,
  tipo varchar(1) DEFAULT NULL,
  codprocesonext varchar(10) DEFAULT NULL,
  forumlario varchar(50) DEFAULT NULL,
  codrol varchar(10) DEFAULT NULL
);


INSERT INTO flujoproceso VALUES ('F1', 'P1', 'I', 'P2', 'inicio.php', 'A');
INSERT INTO flujoproceso VALUES ('F1', 'P2', 'P', 'P3', 'registra.php', 'A');
INSERT INTO flujoproceso VALUES ('F1', 'P3', 'Q', NULL, 'aprobado.php', 'K');
INSERT INTO flujoproceso VALUES ('F1', 'P4', 'P', 'P5', 'solicita.php', 'K');
INSERT INTO flujoproceso VALUES ('F1', 'P5', 'P', 'P6', 'documento.php', 'A');
INSERT INTO flujoproceso VALUES ('F1', 'P6', 'Q', NULL, 'cumple.php', 'A');
INSERT INTO flujoproceso VALUES ('F1', 'P7', 'P', 'P8', 'notifica.php', 'K');
INSERT INTO flujoproceso VALUES ('F1', 'P8', 'P', 'P9', 'cantAlumnoReg.php', 'F-R');
INSERT INTO flujoproceso VALUES ('F1', 'P9', 'Q', NULL, 'rechazaProceso.php', 'K');
INSERT INTO flujoproceso VALUES ('F1', 'P10', 'P', 'P11', 'matricula.php', 'A');
INSERT INTO flujoproceso VALUES ('F1', 'P11', 'F', NULL, 'fin.php', 'K');

-- --------------------------------------------------------



CREATE TABLE flujoprocesousuario (
  codtramite varchar(10) DEFAULT NULL,
  codflujo varchar(10) DEFAULT NULL,
  codproceso varchar(10) DEFAULT NULL,
  codusuario varchar(10) DEFAULT NULL,
  estado varchar(2) DEFAULT NULL
);


INSERT INTO flujoprocesousuario VALUES ('02', 'F2', 'P1', 'JJJ', 'P');
INSERT INTO flujoprocesousuario VALUES ('01', 'F1', 'P2', 'JJJ', 'F');
INSERT INTO flujoprocesousuario VALUES ('01', 'F1', 'P4', 'JJJ', 'F');
INSERT INTO flujoprocesousuario VALUES ('03', 'F1', 'P3', 'KKK', 'F');

-- --------------------------------------------------------


CREATE TABLE usuario (
  usuario varchar(20) DEFAULT NULL,
  clave varchar(20) DEFAULT NULL,
  rol varchar(1) DEFAULT NULL
);



INSERT INTO usuario VALUES ('JJJ', '123456', 'A');
INSERT INTO usuario VALUES ('anita', '123456', 'F-R');
INSERT INTO usuario VALUES ('MMM', '123456', 'K');
