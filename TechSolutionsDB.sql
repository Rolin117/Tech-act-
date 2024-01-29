CREATE TABLE `tb_empleados` (
  `id_empleado` integer PRIMARY KEY,
  `nombre_empleado` varchar(255) NOT NULL,
  `apellido_empleado` varchar(255) NOT NULL,
  `id_cargo` int,
  `id_departamento` int,
  `salario_empleado` float NOT NULL,
  `fecha_inicio_empleado` date NOT NULL
);

CREATE TABLE `tb_proyectos` (
  `id_proyecto` integer PRIMARY KEY,
  `nombre_proyecto` varchar(255) NOT NULL
);

CREATE TABLE `tb_departamentos` (
  `id_departamento` integer PRIMARY KEY,
  `nombre_departamento` varchar(255) NOT NULL
);

CREATE TABLE `tb_cargos` (
  `id_cargo` integer PRIMARY KEY,
  `nombre_cargo` varchar(255) NOT NULL
);

CREATE TABLE `tb_empresa` (
  `id_empresa` integer PRIMARY KEY,
  `nombre_empresa` varchar(255) NOT NULL,
  `id_proyecto` int,
  `id_empleado` int
);

ALTER TABLE `tb_empresa` ADD FOREIGN KEY (`id_proyecto`) REFERENCES `tb_proyectos` (`id_proyecto`);

ALTER TABLE `tb_empresa` ADD FOREIGN KEY (`id_empleado`) REFERENCES `tb_empleados` (`id_empleado`);

ALTER TABLE `tb_empleados` ADD FOREIGN KEY (`id_departamento`) REFERENCES `tb_departamentos` (`id_departamento`);

ALTER TABLE `tb_empleados` ADD FOREIGN KEY (`id_cargo`) REFERENCES `tb_cargos` (`id_cargo`);
