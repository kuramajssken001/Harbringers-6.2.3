DELETE FROM `item_template` WHERE entry=200301;
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `name`, `Quality`, `spellid_1`, `spellid_2`) VALUES (200301, 0, 0, 'ItemGossip', 5, 18282, 0);
DELETE FROM `item_script_names` WHERE entry = 200301;
INSERT INTO `item_script_names` (`Id`, `ScriptName`) VALUES (200301, 'multi_item');

DROP TABLE IF EXISTS `_multi_item`;
CREATE TABLE `_multi_item`  (
  `id` mediumint(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Class` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Icon` int(5) UNSIGNED NOT NULL DEFAULT 0,
  `Title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `usetype` int(5) UNSIGNED NOT NULL DEFAULT 0,
  `TeamID` int(5) UNSIGNED NOT NULL DEFAULT 0,
  `NeedClass` int(5) UNSIGNED NOT NULL DEFAULT 0,
  `NeedType` int(5) UNSIGNED NOT NULL DEFAULT 0,
  `NeedItemID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `NeedCount` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `NeedLevel` int(5) NOT NULL DEFAULT 0,
  `tele_x` float NOT NULL DEFAULT 0,
  `tele_y` float NOT NULL DEFAULT 0,
  `tele_z` float NOT NULL DEFAULT 0,
  `tele_o` float NOT NULL DEFAULT 0,
  `tele_map` int(5) UNSIGNED NOT NULL DEFAULT 0,
  `vip` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 214 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of _multi_item
-- ----------------------------
INSERT INTO `_multi_item` VALUES (1, 0, 2, '|TInterface\\Icons\\Achievement_Zone_Outland_01.blp:20|t传送服务', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (2, 0, 5, '|TInterface\\Icons\\Achievement_BG_returnXflags_def_WSG.blp:20|t个人功能', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (4, 0, 1, '|TInterface\\Icons\\INV_Misc_Coin_09.blp:20|tBUFF商城', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (5, 0, 1, '|TInterface\\Icons\\Temp.blp:20|t购买特殊物品', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (10, 1, 2, '主城传送', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (11, 1, 2, '地区传送', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (12, 1, 2, '副本传送', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (13, 12, 2, '经典旧世', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (14, 12, 2, '燃烧远征', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (15, 12, 2, '巫妖王之怒', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (16, 12, 2, '大地的裂变', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (17, 12, 2, '潘达利亚', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (18, 12, 5, '|cff8000FF返回主菜单|CFF009933', 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (19, 1, 5, '|cff8000FF返回主菜单|CFF009933', 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (20, 10, 2, '奥格瑞玛', 4, 67, 0, 0, 0, 0, 0, 1317, -4383, 27, 0, 1, 0);
INSERT INTO `_multi_item` VALUES (21, 10, 2, '银月城', 4, 67, 0, 0, 0, 0, 0, 9336.9, -7278.4, 13.6, 0, 530, 0);
INSERT INTO `_multi_item` VALUES (22, 10, 2, '幽暗城', 4, 67, 0, 0, 0, 0, 0, 1909, 235, 53, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (23, 10, 2, '雷霆崖', 4, 67, 0, 0, 0, 0, 0, -1391, 140, 23, 0, 1, 0);
INSERT INTO `_multi_item` VALUES (24, 10, 2, '双月殿', 4, 67, 0, 0, 0, 0, 0, 1555, 924, 473.61, 0, 870, 0);
INSERT INTO `_multi_item` VALUES (25, 10, 2, '暴风城', 4, 469, 0, 0, 0, 0, 0, -9065, 434, 94, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (26, 10, 2, '达纳苏斯', 4, 469, 0, 0, 0, 0, 0, 9961, 2055, 1329, 0, 1, 0);
INSERT INTO `_multi_item` VALUES (27, 10, 2, '埃克索达', 4, 469, 0, 0, 0, 0, 0, -4071.7, -12036.7, -1.5, 0, 530, 0);
INSERT INTO `_multi_item` VALUES (28, 10, 2, '铁炉堡', 4, 469, 0, 0, 0, 0, 0, -5032, -819, 495, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (29, 10, 2, '七星殿', 4, 469, 0, 0, 0, 0, 90, 865.193, 284.999, 504.635, 0, 870, 0);
INSERT INTO `_multi_item` VALUES (30, 10, 2, '中立-冬泉谷', 4, 0, 0, 0, 0, 0, 60, 6725.54, -4604.38, 722.154, 0, 1, 0);
INSERT INTO `_multi_item` VALUES (31, 10, 2, '中立-加基森', 4, 0, 0, 0, 0, 0, 60, -7174, -3778, 9, 0, 1, 0);
INSERT INTO `_multi_item` VALUES (32, 10, 2, '中立-藏宝海湾', 4, 0, 0, 0, 0, 0, 60, -14302, 518, 9, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (33, 10, 2, '中立-沙塔斯', 4, 0, 0, 0, 0, 0, 70, -1831, 5297, -11, 0, 530, 0);
INSERT INTO `_multi_item` VALUES (34, 10, 2, '中立-达拉然', 4, 0, 0, 0, 0, 0, 80, 5818, 452, 660, 0, 571, 0);
INSERT INTO `_multi_item` VALUES (39, 10, 5, '|cff8000FF返回主菜单|CFF009933', 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (40, 2, 5, '重置天赋30G', 3, 0, 0, 1, 0, 30, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (41, 2, 1, '拍卖行', 7, 0, 0, 0, 54, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (42, 2, 9, '随身银行', 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (43, 2, 8, '随身邮箱', 9, 0, 0, 0, 54710, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (44, 2, 7, '装备修理', 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (49, 2, 5, '|cff8000FF返回主菜单|CFF009933', 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (50, 4, 0, '屠龙者', 9, 0, 0, 3, 22888, 1, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (51, 4, 0, '强力BUFF', 9, 0, 0, 2, 4500, 10, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (52, 4, 0, '等等', 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (59, 4, 5, '|cff8000FF返回主菜单|CFF009933', 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (60, 5, 0, '物品1', 10, 0, 0, 3, 4500, 1, 0, 0, 0, 0, 0, 1, 0);
INSERT INTO `_multi_item` VALUES (61, 5, 0, '物品2', 10, 0, 0, 3, 19019, 2, 0, 0, 0, 0, 0, 1, 0);
INSERT INTO `_multi_item` VALUES (69, 5, 5, '|cff8000FF返回主菜单|CFF009933', 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (70, 11, 2, '卡利姆多', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (71, 11, 2, '东部王国', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (72, 11, 2, '外域', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (73, 11, 2, '诺森德', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (74, 11, 2, '潘达利亚', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (75, 11, 5, '|cff8000FF返回主菜单|CFF009933', 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (80, 70, 2, '|CFF0000FF(卡利姆多)海加尔山|CFF009933', 4, 0, 0, 0, 0, 0, 0, 4635.06, -3814.46, 943.8, 0, 1, 0);
INSERT INTO `_multi_item` VALUES (81, 70, 2, '|CFF0000FF(卡利姆多)北贫瘠之地|CFF009933', 4, 0, 0, 0, 0, 0, 0, 877.79, -2313.85, 91.66, 0, 1, 0);
INSERT INTO `_multi_item` VALUES (82, 70, 2, '|CFF0000FF(卡利姆多)菲拉斯|CFF009933', 4, 0, 0, 0, 0, 0, 0, -3809.13, 1367.86, 250.39, 0, 1, 0);
INSERT INTO `_multi_item` VALUES (83, 70, 2, '|CFF0000FF(卡利姆多)奥丹姆|CFF009933', 4, 0, 0, 0, 0, 0, 0, -9764.04, -1695.18, 22.33, 0, 1, 0);
INSERT INTO `_multi_item` VALUES (84, 70, 2, '|CFF0000FF(卡利姆多)南贫瘠之地|CFF009933', 4, 0, 0, 0, 0, 0, 0, -3246, -1730, 93, 0, 1, 0);
INSERT INTO `_multi_item` VALUES (85, 70, 2, '|CFF0000FF(卡利姆多)石爪山脉|CFF009933', 4, 0, 0, 0, 0, 0, 0, 961, 1055, 106, 0, 1, 0);
INSERT INTO `_multi_item` VALUES (86, 70, 2, '|CFF0000FF(卡利姆多)凄凉之地|CFF009933', 4, 0, 0, 0, 0, 0, 0, -1037, 1657, 60, 0, 1, 0);
INSERT INTO `_multi_item` VALUES (87, 70, 2, '|CFF0000FF(卡利姆多)冬泉谷|CFF009933', 4, 0, 0, 0, 0, 0, 0, 6724, -4650, 723, 0, 1, 0);
INSERT INTO `_multi_item` VALUES (88, 70, 5, '|cff8000FF返回主菜单|CFF009933', 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (89, 71, 2, '|CFF0000FF(东部王国)阿拉希高地|CFF009933', 4, 0, 0, 0, 0, 0, 0, -1412.88, -3240.91, 38.67, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (90, 71, 2, '|CFF0000FF(东部王国)东瘟疫之地|CFF009933', 4, 0, 0, 0, 0, 0, 0, 1827.54, -3018.05, 73.83, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (91, 71, 2, '|CFF0000FF(东部王国)塔伦米尔|CFF009933', 4, 0, 0, 0, 0, 0, 0, -180.48, -860.04, 57.02, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (92, 71, 2, '|CFF0000FF(东部王国)暮光高地|CFF009933', 4, 0, 0, 0, 0, 0, 0, -2874.4, -4477.25, 189.74, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (93, 71, 2, '|CFF0000FF(东部王国)丹莫罗|CFF009933', 4, 0, 0, 0, 0, 0, 0, -5679.33, -1324.47, 393.32, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (94, 71, 2, '|CFF0000FF(东部王国)燃烧平原|CFF009933', 4, 0, 0, 0, 0, 0, 0, -8027.72, -2056.66, 132.06, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (95, 71, 2, '|CFF0000FF(东部王国)荆棘谷|CFF009933', 4, 0, 0, 0, 0, 0, 0, -12023, -122.84, 41, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (96, 71, 2, '|CFF0000FF(东部王国)西部荒野|CFF009933', 4, 0, 0, 0, 0, 0, 0, -10903, 1258, 37, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (97, 71, 2, '|CFF0000FF(东部王国)悲伤沼泽|CFF009933', 4, 0, 0, 0, 0, 0, 0, -10429, -3309, 22, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (98, 71, 2, '|CFF0000FF(东部王国)提瑞法斯|CFF009933', 4, 0, 0, 0, 0, 0, 0, 2259, 252, 34, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (99, 71, 5, '|cff8000FF返回主菜单|CFF009933', 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (100, 72, 2, '|CFF0000FF(外域)刀锋山|CFF009933', 4, 0, 0, 0, 0, 0, 0, 2402.12, 5541.45, 264.74, 0, 530, 0);
INSERT INTO `_multi_item` VALUES (101, 72, 2, '|CFF0000FF(外域)虚空风暴|CFF009933', 4, 0, 0, 0, 0, 0, 0, 2696.55, 3410.29, 143.18, 0, 530, 0);
INSERT INTO `_multi_item` VALUES (102, 72, 2, '|CFF0000FF(外域)地狱火半岛|CFF009933', 4, 0, 0, 0, 0, 0, 0, -276.23, 3115.77, 31.24, 0, 530, 0);
INSERT INTO `_multi_item` VALUES (103, 72, 2, '|CFF0000FF(外域)纳格兰|CFF009933', 4, 0, 0, 0, 0, 0, 0, -1216.67, 7566.88, 16.66, 0, 530, 0);
INSERT INTO `_multi_item` VALUES (104, 72, 2, '|CFF0000FF(外域)影月谷|CFF009933', 4, 0, 0, 0, 0, 0, 0, -3169.69, 2722.5, 70.56, 0, 530, 0);
INSERT INTO `_multi_item` VALUES (105, 72, 2, '|CFF0000FF(外域)赞加沼泽|CFF009933', 4, 0, 0, 0, 0, 0, 0, 82, 7376, 21, 0, 530, 0);
INSERT INTO `_multi_item` VALUES (106, 72, 5, '|cff8000FF返回主菜单|CFF009933', 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (107, 73, 2, '|CFF0000FF(诺森德)风暴峭壁|CFF009933', 4, 0, 0, 0, 0, 0, 0, 6149.04, -246.5, 507, 0, 571, 0);
INSERT INTO `_multi_item` VALUES (108, 73, 2, '|CFF0000FF(诺森德)祖达克|CFF009933', 4, 0, 0, 0, 0, 0, 0, 5445.77, -1356.71, 239.22, 0, 571, 0);
INSERT INTO `_multi_item` VALUES (109, 73, 2, '|CFF0000FF(诺森德)北风苔原|CFF009933', 4, 0, 0, 0, 0, 0, 0, 3074.39, 6177.04, 123.63, 0, 571, 0);
INSERT INTO `_multi_item` VALUES (110, 73, 2, '|CFF0000FF(诺森德)龙骨荒野|CFF009933', 4, 0, 0, 0, 0, 0, 0, 3523.67, 1107.49, 136.61, 0, 571, 0);
INSERT INTO `_multi_item` VALUES (111, 73, 2, '|CFF0000FF(诺森德)嚎风峡湾|CFF009933', 4, 0, 0, 0, 0, 0, 0, 1263, -4141, 142, 0, 571, 0);
INSERT INTO `_multi_item` VALUES (112, 73, 2, '|CFF0000FF(诺森德)灰熊丘林|CFF009933', 4, 0, 0, 0, 0, 0, 0, 3036, -2926, 112, 0, 571, 0);
INSERT INTO `_multi_item` VALUES (113, 73, 2, '|CFF0000FF(诺森德)索拉查|CFF009933', 4, 0, 0, 0, 0, 0, 0, 5915, 4404, -92, 0, 571, 0);
INSERT INTO `_multi_item` VALUES (114, 73, 2, '|CFF0000FF(诺森德)冬拥湖|CFF009933', 4, 0, 0, 0, 0, 0, 0, 4549.78, 2261.62, 358.9, 0, 571, 0);
INSERT INTO `_multi_item` VALUES (115, 73, 5, '|cff8000FF返回主菜单|CFF009933', 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (116, 74, 2, '|CFF0000FF[熊猫人]迷踪岛|CFF009933', 4, 0, 0, 0, 0, 0, 0, 1471.67, 3466.25, 181.675, 0, 860, 0);
INSERT INTO `_multi_item` VALUES (117, 74, 2, '|CFF0000FF[熊猫人]四风谷|CFF009933', 4, 0, 0, 0, 0, 0, 0, 143.938, -296.64, 237.065, 0, 870, 0);
INSERT INTO `_multi_item` VALUES (118, 74, 2, '|CFF0000FF[熊猫人]雾纱栈道|CFF009933', 4, 0, 0, 0, 0, 0, 0, 722.391, -137.208, 330.511, 0, 870, 0);
INSERT INTO `_multi_item` VALUES (119, 74, 2, '|CFF0000FF[熊猫人]卡桑琅丛林|CFF009933', 4, 0, 0, 0, 0, 0, 0, -385.552, -632.212, 116.541, 0, 870, 0);
INSERT INTO `_multi_item` VALUES (120, 74, 2, '|CFF0000FF[熊猫人]恐惧废土|CFF009933', 4, 0, 0, 0, 0, 0, 0, -644.544, 3918.83, 0.549382, 0, 870, 0);
INSERT INTO `_multi_item` VALUES (121, 74, 2, '|CFF0000FF[熊猫人]螳螂高原|CFF009933', 4, 0, 0, 0, 0, 0, 0, 1126.88, 4038.66, 48.0521, 0, 870, 0);
INSERT INTO `_multi_item` VALUES (122, 74, 2, '|CFF0000FF[熊猫人]昆莱山|CFF009933', 4, 0, 0, 0, 0, 0, 0, 2439.29, 2441.66, 721.878, 0, 870, 0);
INSERT INTO `_multi_item` VALUES (123, 74, 2, '|CFF0000FF[熊猫人]锦绣谷|CFF009933', 4, 0, 0, 0, 0, 0, 0, 1618.63, 1977.97, 459.82, 0, 870, 0);
INSERT INTO `_multi_item` VALUES (124, 74, 2, '|CFF0000FF[熊猫人]翡翠林|CFF009933', 4, 0, 0, 0, 0, 0, 0, 1126, -721, 325, 0, 870, 0);
INSERT INTO `_multi_item` VALUES (125, 74, 5, '|cff8000FF返回主菜单|CFF009933', 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (126, 13, 2, '|CFF0000FF[14级]【经典旧世】怒焰裂谷|CFF009933', 4, 0, 0, 0, 0, 0, 0, 2.02465, -10.021, -16.1875, 0, 389, 0);
INSERT INTO `_multi_item` VALUES (127, 13, 2, '|CFF0000FF[19级]【经典旧世】死亡矿井|CFF009933', 4, 0, 0, 0, 0, 0, 0, -16.4, -383.07, 61.78, 0, 36, 0);
INSERT INTO `_multi_item` VALUES (128, 13, 2, '|CFF0000FF[22级]【经典旧世】哀嚎洞穴|CFF009933', 4, 0, 0, 0, 0, 0, 0, -161.842, 133.267, -73.8662, 0, 43, 0);
INSERT INTO `_multi_item` VALUES (129, 13, 2, '|CFF0000FF[24级]【经典旧世】影牙城堡|CFF009933', 4, 0, 0, 0, 0, 0, 0, -228.19, 2110.56, 76.89, 0, 33, 0);
INSERT INTO `_multi_item` VALUES (130, 13, 2, '|CFF0000FF[26级]【经典旧世】黑暗深渊|CFF009933', 4, 0, 0, 0, 0, 0, 0, -150.367, 102.995, -40.5558, 0, 48, 0);
INSERT INTO `_multi_item` VALUES (131, 13, 2, '|CFF0000FF[27级]【经典旧世】暴风城监狱|CFF009933', 4, 0, 0, 0, 0, 0, 0, 48.29, 0.45, -16.14, 0, 34, 0);
INSERT INTO `_multi_item` VALUES (132, 13, 2, '|CFF0000FF[31级]【经典旧世】剃刀沼泽|CFF009933', 4, 0, 0, 0, 0, 0, 0, 1943, 1544, 82, 0, 47, 0);
INSERT INTO `_multi_item` VALUES (133, 13, 2, '|CFF0000FF[33级]【经典旧世】诺莫瑞根|CFF009933', 4, 0, 0, 0, 0, 0, 0, -332.563, -3.445, -152.846, 0, 90, 0);
INSERT INTO `_multi_item` VALUES (134, 13, 2, '|CFF0000FF[40级]【经典旧世】血色修道院|CFF009933', 4, 0, 0, 0, 0, 0, 0, 2915.13, -823.63, 160.32, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (135, 13, 2, '|CFF0000FF[42级]【经典旧世】剃刀高地|CFF009933', 4, 0, 0, 0, 0, 0, 0, 2593.21, 1109.46, 51.0933, 0, 129, 0);
INSERT INTO `_multi_item` VALUES (136, 13, 2, '|CFF0000FF[45级]【经典旧世】奥达曼|CFF009933', 4, 0, 0, 0, 0, 0, 0, -227.529, 45.0098, -46.0196, 0, 70, 0);
INSERT INTO `_multi_item` VALUES (137, 13, 2, '|CFF0000FF[46级]【经典旧世】祖尔法拉克|CFF009933', 4, 0, 0, 0, 0, 0, 0, 1213, 841, 8.9, 0, 209, 0);
INSERT INTO `_multi_item` VALUES (138, 13, 2, '|CFF0000FF[49级]【经典旧世】玛拉顿|CFF009933', 4, 0, 0, 0, 0, 0, 0, 1012.7, -459.318, -43.5471, 0, 349, 0);
INSERT INTO `_multi_item` VALUES (139, 13, 2, '|CFF0000FF[53级]【经典旧世】失落的神庙|CFF009933', 4, 0, 0, 0, 0, 0, 0, -335.003, 95.39, -90.84, 0, 109, 0);
INSERT INTO `_multi_item` VALUES (140, 13, 2, '|CFF0000FF[57级]【经典旧世】黑石深渊|CFF009933', 4, 0, 0, 0, 0, 0, 0, 456.929, 34.9277, -69.3881, 0, 230, 0);
INSERT INTO `_multi_item` VALUES (141, 13, 2, '|CFF0000FF[60级]【经典旧世】通灵学院|CFF009933', 4, 0, 0, 0, 0, 0, 0, 1273.9, -2553.09, 91.81, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (142, 13, 5, '|cff8000FF返回主菜单|CFF009933', 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (143, 14, 2, '|CFF0000FF[70级]【燃烧的远征】地狱火城墙|CFF009933', 4, 0, 0, 0, 0, 0, 0, -1355.28, 1643.79, 68.3951, 0, 543, 0);
INSERT INTO `_multi_item` VALUES (144, 14, 2, '|CFF0000FF[70级]【燃烧的远征】鲜血熔炉|CFF009933', 4, 0, 0, 0, 0, 0, 0, -4.10161, 15.5609, -44.7921, 0, 542, 0);
INSERT INTO `_multi_item` VALUES (145, 14, 2, '|CFF0000FF[70级]【燃烧的远征】奴隶围栏|CFF009933', 4, 0, 0, 0, 0, 0, 0, 122.356, -130.206, -1.14206, 0, 547, 0);
INSERT INTO `_multi_item` VALUES (146, 14, 2, '|CFF0000FF[70级]【燃烧的远征】幽暗沼泽|CFF009933', 4, 0, 0, 0, 0, 0, 0, 15.5594, -21.5361, -2.75561, 0, 546, 0);
INSERT INTO `_multi_item` VALUES (147, 14, 2, '|CFF0000FF[70级]【燃烧的远征】法力陵墓|CFF009933', 4, 0, 0, 0, 0, 0, 0, 0.0191, 0.9478, -0.9543, 0, 557, 0);
INSERT INTO `_multi_item` VALUES (148, 14, 2, '|CFF0000FF[70级]【燃烧的远征】奥金尼地穴|CFF009933', 4, 0, 0, 0, 0, 0, 0, -24.2657, 0.420907, -0.1206, 0, 558, 0);
INSERT INTO `_multi_item` VALUES (149, 14, 2, '|CFF0000FF[70级]【燃烧的远征】逃离敦霍尔德|CFF009933', 4, 0, 0, 0, 0, 0, 0, 2375.55, 1178.65, 65.46, 0, 560, 0);
INSERT INTO `_multi_item` VALUES (150, 14, 2, '|CFF0000FF[70级]【燃烧的远征】塞泰克大厅|CFF009933', 4, 0, 0, 0, 0, 0, 0, -4.6811, -0.09308, 0.0062, 0, 556, 0);
INSERT INTO `_multi_item` VALUES (151, 14, 2, '|CFF0000FF[70级]【燃烧的远征】蒸汽地窖|CFF009933', 4, 0, 0, 0, 0, 0, 0, -13.8423, 6.7542, -4.2586, 0, 545, 0);
INSERT INTO `_multi_item` VALUES (152, 14, 2, '|CFF0000FF[70级]【燃烧的远征】能源舰|CFF009933', 4, 0, 0, 0, 0, 0, 0, -28.906, 0.680314, -1.81282, 0, 554, 0);
INSERT INTO `_multi_item` VALUES (153, 14, 2, '|CFF0000FF[70级]【燃烧的远征】生态船|CFF009933', 4, 0, 0, 0, 0, 0, 0, 40.0395, -28.613, -1.1189, 0, 553, 0);
INSERT INTO `_multi_item` VALUES (154, 14, 2, '|CFF0000FF[70级]【燃烧的远征】破碎大厅|CFF009933', 4, 0, 0, 0, 0, 0, 0, -19.642, 0.253695, -13.1539, 0, 540, 0);
INSERT INTO `_multi_item` VALUES (155, 14, 2, '|CFF0000FF[70级]【燃烧的远征】暗影迷宫|CFF009933', 4, 0, 0, 0, 0, 0, 0, -7.79, -0.02, -1.04, 0, 555, 0);
INSERT INTO `_multi_item` VALUES (156, 14, 2, '|CFF0000FF[70级]【燃烧的远征】禁魔监狱|CFF009933', 4, 0, 0, 0, 0, 0, 0, -1.23165, 0.014346, -0.20429, 0, 552, 0);
INSERT INTO `_multi_item` VALUES (157, 14, 2, '|CFF0000FF[70级]【燃烧的远征】开启黑暗之门|CFF009933', 4, 0, 0, 0, 0, 0, 0, -1542.67, 7115.22, 32.9, 0, 269, 0);
INSERT INTO `_multi_item` VALUES (158, 14, 2, '|CFF0000FF[70级]【燃烧的远征】魔导师平台|CFF009933', 4, 0, 0, 0, 0, 0, 0, 12886, -7335, 66, 0, 530, 0);
INSERT INTO `_multi_item` VALUES (159, 14, 5, '|cff8000FF返回主菜单|CFF009933', 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (160, 15, 2, '|CFF0000FF[80级]【巫妖王之怒】乌特加德|CFF009933', 4, 0, 0, 0, 0, 0, 0, 1216.73, -4867.08, 41.25, 0, 571, 0);
INSERT INTO `_multi_item` VALUES (161, 15, 2, '|CFF0000FF[80级]【巫妖王之怒】魔枢|CFF009933', 4, 0, 0, 0, 0, 0, 0, 3891.73, 6984.91, 69.49, 0, 571, 0);
INSERT INTO `_multi_item` VALUES (162, 15, 2, '|CFF0000FF[80级]【巫妖王之怒】艾卓尼鲁布|CFF009933', 4, 0, 0, 0, 0, 0, 0, 3678.06, 2166.39, 35.79, 0, 571, 0);
INSERT INTO `_multi_item` VALUES (163, 15, 2, '|CFF0000FF[80级]【巫妖王之怒】安卡赫特|CFF009933', 4, 0, 0, 0, 0, 0, 0, 3644.39, 2041.29, 1.78781, 0, 571, 0);
INSERT INTO `_multi_item` VALUES (164, 15, 2, '|CFF0000FF[80级]【巫妖王之怒】达克萨隆要塞|CFF009933', 4, 0, 0, 0, 0, 0, 0, 4775.8, -2035.5, 229.389, 0, 571, 0);
INSERT INTO `_multi_item` VALUES (165, 15, 2, '|CFF0000FF[80级]【巫妖王之怒】紫罗兰监狱|CFF009933', 4, 0, 0, 0, 0, 0, 0, 5680.7, 487.323, 652.418, 0, 571, 0);
INSERT INTO `_multi_item` VALUES (166, 15, 2, '|CFF0000FF[80级]【巫妖王之怒】古达克|CFF009933', 4, 0, 0, 0, 0, 0, 0, 6969.75, -4402.35, 441.58, 0, 571, 0);
INSERT INTO `_multi_item` VALUES (167, 15, 2, '|CFF0000FF[80级]【巫妖王之怒】岩石大厅|CFF009933', 4, 0, 0, 0, 0, 0, 0, 8922.09, -991.638, 1039.4, 0, 571, 0);
INSERT INTO `_multi_item` VALUES (168, 15, 2, '|CFF0000FF[80级]【巫妖王之怒】闪电大厅|CFF009933', 4, 0, 0, 0, 0, 0, 0, 9170.21, -1373.07, 1097.66, 0, 571, 0);
INSERT INTO `_multi_item` VALUES (169, 15, 2, '|CFF0000FF[80级]【巫妖王之怒】乌特加德之巅|CFF009933', 4, 0, 0, 0, 0, 0, 0, 1249.92, -4856.29, 215.92, 0, 571, 0);
INSERT INTO `_multi_item` VALUES (170, 15, 2, '|CFF0000FF[80级]【巫妖王之怒】魔环|CFF009933', 4, 0, 0, 0, 0, 0, 0, 3877.41, 6984.64, 106.32, 0, 571, 0);
INSERT INTO `_multi_item` VALUES (171, 15, 2, '|CFF0000FF[80级]【巫妖王之怒】冠军的试炼|CFF009933', 4, 0, 0, 0, 0, 0, 0, 8577.66, 791.919, 558.235, 0, 571, 0);
INSERT INTO `_multi_item` VALUES (172, 15, 2, '|CFF0000FF[80级]【巫妖王之怒】净化斯坦索姆|CFF009933', 4, 0, 0, 0, 0, 0, 0, -8756.26, -4449.63, -199.752, 0, 1, 0);
INSERT INTO `_multi_item` VALUES (173, 15, 2, '|CFF0000FF[80级]【巫妖王之怒】萨隆矿坑|CFF009933', 4, 0, 0, 0, 0, 0, 0, 439.143, 209.539, 528.709, 0, 658, 0);
INSERT INTO `_multi_item` VALUES (174, 15, 2, '|CFF0000FF[80级]【巫妖王之怒】映像大厅|CFF009933', 4, 0, 0, 0, 0, 0, 0, 5629.61, 2005.34, 869.046, 0, 571, 0);
INSERT INTO `_multi_item` VALUES (175, 15, 2, '|CFF0000FF[80级]【巫妖王之怒】灵魂熔炉|CFF009933', 4, 0, 0, 0, 0, 0, 0, 5662.16, 2014.82, 798.042, 0, 571, 0);
INSERT INTO `_multi_item` VALUES (176, 15, 5, '|cff8000FF返回主菜单|CFF009933', 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (177, 16, 2, '|CFF0000FF[85级]【大地的裂变】暮光堡垒|CFF009933', 4, 0, 0, 0, 0, 0, 0, -4887.04, -4247, 828.76, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (178, 16, 2, '|CFF0000FF[85级]【大地的裂变】祖格拉布|CFF009933', 4, 0, 0, 0, 0, 0, 0, -11916.1, -1203.99, 92.28, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (179, 16, 2, '|CFF0000FF[85级]【大地的裂变】托巴拉德|CFF009933', 4, 0, 0, 0, 0, 0, 0, 270, 1300, 170, 0, 757, 0);
INSERT INTO `_multi_item` VALUES (180, 16, 2, '|CFF0000FF[85级]【大地的裂变】永恒之井|CFF009933', 4, 0, 0, 0, 0, 0, 0, -8600.25, -4017.38, -205.54, 0, 1, 0);
INSERT INTO `_multi_item` VALUES (181, 16, 2, '|CFF0000FF[85级]【大地的裂变】时光之穴|CFF009933', 4, 0, 0, 0, 0, 0, 0, -8314.65, -4464.09, -207.82, 0, 1, 0);
INSERT INTO `_multi_item` VALUES (182, 16, 2, '|CFF0000FF[85级]【大地的裂变】起源大厅|CFF009933', 4, 0, 0, 0, 0, 0, 0, -10197.9, -1839.12, 20.12, 0, 1, 0);
INSERT INTO `_multi_item` VALUES (183, 16, 2, '|CFF0000FF[85级]【大地的裂变】黑石洞穴|CFF009933', 4, 0, 0, 0, 0, 0, 0, -7572.03, -1309.19, 245.53, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (184, 16, 2, '|CFF0000FF[85级]【大地的裂变】格瑞姆巴托|CFF009933', 4, 0, 0, 0, 0, 0, 0, -4064.24, -3451.73, 280.13, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (185, 16, 2, '|CFF0000FF[85级]【大地的裂变】火焰之地|CFF009933', 4, 0, 0, 0, 0, 0, 0, -535.91, 313.59, 115.49, 0, 720, 0);
INSERT INTO `_multi_item` VALUES (186, 16, 2, '|CFF0000FF[85级]【大地的裂变】黑石岩窟|CFF009933', 4, 0, 0, 0, 0, 0, 0, -7571, -1312, 246, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (187, 16, 2, '|CFF0000FF[85级]【大地的裂变】潮汐王座|CFF009933', 4, 0, 0, 0, 0, 0, 0, -589.89, 809.07, 245.33, 0, 643, 0);
INSERT INTO `_multi_item` VALUES (188, 16, 2, '|CFF0000FF[85级]【大地的裂变】旋云之巅|CFF009933', 4, 0, 0, 0, 0, 0, 0, -355.88, -2.78, 637.66, 0, 657, 0);
INSERT INTO `_multi_item` VALUES (189, 16, 2, '|CFF0000FF[85级]【大地的裂变】祖阿曼|CFF009933', 4, 0, 0, 0, 0, 0, 0, 121, 1759, 43, 0, 568, 0);
INSERT INTO `_multi_item` VALUES (190, 16, 2, '|CFF0000FF[85级]【大地的裂变】暮光审判|CFF009933', 4, 0, 0, 0, 0, 0, 0, 3656.65, 284.46, 52.22, 0, 940, 0);
INSERT INTO `_multi_item` VALUES (191, 16, 2, '|CFF0000FF[85级]【大地的裂变】风神王座|CFF009933', 4, 0, 0, 0, 0, 0, 0, -11916, -1265.3, 89.92, 0, 859, 0);
INSERT INTO `_multi_item` VALUES (192, 16, 2, '|CFF0000FF[85级]【大地的裂变】失落之城|CFF009933', 4, 0, 0, 0, 0, 0, 0, -1160, -850, 840, 0, 671, 0);
INSERT INTO `_multi_item` VALUES (193, 16, 2, '|CFF0000FF[85级]【大地的裂变】火源之界|CFF009933', 4, 0, 0, 0, 0, 0, 0, 1034, 333, 41.5, 0, 861, 0);
INSERT INTO `_multi_item` VALUES (194, 16, 2, '|CFF0000FF[85级]【大地的裂变】火焰之地|CFF009933', 4, 0, 0, 0, 0, 0, 0, 3995.11, -2960.74, 1003, 2, 1, 0);
INSERT INTO `_multi_item` VALUES (195, 16, 5, '|cff8000FF返回主菜单|CFF009933', 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `_multi_item` VALUES (196, 17, 2, '|CFF0000FF[90级]【熊猫人5人】风暴烈酒酿造厂|CFF009933', 4, 0, 0, 0, 0, 0, 0, -698, 1267.24, 136.5, 3.36, 870, 0);
INSERT INTO `_multi_item` VALUES (197, 17, 2, '|CFF0000FF[90级]【熊猫人5人】青龙寺|CFF009933', 4, 0, 0, 0, 0, 0, 0, 961.2, -2463.42, 180.7, 4.3, 870, 0);
INSERT INTO `_multi_item` VALUES (198, 17, 2, '|CFF0000FF[90级]【熊猫人5人】影踪禅院|CFF009933', 4, 0, 0, 0, 0, 0, 0, 3634.1, 2539.4, 769.9, 0.3, 870, 0);
INSERT INTO `_multi_item` VALUES (199, 17, 2, '|CFF0000FF[90级]【熊猫人5人】魔古山宫殿|CFF009933', 4, 0, 0, 0, 0, 0, 0, 1383.5, 447.2, 479.5, 5.5, 870, 0);
INSERT INTO `_multi_item` VALUES (200, 17, 2, '|CFF0000FF[90级]【熊猫人5人】血色大厅|CFF009933', 4, 0, 0, 0, 0, 0, 0, 2872.2, -819.8, 161.5, 3.5, 0, 0);
INSERT INTO `_multi_item` VALUES (201, 17, 2, '|CFF0000FF[90级]【熊猫人5人】围攻砮皂寺|CFF009933', 4, 0, 0, 0, 0, 0, 0, 1430.8, 5084.45, 133, 0.35, 870, 0);
INSERT INTO `_multi_item` VALUES (202, 17, 2, '|CFF0000FF[90级]【熊猫人5人】通灵学院|CFF009933', 4, 0, 0, 0, 0, 0, 0, 1265.19, -2557.7, 94.2, 0.44, 0, 0);
INSERT INTO `_multi_item` VALUES (203, 17, 2, '|CFF0000FF[90级]【熊猫人5人】残阳关|CFF009933', 4, 0, 0, 0, 0, 0, 0, 662.3, 2080.3, 371.2, 0, 870, 0);
INSERT INTO `_multi_item` VALUES (204, 17, 2, '|CFF0000FF[90级]【熊猫人5人】血色修道院|CFF009933', 4, 0, 0, 0, 0, 0, 0, 2913.3, -802.67, 160.5, 0.42, 0, 0);
INSERT INTO `_multi_item` VALUES (205, 17, 2, '|CFF0000FF[90级]【熊猫人团本】魔古山宝库|CFF009933', 4, 0, 0, 0, 0, 0, 0, 3999, 1090.7, 498, 2.2, 870, 0);
INSERT INTO `_multi_item` VALUES (206, 17, 2, '|CFF0000FF[90级]【熊猫人团本】恐惧之心|CFF009933', 4, 0, 0, 0, 0, 0, 0, 171.23, 4039.27, 256, 1.9, 870, 0);
INSERT INTO `_multi_item` VALUES (207, 17, 2, '|CFF0000FF[90级]【熊猫人团本】永春台|CFF009933', 4, 0, 0, 0, 0, 0, 0, 950.37, -61.76, 508, 0.8, 870, 0);
INSERT INTO `_multi_item` VALUES (208, 17, 2, '|CFF0000FF[90级]【熊猫人团本】雷神王座|CFF009933', 4, 0, 0, 0, 0, 0, 0, 5892.09, 6615.73, 110, 0, 1098, 0);
INSERT INTO `_multi_item` VALUES (209, 17, 2, '|CFF0000FF[90级]【熊猫人团本】决战奥格瑞玛|CFF009933', 4, 0, 0, 0, 0, 0, 0, 1440, 312, 290, 0, 1136, 0);
INSERT INTO `_multi_item` VALUES (210, 17, 2, '|CFF0000FF[90级]【熊猫人团本】雷神岛|CFF009933', 4, 0, 0, 0, 0, 0, 0, 6958.91, 5320.29, 84.25, 0, 1064, 0);
INSERT INTO `_multi_item` VALUES (211, 17, 2, '|CFF0000FF[90级]【熊猫人团本】永恒岛|CFF009933', 4, 0, 0, 0, 0, 0, 0, -648.58, -5047.98, -6.27, 0, 870, 0);
INSERT INTO `_multi_item` VALUES (212, 17, 2, '|CFF0000FF[90级]【熊猫人团本】巨兽岛|CFF009933', 4, 0, 0, 0, 0, 0, 0, 5791, 1106, 0.44, 0, 870, 0);
INSERT INTO `_multi_item` VALUES (213, 17, 2, '|cff8000FF返回主菜单|CFF009933', 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

SET FOREIGN_KEY_CHECKS = 1;
