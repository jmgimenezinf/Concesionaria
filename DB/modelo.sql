/*
Navicat PGSQL Data Transfer

Source Server         : concesionaria
Source Server Version : 80422
Source Host           : localhost:5432
Source Database       : consecionaria
Source Schema         : esquema29-09

Target Server Type    : PGSQL
Target Server Version : 80422
File Encoding         : 65001

Date: 2016-09-29 18:06:58
*/


-- ----------------------------
-- Table structure for Automotor
-- ----------------------------
DROP TABLE IF EXISTS "Automotor";
CREATE TABLE "Automotor" (
"id" int8 NOT NULL,
"chasis" varchar(50) NOT NULL,
"motor" varchar(50) NOT NULL,
"dni_titular" int4 NOT NULL,
"path_img" path,
"kilometraje" int4 NOT NULL,
"marca" varchar(255) NOT NULL,
"modelo" varchar(255) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of Automotor
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for Banco
-- ----------------------------
DROP TABLE IF EXISTS "Banco";
CREATE TABLE "Banco" (
"razon_social" varchar(100) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of Banco
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for Cliente
-- ----------------------------
DROP TABLE IF EXISTS "Cliente";
CREATE TABLE "Cliente" (
"id" int8 NOT NULL,
"dni_persona" int4 NOT NULL,
"reputacion" varchar NOT NULL,
"habilitado" bool DEFAULT true NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of Cliente
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for Coeficiente_Credito_Hipotecario
-- ----------------------------
DROP TABLE IF EXISTS "Coeficiente_Credito_Hipotecario";
CREATE TABLE "Coeficiente_Credito_Hipotecario" (
"razon_social_banco" varchar(100) NOT NULL,
"fecha_actualizacion" date NOT NULL,
"tasa" numeric NOT NULL,
"cuota" int2 NOT NULL,
"coeficiente" numeric(10) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of Coeficiente_Credito_Hipotecario
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for Contacto
-- ----------------------------
DROP TABLE IF EXISTS "Contacto";
CREATE TABLE "Contacto" (
"id" int4 NOT NULL,
"dni_persona" varchar(255) NOT NULL,
"celular" varchar,
"telefono" varchar,
"email" varchar NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of Contacto
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for Cotizacion
-- ----------------------------
DROP TABLE IF EXISTS "Cotizacion";
CREATE TABLE "Cotizacion" (
"fecha_hora_cotizacion" date NOT NULL,
"id_automotor" int8 NOT NULL,
"id_cliente" int4 NOT NULL,
"razon_social_banco" varchar(100) NOT NULL,
"fecha_coeficiente" date NOT NULL,
"capital" money NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of Cotizacion
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for Cuota
-- ----------------------------
DROP TABLE IF EXISTS "Cuota";
CREATE TABLE "Cuota" (
"cuota" int2 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of Cuota
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for Familiar
-- ----------------------------
DROP TABLE IF EXISTS "Familiar";
CREATE TABLE "Familiar"()
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of Familiar
-- ----------------------------
BEGIN;
COMMIT;
