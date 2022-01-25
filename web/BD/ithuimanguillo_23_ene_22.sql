/*
 Navicat Premium Data Transfer

 Source Server         : MariaDB
 Source Server Type    : MariaDB
 Source Server Version : 100510
 Source Host           : localhost:3306
 Source Schema         : ithuimanguillo

 Target Server Type    : MariaDB
 Target Server Version : 100510
 File Encoding         : 65001

 Date: 23/01/2022 00:46:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for actas_calificaciones
-- ----------------------------
DROP TABLE IF EXISTS `actas_calificaciones`;
CREATE TABLE `actas_calificaciones`  (
  `idacta_cal` int(11) NOT NULL AUTO_INCREMENT,
  `idgrupo` int(11) NOT NULL,
  `idestudiante` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `idopcion_curso` int(11) NULL DEFAULT NULL,
  `pri_opt` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `seg_opt` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fecha_registro` datetime NULL DEFAULT current_timestamp,
  `fecha_actualizacion` datetime NULL DEFAULT current_timestamp,
  `cve_estatus` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'VIG',
  PRIMARY KEY (`idacta_cal`) USING BTREE,
  INDEX `fk_actas_calificaciones_grupos_estudiantes1_idx`(`idestudiante`, `idgrupo`) USING BTREE,
  INDEX `fk_actas_calificaciones_cat_opcion_curso1_idx`(`idopcion_curso`) USING BTREE,
  CONSTRAINT `fk_actas_calificaciones_cat_opcion_curso1` FOREIGN KEY (`idopcion_curso`) REFERENCES `cat_opcion_curso` (`idopcion_curso`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_actas_calificaciones_grupos_estudiantes1` FOREIGN KEY (`idestudiante`, `idgrupo`) REFERENCES `grupos_estudiantes` (`idestudiante`, `idgrupo`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1438 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of actas_calificaciones
-- ----------------------------
INSERT INTO `actas_calificaciones` VALUES (1, 1, '181240027', 1, '', '90', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (2, 1, '181240015', 1, '96', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (3, 1, '181240031', 1, '95', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (4, 1, '181240033', 1, '93', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (5, 1, '181240050', 1, '89', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (6, 1, '181240040', 1, '95', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (7, 1, '181240043', 1, '', '85', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (8, 1, '181240070', 1, '', '90', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (9, 1, '181240058', 1, '94', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (10, 1, '181240060', 1, '', '76', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (11, 1, '181240016', 1, '93', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (12, 1, '181240069', 1, '', '80', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (13, 1, '181240041', 1, '', '75', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (14, 1, '191240063', 2, '', 'NA', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (15, 1, '151240043', 1, '81', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (16, 1, '171240001', 1, '', 'NA', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (17, 2, '201240071', 1, '', 'NA', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (18, 2, '201240074', 1, '93', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (19, 2, '201240077', 1, '94', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (20, 2, '201240108', 1, '', '88', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (21, 2, '201240080', 1, '91', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (22, 2, '201240081', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (23, 2, '201240083', 1, '', '81', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (24, 2, '201240084', 1, '', '81', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (25, 2, '201240133', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (26, 2, '201240011', 1, '', '76', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (27, 2, '201240090', 1, '93', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (28, 2, '201240092', 1, '91', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (29, 2, '201240094', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (30, 2, '201240095', 1, '85', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (31, 2, '201240096', 1, '', '79', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (32, 2, '201240097', 1, '97', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (33, 2, '201240098', 1, '86', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (34, 2, '201240100', 1, '', '86', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (35, 2, '201240021', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (36, 3, '191240001', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (37, 3, '191240018', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (38, 3, '191240002', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (39, 3, '191240006', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (40, 3, '191240007', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (41, 3, '191240009', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (42, 3, '191240020', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (43, 3, '191240010', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (44, 3, '191240011', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (45, 3, '191240014', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (46, 3, '191240016', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (47, 3, '191240017', 1, '73', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (48, 3, '191240021', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (49, 3, '191240022', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (50, 3, '191240028', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (51, 3, '191240029', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (52, 3, '181240028', 2, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (53, 3, '181240059', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (54, 3, '181240074', 2, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (55, 4, '171240003', 1, '87', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (56, 4, '171240037', 1, '93', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (57, 4, '171240028', 1, '73', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (58, 4, '171240001', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (59, 4, '171240012', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (60, 4, '171240002', 1, '97', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (61, 4, '161240030', 1, '92', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (62, 4, '161240033', 1, '94', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (63, 5, '171240003', 1, '86', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (64, 5, '171240037', 1, '94', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (65, 5, '171240028', 1, '78', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (66, 5, '171240012', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (67, 5, '171240002', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (68, 5, '161240002', 1, '93', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (69, 6, '181240027', 1, '94', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (70, 6, '181240015', 1, '94', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (71, 6, '181240031', 1, '92', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (72, 6, '181240033', 1, '95', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (73, 6, '181240050', 1, '87', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (74, 6, '181240040', 1, '95', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (75, 6, '181240043', 1, '95', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (76, 6, '181240058', 1, '92', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (77, 6, '181240060', 1, '87', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (78, 6, '181240016', 1, '89', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (79, 6, '181240069', 1, '85', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (80, 6, '181240041', 1, '86', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (81, 6, '161240030', 2, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (82, 7, '191240049', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (83, 7, '191240050', 1, '94', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (84, 7, '191240051', 1, '', '83', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (85, 7, '191240052', 1, '92', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (86, 7, '191240055', 1, '86', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (87, 7, '191240058', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (88, 8, '201240071', 1, '80', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (89, 8, '201240074', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (90, 8, '201240077', 1, '96', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (91, 8, '201240108', 1, '92', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (92, 8, '201240080', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (93, 8, '201240081', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (94, 8, '201240083', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (95, 8, '201240084', 1, '94', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (96, 8, '201240133', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (97, 8, '201240011', 1, '83', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (98, 8, '201240090', 1, '91', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (99, 8, '201240092', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (100, 8, '201240094', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (101, 8, '201240095', 1, '93', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (102, 8, '201240096', 1, '88', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (103, 8, '201240097', 1, '97', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (104, 8, '201240098', 1, '94', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (105, 8, '201240100', 1, '97', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (106, 8, '201240021', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (107, 9, '191240030', 1, '89', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (108, 9, '191240068', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (109, 9, '191240064', 1, '87', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (110, 9, '191240013', 1, '92', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (111, 9, '191240035', 1, '93', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (112, 9, '191240036', 1, '77', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (113, 9, '191240038', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (114, 9, '191240039', 1, '92', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (115, 9, '191240041', 1, '91', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (116, 9, '191240045', 1, '93', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (117, 9, '191240023', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (118, 9, '191240044', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (119, 9, '191240061', 1, '86', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (120, 9, '191240031', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (121, 9, '191240043', 1, '87', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (122, 9, '191240047', 1, '92', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (123, 9, '181240060', 1, '85', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (124, 9, '181240041', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (125, 9, '181240070', 1, '88', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (126, 9, '191240033', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (127, 10, '181240027', 1, '94', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (128, 10, '181240015', 1, '96', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (129, 10, '181240031', 1, '91', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (130, 10, '181240033', 1, '92', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (131, 10, '181240050', 1, '88', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (132, 10, '181240040', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (133, 10, '181240043', 1, '84', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (134, 10, '181240070', 1, '86', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (135, 10, '181240058', 1, '94', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (136, 10, '181240060', 1, '89', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (137, 10, '181240016', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (138, 10, '181240069', 1, '87', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (139, 10, '181240041', 1, '85', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (140, 10, '191240063', 2, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (141, 10, '171240003', 1, '88', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (142, 10, '171240001', 2, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (143, 10, 'B156P1225', 1, '94', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (144, 11, '201240071', 1, '', 'NA', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (145, 11, '201240074', 1, '94', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (146, 11, '201240077', 1, '', '88', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (147, 11, '201240108', 1, '', '91', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (148, 11, '201240080', 1, '93', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (149, 11, '201240081', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (150, 11, '201240083', 1, '', '84', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (151, 11, '201240084', 1, '84', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (152, 11, '201240133', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (153, 11, '201240011', 1, '', '76', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (154, 11, '201240090', 1, '', '85', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (155, 11, '201240092', 1, '93', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (156, 11, '201240094', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (157, 11, '201240095', 1, '92', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (158, 11, '201240096', 1, '', '89', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (159, 11, '201240097', 1, '97', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (160, 11, '201240098', 1, '89', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (161, 11, '201240100', 1, '94', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (162, 11, '201240021', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (163, 11, '191240036', 2, '', 'NA', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (164, 11, '191240068', 2, '', 'NA', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (165, 11, '171240001', 2, '', 'NA', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (166, 11, '191240063', 2, '', '83', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (167, 12, '181240027', 1, '', '91', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (168, 12, '181240015', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (169, 12, '181240031', 1, '96', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (170, 12, '181240033', 1, '94', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (171, 12, '181240050', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (172, 12, '181240040', 1, '97', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (173, 12, '181240043', 1, '', '90', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (174, 12, '181240058', 1, '', '90', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (175, 12, '181240060', 1, '', 'NA', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (176, 12, '181240016', 1, '92', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (177, 12, '181240069', 1, '', '86', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (178, 12, '181240041', 1, '', 'NA', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (179, 12, '191240063', 1, '', 'NA', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (180, 12, '171240028', 1, '', '88', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (181, 12, '161240002', 1, '', '83', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (182, 12, '161240039', 1, '', '92', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (183, 12, '161240030', 1, '', '87', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (184, 12, '161240033', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (185, 13, '171240003', 1, '87', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (186, 13, '171240037', 1, '82', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (187, 13, '171240028', 1, '82', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (188, 13, '171240001', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (189, 13, '171240012', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (190, 13, '171240002', 1, '92', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (191, 13, '181240027', 1, '86', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (192, 13, '181240015', 1, '95', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (193, 13, '181240031', 1, '95', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (194, 13, '181240033', 1, '91', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (195, 13, '181240050', 1, '89', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (196, 13, '181240040', 1, '89', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (197, 13, '181240043', 1, '87', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (198, 13, '181240070', 1, '88', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (199, 13, '181240058', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (200, 13, '181240060', 1, '82', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (201, 13, '181240016', 1, '95', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (202, 13, '181240069', 1, '88', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (203, 13, '191240063', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (204, 13, '161240002', 1, '86', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (205, 14, '171240003', 1, '88', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (206, 14, '171240037', 1, '81', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (207, 14, '171240028', 1, '83', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (208, 14, '171240012', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (209, 14, '171240002', 1, '95', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (210, 14, '161240039', 1, '89', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (211, 15, '191240001', 1, '70', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (212, 15, '191240018', 1, '99', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (213, 15, '191240002', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (214, 15, '191240006', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (215, 15, '191240007', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (216, 15, '191240009', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (217, 15, '191240020', 1, '99', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (218, 15, '191240010', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (219, 15, '191240011', 1, '99', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (220, 15, '191240014', 1, '99', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (221, 15, '191240016', 1, '99', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (222, 15, '191240017', 1, '80', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (223, 15, '191240021', 1, '70', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (224, 15, '191240022', 1, '70', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (225, 15, '191240024', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (226, 15, '191240025', 1, '70', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (227, 15, '191240028', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (228, 15, '191240029', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (229, 15, '181240028', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (230, 16, '181240007', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (231, 16, '181240012', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (232, 16, '181240023', 1, '85', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (233, 16, '181240052', 1, '99', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (234, 16, '181240073', 1, '97', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (235, 16, '181240004', 1, '70', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (236, 16, '181240019', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (237, 16, '181240066', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (238, 16, '181240018', 1, '95', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (239, 16, '181240047', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (240, 16, '181240055', 1, '85', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (241, 16, '181240044', 1, '85', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (242, 16, '181240026', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (243, 16, '181240020', 1, '95', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (244, 16, '181240045', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (245, 16, '181240082', 1, '93', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (246, 16, '181240008', 1, '95', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (247, 16, '181240046', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (248, 16, '171240020', 2, '70', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (249, 16, '171240016', 2, '88', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (250, 16, '171240008', 2, '70', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (251, 16, '171240014', 2, '70', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (252, 16, '161240024', 2, '70', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (253, 16, '171240032', 2, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (254, 17, '201240129', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (255, 17, '201240132', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (256, 17, '201240007', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (257, 17, '201240137', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (258, 17, '201240073', 1, '70', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (259, 17, '201240112', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (260, 17, '201240079', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (261, 17, '201240113', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (262, 17, '201240119', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (263, 17, '201240018', 1, '85', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (264, 17, '201240130', 1, '70', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (265, 17, '201240120', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (266, 17, '201240117', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (267, 17, '201240124', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (268, 17, '211240011', 1, '70', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (269, 17, '211240004', 1, '70', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (270, 17, '211240003', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (271, 17, '211240010', 1, '70', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (272, 17, '211240008', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (273, 17, '211240013', 1, '70', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (274, 18, '201240129', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (275, 18, '201240132', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (276, 18, '201240007', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (277, 18, '201240137', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (278, 18, '201240073', 1, '70', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (279, 18, '201240112', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (280, 18, '201240079', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (281, 18, '201240113', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (282, 18, '201240119', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (283, 18, '201240018', 1, '85', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (284, 18, '201240130', 1, '70', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (285, 18, '201240120', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (286, 18, '201240117', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (287, 18, '201240124', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (288, 18, '211240011', 1, '70', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (289, 18, '211240004', 1, '70', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (290, 18, '211240003', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (291, 18, '211240010', 1, '70', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (292, 18, '211240008', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (293, 18, '211240013', 1, '70', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (294, 19, '201240071', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (295, 19, '201240074', 1, '84', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (296, 19, '201240077', 1, '82', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (297, 19, '201240108', 1, '87', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (298, 19, '201240080', 1, '79', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (299, 19, '201240081', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (300, 19, '201240083', 1, '83', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (301, 19, '201240084', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (302, 19, '201240133', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (303, 19, '201240011', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (304, 19, '201240090', 1, '71', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (305, 19, '201240092', 1, '82', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (306, 19, '201240094', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (307, 19, '201240095', 1, '77', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (308, 19, '201240096', 1, '', '70', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (309, 19, '201240097', 1, '87', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (310, 19, '201240098', 1, '', '73', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (311, 19, '201240100', 1, '84', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (312, 19, '201240021', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (313, 19, '191240068', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (314, 19, '191240038', 1, '', '70', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (315, 20, '191240001', 1, '', '70', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (316, 20, '191240018', 1, '', '70', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (317, 20, '191240002', 1, '', '72', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (318, 20, '191240006', 1, '80', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (319, 20, '191240007', 1, '', '76', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (320, 20, '191240009', 1, '', '70', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (321, 20, '191240020', 1, '81', '81', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (322, 20, '191240010', 1, '', '77', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (323, 20, '191240011', 1, '', '70', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (324, 20, '191240014', 1, '', '70', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (325, 20, '191240015', 1, '', '70', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (326, 20, '191240016', 1, '', '70', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (327, 20, '191240017', 1, '', '74', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (328, 20, '191240021', 1, '', '70', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (329, 20, '191240022', 1, '', 'NA', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (330, 20, '191240024', 1, '', 'NA', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (331, 20, '191240025', 1, '', 'NA', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (332, 20, '191240028', 1, '', '90', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (333, 20, '191240029', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (334, 20, '181240028', 2, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (335, 20, '181240074', 2, '', 'NA', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (336, 20, '181240009', 2, '', '70', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (337, 20, '161240013', 2, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (338, 20, '161240021', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (339, 21, '191240049', 1, '85', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (340, 21, '191240050', 1, '85', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (341, 21, '191240051', 1, '85', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (342, 21, '191240052', 1, '85', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (343, 21, '191240055', 1, '85', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (344, 21, '191240058', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (345, 22, '191240030', 1, '91', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (346, 22, '191240033', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (347, 22, '191240064', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (348, 22, '191240013', 1, '93', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (349, 22, '191240035', 1, '94', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (350, 22, '191240036', 1, '', 'NA', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (351, 22, 'B156P1225', 1, '79', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (352, 22, '191240038', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (353, 22, '191240039', 1, '93', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (354, 22, '191240041', 1, '91', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (355, 22, '191240045', 1, '89', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (356, 22, '191240023', 1, '89', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (357, 22, '191240044', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (358, 22, '191240061', 1, '', '88', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (359, 22, '191240031', 1, '', 'NA', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (360, 22, '191240043', 1, '', '90', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (361, 22, '191240047', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (362, 23, '201240003', 1, '', '80', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (363, 23, '201240004', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (364, 23, '201240008', 1, '88', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (365, 23, '201240009', 1, '', '70', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (366, 23, '201240012', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (367, 23, '201240013', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (368, 23, '201240014', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (369, 23, '201240015', 1, '', '70', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (370, 23, '201240016', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (371, 23, '201240019', 1, '74', '74', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (372, 23, '201240128', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (373, 23, '201240022', 1, '94', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (374, 23, '201240023', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (375, 23, '191240049', 2, '76', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (376, 24, '201240034', 1, '97', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (377, 24, '201240048', 1, '97', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (378, 24, '201240052', 1, '97', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (379, 24, '201240126', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (380, 24, '201240053', 1, '87', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (381, 24, '201240006', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (382, 24, '201240055', 1, '93', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (383, 24, '201240056', 1, '85', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (384, 24, '201240058', 1, '75', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (385, 24, '201240061', 1, '93', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (386, 24, '201240066', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (387, 24, '201240067', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (388, 24, '201240068', 1, '97', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (389, 24, '201240069', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (390, 24, '211240001', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (391, 24, '211240002', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (392, 24, '211240005', 1, '73', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (393, 24, '211240014', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (394, 24, '211240006', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (395, 24, '211240007', 1, '97', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (396, 24, '211240009', 1, '97', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (397, 24, '191240024', 2, '73', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (398, 24, '191240022', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (399, 24, '181240074', 2, '80', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (400, 24, '181240009', 2, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (401, 24, '191240015', 1, '93', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (402, 25, '201240071', 1, '83', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (403, 25, '201240074', 1, '97', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (404, 25, '201240077', 1, '97', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (405, 25, '201240108', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (406, 25, '201240080', 1, '97', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (407, 25, '201240081', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (408, 25, '201240083', 1, '83', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (409, 25, '201240084', 1, '87', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (410, 25, '201240133', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (411, 25, '201240011', 1, '80', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (412, 25, '201240090', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (413, 25, '201240092', 1, '97', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (414, 25, '201240094', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (415, 25, '201240095', 1, '97', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (416, 25, '201240096', 1, '87', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (417, 25, '201240097', 1, '92', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (418, 25, '201240098', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (419, 25, '201240100', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (420, 25, '201240021', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (421, 25, 'B156P1225', 1, '87', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (422, 26, '201240129', 1, '92', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (423, 26, '201240132', 1, '84', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (424, 26, '201240007', 1, '80', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (425, 26, '201240137', 1, '80', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (426, 26, '201240073', 1, 'N/A', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (427, 26, '201240112', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (428, 26, '201240079', 1, 'N/A', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (429, 26, '201240113', 1, '74', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (430, 26, '201240119', 1, '75', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (431, 26, '201240018', 1, 'N/A', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (432, 26, '201240130', 1, 'N/A', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (433, 26, '201240120', 1, '83', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (434, 26, '201240117', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (435, 26, '201240124', 1, '75', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (436, 26, '211240011', 1, 'N/A', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (437, 26, '211240004', 1, '78', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (438, 26, '211240003', 1, '95', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (439, 26, '211240010', 1, 'N/A', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (440, 26, '211240013', 1, 'N/A', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (441, 26, '211240008', 1, '78', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (442, 27, '171240020', 1, 'N/A', '80', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (443, 27, '171240032', 1, '93', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (444, 27, '171240046', 1, '92', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (445, 27, '171240009', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (446, 27, '171240016', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (447, 27, '171240017', 1, '92', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (448, 27, '171240044', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (449, 27, '171240015', 1, '92', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (450, 27, '151240020', 1, 'N/A', 'N/A', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (451, 27, '171240008', 1, '95', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (452, 27, '171240014', 1, 'N/A', '80', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (453, 27, '171240004', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (454, 28, '171240020', 1, '85', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (455, 28, '171240032', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (456, 28, '171240046', 1, '93', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (457, 28, '171240009', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (458, 28, '171240016', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (459, 28, '171240017', 1, '95', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (460, 28, '171240044', 1, '94', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (461, 28, '171240015', 1, '95', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (462, 28, '171240008', 1, '95', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (463, 28, '161240031', 1, '92', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (464, 28, '171240014', 1, '85', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (465, 28, '171240004', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (466, 29, '201240071', 1, '70', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (467, 29, '201240074', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (468, 29, '201240077', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (469, 29, '201240108', 1, '80', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (470, 29, '201240080', 1, '95', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (471, 29, '201240081', 1, 'N/A', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (472, 29, '201240083', 1, '92', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (473, 29, '201240084', 1, '85', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (474, 29, '201240133', 1, 'N/A', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (475, 29, '201240011', 1, '70', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (476, 29, '201240090', 1, '95', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (477, 29, '201240092', 1, '94', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (478, 29, '201240094', 1, 'N/A', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (479, 29, '201240095', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (480, 29, '201240096', 1, '85', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (481, 29, '201240097', 1, '93', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (482, 29, '201240098', 1, '85', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (483, 29, '201240100', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (484, 29, '201240021', 1, 'N/A', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (485, 30, '181240001', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (486, 30, '181240068', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (487, 30, '181240002', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (488, 30, '181240007', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (489, 30, '181240012', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (490, 30, '181240023', 1, '80', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (491, 30, '181240052', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (492, 30, '181240073', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (493, 30, '181240013', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (494, 30, '181240004', 1, '70', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (495, 30, '181240019', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (496, 30, '181240066', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (497, 30, '181240018', 1, '85', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (498, 30, '181240047', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (499, 30, '181240055', 1, '80', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (500, 30, '181240044', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (501, 30, '181240026', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (502, 30, '181240020', 1, '80', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (503, 30, '181240045', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (504, 30, '181240082', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (505, 30, '181240008', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (506, 30, '181240046', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (507, 30, '161240031', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (508, 31, '201240034', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (509, 31, '201240048', 1, '70', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (510, 31, '201240052', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (511, 31, '201240126', 1, '80', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (512, 31, '201240053', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (513, 31, '201240006', 1, '70', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (514, 31, '201240055', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (515, 31, '201240056', 1, '70', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (516, 31, '201240058', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (517, 31, '201240061', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (518, 31, '201240066', 1, '70', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (519, 31, '201240067', 1, '70', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (520, 31, '201240068', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (521, 31, '201240069', 1, '70', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (522, 31, '211240001', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (523, 31, '211240002', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (524, 31, '211240005', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (525, 31, '211240006', 1, '70', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (526, 31, '211240007', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (527, 31, '211240009', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (528, 32, '191240030', 1, '70', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (529, 32, '191240033', 1, '85', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (530, 32, '191240068', 1, '70', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (531, 32, '191240064', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (532, 32, '191240013', 1, '85', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (533, 32, '191240035', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (534, 32, '191240036', 1, '85', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (535, 32, '191240038', 1, '70', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (536, 32, '191240039', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (537, 32, '191240041', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (538, 32, '191240045', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (539, 32, '191240023', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (540, 32, '191240044', 1, '85', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (541, 32, '191240061', 1, '80', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (542, 32, '191240031', 1, '70', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (543, 32, '191240043', 1, '85', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (544, 32, '191240047', 1, '80', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (545, 32, 'B156P1225', 1, '80', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (546, 33, '201240034', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (547, 33, '201240048', 1, '99', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (548, 33, '201240052', 1, '99', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (549, 33, '211240014', 1, '88', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (550, 33, '201240126', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (551, 33, '201240053', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (552, 33, '201240006', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (553, 33, '201240055', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (554, 33, '201240056', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (555, 33, '201240058', 1, '89', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (556, 33, '201240061', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (557, 33, '201240066', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (558, 33, '201240067', 1, '75', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (559, 33, '201240068', 1, '94', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (560, 33, '201240069', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (561, 33, '211240001', 1, '82', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (562, 33, '211240002', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (563, 33, '211240005', 1, '87', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (564, 33, '211240006', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (565, 33, '211240007', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (566, 33, '211240009', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (567, 33, '191240024', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (568, 34, '191240001', 1, '84', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (569, 34, '191240018', 1, '94', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (570, 34, '191240002', 1, '94', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (571, 34, '191240006', 1, '88', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (572, 34, '191240007', 1, '92', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (573, 34, '191240009', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (574, 34, '191240020', 1, '92', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (575, 34, '191240010', 1, '88', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (576, 34, '191240011', 1, '94', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (577, 34, '191240014', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (578, 34, '191240016', 1, '94', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (579, 34, '191240017', 1, '88', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (580, 34, '191240021', 1, '89', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (581, 34, '191240025', 1, '', 'NA', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (582, 34, '191240028', 1, '97', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (583, 34, '191240029', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (584, 34, '181240068', 1, '72', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (585, 34, '181240002', 1, '89', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (586, 34, '181240013', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (587, 34, '181240028', 1, '', '70', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (588, 34, '191240024', 1, '84', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (589, 34, '181240001', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (590, 34, '181240059', 1, '', 'NA', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (591, 34, '181240008', 1, '89', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (592, 35, '191240001', 1, '', '80', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (593, 35, '191240018', 1, '91', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (594, 35, '191240002', 1, '92', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (595, 35, '191240006', 1, '86', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (596, 35, '191240007', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (597, 35, '191240009', 1, '88', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (598, 35, '191240020', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (599, 35, '191240010', 1, '85', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (600, 35, '191240011', 1, '92', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (601, 35, '191240014', 1, '95', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (602, 35, '191240016', 1, '93', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (603, 35, '191240017', 1, '88', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (604, 35, '191240021', 1, '84', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (605, 35, '191240022', 1, '80', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (606, 35, '191240024', 1, '82', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (607, 35, '191240025', 1, '', '72', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (608, 35, '191240028', 1, '96', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (609, 35, '191240029', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (610, 35, '191240015', 1, '89', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (611, 36, '181240001', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (612, 36, '181240068', 1, '', 'NA', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (613, 36, '181240002', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (614, 36, '181240007', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (615, 36, '181240012', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (616, 36, '181240023', 1, '85', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (617, 36, '181240052', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (618, 36, '181240073', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (619, 36, '181240013', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (620, 36, '181240004', 1, '', '70', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (621, 36, '181240019', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (622, 36, '181240066', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (623, 36, '181240018', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (624, 36, '181240047', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (625, 36, '181240055', 1, '87', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (626, 36, '181240074', 1, '85', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (627, 36, '181240044', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (628, 36, '181240026', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (629, 36, '181240020', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (630, 36, '181240045', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (631, 36, '181240082', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (632, 36, '181240008', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (633, 36, '181240046', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (634, 36, '161240021', 1, '', '75', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (635, 36, '181240009', 1, '', '78', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (636, 37, '171240020', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (637, 37, '171240032', 1, '97', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (638, 37, '171240046', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (639, 37, '171240009', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (640, 37, '171240016', 1, '85', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (641, 37, '171240017', 1, '95', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (642, 37, '171240044', 1, '95', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (643, 37, '171240015', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (644, 37, '171240008', 1, '85', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (645, 37, '171240014', 1, '85', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (646, 37, '171240004', 1, '97', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (647, 38, '181240035', 1, '81', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (648, 38, '181240048', 1, '94', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (649, 38, '181240075', 1, '93', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (650, 38, '181240054', 1, '93', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (651, 38, '181240065', 1, '92', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (652, 38, '181240061', 1, '96', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (653, 38, '181240057', 1, '95', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (654, 38, '181240051', 1, '94', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (655, 38, '181240076', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (656, 38, '181240032', 1, '75', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (657, 38, '181240036', 1, '93', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (658, 38, '181240063', 1, '77', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (659, 39, '201240003', 1, '88', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (660, 39, '201240004', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (661, 39, '201240008', 1, '91', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (662, 39, '201240009', 1, '88', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (663, 39, '201240012', 1, '99', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (664, 39, '201240013', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (665, 39, '201240014', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (666, 39, '201240015', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (667, 39, '201240016', 1, '96', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (668, 39, '201240019', 1, '84', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (669, 39, '201240128', 1, '85', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (670, 39, '201240022', 1, '95', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (671, 39, '201240023', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (672, 40, '181240035', 1, '83', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (673, 40, '181240048', 1, '94', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (674, 40, '181240075', 1, '96', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (675, 40, '181240054', 1, '97', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (676, 40, '181240065', 1, '96', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (677, 40, '181240061', 1, '97', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (678, 40, '181240057', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (679, 40, '181240051', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (680, 40, '181240076', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (681, 40, '181240032', 1, '83', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (682, 40, '181240036', 1, '97', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (683, 40, '181240063', 1, '73', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (684, 40, '181240009', 1, '74', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (685, 40, '181240041', 2, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (686, 40, '161240042', 2, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (687, 41, '181240001', 1, '97', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (688, 41, '181240068', 1, '74', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (689, 41, '181240002', 1, '74', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (690, 41, '181240007', 1, '95', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (691, 41, '181240012', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (692, 41, '181240023', 1, '77', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (693, 41, '181240052', 1, '99', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (694, 41, '181240073', 1, '99', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (695, 41, '181240013', 1, '96', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (696, 41, '181240004', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (697, 41, '181240019', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (698, 41, '181240066', 1, '97', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (699, 41, '181240018', 1, '95', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (700, 41, '181240047', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (701, 41, '181240055', 1, '95', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (702, 41, '181240028', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (703, 41, '181240074', 1, '76', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (704, 41, '181240044', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (705, 41, '181240026', 1, '95', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (706, 41, '181240009', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (707, 41, '181240020', 1, '96', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (708, 41, '181240045', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (709, 41, '181240082', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (710, 41, '181240008', 1, '95', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (711, 41, '181240046', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (712, 41, '191240001', 1, '77', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (713, 41, '191240018', 1, '95', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (714, 41, '191240002', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (715, 41, '191240006', 1, '95', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (716, 41, '191240007', 1, '95', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (717, 41, '191240009', 1, '94', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (718, 41, '191240020', 1, '97', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (719, 41, '191240010', 1, '83', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (720, 41, '191240011', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (721, 41, '191240014', 1, '99', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (722, 41, '191240015', 1, '92', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (723, 41, '191240016', 1, '94', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (724, 41, '191240017', 1, '80', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (725, 41, '191240021', 1, '75', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (726, 41, '191240022', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (727, 41, '191240024', 1, '77', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (728, 41, '191240025', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (729, 41, '191240028', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (730, 41, '191240029', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (731, 41, '181240059', 1, '70', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (732, 41, '161240042', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (733, 41, '161240031', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (734, 42, '171240020', 1, '93', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (735, 42, '171240032', 1, '99', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (736, 42, '171240046', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (737, 42, '171240009', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (738, 42, '171240016', 1, '95', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (739, 42, '171240017', 1, '99', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (740, 42, '171240044', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (741, 42, '171240015', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (742, 42, '171240008', 1, '95', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (743, 42, '171240014', 1, '77', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (744, 42, '171240004', 1, '99', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (745, 42, '161240031', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (746, 43, '191240049', 1, '87', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (747, 43, '191240050', 1, '93', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (748, 43, '191240051', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (749, 43, '191240052', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (750, 43, '191240055', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (751, 43, '191240058', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (752, 44, '201240003', 1, '81', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (753, 44, '201240004', 1, '', 'NA', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (754, 44, '201240008', 1, '', '79', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (755, 44, '201240009', 1, '74', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (756, 44, '201240012', 1, '97', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (757, 44, '201240013', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (758, 44, '201240014', 1, '70', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (759, 44, '201240015', 1, '74', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (760, 44, '201240016', 1, '79', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (761, 44, '201240019', 1, '89', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (762, 44, '201240128', 1, '', 'NA', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (763, 44, '201240022', 1, '77', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (764, 44, '201240023', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (765, 44, '191240055', 2, '76', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (766, 45, '201240003', 1, '84', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (767, 45, '201240004', 1, '', 'NA', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (768, 45, '201240008', 1, '84', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (769, 45, '201240009', 1, '81', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (770, 45, '201240012', 1, '99', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (771, 45, '201240013', 1, '97', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (772, 45, '201240014', 1, '75', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (773, 45, '201240015', 1, '', 'NA', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (774, 45, '201240016', 1, '87', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (775, 45, '201240019', 1, '93', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (776, 45, '201240128', 1, '', 'NA', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (777, 45, '201240022', 1, '82', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (778, 45, '201240023', 1, '95', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (779, 46, '181240035', 1, '78', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (780, 46, '181240048', 1, '91', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (781, 46, '181240075', 1, '91', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (782, 46, '181240054', 1, '76', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (783, 46, '181240065', 1, '83', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (784, 46, '181240061', 1, '91', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (785, 46, '181240057', 1, '97', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (786, 46, '181240051', 1, '88', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (787, 46, '181240076', 1, '', 'NA', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (788, 46, '181240032', 1, '', '77', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (789, 46, '181240036', 1, '91', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (790, 46, '181240063', 1, '78', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (791, 47, '191240030', 1, '91', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (792, 47, '191240064', 1, '88', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (793, 47, '191240013', 1, '97', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (794, 47, '191240035', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (795, 47, '191240039', 1, '95', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (796, 47, '191240041', 1, '97', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (797, 47, '191240060', 1, '70', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (798, 47, '191240045', 1, '95', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (799, 47, '191240023', 1, '94', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (800, 47, '191240044', 1, '97', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (801, 47, '191240061', 1, '79', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (802, 47, '191240031', 1, '96', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (803, 47, '191240043', 1, '80', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (804, 47, '191240047', 1, '94', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (805, 47, '181240070', 2, '93', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (806, 48, '181240035', 1, '85', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (807, 48, '181240048', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (808, 48, '181240075', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (809, 48, '181240054', 1, '84', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (810, 48, '181240065', 1, '91', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (811, 48, '181240061', 1, '95', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (812, 48, '181240057', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (813, 48, '181240051', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (814, 48, '181240076', 1, '80', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (815, 48, '181240032', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (816, 48, '181240036', 1, '97', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (817, 48, '181240063', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (818, 48, '161240003', 1, '75', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (819, 49, '201240034', 1, '99', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (820, 49, '201240048', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (821, 49, '201240052', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (822, 49, '211240014', 1, '88', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (823, 49, '201240126', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (824, 49, '201240053', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (825, 49, '201240006', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (826, 49, '201240055', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (827, 49, '201240056', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (828, 49, '201240058', 1, '85', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (829, 49, '201240061', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (830, 49, '201240066', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (831, 49, '201240067', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (832, 49, '201240068', 1, '92', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (833, 49, '201240069', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (834, 49, '211240001', 1, '83', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (835, 49, '211240002', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (836, 49, '211240005', 1, '86', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (837, 49, '211240006', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (838, 49, '211240007', 1, '99', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (839, 49, '211240009', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (840, 50, '191240030', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (841, 50, '191240068', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (842, 50, '191240064', 1, '91', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (843, 50, '191240013', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (844, 50, '191240035', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (845, 50, '191240036', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (846, 50, '191240038', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (847, 50, '191240039', 1, '95', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (848, 50, '191240041', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (849, 50, '191240060', 1, '70', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (850, 50, '191240045', 1, '94', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (851, 50, '191240023', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (852, 50, '191240044', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (853, 50, '191240061', 1, '76', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (854, 50, '191240031', 1, '94', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (855, 50, '191240043', 1, '76', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (856, 50, '191240047', 1, '95', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (857, 50, '181240060', 2, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (858, 50, 'B156P1225', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (859, 51, '201240003', 1, '86', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (860, 51, '201240004', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (861, 51, '201240008', 1, '82', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (862, 51, '201240009', 1, '84', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (863, 51, '201240012', 1, '91', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (864, 51, '201240013', 1, '94', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (865, 51, '201240014', 1, '71', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (866, 51, '201240015', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (867, 51, '201240016', 1, '92', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (868, 51, '201240019', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (869, 51, '201240128', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (870, 51, '201240022', 1, '94', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (871, 51, '201240023', 1, '95', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (872, 52, '201240034', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (873, 52, '201240048', 1, '99', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (874, 52, '201240052', 1, '99', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (875, 52, '211240014', 1, '88', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (876, 52, '201240126', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (877, 52, '201240053', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (878, 52, '201240006', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (879, 52, '201240055', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (880, 52, '201240056', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (881, 52, '201240058', 1, '89', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (882, 52, '201240061', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (883, 52, '201240066', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (884, 52, '201240067', 1, '75', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (885, 52, '201240068', 1, '94', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (886, 52, '201240069', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (887, 52, '211240001', 1, '82', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (888, 52, '211240002', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (889, 52, '211240005', 1, '87', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (890, 52, '211240006', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (891, 52, '211240007', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (892, 52, '211240009', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (893, 53, '181240001', 1, '95', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (894, 53, '181240068', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (895, 53, '181240002', 1, '81', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (896, 53, '181240007', 1, '92', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (897, 53, '181240012', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (898, 53, '181240023', 1, '87', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (899, 53, '181240052', 1, '94', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (900, 53, '181240073', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (901, 53, '181240013', 1, '92', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (902, 53, '181240004', 1, '92', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (903, 53, '181240019', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (904, 53, '181240066', 1, '91', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (905, 53, '181240018', 1, '95', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (906, 53, '181240047', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (907, 53, '181240055', 1, '89', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (908, 53, '181240044', 1, '87', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (909, 53, '181240026', 1, '98', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (910, 53, '181240009', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (911, 53, '181240020', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (912, 53, '181240045', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (913, 53, '181240082', 1, '91', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (914, 53, '181240008', 1, '95', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (915, 53, '181240046', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (916, 53, '161240031', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (917, 53, '161240021', 1, '89', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (918, 54, '181240027', 1, '92', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (919, 54, '181240015', 1, '95', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (920, 54, '181240031', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (921, 54, '181240033', 1, '97', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (922, 54, '181240050', 1, '93', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (923, 54, '181240040', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (924, 54, '181240043', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (925, 54, '181240070', 1, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (926, 54, '181240058', 1, '91', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (927, 54, '181240060', 1, '81', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (928, 54, '181240016', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (929, 54, '181240069', 1, '93', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (930, 54, '181240041', 1, '85', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (931, 54, '191240063', 1, 'NA', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (932, 54, '161240002', 2, '90', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (933, 54, '161240029', 2, '83', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (934, 54, 'B156P1225', 1, '100', '', '2021-08-07 19:40:01', '2021-08-07 19:40:01', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1025, 55, '201240034', 1, '97', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1026, 55, '201240048', 1, '100', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1027, 55, '201240052', 1, '86', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1028, 55, '201240126', 1, 'NA', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1029, 55, '201240053', 1, '94', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1030, 55, '201240055', 1, '100', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1031, 55, '201240056', 1, 'NA', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1032, 55, '201240058', 1, '97', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1033, 55, '201240061', 1, '85', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1034, 55, '201240066', 1, 'NA', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1035, 55, '201240067', 1, 'NA', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1036, 55, '201240068', 1, '92', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1037, 55, '201240069', 1, '70', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1038, 55, '211240001', 1, 'NA', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1039, 55, '211240002', 1, 'NA', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1040, 55, '211240005', 1, '83', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1041, 55, '211240014', 1, '97', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1042, 55, '211240006', 1, 'NA', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1043, 55, '211240007', 1, '100', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1044, 55, '211240009', 1, '100', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1045, 55, '161240014', 2, '97', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1046, 55, '201240006', 1, 'NA', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1047, 56, '181240001', 1, '90', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1048, 56, '181240068', 1, '98', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1049, 56, '181240002', 1, '85', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1050, 56, '181240007', 1, '98', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1051, 56, '181240012', 1, '100', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1052, 56, '181240023', 1, '90', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1053, 56, '181240052', 1, '95', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1054, 56, '181240073', 1, '95', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1055, 56, '181240013', 1, '90', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1056, 56, '181240004', 1, 'NA', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1057, 56, '181240019', 1, '100', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1058, 56, '181240066', 1, '95', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1059, 56, '181240018', 1, '90', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1060, 56, '181240047', 1, '100', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1061, 56, '181240055', 1, '80', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1062, 56, '181240028', 1, 'NA', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1063, 56, '181240074', 1, '90', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1064, 56, '181240044', 1, '95', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1065, 56, '181240026', 1, '100', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1066, 56, '181240009', 1, '80', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1067, 56, '181240020', 1, '95', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1068, 56, '181240045', 1, '95', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1069, 56, '181240082', 1, '90', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1070, 56, '181240008', 1, '98', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1071, 56, '181240046', 1, '100', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1072, 57, '171240032', 1, '90', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1073, 57, '171240046', 1, '80', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1074, 57, '171240009', 1, '95', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1075, 57, '171240017', 1, '80', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1076, 57, '171240044', 1, '95', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1077, 57, '171240015', 1, '90', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1078, 57, '171240004', 1, '90', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1079, 58, '171240020', 1, '75', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1080, 58, '171240032', 1, '90', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1081, 58, '171240046', 1, '80', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1082, 58, '171240009', 1, '95', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1083, 58, '171240016', 1, '75', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1084, 58, '171240017', 1, '80', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1085, 58, '171240044', 1, '95', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1086, 58, '171240015', 1, '90', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1087, 58, '171240008', 1, '80', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1088, 58, '171240014', 1, '75', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1089, 58, '171240004', 1, '90', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1090, 58, '161240013', 1, 'NA', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1091, 59, '191240049', 1, '90', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1092, 59, '191240050', 1, '90', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1093, 59, '191240051', 1, '', '90', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1094, 59, '191240052', 1, '90', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1095, 59, '191240058', 1, 'NA', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1096, 60, '191240049', 1, '90', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1097, 60, '191240050', 1, '90', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1098, 60, '191240051', 1, '90', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1099, 60, '191240052', 1, '90', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1100, 60, '191240055', 1, '90', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1101, 60, '191240058', 1, 'NA', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1102, 61, '181240035', 1, '87', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1103, 61, '181240048', 1, '90', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1104, 61, '181240075', 1, '90', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1105, 61, '181240054', 1, '90', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1106, 61, '181240065', 1, '90', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1107, 61, '181240061', 1, '90', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1108, 61, '181240051', 1, '90', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1109, 61, '181240076', 1, 'NA', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1110, 61, '181240032', 1, '81', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1111, 61, '181240036', 1, '90', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1112, 61, '181240063', 1, '81', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1113, 62, '181240035', 1, '85', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1114, 62, '181240048', 1, '90', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1115, 62, '181240075', 1, '90', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1116, 62, '181240054', 1, '90', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1117, 62, '181240065', 1, '90', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1118, 62, '181240061', 1, '90', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1119, 62, '181240057', 1, '90', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1120, 62, '181240051', 1, '90', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1121, 62, '181240076', 1, 'NA', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1122, 62, '181240032', 1, '80', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1123, 62, '181240036', 1, '90', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1124, 62, '181240063', 1, '80', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1125, 62, '171240027', 1, '90', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1126, 62, '171240035', 1, '90', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1127, 63, '191240049', 1, '', '70', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1128, 63, '191240050', 1, '100', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1129, 63, '191240051', 1, '', '70', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1130, 63, '191240052', 1, '', '70', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1131, 63, '191240055', 1, '', '70', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1132, 63, '191240058', 1, '', 'NA', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1133, 64, '171240025', 1, '94', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1134, 64, '171240018', 1, '98', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1135, 64, '171240021', 1, '93', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1136, 64, '171240026', 1, '99', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1137, 64, '171240027', 1, 'NA', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1138, 64, '171240031', 1, 'NA', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1139, 64, '171240011', 1, '94', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1140, 64, '171240019', 1, '98', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1141, 64, '171240034', 1, '98', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1142, 64, '171240022', 1, '98', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1143, 64, '171240029', 1, '94', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1144, 64, '171240035', 1, '94', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1145, 64, '181240057', 1, '99', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1146, 65, '181240035', 1, '83', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1147, 65, '181240048', 1, '93', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1148, 65, '181240075', 1, '93', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1149, 65, '181240054', 1, '83', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1150, 65, '181240065', 1, '93', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1151, 65, '181240061', 1, '93', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1152, 65, '181240057', 1, '94', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1153, 65, '181240051', 1, '93', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1154, 65, '181240076', 1, 'NA', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1155, 65, '181240032', 1, '', '81', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1156, 65, '181240036', 1, '90', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1157, 65, '181240063', 1, '89', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1158, 65, '171240027', 2, 'NA', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1159, 65, '171240035', 1, '84', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1160, 66, '171240025', 1, '91', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1161, 66, '171240018', 1, '98', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1162, 66, '171240021', 1, '91', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1163, 66, '171240026', 1, '98', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1164, 66, '171240027', 1, 'NA', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1165, 66, '171240031', 1, 'NA', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1166, 66, '171240011', 1, '91', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1167, 66, '171240019', 1, '98', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1168, 66, '171240034', 1, '98', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1169, 66, '171240022', 1, '98', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1170, 66, '171240029', 1, '92', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1171, 66, '171240035', 1, '90', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1172, 66, '161240053', 1, '90', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1173, 67, '191240030', 1, '91', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1174, 67, '191240033', 1, '85', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1175, 67, '191240068', 1, '91', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1176, 67, '191240064', 1, '91', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1177, 67, '191240013', 1, '91', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1178, 67, '191240035', 1, '91', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1179, 67, '191240036', 1, '91', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1180, 67, '191240038', 1, '83', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1181, 67, '191240039', 1, '91', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1182, 67, '191240041', 1, '91', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1183, 67, '191240045', 1, '91', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1184, 67, '191240023', 1, '91', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1185, 67, '191240044', 1, '91', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1186, 67, '191240061', 1, '91', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1187, 67, '191240031', 1, '91', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1188, 67, '191240043', 1, '91', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1189, 67, '191240047', 1, '91', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1190, 67, '191240060', 1, 'NA', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1191, 68, '181240027', 1, '91', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1192, 68, '181240015', 1, '91', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1193, 68, '181240031', 1, '91', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1194, 68, '181240033', 1, '91', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1195, 68, '181240050', 1, '91', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1196, 68, '181240040', 1, '91', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1197, 68, '181240043', 1, '91', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1198, 68, '181240070', 1, '91', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1199, 68, '181240058', 1, '91', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1200, 68, '181240016', 1, '91', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1201, 68, '181240069', 1, '91', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1202, 68, '181240041', 1, '91', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1203, 68, '171240001', 1, 'NA', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1204, 68, '171240028', 1, '91', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1205, 68, '161240002', 2, '91', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1206, 69, '191240001', 1, '', '80', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1207, 69, '191240018', 1, '98', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1208, 69, '191240002', 1, '100', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1209, 69, '191240006', 1, '', '95', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1210, 69, '191240007', 1, '100', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1211, 69, '191240009', 1, '100', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1212, 69, '191240020', 1, '100', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1213, 69, '191240010', 1, '92', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1214, 69, '191240011', 1, '94', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1215, 69, '191240014', 1, '100', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1216, 69, '191240016', 1, '100', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1217, 69, '191240017', 1, '100', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1218, 69, '191240021', 1, 'NA', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1219, 69, '191240022', 1, 'NA', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1220, 69, '191240024', 1, '96', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1221, 69, '191240025', 1, 'NA', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1222, 69, '191240028', 1, '100', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1223, 69, '191240029', 1, '100', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1224, 69, '181240068', 1, 'NA', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1225, 69, '181240028', 1, 'NA', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1226, 69, '181240009', 2, '96', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1227, 69, '181240074', 1, '', '80', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1228, 69, '191240015', 1, '', '90', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1229, 70, '171240020', 1, '', '88', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1230, 70, '171240032', 1, '100', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1231, 70, '171240046', 1, '100', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1232, 70, '171240009', 1, '98', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1233, 70, '171240016', 1, '90', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1234, 70, '171240017', 1, '100', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1235, 70, '171240044', 1, '98', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1236, 70, '171240015', 1, '100', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1237, 70, '171240008', 1, '92', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1238, 70, '171240014', 1, '', '80', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1239, 70, '171240004', 1, '100', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1240, 70, '161240013', 1, 'NA', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1241, 70, '161240014', 2, '', '82', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1242, 70, '161240031', 1, '100', '', '2021-08-16 06:22:36', '2021-08-16 06:22:36', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1280, 71, '181240001', 1, '82', '', '2021-08-16 08:21:13', '2021-08-16 08:21:13', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1281, 71, '181240068', 1, 'NA', '', '2021-08-16 08:21:13', '2021-08-16 08:21:13', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1282, 71, '181240002', 1, 'NA', '', '2021-08-16 08:21:13', '2021-08-16 08:21:13', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1283, 71, '181240007', 1, '92', '', '2021-08-16 08:21:13', '2021-08-16 08:21:13', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1284, 71, '181240012', 1, '97', '', '2021-08-16 08:21:13', '2021-08-16 08:21:13', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1285, 71, '181240052', 1, '90', '', '2021-08-16 08:21:13', '2021-08-16 08:21:13', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1286, 71, '181240073', 1, '100', '', '2021-08-16 08:21:13', '2021-08-16 08:21:13', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1287, 71, '181240013', 1, '82', '', '2021-08-16 08:21:13', '2021-08-16 08:21:13', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1288, 71, '181240004', 1, 'NA', '', '2021-08-16 08:21:13', '2021-08-16 08:21:13', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1289, 71, '181240019', 1, '100', '', '2021-08-16 08:21:13', '2021-08-16 08:21:13', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1290, 71, '181240066', 1, '92', '', '2021-08-16 08:21:13', '2021-08-16 08:21:13', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1291, 71, '181240018', 1, '88', '', '2021-08-16 08:21:13', '2021-08-16 08:21:13', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1292, 71, '181240047', 1, '100', '', '2021-08-16 08:21:13', '2021-08-16 08:21:13', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1293, 71, '181240055', 1, '73', '', '2021-08-16 08:21:13', '2021-08-16 08:21:13', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1294, 71, '181240044', 1, '100', '', '2021-08-16 08:21:13', '2021-08-16 08:21:13', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1295, 71, '181240026', 1, '70', '', '2021-08-16 08:21:13', '2021-08-16 08:21:13', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1296, 71, '181240020', 1, '92', '', '2021-08-16 08:21:13', '2021-08-16 08:21:13', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1297, 71, '181240045', 1, '100', '', '2021-08-16 08:21:13', '2021-08-16 08:21:13', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1298, 71, '181240082', 1, '91', '', '2021-08-16 08:21:13', '2021-08-16 08:21:13', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1299, 71, '181240008', 1, '92', '', '2021-08-16 08:21:13', '2021-08-16 08:21:13', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1300, 71, '181240046', 1, '100', '', '2021-08-16 08:21:13', '2021-08-16 08:21:13', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1301, 71, '161240013', 2, 'NA', '', '2021-08-16 08:21:13', '2021-08-16 08:21:13', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1302, 71, '161240024', 1, 'NA', '', '2021-08-16 08:21:13', '2021-08-16 08:21:13', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1303, 72, '201240003', 1, '75', '', '2021-08-16 08:21:13', '2021-08-16 08:21:13', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1304, 72, '201240004', 1, 'NA', '', '2021-08-16 08:21:13', '2021-08-16 08:21:13', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1305, 72, '201240008', 1, '76', '', '2021-08-16 08:21:13', '2021-08-16 08:21:13', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1306, 72, '201240009', 1, 'NA', '', '2021-08-16 08:21:13', '2021-08-16 08:21:13', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1307, 72, '201240012', 1, '83', '', '2021-08-16 08:21:13', '2021-08-16 08:21:13', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1308, 72, '201240013', 1, '83', '', '2021-08-16 08:21:13', '2021-08-16 08:21:13', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1309, 72, '201240014', 1, 'NA', '', '2021-08-16 08:21:13', '2021-08-16 08:21:13', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1310, 72, '201240015', 1, 'NA', '', '2021-08-16 08:21:13', '2021-08-16 08:21:13', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1311, 72, '201240016', 1, '83', '', '2021-08-16 08:21:13', '2021-08-16 08:21:13', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1312, 72, '201240019', 1, '83', '', '2021-08-16 08:21:13', '2021-08-16 08:21:13', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1313, 72, '201240128', 1, 'NA', '', '2021-08-16 08:21:13', '2021-08-16 08:21:13', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1314, 72, '201240022', 1, '83', '', '2021-08-16 08:21:13', '2021-08-16 08:21:13', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1315, 72, '201240023', 1, '89', '', '2021-08-16 08:21:13', '2021-08-16 08:21:13', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1346, 73, '201240129', 1, '', '85', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1347, 73, '201240132', 1, '', '82', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1348, 73, '201240007', 1, '80', '', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1349, 73, '201240137', 1, '', '84', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1350, 73, '201240073', 1, 'NA', '', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1351, 73, '201240112', 1, '', '85', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1352, 73, '201240079', 1, 'NA', '', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1353, 73, '201240016', 1, 'NA', '', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1354, 73, '201240113', 1, '', '89', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1355, 73, '201240119', 1, '', '87', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1356, 73, '201240018', 1, '', '74', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1357, 73, '201240130', 1, 'NA', '', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1358, 73, '201240120', 1, '93', '', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1359, 73, '201240117', 1, '98', '', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1360, 73, '201240124', 1, '81', '', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1361, 73, '211240011', 1, 'NA', '', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1362, 73, '211240003', 1, '', '73', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1363, 73, '211240010', 1, 'NA', '', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1364, 73, '211240013', 1, 'NA', '', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1365, 73, '211240008', 1, '', '86', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1366, 74, '201240129', 1, '86', '', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1367, 74, '201240132', 1, '86', '', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1368, 74, '201240007', 1, 'NA', '', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1369, 74, '201240137', 1, '90', '', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1370, 74, '201240073', 1, 'NA', '', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1371, 74, '201240112', 1, '89', '', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1372, 74, '201240079', 1, 'NA', '', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1373, 74, '201240113', 1, '92', '', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1374, 74, '201240119', 1, '80', '', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1375, 74, '201240018', 1, 'NA', '', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1376, 74, '201240130', 1, 'NA', '', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1377, 74, '201240120', 1, '97', '', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1378, 74, '201240117', 1, '99', '', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1379, 74, '201240124', 1, '86', '', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1380, 74, '211240011', 1, 'NA', '', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1381, 74, '211240004', 1, 'NA', '', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1382, 74, '211240003', 1, '95', '', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1383, 74, '211240013', 1, 'NA', '', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1384, 74, '211240010', 1, 'NA', '', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1385, 74, '211240008', 1, '89', '', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1386, 75, '201240129', 1, '', '81', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1387, 75, '201240132', 1, '', '90', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1388, 75, '201240007', 1, '93', '', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1389, 75, '201240137', 1, '97', '', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1390, 75, '201240073', 1, 'NA', '', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1391, 75, '201240112', 1, '95', '', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1392, 75, '201240079', 1, '', '80', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1393, 75, '201240016', 1, '', '79', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1394, 75, '201240113', 1, '', '90', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1395, 75, '201240119', 1, '', '94', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1396, 75, '201240018', 1, 'NA', '', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1397, 75, '201240130', 1, 'NA', '', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1398, 75, '201240120', 1, '96', '', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1399, 75, '201240117', 1, '98', '', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1400, 75, '201240124', 1, '', '91', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1401, 75, '211240011', 1, 'NA', '', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1402, 75, '211240003', 1, '', '80', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1403, 75, '211240010', 1, 'NA', '', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1404, 75, '211240013', 1, 'NA', '', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1405, 75, '211240008', 1, '', '93', '2021-09-01 08:56:50', '2021-09-01 08:56:50', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1417, 149, '211240003', 1, '100', '', '2022-01-19 11:47:29', '2022-01-21 10:03:19', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1418, 149, '211240008', 1, '100', '', '2022-01-19 11:47:29', '2022-01-21 10:03:19', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1419, 149, '211240062', 1, '100', '', '2022-01-19 11:47:29', '2022-01-21 10:03:19', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1420, 149, '211240068', 1, '100', '', '2022-01-19 11:47:29', '2022-01-21 10:03:20', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1421, 149, '211240069', 1, '100', '', '2022-01-19 11:47:29', '2022-01-21 10:03:20', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1422, 149, '211240070', 1, '100', '', '2022-01-19 11:47:29', '2022-01-21 10:03:20', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1423, 149, '211240071', 1, '100', '', '2022-01-19 11:47:29', '2022-01-21 10:03:20', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1424, 149, '211240072', 1, '100', '', '2022-01-19 11:47:29', '2022-01-21 10:03:20', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1425, 149, '211240073', 1, '100', '', '2022-01-19 11:47:29', '2022-01-21 10:03:20', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1426, 149, '211240074', 1, '100', '', '2022-01-19 11:47:29', '2022-01-21 10:03:20', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1427, 149, '211240076', 1, '100', '', '2022-01-19 11:47:29', '2022-01-21 10:03:20', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1428, 108, '171240035', 1, '', '', '2022-01-21 08:40:38', '2022-01-21 08:41:38', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1429, 108, '181240076', 2, '', '', '2022-01-21 08:40:38', '2022-01-21 08:41:38', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1430, 108, '191240050', 1, '', '', '2022-01-21 08:40:38', '2022-01-21 08:41:38', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1431, 108, '191240051', 1, '', '', '2022-01-21 08:40:38', '2022-01-21 08:41:38', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1432, 108, '191240052', 1, '', '', '2022-01-21 08:40:38', '2022-01-21 08:41:38', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1433, 108, '191240055', 1, '', '', '2022-01-21 08:40:38', '2022-01-21 08:41:38', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1434, 108, '191240058', 1, '', '', '2022-01-21 08:40:38', '2022-01-21 08:41:38', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1435, 194, '161240021', 1, '70', '', '2022-01-21 08:43:44', '2022-01-21 10:04:31', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1436, 194, '161240024', 1, '70', '', '2022-01-21 08:43:44', '2022-01-21 10:04:31', 'VIG');
INSERT INTO `actas_calificaciones` VALUES (1437, 194, '161240031', 2, '81', '', '2022-01-21 08:43:44', '2022-01-21 10:04:31', 'VIG');

-- ----------------------------
-- Table structure for cat_carreras
-- ----------------------------
DROP TABLE IF EXISTS `cat_carreras`;
CREATE TABLE `cat_carreras`  (
  `idcarrera` int(11) NOT NULL AUTO_INCREMENT,
  `cve_carrera` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc_carrera` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `no_semestres` int(11) NULL DEFAULT NULL,
  `plan_estudios` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idcarrera`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cat_carreras
-- ----------------------------
INSERT INTO `cat_carreras` VALUES (1, 'IAAS', 'ING. EN INNOVACION AGRICOLA SUSTENTABLE', 9, 'IIAS-2010-221');
INSERT INTO `cat_carreras` VALUES (2, 'ILOG', 'ING. EN LOGÍSTICA', 9, 'ILOG-2009-202');
INSERT INTO `cat_carreras` VALUES (3, 'IPET', 'ING. PETROLERA', 9, 'IPET-2010-231');
INSERT INTO `cat_carreras` VALUES (4, 'IPET-MIXTA', 'ING. PETROLERA MIXTA', 9, 'IPET-2010-231');

-- ----------------------------
-- Table structure for cat_materias
-- ----------------------------
DROP TABLE IF EXISTS `cat_materias`;
CREATE TABLE `cat_materias`  (
  `idmateria` int(11) NOT NULL AUTO_INCREMENT,
  `cve_materia` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc_materia` varchar(95) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `creditos` int(11) NOT NULL,
  `fecha_registro` datetime NULL DEFAULT NULL,
  `fecha_actualizacion` datetime NULL DEFAULT NULL,
  `cve_estatus` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idmateria`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 133 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cat_materias
-- ----------------------------
INSERT INTO `cat_materias` VALUES (1, 'PEA-1023', 'PRODUCTIVIDAD DE POZOS', 4, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (2, 'PED-1011', 'ESTÁTICA', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (3, 'LOF-0930', 'TÓPICOS DE INGENIERÍA MECÁNICA', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (4, 'PRJ-1805', 'ADMINISTRACIÓN INTEGRAL DE YACIMIENTOS', 6, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (5, 'PRJ-1804', 'CARACTERIZACIÓN ESTÁTICA Y DINÁMICA DE YACIMIENTOS', 6, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (6, 'PED-1012', 'FLUJO MULTIFÁSICO EN TUBERÍAS', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (7, 'AEF-1049', 'MICROBIOLOGÍA', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (8, 'PEG-1026', 'QUÍMICA ORGÁNICA', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (9, 'PED-1019', 'MECÁNICA DE FLUIDOS', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (10, 'PED-1029', 'SISTEMAS DE BOMBEO EN LA INDUSTRIA PETROLERA', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (11, 'PED-1014', 'GEOLOGÍA DE YACIMIENTOS', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (12, 'PED-1016', 'HIDRAÚLICA', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (13, 'PED-1027', 'RECUPERACIÓN SECUNDARIA Y MEJORADA', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (14, 'PED-1028', 'SISTEMAS ARTIFICIALES', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (15, 'LOC-0905', 'COMPRAS', 4, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (16, 'LOC-0926', 'PROGRAMACIÓN DE PROCESOS PRODUCTIVOS', 4, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (17, 'ACF-0902', 'CÁLCULO INTEGRAL', 4, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (18, 'ACF-0903', 'ÁLGEBRA LINEAL', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (19, 'AEF-1025', 'ESTADISTICA INFERENCIAL II', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (20, 'ASC-1003', 'BASE DE DATOS Y SISTEMAS DE INFORMACIÓN GEOGRÁFICA', 4, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (21, 'ACF-0905', 'ECUACIONES DIFERENCIALES', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (22, 'ACF-0901', 'CÁLCULO DIFERENCIAL', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (23, 'ACF-0902.', 'CÁLCULO INTEGRAL', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (24, 'PEQ-1009', 'ECONOMÍA', 3, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (25, 'TDF-1803', 'TALLER DE COMERCIO INTERNACIONAL', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (26, 'TDC-1805', 'NEGOCIOS INTERNACIONALES', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (27, 'LOE-0924', 'MODELOS DE SIMULACIÓN Y LOGÍSITICA', 4, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (28, 'AEC-1023', 'PROBABILIDAD Y ESTADÍSTICA', 4, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (29, 'PEC-1022', 'PROBABILIDAD Y ESTADÍSTICA APLICADA AL CAMPO PETROLERO', 4, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (30, 'ACC-0906', 'FUNDAMENTOS DE INVESTIGACIÓN', 4, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (31, 'LOC-0929', 'TIPOLOGÍA DEL PRODUCTO', 4, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (32, 'LOC-0911', 'ENTORNO ECONÓMICO', 4, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (33, 'LOC-0928', 'SERVICIO AL CLIENTE', 4, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (34, 'TDC-1804', 'ADMINISTRACIÓN ESTRATÉGICA', 4, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (35, 'ASF-1014', 'INTRODUCCIÓN A LA AGRICULTURA PROTEGIDA', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (36, 'ASF-1006', 'BOTÁNICA APLICADA', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (37, 'ACA-0909', 'TALLER DE INVESTIGACIÓN I', 4, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (38, 'LOF-0931', 'TRÁFICO Y TRANSPORTE', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (39, 'LOD-0915', 'GEOGRAFÍA PARA EL TRANSPORTE', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (40, 'ASF-1019', 'QUÍMICA ANALÍTICA', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (41, 'AEF-1019', 'EDAFOLOGÍA', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (42, 'ASF-1021', 'SISTEMAS DE RIEGO PRESURIZADO', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (43, 'PED-1002', 'ADMINISTRACIÓN DE LA SEGURIDAD Y PROTECCIÓN AMBIENTAL', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (44, 'ASD-1007', 'DESARROLLO COMUNITARIO', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (45, 'LOC-0908', 'DESARROLLO HUMANO Y ORGANIZACIONAL', 4, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (46, 'ACD-0908', 'DESARROLLO SUSTENTABLE', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (47, 'ASF-1009', 'ELEMENTOS DE TERMODINÁMICA', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (48, 'ACA-0907', 'TALLER DE ÉTICA', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (49, 'LOD-0923', 'LEGISLACIÓN ADUANERA', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (50, 'PEQ-1018', 'LEGISLACIÓN EN LA INDUSTRIA PETROLERA', 3, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (51, 'LOD-0906', 'CONTABILIDAD Y COSTOS', 4, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (52, 'LOC-0907', 'CULTURA DE CALIDAD', 4, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (53, 'TDG-1802', 'ADMINISTRACIÓN FINANCIERA', 6, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (54, 'TDC-1806', 'SISTEMA DE CALIDAD', 4, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (55, 'AEF-1001', 'AGROCLIMATOLOGÍA', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (56, 'ASF-1012', 'FISIOLOGÍA VEGETAL', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (57, 'AED-1002', 'AGROECOLOGÍA', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (58, 'ASF-1017', 'OLERICULTURA', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (59, 'AEF-1016', 'DISEÑOS EXPERIMENTALES', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (60, 'FID-1805', 'INDUSTRIALIZACIÓN DE PRODUCTOS AGRÍCOLAS', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (61, 'ASD-1001', 'AGRONEGOCIOS I', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (62, 'FIF-1804', 'GENOTÉCNIA VEGETAL', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (63, 'PED-1010', 'ELECTRICIDAD Y MAGNETISMO', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (64, 'AEF-1038', 'INSTRUMENTACIÓN', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (65, 'LOH-0902', 'BASE DE DATOS', 4, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (66, 'TDC-1801', 'TALLER DE COACHING', 4, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (67, 'LOE-0922', 'INVESTIGACIÓN DE OPERACIONES II', 4, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (68, 'ASF-1010', 'ESTADÍSTICA', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (69, 'AEQ-1064', 'TECNOLOGÍAS DE LA INFORMACIÓN Y LAS COMUNICACIONES', 3, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (70, 'AEC-1037', 'INGENIERÍA ECONÓMICA', 4, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (71, 'AED-1044', 'MERCADOTECNIA', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (72, 'PEQ-1001', 'ADMINISTRACIÓN', 3, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (73, 'FIF-1802', 'BIOTECNOLOGÍA VEGETAL', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (74, 'ASF-1015', 'MÉTODOS ESTADÍSTICOS', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (75, 'ASF-1016', 'NUTRICIÓN VEGETAL', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (76, 'ASD-1020', 'SISTEMA DE PRODUCCIÓN AGRÍCOLA', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (77, 'PEC-1004', 'ANÁLISIS NUMÉRICO', 4, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (78, 'PED-1008', 'DINÁMICA', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (79, 'LOC-0903', 'CADENA DE SUMINISTRO', 4, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (80, 'LOH-0909', 'DIBUJO ASISTIDO POR COMPUTADORA', 4, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (81, 'LOC-0925', 'PROCESOS DE FABRICACIÓN Y MANEJO DE MATERIALES', 4, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (82, 'PEA-1005', 'CALIDAD EN LA INDUSTRIA PETROLERA', 4, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (83, 'AEF-1024', 'ESTADÍSTICA INFERENCIAL I', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (84, 'LOC-0919', 'INTRODUCCIÓN A LA INGENIERÍA EN LOGÍSTICA', 4, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (85, 'LOF-0912', 'FINANZAS', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (86, 'LOF-0918', 'INNOVACIÓN', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (87, 'AED-1030', 'FORMULACIÓN Y EVALUACIÓN DE PROYECTOS', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (88, 'ASC-1013', 'INOCUIDAD ALIMENTARIA Y BIOSEGURIDAD', 4, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (89, 'ACA-0910', 'TALLER DE INVESTIGACIÓN II', 4, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (90, 'PED-1006', 'COMPUTACIÓN PARA INGENIERÍA PETROLERA', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (91, 'PEA-1003', 'ANÁLISIS E INTERPRETACIÓN DE PLANOS Y DISEÑO DE INGENIERÍA', 4, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (92, 'ASQ-1008', 'DISEÑO AGRÍCOLA ASISTIDO POR  COMPUTADORA', 3, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (93, 'AEM-1066', 'TOPOGRAFÍA', 6, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (94, 'LOC-0914', 'FUNDAMENTOS DE DERECHO', 4, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (95, 'AEF-1042', 'MECÁNICA CLÁSICA', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (96, 'PED-1020', 'MÉTODOS ELÉCTRICOS', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (97, 'ASQ-1023', 'TALLER DE ELEMENTOS DE MECÁNICA DE SÓLIDOS', 3, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (98, 'AED-1023', 'ENTOMOLOGÍA', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (99, 'AEJ-1028', 'FITOPATOLOGÍA', 6, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (100, 'LOF-0901', 'ALMACENES', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (101, 'ASF-1018', 'PRINCIPIOS DE ELECTROMECÁNICA', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (102, 'LOC-0913', 'FUNDAMENTOS DE ADMINISTRACIÓN', 4, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (103, 'ASD-1002', 'AGRONEGOCIOS II', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (104, 'PRV-1802', 'ANÁLISIS DE MÉTODO DE PRODUCCIÓN', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (105, 'PED-1015', 'GEOLOGÍA PETROLERA', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (106, 'PED-1017', 'INGENIERÍA DE PERFORACIÓN DE POZOS', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (107, 'AEF-1017', 'ECOLOGÍA', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (108, 'PEG-1025', 'QUÍMICA INORGÁNICA', 6, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (109, 'AEF-1056', 'QUÍMICA', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (110, 'ASF-1004', 'BIOLOGÍA', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (111, 'AED-1006', 'BIOQUÍMICA', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (112, 'ASF-1005', 'BIOLOGÍA MOLECULAR', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (113, 'LOC-0927', 'QUÍMICA', 4, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (114, 'ASF-1022', 'SISTEMAS DE RIEGO SUPERFICIAL', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (115, 'ASF-1011', 'FERTIRRIGACIÓN', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (116, 'FID-1801', 'INNOVACIÓN TECNOLOGICA', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (117, 'PED-1031', 'TERMODINÁMICA', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (118, 'PEQ-1007', 'CONDUCCIÓN Y MANEJO DE HIDROCARBUROS', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (119, 'PRF-1803', 'COMPORTAMIENTO DE LOS YACIMIENTOS', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (120, 'PED-1021', 'PETROFÍSICA Y REGISTRO DE POZOS', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (121, 'ACF-0904', 'CÁLCULO VECTORIAL', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (122, 'PRJ-1801', 'SIMULACIÓN NUMÉRICA DE YACIMIENTOS', 6, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (123, 'PED-1013', 'GEOLOGÍA DE EXPLOTACIÓN DEL PETRÓLEO', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (124, 'PED-1024', 'PROPIEDADES DE LOS FLUÍDOS PETROLEROS', 5, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (125, 'LOJ-0917', 'HIGIENE Y SEGURIDAD', 6, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (126, 'LOH-0904', 'COMERCIO INTERNACIONAL', 4, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (127, 'AEC-1018', 'ECONOMÍA', 4, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (128, 'LOE-0920', 'INVENTARIOS', 4, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (129, 'RP', 'RESIDENCIA PROFESIONAL', 10, NULL, NULL, NULL);
INSERT INTO `cat_materias` VALUES (130, 'LOE-0921', 'INVESTIGACIÓN DE OPERACIONES I', 4, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for cat_opcion_curso
-- ----------------------------
DROP TABLE IF EXISTS `cat_opcion_curso`;
CREATE TABLE `cat_opcion_curso`  (
  `idopcion_curso` int(11) NOT NULL AUTO_INCREMENT,
  `desc_opcion_curso` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc_opcion_curso_corto` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idopcion_curso`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cat_opcion_curso
-- ----------------------------
INSERT INTO `cat_opcion_curso` VALUES (1, 'ORDINARIO', 'O');
INSERT INTO `cat_opcion_curso` VALUES (2, 'REPETICION', 'R');
INSERT INTO `cat_opcion_curso` VALUES (3, 'ESPECIAL', 'E');
INSERT INTO `cat_opcion_curso` VALUES (4, 'DUAL', 'D');

-- ----------------------------
-- Table structure for cat_roles
-- ----------------------------
DROP TABLE IF EXISTS `cat_roles`;
CREATE TABLE `cat_roles`  (
  `idrol` int(11) NOT NULL,
  `desc_rol` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idrol`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cat_roles
-- ----------------------------
INSERT INTO `cat_roles` VALUES (1, 'Administrador');
INSERT INTO `cat_roles` VALUES (2, 'Serv. Escolares');
INSERT INTO `cat_roles` VALUES (3, 'Profesor');
INSERT INTO `cat_roles` VALUES (4, 'Div. Estudios');
INSERT INTO `cat_roles` VALUES (5, 'Estudiante');
INSERT INTO `cat_roles` VALUES (6, 'Consulta');

-- ----------------------------
-- Table structure for ciclo
-- ----------------------------
DROP TABLE IF EXISTS `ciclo`;
CREATE TABLE `ciclo`  (
  `idciclo` int(11) NOT NULL AUTO_INCREMENT,
  `desc_ciclo` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `semestre` int(11) NOT NULL,
  `anio` int(11) NOT NULL,
  `fecha_registro` datetime NULL DEFAULT NULL,
  `fecha_actualizacion` datetime NULL DEFAULT NULL,
  `cve_estatus` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'VIG',
  PRIMARY KEY (`idciclo`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ciclo
-- ----------------------------
INSERT INTO `ciclo` VALUES (1, 'MAR - JUL 2021', 1, 2021, NULL, NULL, NULL);
INSERT INTO `ciclo` VALUES (2, 'AGO 21 - ENE 22', 2, 2021, '2021-08-13 20:29:58', '2021-08-13 20:29:58', 'VIG');

-- ----------------------------
-- Table structure for estudiantes
-- ----------------------------
DROP TABLE IF EXISTS `estudiantes`;
CREATE TABLE `estudiantes`  (
  `idestudiante` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nombre_estudiante` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sexo` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `idcarrera` int(11) NOT NULL,
  `num_semestre` int(11) NULL DEFAULT NULL,
  `fecha_registro` datetime NULL DEFAULT current_timestamp,
  `fecha_actualizacion` datetime NULL DEFAULT current_timestamp,
  `cve_estatus` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'VIG',
  PRIMARY KEY (`idestudiante`) USING BTREE,
  INDEX `fk_estudiantes_cat_carreras1_idx`(`idcarrera`) USING BTREE,
  CONSTRAINT `fk_estudiantes_cat_carreras1` FOREIGN KEY (`idcarrera`) REFERENCES `cat_carreras` (`idcarrera`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of estudiantes
-- ----------------------------
INSERT INTO `estudiantes` VALUES ('151240020', 'ROMERO FLORES ROSA YULIANA', 'huimanguillo.tecnm.mx', 'F', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('151240043', 'GUTIERREZ GUTIERREZ ERICK DANIEL', 'huimanguillo.tecnm.mx', 'M', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('161240002', 'CRUZ RAMOS ERICK FABIAN', 'huimanguillo.tecnm.mx', 'M', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('161240003', 'GONZÁLEZ GIL ARTURO', 'huimanguillo.tecnm.mx', 'M', 1, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('161240013', 'BOFIL PÉREZ EROS AUGUSTO', 'huimanguillo.tecnm.mx', 'M', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('161240014', 'RUEDA LÓPEZ LEONARDO GABRIEL', 'huimanguillo.tecnm.mx', 'M', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('161240021', 'HERNÁNDEZ TORRES JUAN DANIEL', 'huimanguillo.tecnm.mx', 'M', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('161240024', 'DOMÍNGUEZ GERÓNIMO DIANA IBETH', 'huimanguillo.tecnm.mx', 'F', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('161240029', 'RICARDEZ GARCÍA JOSÉ FRANCISCO', 'huimanguillo.tecnm.mx', 'M', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('161240030', 'PATIÑO QUINTERO JULIA SAMANTHA', 'huimanguillo.tecnm.mx', 'F', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('161240031', 'SÁNCHEZ LÓPEZ EDUARDO', 'huimanguillo.tecnm.mx', 'M', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('161240033', 'VERA MORALES PAOLA DEL CARMEN', 'huimanguillo.tecnm.mx', 'F', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('161240039', 'GALLARDO DAVID ADRIAN ERNESTO', 'huimanguillo.tecnm.mx', 'M', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('161240042', 'PAZOS VILLEGAS GRECIA', 'huimanguillo.tecnm.mx', 'F', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('161240053', 'MENA DE LA ROSA EYDER', 'huimanguillo.tecnm.mx', 'M', 1, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('161240056  ', 'HERNÁNDEZ CONCEPCIÓN JOSÉ ALBERTO', 'huimanguillo.tecnm.mx', 'M', 1, 11, '2021-12-09 21:53:25', '2021-12-09 21:53:25', 'VIG');
INSERT INTO `estudiantes` VALUES ('171240001', 'GAMAS PABLO NANCY BERENICE', 'huimanguillo.tecnm.mx', 'F', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('171240002', 'TORRUCO CARRILLO GUSTAVO ÁNGEL', 'huimanguillo.tecnm.mx', 'M', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('171240003', 'ÁLVAREZ SAN MARTÍN MANUEL ABRAHAM', 'huimanguillo.tecnm.mx', 'M', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('171240004', 'ZAPATA BALAN GABRIELA', 'huimanguillo.tecnm.mx', 'F', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('171240008', 'SALOMÓN DOMÍNGUEZ TERESITA DE JESÚS', 'huimanguillo.tecnm.mx', 'F', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('171240009', 'LÓPEZ JIMENÉZ ESTRELLITA DEL CARMEN', 'huimanguillo.tecnm.mx', 'F', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('171240011', 'HERNÁNDEZ CONCEPCIÓN OSIRIS', 'huimanguillo.tecnm.mx', 'F', 1, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('171240012', 'RAMÍREZ RODRÍGUEZ DANIEL ENRIQUE', 'huimanguillo.tecnm.mx', 'M', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('171240014', 'VIDAL LEÓN VICTORIA', 'huimanguillo.tecnm.mx', 'F', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('171240015', 'RAMOS MENDOZA MIGUEL ÁNGEL', 'huimanguillo.tecnm.mx', 'M', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('171240016', 'LÓPEZ MORENO MARIA GUADALUPE', 'huimanguillo.tecnm.mx', 'F', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('171240017', 'PARDO LEYVA PABLO', 'huimanguillo.tecnm.mx', 'M', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('171240018', 'CUSTODIO DE LA ROSA FRANCISCO DEL CARMEN', 'huimanguillo.tecnm.mx', 'M', 1, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('171240019', 'JIMÉNEZ SALAYA GUSTAVO ALEJANDRO', 'huimanguillo.tecnm.mx', 'M', 1, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('171240020', 'CARTAGENA SEGURA LUZ ESTHER', 'huimanguillo.tecnm.mx', 'F', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('171240021', 'DOMÍNGUEZ ÁLVAREZ RUFINO', 'huimanguillo.tecnm.mx', 'M', 1, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('171240022', 'LINARES VIDAÑA XENIA', 'huimanguillo.tecnm.mx', 'F', 1, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('171240025', 'CRUZ JIMÉNEZ ROSA RACHEL', 'huimanguillo.tecnm.mx', 'F', 1, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('171240026', 'GARCÍA BARAHONA NANCY', 'huimanguillo.tecnm.mx', 'F', 1, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('171240027', 'GONZÁLEZ CANO ÁNGEL ANTONIO', 'huimanguillo.tecnm.mx', 'M', 1, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('171240028', 'DOMÍNGUEZ CADENAS EDGAR JOHAN', 'huimanguillo.tecnm.mx', 'M', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('171240029', 'MÉNDEZ SANTIAGO MADELÍN', 'huimanguillo.tecnm.mx', 'F', 1, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('171240031', 'GONZÁLEZ URBINA FABIAN', 'huimanguillo.tecnm.mx', 'M', 1, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('171240032', 'CUPIDO PÉREZ BETHZAYDA', 'huimanguillo.tecnm.mx', 'F', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('171240034', 'LEÓN CADENA ÁNGEL ROSENDO', 'huimanguillo.tecnm.mx', 'M', 1, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('171240035', 'SÁNCHEZ REYES CARLOS ANDERSON', 'huimanguillo.tecnm.mx', 'M', 1, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('171240037', 'CRUZ NOTARIO JONATHAN KENNEY', 'huimanguillo.tecnm.mx', 'M', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('171240044', 'RAMÓN LARIOS LIZBETH SUSANA', 'huimanguillo.tecnm.mx', 'F', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('171240046', 'HERNÁNDEZ OLAN JESÚS DAVID', 'huimanguillo.tecnm.mx', 'M', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('181240001', 'AGUIRRE LÓPEZ YESENIA', 'huimanguillo.tecnm.mx', 'F', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('181240002', 'ARIAS TORRES MARÍA FERNANDA', 'huimanguillo.tecnm.mx', 'F', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('181240004', 'GARDUZA DE LA CRUZ NARCISO', 'huimanguillo.tecnm.mx', 'M', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('181240007', 'BOCANEGRA SÁNCHEZ KAREN ITZEL', 'huimanguillo.tecnm.mx', 'F', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('181240008', 'SÁNCHEZ PABLO ANA PATRICIA', 'huimanguillo.tecnm.mx', 'F', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('181240009', 'OSORIO SALAYA ITZAYANA DEL CARMEN', 'huimanguillo.tecnm.mx', 'F', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('181240012', 'CANO OLÁN MARÍA DEL CARMEN', 'huimanguillo.tecnm.mx', 'F', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('181240013', 'DOMÍNGUEZ PÉREZ MERARI SUNNEY', 'huimanguillo.tecnm.mx', 'F', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('181240015', 'CANO LÓPEZ JIREHT SHIKARI', 'huimanguillo.tecnm.mx', 'M', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('181240016', 'RUIZ TORRES PATSY MINELIZ', 'huimanguillo.tecnm.mx', 'F', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('181240018', 'JÁCOME BASTIDA SALVADOR', 'huimanguillo.tecnm.mx', 'M', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('181240019', 'HERNÁNDEZ RAMÍREZ HANNIA ISABEL', 'huimanguillo.tecnm.mx', 'F', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('181240020', 'RAMOS LÓPEZ RUBI DEL CARMEN', 'huimanguillo.tecnm.mx', 'F', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('181240023', 'CÓRDOVA CÓRDOVA ANTONIO', 'huimanguillo.tecnm.mx', 'M', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('181240026', 'NOTARIO HERRERA JESÚS MANUEL', 'huimanguillo.tecnm.mx', 'M', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('181240027', 'ACOSTA DE LA CRUZ IRVIN ALEJANDRO', 'huimanguillo.tecnm.mx', 'M', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('181240028', 'MÉNDEZ VIDAL ENIX RUBI', 'huimanguillo.tecnm.mx', 'F', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('181240031', 'CHAN ALEJANDRO IRVING UZIEL', 'huimanguillo.tecnm.mx', 'M', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('181240032', 'PÉREZ CRUZ CARLOS AUGUSTO', 'huimanguillo.tecnm.mx', 'M', 1, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('181240033', 'CÓRDOVA ÓLAN CARLOS ALBERTO', 'huimanguillo.tecnm.mx', 'M', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('181240035', 'CASTRO QUE JOSÉ CARLOS', 'huimanguillo.tecnm.mx', 'M', 1, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('181240036', 'RAMÍREZ MORALES EMANUEL DEL CARMEN', 'huimanguillo.tecnm.mx', 'M', 1, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('181240040', 'GÓMEZ GÓMEZ HUMBERTO', 'huimanguillo.tecnm.mx', 'M', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('181240041', 'TIQUET RAMÍREZ LÁZARO', 'huimanguillo.tecnm.mx', 'M', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('181240043', 'LARA ADORNO JOSÉ TRINIDAD', 'huimanguillo.tecnm.mx', 'M', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('181240044', 'MORALES LARA ROSA MARÍA DE LOS ÁNGELES', 'huimanguillo.tecnm.mx', 'F', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('181240045', 'ROSALDO SÁNCHEZ YULIANA DEL CARMEN', 'huimanguillo.tecnm.mx', 'F', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('181240046', 'TORRES JIMÉNEZ ANA LUCERO', 'huimanguillo.tecnm.mx', 'F', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('181240047', 'MARTÍNEZ LÓPEZ ANDREA BERENICE', 'huimanguillo.tecnm.mx', 'F', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('181240048', 'CONCEPCIÓN SÁNCHEZ YULISSA', 'huimanguillo.tecnm.mx', 'F', 1, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('181240050', 'GALLEGOS SÁNCHEZ KARLA GUADALUPE', 'huimanguillo.tecnm.mx', 'F', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('181240051', 'LÓPEZ CÓRDOVA IVÁN', 'huimanguillo.tecnm.mx', 'M', 1, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('181240052', 'CÓRDOVA MÉNDEZ FRANCISCA', 'huimanguillo.tecnm.mx', 'F', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('181240054', 'GAMAS COLLADO EMMANUEL', 'huimanguillo.tecnm.mx', 'M', 1, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('181240055', 'MARTÍNEZ PAYRÓ ANGIE FERNANDA', 'huimanguillo.tecnm.mx', 'F', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('181240057', 'KU SALAYA KEVIN YANG', 'huimanguillo.tecnm.mx', 'M', 1, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('181240058', 'MÁRQUEZ GARCÍA JOSEFINA', 'huimanguillo.tecnm.mx', 'F', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('181240059', 'MONTIEL CUEVAS ÁNGEL RACIEL', 'huimanguillo.tecnm.mx', 'M', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('181240060', 'MARTÍNEZ GARCÍA JUAN DIEGO', 'huimanguillo.tecnm.mx', 'M', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('181240061', 'IZQUIERDO MENA JOSMAR JOEY', 'huimanguillo.tecnm.mx', 'M', 1, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('181240063', 'RÁMIREZ OLAN JESSICA GUADALUPE', 'huimanguillo.tecnm.mx', 'M', 1, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('181240065', 'GONZÁLEZ GONZÁLEZ XIOMARA ITZEL', 'huimanguillo.tecnm.mx', 'F', 1, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('181240066', 'ISIDRO LUCAS JESÚS', 'huimanguillo.tecnm.mx', 'M', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('181240068', 'ALPUCHE RAMOS DANIELA', 'huimanguillo.tecnm.mx', 'F', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('181240069', 'SOLIS ARELLANO ISRAEL', 'huimanguillo.tecnm.mx', 'M', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('181240070', 'LÓPEZ SEGURA JOSÉ ARMANDO', 'huimanguillo.tecnm.mx', 'M', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('181240073', 'DE LA FUENTE MARTÍNEZ OSIRIS ALEJANDRA', 'huimanguillo.tecnm.mx', 'F', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('181240074', 'MORALES DOMÍNGUEZ MIGUEL EDUARDO', 'huimanguillo.tecnm.mx', 'M', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('181240075', 'CORREA CADENA YULIANA', 'huimanguillo.tecnm.mx', 'F', 1, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('181240076', 'LÓPEZ JIMÉNEZ JOSÉ MANUEL', 'huimanguillo.tecnm.mx', 'M', 1, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('181240082', 'SÁNCHEZ ADORNO ALICIA', 'huimanguillo.tecnm.mx', 'F', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('191240001', 'ACOSTA GAMAS CHRISTIAN JAIR', 'huimanguillo.tecnm.mx', 'M', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('191240002', 'ARCOS GONZÁLEZ VERONICA', 'huimanguillo.tecnm.mx', 'F', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('191240006', 'ESCOBAR SÁNCHEZ INGRID', 'huimanguillo.tecnm.mx', 'F', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('191240007', 'FUENTES SÁNCHEZ CASSANDRA DEL CARMEN', 'huimanguillo.tecnm.mx', 'F', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('191240009', 'GARCÍA RODRÍGUEZ ALONDRA PALOMA', 'huimanguillo.tecnm.mx', 'F', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('191240010', 'HERNÁNDEZ AGUILAR HECTOR DAVID', 'huimanguillo.tecnm.mx', 'M', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('191240011', 'HERNÁNDEZ BARAHONA KEYRI YULIANA', 'huimanguillo.tecnm.mx', 'F', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('191240013', 'HERNÁNDEZ ZAMUDIO ANA PATRICIA', 'huimanguillo.tecnm.mx', 'F', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('191240014', 'LÓPEZ CRUZ JENNIFER', 'huimanguillo.tecnm.mx', 'F', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('191240015', 'MARTINEZ DE ESCOBAR ESPINOZA PERLA RUBI', 'huimanguillo.tecnm.mx', 'F', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('191240016', 'MENA GUTIÉRREZ GELISTLI ESTHER', 'huimanguillo.tecnm.mx', 'F', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('191240017', 'OCHOA JACINTO IRVING ALEXIS', 'huimanguillo.tecnm.mx', 'M', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('191240018', 'ALEGRÍA DE LA ROSA MIRIAN', 'huimanguillo.tecnm.mx', 'F', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('191240020', 'GONZÁLEZ RODRÍGUEZ MELISSA DE JESÚS', 'huimanguillo.tecnm.mx', 'F', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('191240021', 'POSADA HERRERA RODRIGO IVÁN', 'huimanguillo.tecnm.mx', 'M', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('191240022', 'RAMÍREZ RODRÍGUEZ ESTEBAN', 'huimanguillo.tecnm.mx', 'M', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('191240023', 'RAMOS HERNÁNDEZ FLOR MAGDALY', 'huimanguillo.tecnm.mx', 'F', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('191240024', 'RIOS SÁNCHEZ GABRIEL', 'huimanguillo.tecnm.mx', 'M', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('191240025', 'SALAYA CEFERINO ERIK ROBERTO', 'huimanguillo.tecnm.mx', 'M', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('191240027', 'SANCHEZ VALENZUELA DIEGO GUADALUPE', 'huimanguillo.tecnm.mx', 'M', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('191240028', 'SÁNCHEZ LÓPEZ ESTEFANIA', 'huimanguillo.tecnm.mx', 'F', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('191240029', 'VÁZQUEZ VELÁZQUEZ LANDY', 'huimanguillo.tecnm.mx', 'F', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('191240030', 'CASTILLO LÓPEZ LITZY DEL CARMEN', 'huimanguillo.tecnm.mx', 'F', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('191240031', 'SÁNCHEZ RODRÍGUEZ HENRY GUADALUPE', 'huimanguillo.tecnm.mx', 'M', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('191240033', 'GARCÍA SÁNCHEZ ARISBETH GUADALUPE', 'huimanguillo.tecnm.mx', 'F', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('191240035', 'JIMÉNEZ CRUZ RASHELL', 'huimanguillo.tecnm.mx', 'F', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('191240036', 'LÓPEZ AGUILAR MARIO EMILIANO', 'huimanguillo.tecnm.mx', 'M', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('191240038', 'NARANJO TORRUCO MERCEDES', 'huimanguillo.tecnm.mx', 'F', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('191240039', 'NOTARIO HERRERA FERNANDO', 'huimanguillo.tecnm.mx', 'M', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('191240041', 'PALMA ÁLVAREZ RUBICEL', 'huimanguillo.tecnm.mx', 'M', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('191240043', 'SÁNCHEZ SALAYA RAFAEL MAURICIO', 'huimanguillo.tecnm.mx', 'M', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('191240044', 'RUEDA RAMOS LEONEL ANTONIO', 'huimanguillo.tecnm.mx', 'M', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('191240045', 'RAMOS COLIN VICTOR MANUEL', 'huimanguillo.tecnm.mx', 'M', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('191240047', 'VALENZUELA CÓRDOVA ÁNGELA', 'huimanguillo.tecnm.mx', 'F', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('191240049', 'GONZÁLEZ LÓPEZ ÁNGEL GABRIEL', 'huimanguillo.tecnm.mx', 'M', 1, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('191240050', 'HEREDIA MENDEZ FLOR YULISA', 'huimanguillo.tecnm.mx', 'F', 1, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('191240051', 'HERNÁNDEZ BROCA ANTONIO', 'huimanguillo.tecnm.mx', 'M', 1, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('191240052', 'HERNÁNDEZ PABLO RUBI CRISTHELL', 'huimanguillo.tecnm.mx', 'F', 1, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('191240055', 'PÉREZ VÁZQUEZ ALEXANDER', 'huimanguillo.tecnm.mx', 'M', 1, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('191240058', 'VÁZQUEZ CASTILLO GLORIA ARACELY', 'huimanguillo.tecnm.mx', 'F', 1, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('191240059', 'ALCUDIA JIMENEZ RICARDO ALBERTO', 'huimanguillo.tecnm.mx', 'M', 2, 3, '2021-09-07 09:47:06', '2021-09-07 09:47:06', 'VIG');
INSERT INTO `estudiantes` VALUES ('191240060', 'PARDO TOLEDO YAMILET', 'huimanguillo.tecnm.mx', 'M', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('191240061', 'SÁNCHEZ MARTÍNEZ ANYI MICHELL', 'huimanguillo.tecnm.mx', 'F', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('191240063', 'DE LA CRUZ RODRÍGUEZ LAURA CECILIA', 'huimanguillo.tecnm.mx', 'F', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('191240064', 'HERNÁNDEZ RAMOS JOSÉ IGNACIO', 'huimanguillo.tecnm.mx', 'M', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('191240068', 'GEORGANA  ALVARADO JUAN JOSÉ', 'huimanguillo.tecnm.mx', 'M', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240003', 'COLLADO BROCA VICTOR ANDRES', 'huimanguillo.tecnm.mx', 'M', 1, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240004', 'DE LA CRUZ PÉREZ JOSÉ MAURICIO', 'huimanguillo.tecnm.mx', 'M', 1, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240006', 'PIÑERA CRUZ CARLOS ARTURO', 'huimanguillo.tecnm.mx', 'M', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240007', 'ALPUCHE ROMERO ELIUD', 'huimanguillo.tecnm.mx', 'M', 4, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240008', 'GAMAS COLLADO MARIO ELIAS', 'huimanguillo.tecnm.mx', 'M', 1, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240009', 'GAMAS PÉREZ CRISTIAN ALEJANDRO', 'huimanguillo.tecnm.mx', 'M', 1, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240011', 'GARDUZA OVANDO ÁNGEL ENRIQUE', 'huimanguillo.tecnm.mx', 'M', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240012', 'GARDUZA SÁNCHEZ VANESSA AMAIRANY', 'huimanguillo.tecnm.mx', 'F', 1, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240013', 'HERNÁNDEZ CONCEPCIÓN HUMBERTO', 'huimanguillo.tecnm.mx', 'M', 1, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240014', 'HERNÁNDEZ DE LOS SANTOS KAREN MONSERRAT', 'huimanguillo.tecnm.mx', 'F', 1, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240015', 'HERRERA ROMERO NADIA CITLALI', 'huimanguillo.tecnm.mx', 'F', 1, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240016', 'JIMÉNEZ LÓPEZ VIRIDIANA', 'huimanguillo.tecnm.mx', 'F', 1, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240018', 'LANDERO SÁNCHEZ NORBERTO', 'huimanguillo.tecnm.mx', 'M', 4, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240019', 'MENA DE LA ROSA JOSÉ FRANCISCO', 'huimanguillo.tecnm.mx', 'M', 1, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240021', 'MORENO RODRÍGUEZ ANTONIO ARTURO', 'huimanguillo.tecnm.mx', 'M', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240022', 'REYES BECERRA ÁNGEL', 'huimanguillo.tecnm.mx', 'M', 1, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240023', 'RUIZ MENDOZA ZAIRA DEL ALBA', 'huimanguillo.tecnm.mx', 'F', 1, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240034', 'CUSTODIO GARCÍA PRISCILA', 'huimanguillo.tecnm.mx', 'F', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240048', 'LÓPEZ JIMÉNEZ MARIO ÁNGEL', 'huimanguillo.tecnm.mx', 'M', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240052', 'NARANJO ESCUDERO MIGUEL ALEJANDRO', 'huimanguillo.tecnm.mx', 'M', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240053', 'PÉREZ PÉREZ JACQUELINE', 'huimanguillo.tecnm.mx', 'F', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240055', 'REYES DE DIOS  HEIDY GISELLE', 'huimanguillo.tecnm.mx', 'F', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240056', 'ROSAS ORDOÑEZ ARTURO', 'huimanguillo.tecnm.mx', 'M', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240058', 'SANTIAGO ACOSTA MARLENE', 'huimanguillo.tecnm.mx', 'F', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240061', 'SOLANO MÉNDEZ CRISTIAN', 'huimanguillo.tecnm.mx', 'M', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240066', 'VALENCIA VAZCONCELOS ERICK EDUARDO', 'huimanguillo.tecnm.mx', 'M', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240067', 'VALENZUELA CARRETO KENIA LETICIA', 'huimanguillo.tecnm.mx', 'F', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240068', 'VIDAL LEÓN LIZBETH', 'huimanguillo.tecnm.mx', 'F', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240069', 'ZENTENO RAMÓN DAMIÁN', 'huimanguillo.tecnm.mx', 'M', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240071', 'ALONSO GARCÍA DEYSI MARIA', 'huimanguillo.tecnm.mx', 'F', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240073', 'BARJAU VALIER BRAYAN', 'huimanguillo.tecnm.mx', 'M', 4, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240074', 'CASTILLO MARTÍNEZ ROBERTO', 'huimanguillo.tecnm.mx', 'M', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240077', 'CÓRDOVA HERNÁNDEZ JONATHAN JOSÉ', 'huimanguillo.tecnm.mx', 'M', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240078 ', 'RUIZ AGUILAR LEOPOLDO', 'huimanguillo.tecnm.mx', 'M', 4, 3, '2021-12-09 21:57:54', '2021-12-09 21:57:54', 'VIG');
INSERT INTO `estudiantes` VALUES ('201240079', 'CRUZ LÁZARO FRANCISCO', 'huimanguillo.tecnm.mx', 'M', 4, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240080', 'CUPIDO CADENAS LUIS AMIR', 'huimanguillo.tecnm.mx', 'M', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240081', 'CUPIDO CADENAS WILBERT ALI', 'huimanguillo.tecnm.mx', 'M', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240083', 'DE LA CRUZ MONTIEL BRENDA ESTHELA', 'huimanguillo.tecnm.mx', 'F', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240084', 'ECHEVARRIA DE LA CRUZ EDWIN', 'huimanguillo.tecnm.mx', 'M', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240090', 'GERÓNIMO VENTURA JAZMÍN', 'huimanguillo.tecnm.mx', 'F', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240092', 'HERNÁNDEZ CADENAS MIGUEL ENRIQUE', 'huimanguillo.tecnm.mx', 'M', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240094', 'HERNÁNDEZ PARDO VÍCTOR MANUEL', 'huimanguillo.tecnm.mx', 'M', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240095', 'JIMÉNEZ URGELL JOSE JULIÁN', 'huimanguillo.tecnm.mx', 'M', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240096', 'LÓPEZ CABELLO JESÚS DEL CARMEN', 'huimanguillo.tecnm.mx', 'M', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240097', 'LÓPEZ LIMÓN KARLA ALESSANDRA', 'huimanguillo.tecnm.mx', 'F', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240098', 'LÓPEZ SEGURA CRISTIAN AARON', 'huimanguillo.tecnm.mx', 'M', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240100', 'MAGAÑA DOMÍNGUEZ SALOMÉ', 'huimanguillo.tecnm.mx', 'F', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240108', 'CRUZ VÁZQUEZ HEBERT', 'huimanguillo.tecnm.mx', 'M', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240112', 'CORNELIO SANTIAGO BRENDA ITZEL', 'huimanguillo.tecnm.mx', 'F', 4, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240113', 'FACUNDO DE LA O JORGE', 'huimanguillo.tecnm.mx', 'M', 4, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240117', 'OLEA MENESES JUAN PABLO', 'huimanguillo.tecnm.mx', 'M', 4, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240119', 'GUZMÁN PÉREZ TOMAS', 'huimanguillo.tecnm.mx', 'M', 4, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240120', 'MORALES CÓRDOBA ROBERTO', 'huimanguillo.tecnm.mx', 'M', 4, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240124', 'YAÑEZ JIMÉNEZ JOSÉ LUIS', 'huimanguillo.tecnm.mx', 'M', 4, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240126', 'PÉREZ HERNÁNDEZ LARISSA YAZMIN', 'huimanguillo.tecnm.mx', 'F', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240128', 'MORALES RODRÍGUEZ RAFAEL', 'huimanguillo.tecnm.mx', 'M', 1, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240129', 'ABASCAL SÁNCHEZ MELINA', 'huimanguillo.tecnm.mx', 'F', 4, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240130', 'LÓPEZ CÓRDOVA JULIO ADRIAN', 'huimanguillo.tecnm.mx', 'M', 4, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240132', 'ALEMÁN ZAVALA GONZÁLO RAMÓN', 'huimanguillo.tecnm.mx', 'M', 4, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240133', 'GARCÍA GONZÁLEZ DULCE CONSUELO', 'huimanguillo.tecnm.mx', 'F', 3, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('201240137', 'ÁLVAREZ SAN MARTÍN VICTOR MANUEL', 'huimanguillo.tecnm.mx', 'M', 4, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('211240001', 'MORENO GOMEZ DOLORES RAQUEL', 'huimanguillo.tecnm.mx', 'M', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('211240002', 'MARTÍNEZ GÓMEZ VICENTE ALEJANDRO', 'huimanguillo.tecnm.mx', 'M', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('211240003', 'LÓPEZ LÓPEZ MARÍA DEL ROSARIO', 'huimanguillo.tecnm.mx', 'F', 4, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('211240004', 'DOMÍNGUEZ RAMOS IRVING', 'huimanguillo.tecnm.mx', 'M', 4, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('211240005', 'MORALES TOSCA BERENICE', 'huimanguillo.tecnm.mx', 'F', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('211240006', 'SILVA ORAMAS ERNESTO ALONSO', 'huimanguillo.tecnm.mx', 'M', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('211240007', 'DE LA CRUZ OLIVA IRMA PAOLA', 'huimanguillo.tecnm.mx', 'F', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('211240008', 'VALENZUELA COLORADO DANIEL ALBERTO', 'huimanguillo.tecnm.mx', 'M', 4, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('211240009', 'VERA ORTÍZ DULCE MARIA', 'huimanguillo.tecnm.mx', 'F', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('211240010', 'PRADO CRUZ JUAN MINERVO', 'huimanguillo.tecnm.mx', 'M', 4, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('211240011', 'CALCANEO CARRETA ALLISON', 'huimanguillo.tecnm.mx', 'F', 4, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('211240013', 'SALMERON VERA GUSTAVO', 'huimanguillo.tecnm.mx', 'M', 4, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('211240014', 'NOTARIO HAAS IRWIN GEOVANNI', 'huimanguillo.tecnm.mx', 'M', 2, NULL, NULL, NULL, NULL);
INSERT INTO `estudiantes` VALUES ('211240020', 'GÓMEZ DE LA CRUZ HEYDI MARGARITA', 'huimanguillo.tecnm.mx', 'F', 2, 1, '2021-08-30 04:52:12', '2021-08-30 04:52:12', 'VIG');
INSERT INTO `estudiantes` VALUES ('211240021', 'ALEJANDRO HERNÁNDEZ ALFONSO', 'huimanguillo.tecnm.mx', 'M', 2, 1, '2021-08-30 04:52:12', '2021-08-30 04:52:12', 'VIG');
INSERT INTO `estudiantes` VALUES ('211240022', 'MARTINEZ GOMEZ FROYLAN', 'l211240022@huimanguillo.tecnm.mx', 'M', 2, 1, '2022-01-14 00:00:00', '2022-01-14 00:00:00', 'VIG');
INSERT INTO `estudiantes` VALUES ('211240023', 'COLORADO GUTIÉRREZ JUDITH ALEJANDRA', 'huimanguillo.tecnm.mx', 'F', 2, 1, '2021-08-30 04:52:12', '2021-08-30 04:52:12', 'VIG');
INSERT INTO `estudiantes` VALUES ('211240024', 'LÓPEZ LÓPEZ MANUEL', 'huimanguillo.tecnm.mx', 'M', 2, 1, '2021-08-30 04:52:12', '2021-08-30 04:52:12', 'VIG');
INSERT INTO `estudiantes` VALUES ('211240025', 'PÉREZ RAMOS ROBERTO DE JESÚS', 'huimanguillo.tecnm.mx', 'M', 2, 1, '2021-08-30 04:52:12', '2021-08-30 04:52:12', 'VIG');
INSERT INTO `estudiantes` VALUES ('211240027', 'RAMÍREZ GUITIÉRREZ JUAN ELÍAS', 'huimanguillo.tecnm.mx', 'M', 2, 1, '2021-08-30 04:52:12', '2021-08-30 04:52:12', 'VIG');
INSERT INTO `estudiantes` VALUES ('211240028', 'MARTÍNEZ GONZÁLEZ HANNS VADIR', 'huimanguillo.tecnm.mx', 'M', 2, 1, '2021-08-30 04:52:12', '2021-08-30 04:52:12', 'VIG');
INSERT INTO `estudiantes` VALUES ('211240029', 'ROSALDO ALEJANDRO SHEYLA CRISTHELL', 'huimanguillo.tecnm.mx', 'F', 2, 1, '2021-08-30 04:52:12', '2021-08-30 04:52:12', 'VIG');
INSERT INTO `estudiantes` VALUES ('211240030', 'TORRES LEÓN JESÚS', 'huimanguillo.tecnm.mx', 'M', 2, 1, '2021-08-30 04:52:12', '2021-08-30 04:52:12', 'VIG');
INSERT INTO `estudiantes` VALUES ('211240031', 'CÁRDENAS BENÍTEZ ARLETHE ANAHÍ', 'huimanguillo.tecnm.mx', 'F', 2, 1, '2021-08-30 04:52:12', '2021-08-30 04:52:12', 'VIG');
INSERT INTO `estudiantes` VALUES ('211240032', 'HERNÁNDEZ JIMÉNEZ LIZBETH YURIDIA', 'huimanguillo.tecnm.mx', 'F', 2, 1, '2021-08-30 04:52:12', '2021-08-30 04:52:12', 'VIG');
INSERT INTO `estudiantes` VALUES ('211240034', 'NARANJO TORRUCO PERLA', 'huimanguillo.tecnm.mx', 'F', 2, 1, '2021-08-30 04:52:12', '2021-08-30 04:52:12', 'VIG');
INSERT INTO `estudiantes` VALUES ('211240035', 'DOMÍNGEZ CADENAS DIANA PAOLA', 'huimanguillo.tecnm.mx', 'F', 2, 1, '2021-08-30 04:52:12', '2021-08-30 04:52:12', 'VIG');
INSERT INTO `estudiantes` VALUES ('211240036', 'DIONISIO ÁLVAREZ LIZBETH DEL CARMEN', 'huimanguillo.tecnm.mx', 'F', 2, 1, '2021-08-30 04:52:12', '2021-08-30 04:52:12', 'VIG');
INSERT INTO `estudiantes` VALUES ('211240037', 'OSORIO ROMERO  DIANA PAOLA  ', 'huimanguillo.tecnm.mx', 'F', 2, 1, '2021-09-07 07:01:55', '2021-09-07 07:01:55', 'VIG');
INSERT INTO `estudiantes` VALUES ('211240038', 'TORRUCO OLÁN MARÍA GUADALUPE', 'huimanguillo.tecnm.mx', 'F', 2, 1, '2021-08-30 04:52:12', '2021-08-30 04:52:12', 'VIG');
INSERT INTO `estudiantes` VALUES ('211240039', 'CALVILLO BRITO ANA PAOLA', 'huimanguillo.tecnm.mx', 'F', 1, 1, '2021-08-30 04:52:12', '2021-08-30 04:52:12', 'VIG');
INSERT INTO `estudiantes` VALUES ('211240040', 'CRUZ TOVILLA MARÍA JESÚS', 'huimanguillo.tecnm.mx', 'F', 1, 1, '2021-08-30 04:52:12', '2021-08-30 04:52:12', 'VIG');
INSERT INTO `estudiantes` VALUES ('211240042', 'HERNÁNDEZ IZQUIERDO MARÍA GUADALUPE  ', 'huimanguillo.tecnm.mx', 'F', 1, 1, '2021-09-07 07:01:55', '2021-09-07 07:01:55', 'VIG');
INSERT INTO `estudiantes` VALUES ('211240043', 'MONTEJO BERNARDO LUIS ROBERTO', 'huimanguillo.tecnm.mx', 'M', 1, 1, '2021-08-30 04:52:12', '2021-08-30 04:52:12', 'VIG');
INSERT INTO `estudiantes` VALUES ('211240044', 'BERNARDO GONZÁLEZ JUAN MANUEL', 'huimanguillo.tecnm.mx', 'M', 1, 1, '2021-08-30 04:52:12', '2021-08-30 04:52:12', 'VIG');
INSERT INTO `estudiantes` VALUES ('211240045', 'MENDOZA ACOSTA LISBETH SUSANA', 'huimanguillo.tecnm.mx', 'F', 1, 1, '2021-08-30 04:52:12', '2021-08-30 04:52:12', 'VIG');
INSERT INTO `estudiantes` VALUES ('211240047', 'ESCUDERO CÓRDOVA ESTRELLA GUADALUPE ', 'huimanguillo.tecnm.mx', 'F', 1, 1, '2021-09-07 07:01:55', '2021-09-07 07:01:55', 'VIG');
INSERT INTO `estudiantes` VALUES ('211240048', 'CARRERA DÍAZ ITASHIANA', 'huimanguillo.tecnm.mx', 'F', 1, 1, '2021-08-30 04:52:12', '2021-08-30 04:52:12', 'VIG');
INSERT INTO `estudiantes` VALUES ('211240049', 'LÓPEZ MARTÍNEZ  SALIM SEBASTIÁN  ', 'huimanguillo.tecnm.mx', 'M', 1, 1, '2021-09-07 07:01:55', '2021-09-07 07:01:55', 'VIG');
INSERT INTO `estudiantes` VALUES ('211240051', 'ROSALDO SÁNHEZ JOSÉ JULIÁN', 'huimanguillo.tecnm.mx', 'M', 3, 1, '2021-08-30 04:52:12', '2021-08-30 04:52:12', 'VIG');
INSERT INTO `estudiantes` VALUES ('211240052', 'GERÓNIMO VENTURA MARÍA NELVA  ', 'huimanguillo.tecnm.mx', 'F', 3, 1, '2021-09-07 07:01:55', '2021-09-07 07:01:55', 'VIG');
INSERT INTO `estudiantes` VALUES ('211240053', 'VENTURA  AGUILAR  ASUNCIÓN ', 'huimanguillo.tecnm.mx', 'M', 3, 1, '2021-09-07 07:01:55', '2021-09-07 07:01:55', 'VIG');
INSERT INTO `estudiantes` VALUES ('211240054', 'TORRES MADRIGAL ANI LEYDI', 'huimanguillo.tecnm.mx', 'F', 3, 1, '2021-08-30 04:52:12', '2021-08-30 04:52:12', 'VIG');
INSERT INTO `estudiantes` VALUES ('211240055', 'DE LA CRUZ OLAN PRICILA', 'huimanguillo.tecnm.mx', 'F', 3, 1, '2021-08-30 04:52:12', '2021-08-30 04:52:12', 'VIG');
INSERT INTO `estudiantes` VALUES ('211240057', 'JIMÉNEZ LINARES  KEVIN SEBASTIÁN  ', 'huimanguillo.tecnm.mx', 'M', 3, 1, '2021-09-07 07:01:55', '2021-09-07 07:01:55', 'VIG');
INSERT INTO `estudiantes` VALUES ('211240059', 'MARTÍNEZ TORRES MARCO ANTONIO', 'huimanguillo.tecnm.mx', 'M', 3, 1, '2021-08-30 04:52:12', '2021-08-30 04:52:12', 'VIG');
INSERT INTO `estudiantes` VALUES ('211240060', 'AGUILAR HERNÁNDEZ JUAN DIEGO', 'huimanguillo.tecnm.mx', 'M', 3, 1, '2021-08-30 04:52:12', '2021-08-30 04:52:12', 'VIG');
INSERT INTO `estudiantes` VALUES ('211240062', 'MARÍN ESCUDERO JUNIOR EMMANUEL', 'huimanguillo.tecnm.mx', 'M', 4, 1, '2021-08-30 04:52:12', '2021-08-30 04:52:12', 'VIG');
INSERT INTO `estudiantes` VALUES ('211240063', 'LÓPEZ MÉNDEZ YESENIA', 'huimanguillo.tecnm.mx', 'F', 3, 1, '2021-08-30 04:52:12', '2021-08-30 04:52:12', 'VIG');
INSERT INTO `estudiantes` VALUES ('211240064', 'MORENO CÓRDOVA GUSTAVO EMILIANO', 'huimanguillo.tecnm.mx', 'M', 3, 1, '2021-08-30 04:52:12', '2021-08-30 04:52:12', 'VIG');
INSERT INTO `estudiantes` VALUES ('211240065', 'MÉNDEZ MURILLO MIGUEL IMANOL', 'huimanguillo.tecnm.mx', 'M', 3, 1, '2021-08-30 04:52:12', '2021-08-30 04:52:12', 'VIG');
INSERT INTO `estudiantes` VALUES ('211240068', 'PÉREZ PAREDES RODOLFO', 'huimanguillo.tecnm.mx', 'M', 4, 1, '2021-08-30 04:52:12', '2021-08-30 04:52:12', 'VIG');
INSERT INTO `estudiantes` VALUES ('211240069', 'ÁLVAREZ OSORIO GEOVANI', 'huimanguillo.tecnm.mx', 'M', 4, 1, '2021-08-30 04:52:12', '2021-08-30 04:52:12', 'VIG');
INSERT INTO `estudiantes` VALUES ('211240070', ' RODRÍGUEZ JIMÉNEZ  JESÚS EDUARDO ', 'huimanguillo.tecnm.mx', 'F', 4, 1, '2021-09-07 07:01:55', '2021-09-07 07:01:55', 'VIG');
INSERT INTO `estudiantes` VALUES ('211240071', 'HERNÁNDEZ RAMOS JENNIFER IVETTE', 'huimanguillo.tecnm.mx', 'F', 4, 1, '2021-08-30 04:52:12', '2021-08-30 04:52:12', 'VIG');
INSERT INTO `estudiantes` VALUES ('211240072', 'MENA RAMOS RUBÍ ESTELA', 'huimanguillo.tecnm.mx', 'F', 4, 1, '2021-08-30 04:52:12', '2021-08-30 04:52:12', 'VIG');
INSERT INTO `estudiantes` VALUES ('211240073', 'RODRÍGUEZ DE LA CRUZ CARLOS ALBERTO', 'huimanguillo.tecnm.mx', 'M', 4, 1, '2021-08-30 04:52:12', '2021-08-30 04:52:12', 'VIG');
INSERT INTO `estudiantes` VALUES ('211240074', 'FACUNDO VILLALOBOS EMILIO  ', 'huimanguillo.tecnm.mx', 'M', 4, 1, '2021-09-07 07:01:55', '2021-09-07 07:01:55', 'VIG');
INSERT INTO `estudiantes` VALUES ('211240075', 'PALMA ALONSO OMAR', 'huimanguillo.tecnm.mx', 'M', 3, 1, '2021-08-30 04:52:12', '2021-08-30 04:52:12', 'VIG');
INSERT INTO `estudiantes` VALUES ('211240076', 'GARCÍA MIRANDA JOSÉ LUIS', 'huimanguillo.tecnm.mx', 'M', 4, 1, '2021-08-30 04:52:12', '2021-08-30 04:52:12', 'VIG');
INSERT INTO `estudiantes` VALUES ('211240078', 'COLORADO GUTIÉRREZ EVA JAZMÍN', 'huimanguillo.tecnm.mx', 'F', 2, 1, '2022-01-13 16:51:52', '2022-01-13 16:51:52', 'VIG');
INSERT INTO `estudiantes` VALUES ('211240080', 'ALEJANDRO JIMÈNEZ ADOLFO ÂNGEL', 'huimanguillo.tecnm.mx', 'M', 1, 1, '2021-09-07 07:01:55', '2021-09-07 07:01:55', 'VIG');
INSERT INTO `estudiantes` VALUES ('211240081', ' OLÁN  PÉREZ  OMAR', 'huimanguillo.tecnm.mx', 'M', 2, 1, '2021-09-07 07:01:55', '2021-09-07 07:01:55', 'VIG');
INSERT INTO `estudiantes` VALUES ('211240082', 'RODRÍGUEZ MORALES JONATHAN JESÚS', 'huimanguillo.tecnm.mx', 'M', 3, 1, '2021-09-07 07:01:55', '2021-09-07 07:01:55', 'VIG');
INSERT INTO `estudiantes` VALUES ('211240083', 'LÓPEZ GONZÁLEZ CLAUDIA PAOLA', 'huimanguillo.tecnm.mx', 'F', 3, 1, '2021-09-07 07:01:55', '2021-09-07 07:01:55', 'VIG');
INSERT INTO `estudiantes` VALUES ('211240084', 'ACUÑA GUTIERREZ ÁNDRES', 'huimanguillo.tecnm.mx', 'M', 3, 1, '2021-09-07 07:01:55', '2021-09-07 07:01:55', 'VIG');
INSERT INTO `estudiantes` VALUES ('211240085', 'GARCIA LOPEZ GABRIELA', 'L211240085@huimanguillo.tecnm.mx', 'F', 2, 1, '2022-01-14 00:00:00', '2022-01-14 00:00:00', 'VIG');
INSERT INTO `estudiantes` VALUES ('211240087', 'DE LA ROSA HERRERA JOSÉ JULIAN', 'huimanguillo.tecnm.mx', 'M', 2, 1, '2022-01-13 16:50:16', '2022-01-13 16:50:16', 'VIG');
INSERT INTO `estudiantes` VALUES ('B156P1225', 'MERCADO ESCAMILLA LUIS EDUARDO', 'huimanguillo.tecnm.mx', 'M', 3, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for grupos
-- ----------------------------
DROP TABLE IF EXISTS `grupos`;
CREATE TABLE `grupos`  (
  `idgrupo` int(11) NOT NULL AUTO_INCREMENT,
  `idciclo` int(11) NOT NULL,
  `idcarrera` int(11) NOT NULL,
  `idmateria` int(11) NOT NULL,
  `idprofesor` int(11) NOT NULL,
  `num_semestre` int(11) NULL DEFAULT NULL,
  `desc_grupo_corto` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `desc_grupo` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `aula` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fecha_envio_acta` datetime NULL DEFAULT NULL,
  `horario` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lunes` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `martes` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `miercoles` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jueves` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `viernes` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sabado` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idgrupo`) USING BTREE,
  INDEX `fk_grupos_ciclo1_idx`(`idciclo`) USING BTREE,
  INDEX `fk_grupos_profesores1_idx`(`idprofesor`) USING BTREE,
  INDEX `fk_grupos_cat_materias1_idx`(`idmateria`) USING BTREE,
  INDEX `fk_grupos_cat_carreras1_idx`(`idcarrera`) USING BTREE,
  CONSTRAINT `fk_grupos_cat_carreras1` FOREIGN KEY (`idcarrera`) REFERENCES `cat_carreras` (`idcarrera`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_grupos_cat_materias1` FOREIGN KEY (`idmateria`) REFERENCES `cat_materias` (`idmateria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_grupos_ciclo1` FOREIGN KEY (`idciclo`) REFERENCES `ciclo` (`idciclo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_grupos_profesores1` FOREIGN KEY (`idprofesor`) REFERENCES `profesores` (`idprofesor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 191 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of grupos
-- ----------------------------

-- ----------------------------
-- Table structure for grupos_estudiantes
-- ----------------------------
DROP TABLE IF EXISTS `grupos_estudiantes`;
CREATE TABLE `grupos_estudiantes`  (
  `idgrupo` int(11) NOT NULL,
  `idestudiante` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `idopcion_curso` int(11) NOT NULL,
  `p1` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `p2` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `p3` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `p4` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `p5` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `p6` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `p7` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `p8` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `p9` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sp1` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sp2` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sp3` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sp4` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sp5` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sp6` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sp7` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sp8` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sp9` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `s1` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `s2` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `s3` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `s4` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `s5` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `s6` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `s7` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `s8` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `s9` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fecha_registro` datetime NULL DEFAULT current_timestamp,
  `fecha_actualizacion` datetime NULL DEFAULT current_timestamp,
  `cve_estatus` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'VIG',
  `idciclo` int(11) NULL DEFAULT NULL,
  `idgrupoidestudiante` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idgrupo`, `idestudiante`) USING BTREE,
  INDEX `fk_grupos_estudiantes_cat_opcion_curso1_idx`(`idopcion_curso`) USING BTREE,
  INDEX `fk_grupos_estudiantes_estudiantes1_idx`(`idestudiante`) USING BTREE,
  INDEX `fk_grupos_estudiantes_grupos1_idx`(`idgrupo`) USING BTREE,
  CONSTRAINT `fk_grupos_estudiantes_cat_opcion_curso1` FOREIGN KEY (`idopcion_curso`) REFERENCES `cat_opcion_curso` (`idopcion_curso`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_grupos_estudiantes_estudiantes1` FOREIGN KEY (`idestudiante`) REFERENCES `estudiantes` (`idestudiante`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_grupos_estudiantes_grupos1` FOREIGN KEY (`idgrupo`) REFERENCES `grupos` (`idgrupo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of grupos_estudiantes
-- ----------------------------
INSERT INTO `grupos_estudiantes` VALUES (1, '151240043', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '1151240043');
INSERT INTO `grupos_estudiantes` VALUES (1, '171240001', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '1171240001');
INSERT INTO `grupos_estudiantes` VALUES (1, '181240015', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '1181240015');
INSERT INTO `grupos_estudiantes` VALUES (1, '181240016', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '1181240016');
INSERT INTO `grupos_estudiantes` VALUES (1, '181240027', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '1181240027');
INSERT INTO `grupos_estudiantes` VALUES (1, '181240031', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '1181240031');
INSERT INTO `grupos_estudiantes` VALUES (1, '181240033', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '1181240033');
INSERT INTO `grupos_estudiantes` VALUES (1, '181240040', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '1181240040');
INSERT INTO `grupos_estudiantes` VALUES (1, '181240041', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '1181240041');
INSERT INTO `grupos_estudiantes` VALUES (1, '181240043', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '1181240043');
INSERT INTO `grupos_estudiantes` VALUES (1, '181240050', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '1181240050');
INSERT INTO `grupos_estudiantes` VALUES (1, '181240058', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '1181240058');
INSERT INTO `grupos_estudiantes` VALUES (1, '181240060', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '1181240060');
INSERT INTO `grupos_estudiantes` VALUES (1, '181240069', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '1181240069');
INSERT INTO `grupos_estudiantes` VALUES (1, '181240070', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '1181240070');
INSERT INTO `grupos_estudiantes` VALUES (1, '191240063', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '1191240063');
INSERT INTO `grupos_estudiantes` VALUES (2, '201240011', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '2201240011');
INSERT INTO `grupos_estudiantes` VALUES (2, '201240021', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '2201240021');
INSERT INTO `grupos_estudiantes` VALUES (2, '201240071', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '2201240071');
INSERT INTO `grupos_estudiantes` VALUES (2, '201240074', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '2201240074');
INSERT INTO `grupos_estudiantes` VALUES (2, '201240077', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '2201240077');
INSERT INTO `grupos_estudiantes` VALUES (2, '201240080', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '2201240080');
INSERT INTO `grupos_estudiantes` VALUES (2, '201240081', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '2201240081');
INSERT INTO `grupos_estudiantes` VALUES (2, '201240083', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '2201240083');
INSERT INTO `grupos_estudiantes` VALUES (2, '201240084', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '2201240084');
INSERT INTO `grupos_estudiantes` VALUES (2, '201240090', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '2201240090');
INSERT INTO `grupos_estudiantes` VALUES (2, '201240092', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '2201240092');
INSERT INTO `grupos_estudiantes` VALUES (2, '201240094', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '2201240094');
INSERT INTO `grupos_estudiantes` VALUES (2, '201240095', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '2201240095');
INSERT INTO `grupos_estudiantes` VALUES (2, '201240096', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '2201240096');
INSERT INTO `grupos_estudiantes` VALUES (2, '201240097', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '2201240097');
INSERT INTO `grupos_estudiantes` VALUES (2, '201240098', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '2201240098');
INSERT INTO `grupos_estudiantes` VALUES (2, '201240100', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '2201240100');
INSERT INTO `grupos_estudiantes` VALUES (2, '201240108', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '2201240108');
INSERT INTO `grupos_estudiantes` VALUES (2, '201240133', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '2201240133');
INSERT INTO `grupos_estudiantes` VALUES (3, '181240028', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '3181240028');
INSERT INTO `grupos_estudiantes` VALUES (3, '181240059', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '3181240059');
INSERT INTO `grupos_estudiantes` VALUES (3, '181240074', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '3181240074');
INSERT INTO `grupos_estudiantes` VALUES (3, '191240001', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '3191240001');
INSERT INTO `grupos_estudiantes` VALUES (3, '191240002', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '3191240002');
INSERT INTO `grupos_estudiantes` VALUES (3, '191240006', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '3191240006');
INSERT INTO `grupos_estudiantes` VALUES (3, '191240007', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '3191240007');
INSERT INTO `grupos_estudiantes` VALUES (3, '191240009', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '3191240009');
INSERT INTO `grupos_estudiantes` VALUES (3, '191240010', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '3191240010');
INSERT INTO `grupos_estudiantes` VALUES (3, '191240011', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '3191240011');
INSERT INTO `grupos_estudiantes` VALUES (3, '191240014', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '3191240014');
INSERT INTO `grupos_estudiantes` VALUES (3, '191240016', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '3191240016');
INSERT INTO `grupos_estudiantes` VALUES (3, '191240017', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '3191240017');
INSERT INTO `grupos_estudiantes` VALUES (3, '191240018', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '3191240018');
INSERT INTO `grupos_estudiantes` VALUES (3, '191240020', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '3191240020');
INSERT INTO `grupos_estudiantes` VALUES (3, '191240021', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '3191240021');
INSERT INTO `grupos_estudiantes` VALUES (3, '191240022', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '3191240022');
INSERT INTO `grupos_estudiantes` VALUES (3, '191240028', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '3191240028');
INSERT INTO `grupos_estudiantes` VALUES (3, '191240029', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '3191240029');
INSERT INTO `grupos_estudiantes` VALUES (4, '161240030', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '4161240030');
INSERT INTO `grupos_estudiantes` VALUES (4, '161240033', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '4161240033');
INSERT INTO `grupos_estudiantes` VALUES (4, '171240001', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '4171240001');
INSERT INTO `grupos_estudiantes` VALUES (4, '171240002', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '4171240002');
INSERT INTO `grupos_estudiantes` VALUES (4, '171240003', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '4171240003');
INSERT INTO `grupos_estudiantes` VALUES (4, '171240012', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '4171240012');
INSERT INTO `grupos_estudiantes` VALUES (4, '171240028', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '4171240028');
INSERT INTO `grupos_estudiantes` VALUES (4, '171240037', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '4171240037');
INSERT INTO `grupos_estudiantes` VALUES (5, '161240002', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '5161240002');
INSERT INTO `grupos_estudiantes` VALUES (5, '171240002', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '5171240002');
INSERT INTO `grupos_estudiantes` VALUES (5, '171240003', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '5171240003');
INSERT INTO `grupos_estudiantes` VALUES (5, '171240012', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '5171240012');
INSERT INTO `grupos_estudiantes` VALUES (5, '171240028', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '5171240028');
INSERT INTO `grupos_estudiantes` VALUES (5, '171240037', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '5171240037');
INSERT INTO `grupos_estudiantes` VALUES (6, '161240030', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '6161240030');
INSERT INTO `grupos_estudiantes` VALUES (6, '181240015', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '6181240015');
INSERT INTO `grupos_estudiantes` VALUES (6, '181240016', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '6181240016');
INSERT INTO `grupos_estudiantes` VALUES (6, '181240027', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '6181240027');
INSERT INTO `grupos_estudiantes` VALUES (6, '181240031', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '6181240031');
INSERT INTO `grupos_estudiantes` VALUES (6, '181240033', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '6181240033');
INSERT INTO `grupos_estudiantes` VALUES (6, '181240040', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '6181240040');
INSERT INTO `grupos_estudiantes` VALUES (6, '181240041', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '6181240041');
INSERT INTO `grupos_estudiantes` VALUES (6, '181240043', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '6181240043');
INSERT INTO `grupos_estudiantes` VALUES (6, '181240050', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '6181240050');
INSERT INTO `grupos_estudiantes` VALUES (6, '181240058', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '6181240058');
INSERT INTO `grupos_estudiantes` VALUES (6, '181240060', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '6181240060');
INSERT INTO `grupos_estudiantes` VALUES (6, '181240069', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '6181240069');
INSERT INTO `grupos_estudiantes` VALUES (7, '191240050', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '7191240050');
INSERT INTO `grupos_estudiantes` VALUES (7, '191240051', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '7191240051');
INSERT INTO `grupos_estudiantes` VALUES (7, '191240052', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '7191240052');
INSERT INTO `grupos_estudiantes` VALUES (7, '191240055', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '7191240055');
INSERT INTO `grupos_estudiantes` VALUES (7, '191240058', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '7191240058');
INSERT INTO `grupos_estudiantes` VALUES (8, '201240011', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '8201240011');
INSERT INTO `grupos_estudiantes` VALUES (8, '201240021', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '8201240021');
INSERT INTO `grupos_estudiantes` VALUES (8, '201240071', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '8201240071');
INSERT INTO `grupos_estudiantes` VALUES (8, '201240074', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '8201240074');
INSERT INTO `grupos_estudiantes` VALUES (8, '201240077', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '8201240077');
INSERT INTO `grupos_estudiantes` VALUES (8, '201240080', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '8201240080');
INSERT INTO `grupos_estudiantes` VALUES (8, '201240081', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '8201240081');
INSERT INTO `grupos_estudiantes` VALUES (8, '201240083', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '8201240083');
INSERT INTO `grupos_estudiantes` VALUES (8, '201240084', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '8201240084');
INSERT INTO `grupos_estudiantes` VALUES (8, '201240090', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '8201240090');
INSERT INTO `grupos_estudiantes` VALUES (8, '201240092', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '8201240092');
INSERT INTO `grupos_estudiantes` VALUES (8, '201240094', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '8201240094');
INSERT INTO `grupos_estudiantes` VALUES (8, '201240095', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '8201240095');
INSERT INTO `grupos_estudiantes` VALUES (8, '201240096', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '8201240096');
INSERT INTO `grupos_estudiantes` VALUES (8, '201240097', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '8201240097');
INSERT INTO `grupos_estudiantes` VALUES (8, '201240098', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '8201240098');
INSERT INTO `grupos_estudiantes` VALUES (8, '201240100', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '8201240100');
INSERT INTO `grupos_estudiantes` VALUES (8, '201240108', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '8201240108');
INSERT INTO `grupos_estudiantes` VALUES (8, '201240133', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '8201240133');
INSERT INTO `grupos_estudiantes` VALUES (9, '181240041', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '9181240041');
INSERT INTO `grupos_estudiantes` VALUES (9, '181240060', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '9181240060');
INSERT INTO `grupos_estudiantes` VALUES (9, '181240070', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '9181240070');
INSERT INTO `grupos_estudiantes` VALUES (9, '191240013', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '9191240013');
INSERT INTO `grupos_estudiantes` VALUES (9, '191240023', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '9191240023');
INSERT INTO `grupos_estudiantes` VALUES (9, '191240030', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '9191240030');
INSERT INTO `grupos_estudiantes` VALUES (9, '191240031', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '9191240031');
INSERT INTO `grupos_estudiantes` VALUES (9, '191240033', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '9191240033');
INSERT INTO `grupos_estudiantes` VALUES (9, '191240035', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '9191240035');
INSERT INTO `grupos_estudiantes` VALUES (9, '191240036', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '9191240036');
INSERT INTO `grupos_estudiantes` VALUES (9, '191240038', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '9191240038');
INSERT INTO `grupos_estudiantes` VALUES (9, '191240039', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '9191240039');
INSERT INTO `grupos_estudiantes` VALUES (9, '191240041', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '9191240041');
INSERT INTO `grupos_estudiantes` VALUES (9, '191240043', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '9191240043');
INSERT INTO `grupos_estudiantes` VALUES (9, '191240044', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '9191240044');
INSERT INTO `grupos_estudiantes` VALUES (9, '191240045', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '9191240045');
INSERT INTO `grupos_estudiantes` VALUES (9, '191240047', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '9191240047');
INSERT INTO `grupos_estudiantes` VALUES (9, '191240061', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '9191240061');
INSERT INTO `grupos_estudiantes` VALUES (9, '191240064', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '9191240064');
INSERT INTO `grupos_estudiantes` VALUES (9, '191240068', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '9191240068');
INSERT INTO `grupos_estudiantes` VALUES (10, '171240001', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '10171240001');
INSERT INTO `grupos_estudiantes` VALUES (10, '171240003', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '10171240003');
INSERT INTO `grupos_estudiantes` VALUES (10, '181240015', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '10181240015');
INSERT INTO `grupos_estudiantes` VALUES (10, '181240016', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '10181240016');
INSERT INTO `grupos_estudiantes` VALUES (10, '181240027', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '10181240027');
INSERT INTO `grupos_estudiantes` VALUES (10, '181240031', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '10181240031');
INSERT INTO `grupos_estudiantes` VALUES (10, '181240033', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '10181240033');
INSERT INTO `grupos_estudiantes` VALUES (10, '181240040', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '10181240040');
INSERT INTO `grupos_estudiantes` VALUES (10, '181240041', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '10181240041');
INSERT INTO `grupos_estudiantes` VALUES (10, '181240043', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '10181240043');
INSERT INTO `grupos_estudiantes` VALUES (10, '181240050', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '10181240050');
INSERT INTO `grupos_estudiantes` VALUES (10, '181240058', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '10181240058');
INSERT INTO `grupos_estudiantes` VALUES (10, '181240060', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '10181240060');
INSERT INTO `grupos_estudiantes` VALUES (10, '181240069', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '10181240069');
INSERT INTO `grupos_estudiantes` VALUES (10, '181240070', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '10181240070');
INSERT INTO `grupos_estudiantes` VALUES (10, '191240063', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '10191240063');
INSERT INTO `grupos_estudiantes` VALUES (10, 'B156P1225', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '10B156P1225');
INSERT INTO `grupos_estudiantes` VALUES (11, '171240001', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '11171240001');
INSERT INTO `grupos_estudiantes` VALUES (11, '191240036', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '11191240036');
INSERT INTO `grupos_estudiantes` VALUES (11, '191240063', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '11191240063');
INSERT INTO `grupos_estudiantes` VALUES (11, '191240068', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '11191240068');
INSERT INTO `grupos_estudiantes` VALUES (11, '201240011', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '11201240011');
INSERT INTO `grupos_estudiantes` VALUES (11, '201240021', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '11201240021');
INSERT INTO `grupos_estudiantes` VALUES (11, '201240071', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '11201240071');
INSERT INTO `grupos_estudiantes` VALUES (11, '201240074', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '11201240074');
INSERT INTO `grupos_estudiantes` VALUES (11, '201240077', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '11201240077');
INSERT INTO `grupos_estudiantes` VALUES (11, '201240080', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '11201240080');
INSERT INTO `grupos_estudiantes` VALUES (11, '201240081', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '11201240081');
INSERT INTO `grupos_estudiantes` VALUES (11, '201240083', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '11201240083');
INSERT INTO `grupos_estudiantes` VALUES (11, '201240084', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '11201240084');
INSERT INTO `grupos_estudiantes` VALUES (11, '201240090', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '11201240090');
INSERT INTO `grupos_estudiantes` VALUES (11, '201240092', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '11201240092');
INSERT INTO `grupos_estudiantes` VALUES (11, '201240094', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '11201240094');
INSERT INTO `grupos_estudiantes` VALUES (11, '201240095', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '11201240095');
INSERT INTO `grupos_estudiantes` VALUES (11, '201240096', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '11201240096');
INSERT INTO `grupos_estudiantes` VALUES (11, '201240097', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '11201240097');
INSERT INTO `grupos_estudiantes` VALUES (11, '201240098', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '11201240098');
INSERT INTO `grupos_estudiantes` VALUES (11, '201240100', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '11201240100');
INSERT INTO `grupos_estudiantes` VALUES (11, '201240108', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '11201240108');
INSERT INTO `grupos_estudiantes` VALUES (11, '201240133', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '11201240133');
INSERT INTO `grupos_estudiantes` VALUES (12, '161240002', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '12161240002');
INSERT INTO `grupos_estudiantes` VALUES (12, '161240030', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '12161240030');
INSERT INTO `grupos_estudiantes` VALUES (12, '161240033', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '12161240033');
INSERT INTO `grupos_estudiantes` VALUES (12, '161240039', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '12161240039');
INSERT INTO `grupos_estudiantes` VALUES (12, '171240028', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '12171240028');
INSERT INTO `grupos_estudiantes` VALUES (12, '181240015', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '12181240015');
INSERT INTO `grupos_estudiantes` VALUES (12, '181240016', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '12181240016');
INSERT INTO `grupos_estudiantes` VALUES (12, '181240027', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '12181240027');
INSERT INTO `grupos_estudiantes` VALUES (12, '181240031', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '12181240031');
INSERT INTO `grupos_estudiantes` VALUES (12, '181240033', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '12181240033');
INSERT INTO `grupos_estudiantes` VALUES (12, '181240040', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '12181240040');
INSERT INTO `grupos_estudiantes` VALUES (12, '181240041', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '12181240041');
INSERT INTO `grupos_estudiantes` VALUES (12, '181240043', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '12181240043');
INSERT INTO `grupos_estudiantes` VALUES (12, '181240050', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '12181240050');
INSERT INTO `grupos_estudiantes` VALUES (12, '181240058', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '12181240058');
INSERT INTO `grupos_estudiantes` VALUES (12, '181240060', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '12181240060');
INSERT INTO `grupos_estudiantes` VALUES (12, '181240069', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '12181240069');
INSERT INTO `grupos_estudiantes` VALUES (12, '191240063', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '12191240063');
INSERT INTO `grupos_estudiantes` VALUES (13, '161240002', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '13161240002');
INSERT INTO `grupos_estudiantes` VALUES (13, '171240001', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '13171240001');
INSERT INTO `grupos_estudiantes` VALUES (13, '171240002', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '13171240002');
INSERT INTO `grupos_estudiantes` VALUES (13, '171240003', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '13171240003');
INSERT INTO `grupos_estudiantes` VALUES (13, '171240012', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '13171240012');
INSERT INTO `grupos_estudiantes` VALUES (13, '171240028', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '13171240028');
INSERT INTO `grupos_estudiantes` VALUES (13, '171240037', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '13171240037');
INSERT INTO `grupos_estudiantes` VALUES (13, '181240015', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '13181240015');
INSERT INTO `grupos_estudiantes` VALUES (13, '181240016', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '13181240016');
INSERT INTO `grupos_estudiantes` VALUES (13, '181240027', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '13181240027');
INSERT INTO `grupos_estudiantes` VALUES (13, '181240031', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '13181240031');
INSERT INTO `grupos_estudiantes` VALUES (13, '181240033', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '13181240033');
INSERT INTO `grupos_estudiantes` VALUES (13, '181240040', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '13181240040');
INSERT INTO `grupos_estudiantes` VALUES (13, '181240043', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '13181240043');
INSERT INTO `grupos_estudiantes` VALUES (13, '181240050', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '13181240050');
INSERT INTO `grupos_estudiantes` VALUES (13, '181240058', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '13181240058');
INSERT INTO `grupos_estudiantes` VALUES (13, '181240060', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '13181240060');
INSERT INTO `grupos_estudiantes` VALUES (13, '181240069', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '13181240069');
INSERT INTO `grupos_estudiantes` VALUES (13, '181240070', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '13181240070');
INSERT INTO `grupos_estudiantes` VALUES (13, '191240063', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '13191240063');
INSERT INTO `grupos_estudiantes` VALUES (14, '161240039', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '14161240039');
INSERT INTO `grupos_estudiantes` VALUES (14, '171240002', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '14171240002');
INSERT INTO `grupos_estudiantes` VALUES (14, '171240003', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '14171240003');
INSERT INTO `grupos_estudiantes` VALUES (14, '171240012', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '14171240012');
INSERT INTO `grupos_estudiantes` VALUES (14, '171240028', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '14171240028');
INSERT INTO `grupos_estudiantes` VALUES (14, '171240037', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '14171240037');
INSERT INTO `grupos_estudiantes` VALUES (15, '181240028', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '15181240028');
INSERT INTO `grupos_estudiantes` VALUES (15, '191240001', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '15191240001');
INSERT INTO `grupos_estudiantes` VALUES (15, '191240002', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '15191240002');
INSERT INTO `grupos_estudiantes` VALUES (15, '191240006', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '15191240006');
INSERT INTO `grupos_estudiantes` VALUES (15, '191240007', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '15191240007');
INSERT INTO `grupos_estudiantes` VALUES (15, '191240009', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '15191240009');
INSERT INTO `grupos_estudiantes` VALUES (15, '191240010', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '15191240010');
INSERT INTO `grupos_estudiantes` VALUES (15, '191240011', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '15191240011');
INSERT INTO `grupos_estudiantes` VALUES (15, '191240014', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '15191240014');
INSERT INTO `grupos_estudiantes` VALUES (15, '191240016', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '15191240016');
INSERT INTO `grupos_estudiantes` VALUES (15, '191240017', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '15191240017');
INSERT INTO `grupos_estudiantes` VALUES (15, '191240018', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '15191240018');
INSERT INTO `grupos_estudiantes` VALUES (15, '191240020', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '15191240020');
INSERT INTO `grupos_estudiantes` VALUES (15, '191240021', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '15191240021');
INSERT INTO `grupos_estudiantes` VALUES (15, '191240022', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '15191240022');
INSERT INTO `grupos_estudiantes` VALUES (15, '191240024', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '15191240024');
INSERT INTO `grupos_estudiantes` VALUES (15, '191240025', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '15191240025');
INSERT INTO `grupos_estudiantes` VALUES (15, '191240028', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '15191240028');
INSERT INTO `grupos_estudiantes` VALUES (15, '191240029', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '15191240029');
INSERT INTO `grupos_estudiantes` VALUES (16, '161240024', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '16161240024');
INSERT INTO `grupos_estudiantes` VALUES (16, '171240008', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '16171240008');
INSERT INTO `grupos_estudiantes` VALUES (16, '171240014', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '16171240014');
INSERT INTO `grupos_estudiantes` VALUES (16, '171240016', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '16171240016');
INSERT INTO `grupos_estudiantes` VALUES (16, '171240020', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '16171240020');
INSERT INTO `grupos_estudiantes` VALUES (16, '171240032', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '16171240032');
INSERT INTO `grupos_estudiantes` VALUES (16, '181240004', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '16181240004');
INSERT INTO `grupos_estudiantes` VALUES (16, '181240007', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '16181240007');
INSERT INTO `grupos_estudiantes` VALUES (16, '181240008', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '16181240008');
INSERT INTO `grupos_estudiantes` VALUES (16, '181240012', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '16181240012');
INSERT INTO `grupos_estudiantes` VALUES (16, '181240018', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '16181240018');
INSERT INTO `grupos_estudiantes` VALUES (16, '181240019', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '16181240019');
INSERT INTO `grupos_estudiantes` VALUES (16, '181240020', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '16181240020');
INSERT INTO `grupos_estudiantes` VALUES (16, '181240023', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '16181240023');
INSERT INTO `grupos_estudiantes` VALUES (16, '181240026', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '16181240026');
INSERT INTO `grupos_estudiantes` VALUES (16, '181240044', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '16181240044');
INSERT INTO `grupos_estudiantes` VALUES (16, '181240045', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '16181240045');
INSERT INTO `grupos_estudiantes` VALUES (16, '181240046', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '16181240046');
INSERT INTO `grupos_estudiantes` VALUES (16, '181240047', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '16181240047');
INSERT INTO `grupos_estudiantes` VALUES (16, '181240052', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '16181240052');
INSERT INTO `grupos_estudiantes` VALUES (16, '181240055', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '16181240055');
INSERT INTO `grupos_estudiantes` VALUES (16, '181240066', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '16181240066');
INSERT INTO `grupos_estudiantes` VALUES (16, '181240073', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '16181240073');
INSERT INTO `grupos_estudiantes` VALUES (16, '181240082', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '16181240082');
INSERT INTO `grupos_estudiantes` VALUES (17, '201240007', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '17201240007');
INSERT INTO `grupos_estudiantes` VALUES (17, '201240018', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '17201240018');
INSERT INTO `grupos_estudiantes` VALUES (17, '201240073', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '17201240073');
INSERT INTO `grupos_estudiantes` VALUES (17, '201240079', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '17201240079');
INSERT INTO `grupos_estudiantes` VALUES (17, '201240112', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '17201240112');
INSERT INTO `grupos_estudiantes` VALUES (17, '201240113', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '17201240113');
INSERT INTO `grupos_estudiantes` VALUES (17, '201240117', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '17201240117');
INSERT INTO `grupos_estudiantes` VALUES (17, '201240119', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '17201240119');
INSERT INTO `grupos_estudiantes` VALUES (17, '201240120', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '17201240120');
INSERT INTO `grupos_estudiantes` VALUES (17, '201240124', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '17201240124');
INSERT INTO `grupos_estudiantes` VALUES (17, '201240129', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '17201240129');
INSERT INTO `grupos_estudiantes` VALUES (17, '201240130', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '17201240130');
INSERT INTO `grupos_estudiantes` VALUES (17, '201240132', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '17201240132');
INSERT INTO `grupos_estudiantes` VALUES (17, '201240137', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '17201240137');
INSERT INTO `grupos_estudiantes` VALUES (17, '211240003', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '17211240003');
INSERT INTO `grupos_estudiantes` VALUES (17, '211240004', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '17211240004');
INSERT INTO `grupos_estudiantes` VALUES (17, '211240008', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '17211240008');
INSERT INTO `grupos_estudiantes` VALUES (17, '211240010', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '17211240010');
INSERT INTO `grupos_estudiantes` VALUES (17, '211240011', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '17211240011');
INSERT INTO `grupos_estudiantes` VALUES (17, '211240013', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '17211240013');
INSERT INTO `grupos_estudiantes` VALUES (18, '201240007', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '18201240007');
INSERT INTO `grupos_estudiantes` VALUES (18, '201240018', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '18201240018');
INSERT INTO `grupos_estudiantes` VALUES (18, '201240073', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '18201240073');
INSERT INTO `grupos_estudiantes` VALUES (18, '201240079', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '18201240079');
INSERT INTO `grupos_estudiantes` VALUES (18, '201240112', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '18201240112');
INSERT INTO `grupos_estudiantes` VALUES (18, '201240113', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '18201240113');
INSERT INTO `grupos_estudiantes` VALUES (18, '201240117', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '18201240117');
INSERT INTO `grupos_estudiantes` VALUES (18, '201240119', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '18201240119');
INSERT INTO `grupos_estudiantes` VALUES (18, '201240120', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '18201240120');
INSERT INTO `grupos_estudiantes` VALUES (18, '201240124', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '18201240124');
INSERT INTO `grupos_estudiantes` VALUES (18, '201240129', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '18201240129');
INSERT INTO `grupos_estudiantes` VALUES (18, '201240130', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '18201240130');
INSERT INTO `grupos_estudiantes` VALUES (18, '201240132', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '18201240132');
INSERT INTO `grupos_estudiantes` VALUES (18, '201240137', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '18201240137');
INSERT INTO `grupos_estudiantes` VALUES (18, '211240003', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '18211240003');
INSERT INTO `grupos_estudiantes` VALUES (18, '211240004', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '18211240004');
INSERT INTO `grupos_estudiantes` VALUES (18, '211240008', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '18211240008');
INSERT INTO `grupos_estudiantes` VALUES (18, '211240010', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '18211240010');
INSERT INTO `grupos_estudiantes` VALUES (18, '211240011', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '18211240011');
INSERT INTO `grupos_estudiantes` VALUES (18, '211240013', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '18211240013');
INSERT INTO `grupos_estudiantes` VALUES (19, '191240038', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '19191240038');
INSERT INTO `grupos_estudiantes` VALUES (19, '191240068', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '19191240068');
INSERT INTO `grupos_estudiantes` VALUES (19, '201240011', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '19201240011');
INSERT INTO `grupos_estudiantes` VALUES (19, '201240021', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '19201240021');
INSERT INTO `grupos_estudiantes` VALUES (19, '201240071', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '19201240071');
INSERT INTO `grupos_estudiantes` VALUES (19, '201240074', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '19201240074');
INSERT INTO `grupos_estudiantes` VALUES (19, '201240077', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '19201240077');
INSERT INTO `grupos_estudiantes` VALUES (19, '201240080', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '19201240080');
INSERT INTO `grupos_estudiantes` VALUES (19, '201240081', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '19201240081');
INSERT INTO `grupos_estudiantes` VALUES (19, '201240083', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '19201240083');
INSERT INTO `grupos_estudiantes` VALUES (19, '201240084', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '19201240084');
INSERT INTO `grupos_estudiantes` VALUES (19, '201240090', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '19201240090');
INSERT INTO `grupos_estudiantes` VALUES (19, '201240092', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '19201240092');
INSERT INTO `grupos_estudiantes` VALUES (19, '201240094', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '19201240094');
INSERT INTO `grupos_estudiantes` VALUES (19, '201240095', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '19201240095');
INSERT INTO `grupos_estudiantes` VALUES (19, '201240096', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '19201240096');
INSERT INTO `grupos_estudiantes` VALUES (19, '201240097', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '19201240097');
INSERT INTO `grupos_estudiantes` VALUES (19, '201240098', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '19201240098');
INSERT INTO `grupos_estudiantes` VALUES (19, '201240100', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '19201240100');
INSERT INTO `grupos_estudiantes` VALUES (19, '201240108', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '19201240108');
INSERT INTO `grupos_estudiantes` VALUES (19, '201240133', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '19201240133');
INSERT INTO `grupos_estudiantes` VALUES (20, '161240013', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '20161240013');
INSERT INTO `grupos_estudiantes` VALUES (20, '161240021', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '20161240021');
INSERT INTO `grupos_estudiantes` VALUES (20, '181240009', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '20181240009');
INSERT INTO `grupos_estudiantes` VALUES (20, '181240028', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '20181240028');
INSERT INTO `grupos_estudiantes` VALUES (20, '181240074', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '20181240074');
INSERT INTO `grupos_estudiantes` VALUES (20, '191240001', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '20191240001');
INSERT INTO `grupos_estudiantes` VALUES (20, '191240002', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '20191240002');
INSERT INTO `grupos_estudiantes` VALUES (20, '191240006', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '20191240006');
INSERT INTO `grupos_estudiantes` VALUES (20, '191240007', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '20191240007');
INSERT INTO `grupos_estudiantes` VALUES (20, '191240009', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '20191240009');
INSERT INTO `grupos_estudiantes` VALUES (20, '191240010', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '20191240010');
INSERT INTO `grupos_estudiantes` VALUES (20, '191240011', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '20191240011');
INSERT INTO `grupos_estudiantes` VALUES (20, '191240014', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '20191240014');
INSERT INTO `grupos_estudiantes` VALUES (20, '191240015', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '20191240015');
INSERT INTO `grupos_estudiantes` VALUES (20, '191240016', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '20191240016');
INSERT INTO `grupos_estudiantes` VALUES (20, '191240017', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '20191240017');
INSERT INTO `grupos_estudiantes` VALUES (20, '191240018', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '20191240018');
INSERT INTO `grupos_estudiantes` VALUES (20, '191240020', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '20191240020');
INSERT INTO `grupos_estudiantes` VALUES (20, '191240021', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '20191240021');
INSERT INTO `grupos_estudiantes` VALUES (20, '191240022', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '20191240022');
INSERT INTO `grupos_estudiantes` VALUES (20, '191240024', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '20191240024');
INSERT INTO `grupos_estudiantes` VALUES (20, '191240025', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '20191240025');
INSERT INTO `grupos_estudiantes` VALUES (20, '191240028', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '20191240028');
INSERT INTO `grupos_estudiantes` VALUES (20, '191240029', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '20191240029');
INSERT INTO `grupos_estudiantes` VALUES (21, '191240049', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '21191240049');
INSERT INTO `grupos_estudiantes` VALUES (21, '191240050', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '21191240050');
INSERT INTO `grupos_estudiantes` VALUES (21, '191240051', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '21191240051');
INSERT INTO `grupos_estudiantes` VALUES (21, '191240052', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '21191240052');
INSERT INTO `grupos_estudiantes` VALUES (21, '191240055', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '21191240055');
INSERT INTO `grupos_estudiantes` VALUES (21, '191240058', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '21191240058');
INSERT INTO `grupos_estudiantes` VALUES (22, '191240013', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '22191240013');
INSERT INTO `grupos_estudiantes` VALUES (22, '191240023', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '22191240023');
INSERT INTO `grupos_estudiantes` VALUES (22, '191240030', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '22191240030');
INSERT INTO `grupos_estudiantes` VALUES (22, '191240031', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '22191240031');
INSERT INTO `grupos_estudiantes` VALUES (22, '191240033', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '22191240033');
INSERT INTO `grupos_estudiantes` VALUES (22, '191240035', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '22191240035');
INSERT INTO `grupos_estudiantes` VALUES (22, '191240036', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '22191240036');
INSERT INTO `grupos_estudiantes` VALUES (22, '191240038', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '22191240038');
INSERT INTO `grupos_estudiantes` VALUES (22, '191240039', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '22191240039');
INSERT INTO `grupos_estudiantes` VALUES (22, '191240041', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '22191240041');
INSERT INTO `grupos_estudiantes` VALUES (22, '191240043', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '22191240043');
INSERT INTO `grupos_estudiantes` VALUES (22, '191240044', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '22191240044');
INSERT INTO `grupos_estudiantes` VALUES (22, '191240045', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '22191240045');
INSERT INTO `grupos_estudiantes` VALUES (22, '191240047', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '22191240047');
INSERT INTO `grupos_estudiantes` VALUES (22, '191240061', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '22191240061');
INSERT INTO `grupos_estudiantes` VALUES (22, '191240064', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '22191240064');
INSERT INTO `grupos_estudiantes` VALUES (22, 'B156P1225', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '22B156P1225');
INSERT INTO `grupos_estudiantes` VALUES (23, '191240049', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '23191240049');
INSERT INTO `grupos_estudiantes` VALUES (23, '201240003', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '23201240003');
INSERT INTO `grupos_estudiantes` VALUES (23, '201240004', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '23201240004');
INSERT INTO `grupos_estudiantes` VALUES (23, '201240008', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '23201240008');
INSERT INTO `grupos_estudiantes` VALUES (23, '201240009', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '23201240009');
INSERT INTO `grupos_estudiantes` VALUES (23, '201240012', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '23201240012');
INSERT INTO `grupos_estudiantes` VALUES (23, '201240013', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '23201240013');
INSERT INTO `grupos_estudiantes` VALUES (23, '201240014', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '23201240014');
INSERT INTO `grupos_estudiantes` VALUES (23, '201240015', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '23201240015');
INSERT INTO `grupos_estudiantes` VALUES (23, '201240016', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '23201240016');
INSERT INTO `grupos_estudiantes` VALUES (23, '201240019', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '23201240019');
INSERT INTO `grupos_estudiantes` VALUES (23, '201240022', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '23201240022');
INSERT INTO `grupos_estudiantes` VALUES (23, '201240023', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '23201240023');
INSERT INTO `grupos_estudiantes` VALUES (23, '201240128', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '23201240128');
INSERT INTO `grupos_estudiantes` VALUES (24, '181240009', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '24181240009');
INSERT INTO `grupos_estudiantes` VALUES (24, '181240074', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '24181240074');
INSERT INTO `grupos_estudiantes` VALUES (24, '191240015', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '24191240015');
INSERT INTO `grupos_estudiantes` VALUES (24, '191240022', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '24191240022');
INSERT INTO `grupos_estudiantes` VALUES (24, '191240024', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '24191240024');
INSERT INTO `grupos_estudiantes` VALUES (24, '201240006', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '24201240006');
INSERT INTO `grupos_estudiantes` VALUES (24, '201240034', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '24201240034');
INSERT INTO `grupos_estudiantes` VALUES (24, '201240048', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '24201240048');
INSERT INTO `grupos_estudiantes` VALUES (24, '201240052', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '24201240052');
INSERT INTO `grupos_estudiantes` VALUES (24, '201240053', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '24201240053');
INSERT INTO `grupos_estudiantes` VALUES (24, '201240055', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '24201240055');
INSERT INTO `grupos_estudiantes` VALUES (24, '201240056', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '24201240056');
INSERT INTO `grupos_estudiantes` VALUES (24, '201240058', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '24201240058');
INSERT INTO `grupos_estudiantes` VALUES (24, '201240061', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '24201240061');
INSERT INTO `grupos_estudiantes` VALUES (24, '201240066', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '24201240066');
INSERT INTO `grupos_estudiantes` VALUES (24, '201240067', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '24201240067');
INSERT INTO `grupos_estudiantes` VALUES (24, '201240068', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '24201240068');
INSERT INTO `grupos_estudiantes` VALUES (24, '201240069', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '24201240069');
INSERT INTO `grupos_estudiantes` VALUES (24, '201240126', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '24201240126');
INSERT INTO `grupos_estudiantes` VALUES (24, '211240001', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '24211240001');
INSERT INTO `grupos_estudiantes` VALUES (24, '211240002', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '24211240002');
INSERT INTO `grupos_estudiantes` VALUES (24, '211240005', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '24211240005');
INSERT INTO `grupos_estudiantes` VALUES (24, '211240006', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '24211240006');
INSERT INTO `grupos_estudiantes` VALUES (24, '211240007', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '24211240007');
INSERT INTO `grupos_estudiantes` VALUES (24, '211240009', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '24211240009');
INSERT INTO `grupos_estudiantes` VALUES (24, '211240014', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '24211240014');
INSERT INTO `grupos_estudiantes` VALUES (25, '201240011', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '25201240011');
INSERT INTO `grupos_estudiantes` VALUES (25, '201240021', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '25201240021');
INSERT INTO `grupos_estudiantes` VALUES (25, '201240071', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '25201240071');
INSERT INTO `grupos_estudiantes` VALUES (25, '201240074', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '25201240074');
INSERT INTO `grupos_estudiantes` VALUES (25, '201240077', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '25201240077');
INSERT INTO `grupos_estudiantes` VALUES (25, '201240080', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '25201240080');
INSERT INTO `grupos_estudiantes` VALUES (25, '201240081', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '25201240081');
INSERT INTO `grupos_estudiantes` VALUES (25, '201240083', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '25201240083');
INSERT INTO `grupos_estudiantes` VALUES (25, '201240084', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '25201240084');
INSERT INTO `grupos_estudiantes` VALUES (25, '201240090', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '25201240090');
INSERT INTO `grupos_estudiantes` VALUES (25, '201240092', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '25201240092');
INSERT INTO `grupos_estudiantes` VALUES (25, '201240094', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '25201240094');
INSERT INTO `grupos_estudiantes` VALUES (25, '201240095', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '25201240095');
INSERT INTO `grupos_estudiantes` VALUES (25, '201240096', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '25201240096');
INSERT INTO `grupos_estudiantes` VALUES (25, '201240097', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '25201240097');
INSERT INTO `grupos_estudiantes` VALUES (25, '201240098', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '25201240098');
INSERT INTO `grupos_estudiantes` VALUES (25, '201240100', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '25201240100');
INSERT INTO `grupos_estudiantes` VALUES (25, '201240108', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '25201240108');
INSERT INTO `grupos_estudiantes` VALUES (25, '201240133', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '25201240133');
INSERT INTO `grupos_estudiantes` VALUES (25, 'B156P1225', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '25B156P1225');
INSERT INTO `grupos_estudiantes` VALUES (26, '201240007', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '26201240007');
INSERT INTO `grupos_estudiantes` VALUES (26, '201240018', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '26201240018');
INSERT INTO `grupos_estudiantes` VALUES (26, '201240073', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '26201240073');
INSERT INTO `grupos_estudiantes` VALUES (26, '201240079', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '26201240079');
INSERT INTO `grupos_estudiantes` VALUES (26, '201240112', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '26201240112');
INSERT INTO `grupos_estudiantes` VALUES (26, '201240113', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '26201240113');
INSERT INTO `grupos_estudiantes` VALUES (26, '201240117', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '26201240117');
INSERT INTO `grupos_estudiantes` VALUES (26, '201240119', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '26201240119');
INSERT INTO `grupos_estudiantes` VALUES (26, '201240120', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '26201240120');
INSERT INTO `grupos_estudiantes` VALUES (26, '201240124', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '26201240124');
INSERT INTO `grupos_estudiantes` VALUES (26, '201240129', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '26201240129');
INSERT INTO `grupos_estudiantes` VALUES (26, '201240130', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '26201240130');
INSERT INTO `grupos_estudiantes` VALUES (26, '201240132', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '26201240132');
INSERT INTO `grupos_estudiantes` VALUES (26, '201240137', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '26201240137');
INSERT INTO `grupos_estudiantes` VALUES (26, '211240003', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '26211240003');
INSERT INTO `grupos_estudiantes` VALUES (26, '211240004', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '26211240004');
INSERT INTO `grupos_estudiantes` VALUES (26, '211240008', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '26211240008');
INSERT INTO `grupos_estudiantes` VALUES (26, '211240010', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '26211240010');
INSERT INTO `grupos_estudiantes` VALUES (26, '211240011', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '26211240011');
INSERT INTO `grupos_estudiantes` VALUES (26, '211240013', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '26211240013');
INSERT INTO `grupos_estudiantes` VALUES (27, '151240020', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '27151240020');
INSERT INTO `grupos_estudiantes` VALUES (27, '171240004', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '27171240004');
INSERT INTO `grupos_estudiantes` VALUES (27, '171240008', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '27171240008');
INSERT INTO `grupos_estudiantes` VALUES (27, '171240009', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '27171240009');
INSERT INTO `grupos_estudiantes` VALUES (27, '171240014', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '27171240014');
INSERT INTO `grupos_estudiantes` VALUES (27, '171240015', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '27171240015');
INSERT INTO `grupos_estudiantes` VALUES (27, '171240016', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '27171240016');
INSERT INTO `grupos_estudiantes` VALUES (27, '171240017', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '27171240017');
INSERT INTO `grupos_estudiantes` VALUES (27, '171240020', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '27171240020');
INSERT INTO `grupos_estudiantes` VALUES (27, '171240032', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '27171240032');
INSERT INTO `grupos_estudiantes` VALUES (27, '171240044', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '27171240044');
INSERT INTO `grupos_estudiantes` VALUES (27, '171240046', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '27171240046');
INSERT INTO `grupos_estudiantes` VALUES (28, '161240031', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '28161240031');
INSERT INTO `grupos_estudiantes` VALUES (28, '171240004', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '28171240004');
INSERT INTO `grupos_estudiantes` VALUES (28, '171240008', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '28171240008');
INSERT INTO `grupos_estudiantes` VALUES (28, '171240009', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '28171240009');
INSERT INTO `grupos_estudiantes` VALUES (28, '171240014', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '28171240014');
INSERT INTO `grupos_estudiantes` VALUES (28, '171240015', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '28171240015');
INSERT INTO `grupos_estudiantes` VALUES (28, '171240016', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '28171240016');
INSERT INTO `grupos_estudiantes` VALUES (28, '171240017', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '28171240017');
INSERT INTO `grupos_estudiantes` VALUES (28, '171240020', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '28171240020');
INSERT INTO `grupos_estudiantes` VALUES (28, '171240032', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '28171240032');
INSERT INTO `grupos_estudiantes` VALUES (28, '171240044', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '28171240044');
INSERT INTO `grupos_estudiantes` VALUES (28, '171240046', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '28171240046');
INSERT INTO `grupos_estudiantes` VALUES (29, '201240011', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '29201240011');
INSERT INTO `grupos_estudiantes` VALUES (29, '201240021', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '29201240021');
INSERT INTO `grupos_estudiantes` VALUES (29, '201240071', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '29201240071');
INSERT INTO `grupos_estudiantes` VALUES (29, '201240074', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '29201240074');
INSERT INTO `grupos_estudiantes` VALUES (29, '201240077', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '29201240077');
INSERT INTO `grupos_estudiantes` VALUES (29, '201240080', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '29201240080');
INSERT INTO `grupos_estudiantes` VALUES (29, '201240081', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '29201240081');
INSERT INTO `grupos_estudiantes` VALUES (29, '201240083', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '29201240083');
INSERT INTO `grupos_estudiantes` VALUES (29, '201240084', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '29201240084');
INSERT INTO `grupos_estudiantes` VALUES (29, '201240090', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '29201240090');
INSERT INTO `grupos_estudiantes` VALUES (29, '201240092', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '29201240092');
INSERT INTO `grupos_estudiantes` VALUES (29, '201240094', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '29201240094');
INSERT INTO `grupos_estudiantes` VALUES (29, '201240095', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '29201240095');
INSERT INTO `grupos_estudiantes` VALUES (29, '201240096', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '29201240096');
INSERT INTO `grupos_estudiantes` VALUES (29, '201240097', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '29201240097');
INSERT INTO `grupos_estudiantes` VALUES (29, '201240098', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '29201240098');
INSERT INTO `grupos_estudiantes` VALUES (29, '201240100', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '29201240100');
INSERT INTO `grupos_estudiantes` VALUES (29, '201240108', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '29201240108');
INSERT INTO `grupos_estudiantes` VALUES (29, '201240133', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '29201240133');
INSERT INTO `grupos_estudiantes` VALUES (30, '161240031', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '30161240031');
INSERT INTO `grupos_estudiantes` VALUES (30, '181240001', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '30181240001');
INSERT INTO `grupos_estudiantes` VALUES (30, '181240002', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '30181240002');
INSERT INTO `grupos_estudiantes` VALUES (30, '181240004', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '30181240004');
INSERT INTO `grupos_estudiantes` VALUES (30, '181240007', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '30181240007');
INSERT INTO `grupos_estudiantes` VALUES (30, '181240008', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '30181240008');
INSERT INTO `grupos_estudiantes` VALUES (30, '181240012', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '30181240012');
INSERT INTO `grupos_estudiantes` VALUES (30, '181240013', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '30181240013');
INSERT INTO `grupos_estudiantes` VALUES (30, '181240018', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '30181240018');
INSERT INTO `grupos_estudiantes` VALUES (30, '181240019', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '30181240019');
INSERT INTO `grupos_estudiantes` VALUES (30, '181240020', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '30181240020');
INSERT INTO `grupos_estudiantes` VALUES (30, '181240023', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '30181240023');
INSERT INTO `grupos_estudiantes` VALUES (30, '181240026', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '30181240026');
INSERT INTO `grupos_estudiantes` VALUES (30, '181240044', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '30181240044');
INSERT INTO `grupos_estudiantes` VALUES (30, '181240045', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '30181240045');
INSERT INTO `grupos_estudiantes` VALUES (30, '181240046', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '30181240046');
INSERT INTO `grupos_estudiantes` VALUES (30, '181240047', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '30181240047');
INSERT INTO `grupos_estudiantes` VALUES (30, '181240052', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '30181240052');
INSERT INTO `grupos_estudiantes` VALUES (30, '181240055', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '30181240055');
INSERT INTO `grupos_estudiantes` VALUES (30, '181240066', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '30181240066');
INSERT INTO `grupos_estudiantes` VALUES (30, '181240068', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '30181240068');
INSERT INTO `grupos_estudiantes` VALUES (30, '181240073', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '30181240073');
INSERT INTO `grupos_estudiantes` VALUES (30, '181240082', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '30181240082');
INSERT INTO `grupos_estudiantes` VALUES (31, '201240006', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '31201240006');
INSERT INTO `grupos_estudiantes` VALUES (31, '201240034', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '31201240034');
INSERT INTO `grupos_estudiantes` VALUES (31, '201240048', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '31201240048');
INSERT INTO `grupos_estudiantes` VALUES (31, '201240052', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '31201240052');
INSERT INTO `grupos_estudiantes` VALUES (31, '201240053', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '31201240053');
INSERT INTO `grupos_estudiantes` VALUES (31, '201240055', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '31201240055');
INSERT INTO `grupos_estudiantes` VALUES (31, '201240056', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '31201240056');
INSERT INTO `grupos_estudiantes` VALUES (31, '201240058', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '31201240058');
INSERT INTO `grupos_estudiantes` VALUES (31, '201240061', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '31201240061');
INSERT INTO `grupos_estudiantes` VALUES (31, '201240066', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '31201240066');
INSERT INTO `grupos_estudiantes` VALUES (31, '201240067', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '31201240067');
INSERT INTO `grupos_estudiantes` VALUES (31, '201240068', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '31201240068');
INSERT INTO `grupos_estudiantes` VALUES (31, '201240069', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '31201240069');
INSERT INTO `grupos_estudiantes` VALUES (31, '201240126', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '31201240126');
INSERT INTO `grupos_estudiantes` VALUES (31, '211240001', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '31211240001');
INSERT INTO `grupos_estudiantes` VALUES (31, '211240002', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '31211240002');
INSERT INTO `grupos_estudiantes` VALUES (31, '211240005', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '31211240005');
INSERT INTO `grupos_estudiantes` VALUES (31, '211240006', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '31211240006');
INSERT INTO `grupos_estudiantes` VALUES (31, '211240007', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '31211240007');
INSERT INTO `grupos_estudiantes` VALUES (31, '211240009', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '31211240009');
INSERT INTO `grupos_estudiantes` VALUES (32, '191240013', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '32191240013');
INSERT INTO `grupos_estudiantes` VALUES (32, '191240023', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '32191240023');
INSERT INTO `grupos_estudiantes` VALUES (32, '191240030', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '32191240030');
INSERT INTO `grupos_estudiantes` VALUES (32, '191240031', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '32191240031');
INSERT INTO `grupos_estudiantes` VALUES (32, '191240033', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '32191240033');
INSERT INTO `grupos_estudiantes` VALUES (32, '191240035', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '32191240035');
INSERT INTO `grupos_estudiantes` VALUES (32, '191240036', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '32191240036');
INSERT INTO `grupos_estudiantes` VALUES (32, '191240038', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '32191240038');
INSERT INTO `grupos_estudiantes` VALUES (32, '191240039', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '32191240039');
INSERT INTO `grupos_estudiantes` VALUES (32, '191240041', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '32191240041');
INSERT INTO `grupos_estudiantes` VALUES (32, '191240043', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '32191240043');
INSERT INTO `grupos_estudiantes` VALUES (32, '191240044', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '32191240044');
INSERT INTO `grupos_estudiantes` VALUES (32, '191240045', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '32191240045');
INSERT INTO `grupos_estudiantes` VALUES (32, '191240047', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '32191240047');
INSERT INTO `grupos_estudiantes` VALUES (32, '191240061', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '32191240061');
INSERT INTO `grupos_estudiantes` VALUES (32, '191240064', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '32191240064');
INSERT INTO `grupos_estudiantes` VALUES (32, '191240068', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '32191240068');
INSERT INTO `grupos_estudiantes` VALUES (32, 'B156P1225', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '32B156P1225');
INSERT INTO `grupos_estudiantes` VALUES (33, '191240024', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '33191240024');
INSERT INTO `grupos_estudiantes` VALUES (33, '201240006', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '33201240006');
INSERT INTO `grupos_estudiantes` VALUES (33, '201240034', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '33201240034');
INSERT INTO `grupos_estudiantes` VALUES (33, '201240048', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '33201240048');
INSERT INTO `grupos_estudiantes` VALUES (33, '201240052', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '33201240052');
INSERT INTO `grupos_estudiantes` VALUES (33, '201240053', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '33201240053');
INSERT INTO `grupos_estudiantes` VALUES (33, '201240055', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '33201240055');
INSERT INTO `grupos_estudiantes` VALUES (33, '201240056', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '33201240056');
INSERT INTO `grupos_estudiantes` VALUES (33, '201240058', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '33201240058');
INSERT INTO `grupos_estudiantes` VALUES (33, '201240061', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '33201240061');
INSERT INTO `grupos_estudiantes` VALUES (33, '201240066', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '33201240066');
INSERT INTO `grupos_estudiantes` VALUES (33, '201240067', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '33201240067');
INSERT INTO `grupos_estudiantes` VALUES (33, '201240068', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '33201240068');
INSERT INTO `grupos_estudiantes` VALUES (33, '201240069', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '33201240069');
INSERT INTO `grupos_estudiantes` VALUES (33, '201240126', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '33201240126');
INSERT INTO `grupos_estudiantes` VALUES (33, '211240001', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '33211240001');
INSERT INTO `grupos_estudiantes` VALUES (33, '211240002', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '33211240002');
INSERT INTO `grupos_estudiantes` VALUES (33, '211240005', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '33211240005');
INSERT INTO `grupos_estudiantes` VALUES (33, '211240006', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '33211240006');
INSERT INTO `grupos_estudiantes` VALUES (33, '211240007', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '33211240007');
INSERT INTO `grupos_estudiantes` VALUES (33, '211240009', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '33211240009');
INSERT INTO `grupos_estudiantes` VALUES (33, '211240014', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '33211240014');
INSERT INTO `grupos_estudiantes` VALUES (34, '181240001', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '34181240001');
INSERT INTO `grupos_estudiantes` VALUES (34, '181240002', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '34181240002');
INSERT INTO `grupos_estudiantes` VALUES (34, '181240008', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '34181240008');
INSERT INTO `grupos_estudiantes` VALUES (34, '181240013', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '34181240013');
INSERT INTO `grupos_estudiantes` VALUES (34, '181240028', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '34181240028');
INSERT INTO `grupos_estudiantes` VALUES (34, '181240059', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '34181240059');
INSERT INTO `grupos_estudiantes` VALUES (34, '181240068', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '34181240068');
INSERT INTO `grupos_estudiantes` VALUES (34, '191240001', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '34191240001');
INSERT INTO `grupos_estudiantes` VALUES (34, '191240002', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '34191240002');
INSERT INTO `grupos_estudiantes` VALUES (34, '191240006', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '34191240006');
INSERT INTO `grupos_estudiantes` VALUES (34, '191240007', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '34191240007');
INSERT INTO `grupos_estudiantes` VALUES (34, '191240009', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '34191240009');
INSERT INTO `grupos_estudiantes` VALUES (34, '191240010', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '34191240010');
INSERT INTO `grupos_estudiantes` VALUES (34, '191240011', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '34191240011');
INSERT INTO `grupos_estudiantes` VALUES (34, '191240014', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '34191240014');
INSERT INTO `grupos_estudiantes` VALUES (34, '191240016', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '34191240016');
INSERT INTO `grupos_estudiantes` VALUES (34, '191240017', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '34191240017');
INSERT INTO `grupos_estudiantes` VALUES (34, '191240018', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '34191240018');
INSERT INTO `grupos_estudiantes` VALUES (34, '191240020', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '34191240020');
INSERT INTO `grupos_estudiantes` VALUES (34, '191240021', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '34191240021');
INSERT INTO `grupos_estudiantes` VALUES (34, '191240024', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '34191240024');
INSERT INTO `grupos_estudiantes` VALUES (34, '191240025', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '34191240025');
INSERT INTO `grupos_estudiantes` VALUES (34, '191240028', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '34191240028');
INSERT INTO `grupos_estudiantes` VALUES (34, '191240029', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '34191240029');
INSERT INTO `grupos_estudiantes` VALUES (35, '191240001', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '35191240001');
INSERT INTO `grupos_estudiantes` VALUES (35, '191240002', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '35191240002');
INSERT INTO `grupos_estudiantes` VALUES (35, '191240006', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '35191240006');
INSERT INTO `grupos_estudiantes` VALUES (35, '191240007', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '35191240007');
INSERT INTO `grupos_estudiantes` VALUES (35, '191240009', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '35191240009');
INSERT INTO `grupos_estudiantes` VALUES (35, '191240010', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '35191240010');
INSERT INTO `grupos_estudiantes` VALUES (35, '191240011', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '35191240011');
INSERT INTO `grupos_estudiantes` VALUES (35, '191240014', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '35191240014');
INSERT INTO `grupos_estudiantes` VALUES (35, '191240015', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '35191240015');
INSERT INTO `grupos_estudiantes` VALUES (35, '191240016', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '35191240016');
INSERT INTO `grupos_estudiantes` VALUES (35, '191240017', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '35191240017');
INSERT INTO `grupos_estudiantes` VALUES (35, '191240018', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '35191240018');
INSERT INTO `grupos_estudiantes` VALUES (35, '191240020', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '35191240020');
INSERT INTO `grupos_estudiantes` VALUES (35, '191240021', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '35191240021');
INSERT INTO `grupos_estudiantes` VALUES (35, '191240022', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '35191240022');
INSERT INTO `grupos_estudiantes` VALUES (35, '191240024', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '35191240024');
INSERT INTO `grupos_estudiantes` VALUES (35, '191240025', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '35191240025');
INSERT INTO `grupos_estudiantes` VALUES (35, '191240028', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '35191240028');
INSERT INTO `grupos_estudiantes` VALUES (35, '191240029', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '35191240029');
INSERT INTO `grupos_estudiantes` VALUES (36, '161240021', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '36161240021');
INSERT INTO `grupos_estudiantes` VALUES (36, '181240001', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '36181240001');
INSERT INTO `grupos_estudiantes` VALUES (36, '181240002', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '36181240002');
INSERT INTO `grupos_estudiantes` VALUES (36, '181240004', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '36181240004');
INSERT INTO `grupos_estudiantes` VALUES (36, '181240007', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '36181240007');
INSERT INTO `grupos_estudiantes` VALUES (36, '181240008', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '36181240008');
INSERT INTO `grupos_estudiantes` VALUES (36, '181240009', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '36181240009');
INSERT INTO `grupos_estudiantes` VALUES (36, '181240012', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '36181240012');
INSERT INTO `grupos_estudiantes` VALUES (36, '181240013', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '36181240013');
INSERT INTO `grupos_estudiantes` VALUES (36, '181240018', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '36181240018');
INSERT INTO `grupos_estudiantes` VALUES (36, '181240019', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '36181240019');
INSERT INTO `grupos_estudiantes` VALUES (36, '181240020', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '36181240020');
INSERT INTO `grupos_estudiantes` VALUES (36, '181240023', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '36181240023');
INSERT INTO `grupos_estudiantes` VALUES (36, '181240026', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '36181240026');
INSERT INTO `grupos_estudiantes` VALUES (36, '181240044', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '36181240044');
INSERT INTO `grupos_estudiantes` VALUES (36, '181240045', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '36181240045');
INSERT INTO `grupos_estudiantes` VALUES (36, '181240046', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '36181240046');
INSERT INTO `grupos_estudiantes` VALUES (36, '181240047', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '36181240047');
INSERT INTO `grupos_estudiantes` VALUES (36, '181240052', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '36181240052');
INSERT INTO `grupos_estudiantes` VALUES (36, '181240055', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '36181240055');
INSERT INTO `grupos_estudiantes` VALUES (36, '181240066', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '36181240066');
INSERT INTO `grupos_estudiantes` VALUES (36, '181240068', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '36181240068');
INSERT INTO `grupos_estudiantes` VALUES (36, '181240073', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '36181240073');
INSERT INTO `grupos_estudiantes` VALUES (36, '181240074', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '36181240074');
INSERT INTO `grupos_estudiantes` VALUES (36, '181240082', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '36181240082');
INSERT INTO `grupos_estudiantes` VALUES (37, '171240004', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '37171240004');
INSERT INTO `grupos_estudiantes` VALUES (37, '171240008', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '37171240008');
INSERT INTO `grupos_estudiantes` VALUES (37, '171240009', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '37171240009');
INSERT INTO `grupos_estudiantes` VALUES (37, '171240014', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '37171240014');
INSERT INTO `grupos_estudiantes` VALUES (37, '171240015', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '37171240015');
INSERT INTO `grupos_estudiantes` VALUES (37, '171240016', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '37171240016');
INSERT INTO `grupos_estudiantes` VALUES (37, '171240017', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '37171240017');
INSERT INTO `grupos_estudiantes` VALUES (37, '171240020', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '37171240020');
INSERT INTO `grupos_estudiantes` VALUES (37, '171240032', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '37171240032');
INSERT INTO `grupos_estudiantes` VALUES (37, '171240044', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '37171240044');
INSERT INTO `grupos_estudiantes` VALUES (37, '171240046', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '37171240046');
INSERT INTO `grupos_estudiantes` VALUES (38, '181240032', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '38181240032');
INSERT INTO `grupos_estudiantes` VALUES (38, '181240035', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '38181240035');
INSERT INTO `grupos_estudiantes` VALUES (38, '181240036', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '38181240036');
INSERT INTO `grupos_estudiantes` VALUES (38, '181240048', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '38181240048');
INSERT INTO `grupos_estudiantes` VALUES (38, '181240051', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '38181240051');
INSERT INTO `grupos_estudiantes` VALUES (38, '181240054', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '38181240054');
INSERT INTO `grupos_estudiantes` VALUES (38, '181240057', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '38181240057');
INSERT INTO `grupos_estudiantes` VALUES (38, '181240061', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '38181240061');
INSERT INTO `grupos_estudiantes` VALUES (38, '181240063', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '38181240063');
INSERT INTO `grupos_estudiantes` VALUES (38, '181240065', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '38181240065');
INSERT INTO `grupos_estudiantes` VALUES (38, '181240075', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '38181240075');
INSERT INTO `grupos_estudiantes` VALUES (38, '181240076', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '38181240076');
INSERT INTO `grupos_estudiantes` VALUES (39, '201240003', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '39201240003');
INSERT INTO `grupos_estudiantes` VALUES (39, '201240004', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '39201240004');
INSERT INTO `grupos_estudiantes` VALUES (39, '201240008', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '39201240008');
INSERT INTO `grupos_estudiantes` VALUES (39, '201240009', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '39201240009');
INSERT INTO `grupos_estudiantes` VALUES (39, '201240012', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '39201240012');
INSERT INTO `grupos_estudiantes` VALUES (39, '201240013', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '39201240013');
INSERT INTO `grupos_estudiantes` VALUES (39, '201240014', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '39201240014');
INSERT INTO `grupos_estudiantes` VALUES (39, '201240015', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '39201240015');
INSERT INTO `grupos_estudiantes` VALUES (39, '201240016', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '39201240016');
INSERT INTO `grupos_estudiantes` VALUES (39, '201240019', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '39201240019');
INSERT INTO `grupos_estudiantes` VALUES (39, '201240022', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '39201240022');
INSERT INTO `grupos_estudiantes` VALUES (39, '201240023', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '39201240023');
INSERT INTO `grupos_estudiantes` VALUES (39, '201240128', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '39201240128');
INSERT INTO `grupos_estudiantes` VALUES (40, '161240042', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '40161240042');
INSERT INTO `grupos_estudiantes` VALUES (40, '181240009', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '40181240009');
INSERT INTO `grupos_estudiantes` VALUES (40, '181240032', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '40181240032');
INSERT INTO `grupos_estudiantes` VALUES (40, '181240035', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '40181240035');
INSERT INTO `grupos_estudiantes` VALUES (40, '181240036', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '40181240036');
INSERT INTO `grupos_estudiantes` VALUES (40, '181240041', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '40181240041');
INSERT INTO `grupos_estudiantes` VALUES (40, '181240048', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '40181240048');
INSERT INTO `grupos_estudiantes` VALUES (40, '181240051', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '40181240051');
INSERT INTO `grupos_estudiantes` VALUES (40, '181240054', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '40181240054');
INSERT INTO `grupos_estudiantes` VALUES (40, '181240057', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '40181240057');
INSERT INTO `grupos_estudiantes` VALUES (40, '181240061', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '40181240061');
INSERT INTO `grupos_estudiantes` VALUES (40, '181240063', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '40181240063');
INSERT INTO `grupos_estudiantes` VALUES (40, '181240065', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '40181240065');
INSERT INTO `grupos_estudiantes` VALUES (40, '181240075', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '40181240075');
INSERT INTO `grupos_estudiantes` VALUES (40, '181240076', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '40181240076');
INSERT INTO `grupos_estudiantes` VALUES (41, '161240031', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '41161240031');
INSERT INTO `grupos_estudiantes` VALUES (41, '161240042', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '41161240042');
INSERT INTO `grupos_estudiantes` VALUES (41, '181240001', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '41181240001');
INSERT INTO `grupos_estudiantes` VALUES (41, '181240002', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '41181240002');
INSERT INTO `grupos_estudiantes` VALUES (41, '181240004', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '41181240004');
INSERT INTO `grupos_estudiantes` VALUES (41, '181240007', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '41181240007');
INSERT INTO `grupos_estudiantes` VALUES (41, '181240008', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '41181240008');
INSERT INTO `grupos_estudiantes` VALUES (41, '181240009', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '41181240009');
INSERT INTO `grupos_estudiantes` VALUES (41, '181240012', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '41181240012');
INSERT INTO `grupos_estudiantes` VALUES (41, '181240013', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '41181240013');
INSERT INTO `grupos_estudiantes` VALUES (41, '181240018', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '41181240018');
INSERT INTO `grupos_estudiantes` VALUES (41, '181240019', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '41181240019');
INSERT INTO `grupos_estudiantes` VALUES (41, '181240020', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '41181240020');
INSERT INTO `grupos_estudiantes` VALUES (41, '181240023', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '41181240023');
INSERT INTO `grupos_estudiantes` VALUES (41, '181240026', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '41181240026');
INSERT INTO `grupos_estudiantes` VALUES (41, '181240028', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '41181240028');
INSERT INTO `grupos_estudiantes` VALUES (41, '181240044', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '41181240044');
INSERT INTO `grupos_estudiantes` VALUES (41, '181240045', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '41181240045');
INSERT INTO `grupos_estudiantes` VALUES (41, '181240046', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '41181240046');
INSERT INTO `grupos_estudiantes` VALUES (41, '181240047', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '41181240047');
INSERT INTO `grupos_estudiantes` VALUES (41, '181240052', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '41181240052');
INSERT INTO `grupos_estudiantes` VALUES (41, '181240055', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '41181240055');
INSERT INTO `grupos_estudiantes` VALUES (41, '181240059', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '41181240059');
INSERT INTO `grupos_estudiantes` VALUES (41, '181240066', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '41181240066');
INSERT INTO `grupos_estudiantes` VALUES (41, '181240068', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '41181240068');
INSERT INTO `grupos_estudiantes` VALUES (41, '181240073', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '41181240073');
INSERT INTO `grupos_estudiantes` VALUES (41, '181240074', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '41181240074');
INSERT INTO `grupos_estudiantes` VALUES (41, '181240082', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '41181240082');
INSERT INTO `grupos_estudiantes` VALUES (41, '191240001', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '41191240001');
INSERT INTO `grupos_estudiantes` VALUES (41, '191240002', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '41191240002');
INSERT INTO `grupos_estudiantes` VALUES (41, '191240006', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '41191240006');
INSERT INTO `grupos_estudiantes` VALUES (41, '191240007', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '41191240007');
INSERT INTO `grupos_estudiantes` VALUES (41, '191240009', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '41191240009');
INSERT INTO `grupos_estudiantes` VALUES (41, '191240010', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '41191240010');
INSERT INTO `grupos_estudiantes` VALUES (41, '191240011', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '41191240011');
INSERT INTO `grupos_estudiantes` VALUES (41, '191240014', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '41191240014');
INSERT INTO `grupos_estudiantes` VALUES (41, '191240015', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '41191240015');
INSERT INTO `grupos_estudiantes` VALUES (41, '191240016', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '41191240016');
INSERT INTO `grupos_estudiantes` VALUES (41, '191240017', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '41191240017');
INSERT INTO `grupos_estudiantes` VALUES (41, '191240018', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '41191240018');
INSERT INTO `grupos_estudiantes` VALUES (41, '191240020', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '41191240020');
INSERT INTO `grupos_estudiantes` VALUES (41, '191240021', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '41191240021');
INSERT INTO `grupos_estudiantes` VALUES (41, '191240022', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '41191240022');
INSERT INTO `grupos_estudiantes` VALUES (41, '191240024', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '41191240024');
INSERT INTO `grupos_estudiantes` VALUES (41, '191240025', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '41191240025');
INSERT INTO `grupos_estudiantes` VALUES (41, '191240028', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '41191240028');
INSERT INTO `grupos_estudiantes` VALUES (41, '191240029', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '41191240029');
INSERT INTO `grupos_estudiantes` VALUES (42, '161240031', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '42161240031');
INSERT INTO `grupos_estudiantes` VALUES (42, '171240004', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '42171240004');
INSERT INTO `grupos_estudiantes` VALUES (42, '171240008', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '42171240008');
INSERT INTO `grupos_estudiantes` VALUES (42, '171240009', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '42171240009');
INSERT INTO `grupos_estudiantes` VALUES (42, '171240014', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '42171240014');
INSERT INTO `grupos_estudiantes` VALUES (42, '171240015', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '42171240015');
INSERT INTO `grupos_estudiantes` VALUES (42, '171240016', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '42171240016');
INSERT INTO `grupos_estudiantes` VALUES (42, '171240017', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '42171240017');
INSERT INTO `grupos_estudiantes` VALUES (42, '171240020', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '42171240020');
INSERT INTO `grupos_estudiantes` VALUES (42, '171240032', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '42171240032');
INSERT INTO `grupos_estudiantes` VALUES (42, '171240044', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '42171240044');
INSERT INTO `grupos_estudiantes` VALUES (42, '171240046', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '42171240046');
INSERT INTO `grupos_estudiantes` VALUES (43, '191240049', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '43191240049');
INSERT INTO `grupos_estudiantes` VALUES (43, '191240050', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '43191240050');
INSERT INTO `grupos_estudiantes` VALUES (43, '191240051', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '43191240051');
INSERT INTO `grupos_estudiantes` VALUES (43, '191240052', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '43191240052');
INSERT INTO `grupos_estudiantes` VALUES (43, '191240055', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '43191240055');
INSERT INTO `grupos_estudiantes` VALUES (43, '191240058', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '43191240058');
INSERT INTO `grupos_estudiantes` VALUES (44, '191240055', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '44191240055');
INSERT INTO `grupos_estudiantes` VALUES (44, '201240003', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '44201240003');
INSERT INTO `grupos_estudiantes` VALUES (44, '201240004', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '44201240004');
INSERT INTO `grupos_estudiantes` VALUES (44, '201240008', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '44201240008');
INSERT INTO `grupos_estudiantes` VALUES (44, '201240009', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '44201240009');
INSERT INTO `grupos_estudiantes` VALUES (44, '201240012', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '44201240012');
INSERT INTO `grupos_estudiantes` VALUES (44, '201240013', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '44201240013');
INSERT INTO `grupos_estudiantes` VALUES (44, '201240014', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '44201240014');
INSERT INTO `grupos_estudiantes` VALUES (44, '201240015', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '44201240015');
INSERT INTO `grupos_estudiantes` VALUES (44, '201240016', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '44201240016');
INSERT INTO `grupos_estudiantes` VALUES (44, '201240019', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '44201240019');
INSERT INTO `grupos_estudiantes` VALUES (44, '201240022', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '44201240022');
INSERT INTO `grupos_estudiantes` VALUES (44, '201240023', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '44201240023');
INSERT INTO `grupos_estudiantes` VALUES (44, '201240128', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '44201240128');
INSERT INTO `grupos_estudiantes` VALUES (45, '201240003', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '45201240003');
INSERT INTO `grupos_estudiantes` VALUES (45, '201240004', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '45201240004');
INSERT INTO `grupos_estudiantes` VALUES (45, '201240008', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '45201240008');
INSERT INTO `grupos_estudiantes` VALUES (45, '201240009', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '45201240009');
INSERT INTO `grupos_estudiantes` VALUES (45, '201240012', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '45201240012');
INSERT INTO `grupos_estudiantes` VALUES (45, '201240013', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '45201240013');
INSERT INTO `grupos_estudiantes` VALUES (45, '201240014', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '45201240014');
INSERT INTO `grupos_estudiantes` VALUES (45, '201240015', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '45201240015');
INSERT INTO `grupos_estudiantes` VALUES (45, '201240016', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '45201240016');
INSERT INTO `grupos_estudiantes` VALUES (45, '201240019', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '45201240019');
INSERT INTO `grupos_estudiantes` VALUES (45, '201240022', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '45201240022');
INSERT INTO `grupos_estudiantes` VALUES (45, '201240023', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '45201240023');
INSERT INTO `grupos_estudiantes` VALUES (45, '201240128', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '45201240128');
INSERT INTO `grupos_estudiantes` VALUES (46, '181240032', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '46181240032');
INSERT INTO `grupos_estudiantes` VALUES (46, '181240035', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '46181240035');
INSERT INTO `grupos_estudiantes` VALUES (46, '181240036', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '46181240036');
INSERT INTO `grupos_estudiantes` VALUES (46, '181240048', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '46181240048');
INSERT INTO `grupos_estudiantes` VALUES (46, '181240051', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '46181240051');
INSERT INTO `grupos_estudiantes` VALUES (46, '181240054', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '46181240054');
INSERT INTO `grupos_estudiantes` VALUES (46, '181240057', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '46181240057');
INSERT INTO `grupos_estudiantes` VALUES (46, '181240061', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '46181240061');
INSERT INTO `grupos_estudiantes` VALUES (46, '181240063', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '46181240063');
INSERT INTO `grupos_estudiantes` VALUES (46, '181240065', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '46181240065');
INSERT INTO `grupos_estudiantes` VALUES (46, '181240075', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '46181240075');
INSERT INTO `grupos_estudiantes` VALUES (46, '181240076', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '46181240076');
INSERT INTO `grupos_estudiantes` VALUES (47, '181240070', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '47181240070');
INSERT INTO `grupos_estudiantes` VALUES (47, '191240013', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '47191240013');
INSERT INTO `grupos_estudiantes` VALUES (47, '191240023', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '47191240023');
INSERT INTO `grupos_estudiantes` VALUES (47, '191240030', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '47191240030');
INSERT INTO `grupos_estudiantes` VALUES (47, '191240031', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '47191240031');
INSERT INTO `grupos_estudiantes` VALUES (47, '191240035', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '47191240035');
INSERT INTO `grupos_estudiantes` VALUES (47, '191240039', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '47191240039');
INSERT INTO `grupos_estudiantes` VALUES (47, '191240041', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '47191240041');
INSERT INTO `grupos_estudiantes` VALUES (47, '191240043', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '47191240043');
INSERT INTO `grupos_estudiantes` VALUES (47, '191240044', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '47191240044');
INSERT INTO `grupos_estudiantes` VALUES (47, '191240045', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '47191240045');
INSERT INTO `grupos_estudiantes` VALUES (47, '191240047', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '47191240047');
INSERT INTO `grupos_estudiantes` VALUES (47, '191240060', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '47191240060');
INSERT INTO `grupos_estudiantes` VALUES (47, '191240061', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '47191240061');
INSERT INTO `grupos_estudiantes` VALUES (47, '191240064', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '47191240064');
INSERT INTO `grupos_estudiantes` VALUES (48, '161240003', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '48161240003');
INSERT INTO `grupos_estudiantes` VALUES (48, '181240032', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '48181240032');
INSERT INTO `grupos_estudiantes` VALUES (48, '181240035', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '48181240035');
INSERT INTO `grupos_estudiantes` VALUES (48, '181240036', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '48181240036');
INSERT INTO `grupos_estudiantes` VALUES (48, '181240048', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '48181240048');
INSERT INTO `grupos_estudiantes` VALUES (48, '181240051', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '48181240051');
INSERT INTO `grupos_estudiantes` VALUES (48, '181240054', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '48181240054');
INSERT INTO `grupos_estudiantes` VALUES (48, '181240057', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '48181240057');
INSERT INTO `grupos_estudiantes` VALUES (48, '181240061', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '48181240061');
INSERT INTO `grupos_estudiantes` VALUES (48, '181240063', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '48181240063');
INSERT INTO `grupos_estudiantes` VALUES (48, '181240065', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '48181240065');
INSERT INTO `grupos_estudiantes` VALUES (48, '181240075', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '48181240075');
INSERT INTO `grupos_estudiantes` VALUES (48, '181240076', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '48181240076');
INSERT INTO `grupos_estudiantes` VALUES (49, '201240006', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '49201240006');
INSERT INTO `grupos_estudiantes` VALUES (49, '201240034', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '49201240034');
INSERT INTO `grupos_estudiantes` VALUES (49, '201240048', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '49201240048');
INSERT INTO `grupos_estudiantes` VALUES (49, '201240052', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '49201240052');
INSERT INTO `grupos_estudiantes` VALUES (49, '201240053', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '49201240053');
INSERT INTO `grupos_estudiantes` VALUES (49, '201240055', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '49201240055');
INSERT INTO `grupos_estudiantes` VALUES (49, '201240056', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '49201240056');
INSERT INTO `grupos_estudiantes` VALUES (49, '201240058', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '49201240058');
INSERT INTO `grupos_estudiantes` VALUES (49, '201240061', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '49201240061');
INSERT INTO `grupos_estudiantes` VALUES (49, '201240066', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '49201240066');
INSERT INTO `grupos_estudiantes` VALUES (49, '201240067', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '49201240067');
INSERT INTO `grupos_estudiantes` VALUES (49, '201240068', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '49201240068');
INSERT INTO `grupos_estudiantes` VALUES (49, '201240069', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '49201240069');
INSERT INTO `grupos_estudiantes` VALUES (49, '201240126', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '49201240126');
INSERT INTO `grupos_estudiantes` VALUES (49, '211240001', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '49211240001');
INSERT INTO `grupos_estudiantes` VALUES (49, '211240002', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '49211240002');
INSERT INTO `grupos_estudiantes` VALUES (49, '211240005', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '49211240005');
INSERT INTO `grupos_estudiantes` VALUES (49, '211240006', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '49211240006');
INSERT INTO `grupos_estudiantes` VALUES (49, '211240007', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '49211240007');
INSERT INTO `grupos_estudiantes` VALUES (49, '211240009', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '49211240009');
INSERT INTO `grupos_estudiantes` VALUES (49, '211240014', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '49211240014');
INSERT INTO `grupos_estudiantes` VALUES (50, '181240060', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '50181240060');
INSERT INTO `grupos_estudiantes` VALUES (50, '191240013', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '50191240013');
INSERT INTO `grupos_estudiantes` VALUES (50, '191240023', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '50191240023');
INSERT INTO `grupos_estudiantes` VALUES (50, '191240030', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '50191240030');
INSERT INTO `grupos_estudiantes` VALUES (50, '191240031', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '50191240031');
INSERT INTO `grupos_estudiantes` VALUES (50, '191240035', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '50191240035');
INSERT INTO `grupos_estudiantes` VALUES (50, '191240036', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '50191240036');
INSERT INTO `grupos_estudiantes` VALUES (50, '191240038', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '50191240038');
INSERT INTO `grupos_estudiantes` VALUES (50, '191240039', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '50191240039');
INSERT INTO `grupos_estudiantes` VALUES (50, '191240041', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '50191240041');
INSERT INTO `grupos_estudiantes` VALUES (50, '191240043', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '50191240043');
INSERT INTO `grupos_estudiantes` VALUES (50, '191240044', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '50191240044');
INSERT INTO `grupos_estudiantes` VALUES (50, '191240045', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '50191240045');
INSERT INTO `grupos_estudiantes` VALUES (50, '191240047', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '50191240047');
INSERT INTO `grupos_estudiantes` VALUES (50, '191240060', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '50191240060');
INSERT INTO `grupos_estudiantes` VALUES (50, '191240061', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '50191240061');
INSERT INTO `grupos_estudiantes` VALUES (50, '191240064', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '50191240064');
INSERT INTO `grupos_estudiantes` VALUES (50, '191240068', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '50191240068');
INSERT INTO `grupos_estudiantes` VALUES (50, 'B156P1225', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '50B156P1225');
INSERT INTO `grupos_estudiantes` VALUES (51, '201240003', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '51201240003');
INSERT INTO `grupos_estudiantes` VALUES (51, '201240004', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '51201240004');
INSERT INTO `grupos_estudiantes` VALUES (51, '201240008', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '51201240008');
INSERT INTO `grupos_estudiantes` VALUES (51, '201240009', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '51201240009');
INSERT INTO `grupos_estudiantes` VALUES (51, '201240012', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '51201240012');
INSERT INTO `grupos_estudiantes` VALUES (51, '201240013', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '51201240013');
INSERT INTO `grupos_estudiantes` VALUES (51, '201240014', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '51201240014');
INSERT INTO `grupos_estudiantes` VALUES (51, '201240015', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '51201240015');
INSERT INTO `grupos_estudiantes` VALUES (51, '201240016', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '51201240016');
INSERT INTO `grupos_estudiantes` VALUES (51, '201240019', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '51201240019');
INSERT INTO `grupos_estudiantes` VALUES (51, '201240022', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '51201240022');
INSERT INTO `grupos_estudiantes` VALUES (51, '201240023', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '51201240023');
INSERT INTO `grupos_estudiantes` VALUES (51, '201240128', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '51201240128');
INSERT INTO `grupos_estudiantes` VALUES (52, '201240006', 1, '', NULL, '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '2021-08-07 19:39:56', '2021-09-18 01:15:59', 'VIG', NULL, '52201240006');
INSERT INTO `grupos_estudiantes` VALUES (52, '201240034', 1, '', NULL, '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '2021-08-07 19:39:56', '2021-09-18 01:15:59', 'VIG', NULL, '52201240034');
INSERT INTO `grupos_estudiantes` VALUES (52, '201240048', 1, '', NULL, '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '2021-08-07 19:39:56', '2021-09-18 01:15:59', 'VIG', NULL, '52201240048');
INSERT INTO `grupos_estudiantes` VALUES (52, '201240052', 1, '', NULL, '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '2021-08-07 19:39:56', '2021-09-18 01:15:59', 'VIG', NULL, '52201240052');
INSERT INTO `grupos_estudiantes` VALUES (52, '201240053', 1, '', NULL, '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '2021-08-07 19:39:56', '2021-09-18 01:15:59', 'VIG', NULL, '52201240053');
INSERT INTO `grupos_estudiantes` VALUES (52, '201240055', 1, '', NULL, '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '2021-08-07 19:39:56', '2021-09-18 01:15:59', 'VIG', NULL, '52201240055');
INSERT INTO `grupos_estudiantes` VALUES (52, '201240056', 1, '', NULL, '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '2021-08-07 19:39:56', '2021-09-18 01:15:59', 'VIG', NULL, '52201240056');
INSERT INTO `grupos_estudiantes` VALUES (52, '201240058', 1, '', NULL, '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '2021-08-07 19:39:56', '2021-09-18 01:15:59', 'VIG', NULL, '52201240058');
INSERT INTO `grupos_estudiantes` VALUES (52, '201240061', 1, '', NULL, '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '2021-08-07 19:39:56', '2021-09-18 01:15:59', 'VIG', NULL, '52201240061');
INSERT INTO `grupos_estudiantes` VALUES (52, '201240066', 1, '', NULL, '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '2021-08-07 19:39:56', '2021-09-18 01:15:59', 'VIG', NULL, '52201240066');
INSERT INTO `grupos_estudiantes` VALUES (52, '201240067', 1, '', NULL, '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '2021-08-07 19:39:56', '2021-09-18 01:15:59', 'VIG', NULL, '52201240067');
INSERT INTO `grupos_estudiantes` VALUES (52, '201240068', 1, '', NULL, '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '2021-08-07 19:39:56', '2021-09-18 01:15:59', 'VIG', NULL, '52201240068');
INSERT INTO `grupos_estudiantes` VALUES (52, '201240069', 1, '', NULL, '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '2021-08-07 19:39:56', '2021-09-18 01:15:59', 'VIG', NULL, '52201240069');
INSERT INTO `grupos_estudiantes` VALUES (52, '201240126', 1, '', NULL, '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '2021-08-07 19:39:56', '2021-09-18 01:15:59', 'VIG', NULL, '52201240126');
INSERT INTO `grupos_estudiantes` VALUES (52, '211240001', 1, '', NULL, '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '2021-08-07 19:39:56', '2021-09-18 01:15:59', 'VIG', NULL, '52211240001');
INSERT INTO `grupos_estudiantes` VALUES (52, '211240002', 1, '', NULL, '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '2021-08-07 19:39:56', '2021-09-18 01:15:59', 'VIG', NULL, '52211240002');
INSERT INTO `grupos_estudiantes` VALUES (52, '211240005', 1, '', NULL, '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '2021-08-07 19:39:56', '2021-09-18 01:15:59', 'VIG', NULL, '52211240005');
INSERT INTO `grupos_estudiantes` VALUES (52, '211240006', 1, '', NULL, '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '2021-08-07 19:39:56', '2021-09-18 01:15:59', 'VIG', NULL, '52211240006');
INSERT INTO `grupos_estudiantes` VALUES (52, '211240007', 1, '', NULL, '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '2021-08-07 19:39:56', '2021-09-18 01:15:59', 'VIG', NULL, '52211240007');
INSERT INTO `grupos_estudiantes` VALUES (52, '211240009', 1, '', NULL, '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '2021-08-07 19:39:56', '2021-09-18 01:15:59', 'VIG', NULL, '52211240009');
INSERT INTO `grupos_estudiantes` VALUES (52, '211240014', 1, '', NULL, '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '2021-08-07 19:39:56', '2021-09-18 01:15:59', 'VIG', NULL, '52211240014');
INSERT INTO `grupos_estudiantes` VALUES (53, '161240021', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '53161240021');
INSERT INTO `grupos_estudiantes` VALUES (53, '161240031', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '53161240031');
INSERT INTO `grupos_estudiantes` VALUES (53, '181240001', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '53181240001');
INSERT INTO `grupos_estudiantes` VALUES (53, '181240002', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '53181240002');
INSERT INTO `grupos_estudiantes` VALUES (53, '181240004', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '53181240004');
INSERT INTO `grupos_estudiantes` VALUES (53, '181240007', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '53181240007');
INSERT INTO `grupos_estudiantes` VALUES (53, '181240008', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '53181240008');
INSERT INTO `grupos_estudiantes` VALUES (53, '181240009', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '53181240009');
INSERT INTO `grupos_estudiantes` VALUES (53, '181240012', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '53181240012');
INSERT INTO `grupos_estudiantes` VALUES (53, '181240013', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '53181240013');
INSERT INTO `grupos_estudiantes` VALUES (53, '181240018', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '53181240018');
INSERT INTO `grupos_estudiantes` VALUES (53, '181240019', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '53181240019');
INSERT INTO `grupos_estudiantes` VALUES (53, '181240020', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '53181240020');
INSERT INTO `grupos_estudiantes` VALUES (53, '181240023', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '53181240023');
INSERT INTO `grupos_estudiantes` VALUES (53, '181240026', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '53181240026');
INSERT INTO `grupos_estudiantes` VALUES (53, '181240044', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '53181240044');
INSERT INTO `grupos_estudiantes` VALUES (53, '181240045', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '53181240045');
INSERT INTO `grupos_estudiantes` VALUES (53, '181240046', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '53181240046');
INSERT INTO `grupos_estudiantes` VALUES (53, '181240047', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '53181240047');
INSERT INTO `grupos_estudiantes` VALUES (53, '181240052', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '53181240052');
INSERT INTO `grupos_estudiantes` VALUES (53, '181240055', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '53181240055');
INSERT INTO `grupos_estudiantes` VALUES (53, '181240066', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '53181240066');
INSERT INTO `grupos_estudiantes` VALUES (53, '181240068', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '53181240068');
INSERT INTO `grupos_estudiantes` VALUES (53, '181240073', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '53181240073');
INSERT INTO `grupos_estudiantes` VALUES (53, '181240082', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '53181240082');
INSERT INTO `grupos_estudiantes` VALUES (54, '161240002', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '54161240002');
INSERT INTO `grupos_estudiantes` VALUES (54, '161240029', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '54161240029');
INSERT INTO `grupos_estudiantes` VALUES (54, '181240015', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '54181240015');
INSERT INTO `grupos_estudiantes` VALUES (54, '181240016', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '54181240016');
INSERT INTO `grupos_estudiantes` VALUES (54, '181240027', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '54181240027');
INSERT INTO `grupos_estudiantes` VALUES (54, '181240031', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '54181240031');
INSERT INTO `grupos_estudiantes` VALUES (54, '181240033', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '54181240033');
INSERT INTO `grupos_estudiantes` VALUES (54, '181240040', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '54181240040');
INSERT INTO `grupos_estudiantes` VALUES (54, '181240041', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '54181240041');
INSERT INTO `grupos_estudiantes` VALUES (54, '181240043', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '54181240043');
INSERT INTO `grupos_estudiantes` VALUES (54, '181240050', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '54181240050');
INSERT INTO `grupos_estudiantes` VALUES (54, '181240058', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '54181240058');
INSERT INTO `grupos_estudiantes` VALUES (54, '181240060', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '54181240060');
INSERT INTO `grupos_estudiantes` VALUES (54, '181240069', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '54181240069');
INSERT INTO `grupos_estudiantes` VALUES (54, '181240070', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '54181240070');
INSERT INTO `grupos_estudiantes` VALUES (54, '191240063', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '54191240063');
INSERT INTO `grupos_estudiantes` VALUES (54, 'B156P1225', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-07 19:39:56', '2021-08-07 19:39:56', 'VIG', NULL, '54B156P1225');
INSERT INTO `grupos_estudiantes` VALUES (55, '161240014', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '55161240014');
INSERT INTO `grupos_estudiantes` VALUES (55, '201240006', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '55201240006');
INSERT INTO `grupos_estudiantes` VALUES (55, '201240034', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '55201240034');
INSERT INTO `grupos_estudiantes` VALUES (55, '201240048', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '55201240048');
INSERT INTO `grupos_estudiantes` VALUES (55, '201240052', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '55201240052');
INSERT INTO `grupos_estudiantes` VALUES (55, '201240053', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '55201240053');
INSERT INTO `grupos_estudiantes` VALUES (55, '201240055', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '55201240055');
INSERT INTO `grupos_estudiantes` VALUES (55, '201240056', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '55201240056');
INSERT INTO `grupos_estudiantes` VALUES (55, '201240058', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '55201240058');
INSERT INTO `grupos_estudiantes` VALUES (55, '201240061', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '55201240061');
INSERT INTO `grupos_estudiantes` VALUES (55, '201240066', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '55201240066');
INSERT INTO `grupos_estudiantes` VALUES (55, '201240067', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '55201240067');
INSERT INTO `grupos_estudiantes` VALUES (55, '201240068', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '55201240068');
INSERT INTO `grupos_estudiantes` VALUES (55, '201240069', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '55201240069');
INSERT INTO `grupos_estudiantes` VALUES (55, '201240126', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '55201240126');
INSERT INTO `grupos_estudiantes` VALUES (55, '211240001', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '55211240001');
INSERT INTO `grupos_estudiantes` VALUES (55, '211240002', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '55211240002');
INSERT INTO `grupos_estudiantes` VALUES (55, '211240005', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '55211240005');
INSERT INTO `grupos_estudiantes` VALUES (55, '211240006', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '55211240006');
INSERT INTO `grupos_estudiantes` VALUES (55, '211240007', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '55211240007');
INSERT INTO `grupos_estudiantes` VALUES (55, '211240009', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '55211240009');
INSERT INTO `grupos_estudiantes` VALUES (55, '211240014', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '55211240014');
INSERT INTO `grupos_estudiantes` VALUES (56, '181240001', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '56181240001');
INSERT INTO `grupos_estudiantes` VALUES (56, '181240002', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '56181240002');
INSERT INTO `grupos_estudiantes` VALUES (56, '181240004', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '56181240004');
INSERT INTO `grupos_estudiantes` VALUES (56, '181240007', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '56181240007');
INSERT INTO `grupos_estudiantes` VALUES (56, '181240008', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '56181240008');
INSERT INTO `grupos_estudiantes` VALUES (56, '181240009', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '56181240009');
INSERT INTO `grupos_estudiantes` VALUES (56, '181240012', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '56181240012');
INSERT INTO `grupos_estudiantes` VALUES (56, '181240013', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '56181240013');
INSERT INTO `grupos_estudiantes` VALUES (56, '181240018', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '56181240018');
INSERT INTO `grupos_estudiantes` VALUES (56, '181240019', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '56181240019');
INSERT INTO `grupos_estudiantes` VALUES (56, '181240020', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '56181240020');
INSERT INTO `grupos_estudiantes` VALUES (56, '181240023', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '56181240023');
INSERT INTO `grupos_estudiantes` VALUES (56, '181240026', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '56181240026');
INSERT INTO `grupos_estudiantes` VALUES (56, '181240028', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '56181240028');
INSERT INTO `grupos_estudiantes` VALUES (56, '181240044', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '56181240044');
INSERT INTO `grupos_estudiantes` VALUES (56, '181240045', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '56181240045');
INSERT INTO `grupos_estudiantes` VALUES (56, '181240046', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '56181240046');
INSERT INTO `grupos_estudiantes` VALUES (56, '181240047', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '56181240047');
INSERT INTO `grupos_estudiantes` VALUES (56, '181240052', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '56181240052');
INSERT INTO `grupos_estudiantes` VALUES (56, '181240055', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '56181240055');
INSERT INTO `grupos_estudiantes` VALUES (56, '181240066', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '56181240066');
INSERT INTO `grupos_estudiantes` VALUES (56, '181240068', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '56181240068');
INSERT INTO `grupos_estudiantes` VALUES (56, '181240073', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '56181240073');
INSERT INTO `grupos_estudiantes` VALUES (56, '181240074', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '56181240074');
INSERT INTO `grupos_estudiantes` VALUES (56, '181240082', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '56181240082');
INSERT INTO `grupos_estudiantes` VALUES (57, '171240004', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '57171240004');
INSERT INTO `grupos_estudiantes` VALUES (57, '171240009', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '57171240009');
INSERT INTO `grupos_estudiantes` VALUES (57, '171240015', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '57171240015');
INSERT INTO `grupos_estudiantes` VALUES (57, '171240017', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '57171240017');
INSERT INTO `grupos_estudiantes` VALUES (57, '171240032', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '57171240032');
INSERT INTO `grupos_estudiantes` VALUES (57, '171240044', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '57171240044');
INSERT INTO `grupos_estudiantes` VALUES (57, '171240046', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '57171240046');
INSERT INTO `grupos_estudiantes` VALUES (58, '161240013', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '58161240013');
INSERT INTO `grupos_estudiantes` VALUES (58, '171240004', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '58171240004');
INSERT INTO `grupos_estudiantes` VALUES (58, '171240008', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '58171240008');
INSERT INTO `grupos_estudiantes` VALUES (58, '171240009', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '58171240009');
INSERT INTO `grupos_estudiantes` VALUES (58, '171240014', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '58171240014');
INSERT INTO `grupos_estudiantes` VALUES (58, '171240015', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '58171240015');
INSERT INTO `grupos_estudiantes` VALUES (58, '171240016', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '58171240016');
INSERT INTO `grupos_estudiantes` VALUES (58, '171240017', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '58171240017');
INSERT INTO `grupos_estudiantes` VALUES (58, '171240020', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '58171240020');
INSERT INTO `grupos_estudiantes` VALUES (58, '171240032', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '58171240032');
INSERT INTO `grupos_estudiantes` VALUES (58, '171240044', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '58171240044');
INSERT INTO `grupos_estudiantes` VALUES (58, '171240046', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '58171240046');
INSERT INTO `grupos_estudiantes` VALUES (59, '191240049', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '59191240049');
INSERT INTO `grupos_estudiantes` VALUES (59, '191240050', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '59191240050');
INSERT INTO `grupos_estudiantes` VALUES (59, '191240051', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '59191240051');
INSERT INTO `grupos_estudiantes` VALUES (59, '191240052', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '59191240052');
INSERT INTO `grupos_estudiantes` VALUES (59, '191240058', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '59191240058');
INSERT INTO `grupos_estudiantes` VALUES (60, '191240049', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '60191240049');
INSERT INTO `grupos_estudiantes` VALUES (60, '191240050', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '60191240050');
INSERT INTO `grupos_estudiantes` VALUES (60, '191240051', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '60191240051');
INSERT INTO `grupos_estudiantes` VALUES (60, '191240052', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '60191240052');
INSERT INTO `grupos_estudiantes` VALUES (60, '191240055', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '60191240055');
INSERT INTO `grupos_estudiantes` VALUES (60, '191240058', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '60191240058');
INSERT INTO `grupos_estudiantes` VALUES (61, '181240032', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '61181240032');
INSERT INTO `grupos_estudiantes` VALUES (61, '181240035', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '61181240035');
INSERT INTO `grupos_estudiantes` VALUES (61, '181240036', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '61181240036');
INSERT INTO `grupos_estudiantes` VALUES (61, '181240048', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '61181240048');
INSERT INTO `grupos_estudiantes` VALUES (61, '181240051', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '61181240051');
INSERT INTO `grupos_estudiantes` VALUES (61, '181240054', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '61181240054');
INSERT INTO `grupos_estudiantes` VALUES (61, '181240061', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '61181240061');
INSERT INTO `grupos_estudiantes` VALUES (61, '181240063', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '61181240063');
INSERT INTO `grupos_estudiantes` VALUES (61, '181240065', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '61181240065');
INSERT INTO `grupos_estudiantes` VALUES (61, '181240075', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '61181240075');
INSERT INTO `grupos_estudiantes` VALUES (61, '181240076', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '61181240076');
INSERT INTO `grupos_estudiantes` VALUES (61, '191240049', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-07 22:56:35', '2021-09-07 22:56:35', 'VIG', 1, '61191240049');
INSERT INTO `grupos_estudiantes` VALUES (62, '171240027', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '62171240027');
INSERT INTO `grupos_estudiantes` VALUES (62, '171240035', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '62171240035');
INSERT INTO `grupos_estudiantes` VALUES (62, '181240032', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '62181240032');
INSERT INTO `grupos_estudiantes` VALUES (62, '181240035', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '62181240035');
INSERT INTO `grupos_estudiantes` VALUES (62, '181240036', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '62181240036');
INSERT INTO `grupos_estudiantes` VALUES (62, '181240048', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '62181240048');
INSERT INTO `grupos_estudiantes` VALUES (62, '181240051', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '62181240051');
INSERT INTO `grupos_estudiantes` VALUES (62, '181240054', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '62181240054');
INSERT INTO `grupos_estudiantes` VALUES (62, '181240057', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '62181240057');
INSERT INTO `grupos_estudiantes` VALUES (62, '181240061', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '62181240061');
INSERT INTO `grupos_estudiantes` VALUES (62, '181240063', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '62181240063');
INSERT INTO `grupos_estudiantes` VALUES (62, '181240065', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '62181240065');
INSERT INTO `grupos_estudiantes` VALUES (62, '181240075', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '62181240075');
INSERT INTO `grupos_estudiantes` VALUES (62, '181240076', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '62181240076');
INSERT INTO `grupos_estudiantes` VALUES (63, '191240049', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '63191240049');
INSERT INTO `grupos_estudiantes` VALUES (63, '191240050', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '63191240050');
INSERT INTO `grupos_estudiantes` VALUES (63, '191240051', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '63191240051');
INSERT INTO `grupos_estudiantes` VALUES (63, '191240052', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '63191240052');
INSERT INTO `grupos_estudiantes` VALUES (63, '191240055', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '63191240055');
INSERT INTO `grupos_estudiantes` VALUES (63, '191240058', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '63191240058');
INSERT INTO `grupos_estudiantes` VALUES (64, '171240011', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '64171240011');
INSERT INTO `grupos_estudiantes` VALUES (64, '171240018', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '64171240018');
INSERT INTO `grupos_estudiantes` VALUES (64, '171240019', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '64171240019');
INSERT INTO `grupos_estudiantes` VALUES (64, '171240021', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '64171240021');
INSERT INTO `grupos_estudiantes` VALUES (64, '171240022', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '64171240022');
INSERT INTO `grupos_estudiantes` VALUES (64, '171240025', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '64171240025');
INSERT INTO `grupos_estudiantes` VALUES (64, '171240026', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '64171240026');
INSERT INTO `grupos_estudiantes` VALUES (64, '171240027', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '64171240027');
INSERT INTO `grupos_estudiantes` VALUES (64, '171240029', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '64171240029');
INSERT INTO `grupos_estudiantes` VALUES (64, '171240031', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '64171240031');
INSERT INTO `grupos_estudiantes` VALUES (64, '171240034', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '64171240034');
INSERT INTO `grupos_estudiantes` VALUES (64, '171240035', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '64171240035');
INSERT INTO `grupos_estudiantes` VALUES (64, '181240057', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '64181240057');
INSERT INTO `grupos_estudiantes` VALUES (65, '171240027', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '65171240027');
INSERT INTO `grupos_estudiantes` VALUES (65, '171240035', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '65171240035');
INSERT INTO `grupos_estudiantes` VALUES (65, '181240032', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '65181240032');
INSERT INTO `grupos_estudiantes` VALUES (65, '181240035', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '65181240035');
INSERT INTO `grupos_estudiantes` VALUES (65, '181240036', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '65181240036');
INSERT INTO `grupos_estudiantes` VALUES (65, '181240048', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '65181240048');
INSERT INTO `grupos_estudiantes` VALUES (65, '181240051', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '65181240051');
INSERT INTO `grupos_estudiantes` VALUES (65, '181240054', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '65181240054');
INSERT INTO `grupos_estudiantes` VALUES (65, '181240057', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '65181240057');
INSERT INTO `grupos_estudiantes` VALUES (65, '181240061', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '65181240061');
INSERT INTO `grupos_estudiantes` VALUES (65, '181240063', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '65181240063');
INSERT INTO `grupos_estudiantes` VALUES (65, '181240065', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '65181240065');
INSERT INTO `grupos_estudiantes` VALUES (65, '181240075', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '65181240075');
INSERT INTO `grupos_estudiantes` VALUES (65, '181240076', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '65181240076');
INSERT INTO `grupos_estudiantes` VALUES (66, '161240053', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '66161240053');
INSERT INTO `grupos_estudiantes` VALUES (66, '171240011', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '66171240011');
INSERT INTO `grupos_estudiantes` VALUES (66, '171240018', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '66171240018');
INSERT INTO `grupos_estudiantes` VALUES (66, '171240019', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '66171240019');
INSERT INTO `grupos_estudiantes` VALUES (66, '171240021', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '66171240021');
INSERT INTO `grupos_estudiantes` VALUES (66, '171240022', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '66171240022');
INSERT INTO `grupos_estudiantes` VALUES (66, '171240025', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '66171240025');
INSERT INTO `grupos_estudiantes` VALUES (66, '171240026', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '66171240026');
INSERT INTO `grupos_estudiantes` VALUES (66, '171240027', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '66171240027');
INSERT INTO `grupos_estudiantes` VALUES (66, '171240029', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '66171240029');
INSERT INTO `grupos_estudiantes` VALUES (66, '171240031', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '66171240031');
INSERT INTO `grupos_estudiantes` VALUES (66, '171240034', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '66171240034');
INSERT INTO `grupos_estudiantes` VALUES (66, '171240035', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '66171240035');
INSERT INTO `grupos_estudiantes` VALUES (67, '191240013', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '67191240013');
INSERT INTO `grupos_estudiantes` VALUES (67, '191240023', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '67191240023');
INSERT INTO `grupos_estudiantes` VALUES (67, '191240030', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '67191240030');
INSERT INTO `grupos_estudiantes` VALUES (67, '191240031', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '67191240031');
INSERT INTO `grupos_estudiantes` VALUES (67, '191240033', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '67191240033');
INSERT INTO `grupos_estudiantes` VALUES (67, '191240035', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '67191240035');
INSERT INTO `grupos_estudiantes` VALUES (67, '191240036', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '67191240036');
INSERT INTO `grupos_estudiantes` VALUES (67, '191240038', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '67191240038');
INSERT INTO `grupos_estudiantes` VALUES (67, '191240039', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '67191240039');
INSERT INTO `grupos_estudiantes` VALUES (67, '191240041', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '67191240041');
INSERT INTO `grupos_estudiantes` VALUES (67, '191240043', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '67191240043');
INSERT INTO `grupos_estudiantes` VALUES (67, '191240044', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '67191240044');
INSERT INTO `grupos_estudiantes` VALUES (67, '191240045', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '67191240045');
INSERT INTO `grupos_estudiantes` VALUES (67, '191240047', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '67191240047');
INSERT INTO `grupos_estudiantes` VALUES (67, '191240060', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '67191240060');
INSERT INTO `grupos_estudiantes` VALUES (67, '191240061', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '67191240061');
INSERT INTO `grupos_estudiantes` VALUES (67, '191240064', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '67191240064');
INSERT INTO `grupos_estudiantes` VALUES (67, '191240068', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '67191240068');
INSERT INTO `grupos_estudiantes` VALUES (68, '161240002', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '68161240002');
INSERT INTO `grupos_estudiantes` VALUES (68, '171240001', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '68171240001');
INSERT INTO `grupos_estudiantes` VALUES (68, '171240028', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '68171240028');
INSERT INTO `grupos_estudiantes` VALUES (68, '181240015', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '68181240015');
INSERT INTO `grupos_estudiantes` VALUES (68, '181240016', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '68181240016');
INSERT INTO `grupos_estudiantes` VALUES (68, '181240027', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '68181240027');
INSERT INTO `grupos_estudiantes` VALUES (68, '181240031', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '68181240031');
INSERT INTO `grupos_estudiantes` VALUES (68, '181240033', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '68181240033');
INSERT INTO `grupos_estudiantes` VALUES (68, '181240040', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '68181240040');
INSERT INTO `grupos_estudiantes` VALUES (68, '181240041', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '68181240041');
INSERT INTO `grupos_estudiantes` VALUES (68, '181240043', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '68181240043');
INSERT INTO `grupos_estudiantes` VALUES (68, '181240050', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '68181240050');
INSERT INTO `grupos_estudiantes` VALUES (68, '181240058', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '68181240058');
INSERT INTO `grupos_estudiantes` VALUES (68, '181240069', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '68181240069');
INSERT INTO `grupos_estudiantes` VALUES (68, '181240070', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '68181240070');
INSERT INTO `grupos_estudiantes` VALUES (69, '181240009', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '69181240009');
INSERT INTO `grupos_estudiantes` VALUES (69, '181240028', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '69181240028');
INSERT INTO `grupos_estudiantes` VALUES (69, '181240068', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '69181240068');
INSERT INTO `grupos_estudiantes` VALUES (69, '181240074', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '69181240074');
INSERT INTO `grupos_estudiantes` VALUES (69, '191240001', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '69191240001');
INSERT INTO `grupos_estudiantes` VALUES (69, '191240002', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '69191240002');
INSERT INTO `grupos_estudiantes` VALUES (69, '191240006', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '69191240006');
INSERT INTO `grupos_estudiantes` VALUES (69, '191240007', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '69191240007');
INSERT INTO `grupos_estudiantes` VALUES (69, '191240009', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '69191240009');
INSERT INTO `grupos_estudiantes` VALUES (69, '191240010', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '69191240010');
INSERT INTO `grupos_estudiantes` VALUES (69, '191240011', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '69191240011');
INSERT INTO `grupos_estudiantes` VALUES (69, '191240014', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '69191240014');
INSERT INTO `grupos_estudiantes` VALUES (69, '191240015', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '69191240015');
INSERT INTO `grupos_estudiantes` VALUES (69, '191240016', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '69191240016');
INSERT INTO `grupos_estudiantes` VALUES (69, '191240017', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '69191240017');
INSERT INTO `grupos_estudiantes` VALUES (69, '191240018', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '69191240018');
INSERT INTO `grupos_estudiantes` VALUES (69, '191240020', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '69191240020');
INSERT INTO `grupos_estudiantes` VALUES (69, '191240021', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '69191240021');
INSERT INTO `grupos_estudiantes` VALUES (69, '191240022', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '69191240022');
INSERT INTO `grupos_estudiantes` VALUES (69, '191240024', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '69191240024');
INSERT INTO `grupos_estudiantes` VALUES (69, '191240025', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '69191240025');
INSERT INTO `grupos_estudiantes` VALUES (69, '191240028', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '69191240028');
INSERT INTO `grupos_estudiantes` VALUES (69, '191240029', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '69191240029');
INSERT INTO `grupos_estudiantes` VALUES (70, '161240013', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '70161240013');
INSERT INTO `grupos_estudiantes` VALUES (70, '161240014', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '70161240014');
INSERT INTO `grupos_estudiantes` VALUES (70, '161240031', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '70161240031');
INSERT INTO `grupos_estudiantes` VALUES (70, '171240004', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '70171240004');
INSERT INTO `grupos_estudiantes` VALUES (70, '171240008', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '70171240008');
INSERT INTO `grupos_estudiantes` VALUES (70, '171240009', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '70171240009');
INSERT INTO `grupos_estudiantes` VALUES (70, '171240014', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '70171240014');
INSERT INTO `grupos_estudiantes` VALUES (70, '171240015', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '70171240015');
INSERT INTO `grupos_estudiantes` VALUES (70, '171240016', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '70171240016');
INSERT INTO `grupos_estudiantes` VALUES (70, '171240017', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '70171240017');
INSERT INTO `grupos_estudiantes` VALUES (70, '171240020', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '70171240020');
INSERT INTO `grupos_estudiantes` VALUES (70, '171240032', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '70171240032');
INSERT INTO `grupos_estudiantes` VALUES (70, '171240044', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '70171240044');
INSERT INTO `grupos_estudiantes` VALUES (70, '171240046', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 06:22:19', '2021-08-16 06:22:19', 'VIG', NULL, '70171240046');
INSERT INTO `grupos_estudiantes` VALUES (71, '161240013', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 08:21:04', '2021-08-16 08:21:04', 'VIG', NULL, '71161240013');
INSERT INTO `grupos_estudiantes` VALUES (71, '161240024', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 08:21:04', '2021-08-16 08:21:04', 'VIG', NULL, '71161240024');
INSERT INTO `grupos_estudiantes` VALUES (71, '181240001', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 08:21:04', '2021-08-16 08:21:04', 'VIG', NULL, '71181240001');
INSERT INTO `grupos_estudiantes` VALUES (71, '181240002', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 08:21:04', '2021-08-16 08:21:04', 'VIG', NULL, '71181240002');
INSERT INTO `grupos_estudiantes` VALUES (71, '181240004', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 08:21:04', '2021-08-16 08:21:04', 'VIG', NULL, '71181240004');
INSERT INTO `grupos_estudiantes` VALUES (71, '181240007', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 08:21:04', '2021-08-16 08:21:04', 'VIG', NULL, '71181240007');
INSERT INTO `grupos_estudiantes` VALUES (71, '181240008', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 08:21:04', '2021-08-16 08:21:04', 'VIG', NULL, '71181240008');
INSERT INTO `grupos_estudiantes` VALUES (71, '181240012', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 08:21:04', '2021-08-16 08:21:04', 'VIG', NULL, '71181240012');
INSERT INTO `grupos_estudiantes` VALUES (71, '181240013', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 08:21:04', '2021-08-16 08:21:04', 'VIG', NULL, '71181240013');
INSERT INTO `grupos_estudiantes` VALUES (71, '181240018', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 08:21:04', '2021-08-16 08:21:04', 'VIG', NULL, '71181240018');
INSERT INTO `grupos_estudiantes` VALUES (71, '181240019', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 08:21:04', '2021-08-16 08:21:04', 'VIG', NULL, '71181240019');
INSERT INTO `grupos_estudiantes` VALUES (71, '181240020', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 08:21:04', '2021-08-16 08:21:04', 'VIG', NULL, '71181240020');
INSERT INTO `grupos_estudiantes` VALUES (71, '181240026', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 08:21:04', '2021-08-16 08:21:04', 'VIG', NULL, '71181240026');
INSERT INTO `grupos_estudiantes` VALUES (71, '181240044', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 08:21:04', '2021-08-16 08:21:04', 'VIG', NULL, '71181240044');
INSERT INTO `grupos_estudiantes` VALUES (71, '181240045', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 08:21:04', '2021-08-16 08:21:04', 'VIG', NULL, '71181240045');
INSERT INTO `grupos_estudiantes` VALUES (71, '181240046', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 08:21:04', '2021-08-16 08:21:04', 'VIG', NULL, '71181240046');
INSERT INTO `grupos_estudiantes` VALUES (71, '181240047', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 08:21:04', '2021-08-16 08:21:04', 'VIG', NULL, '71181240047');
INSERT INTO `grupos_estudiantes` VALUES (71, '181240052', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 08:21:04', '2021-08-16 08:21:04', 'VIG', NULL, '71181240052');
INSERT INTO `grupos_estudiantes` VALUES (71, '181240055', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 08:21:04', '2021-08-16 08:21:04', 'VIG', NULL, '71181240055');
INSERT INTO `grupos_estudiantes` VALUES (71, '181240066', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 08:21:04', '2021-08-16 08:21:04', 'VIG', NULL, '71181240066');
INSERT INTO `grupos_estudiantes` VALUES (71, '181240068', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 08:21:04', '2021-08-16 08:21:04', 'VIG', NULL, '71181240068');
INSERT INTO `grupos_estudiantes` VALUES (71, '181240073', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 08:21:04', '2021-08-16 08:21:04', 'VIG', NULL, '71181240073');
INSERT INTO `grupos_estudiantes` VALUES (71, '181240082', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 08:21:04', '2021-08-16 08:21:04', 'VIG', NULL, '71181240082');
INSERT INTO `grupos_estudiantes` VALUES (72, '201240003', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 08:21:04', '2021-08-16 08:21:04', 'VIG', NULL, '72201240003');
INSERT INTO `grupos_estudiantes` VALUES (72, '201240004', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 08:21:04', '2021-08-16 08:21:04', 'VIG', NULL, '72201240004');
INSERT INTO `grupos_estudiantes` VALUES (72, '201240008', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 08:21:04', '2021-08-16 08:21:04', 'VIG', NULL, '72201240008');
INSERT INTO `grupos_estudiantes` VALUES (72, '201240009', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 08:21:04', '2021-08-16 08:21:04', 'VIG', NULL, '72201240009');
INSERT INTO `grupos_estudiantes` VALUES (72, '201240012', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 08:21:04', '2021-08-16 08:21:04', 'VIG', NULL, '72201240012');
INSERT INTO `grupos_estudiantes` VALUES (72, '201240013', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 08:21:04', '2021-08-16 08:21:04', 'VIG', NULL, '72201240013');
INSERT INTO `grupos_estudiantes` VALUES (72, '201240014', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 08:21:04', '2021-08-16 08:21:04', 'VIG', NULL, '72201240014');
INSERT INTO `grupos_estudiantes` VALUES (72, '201240015', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 08:21:04', '2021-08-16 08:21:04', 'VIG', NULL, '72201240015');
INSERT INTO `grupos_estudiantes` VALUES (72, '201240016', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 08:21:04', '2021-08-16 08:21:04', 'VIG', NULL, '72201240016');
INSERT INTO `grupos_estudiantes` VALUES (72, '201240019', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 08:21:04', '2021-08-16 08:21:04', 'VIG', NULL, '72201240019');
INSERT INTO `grupos_estudiantes` VALUES (72, '201240022', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 08:21:04', '2021-08-16 08:21:04', 'VIG', NULL, '72201240022');
INSERT INTO `grupos_estudiantes` VALUES (72, '201240023', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 08:21:04', '2021-08-16 08:21:04', 'VIG', NULL, '72201240023');
INSERT INTO `grupos_estudiantes` VALUES (72, '201240128', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-16 08:21:04', '2021-08-16 08:21:04', 'VIG', NULL, '72201240128');
INSERT INTO `grupos_estudiantes` VALUES (101, '211240039', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '101211240039');
INSERT INTO `grupos_estudiantes` VALUES (101, '211240040', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '101211240040');
INSERT INTO `grupos_estudiantes` VALUES (101, '211240043', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '101211240043');
INSERT INTO `grupos_estudiantes` VALUES (101, '211240044', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '101211240044');
INSERT INTO `grupos_estudiantes` VALUES (101, '211240045', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '101211240045');
INSERT INTO `grupos_estudiantes` VALUES (101, '211240048', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '101211240048');
INSERT INTO `grupos_estudiantes` VALUES (102, '181240001', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '102181240001');
INSERT INTO `grupos_estudiantes` VALUES (102, '181240002', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '102181240002');
INSERT INTO `grupos_estudiantes` VALUES (102, '181240007', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '102181240007');
INSERT INTO `grupos_estudiantes` VALUES (102, '181240008', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '102181240008');
INSERT INTO `grupos_estudiantes` VALUES (102, '181240009', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '102181240009');
INSERT INTO `grupos_estudiantes` VALUES (102, '181240012', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '102181240012');
INSERT INTO `grupos_estudiantes` VALUES (102, '181240013', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '102181240013');
INSERT INTO `grupos_estudiantes` VALUES (102, '181240018', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '102181240018');
INSERT INTO `grupos_estudiantes` VALUES (102, '181240019', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '102181240019');
INSERT INTO `grupos_estudiantes` VALUES (102, '181240020', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '102181240020');
INSERT INTO `grupos_estudiantes` VALUES (102, '181240023', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '102181240023');
INSERT INTO `grupos_estudiantes` VALUES (102, '181240026', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '102181240026');
INSERT INTO `grupos_estudiantes` VALUES (102, '181240044', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '102181240044');
INSERT INTO `grupos_estudiantes` VALUES (102, '181240045', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '102181240045');
INSERT INTO `grupos_estudiantes` VALUES (102, '181240046', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '102181240046');
INSERT INTO `grupos_estudiantes` VALUES (102, '181240047', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '102181240047');
INSERT INTO `grupos_estudiantes` VALUES (102, '181240052', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '102181240052');
INSERT INTO `grupos_estudiantes` VALUES (102, '181240066', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '102181240066');
INSERT INTO `grupos_estudiantes` VALUES (102, '181240073', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '102181240073');
INSERT INTO `grupos_estudiantes` VALUES (102, '181240074', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '102181240074');
INSERT INTO `grupos_estudiantes` VALUES (102, '181240082', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '102181240082');
INSERT INTO `grupos_estudiantes` VALUES (103, '191240001', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '103191240001');
INSERT INTO `grupos_estudiantes` VALUES (103, '191240006', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '103191240006');
INSERT INTO `grupos_estudiantes` VALUES (103, '191240007', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '103191240007');
INSERT INTO `grupos_estudiantes` VALUES (103, '191240009', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '103191240009');
INSERT INTO `grupos_estudiantes` VALUES (103, '191240010', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '103191240010');
INSERT INTO `grupos_estudiantes` VALUES (103, '191240011', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '103191240011');
INSERT INTO `grupos_estudiantes` VALUES (103, '191240014', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '103191240014');
INSERT INTO `grupos_estudiantes` VALUES (103, '191240015', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '103191240015');
INSERT INTO `grupos_estudiantes` VALUES (103, '191240016', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '103191240016');
INSERT INTO `grupos_estudiantes` VALUES (103, '191240017', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '103191240017');
INSERT INTO `grupos_estudiantes` VALUES (103, '191240018', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '103191240018');
INSERT INTO `grupos_estudiantes` VALUES (103, '191240020', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '103191240020');
INSERT INTO `grupos_estudiantes` VALUES (103, '191240024', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '103191240024');
INSERT INTO `grupos_estudiantes` VALUES (103, '191240028', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '103191240028');
INSERT INTO `grupos_estudiantes` VALUES (103, '191240029', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '103191240029');
INSERT INTO `grupos_estudiantes` VALUES (103, '201240034', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-11 18:32:57', '2021-09-11 18:32:57', 'VIG', 2, '103201240034');
INSERT INTO `grupos_estudiantes` VALUES (104, '201240011', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '104201240011');
INSERT INTO `grupos_estudiantes` VALUES (104, '201240071', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '104201240071');
INSERT INTO `grupos_estudiantes` VALUES (104, '201240074', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '104201240074');
INSERT INTO `grupos_estudiantes` VALUES (104, '201240077', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '104201240077');
INSERT INTO `grupos_estudiantes` VALUES (104, '201240080', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '104201240080');
INSERT INTO `grupos_estudiantes` VALUES (104, '201240083', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '104201240083');
INSERT INTO `grupos_estudiantes` VALUES (104, '201240084', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '104201240084');
INSERT INTO `grupos_estudiantes` VALUES (104, '201240090', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '104201240090');
INSERT INTO `grupos_estudiantes` VALUES (104, '201240092', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '104201240092');
INSERT INTO `grupos_estudiantes` VALUES (104, '201240095', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '104201240095');
INSERT INTO `grupos_estudiantes` VALUES (104, '201240098', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '104201240098');
INSERT INTO `grupos_estudiantes` VALUES (104, '201240100', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '104201240100');
INSERT INTO `grupos_estudiantes` VALUES (104, '201240108', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '104201240108');
INSERT INTO `grupos_estudiantes` VALUES (105, '181240032', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '105181240032');
INSERT INTO `grupos_estudiantes` VALUES (105, '181240035', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '105181240035');
INSERT INTO `grupos_estudiantes` VALUES (105, '181240036', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '105181240036');
INSERT INTO `grupos_estudiantes` VALUES (105, '181240048', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '105181240048');
INSERT INTO `grupos_estudiantes` VALUES (105, '181240051', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '105181240051');
INSERT INTO `grupos_estudiantes` VALUES (105, '181240057', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '105181240057');
INSERT INTO `grupos_estudiantes` VALUES (105, '181240065', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '105181240065');
INSERT INTO `grupos_estudiantes` VALUES (105, '181240075', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '105181240075');
INSERT INTO `grupos_estudiantes` VALUES (105, '191240049', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-08 12:10:56', '2021-09-08 12:10:56', 'VIG', 2, '105191240049');
INSERT INTO `grupos_estudiantes` VALUES (106, '201240003', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '106201240003');
INSERT INTO `grupos_estudiantes` VALUES (106, '201240004', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '106201240004');
INSERT INTO `grupos_estudiantes` VALUES (106, '201240012', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '106201240012');
INSERT INTO `grupos_estudiantes` VALUES (106, '201240013', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '106201240013');
INSERT INTO `grupos_estudiantes` VALUES (106, '201240016', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '106201240016');
INSERT INTO `grupos_estudiantes` VALUES (106, '201240019', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '106201240019');
INSERT INTO `grupos_estudiantes` VALUES (106, '201240023', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '106201240023');
INSERT INTO `grupos_estudiantes` VALUES (107, '191240050', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-09-18 02:02:21', 'VIG', 2, '107191240050');
INSERT INTO `grupos_estudiantes` VALUES (107, '191240051', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-09-18 02:02:21', 'VIG', 2, '107191240051');
INSERT INTO `grupos_estudiantes` VALUES (107, '191240052', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-09-18 02:02:21', 'VIG', 2, '107191240052');
INSERT INTO `grupos_estudiantes` VALUES (108, '191240050', 1, '70', '80', '85', '77', '85', '77', '77', '80', '', '1', '1', '1', '2', '3', '3', '4', '4', '', '', '', '', '', '', '', '', '', '', '2021-08-30 01:42:54', '2021-12-13 11:09:39', 'VIG', 2, '108191240050');
INSERT INTO `grupos_estudiantes` VALUES (108, '191240051', 1, '71', '81', '86', '78', '86', '78', '78', '80', '', '1', '1', '1', '2', '3', '3', '4', '4', '', '', '', '', '', '', '', '', '', '', '2021-08-30 01:42:54', '2021-12-13 11:09:39', 'VIG', 2, '108191240051');
INSERT INTO `grupos_estudiantes` VALUES (108, '191240052', 1, '72', '82', '87', '79', '87', '79', '79', '80', '', '1', '1', '1', '2', '3', '3', '4', '4', '', '', '', '', '', '', '', '', '', '', '2021-08-30 01:42:54', '2021-12-13 11:09:39', 'VIG', 2, '108191240052');
INSERT INTO `grupos_estudiantes` VALUES (109, '211240051', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '109211240051');
INSERT INTO `grupos_estudiantes` VALUES (109, '211240054', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '109211240054');
INSERT INTO `grupos_estudiantes` VALUES (109, '211240055', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '109211240055');
INSERT INTO `grupos_estudiantes` VALUES (109, '211240059', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '109211240059');
INSERT INTO `grupos_estudiantes` VALUES (109, '211240060', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '109211240060');
INSERT INTO `grupos_estudiantes` VALUES (109, '211240062', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '109211240062');
INSERT INTO `grupos_estudiantes` VALUES (109, '211240063', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '109211240063');
INSERT INTO `grupos_estudiantes` VALUES (109, '211240064', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '109211240064');
INSERT INTO `grupos_estudiantes` VALUES (109, '211240065', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '109211240065');
INSERT INTO `grupos_estudiantes` VALUES (110, '211240020', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '110211240020');
INSERT INTO `grupos_estudiantes` VALUES (110, '211240021', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '110211240021');
INSERT INTO `grupos_estudiantes` VALUES (110, '211240023', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '110211240023');
INSERT INTO `grupos_estudiantes` VALUES (110, '211240024', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '110211240024');
INSERT INTO `grupos_estudiantes` VALUES (110, '211240025', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '110211240025');
INSERT INTO `grupos_estudiantes` VALUES (110, '211240027', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '110211240027');
INSERT INTO `grupos_estudiantes` VALUES (110, '211240028', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '110211240028');
INSERT INTO `grupos_estudiantes` VALUES (110, '211240029', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '110211240029');
INSERT INTO `grupos_estudiantes` VALUES (110, '211240030', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '110211240030');
INSERT INTO `grupos_estudiantes` VALUES (110, '211240031', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '110211240031');
INSERT INTO `grupos_estudiantes` VALUES (110, '211240032', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '110211240032');
INSERT INTO `grupos_estudiantes` VALUES (110, '211240034', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '110211240034');
INSERT INTO `grupos_estudiantes` VALUES (110, '211240035', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '110211240035');
INSERT INTO `grupos_estudiantes` VALUES (110, '211240036', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '110211240036');
INSERT INTO `grupos_estudiantes` VALUES (110, '211240038', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '110211240038');
INSERT INTO `grupos_estudiantes` VALUES (111, '201240071', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '111201240071');
INSERT INTO `grupos_estudiantes` VALUES (111, '201240074', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '111201240074');
INSERT INTO `grupos_estudiantes` VALUES (111, '201240077', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '111201240077');
INSERT INTO `grupos_estudiantes` VALUES (111, '201240080', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '111201240080');
INSERT INTO `grupos_estudiantes` VALUES (111, '201240083', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '111201240083');
INSERT INTO `grupos_estudiantes` VALUES (111, '201240084', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '111201240084');
INSERT INTO `grupos_estudiantes` VALUES (111, '201240090', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '111201240090');
INSERT INTO `grupos_estudiantes` VALUES (111, '201240092', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '111201240092');
INSERT INTO `grupos_estudiantes` VALUES (111, '201240095', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '111201240095');
INSERT INTO `grupos_estudiantes` VALUES (111, '201240098', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '111201240098');
INSERT INTO `grupos_estudiantes` VALUES (111, '201240100', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '111201240100');
INSERT INTO `grupos_estudiantes` VALUES (111, '201240108', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '111201240108');
INSERT INTO `grupos_estudiantes` VALUES (112, '201240003', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '112201240003');
INSERT INTO `grupos_estudiantes` VALUES (112, '201240012', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '112201240012');
INSERT INTO `grupos_estudiantes` VALUES (112, '201240013', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '112201240013');
INSERT INTO `grupos_estudiantes` VALUES (112, '201240016', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '112201240016');
INSERT INTO `grupos_estudiantes` VALUES (112, '201240019', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '112201240019');
INSERT INTO `grupos_estudiantes` VALUES (112, '201240023', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '112201240023');
INSERT INTO `grupos_estudiantes` VALUES (114, '211240068', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '114211240068');
INSERT INTO `grupos_estudiantes` VALUES (114, '211240069', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '114211240069');
INSERT INTO `grupos_estudiantes` VALUES (114, '211240071', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '114211240071');
INSERT INTO `grupos_estudiantes` VALUES (114, '211240072', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '114211240072');
INSERT INTO `grupos_estudiantes` VALUES (114, '211240073', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '114211240073');
INSERT INTO `grupos_estudiantes` VALUES (114, '211240075', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '114211240075');
INSERT INTO `grupos_estudiantes` VALUES (114, '211240076', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '114211240076');
INSERT INTO `grupos_estudiantes` VALUES (115, '201240011', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '115201240011');
INSERT INTO `grupos_estudiantes` VALUES (115, '201240071', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '115201240071');
INSERT INTO `grupos_estudiantes` VALUES (115, '201240074', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '115201240074');
INSERT INTO `grupos_estudiantes` VALUES (115, '201240077', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '115201240077');
INSERT INTO `grupos_estudiantes` VALUES (115, '201240080', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '115201240080');
INSERT INTO `grupos_estudiantes` VALUES (115, '201240083', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '115201240083');
INSERT INTO `grupos_estudiantes` VALUES (115, '201240084', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '115201240084');
INSERT INTO `grupos_estudiantes` VALUES (115, '201240090', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '115201240090');
INSERT INTO `grupos_estudiantes` VALUES (115, '201240092', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '115201240092');
INSERT INTO `grupos_estudiantes` VALUES (115, '201240095', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '115201240095');
INSERT INTO `grupos_estudiantes` VALUES (115, '201240098', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '115201240098');
INSERT INTO `grupos_estudiantes` VALUES (115, '201240100', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '115201240100');
INSERT INTO `grupos_estudiantes` VALUES (115, '201240108', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '115201240108');
INSERT INTO `grupos_estudiantes` VALUES (116, '191240027', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '116191240027');
INSERT INTO `grupos_estudiantes` VALUES (116, '201240048', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '116201240048');
INSERT INTO `grupos_estudiantes` VALUES (116, '201240052', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '116201240052');
INSERT INTO `grupos_estudiantes` VALUES (116, '201240058', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '116201240058');
INSERT INTO `grupos_estudiantes` VALUES (116, '201240061', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '116201240061');
INSERT INTO `grupos_estudiantes` VALUES (116, '201240067', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '116201240067');
INSERT INTO `grupos_estudiantes` VALUES (117, '181240001', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '117181240001');
INSERT INTO `grupos_estudiantes` VALUES (117, '181240002', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '117181240002');
INSERT INTO `grupos_estudiantes` VALUES (117, '181240009', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '117181240009');
INSERT INTO `grupos_estudiantes` VALUES (117, '181240013', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '117181240013');
INSERT INTO `grupos_estudiantes` VALUES (117, '181240074', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '117181240074');
INSERT INTO `grupos_estudiantes` VALUES (119, '211240020', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '119211240020');
INSERT INTO `grupos_estudiantes` VALUES (119, '211240021', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '119211240021');
INSERT INTO `grupos_estudiantes` VALUES (119, '211240023', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '119211240023');
INSERT INTO `grupos_estudiantes` VALUES (119, '211240024', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '119211240024');
INSERT INTO `grupos_estudiantes` VALUES (119, '211240025', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '119211240025');
INSERT INTO `grupos_estudiantes` VALUES (119, '211240027', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '119211240027');
INSERT INTO `grupos_estudiantes` VALUES (119, '211240028', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '119211240028');
INSERT INTO `grupos_estudiantes` VALUES (119, '211240029', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '119211240029');
INSERT INTO `grupos_estudiantes` VALUES (119, '211240030', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '119211240030');
INSERT INTO `grupos_estudiantes` VALUES (119, '211240031', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '119211240031');
INSERT INTO `grupos_estudiantes` VALUES (119, '211240032', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '119211240032');
INSERT INTO `grupos_estudiantes` VALUES (119, '211240034', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '119211240034');
INSERT INTO `grupos_estudiantes` VALUES (119, '211240035', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '119211240035');
INSERT INTO `grupos_estudiantes` VALUES (119, '211240036', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '119211240036');
INSERT INTO `grupos_estudiantes` VALUES (119, '211240038', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '119211240038');
INSERT INTO `grupos_estudiantes` VALUES (120, '191240001', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '120191240001');
INSERT INTO `grupos_estudiantes` VALUES (120, '191240006', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '120191240006');
INSERT INTO `grupos_estudiantes` VALUES (120, '191240007', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '120191240007');
INSERT INTO `grupos_estudiantes` VALUES (120, '191240009', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '120191240009');
INSERT INTO `grupos_estudiantes` VALUES (120, '191240010', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '120191240010');
INSERT INTO `grupos_estudiantes` VALUES (120, '191240011', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '120191240011');
INSERT INTO `grupos_estudiantes` VALUES (120, '191240014', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '120191240014');
INSERT INTO `grupos_estudiantes` VALUES (120, '191240015', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '120191240015');
INSERT INTO `grupos_estudiantes` VALUES (120, '191240016', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '120191240016');
INSERT INTO `grupos_estudiantes` VALUES (120, '191240017', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '120191240017');
INSERT INTO `grupos_estudiantes` VALUES (120, '191240018', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '120191240018');
INSERT INTO `grupos_estudiantes` VALUES (120, '191240020', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '120191240020');
INSERT INTO `grupos_estudiantes` VALUES (120, '191240024', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '120191240024');
INSERT INTO `grupos_estudiantes` VALUES (120, '191240028', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '120191240028');
INSERT INTO `grupos_estudiantes` VALUES (120, '191240029', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '120191240029');
INSERT INTO `grupos_estudiantes` VALUES (121, '191240013', 1, '72', '72', '72', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-10-18 02:29:35', 'VIG', 2, '121191240013');
INSERT INTO `grupos_estudiantes` VALUES (121, '191240023', 1, '98', '98', '98', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-10-18 02:29:35', 'VIG', 2, '121191240023');
INSERT INTO `grupos_estudiantes` VALUES (121, '191240030', 1, '80', '80', '80', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-10-18 02:29:35', 'VIG', 2, '121191240030');
INSERT INTO `grupos_estudiantes` VALUES (121, '191240031', 1, '100', '100', '100', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-10-18 02:29:35', 'VIG', 2, '121191240031');
INSERT INTO `grupos_estudiantes` VALUES (121, '191240035', 1, '73', '73', '73', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-10-18 02:29:35', 'VIG', 2, '121191240035');
INSERT INTO `grupos_estudiantes` VALUES (121, '191240036', 1, '76', '76', '76', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-10-18 02:29:35', 'VIG', 2, '121191240036');
INSERT INTO `grupos_estudiantes` VALUES (121, '191240039', 1, '88', '88', '88', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-10-18 02:29:35', 'VIG', 2, '121191240039');
INSERT INTO `grupos_estudiantes` VALUES (121, '191240041', 1, '90', '90', '90', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-10-18 02:29:35', 'VIG', 2, '121191240041');
INSERT INTO `grupos_estudiantes` VALUES (121, '191240043', 1, '99', '99', '99', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-10-18 02:29:35', 'VIG', 2, '121191240043');
INSERT INTO `grupos_estudiantes` VALUES (121, '191240044', 1, '100', '100', '100', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-10-18 02:29:35', 'VIG', 2, '121191240044');
INSERT INTO `grupos_estudiantes` VALUES (121, '191240045', 1, '88', '88', '88', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-10-18 02:29:35', 'VIG', 2, '121191240045');
INSERT INTO `grupos_estudiantes` VALUES (121, '191240047', 1, '70', '70', '70', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-10-18 02:29:35', 'VIG', 2, '121191240047');
INSERT INTO `grupos_estudiantes` VALUES (121, '191240060', 1, '87', '87', '87', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-10-18 02:29:35', 'VIG', 2, '121191240060');
INSERT INTO `grupos_estudiantes` VALUES (121, '191240064', 1, '90', '90', '90', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-10-18 02:29:35', 'VIG', 2, '121191240064');
INSERT INTO `grupos_estudiantes` VALUES (121, '191240068', 1, '90', '90', '90', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-10-18 02:29:35', 'VIG', 2, '121191240068');
INSERT INTO `grupos_estudiantes` VALUES (122, '191240027', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '122191240027');
INSERT INTO `grupos_estudiantes` VALUES (122, '201240034', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '122201240034');
INSERT INTO `grupos_estudiantes` VALUES (122, '201240048', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '122201240048');
INSERT INTO `grupos_estudiantes` VALUES (122, '201240052', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '122201240052');
INSERT INTO `grupos_estudiantes` VALUES (122, '201240058', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '122201240058');
INSERT INTO `grupos_estudiantes` VALUES (122, '201240061', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '122201240061');
INSERT INTO `grupos_estudiantes` VALUES (122, '201240067', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '122201240067');
INSERT INTO `grupos_estudiantes` VALUES (123, '211240039', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '123211240039');
INSERT INTO `grupos_estudiantes` VALUES (123, '211240040', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '123211240040');
INSERT INTO `grupos_estudiantes` VALUES (123, '211240043', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '123211240043');
INSERT INTO `grupos_estudiantes` VALUES (123, '211240044', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '123211240044');
INSERT INTO `grupos_estudiantes` VALUES (123, '211240045', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '123211240045');
INSERT INTO `grupos_estudiantes` VALUES (123, '211240048', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '123211240048');
INSERT INTO `grupos_estudiantes` VALUES (124, '191240027', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '124191240027');
INSERT INTO `grupos_estudiantes` VALUES (124, '201240034', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '124201240034');
INSERT INTO `grupos_estudiantes` VALUES (124, '201240048', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '124201240048');
INSERT INTO `grupos_estudiantes` VALUES (124, '201240052', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '124201240052');
INSERT INTO `grupos_estudiantes` VALUES (124, '201240058', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '124201240058');
INSERT INTO `grupos_estudiantes` VALUES (124, '201240061', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '124201240061');
INSERT INTO `grupos_estudiantes` VALUES (124, '201240067', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '124201240067');
INSERT INTO `grupos_estudiantes` VALUES (124, '201240069', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '124201240069');
INSERT INTO `grupos_estudiantes` VALUES (125, '181240002', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '125181240002');
INSERT INTO `grupos_estudiantes` VALUES (125, '181240009', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '125181240009');
INSERT INTO `grupos_estudiantes` VALUES (125, '201240034', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-12 16:27:29', '2021-09-12 16:27:29', 'VIG', 2, '125201240034');
INSERT INTO `grupos_estudiantes` VALUES (126, '211240020', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '126211240020');
INSERT INTO `grupos_estudiantes` VALUES (126, '211240021', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '126211240021');
INSERT INTO `grupos_estudiantes` VALUES (126, '211240023', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '126211240023');
INSERT INTO `grupos_estudiantes` VALUES (126, '211240024', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '126211240024');
INSERT INTO `grupos_estudiantes` VALUES (126, '211240025', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '126211240025');
INSERT INTO `grupos_estudiantes` VALUES (126, '211240027', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '126211240027');
INSERT INTO `grupos_estudiantes` VALUES (126, '211240028', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '126211240028');
INSERT INTO `grupos_estudiantes` VALUES (126, '211240029', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '126211240029');
INSERT INTO `grupos_estudiantes` VALUES (126, '211240030', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '126211240030');
INSERT INTO `grupos_estudiantes` VALUES (126, '211240031', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '126211240031');
INSERT INTO `grupos_estudiantes` VALUES (126, '211240032', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '126211240032');
INSERT INTO `grupos_estudiantes` VALUES (126, '211240034', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '126211240034');
INSERT INTO `grupos_estudiantes` VALUES (126, '211240035', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '126211240035');
INSERT INTO `grupos_estudiantes` VALUES (126, '211240036', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '126211240036');
INSERT INTO `grupos_estudiantes` VALUES (126, '211240038', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '126211240038');
INSERT INTO `grupos_estudiantes` VALUES (127, '191240027', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '127191240027');
INSERT INTO `grupos_estudiantes` VALUES (127, '201240034', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '127201240034');
INSERT INTO `grupos_estudiantes` VALUES (127, '201240048', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '127201240048');
INSERT INTO `grupos_estudiantes` VALUES (127, '201240052', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '127201240052');
INSERT INTO `grupos_estudiantes` VALUES (127, '201240058', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '127201240058');
INSERT INTO `grupos_estudiantes` VALUES (127, '201240061', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '127201240061');
INSERT INTO `grupos_estudiantes` VALUES (127, '201240067', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '127201240067');
INSERT INTO `grupos_estudiantes` VALUES (128, '181240001', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '128181240001');
INSERT INTO `grupos_estudiantes` VALUES (128, '181240002', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '128181240002');
INSERT INTO `grupos_estudiantes` VALUES (128, '181240007', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '128181240007');
INSERT INTO `grupos_estudiantes` VALUES (128, '181240008', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '128181240008');
INSERT INTO `grupos_estudiantes` VALUES (128, '181240009', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '128181240009');
INSERT INTO `grupos_estudiantes` VALUES (128, '181240012', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '128181240012');
INSERT INTO `grupos_estudiantes` VALUES (128, '181240013', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '128181240013');
INSERT INTO `grupos_estudiantes` VALUES (128, '181240018', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '128181240018');
INSERT INTO `grupos_estudiantes` VALUES (128, '181240019', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '128181240019');
INSERT INTO `grupos_estudiantes` VALUES (128, '181240020', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '128181240020');
INSERT INTO `grupos_estudiantes` VALUES (128, '181240023', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '128181240023');
INSERT INTO `grupos_estudiantes` VALUES (128, '181240026', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '128181240026');
INSERT INTO `grupos_estudiantes` VALUES (128, '181240044', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '128181240044');
INSERT INTO `grupos_estudiantes` VALUES (128, '181240045', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '128181240045');
INSERT INTO `grupos_estudiantes` VALUES (128, '181240046', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '128181240046');
INSERT INTO `grupos_estudiantes` VALUES (128, '181240047', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '128181240047');
INSERT INTO `grupos_estudiantes` VALUES (128, '181240052', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '128181240052');
INSERT INTO `grupos_estudiantes` VALUES (128, '181240066', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '128181240066');
INSERT INTO `grupos_estudiantes` VALUES (128, '181240073', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '128181240073');
INSERT INTO `grupos_estudiantes` VALUES (128, '181240074', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '128181240074');
INSERT INTO `grupos_estudiantes` VALUES (128, '181240082', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '128181240082');
INSERT INTO `grupos_estudiantes` VALUES (128, '201240034', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-11 19:14:56', '2021-09-11 19:14:56', 'VIG', 2, '128201240034');
INSERT INTO `grupos_estudiantes` VALUES (129, '181240001', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '129181240001');
INSERT INTO `grupos_estudiantes` VALUES (129, '181240002', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '129181240002');
INSERT INTO `grupos_estudiantes` VALUES (129, '181240007', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '129181240007');
INSERT INTO `grupos_estudiantes` VALUES (129, '181240008', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '129181240008');
INSERT INTO `grupos_estudiantes` VALUES (129, '181240009', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '129181240009');
INSERT INTO `grupos_estudiantes` VALUES (129, '181240012', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '129181240012');
INSERT INTO `grupos_estudiantes` VALUES (129, '181240013', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '129181240013');
INSERT INTO `grupos_estudiantes` VALUES (129, '181240018', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '129181240018');
INSERT INTO `grupos_estudiantes` VALUES (129, '181240019', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '129181240019');
INSERT INTO `grupos_estudiantes` VALUES (129, '181240020', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '129181240020');
INSERT INTO `grupos_estudiantes` VALUES (129, '181240023', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '129181240023');
INSERT INTO `grupos_estudiantes` VALUES (129, '181240026', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '129181240026');
INSERT INTO `grupos_estudiantes` VALUES (129, '181240044', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '129181240044');
INSERT INTO `grupos_estudiantes` VALUES (129, '181240045', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '129181240045');
INSERT INTO `grupos_estudiantes` VALUES (129, '181240046', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '129181240046');
INSERT INTO `grupos_estudiantes` VALUES (129, '181240047', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '129181240047');
INSERT INTO `grupos_estudiantes` VALUES (129, '181240052', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '129181240052');
INSERT INTO `grupos_estudiantes` VALUES (129, '181240066', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '129181240066');
INSERT INTO `grupos_estudiantes` VALUES (129, '181240073', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '129181240073');
INSERT INTO `grupos_estudiantes` VALUES (129, '181240074', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '129181240074');
INSERT INTO `grupos_estudiantes` VALUES (129, '181240082', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '129181240082');
INSERT INTO `grupos_estudiantes` VALUES (130, '181240032', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '130181240032');
INSERT INTO `grupos_estudiantes` VALUES (130, '181240035', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '130181240035');
INSERT INTO `grupos_estudiantes` VALUES (130, '181240036', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '130181240036');
INSERT INTO `grupos_estudiantes` VALUES (130, '181240048', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '130181240048');
INSERT INTO `grupos_estudiantes` VALUES (130, '181240051', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '130181240051');
INSERT INTO `grupos_estudiantes` VALUES (130, '181240057', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '130181240057');
INSERT INTO `grupos_estudiantes` VALUES (130, '181240065', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '130181240065');
INSERT INTO `grupos_estudiantes` VALUES (130, '181240075', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '130181240075');
INSERT INTO `grupos_estudiantes` VALUES (131, '191240013', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '131191240013');
INSERT INTO `grupos_estudiantes` VALUES (131, '191240023', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '131191240023');
INSERT INTO `grupos_estudiantes` VALUES (131, '191240030', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '131191240030');
INSERT INTO `grupos_estudiantes` VALUES (131, '191240031', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '131191240031');
INSERT INTO `grupos_estudiantes` VALUES (131, '191240033', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '131191240033');
INSERT INTO `grupos_estudiantes` VALUES (131, '191240035', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '131191240035');
INSERT INTO `grupos_estudiantes` VALUES (131, '191240036', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '131191240036');
INSERT INTO `grupos_estudiantes` VALUES (131, '191240039', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '131191240039');
INSERT INTO `grupos_estudiantes` VALUES (131, '191240041', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '131191240041');
INSERT INTO `grupos_estudiantes` VALUES (131, '191240043', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '131191240043');
INSERT INTO `grupos_estudiantes` VALUES (131, '191240044', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '131191240044');
INSERT INTO `grupos_estudiantes` VALUES (131, '191240045', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '131191240045');
INSERT INTO `grupos_estudiantes` VALUES (131, '191240047', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '131191240047');
INSERT INTO `grupos_estudiantes` VALUES (131, '191240060', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '131191240060');
INSERT INTO `grupos_estudiantes` VALUES (131, '191240064', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '131191240064');
INSERT INTO `grupos_estudiantes` VALUES (131, '191240068', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '131191240068');
INSERT INTO `grupos_estudiantes` VALUES (132, '181240016', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '132181240016');
INSERT INTO `grupos_estudiantes` VALUES (132, '181240060', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '132181240060');
INSERT INTO `grupos_estudiantes` VALUES (132, '181240070', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '132181240070');
INSERT INTO `grupos_estudiantes` VALUES (132, 'B156P1225', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '132B156P1225');
INSERT INTO `grupos_estudiantes` VALUES (133, '181240036', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '133181240036');
INSERT INTO `grupos_estudiantes` VALUES (133, '181240051', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '133181240051');
INSERT INTO `grupos_estudiantes` VALUES (133, '181240075', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '133181240075');
INSERT INTO `grupos_estudiantes` VALUES (134, '181240001', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '134181240001');
INSERT INTO `grupos_estudiantes` VALUES (134, '181240002', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '134181240002');
INSERT INTO `grupos_estudiantes` VALUES (134, '181240007', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '134181240007');
INSERT INTO `grupos_estudiantes` VALUES (134, '181240008', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '134181240008');
INSERT INTO `grupos_estudiantes` VALUES (134, '181240009', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '134181240009');
INSERT INTO `grupos_estudiantes` VALUES (134, '181240012', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '134181240012');
INSERT INTO `grupos_estudiantes` VALUES (134, '181240013', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '134181240013');
INSERT INTO `grupos_estudiantes` VALUES (134, '181240019', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '134181240019');
INSERT INTO `grupos_estudiantes` VALUES (134, '181240020', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '134181240020');
INSERT INTO `grupos_estudiantes` VALUES (134, '181240026', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '134181240026');
INSERT INTO `grupos_estudiantes` VALUES (134, '181240044', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '134181240044');
INSERT INTO `grupos_estudiantes` VALUES (134, '181240046', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '134181240046');
INSERT INTO `grupos_estudiantes` VALUES (134, '181240047', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '134181240047');
INSERT INTO `grupos_estudiantes` VALUES (134, '181240052', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '134181240052');
INSERT INTO `grupos_estudiantes` VALUES (134, '181240066', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '134181240066');
INSERT INTO `grupos_estudiantes` VALUES (134, '181240074', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '134181240074');
INSERT INTO `grupos_estudiantes` VALUES (134, '181240082', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '134181240082');
INSERT INTO `grupos_estudiantes` VALUES (135, '211240039', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '135211240039');
INSERT INTO `grupos_estudiantes` VALUES (135, '211240040', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '135211240040');
INSERT INTO `grupos_estudiantes` VALUES (135, '211240043', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '135211240043');
INSERT INTO `grupos_estudiantes` VALUES (135, '211240044', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '135211240044');
INSERT INTO `grupos_estudiantes` VALUES (135, '211240045', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '135211240045');
INSERT INTO `grupos_estudiantes` VALUES (135, '211240048', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '135211240048');
INSERT INTO `grupos_estudiantes` VALUES (136, '211240051', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '136211240051');
INSERT INTO `grupos_estudiantes` VALUES (136, '211240054', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '136211240054');
INSERT INTO `grupos_estudiantes` VALUES (136, '211240055', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '136211240055');
INSERT INTO `grupos_estudiantes` VALUES (136, '211240059', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '136211240059');
INSERT INTO `grupos_estudiantes` VALUES (136, '211240060', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '136211240060');
INSERT INTO `grupos_estudiantes` VALUES (136, '211240062', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '136211240062');
INSERT INTO `grupos_estudiantes` VALUES (136, '211240063', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '136211240063');
INSERT INTO `grupos_estudiantes` VALUES (136, '211240064', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '136211240064');
INSERT INTO `grupos_estudiantes` VALUES (136, '211240065', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '136211240065');
INSERT INTO `grupos_estudiantes` VALUES (137, '211240051', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '137211240051');
INSERT INTO `grupos_estudiantes` VALUES (137, '211240054', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '137211240054');
INSERT INTO `grupos_estudiantes` VALUES (137, '211240055', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '137211240055');
INSERT INTO `grupos_estudiantes` VALUES (137, '211240059', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '137211240059');
INSERT INTO `grupos_estudiantes` VALUES (137, '211240060', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '137211240060');
INSERT INTO `grupos_estudiantes` VALUES (137, '211240062', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '137211240062');
INSERT INTO `grupos_estudiantes` VALUES (137, '211240063', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '137211240063');
INSERT INTO `grupos_estudiantes` VALUES (137, '211240064', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '137211240064');
INSERT INTO `grupos_estudiantes` VALUES (137, '211240065', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '137211240065');
INSERT INTO `grupos_estudiantes` VALUES (138, '191240013', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '138191240013');
INSERT INTO `grupos_estudiantes` VALUES (138, '191240023', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '138191240023');
INSERT INTO `grupos_estudiantes` VALUES (138, '191240030', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '138191240030');
INSERT INTO `grupos_estudiantes` VALUES (138, '191240031', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '138191240031');
INSERT INTO `grupos_estudiantes` VALUES (138, '191240035', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '138191240035');
INSERT INTO `grupos_estudiantes` VALUES (138, '191240036', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '138191240036');
INSERT INTO `grupos_estudiantes` VALUES (138, '191240039', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '138191240039');
INSERT INTO `grupos_estudiantes` VALUES (138, '191240041', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '138191240041');
INSERT INTO `grupos_estudiantes` VALUES (138, '191240043', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '138191240043');
INSERT INTO `grupos_estudiantes` VALUES (138, '191240044', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '138191240044');
INSERT INTO `grupos_estudiantes` VALUES (138, '191240045', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '138191240045');
INSERT INTO `grupos_estudiantes` VALUES (138, '191240047', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '138191240047');
INSERT INTO `grupos_estudiantes` VALUES (138, '191240060', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '138191240060');
INSERT INTO `grupos_estudiantes` VALUES (138, '191240064', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '138191240064');
INSERT INTO `grupos_estudiantes` VALUES (138, '191240068', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '138191240068');
INSERT INTO `grupos_estudiantes` VALUES (139, '201240003', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '139201240003');
INSERT INTO `grupos_estudiantes` VALUES (139, '201240004', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '139201240004');
INSERT INTO `grupos_estudiantes` VALUES (139, '201240012', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '139201240012');
INSERT INTO `grupos_estudiantes` VALUES (139, '201240013', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '139201240013');
INSERT INTO `grupos_estudiantes` VALUES (139, '201240016', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '139201240016');
INSERT INTO `grupos_estudiantes` VALUES (139, '201240019', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '139201240019');
INSERT INTO `grupos_estudiantes` VALUES (139, '201240023', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '139201240023');
INSERT INTO `grupos_estudiantes` VALUES (140, '201240003', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '140201240003');
INSERT INTO `grupos_estudiantes` VALUES (140, '201240012', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '140201240012');
INSERT INTO `grupos_estudiantes` VALUES (140, '201240013', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '140201240013');
INSERT INTO `grupos_estudiantes` VALUES (140, '201240016', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '140201240016');
INSERT INTO `grupos_estudiantes` VALUES (140, '201240019', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '140201240019');
INSERT INTO `grupos_estudiantes` VALUES (140, '201240023', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '140201240023');
INSERT INTO `grupos_estudiantes` VALUES (141, '191240027', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '141191240027');
INSERT INTO `grupos_estudiantes` VALUES (141, '201240048', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '141201240048');
INSERT INTO `grupos_estudiantes` VALUES (141, '201240052', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '141201240052');
INSERT INTO `grupos_estudiantes` VALUES (141, '201240058', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '141201240058');
INSERT INTO `grupos_estudiantes` VALUES (141, '201240061', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '141201240061');
INSERT INTO `grupos_estudiantes` VALUES (141, '201240067', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '141201240067');
INSERT INTO `grupos_estudiantes` VALUES (141, '201240069', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '141201240069');
INSERT INTO `grupos_estudiantes` VALUES (142, '191240027', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '142191240027');
INSERT INTO `grupos_estudiantes` VALUES (142, '201240048', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '142201240048');
INSERT INTO `grupos_estudiantes` VALUES (142, '201240052', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '142201240052');
INSERT INTO `grupos_estudiantes` VALUES (142, '201240058', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '142201240058');
INSERT INTO `grupos_estudiantes` VALUES (142, '201240061', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '142201240061');
INSERT INTO `grupos_estudiantes` VALUES (142, '201240067', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '142201240067');
INSERT INTO `grupos_estudiantes` VALUES (142, '201240069', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '142201240069');
INSERT INTO `grupos_estudiantes` VALUES (143, '191240013', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '143191240013');
INSERT INTO `grupos_estudiantes` VALUES (143, '191240023', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '143191240023');
INSERT INTO `grupos_estudiantes` VALUES (143, '191240030', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '143191240030');
INSERT INTO `grupos_estudiantes` VALUES (143, '191240031', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '143191240031');
INSERT INTO `grupos_estudiantes` VALUES (143, '191240035', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '143191240035');
INSERT INTO `grupos_estudiantes` VALUES (143, '191240036', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '143191240036');
INSERT INTO `grupos_estudiantes` VALUES (143, '191240039', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '143191240039');
INSERT INTO `grupos_estudiantes` VALUES (143, '191240041', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '143191240041');
INSERT INTO `grupos_estudiantes` VALUES (143, '191240043', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '143191240043');
INSERT INTO `grupos_estudiantes` VALUES (143, '191240044', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '143191240044');
INSERT INTO `grupos_estudiantes` VALUES (143, '191240045', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '143191240045');
INSERT INTO `grupos_estudiantes` VALUES (143, '191240047', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '143191240047');
INSERT INTO `grupos_estudiantes` VALUES (143, '191240060', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '143191240060');
INSERT INTO `grupos_estudiantes` VALUES (143, '191240064', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '143191240064');
INSERT INTO `grupos_estudiantes` VALUES (143, '191240068', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '143191240068');
INSERT INTO `grupos_estudiantes` VALUES (144, '211240039', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '144211240039');
INSERT INTO `grupos_estudiantes` VALUES (144, '211240040', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '144211240040');
INSERT INTO `grupos_estudiantes` VALUES (144, '211240043', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '144211240043');
INSERT INTO `grupos_estudiantes` VALUES (144, '211240044', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '144211240044');
INSERT INTO `grupos_estudiantes` VALUES (144, '211240045', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '144211240045');
INSERT INTO `grupos_estudiantes` VALUES (144, '211240048', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '144211240048');
INSERT INTO `grupos_estudiantes` VALUES (145, '191240050', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '145191240050');
INSERT INTO `grupos_estudiantes` VALUES (145, '191240051', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '145191240051');
INSERT INTO `grupos_estudiantes` VALUES (145, '191240052', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '145191240052');
INSERT INTO `grupos_estudiantes` VALUES (146, '191240049', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '146191240049');
INSERT INTO `grupos_estudiantes` VALUES (146, '191240050', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '146191240050');
INSERT INTO `grupos_estudiantes` VALUES (146, '191240051', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '146191240051');
INSERT INTO `grupos_estudiantes` VALUES (146, '191240052', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '146191240052');
INSERT INTO `grupos_estudiantes` VALUES (147, '191240001', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '147191240001');
INSERT INTO `grupos_estudiantes` VALUES (147, '191240006', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '147191240006');
INSERT INTO `grupos_estudiantes` VALUES (147, '191240007', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '147191240007');
INSERT INTO `grupos_estudiantes` VALUES (147, '191240009', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '147191240009');
INSERT INTO `grupos_estudiantes` VALUES (147, '191240010', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '147191240010');
INSERT INTO `grupos_estudiantes` VALUES (147, '191240011', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '147191240011');
INSERT INTO `grupos_estudiantes` VALUES (147, '191240014', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '147191240014');
INSERT INTO `grupos_estudiantes` VALUES (147, '191240015', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '147191240015');
INSERT INTO `grupos_estudiantes` VALUES (147, '191240016', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '147191240016');
INSERT INTO `grupos_estudiantes` VALUES (147, '191240017', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '147191240017');
INSERT INTO `grupos_estudiantes` VALUES (147, '191240018', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '147191240018');
INSERT INTO `grupos_estudiantes` VALUES (147, '191240020', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '147191240020');
INSERT INTO `grupos_estudiantes` VALUES (147, '191240024', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '147191240024');
INSERT INTO `grupos_estudiantes` VALUES (147, '191240028', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '147191240028');
INSERT INTO `grupos_estudiantes` VALUES (147, '191240029', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '147191240029');
INSERT INTO `grupos_estudiantes` VALUES (147, '201240034', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-12 16:27:00', '2021-09-12 16:27:00', 'VIG', 2, '147201240034');
INSERT INTO `grupos_estudiantes` VALUES (148, '201240003', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '148201240003');
INSERT INTO `grupos_estudiantes` VALUES (148, '201240012', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '148201240012');
INSERT INTO `grupos_estudiantes` VALUES (148, '201240013', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '148201240013');
INSERT INTO `grupos_estudiantes` VALUES (148, '201240016', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '148201240016');
INSERT INTO `grupos_estudiantes` VALUES (148, '201240019', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '148201240019');
INSERT INTO `grupos_estudiantes` VALUES (148, '201240023', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '148201240023');
INSERT INTO `grupos_estudiantes` VALUES (149, '211240068', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '149211240068');
INSERT INTO `grupos_estudiantes` VALUES (149, '211240069', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '149211240069');
INSERT INTO `grupos_estudiantes` VALUES (149, '211240071', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '149211240071');
INSERT INTO `grupos_estudiantes` VALUES (149, '211240072', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '149211240072');
INSERT INTO `grupos_estudiantes` VALUES (149, '211240073', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '149211240073');
INSERT INTO `grupos_estudiantes` VALUES (149, '211240075', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '149211240075');
INSERT INTO `grupos_estudiantes` VALUES (149, '211240076', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '149211240076');
INSERT INTO `grupos_estudiantes` VALUES (150, '211240020', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '150211240020');
INSERT INTO `grupos_estudiantes` VALUES (150, '211240021', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '150211240021');
INSERT INTO `grupos_estudiantes` VALUES (150, '211240023', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '150211240023');
INSERT INTO `grupos_estudiantes` VALUES (150, '211240024', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '150211240024');
INSERT INTO `grupos_estudiantes` VALUES (150, '211240025', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '150211240025');
INSERT INTO `grupos_estudiantes` VALUES (150, '211240027', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '150211240027');
INSERT INTO `grupos_estudiantes` VALUES (150, '211240028', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '150211240028');
INSERT INTO `grupos_estudiantes` VALUES (150, '211240029', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '150211240029');
INSERT INTO `grupos_estudiantes` VALUES (150, '211240030', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '150211240030');
INSERT INTO `grupos_estudiantes` VALUES (150, '211240031', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '150211240031');
INSERT INTO `grupos_estudiantes` VALUES (150, '211240032', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '150211240032');
INSERT INTO `grupos_estudiantes` VALUES (150, '211240034', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '150211240034');
INSERT INTO `grupos_estudiantes` VALUES (150, '211240035', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '150211240035');
INSERT INTO `grupos_estudiantes` VALUES (150, '211240036', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '150211240036');
INSERT INTO `grupos_estudiantes` VALUES (150, '211240038', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '150211240038');
INSERT INTO `grupos_estudiantes` VALUES (151, '181240032', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '151181240032');
INSERT INTO `grupos_estudiantes` VALUES (151, '181240035', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '151181240035');
INSERT INTO `grupos_estudiantes` VALUES (151, '181240036', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '151181240036');
INSERT INTO `grupos_estudiantes` VALUES (151, '181240048', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '151181240048');
INSERT INTO `grupos_estudiantes` VALUES (151, '181240051', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '151181240051');
INSERT INTO `grupos_estudiantes` VALUES (151, '181240057', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '151181240057');
INSERT INTO `grupos_estudiantes` VALUES (151, '181240065', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '151181240065');
INSERT INTO `grupos_estudiantes` VALUES (151, '181240075', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '151181240075');
INSERT INTO `grupos_estudiantes` VALUES (151, '181240076', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '151181240076');
INSERT INTO `grupos_estudiantes` VALUES (153, '181240016', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '153181240016');
INSERT INTO `grupos_estudiantes` VALUES (153, '181240027', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '153181240027');
INSERT INTO `grupos_estudiantes` VALUES (153, '181240031', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '153181240031');
INSERT INTO `grupos_estudiantes` VALUES (153, '181240033', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '153181240033');
INSERT INTO `grupos_estudiantes` VALUES (153, '181240040', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '153181240040');
INSERT INTO `grupos_estudiantes` VALUES (153, '181240041', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '153181240041');
INSERT INTO `grupos_estudiantes` VALUES (153, '181240050', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '153181240050');
INSERT INTO `grupos_estudiantes` VALUES (153, '181240058', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '153181240058');
INSERT INTO `grupos_estudiantes` VALUES (153, '181240060', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '153181240060');
INSERT INTO `grupos_estudiantes` VALUES (153, '181240070', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '153181240070');
INSERT INTO `grupos_estudiantes` VALUES (153, 'B156P1225', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '153B156P1225');
INSERT INTO `grupos_estudiantes` VALUES (154, '211240051', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '154211240051');
INSERT INTO `grupos_estudiantes` VALUES (154, '211240054', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '154211240054');
INSERT INTO `grupos_estudiantes` VALUES (154, '211240055', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '154211240055');
INSERT INTO `grupos_estudiantes` VALUES (154, '211240059', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '154211240059');
INSERT INTO `grupos_estudiantes` VALUES (154, '211240060', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '154211240060');
INSERT INTO `grupos_estudiantes` VALUES (154, '211240062', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '154211240062');
INSERT INTO `grupos_estudiantes` VALUES (154, '211240063', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '154211240063');
INSERT INTO `grupos_estudiantes` VALUES (154, '211240064', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '154211240064');
INSERT INTO `grupos_estudiantes` VALUES (154, '211240065', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '154211240065');
INSERT INTO `grupos_estudiantes` VALUES (155, '181240016', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '155181240016');
INSERT INTO `grupos_estudiantes` VALUES (155, '181240027', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '155181240027');
INSERT INTO `grupos_estudiantes` VALUES (155, '181240031', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '155181240031');
INSERT INTO `grupos_estudiantes` VALUES (155, '181240033', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '155181240033');
INSERT INTO `grupos_estudiantes` VALUES (155, '181240040', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '155181240040');
INSERT INTO `grupos_estudiantes` VALUES (155, '181240041', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '155181240041');
INSERT INTO `grupos_estudiantes` VALUES (155, '181240050', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '155181240050');
INSERT INTO `grupos_estudiantes` VALUES (155, '181240058', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '155181240058');
INSERT INTO `grupos_estudiantes` VALUES (155, '181240060', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '155181240060');
INSERT INTO `grupos_estudiantes` VALUES (155, '181240070', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '155181240070');
INSERT INTO `grupos_estudiantes` VALUES (155, 'B156P1225', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '155B156P1225');
INSERT INTO `grupos_estudiantes` VALUES (156, '191240050', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '156191240050');
INSERT INTO `grupos_estudiantes` VALUES (156, '191240051', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '156191240051');
INSERT INTO `grupos_estudiantes` VALUES (156, '191240052', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '156191240052');
INSERT INTO `grupos_estudiantes` VALUES (157, '201240003', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '157201240003');
INSERT INTO `grupos_estudiantes` VALUES (157, '201240012', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '157201240012');
INSERT INTO `grupos_estudiantes` VALUES (157, '201240013', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '157201240013');
INSERT INTO `grupos_estudiantes` VALUES (157, '201240016', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '157201240016');
INSERT INTO `grupos_estudiantes` VALUES (157, '201240019', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '157201240019');
INSERT INTO `grupos_estudiantes` VALUES (157, '201240023', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '157201240023');
INSERT INTO `grupos_estudiantes` VALUES (158, '211240051', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '158211240051');
INSERT INTO `grupos_estudiantes` VALUES (158, '211240054', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '158211240054');
INSERT INTO `grupos_estudiantes` VALUES (158, '211240055', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '158211240055');
INSERT INTO `grupos_estudiantes` VALUES (158, '211240059', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '158211240059');
INSERT INTO `grupos_estudiantes` VALUES (158, '211240060', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '158211240060');
INSERT INTO `grupos_estudiantes` VALUES (158, '211240062', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '158211240062');
INSERT INTO `grupos_estudiantes` VALUES (158, '211240063', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '158211240063');
INSERT INTO `grupos_estudiantes` VALUES (158, '211240064', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '158211240064');
INSERT INTO `grupos_estudiantes` VALUES (158, '211240065', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '158211240065');
INSERT INTO `grupos_estudiantes` VALUES (159, '211240068', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '159211240068');
INSERT INTO `grupos_estudiantes` VALUES (159, '211240069', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '159211240069');
INSERT INTO `grupos_estudiantes` VALUES (159, '211240071', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '159211240071');
INSERT INTO `grupos_estudiantes` VALUES (159, '211240072', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '159211240072');
INSERT INTO `grupos_estudiantes` VALUES (159, '211240073', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '159211240073');
INSERT INTO `grupos_estudiantes` VALUES (159, '211240075', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '159211240075');
INSERT INTO `grupos_estudiantes` VALUES (159, '211240076', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '159211240076');
INSERT INTO `grupos_estudiantes` VALUES (160, '211240039', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '160211240039');
INSERT INTO `grupos_estudiantes` VALUES (160, '211240040', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '160211240040');
INSERT INTO `grupos_estudiantes` VALUES (160, '211240043', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '160211240043');
INSERT INTO `grupos_estudiantes` VALUES (160, '211240044', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '160211240044');
INSERT INTO `grupos_estudiantes` VALUES (160, '211240045', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '160211240045');
INSERT INTO `grupos_estudiantes` VALUES (160, '211240048', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '160211240048');
INSERT INTO `grupos_estudiantes` VALUES (161, '211240039', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '161211240039');
INSERT INTO `grupos_estudiantes` VALUES (161, '211240040', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '161211240040');
INSERT INTO `grupos_estudiantes` VALUES (161, '211240043', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '161211240043');
INSERT INTO `grupos_estudiantes` VALUES (161, '211240044', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '161211240044');
INSERT INTO `grupos_estudiantes` VALUES (161, '211240045', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '161211240045');
INSERT INTO `grupos_estudiantes` VALUES (161, '211240048', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '161211240048');
INSERT INTO `grupos_estudiantes` VALUES (162, '211240051', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '162211240051');
INSERT INTO `grupos_estudiantes` VALUES (162, '211240054', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '162211240054');
INSERT INTO `grupos_estudiantes` VALUES (162, '211240055', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '162211240055');
INSERT INTO `grupos_estudiantes` VALUES (162, '211240059', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '162211240059');
INSERT INTO `grupos_estudiantes` VALUES (162, '211240060', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '162211240060');
INSERT INTO `grupos_estudiantes` VALUES (162, '211240062', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '162211240062');
INSERT INTO `grupos_estudiantes` VALUES (162, '211240063', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '162211240063');
INSERT INTO `grupos_estudiantes` VALUES (162, '211240064', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '162211240064');
INSERT INTO `grupos_estudiantes` VALUES (162, '211240065', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '162211240065');
INSERT INTO `grupos_estudiantes` VALUES (163, '211240068', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '163211240068');
INSERT INTO `grupos_estudiantes` VALUES (163, '211240069', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '163211240069');
INSERT INTO `grupos_estudiantes` VALUES (163, '211240071', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '163211240071');
INSERT INTO `grupos_estudiantes` VALUES (163, '211240072', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '163211240072');
INSERT INTO `grupos_estudiantes` VALUES (163, '211240073', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '163211240073');
INSERT INTO `grupos_estudiantes` VALUES (163, '211240075', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '163211240075');
INSERT INTO `grupos_estudiantes` VALUES (163, '211240076', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '163211240076');
INSERT INTO `grupos_estudiantes` VALUES (164, '211240068', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '164211240068');
INSERT INTO `grupos_estudiantes` VALUES (164, '211240069', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '164211240069');
INSERT INTO `grupos_estudiantes` VALUES (164, '211240071', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '164211240071');
INSERT INTO `grupos_estudiantes` VALUES (164, '211240072', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '164211240072');
INSERT INTO `grupos_estudiantes` VALUES (164, '211240073', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '164211240073');
INSERT INTO `grupos_estudiantes` VALUES (164, '211240075', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '164211240075');
INSERT INTO `grupos_estudiantes` VALUES (164, '211240076', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '164211240076');
INSERT INTO `grupos_estudiantes` VALUES (165, '211240039', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '165211240039');
INSERT INTO `grupos_estudiantes` VALUES (165, '211240040', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '165211240040');
INSERT INTO `grupos_estudiantes` VALUES (165, '211240043', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '165211240043');
INSERT INTO `grupos_estudiantes` VALUES (165, '211240044', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '165211240044');
INSERT INTO `grupos_estudiantes` VALUES (165, '211240045', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '165211240045');
INSERT INTO `grupos_estudiantes` VALUES (165, '211240048', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '165211240048');
INSERT INTO `grupos_estudiantes` VALUES (166, '201240003', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '166201240003');
INSERT INTO `grupos_estudiantes` VALUES (166, '201240004', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '166201240004');
INSERT INTO `grupos_estudiantes` VALUES (166, '201240012', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '166201240012');
INSERT INTO `grupos_estudiantes` VALUES (166, '201240013', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '166201240013');
INSERT INTO `grupos_estudiantes` VALUES (166, '201240016', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '166201240016');
INSERT INTO `grupos_estudiantes` VALUES (166, '201240019', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '166201240019');
INSERT INTO `grupos_estudiantes` VALUES (166, '201240023', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '166201240023');
INSERT INTO `grupos_estudiantes` VALUES (167, '191240050', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '167191240050');
INSERT INTO `grupos_estudiantes` VALUES (167, '191240051', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '167191240051');
INSERT INTO `grupos_estudiantes` VALUES (167, '191240052', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '167191240052');
INSERT INTO `grupos_estudiantes` VALUES (168, '211240020', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '168211240020');
INSERT INTO `grupos_estudiantes` VALUES (168, '211240021', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '168211240021');
INSERT INTO `grupos_estudiantes` VALUES (168, '211240023', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '168211240023');
INSERT INTO `grupos_estudiantes` VALUES (168, '211240024', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '168211240024');
INSERT INTO `grupos_estudiantes` VALUES (168, '211240025', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '168211240025');
INSERT INTO `grupos_estudiantes` VALUES (168, '211240027', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '168211240027');
INSERT INTO `grupos_estudiantes` VALUES (168, '211240028', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '168211240028');
INSERT INTO `grupos_estudiantes` VALUES (168, '211240029', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '168211240029');
INSERT INTO `grupos_estudiantes` VALUES (168, '211240030', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '168211240030');
INSERT INTO `grupos_estudiantes` VALUES (168, '211240031', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '168211240031');
INSERT INTO `grupos_estudiantes` VALUES (168, '211240032', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '168211240032');
INSERT INTO `grupos_estudiantes` VALUES (168, '211240034', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '168211240034');
INSERT INTO `grupos_estudiantes` VALUES (168, '211240035', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '168211240035');
INSERT INTO `grupos_estudiantes` VALUES (168, '211240036', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '168211240036');
INSERT INTO `grupos_estudiantes` VALUES (168, '211240038', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '168211240038');
INSERT INTO `grupos_estudiantes` VALUES (170, '191240049', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '170191240049');
INSERT INTO `grupos_estudiantes` VALUES (170, '191240050', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '170191240050');
INSERT INTO `grupos_estudiantes` VALUES (170, '191240051', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '170191240051');
INSERT INTO `grupos_estudiantes` VALUES (170, '191240052', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '170191240052');
INSERT INTO `grupos_estudiantes` VALUES (171, '181240032', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '171181240032');
INSERT INTO `grupos_estudiantes` VALUES (171, '181240035', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '171181240035');
INSERT INTO `grupos_estudiantes` VALUES (171, '181240036', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '171181240036');
INSERT INTO `grupos_estudiantes` VALUES (171, '181240048', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '171181240048');
INSERT INTO `grupos_estudiantes` VALUES (171, '181240051', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '171181240051');
INSERT INTO `grupos_estudiantes` VALUES (171, '181240057', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '171181240057');
INSERT INTO `grupos_estudiantes` VALUES (171, '181240065', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '171181240065');
INSERT INTO `grupos_estudiantes` VALUES (171, '181240075', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '171181240075');
INSERT INTO `grupos_estudiantes` VALUES (171, '181240076', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '171181240076');
INSERT INTO `grupos_estudiantes` VALUES (172, '181240032', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '172181240032');
INSERT INTO `grupos_estudiantes` VALUES (172, '181240035', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '172181240035');
INSERT INTO `grupos_estudiantes` VALUES (172, '181240036', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '172181240036');
INSERT INTO `grupos_estudiantes` VALUES (172, '181240048', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '172181240048');
INSERT INTO `grupos_estudiantes` VALUES (172, '181240051', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '172181240051');
INSERT INTO `grupos_estudiantes` VALUES (172, '181240057', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '172181240057');
INSERT INTO `grupos_estudiantes` VALUES (172, '181240065', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '172181240065');
INSERT INTO `grupos_estudiantes` VALUES (172, '181240075', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '172181240075');
INSERT INTO `grupos_estudiantes` VALUES (172, '181240076', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '172181240076');
INSERT INTO `grupos_estudiantes` VALUES (173, '201240011', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '173201240011');
INSERT INTO `grupos_estudiantes` VALUES (173, '201240071', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '173201240071');
INSERT INTO `grupos_estudiantes` VALUES (173, '201240074', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '173201240074');
INSERT INTO `grupos_estudiantes` VALUES (173, '201240077', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '173201240077');
INSERT INTO `grupos_estudiantes` VALUES (173, '201240080', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '173201240080');
INSERT INTO `grupos_estudiantes` VALUES (173, '201240083', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '173201240083');
INSERT INTO `grupos_estudiantes` VALUES (173, '201240084', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '173201240084');
INSERT INTO `grupos_estudiantes` VALUES (173, '201240090', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '173201240090');
INSERT INTO `grupos_estudiantes` VALUES (173, '201240092', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '173201240092');
INSERT INTO `grupos_estudiantes` VALUES (173, '201240095', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '173201240095');
INSERT INTO `grupos_estudiantes` VALUES (173, '201240098', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '173201240098');
INSERT INTO `grupos_estudiantes` VALUES (173, '201240100', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '173201240100');
INSERT INTO `grupos_estudiantes` VALUES (173, '201240108', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '173201240108');
INSERT INTO `grupos_estudiantes` VALUES (175, '181240016', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '175181240016');
INSERT INTO `grupos_estudiantes` VALUES (175, '181240027', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '175181240027');
INSERT INTO `grupos_estudiantes` VALUES (175, '181240031', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '175181240031');
INSERT INTO `grupos_estudiantes` VALUES (175, '181240033', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '175181240033');
INSERT INTO `grupos_estudiantes` VALUES (175, '181240040', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '175181240040');
INSERT INTO `grupos_estudiantes` VALUES (175, '181240050', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '175181240050');
INSERT INTO `grupos_estudiantes` VALUES (175, '181240058', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '175181240058');
INSERT INTO `grupos_estudiantes` VALUES (175, '181240060', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '175181240060');
INSERT INTO `grupos_estudiantes` VALUES (175, '181240070', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '175181240070');
INSERT INTO `grupos_estudiantes` VALUES (175, 'B156P1225', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '175B156P1225');
INSERT INTO `grupos_estudiantes` VALUES (176, '181240016', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '176181240016');
INSERT INTO `grupos_estudiantes` VALUES (176, '181240027', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '176181240027');
INSERT INTO `grupos_estudiantes` VALUES (176, '181240031', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '176181240031');
INSERT INTO `grupos_estudiantes` VALUES (176, '181240033', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '176181240033');
INSERT INTO `grupos_estudiantes` VALUES (176, '181240040', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '176181240040');
INSERT INTO `grupos_estudiantes` VALUES (176, '181240050', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '176181240050');
INSERT INTO `grupos_estudiantes` VALUES (176, '181240058', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '176181240058');
INSERT INTO `grupos_estudiantes` VALUES (176, '181240060', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '176181240060');
INSERT INTO `grupos_estudiantes` VALUES (176, '181240070', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '176181240070');
INSERT INTO `grupos_estudiantes` VALUES (176, 'B156P1225', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '176B156P1225');
INSERT INTO `grupos_estudiantes` VALUES (177, '191240013', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '177191240013');
INSERT INTO `grupos_estudiantes` VALUES (177, '191240023', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '177191240023');
INSERT INTO `grupos_estudiantes` VALUES (177, '191240030', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '177191240030');
INSERT INTO `grupos_estudiantes` VALUES (177, '191240031', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '177191240031');
INSERT INTO `grupos_estudiantes` VALUES (177, '191240033', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '177191240033');
INSERT INTO `grupos_estudiantes` VALUES (177, '191240035', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '177191240035');
INSERT INTO `grupos_estudiantes` VALUES (177, '191240036', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '177191240036');
INSERT INTO `grupos_estudiantes` VALUES (177, '191240039', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '177191240039');
INSERT INTO `grupos_estudiantes` VALUES (177, '191240041', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '177191240041');
INSERT INTO `grupos_estudiantes` VALUES (177, '191240043', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '177191240043');
INSERT INTO `grupos_estudiantes` VALUES (177, '191240044', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '177191240044');
INSERT INTO `grupos_estudiantes` VALUES (177, '191240045', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '177191240045');
INSERT INTO `grupos_estudiantes` VALUES (177, '191240047', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '177191240047');
INSERT INTO `grupos_estudiantes` VALUES (177, '191240060', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '177191240060');
INSERT INTO `grupos_estudiantes` VALUES (177, '191240064', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '177191240064');
INSERT INTO `grupos_estudiantes` VALUES (177, '191240068', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '177191240068');
INSERT INTO `grupos_estudiantes` VALUES (178, '201240071', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '178201240071');
INSERT INTO `grupos_estudiantes` VALUES (178, '201240074', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '178201240074');
INSERT INTO `grupos_estudiantes` VALUES (178, '201240077', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '178201240077');
INSERT INTO `grupos_estudiantes` VALUES (178, '201240080', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '178201240080');
INSERT INTO `grupos_estudiantes` VALUES (178, '201240083', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '178201240083');
INSERT INTO `grupos_estudiantes` VALUES (178, '201240084', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '178201240084');
INSERT INTO `grupos_estudiantes` VALUES (178, '201240090', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '178201240090');
INSERT INTO `grupos_estudiantes` VALUES (178, '201240092', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '178201240092');
INSERT INTO `grupos_estudiantes` VALUES (178, '201240095', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '178201240095');
INSERT INTO `grupos_estudiantes` VALUES (178, '201240098', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '178201240098');
INSERT INTO `grupos_estudiantes` VALUES (178, '201240100', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '178201240100');
INSERT INTO `grupos_estudiantes` VALUES (178, '201240108', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '178201240108');
INSERT INTO `grupos_estudiantes` VALUES (180, '181240016', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '180181240016');
INSERT INTO `grupos_estudiantes` VALUES (180, '181240027', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '180181240027');
INSERT INTO `grupos_estudiantes` VALUES (180, '181240031', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '180181240031');
INSERT INTO `grupos_estudiantes` VALUES (180, '181240033', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '180181240033');
INSERT INTO `grupos_estudiantes` VALUES (180, '181240040', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '180181240040');
INSERT INTO `grupos_estudiantes` VALUES (180, '181240041', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '180181240041');
INSERT INTO `grupos_estudiantes` VALUES (180, '181240050', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '180181240050');
INSERT INTO `grupos_estudiantes` VALUES (180, '181240058', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '180181240058');
INSERT INTO `grupos_estudiantes` VALUES (180, '181240060', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '180181240060');
INSERT INTO `grupos_estudiantes` VALUES (180, '181240070', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '180181240070');
INSERT INTO `grupos_estudiantes` VALUES (180, 'B156P1225', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '180B156P1225');
INSERT INTO `grupos_estudiantes` VALUES (181, '201240011', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '181201240011');
INSERT INTO `grupos_estudiantes` VALUES (181, '201240071', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '181201240071');
INSERT INTO `grupos_estudiantes` VALUES (181, '201240074', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '181201240074');
INSERT INTO `grupos_estudiantes` VALUES (181, '201240077', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '181201240077');
INSERT INTO `grupos_estudiantes` VALUES (181, '201240080', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '181201240080');
INSERT INTO `grupos_estudiantes` VALUES (181, '201240083', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '181201240083');
INSERT INTO `grupos_estudiantes` VALUES (181, '201240084', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '181201240084');
INSERT INTO `grupos_estudiantes` VALUES (181, '201240090', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '181201240090');
INSERT INTO `grupos_estudiantes` VALUES (181, '201240092', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '181201240092');
INSERT INTO `grupos_estudiantes` VALUES (181, '201240095', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '181201240095');
INSERT INTO `grupos_estudiantes` VALUES (181, '201240098', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '181201240098');
INSERT INTO `grupos_estudiantes` VALUES (181, '201240100', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '181201240100');
INSERT INTO `grupos_estudiantes` VALUES (181, '201240108', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '181201240108');
INSERT INTO `grupos_estudiantes` VALUES (183, '191240013', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '183191240013');
INSERT INTO `grupos_estudiantes` VALUES (183, '191240023', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '183191240023');
INSERT INTO `grupos_estudiantes` VALUES (183, '191240030', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '183191240030');
INSERT INTO `grupos_estudiantes` VALUES (183, '191240031', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '183191240031');
INSERT INTO `grupos_estudiantes` VALUES (183, '191240033', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '183191240033');
INSERT INTO `grupos_estudiantes` VALUES (183, '191240035', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '183191240035');
INSERT INTO `grupos_estudiantes` VALUES (183, '191240036', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '183191240036');
INSERT INTO `grupos_estudiantes` VALUES (183, '191240039', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '183191240039');
INSERT INTO `grupos_estudiantes` VALUES (183, '191240041', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '183191240041');
INSERT INTO `grupos_estudiantes` VALUES (183, '191240043', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '183191240043');
INSERT INTO `grupos_estudiantes` VALUES (183, '191240044', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '183191240044');
INSERT INTO `grupos_estudiantes` VALUES (183, '191240045', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '183191240045');
INSERT INTO `grupos_estudiantes` VALUES (183, '191240047', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '183191240047');
INSERT INTO `grupos_estudiantes` VALUES (183, '191240060', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '183191240060');
INSERT INTO `grupos_estudiantes` VALUES (183, '191240064', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '183191240064');
INSERT INTO `grupos_estudiantes` VALUES (183, '191240068', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '183191240068');
INSERT INTO `grupos_estudiantes` VALUES (184, '191240001', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '184191240001');
INSERT INTO `grupos_estudiantes` VALUES (184, '191240006', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '184191240006');
INSERT INTO `grupos_estudiantes` VALUES (184, '191240007', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '184191240007');
INSERT INTO `grupos_estudiantes` VALUES (184, '191240009', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '184191240009');
INSERT INTO `grupos_estudiantes` VALUES (184, '191240010', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '184191240010');
INSERT INTO `grupos_estudiantes` VALUES (184, '191240011', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '184191240011');
INSERT INTO `grupos_estudiantes` VALUES (184, '191240014', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '184191240014');
INSERT INTO `grupos_estudiantes` VALUES (184, '191240015', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '184191240015');
INSERT INTO `grupos_estudiantes` VALUES (184, '191240016', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '184191240016');
INSERT INTO `grupos_estudiantes` VALUES (184, '191240017', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '184191240017');
INSERT INTO `grupos_estudiantes` VALUES (184, '191240018', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '184191240018');
INSERT INTO `grupos_estudiantes` VALUES (184, '191240020', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '184191240020');
INSERT INTO `grupos_estudiantes` VALUES (184, '191240024', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '184191240024');
INSERT INTO `grupos_estudiantes` VALUES (184, '191240028', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '184191240028');
INSERT INTO `grupos_estudiantes` VALUES (184, '191240029', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '184191240029');
INSERT INTO `grupos_estudiantes` VALUES (185, '161240013', 4, '80', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-09-07 21:58:32', '2021-09-07 21:58:32', 'VIG', 1, '185161240013');
INSERT INTO `grupos_estudiantes` VALUES (185, '181240001', 1, '80', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '185181240001');
INSERT INTO `grupos_estudiantes` VALUES (185, '181240002', 1, '80', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '185181240002');
INSERT INTO `grupos_estudiantes` VALUES (185, '181240007', 1, '80', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '185181240007');
INSERT INTO `grupos_estudiantes` VALUES (185, '181240008', 1, '80', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '185181240008');
INSERT INTO `grupos_estudiantes` VALUES (185, '181240009', 1, '80', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '185181240009');
INSERT INTO `grupos_estudiantes` VALUES (185, '181240012', 1, '80', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '185181240012');
INSERT INTO `grupos_estudiantes` VALUES (185, '181240013', 1, '80', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '185181240013');
INSERT INTO `grupos_estudiantes` VALUES (185, '181240018', 1, '80', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '185181240018');
INSERT INTO `grupos_estudiantes` VALUES (185, '181240019', 1, '80', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '185181240019');
INSERT INTO `grupos_estudiantes` VALUES (185, '181240020', 1, '80', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '185181240020');
INSERT INTO `grupos_estudiantes` VALUES (185, '181240023', 1, '80', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '185181240023');
INSERT INTO `grupos_estudiantes` VALUES (185, '181240026', 1, '80', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '185181240026');
INSERT INTO `grupos_estudiantes` VALUES (185, '181240044', 1, '80', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '185181240044');
INSERT INTO `grupos_estudiantes` VALUES (185, '181240045', 1, '80', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '185181240045');
INSERT INTO `grupos_estudiantes` VALUES (185, '181240046', 1, '80', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '185181240046');
INSERT INTO `grupos_estudiantes` VALUES (185, '181240047', 1, '80', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '185181240047');
INSERT INTO `grupos_estudiantes` VALUES (185, '181240052', 1, '80', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '185181240052');
INSERT INTO `grupos_estudiantes` VALUES (185, '181240066', 1, '80', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '185181240066');
INSERT INTO `grupos_estudiantes` VALUES (185, '181240073', 1, '80', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '185181240073');
INSERT INTO `grupos_estudiantes` VALUES (185, '181240074', 1, '80', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '185181240074');
INSERT INTO `grupos_estudiantes` VALUES (185, '181240082', 1, '80', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '185181240082');
INSERT INTO `grupos_estudiantes` VALUES (186, '211240020', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '186211240020');
INSERT INTO `grupos_estudiantes` VALUES (186, '211240021', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '186211240021');
INSERT INTO `grupos_estudiantes` VALUES (186, '211240023', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '186211240023');
INSERT INTO `grupos_estudiantes` VALUES (186, '211240024', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '186211240024');
INSERT INTO `grupos_estudiantes` VALUES (186, '211240025', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '186211240025');
INSERT INTO `grupos_estudiantes` VALUES (186, '211240027', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '186211240027');
INSERT INTO `grupos_estudiantes` VALUES (186, '211240028', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '186211240028');
INSERT INTO `grupos_estudiantes` VALUES (186, '211240029', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '186211240029');
INSERT INTO `grupos_estudiantes` VALUES (186, '211240030', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '186211240030');
INSERT INTO `grupos_estudiantes` VALUES (186, '211240031', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '186211240031');
INSERT INTO `grupos_estudiantes` VALUES (186, '211240032', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '186211240032');
INSERT INTO `grupos_estudiantes` VALUES (186, '211240034', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '186211240034');
INSERT INTO `grupos_estudiantes` VALUES (186, '211240035', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '186211240035');
INSERT INTO `grupos_estudiantes` VALUES (186, '211240036', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '186211240036');
INSERT INTO `grupos_estudiantes` VALUES (186, '211240038', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '186211240038');
INSERT INTO `grupos_estudiantes` VALUES (187, '191240001', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '187191240001');
INSERT INTO `grupos_estudiantes` VALUES (187, '191240006', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '187191240006');
INSERT INTO `grupos_estudiantes` VALUES (187, '191240007', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '187191240007');
INSERT INTO `grupos_estudiantes` VALUES (187, '191240009', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '187191240009');
INSERT INTO `grupos_estudiantes` VALUES (187, '191240010', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '187191240010');
INSERT INTO `grupos_estudiantes` VALUES (187, '191240011', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '187191240011');
INSERT INTO `grupos_estudiantes` VALUES (187, '191240014', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '187191240014');
INSERT INTO `grupos_estudiantes` VALUES (187, '191240015', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '187191240015');
INSERT INTO `grupos_estudiantes` VALUES (187, '191240016', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '187191240016');
INSERT INTO `grupos_estudiantes` VALUES (187, '191240017', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '187191240017');
INSERT INTO `grupos_estudiantes` VALUES (187, '191240018', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '187191240018');
INSERT INTO `grupos_estudiantes` VALUES (187, '191240020', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '187191240020');
INSERT INTO `grupos_estudiantes` VALUES (187, '191240024', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '187191240024');
INSERT INTO `grupos_estudiantes` VALUES (187, '191240028', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '187191240028');
INSERT INTO `grupos_estudiantes` VALUES (187, '191240029', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 01:42:54', '2021-08-30 01:42:54', 'VIG', 2, '187191240029');
INSERT INTO `grupos_estudiantes` VALUES (188, '211240068', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '188211240068');
INSERT INTO `grupos_estudiantes` VALUES (188, '211240069', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '188211240069');
INSERT INTO `grupos_estudiantes` VALUES (188, '211240071', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '188211240071');
INSERT INTO `grupos_estudiantes` VALUES (188, '211240072', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '188211240072');
INSERT INTO `grupos_estudiantes` VALUES (188, '211240073', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '188211240073');
INSERT INTO `grupos_estudiantes` VALUES (188, '211240075', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 04:59:12', '2021-08-30 04:59:12', 'VIG', 2, '188211240075');

-- ----------------------------
-- Table structure for modulos_rol
-- ----------------------------
DROP TABLE IF EXISTS `modulos_rol`;
CREATE TABLE `modulos_rol`  (
  `idmodulo` int(11) NOT NULL,
  `desc_modulo` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idmodulo`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of modulos_rol
-- ----------------------------

-- ----------------------------
-- Table structure for permisos_rol
-- ----------------------------
DROP TABLE IF EXISTS `permisos_rol`;
CREATE TABLE `permisos_rol`  (
  `idpermiso` int(11) NOT NULL,
  `idmodulo` int(11) NOT NULL,
  `idrol` int(11) NOT NULL,
  `ALTA` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BAJA` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `MODIFICACION` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CONSULTA` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `EJECUCION` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idpermiso`) USING BTREE,
  INDEX `fk_permisos_rol_modulos_rol1_idx`(`idmodulo`) USING BTREE,
  INDEX `fk_permisos_rol_cat_roles1_idx`(`idrol`) USING BTREE,
  CONSTRAINT `fk_permisos_rol_cat_roles1` FOREIGN KEY (`idrol`) REFERENCES `cat_roles` (`idrol`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_permisos_rol_modulos_rol1` FOREIGN KEY (`idmodulo`) REFERENCES `modulos_rol` (`idmodulo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permisos_rol
-- ----------------------------

-- ----------------------------
-- Table structure for profesores
-- ----------------------------
DROP TABLE IF EXISTS `profesores`;
CREATE TABLE `profesores`  (
  `idprofesor` int(11) NOT NULL AUTO_INCREMENT,
  `curp` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nombre_profesor` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `apaterno` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `amaterno` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fecha_registro` datetime NULL DEFAULT current_timestamp,
  `fecha_actualizacion` datetime NULL DEFAULT current_timestamp,
  `cve_estatus` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'VIG',
  PRIMARY KEY (`idprofesor`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of profesores
-- ----------------------------
INSERT INTO `profesores` VALUES (1, 'jedive.ac', 'Jedive', 'Abarca', 'Córdova', '2021-10-10 00:00:00', '2022-01-22 00:00:00', 'BT');
INSERT INTO `profesores` VALUES (2, 'juan.ag', 'Juan Carlos', 'Adorno', 'Guerra', NULL, '2022-01-17 00:00:00', 'VIG');
INSERT INTO `profesores` VALUES (3, 'francisco.ar', 'Francisco', 'Alvarado', 'Rueda', NULL, NULL, NULL);
INSERT INTO `profesores` VALUES (4, 'patricia.cc', 'Patricia del Carmen', 'Cadenas', 'Cadenas', NULL, NULL, NULL);
INSERT INTO `profesores` VALUES (5, 'leydi.cm', 'Leydi Susana', 'Castillo', 'Montero', NULL, NULL, NULL);
INSERT INTO `profesores` VALUES (6, 'nadxieli.cc', 'Nadxieli Guadalupe', 'Chevez', 'Cruz', NULL, NULL, NULL);
INSERT INTO `profesores` VALUES (7, 'juan.ca', 'Juan Ángel', 'Cruz', 'Alejandro', NULL, NULL, NULL);
INSERT INTO `profesores` VALUES (8, 'doraliz.sm', 'Doraliz', 'De los Santos', 'Mena', NULL, NULL, NULL);
INSERT INTO `profesores` VALUES (9, 'luis.eg', 'Luis Alberto', 'Escudero', 'González', NULL, NULL, NULL);
INSERT INTO `profesores` VALUES (10, 'gustavo.hc', 'Gustavo Adolfo', 'Hernández', 'Cadenas', NULL, NULL, NULL);
INSERT INTO `profesores` VALUES (11, 'maria.ih', 'María del Carmen', 'Izquierdo', 'Hernández', NULL, NULL, NULL);
INSERT INTO `profesores` VALUES (12, 'raquel.jr', 'Raquel', 'Jiménez', 'Ramírez', NULL, NULL, NULL);
INSERT INTO `profesores` VALUES (13, 'yulma.jl', 'Yulma', 'Jiménez', 'Lara', NULL, NULL, NULL);
INSERT INTO `profesores` VALUES (14, 'guadalupe.mv', 'Guadalupe', 'Martínez', 'Vichel', NULL, NULL, NULL);
INSERT INTO `profesores` VALUES (15, 'braulio.mg', 'Braulio Alberto', 'Mateos', 'Gallegos', NULL, NULL, NULL);
INSERT INTO `profesores` VALUES (16, 'jose.mm', 'José Alberto', 'Méndez', 'Montiel', NULL, NULL, NULL);
INSERT INTO `profesores` VALUES (17, 'jose.nt', 'José', 'Notario', 'Torres', NULL, NULL, NULL);
INSERT INTO `profesores` VALUES (18, 'maricela.pp', 'Maricela', 'Pablo', 'Pérez', NULL, NULL, NULL);
INSERT INTO `profesores` VALUES (19, 'alexis.pm', 'Alexis', 'Piña', 'Marcial', NULL, NULL, NULL);
INSERT INTO `profesores` VALUES (20, 'pedro.sm', 'Pedro', 'Salvador', 'Morales', NULL, NULL, NULL);
INSERT INTO `profesores` VALUES (21, 'bladimir.sr', 'Bladimir', 'Sánchez', 'Ramírez', NULL, NULL, NULL);
INSERT INTO `profesores` VALUES (22, 'jose.th', 'José Javier', 'Torres', 'Hernández', NULL, NULL, NULL);
INSERT INTO `profesores` VALUES (23, 'leticia.va', 'Leticia', 'Valenzuela', 'Alamilla', NULL, NULL, NULL);
INSERT INTO `profesores` VALUES (24, 'lorena.vh', 'Lorena', 'Vázquez', 'Hernández', NULL, NULL, NULL);
INSERT INTO `profesores` VALUES (25, 'manuel.vl', 'Manuel Ernesto', 'Villalobos', 'López', NULL, NULL, NULL);
INSERT INTO `profesores` VALUES (26, 'marcela.zs', 'Marcela', 'Zamora', 'Santiago', NULL, NULL, NULL);
INSERT INTO `profesores` VALUES (29, 'administrador', 'Juan Carlos', 'Gálvez', 'Ocampo', '2021-09-08 12:47:44', '2021-09-08 12:47:44', 'VIG');
INSERT INTO `profesores` VALUES (37, 'jcgalvezocampo', 'Juan Carlos', 'Gálvez', 'Ocampo', '2021-10-08 00:00:00', '2021-10-08 00:00:00', '1');

-- ----------------------------
-- Table structure for profesores_seguimientos
-- ----------------------------
DROP TABLE IF EXISTS `profesores_seguimientos`;
CREATE TABLE `profesores_seguimientos`  (
  `idseguimiento` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idciclo` int(11) NULL DEFAULT NULL,
  `idprofesor` int(11) NULL DEFAULT NULL,
  `seguimiento` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bandera` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idseguimiento`) USING BTREE,
  INDEX `idciclo`(`idciclo`) USING BTREE,
  INDEX `idprofesor`(`idprofesor`) USING BTREE,
  CONSTRAINT `idciclo` FOREIGN KEY (`idciclo`) REFERENCES `ciclo` (`idciclo`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `idprofesor` FOREIGN KEY (`idprofesor`) REFERENCES `profesores` (`idprofesor`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 141 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of profesores_seguimientos
-- ----------------------------
INSERT INTO `profesores_seguimientos` VALUES (1, 2, 1, '1', '1');
INSERT INTO `profesores_seguimientos` VALUES (2, 2, 2, '1', '1');
INSERT INTO `profesores_seguimientos` VALUES (3, 2, 3, '1', '1');
INSERT INTO `profesores_seguimientos` VALUES (4, 2, 4, '1', '1');
INSERT INTO `profesores_seguimientos` VALUES (5, 2, 5, '1', '1');
INSERT INTO `profesores_seguimientos` VALUES (6, 2, 6, '1', '1');
INSERT INTO `profesores_seguimientos` VALUES (7, 2, 7, '1', '1');
INSERT INTO `profesores_seguimientos` VALUES (8, 2, 8, '1', '1');
INSERT INTO `profesores_seguimientos` VALUES (9, 2, 9, '1', '1');
INSERT INTO `profesores_seguimientos` VALUES (10, 2, 10, '1', '1');
INSERT INTO `profesores_seguimientos` VALUES (11, 2, 11, '1', '1');
INSERT INTO `profesores_seguimientos` VALUES (12, 2, 12, '1', '1');
INSERT INTO `profesores_seguimientos` VALUES (13, 2, 13, '1', '1');
INSERT INTO `profesores_seguimientos` VALUES (14, 2, 14, '1', '1');
INSERT INTO `profesores_seguimientos` VALUES (15, 2, 15, '1', '1');
INSERT INTO `profesores_seguimientos` VALUES (16, 2, 16, '1', '1');
INSERT INTO `profesores_seguimientos` VALUES (17, 2, 17, '1', '1');
INSERT INTO `profesores_seguimientos` VALUES (18, 2, 18, '1', '1');
INSERT INTO `profesores_seguimientos` VALUES (19, 2, 19, '1', '1');
INSERT INTO `profesores_seguimientos` VALUES (20, 2, 20, '1', '1');
INSERT INTO `profesores_seguimientos` VALUES (21, 2, 21, '1', '1');
INSERT INTO `profesores_seguimientos` VALUES (22, 2, 22, '1', '1');
INSERT INTO `profesores_seguimientos` VALUES (23, 2, 23, '1', '1');
INSERT INTO `profesores_seguimientos` VALUES (24, 2, 24, '1', '1');
INSERT INTO `profesores_seguimientos` VALUES (25, 2, 25, '1', '1');
INSERT INTO `profesores_seguimientos` VALUES (26, 2, 26, '1', '1');
INSERT INTO `profesores_seguimientos` VALUES (27, 2, 29, '1', '1');
INSERT INTO `profesores_seguimientos` VALUES (28, 2, 37, '1', '1');
INSERT INTO `profesores_seguimientos` VALUES (29, 2, 1, '2', '1');
INSERT INTO `profesores_seguimientos` VALUES (30, 2, 2, '2', '1');
INSERT INTO `profesores_seguimientos` VALUES (31, 2, 3, '2', '1');
INSERT INTO `profesores_seguimientos` VALUES (32, 2, 4, '2', '1');
INSERT INTO `profesores_seguimientos` VALUES (33, 2, 5, '2', '1');
INSERT INTO `profesores_seguimientos` VALUES (34, 2, 6, '2', '1');
INSERT INTO `profesores_seguimientos` VALUES (35, 2, 7, '2', '1');
INSERT INTO `profesores_seguimientos` VALUES (36, 2, 8, '2', '1');
INSERT INTO `profesores_seguimientos` VALUES (37, 2, 9, '2', '1');
INSERT INTO `profesores_seguimientos` VALUES (38, 2, 10, '2', '1');
INSERT INTO `profesores_seguimientos` VALUES (39, 2, 11, '2', '1');
INSERT INTO `profesores_seguimientos` VALUES (40, 2, 12, '2', '1');
INSERT INTO `profesores_seguimientos` VALUES (41, 2, 13, '2', '1');
INSERT INTO `profesores_seguimientos` VALUES (42, 2, 14, '2', '1');
INSERT INTO `profesores_seguimientos` VALUES (43, 2, 15, '2', '1');
INSERT INTO `profesores_seguimientos` VALUES (44, 2, 16, '2', '1');
INSERT INTO `profesores_seguimientos` VALUES (45, 2, 17, '2', '1');
INSERT INTO `profesores_seguimientos` VALUES (46, 2, 18, '2', '1');
INSERT INTO `profesores_seguimientos` VALUES (47, 2, 19, '2', '1');
INSERT INTO `profesores_seguimientos` VALUES (48, 2, 20, '2', '1');
INSERT INTO `profesores_seguimientos` VALUES (49, 2, 21, '2', '1');
INSERT INTO `profesores_seguimientos` VALUES (50, 2, 22, '2', '1');
INSERT INTO `profesores_seguimientos` VALUES (51, 2, 23, '2', '1');
INSERT INTO `profesores_seguimientos` VALUES (52, 2, 24, '2', '1');
INSERT INTO `profesores_seguimientos` VALUES (53, 2, 25, '2', '1');
INSERT INTO `profesores_seguimientos` VALUES (54, 2, 26, '2', '1');
INSERT INTO `profesores_seguimientos` VALUES (55, 2, 29, '2', '1');
INSERT INTO `profesores_seguimientos` VALUES (56, 2, 37, '2', '1');
INSERT INTO `profesores_seguimientos` VALUES (57, 2, 1, '4', '1');
INSERT INTO `profesores_seguimientos` VALUES (58, 2, 2, '4', '1');
INSERT INTO `profesores_seguimientos` VALUES (59, 2, 3, '4', '1');
INSERT INTO `profesores_seguimientos` VALUES (60, 2, 4, '4', '1');
INSERT INTO `profesores_seguimientos` VALUES (61, 2, 5, '4', '1');
INSERT INTO `profesores_seguimientos` VALUES (62, 2, 6, '4', '1');
INSERT INTO `profesores_seguimientos` VALUES (63, 2, 7, '4', '1');
INSERT INTO `profesores_seguimientos` VALUES (64, 2, 8, '4', '1');
INSERT INTO `profesores_seguimientos` VALUES (65, 2, 9, '4', '1');
INSERT INTO `profesores_seguimientos` VALUES (66, 2, 10, '4', '1');
INSERT INTO `profesores_seguimientos` VALUES (67, 2, 11, '4', '1');
INSERT INTO `profesores_seguimientos` VALUES (68, 2, 12, '4', '1');
INSERT INTO `profesores_seguimientos` VALUES (69, 2, 13, '4', '1');
INSERT INTO `profesores_seguimientos` VALUES (70, 2, 14, '4', '1');
INSERT INTO `profesores_seguimientos` VALUES (71, 2, 15, '4', '1');
INSERT INTO `profesores_seguimientos` VALUES (72, 2, 16, '4', '1');
INSERT INTO `profesores_seguimientos` VALUES (73, 2, 17, '4', '1');
INSERT INTO `profesores_seguimientos` VALUES (74, 2, 18, '4', '1');
INSERT INTO `profesores_seguimientos` VALUES (75, 2, 19, '4', '1');
INSERT INTO `profesores_seguimientos` VALUES (76, 2, 20, '4', '1');
INSERT INTO `profesores_seguimientos` VALUES (77, 2, 21, '4', '1');
INSERT INTO `profesores_seguimientos` VALUES (78, 2, 22, '4', '1');
INSERT INTO `profesores_seguimientos` VALUES (79, 2, 23, '4', '1');
INSERT INTO `profesores_seguimientos` VALUES (80, 2, 24, '4', '1');
INSERT INTO `profesores_seguimientos` VALUES (81, 2, 25, '4', '1');
INSERT INTO `profesores_seguimientos` VALUES (82, 2, 26, '4', '1');
INSERT INTO `profesores_seguimientos` VALUES (83, 2, 29, '4', '1');
INSERT INTO `profesores_seguimientos` VALUES (84, 2, 37, '4', '1');
INSERT INTO `profesores_seguimientos` VALUES (85, 2, 1, '3', '1');
INSERT INTO `profesores_seguimientos` VALUES (86, 2, 2, '3', '1');
INSERT INTO `profesores_seguimientos` VALUES (87, 2, 3, '3', '1');
INSERT INTO `profesores_seguimientos` VALUES (88, 2, 4, '3', '1');
INSERT INTO `profesores_seguimientos` VALUES (89, 2, 5, '3', '1');
INSERT INTO `profesores_seguimientos` VALUES (90, 2, 6, '3', '1');
INSERT INTO `profesores_seguimientos` VALUES (91, 2, 7, '3', '1');
INSERT INTO `profesores_seguimientos` VALUES (92, 2, 8, '3', '1');
INSERT INTO `profesores_seguimientos` VALUES (93, 2, 9, '3', '1');
INSERT INTO `profesores_seguimientos` VALUES (94, 2, 37, '3', '1');
INSERT INTO `profesores_seguimientos` VALUES (95, 2, 10, '3', '1');
INSERT INTO `profesores_seguimientos` VALUES (96, 2, 11, '3', '1');
INSERT INTO `profesores_seguimientos` VALUES (97, 2, 12, '3', '1');
INSERT INTO `profesores_seguimientos` VALUES (98, 2, 13, '3', '1');
INSERT INTO `profesores_seguimientos` VALUES (99, 2, 14, '3', '1');
INSERT INTO `profesores_seguimientos` VALUES (100, 2, 15, '3', '1');
INSERT INTO `profesores_seguimientos` VALUES (101, 2, 16, '3', '1');
INSERT INTO `profesores_seguimientos` VALUES (102, 2, 17, '3', '1');
INSERT INTO `profesores_seguimientos` VALUES (103, 2, 18, '3', '1');
INSERT INTO `profesores_seguimientos` VALUES (104, 2, 19, '3', '1');
INSERT INTO `profesores_seguimientos` VALUES (105, 2, 20, '3', '1');
INSERT INTO `profesores_seguimientos` VALUES (106, 2, 21, '3', '1');
INSERT INTO `profesores_seguimientos` VALUES (107, 2, 22, '3', '1');
INSERT INTO `profesores_seguimientos` VALUES (108, 2, 23, '3', '1');
INSERT INTO `profesores_seguimientos` VALUES (109, 2, 24, '3', '1');
INSERT INTO `profesores_seguimientos` VALUES (110, 2, 25, '3', '1');
INSERT INTO `profesores_seguimientos` VALUES (111, 2, 26, '3', '1');
INSERT INTO `profesores_seguimientos` VALUES (112, 2, 29, '3', '1');
INSERT INTO `profesores_seguimientos` VALUES (113, 2, 1, '5', '1');
INSERT INTO `profesores_seguimientos` VALUES (114, 2, 2, '5', '1');
INSERT INTO `profesores_seguimientos` VALUES (115, 2, 3, '5', '1');
INSERT INTO `profesores_seguimientos` VALUES (116, 2, 4, '5', '1');
INSERT INTO `profesores_seguimientos` VALUES (117, 2, 5, '5', '1');
INSERT INTO `profesores_seguimientos` VALUES (118, 2, 6, '5', '1');
INSERT INTO `profesores_seguimientos` VALUES (119, 2, 7, '5', '1');
INSERT INTO `profesores_seguimientos` VALUES (120, 2, 8, '5', '1');
INSERT INTO `profesores_seguimientos` VALUES (121, 2, 9, '5', '1');
INSERT INTO `profesores_seguimientos` VALUES (122, 2, 10, '5', '1');
INSERT INTO `profesores_seguimientos` VALUES (123, 2, 11, '5', '1');
INSERT INTO `profesores_seguimientos` VALUES (124, 2, 12, '5', '1');
INSERT INTO `profesores_seguimientos` VALUES (125, 2, 13, '5', '1');
INSERT INTO `profesores_seguimientos` VALUES (126, 2, 14, '5', '1');
INSERT INTO `profesores_seguimientos` VALUES (127, 2, 15, '5', '1');
INSERT INTO `profesores_seguimientos` VALUES (128, 2, 16, '5', '1');
INSERT INTO `profesores_seguimientos` VALUES (129, 2, 17, '5', '1');
INSERT INTO `profesores_seguimientos` VALUES (130, 2, 18, '5', '1');
INSERT INTO `profesores_seguimientos` VALUES (131, 2, 19, '5', '1');
INSERT INTO `profesores_seguimientos` VALUES (132, 2, 20, '5', '1');
INSERT INTO `profesores_seguimientos` VALUES (133, 2, 21, '5', '1');
INSERT INTO `profesores_seguimientos` VALUES (134, 2, 22, '5', '1');
INSERT INTO `profesores_seguimientos` VALUES (135, 2, 23, '5', '1');
INSERT INTO `profesores_seguimientos` VALUES (136, 2, 24, '5', '1');
INSERT INTO `profesores_seguimientos` VALUES (137, 2, 25, '5', '1');
INSERT INTO `profesores_seguimientos` VALUES (138, 2, 26, '5', '1');
INSERT INTO `profesores_seguimientos` VALUES (139, 2, 29, '5', '1');
INSERT INTO `profesores_seguimientos` VALUES (140, 2, 37, '5', '1');

-- ----------------------------
-- Table structure for roles_usuarios
-- ----------------------------
DROP TABLE IF EXISTS `roles_usuarios`;
CREATE TABLE `roles_usuarios`  (
  `idusuario` int(11) NOT NULL,
  `idrol` int(11) NOT NULL,
  INDEX `fk_table1_usuarios1_idx`(`idusuario`) USING BTREE,
  INDEX `fk_table1_cat_roles1_idx`(`idrol`) USING BTREE,
  CONSTRAINT `fk_table1_cat_roles1` FOREIGN KEY (`idrol`) REFERENCES `cat_roles` (`idrol`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_table1_usuarios1` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles_usuarios
-- ----------------------------
INSERT INTO `roles_usuarios` VALUES (5, 1);
INSERT INTO `roles_usuarios` VALUES (6, 3);
INSERT INTO `roles_usuarios` VALUES (7, 3);
INSERT INTO `roles_usuarios` VALUES (8, 3);
INSERT INTO `roles_usuarios` VALUES (9, 3);
INSERT INTO `roles_usuarios` VALUES (10, 3);
INSERT INTO `roles_usuarios` VALUES (11, 3);
INSERT INTO `roles_usuarios` VALUES (12, 3);
INSERT INTO `roles_usuarios` VALUES (13, 3);
INSERT INTO `roles_usuarios` VALUES (14, 3);
INSERT INTO `roles_usuarios` VALUES (15, 3);
INSERT INTO `roles_usuarios` VALUES (16, 3);
INSERT INTO `roles_usuarios` VALUES (17, 3);
INSERT INTO `roles_usuarios` VALUES (18, 3);
INSERT INTO `roles_usuarios` VALUES (24, 2);
INSERT INTO `roles_usuarios` VALUES (20, 3);
INSERT INTO `roles_usuarios` VALUES (21, 3);
INSERT INTO `roles_usuarios` VALUES (22, 3);
INSERT INTO `roles_usuarios` VALUES (23, 3);
INSERT INTO `roles_usuarios` VALUES (24, 3);
INSERT INTO `roles_usuarios` VALUES (25, 3);
INSERT INTO `roles_usuarios` VALUES (26, 3);
INSERT INTO `roles_usuarios` VALUES (27, 3);
INSERT INTO `roles_usuarios` VALUES (28, 3);
INSERT INTO `roles_usuarios` VALUES (29, 3);
INSERT INTO `roles_usuarios` VALUES (30, 3);
INSERT INTO `roles_usuarios` VALUES (31, 3);
INSERT INTO `roles_usuarios` VALUES (32, 4);

-- ----------------------------
-- Table structure for semestres
-- ----------------------------
DROP TABLE IF EXISTS `semestres`;
CREATE TABLE `semestres`  (
  `idcarrera` int(11) NOT NULL,
  `idmateria` int(11) NOT NULL,
  `num_semestre` int(11) NOT NULL,
  PRIMARY KEY (`idcarrera`, `idmateria`) USING BTREE,
  INDEX `fk_semestre_carrera_idx`(`idcarrera`) USING BTREE,
  INDEX `fk_semestre_materia1_idx`(`idmateria`) USING BTREE,
  CONSTRAINT `fk_semestre_carrera` FOREIGN KEY (`idcarrera`) REFERENCES `cat_carreras` (`idcarrera`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_semestre_materia1` FOREIGN KEY (`idmateria`) REFERENCES `cat_materias` (`idmateria`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of semestres
-- ----------------------------
INSERT INTO `semestres` VALUES (1, 1, 1);

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios`  (
  `idusuario` int(11) NOT NULL,
  `nombre_usuario` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cve_estatus` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `authKey` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `accessToken` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `activate` tinyint(1) NULL DEFAULT NULL,
  `curp` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fecha_registro` datetime NULL DEFAULT NULL,
  `fecha_actualizacion` datetime NULL DEFAULT NULL,
  `verification_code` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idusuario`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES (5, 'administrador', 'jcgalvezocampo@gmail.com', 'itNwR7nhba4nc', '', 'ae6ed01d0462b66a67b4684ee50901764eaf7e2449a7cd7cef9ed285c70e75f3ed4d8e6a6b73b154a5db93dd867420f1b44816d43c1d7e3c621c696a42c1ba666ebfd7d152b18301febabc2fae14a3de9656843c436b1d0718195d5a981a816d5b15bbd7', 'c98148bf9f22e572fa4123e6e6a05e9ac144936f8d84e5f60a0d1b03c2840953219ce83b84fb2413ec9ebaa7ef017451a910c28b43ca026302dacd2371d2f48f4543f0ed5cb9c89f34f93b85207afa717a60a812ac041d1a735c599e30d02b0f6f6735ae', 1, 'administrador', NULL, NULL, 'f0ae8928');
INSERT INTO `usuarios` VALUES (6, 'jedive.ac', '', 'itQIKlZycsddY', '', '', '', 1, 'jedive.ac', NULL, NULL, '');
INSERT INTO `usuarios` VALUES (7, 'juan.ag', '', 'itScX.iKd/12.', '', '', '', 1, 'juan.ag', NULL, NULL, '');
INSERT INTO `usuarios` VALUES (8, 'francisco.ar', '', 'itrhcJizRowYg', '', '', '', 1, 'francisco.ar', NULL, NULL, '');
INSERT INTO `usuarios` VALUES (9, 'patricia.cc', '', 'itFv6xSLoEv6w', '', '', '', 1, 'patricia.cc', NULL, NULL, '');
INSERT INTO `usuarios` VALUES (10, 'leydi.cm', '', 'itnezLwt.x0Y.', '', '', '', 1, 'leydi.cm', NULL, NULL, '');
INSERT INTO `usuarios` VALUES (11, 'nadxieli.cc', '', 'itvFDxoIiof3o', '', '', '', 1, 'nadxieli.cc', NULL, NULL, '');
INSERT INTO `usuarios` VALUES (12, 'juan.ca', '', 'itQ.u8x5KA06A', '', '', '', 1, 'juan.ca', NULL, NULL, '');
INSERT INTO `usuarios` VALUES (13, 'doraliz.sm', '', 'itOCglvcPCevA', '', '', '', 1, 'doraliz.sm', NULL, NULL, '');
INSERT INTO `usuarios` VALUES (14, 'luis.eg', '', 'itAV95TzftoHo', '', '', '', 1, 'luis.eg', NULL, NULL, '');
INSERT INTO `usuarios` VALUES (15, 'gustavo.hc', '', 'itIwKCUBR.4n2', '', '', '', 1, 'gustavo.hc', NULL, NULL, '');
INSERT INTO `usuarios` VALUES (16, 'maria.ih', '', 'itLiS25olmLWM', '', '', '', 1, 'maria.ih', NULL, NULL, '');
INSERT INTO `usuarios` VALUES (17, 'yulma.jl', '', 'it8/vHGqeycXU', '', '', '', 1, 'yulma.jl', NULL, NULL, '');
INSERT INTO `usuarios` VALUES (18, 'raquel.jr', '', 'itXTOWO.arDW6', '', '', '', 1, 'raquel.jr', NULL, NULL, '');
INSERT INTO `usuarios` VALUES (19, 'guadalupe.mv', '', 'itoIkY282VryE', '', '', '', 1, 'guadalupe.mv', NULL, NULL, '');
INSERT INTO `usuarios` VALUES (20, 'braulio.mg', '', 'it4DjuudCZ.s6', '', '', '', 1, 'braulio.mg', NULL, NULL, '');
INSERT INTO `usuarios` VALUES (21, 'jose.mm', '', 'it05owjUpc/iw', '', '', '', 1, 'jose.mm', NULL, NULL, '');
INSERT INTO `usuarios` VALUES (22, 'jose.nt', '', 'it8gXlSpiuX8Q', '', '', '', 1, 'jose.nt', NULL, NULL, '');
INSERT INTO `usuarios` VALUES (23, 'maricela.pp', '', 'it.V69zVdP/TU', '', '', '', 1, 'maricela.pp', NULL, NULL, '');
INSERT INTO `usuarios` VALUES (24, 'alexis.pm', '', 'itFi/OtxCXpVQ', '', '', '', 1, 'alexis.pm', NULL, NULL, '');
INSERT INTO `usuarios` VALUES (25, 'pedro.sm', '', 'itv4PY8JG9LNA', '', '', '', 1, 'pedro.sm', NULL, NULL, '');
INSERT INTO `usuarios` VALUES (26, 'bladimir.sr', '', 'itQHu/DedWSjM', '', '', '', 1, 'bladimir.sr', NULL, NULL, '');
INSERT INTO `usuarios` VALUES (27, 'jose.th', '', 'itde1gSCwF4X2', '', '', '', 1, 'jose.th', NULL, NULL, '');
INSERT INTO `usuarios` VALUES (28, 'leticia.va', '', 'itJBPzytUwE.I', '', '', '', 1, 'leticia.va', NULL, NULL, '');
INSERT INTO `usuarios` VALUES (29, 'lorena.vh', '', 'itPGN7WHStnlM', '', '', '', 1, 'lorena.vh', NULL, NULL, '');
INSERT INTO `usuarios` VALUES (30, 'manuel.vl', '', 'itWTgznX5eTG2', '', '', '', 1, 'manuel.vl', NULL, NULL, '');
INSERT INTO `usuarios` VALUES (31, 'marcela.zs', '', 'itA8Z8K7TZhPU', '', '', '', 1, 'marcela.zs', NULL, NULL, '');
INSERT INTO `usuarios` VALUES (32, 'jefe.academico', '', 'itjmyzbhXPcek', NULL, NULL, NULL, 1, 'jefe.academico', NULL, NULL, NULL);

-- ----------------------------
-- View structure for boleta_detalle_v
-- ----------------------------
DROP VIEW IF EXISTS `boleta_detalle_v`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `boleta_detalle_v` AS SELECT
	`actas_calificaciones`.`idestudiante` AS `idestudiante`,
	`grupos`.`idciclo` AS `idciclo`,
	`cat_materias`.`desc_materia` AS `desc_materia`,
	`cat_materias`.`cve_materia` AS `cve_materia`,
	`grupos`.`desc_grupo_corto` AS `desc_grupo`,
CASE
		
		WHEN `actas_calificaciones`.`idopcion_curso` = 2 THEN
		'REP' 
		WHEN `actas_calificaciones`.`idopcion_curso` = 3 THEN
		'ESP' 
		WHEN `actas_calificaciones`.`idopcion_curso` = 4 THEN
		'DUAL' 
		WHEN `actas_calificaciones`.`idopcion_curso` = 5 THEN
		'AUT' ELSE 'ORD' 
	END AS `opc_curso`,
	`cat_materias`.`creditos` AS `creditos`,
IF
	( `actas_calificaciones`.`seg_opt` = '', `actas_calificaciones`.`pri_opt`, `actas_calificaciones`.`seg_opt` ) AS `calificacion` 
FROM
	(( `actas_calificaciones` JOIN `grupos` ) JOIN `cat_materias` ) 
WHERE
	`actas_calificaciones`.`idgrupo` = `grupos`.`idgrupo` 
	AND `grupos`.`idmateria` = `cat_materias`.`idmateria`;

-- ----------------------------
-- View structure for boleta_encabezado_v
-- ----------------------------
DROP VIEW IF EXISTS `boleta_encabezado_v`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `boleta_encabezado_v` AS SELECT
	`a`.`idestudiante` AS `idestudiante`,
	`a`.`nombre_estudiante` AS `nombre_estudiante`,
	`b`.`desc_carrera` AS `desc_carrera`,
	`b`.`plan_estudios` AS `plan_estudios`,
	`a`.`num_semestre` AS `num_semestre` 
FROM
	( `estudiantes` `a` JOIN `cat_carreras` `b` );

-- ----------------------------
-- View structure for boleta_estudiante_encabezado
-- ----------------------------
DROP VIEW IF EXISTS `boleta_estudiante_encabezado`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `boleta_estudiante_encabezado` AS SELECT
	`ciclo`.`idciclo` AS `idciclo`,
	`ciclo`.`desc_ciclo` AS `desc_ciclo`,
	`estudiantes`.`nombre_estudiante` AS `nombre_estudiante`,
	`estudiantes`.`idestudiante` AS `idestudiante`,
	`estudiantes`.`num_semestre` AS `num_semestre`,
	`cat_carreras`.`desc_carrera` AS `desc_carrera`,
	`cat_carreras`.`plan_estudios` AS `plan_estudios`,
	`grupos`.`desc_grupo` AS `desc_grupo` 
FROM
	(((
				`estudiantes`
				JOIN `cat_carreras` ON ( `estudiantes`.`idcarrera` = `cat_carreras`.`idcarrera` ))
			JOIN `grupos` ON ( `cat_carreras`.`idcarrera` = `grupos`.`idcarrera` ))
	JOIN `ciclo` ON ( `grupos`.`idciclo` = `ciclo`.`idciclo` ));

-- ----------------------------
-- View structure for horario_estudiante_v
-- ----------------------------
DROP VIEW IF EXISTS `horario_estudiante_v`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `horario_estudiante_v` AS SELECT
	`a`.`idestudiante` AS `idestudiante`,
	`b`.`idciclo` AS `idciclo`,
	`b`.`num_semestre` AS `num_semestre`,
	`b`.`idmateria` AS `idmateria`,
	`c`.`desc_materia` AS `desc_materia`,
	`c`.`cve_materia` AS `cve_materia`,
	`b`.`desc_grupo_corto` AS `desc_grupo_corto`,
	`b`.`aula` AS `aula`,
	`a`.`idopcion_curso` AS `idopcion_curso`,
	CASE
		WHEN `a`.`idopcion_curso` = 2 THEN 'R' 
		WHEN `a`.`idopcion_curso` = 3 THEN 'E' 
	END AS `desc_opcion_curso_corto`,
	`c`.`creditos` AS `creditos`,
	`b`.`lunes` AS `lunes`,
	`b`.`martes` AS `martes`,
	`b`.`miercoles` AS `miercoles`,
	`b`.`jueves` AS `jueves`,
	`b`.`viernes` AS `viernes`,
	`b`.`sabado` AS `sabado`,
	CONCAT( `d`.`nombre_profesor`, ' ', `d`.`apaterno`, ' ', `d`.`amaterno` ) AS `profesor`,
	`a`.`idgrupo` AS `idgrupo`
FROM
	((( `grupos_estudiantes` `a` JOIN `grupos` `b` ) JOIN `cat_materias` `c` ) JOIN `profesores` `d` ) 
WHERE
	`a`.`idgrupo` = `b`.`idgrupo` 
	AND `b`.`idmateria` = `c`.`idmateria` 
	AND `b`.`idprofesor` = `d`.`idprofesor`;

-- ----------------------------
-- View structure for horario_profesor_v
-- ----------------------------
DROP VIEW IF EXISTS `horario_profesor_v`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `horario_profesor_v` AS SELECT
	`a`.`idprofesor` AS `idprofesor`,
	`a`.`idciclo` AS `idciclo`,
	`a`.`idcarrera` AS `idcarrera`,
	`b`.`cve_carrera` AS `cve_carrera`,
	`a`.`num_semestre` AS `num_semestre`,
	`a`.`idmateria` AS `idmateria`,
	`c`.`desc_materia` AS `desc_materia`,
	`c`.`cve_materia` AS `cve_materia`,
	`a`.`desc_grupo` AS `desc_grupo`,
	`a`.`aula` AS `aula`,
	`c`.`creditos` AS `creditos`,
	`a`.`lunes` AS `lunes`,
	`a`.`martes` AS `martes`,
	`a`.`miercoles` AS `miercoles`,
	`a`.`jueves` AS `jueves`,
	`a`.`viernes` AS `viernes`,
	`a`.`sabado` AS `sabado`,
	`a`.`idgrupo` AS `idgrupo`,
	`b`.`desc_carrera` AS `desc_carrera`,
	`ciclo`.`desc_ciclo` AS `desc_ciclo` 
FROM
	(((
				`grupos` `a`
				JOIN `cat_carreras` `b` 
				)
			JOIN `cat_materias` `c` 
			)
	JOIN `ciclo` ON ( `a`.`idciclo` = `ciclo`.`idciclo` )) 
WHERE
	`a`.`idcarrera` = `b`.`idcarrera` 
	AND `a`.`idmateria` = `c`.`idmateria`;

SET FOREIGN_KEY_CHECKS = 1;
