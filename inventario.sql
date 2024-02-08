/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80029
 Source Host           : localhost:3306
 Source Schema         : inventario

 Target Server Type    : MySQL
 Target Server Version : 80029
 File Encoding         : 65001

 Date: 07/02/2024 22:55:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for inventario
-- ----------------------------
DROP TABLE IF EXISTS `inventario`;
CREATE TABLE `inventario`  (
  `idInventario` int(0) NOT NULL,
  `idProductoFk` int(0) NULL DEFAULT NULL,
  `cantidad` int(0) NULL DEFAULT NULL,
  `fecRegistro` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`idInventario`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for producto
-- ----------------------------
DROP TABLE IF EXISTS `producto`;
CREATE TABLE `producto`  (
  `idProducto` int(0) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL,
  `uniPrecio` decimal(10, 2) NULL DEFAULT NULL,
  `idProveedorFk` int(0) NULL DEFAULT NULL,
  `fecRegistro` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`idProducto`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for proveedor
-- ----------------------------
DROP TABLE IF EXISTS `proveedor`;
CREATE TABLE `proveedor`  (
  `idProveedor` int(0) NOT NULL,
  `razonSocial` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `direccion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `telefono` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `fecRegistro` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`idProveedor`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
