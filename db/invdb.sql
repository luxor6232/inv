-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-11-2023 a las 04:30:05
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `invdb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accesoriosinsumos`
--

CREATE TABLE `accesoriosinsumos` (
  `ID` int(11) NOT NULL,
  `NombreAccesorio` varchar(100) DEFAULT NULL,
  `Descripcion` varchar(200) DEFAULT NULL,
  `PrecioCompra` decimal(10,2) DEFAULT NULL,
  `PrecioVenta` decimal(10,2) DEFAULT NULL,
  `CantidadInventario` int(11) DEFAULT NULL,
  `ProveedorID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `accesoriosinsumos`
--

INSERT INTO `accesoriosinsumos` (`ID`, `NombreAccesorio`, `Descripcion`, `PrecioCompra`, `PrecioVenta`, `CantidadInventario`, `ProveedorID`) VALUES
(1, 'Llave Inglesa', 'Herramienta ajustable para reparaciones', 10.00, 20.00, 50, 1),
(2, 'Linterna LED', 'Linterna recargable de alta luminosidad', 15.00, 30.00, 30, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `ApellidoPaterno` varchar(100) DEFAULT NULL,
  `ApellidoMaterno` varchar(100) DEFAULT NULL,
  `Rut` varchar(20) DEFAULT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`ID`, `Nombre`, `ApellidoPaterno`, `ApellidoMaterno`, `Rut`, `Telefono`, `Email`) VALUES
(1, 'Juan', 'Pérez', 'González', '12.345.678-9', '987654321', 'juan@example.com'),
(2, 'María', 'García', 'López', '11.223.334-4', '876543210', 'maria@example.com'),
(3, 'Juan', 'Pérez', 'González', '12.345.678-9', '987654321', 'juan@example.com'),
(4, 'María', 'García', 'López', '11.223.334-4', '876543210', 'maria@example.com'),
(5, 'Juan', 'Pérez', 'González', '123456789-0', '987654321', 'juan@example.com'),
(6, 'María', 'García', 'López', '112233344-4', '876543210', 'maria@example.com'),
(7, 'Juan', 'Pérez', 'González', '123456789-0', '987654321', 'juan@example.com'),
(8, 'María', 'García', 'López', '112233344-4', '876543210', 'maria@example.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `itemsvendidos`
--

CREATE TABLE `itemsvendidos` (
  `ID` int(11) NOT NULL,
  `VentaID` int(11) DEFAULT NULL,
  `ProductoID` int(11) DEFAULT NULL,
  `CantidadVendida` int(11) DEFAULT NULL,
  `VehiculoID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `itemsvendidos`
--

INSERT INTO `itemsvendidos` (`ID`, `VentaID`, `ProductoID`, `CantidadVendida`, `VehiculoID`) VALUES
(8, 3, 2, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `ID` int(11) NOT NULL,
  `NombreProducto` varchar(100) DEFAULT NULL,
  `Descripcion` varchar(200) DEFAULT NULL,
  `PrecioCompra` decimal(10,2) DEFAULT NULL,
  `PrecioVenta` decimal(10,2) DEFAULT NULL,
  `CantidadInventario` int(11) DEFAULT NULL,
  `ProveedorID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`ID`, `NombreProducto`, `Descripcion`, `PrecioCompra`, `PrecioVenta`, `CantidadInventario`, `ProveedorID`) VALUES
(1, 'Aceite de Motor', 'Aceite sintético para motores', 20.00, 40.00, 100, 1),
(2, 'Filtro de Aire', 'Filtro de aire de alta calidad', 5.00, 12.00, 150, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `ID` int(11) NOT NULL,
  `NombreEmpresa` varchar(100) DEFAULT NULL,
  `Direccion` varchar(200) DEFAULT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`ID`, `NombreEmpresa`, `Direccion`, `Telefono`, `Email`) VALUES
(1, 'Proveedor A', 'Calle 123, Ciudad A', '1234567890', 'proveedora@example.com'),
(2, 'Proveedor B', 'Calle 456, Ciudad B', '9876543210', 'proveedorb@example.com'),
(3, 'Proveedor A', 'Calle 123, Ciudad A', '1234567890', 'proveedora@example.com'),
(4, 'Proveedor B', 'Calle 456, Ciudad B', '9876543210', 'proveedorb@example.com'),
(5, 'Proveedor A', 'Calle 123, Ciudad A', '1234567890', 'proveedora@example.com'),
(6, 'Proveedor B', 'Calle 456, Ciudad B', '9876543210', 'proveedorb@example.com'),
(7, 'Proveedor A', 'Calle 123, Ciudad A', '1234567890', 'proveedora@example.com'),
(8, 'Proveedor B', 'Calle 456, Ciudad B', '9876543210', 'proveedorb@example.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `ID` int(11) NOT NULL,
  `NombreRol` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`ID`, `NombreRol`) VALUES
(1, 'Cliente'),
(2, 'Administrador'),
(3, 'Trabajador'),
(4, 'Cliente'),
(5, 'Administrador'),
(6, 'Trabajador'),
(7, 'Cliente'),
(8, 'Administrador'),
(9, 'Trabajador'),
(10, 'Cliente'),
(11, 'Administrador'),
(12, 'Trabajador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajadores`
--

CREATE TABLE `trabajadores` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `ApellidoPaterno` varchar(100) DEFAULT NULL,
  `ApellidoMaterno` varchar(100) DEFAULT NULL,
  `Rut` varchar(20) DEFAULT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Direccion` varchar(200) DEFAULT NULL,
  `UsuarioID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `trabajadores`
--

INSERT INTO `trabajadores` (`ID`, `Nombre`, `ApellidoPaterno`, `ApellidoMaterno`, `Rut`, `Telefono`, `Email`, `Direccion`, `UsuarioID`) VALUES
(1, 'Ana', 'Sánchez', 'Martínez', '15.678.901-2', '765432109', 'ana@example.com', 'Av. Principal 123, Ciudad C', 3),
(2, 'Ana', 'Sánchez', 'Martínez', '15.678.901-2', '765432109', 'ana@example.com', 'Av. Principal 123, Ciudad C', 3),
(3, 'Ana', 'Sánchez', 'Martínez', '15678901-2', '765432109', 'ana@example.com', 'Av. Principal 123, Ciudad C', 3),
(4, 'Ana', 'Sánchez', 'Martínez', '15678901-2', '765432109', 'ana@example.com', 'Av. Principal 123, Ciudad C', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID` int(11) NOT NULL,
  `NombreUsuario` varchar(50) DEFAULT NULL,
  `Contrasena` varchar(100) DEFAULT NULL,
  `RolID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID`, `NombreUsuario`, `Contrasena`, `RolID`) VALUES
(1, 'cliente1', 'contrasena_cliente1', 1),
(2, 'admin', 'contrasena_admin', 2),
(3, 'trabajador1', 'contrasena_trabajador1', 3),
(4, 'cliente1', 'contrasena_cliente1', 1),
(5, 'admin', 'contrasena_admin', 2),
(6, 'trabajador1', 'contrasena_trabajador1', 3),
(7, 'cliente1', 'contrasena_cliente1', 1),
(8, 'admin', 'contrasena_admin', 2),
(9, 'trabajador1', 'contrasena_trabajador1', 3),
(10, 'cliente1', 'contrasena_cliente1', 1),
(11, 'admin', 'contrasena_admin', 2),
(12, 'trabajador1', 'contrasena_trabajador1', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `ID` int(11) NOT NULL,
  `Marca` varchar(50) DEFAULT NULL,
  `Modelo` varchar(50) DEFAULT NULL,
  `Anio` int(11) DEFAULT NULL,
  `NumeroChasis` varchar(50) DEFAULT NULL,
  `Cilindrada` varchar(20) DEFAULT NULL,
  `Combustible` varchar(20) DEFAULT NULL,
  `ClienteID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`ID`, `Marca`, `Modelo`, `Anio`, `NumeroChasis`, `Cilindrada`, `Combustible`, `ClienteID`) VALUES
(1, 'Toyota', 'Corolla', 2022, '1234567890', '1600cc', 'Gasolina', 1),
(2, 'Ford', 'Focus', 2021, '0987654321', '1400cc', 'Diesel', 2),
(3, 'Toyota', 'Corolla', 2022, '1234567890', '1600cc', 'Gasolina', 1),
(4, 'Ford', 'Focus', 2021, '0987654321', '1400cc', 'Diesel', 2),
(5, 'Toyota', 'Corolla', 2022, '1234567890', '1600cc', 'Gasolina', 1),
(6, 'Ford', 'Focus', 2021, '0987654321', '1400cc', 'Diesel', 2),
(7, 'Toyota', 'Corolla', 2022, '1234567890', '1600cc', 'Gasolina', 1),
(8, 'Ford', 'Focus', 2021, '0987654321', '1400cc', 'Diesel', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `ID` int(11) NOT NULL,
  `TrabajadorID` int(11) DEFAULT NULL,
  `FechaVenta` date DEFAULT NULL,
  `TotalVenta` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`ID`, `TrabajadorID`, `FechaVenta`, `TotalVenta`) VALUES
(3, 3, '2023-08-17', 120.00),
(4, 3, '2023-08-18', 50.00),
(5, 3, '2023-08-17', 120.00),
(6, 3, '2023-08-18', 50.00),
(7, 3, '2023-08-17', 120.00),
(8, 3, '2023-08-18', 50.00),
(9, 3, '2023-08-17', 120.00),
(10, 3, '2023-08-18', 50.00);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `accesoriosinsumos`
--
ALTER TABLE `accesoriosinsumos`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ProveedorID` (`ProveedorID`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `itemsvendidos`
--
ALTER TABLE `itemsvendidos`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `VentaID` (`VentaID`),
  ADD KEY `ProductoID` (`ProductoID`),
  ADD KEY `VehiculoID` (`VehiculoID`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ProveedorID` (`ProveedorID`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `trabajadores`
--
ALTER TABLE `trabajadores`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UsuarioID` (`UsuarioID`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RolID` (`RolID`);

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClienteID` (`ClienteID`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `TrabajadorID` (`TrabajadorID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `accesoriosinsumos`
--
ALTER TABLE `accesoriosinsumos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `itemsvendidos`
--
ALTER TABLE `itemsvendidos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `trabajadores`
--
ALTER TABLE `trabajadores`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `accesoriosinsumos`
--
ALTER TABLE `accesoriosinsumos`
  ADD CONSTRAINT `accesoriosinsumos_ibfk_1` FOREIGN KEY (`ProveedorID`) REFERENCES `proveedores` (`ID`);

--
-- Filtros para la tabla `itemsvendidos`
--
ALTER TABLE `itemsvendidos`
  ADD CONSTRAINT `itemsvendidos_ibfk_1` FOREIGN KEY (`VentaID`) REFERENCES `ventas` (`ID`),
  ADD CONSTRAINT `itemsvendidos_ibfk_2` FOREIGN KEY (`ProductoID`) REFERENCES `productos` (`ID`),
  ADD CONSTRAINT `itemsvendidos_ibfk_3` FOREIGN KEY (`VehiculoID`) REFERENCES `vehiculos` (`ID`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`ProveedorID`) REFERENCES `proveedores` (`ID`);

--
-- Filtros para la tabla `trabajadores`
--
ALTER TABLE `trabajadores`
  ADD CONSTRAINT `trabajadores_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `usuarios` (`ID`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`RolID`) REFERENCES `roles` (`ID`);

--
-- Filtros para la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD CONSTRAINT `vehiculos_ibfk_1` FOREIGN KEY (`ClienteID`) REFERENCES `clientes` (`ID`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`TrabajadorID`) REFERENCES `trabajadores` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
