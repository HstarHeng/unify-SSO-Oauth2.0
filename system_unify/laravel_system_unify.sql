/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 100427 (10.4.27-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : laravel_system_unify

 Target Server Type    : MySQL
 Target Server Version : 100427 (10.4.27-MariaDB)
 File Encoding         : 65001

 Date: 28/12/2023 21:57:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (9, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (10, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (11, '2016_06_01_000001_create_oauth_auth_codes_table', 1);
INSERT INTO `migrations` VALUES (12, '2016_06_01_000002_create_oauth_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (13, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1);
INSERT INTO `migrations` VALUES (14, '2016_06_01_000004_create_oauth_clients_table', 1);
INSERT INTO `migrations` VALUES (15, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1);
INSERT INTO `migrations` VALUES (16, '2019_08_19_000000_create_failed_jobs_table', 1);

-- ----------------------------
-- Table structure for oauth_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NULL DEFAULT NULL,
  `client_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_access_tokens_user_id_index`(`user_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of oauth_access_tokens
-- ----------------------------
INSERT INTO `oauth_access_tokens` VALUES ('009e12fd36a2db3346a48d6a5c088fc2b95c56b82bac5baf7b57a95e6a997732dba33a7b76b2547e', 1013, '1', NULL, '[\"view-user\"]', 0, '2023-12-27 17:32:32', '2023-12-27 17:32:32', '2024-12-26 17:32:32');
INSERT INTO `oauth_access_tokens` VALUES ('00be0f87c95d180e6c5338110b8c63323e0b5764784bf3d98ab310f0032222f23159d53974f73ff0', 1021, '1', NULL, '[\"view-user\"]', 0, '2023-12-28 15:45:40', '2023-12-28 15:45:40', '2024-12-27 15:45:40');
INSERT INTO `oauth_access_tokens` VALUES ('054a91791be3d93c8be8ce1b90ef6c931ff509f602b14b1b99b38a3a060246fdaaa46725d2333424', 1, '9ac44355-abb0-4f65-b22e-229e413009f0', NULL, '[\"view-user\"]', 0, '2023-12-04 20:55:04', '2023-12-04 20:55:04', '2023-12-19 20:55:04');
INSERT INTO `oauth_access_tokens` VALUES ('06f830eaab7a9c32681c21ca044e06a39da8d55483e73cf75090a3bbfd2f6e8d84a3562be5eac99b', 12, '1', NULL, '[\"view-user\"]', 0, '2023-12-18 14:42:41', '2023-12-18 14:42:41', '2024-12-17 14:42:41');
INSERT INTO `oauth_access_tokens` VALUES ('08cf6b141089d1c4e3b457e19c0d243a9f7af15311c421e74c61c2e8dd86209b2e731931067289eb', 1, '9ac44355-abb0-4f65-b22e-229e413009f0', NULL, '[\"view-user\"]', 0, '2023-12-04 20:51:10', '2023-12-04 20:51:10', '2023-12-19 20:51:10');
INSERT INTO `oauth_access_tokens` VALUES ('0d67ba92921204e4810c315489132aa4fb1aa9d538adf7b12e90ae22bd602c61af466adfb4c4c1f0', 1025, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', NULL, '[\"view-user\"]', 0, '2023-12-28 20:15:38', '2023-12-28 20:15:38', '2024-12-27 20:15:38');
INSERT INTO `oauth_access_tokens` VALUES ('174645341ea1ca209bef420f77a3799a1ea56202bfe04799385ad3a90db5e99a702fba164230e3f2', 1019, '1', NULL, '[\"view-user\"]', 0, '2023-12-28 15:41:20', '2023-12-28 15:41:20', '2024-12-27 15:41:20');
INSERT INTO `oauth_access_tokens` VALUES ('1acb8891ec7d6951308c3777924bc348c594796fc7f47b5ff9c22111566ede9603c8d9b0281eac15', 2, '1', NULL, '[\"view-user\"]', 0, '2023-12-13 18:51:14', '2023-12-13 18:51:14', '2024-12-12 18:51:14');
INSERT INTO `oauth_access_tokens` VALUES ('1c9cf8007f359e22204d9ef8b9314250a4756ee603c617a09a7d4045baf13c89a8fc9a3704004007', 6, '9ad3da52-4728-48d6-b471-ffad4c104f2e', NULL, '[\"view-user\"]', 0, '2023-12-12 15:29:11', '2023-12-12 15:29:11', '2023-12-27 15:29:11');
INSERT INTO `oauth_access_tokens` VALUES ('1e8b64e460d83e54aa1460dbe5acdac7a16752c7f85f1378e2f61bc2bee3bad2ea301410819525d8', 8, '9ad3da52-4728-48d6-b471-ffad4c104f2e', NULL, '[\"view-user\"]', 0, '2023-12-13 15:23:12', '2023-12-13 15:23:12', '2023-12-28 15:23:12');
INSERT INTO `oauth_access_tokens` VALUES ('1eb537fbd2d36e27b6bfeed5cf0d94b4e037f874b3451768dd09c1152baf00daa3109b708e29e45b', 8, '9ad3da52-4728-48d6-b471-ffad4c104f2e', NULL, '[\"view-user\"]', 0, '2023-12-13 15:11:18', '2023-12-13 15:11:18', '2023-12-28 15:11:18');
INSERT INTO `oauth_access_tokens` VALUES ('2114ad717de7c6bf31c205aebf5285fc7c6283e8a38c1325757ac62ba76a34d6ef38cd0bb818ef44', 8, '9ad3da52-4728-48d6-b471-ffad4c104f2e', NULL, '[\"view-user\"]', 0, '2023-12-13 15:05:50', '2023-12-13 15:05:50', '2023-12-28 15:05:50');
INSERT INTO `oauth_access_tokens` VALUES ('246320b204b8ca285998535c140c9c5adb951ffe3a1535cb59dde84cc99f1456dee527c999098644', 1023, '9ac45384-abb0-4f65-b22e-229e413009f0', NULL, '[\"view-user\"]', 0, '2023-12-28 17:28:45', '2023-12-28 17:28:45', '2024-12-27 17:28:45');
INSERT INTO `oauth_access_tokens` VALUES ('246cdb05b7cadfcda9c5961bc4b1d337e5eb9e74f9142e53284897eb30399fef66b9c630007d693f', 1009, '1', NULL, '[\"view-user\"]', 0, '2023-12-27 15:20:22', '2023-12-27 15:20:22', '2024-12-26 15:20:22');
INSERT INTO `oauth_access_tokens` VALUES ('2bcf0f41ab8c8f99103fe05b103d57ce9caad184f332d4b98f268e795259b7fc91441f9987b5ee98', 1013, '1', NULL, '[\"view-user\"]', 0, '2023-12-27 17:25:44', '2023-12-27 17:25:44', '2024-12-26 17:25:44');
INSERT INTO `oauth_access_tokens` VALUES ('2bd76ec24190b6a4852fce44b13d0e20db9f99fe20700850000846f67d0f4c7a8a18fac19e175b04', 1, '9ac44355-abb0-4f65-b22e-229e413009f0', NULL, '[]', 0, '2023-12-04 18:54:30', '2023-12-04 18:54:30', '2023-12-19 18:54:30');
INSERT INTO `oauth_access_tokens` VALUES ('2bd7d7040201c2fcc921363447c196443b17dc110b31401a877a46f834b5cefdbfb3f36f3fe407a5', 15, '1', NULL, '[\"view-user\"]', 0, '2023-12-18 15:21:58', '2023-12-18 15:21:58', '2024-12-17 15:21:58');
INSERT INTO `oauth_access_tokens` VALUES ('302afee09193f982be34dfcf1783b8ed6e757c086ef05c2b908fe9ee20374148200c71a9a24fc520', 1, '9ac44355-abb0-4f65-b22e-229e413009f0', NULL, '[\"view-user\"]', 0, '2023-12-04 22:29:47', '2023-12-04 22:29:47', '2023-12-19 22:29:47');
INSERT INTO `oauth_access_tokens` VALUES ('32f595567e1db7c65c7453bfa9944747fd4fa60a97b1d6ac9669583a7b04a737e7d3cfb84f32d347', 1025, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', NULL, '[\"view-user\"]', 0, '2023-12-28 20:14:06', '2023-12-28 20:14:06', '2024-12-27 20:14:06');
INSERT INTO `oauth_access_tokens` VALUES ('356f6ebdef0e3b653d1a719221133f232a7f5a1763288ad44b7315582bc8c2e266294d4a4c29b73d', 2, '1', NULL, '[\"view-user\"]', 0, '2023-12-13 18:50:30', '2023-12-13 18:50:30', '2024-12-12 18:50:30');
INSERT INTO `oauth_access_tokens` VALUES ('390b49bc23310100bfe1f9646945cc01ce2729a56091d44ae6fa30f7eea0375093757dd57e5f7137', 1, '1', NULL, '[\"view-user\"]', 0, '2023-12-27 14:50:28', '2023-12-27 14:50:28', '2024-12-26 14:50:28');
INSERT INTO `oauth_access_tokens` VALUES ('395e29a30c9f717d2ed860497c82cb910d02f5347e1c5f3bcdca859a21c3dc20262f1a038112dc37', 1009, '1', NULL, '[\"view-user\"]', 0, '2023-12-27 15:36:59', '2023-12-27 15:36:59', '2024-12-26 15:36:59');
INSERT INTO `oauth_access_tokens` VALUES ('3aeb4f0993f44b3a15dcf1548c63b5cebf1c4cd0eb3f764a2e0f316dfa853237c6d98c16d14129ff', 1009, '1', NULL, '[\"view-user\"]', 0, '2023-12-27 15:24:35', '2023-12-27 15:24:35', '2024-12-26 15:24:35');
INSERT INTO `oauth_access_tokens` VALUES ('3b1cf74b11cda612d1ded471539966570f51d17295d00fb4c5067e280f27f4a6b22fcfca9bdaa4a9', 1027, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', NULL, '[\"view-user\"]', 0, '2023-12-28 20:24:54', '2023-12-28 20:24:54', '2024-12-27 20:24:54');
INSERT INTO `oauth_access_tokens` VALUES ('3c508c3dc63ee572dcae33581f7d70a69c3248198d67dc586d3663bd337abe040cdb557a83bd5f31', 1009, '1', NULL, '[\"view-user\"]', 0, '2023-12-27 14:53:44', '2023-12-27 14:53:44', '2024-12-26 14:53:44');
INSERT INTO `oauth_access_tokens` VALUES ('3c5ea0ee98304c407b6fea44c299bd5b68c3f498660d03bf090fb4de56b23da3a627503f2592762b', 5, '9ad3da52-4728-48d6-b471-ffad4c104f2e', NULL, '[\"view-user\"]', 0, '2023-12-12 11:34:26', '2023-12-12 11:34:26', '2023-12-27 11:34:26');
INSERT INTO `oauth_access_tokens` VALUES ('3da933eccb1e96d14b45f699c0e667fcdc0f3078f5d76270f5fafcba15c2619619125f1f3bc065b1', 1, '9ac44355-abb0-4f65-b22e-229e413009f0', NULL, '[]', 0, '2023-12-04 19:54:49', '2023-12-04 19:54:49', '2023-12-19 19:54:49');
INSERT INTO `oauth_access_tokens` VALUES ('4042867efac7409290da4448f3296df238fd171f85432261f26066bac8d5c8724675200873057c5a', 1027, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', NULL, '[\"view-user\"]', 0, '2023-12-28 20:21:29', '2023-12-28 20:21:29', '2024-12-27 20:21:29');
INSERT INTO `oauth_access_tokens` VALUES ('43148bbcef6442be7dff0ebaf9c44c763424419ca4a5eebf82f8cff3f5a121a81078809edb6a141b', 5, '1', NULL, '[\"view-user\"]', 0, '2023-12-26 21:57:11', '2023-12-26 21:57:11', '2024-12-25 21:57:11');
INSERT INTO `oauth_access_tokens` VALUES ('4341c26f42e85bf97e173ccf4bb1638919e934cbad9f9dfa9869c8767bf2749afa8b929b11e9bf89', 1017, '1', NULL, '[\"view-user\"]', 0, '2023-12-27 16:34:32', '2023-12-27 16:34:32', '2024-12-26 16:34:32');
INSERT INTO `oauth_access_tokens` VALUES ('436334c1fdc34c5cb7d57606d93fb906ef6b80b086c2e10ab1d10c55c00e949d8d76636c0db47923', 12, '1', NULL, '[\"view-user\"]', 0, '2023-12-18 15:15:25', '2023-12-18 15:15:25', '2024-12-17 15:15:25');
INSERT INTO `oauth_access_tokens` VALUES ('4d47920993d723b7eb0603149d3321d4465314e478ed4f1648313fcf84a2ceb9bf631500ae5376e8', 1025, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', NULL, '[\"view-user\"]', 0, '2023-12-28 20:15:42', '2023-12-28 20:15:42', '2024-12-27 20:15:42');
INSERT INTO `oauth_access_tokens` VALUES ('5029dd7fdcb2d9fd1f65b2188385bec2408b65c7e9d6d8ca74be3ea6e51e55365e91ea8c7c93473f', 1027, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', NULL, '[\"view-user\"]', 0, '2023-12-28 20:18:09', '2023-12-28 20:18:09', '2024-12-27 20:18:09');
INSERT INTO `oauth_access_tokens` VALUES ('50801dd3ad4e0e129eb15f727156372f373f67acde36c269a52da34c7b17faf7608d82fc4b3827de', 1009, '1', NULL, '[\"view-user\"]', 0, '2023-12-27 15:23:02', '2023-12-27 15:23:02', '2024-12-26 15:23:02');
INSERT INTO `oauth_access_tokens` VALUES ('55865e2208c9b75fff3631559fef2a49cee8ed5a8b220607805c22b017a2cd4a60d83ddfba2340dd', 5, '1', NULL, '[\"view-user\"]', 0, '2023-12-26 21:56:40', '2023-12-26 21:56:40', '2024-12-25 21:56:40');
INSERT INTO `oauth_access_tokens` VALUES ('57e859a25861ed112123059e5c2c5243e212d57a7968bd5ade21a9d61351f4713d70b3a6f32b4098', 1009, '1', NULL, '[\"view-user\"]', 0, '2023-12-27 15:34:49', '2023-12-27 15:34:49', '2024-12-26 15:34:49');
INSERT INTO `oauth_access_tokens` VALUES ('5b2da9ccbc0a7f8ba14d4146160d99712fd91eca069fc36bf7a9018b1e0978675f5c437f54838856', 1017, '1', NULL, '[\"view-user\"]', 0, '2023-12-27 16:34:19', '2023-12-27 16:34:19', '2024-12-26 16:34:19');
INSERT INTO `oauth_access_tokens` VALUES ('5cf249a457a53a545085af5e07e0736219c70cdae8845a2648eeadd20a899345cbc380901a1f1d97', 1020, '1', NULL, '[\"view-user\"]', 0, '2023-12-27 22:21:28', '2023-12-27 22:21:28', '2024-12-26 22:21:28');
INSERT INTO `oauth_access_tokens` VALUES ('6bd63bfc73abd309591cbb3d818f289204e847e82405ab7f72585191d02a682804a7e727b327b187', 1019, '1', NULL, '[\"view-user\"]', 0, '2023-12-28 15:41:17', '2023-12-28 15:41:17', '2024-12-27 15:41:17');
INSERT INTO `oauth_access_tokens` VALUES ('72567abf5dc26c6ab56217e319c795930b93e8e01ee4996d72ab85cae47a957fed40ecf03f964594', 1020, '1', NULL, '[\"view-user\"]', 0, '2023-12-27 22:01:18', '2023-12-27 22:01:18', '2024-12-26 22:01:18');
INSERT INTO `oauth_access_tokens` VALUES ('7345e8c7f35a8c3228f075354449fb2bf2403b0a0d89d7221f6225ceb6b660a027f466d66a143cba', 1009, '1', NULL, '[\"view-user\"]', 0, '2023-12-27 15:54:22', '2023-12-27 15:54:22', '2024-12-26 15:54:22');
INSERT INTO `oauth_access_tokens` VALUES ('735c6e371277a3a4d39e76138b5fc2c68f5c7523d6d18e825a1153357acbbce156e1d891cdc0ff69', 1009, '1', NULL, '[\"view-user\"]', 0, '2023-12-27 15:26:58', '2023-12-27 15:26:58', '2024-12-26 15:26:58');
INSERT INTO `oauth_access_tokens` VALUES ('73af41c0a2f0ac921e11ec55983af4bd040362fbdd1a80e7fecffb2c72f12c640a2e22643bd35585', 4, '9ac44355-abb0-4f65-b22e-229e413009f0', NULL, '[\"view-user\"]', 0, '2023-12-11 18:34:32', '2023-12-11 18:34:32', '2023-12-26 18:34:32');
INSERT INTO `oauth_access_tokens` VALUES ('73dc9e454f41b594dbe7dc77c19d73df354f0dbcd63c686f3bd6c58e84931c55eded357e2369d5f1', 1023, '9ac45384-abb0-4f65-b22e-229e413009f0', NULL, '[\"view-user\"]', 0, '2023-12-28 17:28:50', '2023-12-28 17:28:50', '2024-12-27 17:28:50');
INSERT INTO `oauth_access_tokens` VALUES ('74f37a6d74e334c2c816740cf8d25650a36b82f28052fdf1320ca2af3ae9d96f44a580662909f4f6', 1027, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', NULL, '[\"view-user\"]', 0, '2023-12-28 20:26:59', '2023-12-28 20:26:59', '2024-12-27 20:26:59');
INSERT INTO `oauth_access_tokens` VALUES ('75684ac1264cabe4fb601efbf8e709e31a024f0094e17ae2875c7c190d38cd2082b8187a69d52d99', 15, '1', NULL, '[\"view-user\"]', 0, '2023-12-18 15:19:37', '2023-12-18 15:19:37', '2024-12-17 15:19:37');
INSERT INTO `oauth_access_tokens` VALUES ('79862aa27c5ac0308d07fb6676d4841f40dce94ad99a972d71335e7de4d103ca652963b72f3e8e3b', 1009, '1', NULL, '[\"view-user\"]', 0, '2023-12-27 15:52:32', '2023-12-27 15:52:32', '2024-12-26 15:52:32');
INSERT INTO `oauth_access_tokens` VALUES ('7a3d4190260eb615487a67ecc60350ffaf71e363e02ee8ee73f96d12066147295eb10b2740aa186f', 1009, '1', NULL, '[\"view-user\"]', 0, '2023-12-27 15:45:04', '2023-12-27 15:45:04', '2024-12-26 15:45:03');
INSERT INTO `oauth_access_tokens` VALUES ('7c04c77fa46519e6e3eed4ad4e4584f35bfe7a4aeb74b508d78af50f43957ad8a17e6f9399dc188a', 1, '9ac44355-abb0-4f65-b22e-229e413009f0', NULL, '[\"view-user\"]', 0, '2023-12-04 22:56:46', '2023-12-04 22:56:46', '2023-12-19 22:56:46');
INSERT INTO `oauth_access_tokens` VALUES ('7c4d506d57927982502f1944157625e6b30542f0f85fe289d703cb36e413d96939fbe44eb07decd8', 1016, '1', NULL, '[\"view-user\"]', 0, '2023-12-27 16:32:25', '2023-12-27 16:32:25', '2024-12-26 16:32:25');
INSERT INTO `oauth_access_tokens` VALUES ('7f1b33b37ba773b6d8dcdedcbeaca10bda64697537eecb624d68a70d972f39655099f9100292ca4c', 1009, '1', NULL, '[\"view-user\"]', 0, '2023-12-27 15:36:18', '2023-12-27 15:36:18', '2024-12-26 15:36:18');
INSERT INTO `oauth_access_tokens` VALUES ('80a830905f3edfe9dddf3bd33e585f4843aab61c8c8fb9939c03b241d49f1b50d875ebad8bd7afb6', 1, '9ac44355-abb0-4f65-b22e-229e413009f0', NULL, '[\"view-user\"]', 0, '2023-12-04 20:31:11', '2023-12-04 20:31:11', '2023-12-19 20:31:11');
INSERT INTO `oauth_access_tokens` VALUES ('89afe75162c78abe311d86635062a471e121c5ae41c47eb67fa864dbc38b89e3f42f84562ddced80', 1, '9ac44355-abb0-4f65-b22e-229e413009f0', NULL, '[]', 0, '2023-12-04 19:51:30', '2023-12-04 19:51:30', '2023-12-19 19:51:30');
INSERT INTO `oauth_access_tokens` VALUES ('8e35c549199d9c1e20d7fd68fe5aa67245587ef7fce787885f72ad7422faaee2d6b59b8642453825', 4, '9ac44355-abb0-4f65-b22e-229e413009f0', NULL, '[\"view-user\"]', 0, '2023-12-11 18:31:19', '2023-12-11 18:31:19', '2023-12-26 18:31:19');
INSERT INTO `oauth_access_tokens` VALUES ('8f5762f535e5e665eb49fd9ac5ade7c4937e3000f9435627845a03243ae63ceeb0fa4b4c2b39eb12', 1027, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', NULL, '[\"view-user\"]', 0, '2023-12-28 20:24:13', '2023-12-28 20:24:13', '2024-12-27 20:24:13');
INSERT INTO `oauth_access_tokens` VALUES ('918eb78f4da34dd3a63dc17a8a206fd2e4d770bde143b8ad7f8710b504a86500f3ca2d02135405f2', 11, '1', NULL, '[\"view-user\"]', 0, '2023-12-18 15:16:29', '2023-12-18 15:16:29', '2024-12-17 15:16:29');
INSERT INTO `oauth_access_tokens` VALUES ('9305add0959a19fec304e398fdf8337be1bbfb5fdfd398f52727524419010a6ee2db9cda269fa926', 1, '9ac44355-abb0-4f65-b22e-229e413009f0', NULL, '[]', 0, '2023-12-04 19:56:41', '2023-12-04 19:56:41', '2023-12-19 19:56:41');
INSERT INTO `oauth_access_tokens` VALUES ('9b6344cd2f8f0cf2185e1cce0cd6f8490827a2b3467128ccf52bddaf54064333116bc93cd915c1aa', 1027, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', NULL, '[\"view-user\"]', 0, '2023-12-28 20:26:45', '2023-12-28 20:26:45', '2024-12-27 20:26:45');
INSERT INTO `oauth_access_tokens` VALUES ('9ce2113f945e2c5a843b2477daefe47de4579d9df8dd2b6d9253a2362fbd218ec428f2787010ba06', 1010, '1', NULL, '[\"view-user\"]', 0, '2023-12-27 16:07:26', '2023-12-27 16:07:26', '2024-12-26 16:07:26');
INSERT INTO `oauth_access_tokens` VALUES ('a452018503b20067e2ba0846451655b46e1a7230fcb0f4a9b1f89cf72c896a5d79e7f8c23b7c33af', 1019, '1', NULL, '[\"view-user\"]', 0, '2023-12-28 15:43:04', '2023-12-28 15:43:04', '2024-12-27 15:43:04');
INSERT INTO `oauth_access_tokens` VALUES ('a4b37e6cc0b11ef27ae337b622a4ae8abe8b43f5e53538930b8c0aa36d54fa58a8a96757aac76b83', 1012, '1', NULL, '[\"view-user\"]', 0, '2023-12-27 16:38:27', '2023-12-27 16:38:27', '2024-12-26 16:38:27');
INSERT INTO `oauth_access_tokens` VALUES ('a5128c8242c2caf799cd8acef80ffb4eb39a708018cdfa6be2d676f3f83fce575eb2c7a49340b6e3', 1010, '1', NULL, '[\"view-user\"]', 0, '2023-12-27 16:07:38', '2023-12-27 16:07:38', '2024-12-26 16:07:38');
INSERT INTO `oauth_access_tokens` VALUES ('a5946a6b20468dfba2ea8834c0e9064fd0fc5ed6d7c4373a03d36639e7c34128dc8a7ecc261b8f6b', 1018, '1', NULL, '[\"view-user\"]', 0, '2023-12-27 17:38:04', '2023-12-27 17:38:04', '2024-12-26 17:38:04');
INSERT INTO `oauth_access_tokens` VALUES ('a5ed889465994b53a26c8e91e5f49f0efaf0f861a2eff67cdbd1722bb61ef8ff5ae30e3dd8174313', 1027, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', NULL, '[\"view-user\"]', 0, '2023-12-28 20:26:39', '2023-12-28 20:26:39', '2024-12-27 20:26:39');
INSERT INTO `oauth_access_tokens` VALUES ('a8952f5075f5fab548d33d83c393018fd5f42497604a2871fca06701f01219ae74f6a609f6501980', 1027, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', NULL, '[\"view-user\"]', 0, '2023-12-28 20:16:28', '2023-12-28 20:16:28', '2024-12-27 20:16:28');
INSERT INTO `oauth_access_tokens` VALUES ('a8d0737c31dea150d8930e25667db1fbae443c8b098c42d2d3611f28c7a6d2e030734dbe16a6d0e4', 1009, '1', NULL, '[\"view-user\"]', 0, '2023-12-27 14:52:59', '2023-12-27 14:52:59', '2024-12-26 14:52:59');
INSERT INTO `oauth_access_tokens` VALUES ('a9be03ea6b81be268897d10022a7a6b29797c829c0f6419f314bd240e9d178737b50a1b7c24d7b5f', 14, '1', NULL, '[\"view-user\"]', 0, '2023-12-26 15:07:29', '2023-12-26 15:07:29', '2024-12-25 15:07:29');
INSERT INTO `oauth_access_tokens` VALUES ('ad03441eaff9d8bb5ef960edef791aaabd8acb3d323df693e85a66de289185cff3dcbafc19e1246e', 1, '9ac44355-abb0-4f65-b22e-229e413009f0', NULL, '[]', 0, '2023-12-04 19:51:38', '2023-12-04 19:51:38', '2023-12-19 19:51:38');
INSERT INTO `oauth_access_tokens` VALUES ('af2be1b9b58bb8664b5004a1f78a01005266d354532c6bdbefc57c1e2629063a3ef98020c6b4ee4b', 1009, '1', NULL, '[\"view-user\"]', 0, '2023-12-27 15:53:33', '2023-12-27 15:53:33', '2024-12-26 15:53:33');
INSERT INTO `oauth_access_tokens` VALUES ('b0a66bca9fc68146416deac0edf8f40c7c2289d0da2b8b26543e714c1a446a8f7340f6ed775b59ba', 1012, '1', NULL, '[\"view-user\"]', 0, '2023-12-27 16:38:51', '2023-12-27 16:38:51', '2024-12-26 16:38:51');
INSERT INTO `oauth_access_tokens` VALUES ('b26454d3015a75ee9ee7405136b4bd95d2112d97690af5e70cbe0d5ac9f540183a1396e6394fbdcb', 3, '9ac44355-abb0-4f65-b22e-229e413009f0', NULL, '[\"view-user\"]', 0, '2023-12-06 18:11:26', '2023-12-06 18:11:26', '2023-12-21 18:11:26');
INSERT INTO `oauth_access_tokens` VALUES ('b60be4a43b6a08a092433df3d49c79b9ccbd58d5e7e5fdf65e174b54e501c952410ac1587793e95a', 1022, '1', NULL, '[\"view-user\"]', 0, '2023-12-28 12:12:13', '2023-12-28 12:12:13', '2024-12-27 12:12:13');
INSERT INTO `oauth_access_tokens` VALUES ('b6bef3697b30632292c23551c74bf0d2a19b5146c686c3c0843295a95a62019eb9e1d96690c1a119', 1014, '1', NULL, '[\"view-user\"]', 0, '2023-12-27 17:34:22', '2023-12-27 17:34:22', '2024-12-26 17:34:22');
INSERT INTO `oauth_access_tokens` VALUES ('bc6e4fedc18f0ff8bef09a1e703de8d0a9a897867974e21aa02fc2f998b6e185496b6a8abbae5e3b', 1009, '1', NULL, '[\"view-user\"]', 0, '2023-12-27 15:51:19', '2023-12-27 15:51:19', '2024-12-26 15:51:19');
INSERT INTO `oauth_access_tokens` VALUES ('bfb349a2106c24a02720b5ca2c810c402120abddf0e0136fc9bc411f17282988cd3ad69c28345c11', 1027, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', NULL, '[\"view-user\"]', 0, '2023-12-28 20:17:10', '2023-12-28 20:17:10', '2024-12-27 20:17:10');
INSERT INTO `oauth_access_tokens` VALUES ('c14f1bb986e7d390d44f4f1c4d4f2f2a2071bbb81ebe0fc3bdf3435518df051a61e5b33fd3ad6348', 1022, '1', NULL, '[\"view-user\"]', 0, '2023-12-28 13:32:46', '2023-12-28 13:32:46', '2024-12-27 13:32:46');
INSERT INTO `oauth_access_tokens` VALUES ('c219d535d66b7febf0564a4b84e360400394e82a220dab9ff228e95c56ae37ecb922505467122abb', 1, '1', NULL, '[\"view-user\"]', 0, '2023-12-27 14:50:39', '2023-12-27 14:50:39', '2024-12-26 14:50:39');
INSERT INTO `oauth_access_tokens` VALUES ('c262fa90f7bc929c6e8161238093279ae6e280239b37fe424247323f2e3b4fc058b3a91cb26ea322', 1, '9ac44355-abb0-4f65-b22e-229e413009f0', NULL, '[]', 0, '2023-12-04 19:51:05', '2023-12-04 19:51:05', '2023-12-19 19:51:05');
INSERT INTO `oauth_access_tokens` VALUES ('c3a80b2f1e733763d595c0b9310a0e46a8b8f39d8a5fe200014c961cef7753f2fb840cc38e1460ad', 1022, '1', NULL, '[\"view-user\"]', 0, '2023-12-28 15:40:01', '2023-12-28 15:40:01', '2024-12-27 15:40:01');
INSERT INTO `oauth_access_tokens` VALUES ('c5fc76e9c71c4e68c7e452f5907c3e885fa238004b6edd7b514413c27da45eb8533fec3763e241f6', 12, '1', NULL, '[\"view-user\"]', 0, '2023-12-18 14:42:46', '2023-12-18 14:42:46', '2024-12-17 14:42:46');
INSERT INTO `oauth_access_tokens` VALUES ('c6e43480fbd7061692e2ea33bb3b75ae436c2ab4b056b849f808bd66e5905f7293b54474e8389331', 1009, '1', NULL, '[\"view-user\"]', 0, '2023-12-27 15:47:04', '2023-12-27 15:47:04', '2024-12-26 15:47:04');
INSERT INTO `oauth_access_tokens` VALUES ('c73eeb0f495ebaec3786e91e4371bccfd95a07e52659e614845fbc9eba454dadd77da5c6370dbf05', 1, '9ac44355-abb0-4f65-b22e-229e413009f0', NULL, '[\"view-user\"]', 0, '2023-12-04 22:37:10', '2023-12-04 22:37:10', '2023-12-19 22:37:10');
INSERT INTO `oauth_access_tokens` VALUES ('ced1df8913a54f494f44401d2668187cdb479d886cb4edccdba6eee8efa93d31970af96b8bee0036', 1027, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', NULL, '[\"view-user\"]', 0, '2023-12-28 20:19:05', '2023-12-28 20:19:05', '2024-12-27 20:19:05');
INSERT INTO `oauth_access_tokens` VALUES ('d201efe3b822154cfe5d173efad7c1bf14eaf34088525fca29d7a16555e4c407d3b58d187fa949c3', 1027, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', NULL, '[\"view-user\"]', 0, '2023-12-28 20:16:57', '2023-12-28 20:16:57', '2024-12-27 20:16:57');
INSERT INTO `oauth_access_tokens` VALUES ('d24e4243ad9fbd6c55cd743278c5bd65b727c80fb902be015a4aa8c2855bf2f043a52821576d1cd1', 1024, '9ac45384-abb0-4f65-b22e-229e413009f0', NULL, '[\"view-user\"]', 0, '2023-12-28 17:29:37', '2023-12-28 17:29:37', '2024-12-27 17:29:37');
INSERT INTO `oauth_access_tokens` VALUES ('d4323b089bda3c7a48af715e941fc3f1b80c5ee8850ce76009348bf02319a6014baf033269ba224e', 12, '1', NULL, '[\"view-user\"]', 0, '2023-12-18 14:42:24', '2023-12-18 14:42:24', '2024-12-17 14:42:24');
INSERT INTO `oauth_access_tokens` VALUES ('d564d7b1e98bbc5ad2126e1427fcf691ff6426f302adee34ab467e5f996441a202e749bda9666950', 1027, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', NULL, '[\"view-user\"]', 0, '2023-12-28 20:17:36', '2023-12-28 20:17:36', '2024-12-27 20:17:36');
INSERT INTO `oauth_access_tokens` VALUES ('d98e4c9578aa83ac5ae7e4b1812285c0cd0c0bb8583683ec5b7406e2df77985bf9c66b1e8518c5f3', 1, '9ac44355-abb0-4f65-b22e-229e413009f0', NULL, '[]', 0, '2023-12-04 18:02:26', '2023-12-04 18:02:26', '2023-12-19 18:02:26');
INSERT INTO `oauth_access_tokens` VALUES ('dcce75fc7894297dfaf96472452193f39818c4a51c93d88c72e540c107542a9012ccbdf5dc49b8e3', 1012, '1', NULL, '[\"view-user\"]', 0, '2023-12-27 16:39:03', '2023-12-27 16:39:03', '2024-12-26 16:39:03');
INSERT INTO `oauth_access_tokens` VALUES ('de04cd0d6a72c18b3325a3d8b5d2b10eff1d0bfef166fe9a3d6b04509c4f622fa845605031a22189', 1027, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', NULL, '[\"view-user\"]', 0, '2023-12-28 20:16:00', '2023-12-28 20:16:00', '2024-12-27 20:16:00');
INSERT INTO `oauth_access_tokens` VALUES ('df1444f9a3d0159f786a94874ff106bf1eb4d07693a315f9cd7a4989fcc3424359ad967e43f7868d', 1022, '1', NULL, '[\"view-user\"]', 0, '2023-12-28 13:32:41', '2023-12-28 13:32:41', '2024-12-27 13:32:41');
INSERT INTO `oauth_access_tokens` VALUES ('df591bad1693a441ce10d351d8487c9e8ed84756739faacad1ec3937d8d6643439f644ae4c062f88', 1009, '1', NULL, '[\"view-user\"]', 0, '2023-12-27 15:45:34', '2023-12-27 15:45:34', '2024-12-26 15:45:34');
INSERT INTO `oauth_access_tokens` VALUES ('df8305a64ac56683c4707b9cf73abdfdc04eaf5de37841758f010aedb355ef1aaef7c697a7a3e1e8', 1015, '1', NULL, '[\"view-user\"]', 0, '2023-12-27 16:26:02', '2023-12-27 16:26:02', '2024-12-26 16:26:02');
INSERT INTO `oauth_access_tokens` VALUES ('e250bdcc2a86e4795ccff971bc33f20bf166502bf1436591ab47bd6d52b30beb2c6f5428d1d7f778', 4, '9ac44355-abb0-4f65-b22e-229e413009f0', NULL, '[\"view-user\"]', 0, '2023-12-11 18:35:35', '2023-12-11 18:35:35', '2023-12-26 18:35:35');
INSERT INTO `oauth_access_tokens` VALUES ('e420cf2b108bc940bfe01506ded6097059eae46efa78fa1ffc1bae4a8f8e61c2f064b90695bb2f24', 1009, '1', NULL, '[\"view-user\"]', 0, '2023-12-27 15:35:40', '2023-12-27 15:35:40', '2024-12-26 15:35:40');
INSERT INTO `oauth_access_tokens` VALUES ('e66192a4db3df65522749336fa2daf764dad9f3063d90c71add04d9745abde66d1965a421725186e', 1012, '1', NULL, '[\"view-user\"]', 0, '2023-12-27 16:37:37', '2023-12-27 16:37:37', '2024-12-26 16:37:37');
INSERT INTO `oauth_access_tokens` VALUES ('ea3ca53ffeed85aca71d6aaab87eacfbf395e9183383f9ac983d5df81bd0def99f5390e7b4ce983e', 2, '1', NULL, '[\"view-user\"]', 0, '2023-12-27 10:40:15', '2023-12-27 10:40:15', '2024-12-26 10:40:15');
INSERT INTO `oauth_access_tokens` VALUES ('eb0f62deea2dc7239d2dc6dd9c25485cc713f922f81d83c7ad6d0b94e7a0b14875997293c9d539b4', 1, '1', NULL, '[\"view-user\"]', 0, '2023-12-27 14:42:45', '2023-12-27 14:42:45', '2024-12-26 14:42:45');
INSERT INTO `oauth_access_tokens` VALUES ('ebd6347a2a8f6cd85ed42b8800f7d05aed8d0da69d895c172fa27bf6b5e39719a26e561562034309', 1009, '1', NULL, '[\"view-user\"]', 0, '2023-12-27 15:51:48', '2023-12-27 15:51:48', '2024-12-26 15:51:48');
INSERT INTO `oauth_access_tokens` VALUES ('f45eec04b57ff9c64095f2b18767f9faa64bdd97363a1571dcbee7158171303edf785e5cf2dad90f', 1011, '1', NULL, '[\"view-user\"]', 0, '2023-12-27 16:23:31', '2023-12-27 16:23:31', '2024-12-26 16:23:31');
INSERT INTO `oauth_access_tokens` VALUES ('f4b401af9216e080a7e034bbf11a4281f288d496d37c4d066df58c4ab322cb5a61a806262bf5b865', 1011, '1', NULL, '[\"view-user\"]', 0, '2023-12-27 16:21:02', '2023-12-27 16:21:02', '2024-12-26 16:21:02');
INSERT INTO `oauth_access_tokens` VALUES ('f5bc96b9e069a84370b363d00eac4873938d934c7689d35ed33f221327a1a5f3e121f9a405daedbb', 1009, '1', NULL, '[\"view-user\"]', 0, '2023-12-27 15:47:44', '2023-12-27 15:47:44', '2024-12-26 15:47:44');
INSERT INTO `oauth_access_tokens` VALUES ('f8e6503a41137b9c3285f7fe331ce2d44efab37086b61059ef440699b5a95522f366fe8a36b11c3f', 8, '9ad3da52-4728-48d6-b471-ffad4c104f2e', NULL, '[\"view-user\"]', 0, '2023-12-13 15:11:37', '2023-12-13 15:11:37', '2023-12-28 15:11:37');
INSERT INTO `oauth_access_tokens` VALUES ('fb7a7e4dee46320df96956c2c6560ade586c2db86b977a94b34715acfad4e61ae76eb1bd5bd8fa75', 1022, '1', NULL, '[\"view-user\"]', 0, '2023-12-28 15:39:56', '2023-12-28 15:39:56', '2024-12-27 15:39:56');
INSERT INTO `oauth_access_tokens` VALUES ('fd8198edd3b800cf258778c6ffa869209b430c6129b64d46d3e42122edd219a61e32a51fbe6d4fe9', 5, '9ad3da52-4728-48d6-b471-ffad4c104f2e', NULL, '[\"view-user\"]', 0, '2023-12-12 11:34:30', '2023-12-12 11:34:30', '2023-12-27 11:34:30');
INSERT INTO `oauth_access_tokens` VALUES ('ff5874c74376763fa76a36364368742254bda5bf738b9f0acf6d842ce005d186511308b56d653022', 5, '9ad3da52-4728-48d6-b471-ffad4c104f2e', NULL, '[\"view-user\"]', 0, '2023-12-12 15:25:29', '2023-12-12 15:25:29', '2023-12-27 15:25:29');

-- ----------------------------
-- Table structure for oauth_auth_codes
-- ----------------------------
DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE `oauth_auth_codes`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `client_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_auth_codes_user_id_index`(`user_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of oauth_auth_codes
-- ----------------------------
INSERT INTO `oauth_auth_codes` VALUES ('0012727f293da898a0d0cfa75662351c0dd81c76323a8eb2f58af6ef2c61275b9c2e6ac867349f83', 8, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:52:23');
INSERT INTO `oauth_auth_codes` VALUES ('007e06b379e44e64150306d418ba18e808c8b016981bdf0bcbd5e2005951e0e1ae5d14d8432ed0e3', 1, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-05 18:20:34');
INSERT INTO `oauth_auth_codes` VALUES ('007fea37af8ad06286de6b04671ca768adc7afcfa54bcb1ff0d14d01f95eeae0cf82ff9557d9d77f', 8, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-13 15:13:28');
INSERT INTO `oauth_auth_codes` VALUES ('00e4704f90c555004c6d80c8e9f62d5c09dc4c1a3039fd2d0cc60a40dff367e6ee3bbeafc3c3712c', 2, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:43:57');
INSERT INTO `oauth_auth_codes` VALUES ('01142dbb2a20928c5d0ace56c716e46d6b6ef59952a69e60f165f129ba9897d2310c6613dc5b976d', 5, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:35:14');
INSERT INTO `oauth_auth_codes` VALUES ('011ed5c41cde6ea8f6b1b2fc3dd46043f956f66bebe2958c59b144bbeab87e4fb58c62a1b694c429', 2, '1', '[\"view-user\"]', 1, '2023-12-13 18:32:16');
INSERT INTO `oauth_auth_codes` VALUES ('018a78d5e23181a1ef71b11c23d2327e1fc71c5af830b823a05463120902a41cff714c8dc0776443', 1017, '1', '[\"view-user\"]', 1, '2023-12-27 16:52:04');
INSERT INTO `oauth_auth_codes` VALUES ('01a96af744007084d11f26779273c161e5bf1027d2d52fa098ad9366cb180a0c7068c069d9d2bee3', 3, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-06 18:33:29');
INSERT INTO `oauth_auth_codes` VALUES ('0227bf91d37726766a8a2f2ed8113896a24f956f28051f692162f2173f6bffc23e2293d100987082', 1022, '1', '[\"view-user\"]', 1, '2023-12-28 11:23:40');
INSERT INTO `oauth_auth_codes` VALUES ('0282151b4643023801054abc4a4a02883e4810ada896f7de203560552c12e6a5e97cbe9e6de9915e', 16, '1', '[\"view-user\"]', 1, '2023-12-26 15:18:31');
INSERT INTO `oauth_auth_codes` VALUES ('028e3bb18e8074013121d4ae7f7f24a77f85018f04ba3d17cdf801d572c9d05f26b1bd841b86ae8c', 1, '9ac44355-abb0-4f65-b22e-229e413009f0', '[]', 1, '2023-12-04 20:01:37');
INSERT INTO `oauth_auth_codes` VALUES ('02b55edca89e8e262ded6154c313394000d650a4306d2933a931479aaf05c8b0f2155a7742e856cc', 1009, '1', '[\"view-user\"]', 1, '2023-12-27 15:57:03');
INSERT INTO `oauth_auth_codes` VALUES ('02d5096f39611176fc482465dac476e9578f9f2e2ac4ac9b95a38112e495ba3db882a1afd3f4bc56', 1016, '1', '[\"view-user\"]', 1, '2023-12-27 16:43:06');
INSERT INTO `oauth_auth_codes` VALUES ('02e7c9a10cd78c5b924910ecb8e91f4d8f6c763261f703055516c739aa380679baca2009ea4bb365', 5, '1', '[\"view-user\"]', 1, '2023-12-27 10:51:46');
INSERT INTO `oauth_auth_codes` VALUES ('0376d2e3d0774a1ac494158f8db787a0bb97b3ef7cc70f135f9d9f1b2f113497076ba5f732d5b379', 1010, '1', '[\"view-user\"]', 1, '2023-12-27 16:17:26');
INSERT INTO `oauth_auth_codes` VALUES ('0381ce17e134be399ac040e59e48f8dda97834ed57ba245ee8b949e712962df9d1c2cf8fbc833590', 3, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-06 18:22:43');
INSERT INTO `oauth_auth_codes` VALUES ('03a36b3e64e07145086bd090a9653d1c4e94be63b34fe4173a3735f9760d5d741e9ec63841b70a9d', 16, '1', '[\"view-user\"]', 1, '2023-12-26 12:18:56');
INSERT INTO `oauth_auth_codes` VALUES ('03da60e5d87a3c84d03ad62697774e5558aa577d045c81de7dfad38aa90c3a8f113a9047caf70b5d', 14, '1', '[\"view-user\"]', 1, '2023-12-26 12:00:50');
INSERT INTO `oauth_auth_codes` VALUES ('0401c147be854b09e9bd4d34ec39ff8493a8168bf4653626077bee56ab5f0b3599057288480fde81', 1, '9ac44355-abb0-4f65-b22e-229e413009f0', '[]', 1, '2023-12-04 20:01:30');
INSERT INTO `oauth_auth_codes` VALUES ('0529f8bf619834a237b5914be40c348f2eff7ea22547fd9b5ee0ac24b86aaf5094ae49142a696b64', 3, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-06 18:28:45');
INSERT INTO `oauth_auth_codes` VALUES ('064e0606e7dd5158a43f21ce396883c72450d73b1a76357c8d93869c7b1fb69d0c27f08a07fe824f', 1025, '9ac45384-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 0, '2023-12-28 19:08:21');
INSERT INTO `oauth_auth_codes` VALUES ('065c0e170e4387d1f30d3a033c7efa04627cee7470a9c2f5bc3eebc4f76c8e3f5e0640d307bac8d1', 1021, '1', '[\"view-user\"]', 1, '2023-12-28 15:57:12');
INSERT INTO `oauth_auth_codes` VALUES ('06c97745e0c9c778bf2a179093f568dd050c340d803de476d06c5abfdee6b5899b458288004de352', 16, '1', '[\"view-user\"]', 1, '2023-12-26 15:13:18');
INSERT INTO `oauth_auth_codes` VALUES ('0712b012b1fa12154502031204924106f16ac5a9c6b278b2a8d22ca7ebec30b961fe2570b4bcedcf', 8, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 21:38:42');
INSERT INTO `oauth_auth_codes` VALUES ('078d91c1ba4da2d0c74c1a18770524f932a3556aa272b670e10ccfeae4b1b477f32208e817e01e9d', 1013, '1', '[\"view-user\"]', 1, '2023-12-27 17:35:43');
INSERT INTO `oauth_auth_codes` VALUES ('084c27ca92adb71a6dc9ee3614eb870a3583ad6d35bb5e52f15f28cd7030a72695d270e9530d108f', 1019, '1', '[\"view-user\"]', 1, '2023-12-27 18:06:20');
INSERT INTO `oauth_auth_codes` VALUES ('0947341e2bfd3a7579984fa1e82f13a31590c76a7519953950402a4679d8bedb4a095d46d4999e6d', 15, '1', '[\"view-user\"]', 1, '2023-12-26 15:14:10');
INSERT INTO `oauth_auth_codes` VALUES ('0954626a0a1968c41e64a4e53a57088b34cb7e1a5c5154a728c5fc191fe1f9a627f870cb26197de5', 2, '1', '[\"view-user\"]', 1, '2023-12-13 19:00:29');
INSERT INTO `oauth_auth_codes` VALUES ('09e09397eda06ba17f3bed8d9ce28e87eee738134564269f00624d736206e8561a1ec2010171a105', 2, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:32:23');
INSERT INTO `oauth_auth_codes` VALUES ('09e13a08bab75f46d0637f6afec4203ef3adb2e22e747bccabbecc1833210ca0bcc2f9f1e93c22b6', 1025, '9ac45384-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 0, '2023-12-28 19:06:39');
INSERT INTO `oauth_auth_codes` VALUES ('0a5c22367bb128d78436ec8f28e74b6863c65897780a7d1958111f5e7dff3f5411817d93b776d8c3', 1017, '1', '[\"view-user\"]', 1, '2023-12-27 16:52:53');
INSERT INTO `oauth_auth_codes` VALUES ('0a5c45ebc906117695ed538f8a355a6a135965657d41375244ffd2f426fedcc0974557259cf61e99', 5, '1', '[\"view-user\"]', 1, '2023-12-26 22:07:10');
INSERT INTO `oauth_auth_codes` VALUES ('0a67933d7fc400b0a489243ffb606323187ea46cfe9892d1c2a5c8b1d5f032689f94b1c7a1c7f888', 1, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-04 20:41:10');
INSERT INTO `oauth_auth_codes` VALUES ('0b3e5251aeefb8632e8e14879c490963cdaa95edd3cc53fafe91d29396051e4197f7443c1e5cdc39', 15, '1', '[\"view-user\"]', 1, '2023-12-26 11:53:14');
INSERT INTO `oauth_auth_codes` VALUES ('0b9503766674950543874f05b6f6d468ab2112abe5c02575704e961c9e4824fe50b05f466420be37', 12, '1', '[\"view-user\"]', 1, '2023-12-18 14:46:16');
INSERT INTO `oauth_auth_codes` VALUES ('0c022d9aba7a74291b572ced7558a9a0ffae6d2f2206fb86396e4eb8aae45eb48b849eaf0301f5b7', 4, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-08 19:06:58');
INSERT INTO `oauth_auth_codes` VALUES ('0c4830c283fb22b1a57cb987f283c922de70cfba588d27930fba3b88bce748d34551498f6a3f1e94', 11, '1', '[\"view-user\"]', 1, '2023-12-15 12:01:19');
INSERT INTO `oauth_auth_codes` VALUES ('0cc41c2534ec6f4369e32c5654fdc2334e35f2e79daee85a67b5b3047e9f6f7e059fc26d0b13b6e0', 1019, '1', '[\"view-user\"]', 1, '2023-12-27 18:44:07');
INSERT INTO `oauth_auth_codes` VALUES ('0d1f58def554b67aa2a07a50e2723fcc0d1843f3c21e4306190c809f686878f04780f3472cb6ca87', 8, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:53:06');
INSERT INTO `oauth_auth_codes` VALUES ('0d1fbc252eb807a66fce17e47aec40a22774c70f434ae68b166df5a54da4071d2212d66832817f3a', 8, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 21:37:32');
INSERT INTO `oauth_auth_codes` VALUES ('0f826f20a1e4498c4009f04f2bc4cd42e6cd88376065db72e9e0ad400331090351652bcc96845a51', 1027, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', '[\"view-user\"]', 1, '2023-12-28 20:36:44');
INSERT INTO `oauth_auth_codes` VALUES ('1001a2c15ba5ad812009c312819890756ff59c061645a2004a4ef01841afefc9154ada93c6f3a52e', 1, '1', '[\"view-user\"]', 1, '2023-12-27 14:52:44');
INSERT INTO `oauth_auth_codes` VALUES ('1007fdbe38422b0af561e60491dc98c6cd3abc44abe2ee69906afd12cedbb5f57b923db79d34b578', 1023, '9ac45384-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-28 17:38:50');
INSERT INTO `oauth_auth_codes` VALUES ('10ad2b72180ab990074652daa64bdd6b474b1cb988317bca3dbe737df15fc60e7866e6c4bff0823b', 1011, '1', '[\"view-user\"]', 1, '2023-12-27 16:28:24');
INSERT INTO `oauth_auth_codes` VALUES ('10ef1cf3c142e25a49b390721021cfb9ba4b1d94772034eebb49de11ad27102d0fa1334648e18fe3', 5, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 11:43:09');
INSERT INTO `oauth_auth_codes` VALUES ('12537d27b4e8ac7a1cd0d98c3b77648e3c86dd1670218bbae0410538cbd3109420369851979ffe36', 1027, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', '[\"view-user\"]', 1, '2023-12-28 22:04:59');
INSERT INTO `oauth_auth_codes` VALUES ('12a7ae7712b5fffcb1353b514ad384481fca202308fa0dc22dc0178b7144b54cb0615cf39818b7cd', 5, '1', '[\"view-user\"]', 1, '2023-12-26 20:51:48');
INSERT INTO `oauth_auth_codes` VALUES ('12c11b2693e707008a34de5f758ed7de6fba50b5efcc3eba844305bbbceab22526048fba02390a8f', 2, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-13 15:34:37');
INSERT INTO `oauth_auth_codes` VALUES ('12ffada512525124de31a6440f4c96cdeb8117d2ffe703e5031c12c7776346cd9b5223a57a4fe12b', 2, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-06 18:36:17');
INSERT INTO `oauth_auth_codes` VALUES ('1366f87c3d53363a71d15a12115a8d8279ac409b9161e0bf3dd4a36de73266141b6026a1bf432ba7', 1011, '1', '[\"view-user\"]', 1, '2023-12-27 16:28:14');
INSERT INTO `oauth_auth_codes` VALUES ('13f67bc5c910799a5ec289bc99a37efd466fe142f65c7021944157d8b889de51cd5609db8ea409be', 2, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-13 18:11:14');
INSERT INTO `oauth_auth_codes` VALUES ('147e1e55aa3ef4c72d89f94c60663cd9d7a4119e007fb03f183631d4aab1a230d0362bd8e827e570', 2, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-13 15:33:33');
INSERT INTO `oauth_auth_codes` VALUES ('14c14d1e9c995fc7a37236dc2da79af5052c108eabd1445b7e5f25c1490cf92d7b1910f6c874f574', 5, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 10:32:07');
INSERT INTO `oauth_auth_codes` VALUES ('1514c43ea5745bca0e38e16097398022f4e7c5d125ab19353f8ea60737e06126a157847a8202cfb3', 1017, '1', '[\"view-user\"]', 1, '2023-12-27 17:14:03');
INSERT INTO `oauth_auth_codes` VALUES ('15a7ebde23dcda3dabb5137976ccfe9efc85424074e290d0387707972a5f5f17c4bec0f85f34cf82', 14, '1', '[\"view-user\"]', 1, '2023-12-26 11:53:37');
INSERT INTO `oauth_auth_codes` VALUES ('15b974f998e7563ccc3141e1ab966ad04ba67b3d73fbac981836c53e3ee176f3a85032d04f91c921', 2, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-06 18:31:02');
INSERT INTO `oauth_auth_codes` VALUES ('15bc75c86ca4906c9d9f8361bdc9b5d3d3500fc446ee04e23e977c9eb30f3d1f59ac75cb9cc12155', 5, '1', '[\"view-user\"]', 1, '2023-12-26 20:51:43');
INSERT INTO `oauth_auth_codes` VALUES ('160f58c9e33bfe779d9760609185191b6d39836dd1293eb7b20a0df6928c02c9208471241872aaa8', 1027, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', '[\"view-user\"]', 1, '2023-12-28 20:39:21');
INSERT INTO `oauth_auth_codes` VALUES ('1632ef9cabeb2e4b3fb6c630b46d6ac3b173e9060158cb5bb5107927ec10e1feaf7a4e1e6e729548', 1013, '1', '[\"view-user\"]', 1, '2023-12-27 17:35:26');
INSERT INTO `oauth_auth_codes` VALUES ('176c0376a5288b81fa25b768cca7099fd86366d90a39152eab4664217044fc1e36042bc10c2f72af', 3, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-06 18:27:26');
INSERT INTO `oauth_auth_codes` VALUES ('17aec291c146004e5d6a7dea37df994c76370e1f42bbb09e8507e72f8f765b1ba910a3471bd13b38', 5, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 10:26:01');
INSERT INTO `oauth_auth_codes` VALUES ('182e005fd0ed41e2de9d5eda535c92c42bedaed42039aa42b7faa1a1b5613db93b7afe2387ad46b4', 1013, '1', '[\"view-user\"]', 1, '2023-12-27 17:37:14');
INSERT INTO `oauth_auth_codes` VALUES ('189b0628bfe6b9270de3d71bcfc96599db0fad9b333a52a8cfe336f03760176635601fcbcc56ef3a', 1011, '1', '[\"view-user\"]', 1, '2023-12-27 16:31:06');
INSERT INTO `oauth_auth_codes` VALUES ('18d0c5806260d6488b2df693c4273e66d5b1b6df79deb376aecf125519200f2b4800c26cdd907e42', 1019, '1', '[\"view-user\"]', 1, '2023-12-27 18:10:46');
INSERT INTO `oauth_auth_codes` VALUES ('1a2b9a50e49a2e5c4a2713a2268d2fff8be181950b39ac34f3e96e146d46dee828d7f8b1ed5def0e', 15, '1', '[\"view-user\"]', 1, '2023-12-26 15:16:59');
INSERT INTO `oauth_auth_codes` VALUES ('1a4dce69a200c6f492f22bc02d9f147e62e053d5ea4d28b205424bad6d767809f9819ea2897f310a', 8, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-13 15:19:46');
INSERT INTO `oauth_auth_codes` VALUES ('1a7154c8ee1e6c7dd0c18a24a30b35cecf63191f73bb30093bfc7508411cd0edfccf55290f44b282', 15, '1', '[\"view-user\"]', 1, '2023-12-26 11:54:49');
INSERT INTO `oauth_auth_codes` VALUES ('1acd89fe7589da282f1a06423cd76410859458698f0b1eab03aa705f6a2196ef847ed3b5e3a8e605', 1027, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', '[\"view-user\"]', 1, '2023-12-28 20:26:00');
INSERT INTO `oauth_auth_codes` VALUES ('1b1df27fec53d33b21d38482e1b08a39647afb83533651f910159fcd1f43e0f6ac52451a62a83d40', 1009, '1', '[\"view-user\"]', 1, '2023-12-27 16:02:32');
INSERT INTO `oauth_auth_codes` VALUES ('1b24e8aa7adac01c843b225e249a6fa1c8affecc591d7e3a94bd71e61ef7e6b72e2115181e4bdd6a', 1, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-04 21:01:09');
INSERT INTO `oauth_auth_codes` VALUES ('1b2e8cac1bbe3f873e285076f0f596c26eb2a2a44921ac37f572d6184c8d65aafed0301cf93b723c', 2, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-13 16:18:38');
INSERT INTO `oauth_auth_codes` VALUES ('1b497b0c417d0d837144a58eebed3d58c5e73720eecd71345440ab01e6834dad4ce81448f4d32f69', 2, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-13 15:35:31');
INSERT INTO `oauth_auth_codes` VALUES ('1b6324b89ec5d33b81be1b03568bdfe68662ee5b17f7dc82596e4f1ea200db859eb0be3e4d84aab0', 1017, '1', '[\"view-user\"]', 1, '2023-12-27 17:45:50');
INSERT INTO `oauth_auth_codes` VALUES ('1ba72e807d0ba4d9fdc858233463bea81f08dcc2e8f917d16681c3376634b545afbd4c7e19e0f985', 14, '1', '[\"view-user\"]', 1, '2023-12-18 15:36:00');
INSERT INTO `oauth_auth_codes` VALUES ('1c15b17cd67c373933587bd1b76842d94e655a17a41f6682d8e69476cc151df9a92a6f2cf85b204e', 1009, '1', '[\"view-user\"]', 1, '2023-12-27 15:55:34');
INSERT INTO `oauth_auth_codes` VALUES ('1c2274b8603ac8125bf5f5b95f9dba81ada5b8be11a410940f659ce4174fd2f19c8d1d8a166f0df5', 1024, '9ac45384-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-28 17:39:36');
INSERT INTO `oauth_auth_codes` VALUES ('1c3da1900a07d0317e7dcc655a2cbadec5cb5e0958948eca409f895c3986801dd3b53c83746c9803', 1, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-05 18:39:18');
INSERT INTO `oauth_auth_codes` VALUES ('1c5619c79f5575c1027f3c37e358fe2748180959fa24d58b4bbc0875c20c697ff5025f5216cc30dd', 5, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:31:36');
INSERT INTO `oauth_auth_codes` VALUES ('1d0151d784a77e3b18de23a5dcaf7c28e3b6921f3d123f7b9caadacc7ef9e2a25b31554c0e5d81bd', 11, '1', '[\"view-user\"]', 1, '2023-12-18 15:26:16');
INSERT INTO `oauth_auth_codes` VALUES ('1d09105f82f6a36e451dbfac13c070ad1120468b6b1063c925f856d3faf81bde45efc4be03ea7372', 2, '1', '[\"view-user\"]', 1, '2023-12-27 14:41:15');
INSERT INTO `oauth_auth_codes` VALUES ('1d17c5cc8ddd499e0cab84f864c009c24e184dae2dce56a052f70e2e10ca14140a42d2927a4159ff', 8, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-13 15:19:09');
INSERT INTO `oauth_auth_codes` VALUES ('1d1b6210d73a08c8ab8563a66240a75b276608d0690c8f82b1b24397aad7c23123e192ccd1c1c747', 1019, '1', '[\"view-user\"]', 1, '2023-12-27 17:50:10');
INSERT INTO `oauth_auth_codes` VALUES ('1d2ec83318c8082e398d1a16c2e7cf94cff05badc88400021fcd9eb1e8222194732e43f605e39491', 8, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-13 15:19:53');
INSERT INTO `oauth_auth_codes` VALUES ('1d476704c3be77181a3ff9b9682c46c7ffce983b591ceb08ddf4c227660a55cfeaa3df884f423904', 16, '1', '[\"view-user\"]', 1, '2023-12-26 12:07:48');
INSERT INTO `oauth_auth_codes` VALUES ('1da50049a1a2f9e9fa51619707d58e82549332cff45ebe061043edf562fde38c1516b4468fc4e3cd', 8, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 21:37:29');
INSERT INTO `oauth_auth_codes` VALUES ('1dafc961dabada15bbe606af91e395c9e2f502bcde5f9ebed1c04df8128cbc695998b968a9ec7376', 11, '1', '[\"view-user\"]', 1, '2023-12-18 10:19:51');
INSERT INTO `oauth_auth_codes` VALUES ('1dde95116d38b78e56497d2691ac68a867a7fbfa6b41444acef62e40a803a1b17506daa6fb53dd2d', 3, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-05 18:42:10');
INSERT INTO `oauth_auth_codes` VALUES ('1e367d14cd29c56db30a2abb6655a397ef957040ef8bb6feafd4439c8c1a9a69ee5e75198aa8535e', 1009, '1', '[\"view-user\"]', 1, '2023-12-27 15:02:59');
INSERT INTO `oauth_auth_codes` VALUES ('1e63fe443bca0d3e9908a628115f3e7917881af941495e500b8cbabe55f7fce8fe53bb2da82e8bda', 1019, '1', '[\"view-user\"]', 1, '2023-12-28 15:51:16');
INSERT INTO `oauth_auth_codes` VALUES ('1edc6e55e11f294c262f56f8aac70f332a81599b1bdab84f2b3c22fba9f02518a67c025207e9850c', 1014, '1', '[\"view-user\"]', 1, '2023-12-27 17:44:22');
INSERT INTO `oauth_auth_codes` VALUES ('1ee7a0be1b96b8a4a78ee475824f0c1b29ce312beb59aa27512a1e8fe3d3199952a1b59e5ed90707', 12, '1', '[\"view-user\"]', 1, '2023-12-18 14:46:09');
INSERT INTO `oauth_auth_codes` VALUES ('1fb8d1e15681a9d773490c90683edddc0c7ed09ea754dfb27d5cdb9fb924c13960677c2e1fb3775b', 1019, '1', '[\"view-user\"]', 1, '2023-12-27 18:44:17');
INSERT INTO `oauth_auth_codes` VALUES ('1fd63b9512f4d9e1a8416ec6fbb292e521f5a158210546f41536ecfe5de991523afd999796473d3d', 1023, '1', '[\"view-user\"]', 1, '2023-12-28 16:23:22');
INSERT INTO `oauth_auth_codes` VALUES ('202b874ab4a09e7798f1ff880719ca2c360708a6703563804b0ff9b8c0d655e40254ccaf58d15074', 2, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:54:29');
INSERT INTO `oauth_auth_codes` VALUES ('204cd6ac05afddc6803b4650418151d05614ff82aece03e23a7780f2fc733d0ddbe4a4e1425cd286', 6, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:42:27');
INSERT INTO `oauth_auth_codes` VALUES ('2127c2e60eba7e9526af62f20e9365c06c41b96d5b7f5fdcce4e490e5a22cb026fc10bd03f64fad2', 16, '1', '[\"view-user\"]', 1, '2023-12-26 11:59:53');
INSERT INTO `oauth_auth_codes` VALUES ('21409e54acac2e8335f1bc0f0b7060b9d3e125ea9ab237781af886a29e7fa093a1dd20c64e7cf0f0', 5, '1', '[\"view-user\"]', 1, '2023-12-26 22:06:39');
INSERT INTO `oauth_auth_codes` VALUES ('2192d894ec0a14750ff01f72018626d2fdb09f9ed28c4c8f4f68b8c30f089b02b5d0690660e665ee', 5, '9ad29408-0282-4cb3-a1e6-75d3f68a722d', '[\"view-user\"]', 1, '2023-12-11 19:09:17');
INSERT INTO `oauth_auth_codes` VALUES ('21ba4c5aa2cd352045509ba8297e1bf02ec042295d5df89beaba24fa0fc967460d86eea6785f73d8', 5, '1', '[\"view-user\"]', 1, '2023-12-27 10:45:40');
INSERT INTO `oauth_auth_codes` VALUES ('22412dc4d5695968a33df77e9755b22769b4b91fc1e3f1b363d80c30b321e4ac5924bca122c84a48', 1013, '1', '[\"view-user\"]', 1, '2023-12-27 17:35:48');
INSERT INTO `oauth_auth_codes` VALUES ('229550ab4887239a286d17f6f2a53b7e0831305065a4a4925805ba6ae98e33338c39406e401ac733', 6, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:44:31');
INSERT INTO `oauth_auth_codes` VALUES ('2322ab5181d0c906656b2c818da09a716f5a7ee8b4a655999e56fae4683e7b9960fca474be8b34e6', 2, '1', '[\"view-user\"]', 1, '2023-12-13 19:01:13');
INSERT INTO `oauth_auth_codes` VALUES ('23f72958a56760436d0c88a941067aefe952465702610f12281e0237a4ecf78b3da6c5f20dc54301', 5, '1', '[\"view-user\"]', 1, '2023-12-27 10:46:21');
INSERT INTO `oauth_auth_codes` VALUES ('24541ca3b81684ef73b8685382127f41fb2229a658c949fd245f1193ab4410069a8cca885c6cfbdb', 1012, '1', '[\"view-user\"]', 1, '2023-12-27 16:48:32');
INSERT INTO `oauth_auth_codes` VALUES ('2455a29aa02be9d97d51e0a11e8e231d1779ddf4620d9a8471a16fad9dddea032400aae17e453203', 1013, '1', '[\"view-user\"]', 1, '2023-12-27 16:45:40');
INSERT INTO `oauth_auth_codes` VALUES ('24af489177baa6732466e999d4f7af41d204f077cd9d16357f7c0081794a0069f57f0dd0b2d734a7', 15, '1', '[\"view-user\"]', 1, '2023-12-26 12:01:33');
INSERT INTO `oauth_auth_codes` VALUES ('24fa9b5e83e714c150d18a1c1e7846ca4fc838e02933719cead5bc8ef2a40112af8eef353d80340f', 1, '9ac44355-abb0-4f65-b22e-229e413009f0', '[]', 0, '2023-12-04 18:06:58');
INSERT INTO `oauth_auth_codes` VALUES ('2542c6909cf1ba66f9be64cfa2e9ae774b2222939abdeeb4c0e2e33705addb47128e59567b6e2a33', 8, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-13 12:05:24');
INSERT INTO `oauth_auth_codes` VALUES ('25784f5a362f95398bbd73e379662435f1c0d3ad13571244fe819de7d6583707d5311d4d5e1d0859', 1019, '1', '[\"view-user\"]', 1, '2023-12-27 17:49:27');
INSERT INTO `oauth_auth_codes` VALUES ('25e8ccdb62a8e8918bf1125c72148e6cf57e648eac57ace36835026411d9c4fc53d186d41337c39c', 1027, '9ac45384-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 0, '2023-12-28 18:56:13');
INSERT INTO `oauth_auth_codes` VALUES ('25facba0e8e41cfb46cbb9bbdc8ef23de970100e14e0d1a33f28a39146bee75a8204ad2311aed897', 1009, '1', '[\"view-user\"]', 1, '2023-12-27 15:03:43');
INSERT INTO `oauth_auth_codes` VALUES ('261a1c948c3c391bab292e7c657ad70adefd52e18b3e911ddedd8d3795c4712911ce5d416ffaf956', 1020, '1', '[\"view-user\"]', 1, '2023-12-27 22:11:14');
INSERT INTO `oauth_auth_codes` VALUES ('2677506da629746e1cccc13c8c0401a54e1506053c87c705996b31ebbef864dbd9355a46663367ed', 1020, '1', '[\"view-user\"]', 1, '2023-12-27 22:11:18');
INSERT INTO `oauth_auth_codes` VALUES ('274b837cb7f83f0c377fc33aa56cff00cf8e8a17729795c18442259a62128fceef9a88bd880cebf9', 2, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:42:01');
INSERT INTO `oauth_auth_codes` VALUES ('277026abc16f1cc9c8fa31ebcd44fbdd1aea91f682f887ec4bb021027f388ffdb1e5e59218c309e7', 16, '1', '[\"view-user\"]', 1, '2023-12-26 15:07:53');
INSERT INTO `oauth_auth_codes` VALUES ('27a42dbe4cedb70daa7a645f48fdb19f031f397c849aab368c51b226d844a3056b1d68e7243e1c98', 1, '1', '[\"view-user\"]', 1, '2023-12-27 14:45:53');
INSERT INTO `oauth_auth_codes` VALUES ('281f2db89c323f0562850530601aac31053b129e64eb28bc6c0661c3545a8f94a75d5dd3b98bb54e', 1, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-05 18:38:27');
INSERT INTO `oauth_auth_codes` VALUES ('284d1bba8f12795de8c214b35b762d64aa8ccdb5e1e0191d7dc537aa5fab20ec0f1546254f6e4c4e', 1012, '1', '[\"view-user\"]', 1, '2023-12-27 16:47:29');
INSERT INTO `oauth_auth_codes` VALUES ('2859c9530c4e28067fe7d1a0efca8dd20a94894e5a2e522c2f8f5c71b3a0ea24c731f2ab6187a253', 4, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-11 18:44:52');
INSERT INTO `oauth_auth_codes` VALUES ('2874c30d1d094a27cdb3308020c6fa8acf566ae23951afd7455f6c2f15652eb777d5dc1f5137efdf', 2, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:55:40');
INSERT INTO `oauth_auth_codes` VALUES ('288c0141d921499647cfec8c8dfddabf05d7b06fae7c8cf24802defcfa6920a612c64976db0200d4', 1019, '1', '[\"view-user\"]', 1, '2023-12-27 18:10:15');
INSERT INTO `oauth_auth_codes` VALUES ('29069a7f4ebd3ef2e936245a9eafd3e372f15975b68a07c239fb64e668bee4010d6ee0d987e19f25', 1, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-05 18:32:01');
INSERT INTO `oauth_auth_codes` VALUES ('291158cfd5af0e53d9d72117e8a0ac7579c04ec3466e1c5c7f297c1cb8cec852ed809b18063218bc', 2, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:54:17');
INSERT INTO `oauth_auth_codes` VALUES ('296bd372edaa5b72dd47c36872bd82f4eb0d776ca23c629fb1e157d228f8d44319e33da6a688a415', 1027, '9ac45384-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 0, '2023-12-28 18:57:44');
INSERT INTO `oauth_auth_codes` VALUES ('29724cb552142754c920ae36c1ace611c956e01ae99a9a95eb7a32abd748b9fbde00026ab27aa82f', 1009, '1', '[\"view-user\"]', 1, '2023-12-27 15:44:49');
INSERT INTO `oauth_auth_codes` VALUES ('29c902ebb776b7e96149e062b61ffc9c5ee6898fe386725e1698fa98e2c21279189026f004e50f39', 1024, '9ac45384-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-28 17:39:56');
INSERT INTO `oauth_auth_codes` VALUES ('2a159ddb6b31b175dcc97335059a5efb79518637d17f34372140385dc8a5261f0ede35fcc9a09223', 2, '9ad29408-0282-4cb3-a1e6-75d3f68a722d', '[\"view-user\"]', 1, '2023-12-11 19:08:40');
INSERT INTO `oauth_auth_codes` VALUES ('2a314183eb07ee9d632c5772ab4dfa662b108cdb2bb473c9c91a205d242af311eba82958dd413b93', 5, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 11:44:26');
INSERT INTO `oauth_auth_codes` VALUES ('2a9c7d81fe10a7da39b4fe2d8e90a2b6004ce0e82f036436d7aa93e3a46941a99aaa370058f766c5', 1019, '1', '[\"view-user\"]', 1, '2023-12-27 18:04:33');
INSERT INTO `oauth_auth_codes` VALUES ('2aeb2ade95120edb150780bbd043b1392d9970cfb02aba452591f71cb1f2aba22ce69eb198f0f1ad', 1010, '1', '[\"view-user\"]', 1, '2023-12-27 16:12:58');
INSERT INTO `oauth_auth_codes` VALUES ('2b759aa373b0baad0717cc935786b40572b5eb46be97805e355746a56888ca50f921ab14bc846352', 1, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-05 18:40:10');
INSERT INTO `oauth_auth_codes` VALUES ('2bf3a51e597fa82c0894b44c0d33589a883755e7ca73473930a8f614c1b59e16dbe9714fefaee8b9', 12, '1', '[\"view-user\"]', 1, '2023-12-15 12:00:48');
INSERT INTO `oauth_auth_codes` VALUES ('2c06bb648a48663a030ea226762d218b96c1ca393aa03eee58c165e24814f1ad37534b443b38817b', 6, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:42:17');
INSERT INTO `oauth_auth_codes` VALUES ('2c1a43f87a32a21026d96b5027bb50f01613a50f90d34f8c454c51642969e4542be3ce0a61c550b8', 1010, '1', '[\"view-user\"]', 1, '2023-12-27 16:20:39');
INSERT INTO `oauth_auth_codes` VALUES ('2c90611f0fa69cae1125be48126c0656bd8936253f57148fdca2b99103ba91071e4f58652a15af6b', 3, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-06 18:23:48');
INSERT INTO `oauth_auth_codes` VALUES ('2cd40bbb36712fbd87bd7ac2d2ea36f5354dcae1a6212b8d99ebb265faee0c7c40f5ecbccf339993', 6, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:41:14');
INSERT INTO `oauth_auth_codes` VALUES ('2d8e0a92d80e637d4c4e4eb06112321792b4099d2dd07f80f64148f104f8f994c63e27913ae449be', 14, '1', '[\"view-user\"]', 1, '2023-12-26 15:17:29');
INSERT INTO `oauth_auth_codes` VALUES ('2dc74a93843b562371b2a22803ceff2ef05f9c6627a8f8b67785da16cf7f8270dd9d405e82e04531', 4, '1', '[\"view-user\"]', 1, '2023-12-26 20:49:56');
INSERT INTO `oauth_auth_codes` VALUES ('2e005ac42674fd6a7b5db0528769c706d9d29a5612b0662f302312988f4b60b8b0cdc989d4a12319', 1015, '1', '[\"view-user\"]', 1, '2023-12-27 16:40:04');
INSERT INTO `oauth_auth_codes` VALUES ('2e2eb7d2e93d7b69610cf237a0a3639f93cb06ec6dc6fc92ec255ada7840f0764ac5bd47b6941f7b', 1019, '1', '[\"view-user\"]', 1, '2023-12-27 18:02:30');
INSERT INTO `oauth_auth_codes` VALUES ('2e48c0e134fec69653face16adb55745599abc35eec4ae99b35744bfa2a37bac082447d547e11fab', 11, '1', '[\"view-user\"]', 1, '2023-12-18 10:49:43');
INSERT INTO `oauth_auth_codes` VALUES ('2ea5cb59ea25f68774c38e8f493405987dd6d7becd310178af1fa30707b3090a50f46b461d9fcf08', 2, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-08 19:10:36');
INSERT INTO `oauth_auth_codes` VALUES ('2f2ddeac221eca4e864200375e34547fa428f890ad40260331728ffd2eda009edba50b44db91668d', 5, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 10:47:34');
INSERT INTO `oauth_auth_codes` VALUES ('2fc663cac2d829cab20c0416bdf38d9fc981e21de8a03395d0a4a499bc8efc90547e0b48a9159a9b', 12, '1', '[\"view-user\"]', 1, '2023-12-18 15:23:08');
INSERT INTO `oauth_auth_codes` VALUES ('2fd060f05ffaa403d8f1159c94405e5842d360a62340bce8f2666da08adfeb0a385055cbf9021a83', 5, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 10:48:27');
INSERT INTO `oauth_auth_codes` VALUES ('305cd6014ec35d2454fa683d9a18f47d2723dd1aeaa12b6eeb2c71af3eebf2435c7a7759cbea7f8e', 1, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-05 18:13:01');
INSERT INTO `oauth_auth_codes` VALUES ('30a2efd58743df1dbd7465db6e18063448e7a374cc0c652fe744e19267f96299181b9ee78bd781a1', 1027, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', '[\"view-user\"]', 1, '2023-12-28 20:28:09');
INSERT INTO `oauth_auth_codes` VALUES ('310b61dd951a993a24a101a530f193ab6e86515aee17455e0ca379f134fab64de92c38a10a95144a', 2, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-12 10:05:46');
INSERT INTO `oauth_auth_codes` VALUES ('31c3f00079e8f3eabcf606077f60d8c09529a05e0f1bd03249934d2e77bb64a446d9af549b14e55e', 1009, '1', '[\"view-user\"]', 1, '2023-12-27 15:36:57');
INSERT INTO `oauth_auth_codes` VALUES ('3253546d4f8b9388746ae71437f82e59d8b5e60a20639c84fa14e74d244a0925eddd4923b87e0721', 4, '1', '[\"view-user\"]', 1, '2023-12-26 16:26:55');
INSERT INTO `oauth_auth_codes` VALUES ('32622bb3091a5cd83d25a0a293ab0e55394202e072ca06921e8ec6ed5d0f4a8dafdc9255a4f24ac5', 11, '1', '[\"view-user\"]', 1, '2023-12-18 10:20:02');
INSERT INTO `oauth_auth_codes` VALUES ('329c5946bffc2d4182e907d8d5af5a1fbdb21ea8f7321d4cac5961da2b57df8b0925f9e154e3c327', 5, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 11:44:29');
INSERT INTO `oauth_auth_codes` VALUES ('32c1308618dfec4adbcfd992c046f9f2fe6507cb1224255d8a949612e7d6d37bde016a56bb27285a', 5, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-12 10:05:02');
INSERT INTO `oauth_auth_codes` VALUES ('33784651ef114c1e74daa2ec2a56f288b6a48d1874429ca0279356b5709e7fa89037467051fd597d', 1016, '1', '[\"view-user\"]', 1, '2023-12-27 16:42:25');
INSERT INTO `oauth_auth_codes` VALUES ('344a11cd398324ab1cc69c70fa4e3ba4ffd02a380538a1761e2a7725458768c60c20fa77a4cf8984', 3, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-06 18:26:23');
INSERT INTO `oauth_auth_codes` VALUES ('34fa1d3d798c9efb7c170842f24fe5146aa77e742ee4653631a47bf625ef68681257028f0de1ad71', 1027, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', '[\"view-user\"]', 1, '2023-12-28 20:34:54');
INSERT INTO `oauth_auth_codes` VALUES ('353f15ff5dffcca39f9b5e3274a9c77eb137ca16b77bda050711c5be211d54d9dbb1c29ddee813c0', 5, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 10:47:59');
INSERT INTO `oauth_auth_codes` VALUES ('3549bdfa9b4eea356201a1e556f866b2eedc02a790c78f46df0314c35203ba657d1516e613b5742c', 5, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 10:35:47');
INSERT INTO `oauth_auth_codes` VALUES ('35d3f0caf5e45b92481e77137573fe2e88015b87e4aea0e9852237d1620be16c40fb4790ba5898f6', 1019, '1', '[\"view-user\"]', 1, '2023-12-27 18:03:32');
INSERT INTO `oauth_auth_codes` VALUES ('35f0be833a8619eb65a9d9d743fd23f2d269e7490bc0f297f530477a50999b93232a81962e10e26b', 2, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-13 15:35:34');
INSERT INTO `oauth_auth_codes` VALUES ('360d683aec3055d441eedef96994a089258e9ca905bf47915071d78d403896352c1a9085009895f2', 6, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:37:43');
INSERT INTO `oauth_auth_codes` VALUES ('374adbc74d1081e47670f71c8eeb2d26c06d78655fe003f8213011ed64969a734a8d62da9971ba93', 1009, '1', '[\"view-user\"]', 1, '2023-12-27 16:04:21');
INSERT INTO `oauth_auth_codes` VALUES ('37b685527da7f809382a555a3ad0b8bcc9b250b4b7c17a595c10ca814aa2a8809ab6a97d874f1840', 1, '9ac44355-abb0-4f65-b22e-229e413009f0', '[]', 0, '2023-12-04 18:08:36');
INSERT INTO `oauth_auth_codes` VALUES ('37fe29a45527025a6c870450d636a335293aeeaa107955deffda456857ba5f2c2d8e4b096c735410', 3, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-06 18:28:57');
INSERT INTO `oauth_auth_codes` VALUES ('3808f89ee241d1e57ce449ff3c7ce2a87d9b43cad8a6613f6003c662d022ca2092b1fdd4c3a45caa', 1025, '9ac45384-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 0, '2023-12-28 20:09:46');
INSERT INTO `oauth_auth_codes` VALUES ('3885040fde484ba7cf4f344ea14200cc7031a57b608bb711bc4f2fd402096a38bc3a9d314e79e3be', 15, '1', '[\"view-user\"]', 1, '2023-12-26 12:02:01');
INSERT INTO `oauth_auth_codes` VALUES ('39f822d291baac03ddc318878764e82ad5fa6bfce72005925f45b415158a00a4d7c4e3223f1a331a', 1022, '1', '[\"view-user\"]', 1, '2023-12-28 11:09:35');
INSERT INTO `oauth_auth_codes` VALUES ('3aa37ae95c659eff7c3e6d0e03b27be63b8fe8e0ebcc07df4672a15edb4dac99ca6b58d45b5b51e1', 1017, '1', '[\"view-user\"]', 1, '2023-12-27 17:33:48');
INSERT INTO `oauth_auth_codes` VALUES ('3aae077eee384ff2e15a84ed12e2a155c6098f83d2877d3092ed0e25df3f845838013c97f388877b', 1025, '9ac45384-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-28 17:41:01');
INSERT INTO `oauth_auth_codes` VALUES ('3ab1930f3ae1b62f4f2748a1d649e35c5059bee6151e9391eedf0669ea8c16effd874015cbeea25e', 1019, '1', '[\"view-user\"]', 1, '2023-12-27 18:21:42');
INSERT INTO `oauth_auth_codes` VALUES ('3b6ed2c49caab9e15ac6543ae7a85732527bacc92e60b0a2eb9b4750a5d5f7a2e06cee5a6214b9ea', 1025, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', '[\"view-user\"]', 1, '2023-12-28 20:25:42');
INSERT INTO `oauth_auth_codes` VALUES ('3c9ee2e8adb723b8979662e1c75ffac05bdde8a28bc652c26e918be0b2825209ce77d28c1cf6cc12', 1017, '1', '[\"view-user\"]', 1, '2023-12-27 17:03:07');
INSERT INTO `oauth_auth_codes` VALUES ('3cb0cb7e8f19cb30e353c499f8b6fcb70785304294858b9bbe685c76ebf647d01aa73f5a368ae99a', 3, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-06 18:17:21');
INSERT INTO `oauth_auth_codes` VALUES ('3ced7331602f82f47e2e03a3e11db5916bbdf16f5f31f720b3043e8d2f7025626f43a1382bb4fd59', 15, '1', '[\"view-user\"]', 1, '2023-12-26 15:16:05');
INSERT INTO `oauth_auth_codes` VALUES ('3db8c8378cc3198b7b537fdf4f68ee5e1f78f278271c1ccce8f47df9cb9254d7f62a15f4ae155217', 2, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:44:01');
INSERT INTO `oauth_auth_codes` VALUES ('3dfa3a14df2ad24ff5bc77d7e7bd26a33b4ce44c957db2d251bb3f82d4828ccc42a0654b99d2fbe7', 12, '1', '[\"view-user\"]', 1, '2023-12-18 15:23:50');
INSERT INTO `oauth_auth_codes` VALUES ('3e0e3057bbf83bd80c3b4dcf1bd081b55eb1b22617daaa3aa3b6c6790eb29a51e9275a80671d1346', 1013, '1', '[\"view-user\"]', 1, '2023-12-27 17:42:32');
INSERT INTO `oauth_auth_codes` VALUES ('3e25930e62bb866e1becfec757173373fb66c57f9893ba71ea5f7c0bcd6cf791d1535a6dd6e03e61', 1019, '1', '[\"view-user\"]', 1, '2023-12-27 21:14:56');
INSERT INTO `oauth_auth_codes` VALUES ('3f2b2ebc54bcc4f88263b05e2254a412c29d3f3891c3c9df35f1b9d9cf5dccab560db36ece0fa736', 3, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-06 18:24:40');
INSERT INTO `oauth_auth_codes` VALUES ('401cf032c5f35af9f97b47bc8623fb40b23e7f87b95b81b4c1a7bbfe76d89638a4cbc819f1c27cf0', 5, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 11:43:13');
INSERT INTO `oauth_auth_codes` VALUES ('402f3bf04341a6946bc758662bc17a23f90f448ccfb82ae0a3c1c2ba25260991d4c693f4d602a67e', 1019, '1', '[\"view-user\"]', 1, '2023-12-28 15:53:04');
INSERT INTO `oauth_auth_codes` VALUES ('4047c033d71f3b3543cc33945dd990ebb5f81800f95b4b695eaf8fa41f2699773b8ce85421d57b48', 1009, '1', '[\"view-user\"]', 1, '2023-12-27 15:55:03');
INSERT INTO `oauth_auth_codes` VALUES ('408d345ae75314405d723cbd067052e67e8d40dd8bf8cd76c23371d19209ff179f162a9efe06cca0', 12, '1', '[\"view-user\"]', 1, '2023-12-15 10:19:12');
INSERT INTO `oauth_auth_codes` VALUES ('40997b21c195d0c7b85ea91dfc31a792a51790d10cd4987e4390551f7043d309381779ce76156bad', 1028, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', '[\"view-user\"]', 1, '2023-12-28 22:01:19');
INSERT INTO `oauth_auth_codes` VALUES ('429c1d5e8a1c5aec52c5c246844a40ab055e5f674b92cd4a0d7eff51d0e013a5aec4d63884a87704', 1028, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', '[\"view-user\"]', 1, '2023-12-28 20:43:36');
INSERT INTO `oauth_auth_codes` VALUES ('430c95944c185e064902ca44847b625c7a11c0c5d4d099688be71952e444c45cafeab7cbec6cdef2', 11, '1', '[\"view-user\"]', 1, '2023-12-18 15:26:57');
INSERT INTO `oauth_auth_codes` VALUES ('435fc612de87ab7a4bdb53d48c0dbae1341fb8c02c122f659fb0c2a308487863e52dbf3da1e73782', 12, '1', '[\"view-user\"]', 1, '2023-12-13 19:03:13');
INSERT INTO `oauth_auth_codes` VALUES ('4407f095655e6b5784a33fbc896174eb876ca53c6c73a2f0090cd9aa936d1b958c1662c1086c4a2f', 8, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 17:20:45');
INSERT INTO `oauth_auth_codes` VALUES ('44670ab20e4e058e8603e135515b8277b67696c1f02958063ec0d6e524fc40a3d63a8e576a7f46f8', 5, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 10:21:49');
INSERT INTO `oauth_auth_codes` VALUES ('4503c5382b44441196ef46b3476cfe48b06760c5809b38c77d37f366ac8bf125dcc8cf57a1181258', 1017, '1', '[\"view-user\"]', 1, '2023-12-27 16:44:32');
INSERT INTO `oauth_auth_codes` VALUES ('45181bdf997e1ae254e24c1e5ea0d9377a8daef54c547e530f06697dbecec08dfc7f8612b43490fb', 14, '1', '[\"view-user\"]', 1, '2023-12-26 11:52:24');
INSERT INTO `oauth_auth_codes` VALUES ('4592fc6ebdcbcd63798bb06fdb407b312d0bcdd37d2e1faf3d06d8cb80739498fe76fc7eb08e8043', 15, '1', '[\"view-user\"]', 1, '2023-12-18 15:31:46');
INSERT INTO `oauth_auth_codes` VALUES ('45d5bb5f8a6c4e2df5924ba3e2d38520017ae02462772e35dce5ef0f5d8438b9b6ad4cf58da31791', 2, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:30:58');
INSERT INTO `oauth_auth_codes` VALUES ('460a70bb7928a82b199ae47ccc33c10380d91786d1b8dc7a05a7587594d66f5db597ee521c7e87c7', 12, '1', '[\"view-user\"]', 1, '2023-12-18 14:32:58');
INSERT INTO `oauth_auth_codes` VALUES ('479a90e8591e406b4e77600d8f8ec0b66dc07dc9e9fb91bbaeccbfb8f569a82ab2bcda6a341bc450', 1027, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', '[\"view-user\"]', 1, '2023-12-28 20:27:09');
INSERT INTO `oauth_auth_codes` VALUES ('4919bbb504e1124d5468ae99c3d751c00174dae2970dafd94d25ea5f7fba1d58a821bd07e6638951', 1019, '1', '[\"view-user\"]', 1, '2023-12-27 18:00:07');
INSERT INTO `oauth_auth_codes` VALUES ('4979f3d2222336be3583043810e79667091d853d5db307418b8f2ea2d835dc7785fb1b4e9fcef122', 1019, '1', '[\"view-user\"]', 1, '2023-12-27 18:21:38');
INSERT INTO `oauth_auth_codes` VALUES ('49d313987b443a6bcf7bf25dedeb6c5e11f218e4331fead53f4b8e194ce55a571111ccb6aa2a03fc', 3, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-06 18:30:03');
INSERT INTO `oauth_auth_codes` VALUES ('49e498e65d137b58c6fbdf3254e958ba0af18bf9b027958e113c56c803cc27e11b0d9b282d5a976f', 15, '1', '[\"view-user\"]', 1, '2023-12-26 15:17:58');
INSERT INTO `oauth_auth_codes` VALUES ('4a1ac09734902ce22b7288a42075f61539bc9706da69b59a3a2db4bf4a47d8e637dd83062b24f0ee', 3, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-06 18:28:40');
INSERT INTO `oauth_auth_codes` VALUES ('4b3139b75f2f41a1886cc851b9437e5ac859b26ef5fa55c8137f1a107490f1ea9b00638ceb2cd9fa', 14, '1', '[\"view-user\"]', 1, '2023-12-26 11:51:05');
INSERT INTO `oauth_auth_codes` VALUES ('4b600db86daa795c20072708d099f88436f1385c94abcda9e3a9b3d9435121127976a5e586173b7c', 2, '1', '[\"view-user\"]', 1, '2023-12-27 10:51:02');
INSERT INTO `oauth_auth_codes` VALUES ('4ba4a859df2d85b95572c835294b3edab6810e39e2bd74d74c6d3fc422ef95613ae06ef40c522a47', 1025, '9ac45384-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 0, '2023-12-28 19:00:13');
INSERT INTO `oauth_auth_codes` VALUES ('4c936bc66b20945a6823dce9c9220e506418402fbd7fd6a92c080697f92e98230d27faead57d390d', 8, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-13 15:12:10');
INSERT INTO `oauth_auth_codes` VALUES ('4ca908a25ac7732d848774b956e71290a72f1a9f19480cc0eef6415616bcd8012197dac44e337b17', 4, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-11 18:41:18');
INSERT INTO `oauth_auth_codes` VALUES ('4cb0b6c5479cba2b1e236ce4bdce9aa153999612cf20c07de78c304e3d88f4135e7006f31ee290f3', 5, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 10:35:41');
INSERT INTO `oauth_auth_codes` VALUES ('4cd4e15293ab8277778e42b934cf1af62ecc0877434bcf6a6fc002721ef8128732f657336ecf6a51', 1019, '1', '[\"view-user\"]', 1, '2023-12-27 18:56:01');
INSERT INTO `oauth_auth_codes` VALUES ('4cfd7bbb255161c4a7cc7d5a524b8034e7075bbb372c2dec78932018ef7c61a652a226eea183f25d', 5, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 10:30:12');
INSERT INTO `oauth_auth_codes` VALUES ('4d3d1fad75c29366ee0a95d2be1b3049faa64198da42337deb1a23c7cbf54e032fce150c25b187e6', 1, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-05 18:34:33');
INSERT INTO `oauth_auth_codes` VALUES ('4e22f3a11447dc926585c2b164a8ac85bba807eeb8e3dc164688ff1849740b40ed622d0606f41984', 4, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-06 18:36:27');
INSERT INTO `oauth_auth_codes` VALUES ('4f4be64b50c59c62dd9b871ca460496239daab5acaba1ce3243e2ae74433e7b1d87eb8d6e52531c2', 1020, '1', '[\"view-user\"]', 1, '2023-12-27 22:30:47');
INSERT INTO `oauth_auth_codes` VALUES ('505ebc1014bdd0724475771eb6ba3bad7b1416e8624b7ec5ab045ecf92cbdf7c4f662d4ba43e5047', 1027, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', '[\"view-user\"]', 1, '2023-12-28 20:34:12');
INSERT INTO `oauth_auth_codes` VALUES ('50c2267df40fc225489f4d47cc27baaef6e45024eaa6ea5b3207045e6bc88343736e622049d9aea8', 1013, '1', '[\"view-user\"]', 1, '2023-12-27 17:42:38');
INSERT INTO `oauth_auth_codes` VALUES ('511dcb6aa1ebe5e61be2bb42abe1ecb33d9c8e5be43abb4853c49354bfa411a82b05e6ff2dd7e92a', 4, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-11 18:43:37');
INSERT INTO `oauth_auth_codes` VALUES ('51988a7c7f0c592614eeea7ba2fb07a763c4dfa5dfc5502ff9fe79d9086429ecd3a3f4adaa68b4ed', 14, '1', '[\"view-user\"]', 1, '2023-12-25 21:36:04');
INSERT INTO `oauth_auth_codes` VALUES ('51bdf89112a3185d25b576f2052b18b80daafb40f4f6f3b245746a0b8fa015c3101ba1cf8f2dab8d', 1020, '1', '[\"view-user\"]', 1, '2023-12-27 22:03:53');
INSERT INTO `oauth_auth_codes` VALUES ('5286506f2c3f93081c108260ab134dbc957fba149b53a0c45a2ea7521bfb1af7aaae9f28dca71b26', 1012, '1', '[\"view-user\"]', 1, '2023-12-27 16:48:12');
INSERT INTO `oauth_auth_codes` VALUES ('52c6e46eb521a4286625ba74cba460f63753b1dd93d00b67e0f823b8b651a80571a6cc1458be75a9', 1017, '1', '[\"view-user\"]', 1, '2023-12-27 17:14:06');
INSERT INTO `oauth_auth_codes` VALUES ('53e9bec2c5faeeb6ffe048831a835b23ed231853fdad6a62edf3a784eb64578725062fce5153ad2f', 1011, '1', '[\"view-user\"]', 1, '2023-12-27 16:30:55');
INSERT INTO `oauth_auth_codes` VALUES ('5419a44fa4a432f489014a8bc974fb8e734382bae3e82a3b2eff9a7a3073c737a40d883403722935', 8, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-13 15:21:37');
INSERT INTO `oauth_auth_codes` VALUES ('5448d6af644c9c712ed253b392e8d2081f2e75bf988150afa6b8e6a95cbbfd583b22559c7f8d0cc0', 12, '1', '[\"view-user\"]', 1, '2023-12-15 12:00:56');
INSERT INTO `oauth_auth_codes` VALUES ('55162f224f2946d60422074f77a0789e88531a839e25f92695b1463ac8fe11e8e15920cfd55b332d', 1025, '9ac45384-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-28 17:40:48');
INSERT INTO `oauth_auth_codes` VALUES ('551d1d798c2d115edcf2faf97e0c268b5b6f3636a6d596dda1965f24b1ebe8911259bfb9b3c8ac79', 15, '1', '[\"view-user\"]', 1, '2023-12-18 15:29:37');
INSERT INTO `oauth_auth_codes` VALUES ('55453f4d3f4f13ccefdaf855f384c4d6135789edb9c2cb2a3e8975bc42fb81814a33774b8993530a', 8, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-13 15:33:06');
INSERT INTO `oauth_auth_codes` VALUES ('55993ce3b50bc159dac9da6d2b0b22a8e7759e912ee8193a25509df8c259e362ec32d67d102a3743', 6, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:39:32');
INSERT INTO `oauth_auth_codes` VALUES ('55faca23c367f89ad63c46e819772b4a25f4d0aef95af6d8524e71741c2f2bd632a6ff743d9d3823', 14, '1', '[\"view-user\"]', 1, '2023-12-26 11:55:56');
INSERT INTO `oauth_auth_codes` VALUES ('56afd8a178acc4582fd7862a58b007f3a7216fd855fb9dc74cd585fa56e393dd57f26b3935b3952b', 1012, '1', '[\"view-user\"]', 1, '2023-12-27 16:48:26');
INSERT INTO `oauth_auth_codes` VALUES ('57e65aef853c359b7f8262cddd3f0ac845794653f1cc322ea08748d7027bce1432f5cc5e95299eab', 2, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 10:21:07');
INSERT INTO `oauth_auth_codes` VALUES ('57f10816318fd928627832afaa863e142ecd010517f438949131b81479f0e9fe60a7a7ca923f027c', 11, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-13 18:30:55');
INSERT INTO `oauth_auth_codes` VALUES ('580123ce7fb8e4128f66a782ba8f95f4d606b2bc807830a0a55ef4b88c76868259611f528228258f', 5, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-11 18:48:28');
INSERT INTO `oauth_auth_codes` VALUES ('58fe7930e318f032237ba5e9293b6a3e43dd1aeea7af5b74e4b1daebe4e5844ca3c00121c55dc636', 1011, '1', '[\"view-user\"]', 1, '2023-12-27 16:31:01');
INSERT INTO `oauth_auth_codes` VALUES ('598b694762840c5d5faf864b9886a4fad24e7e8ac3a7e5baa87dccd3d08eab8a9700126e5cce3dec', 16, '1', '[\"view-user\"]', 1, '2023-12-25 10:43:50');
INSERT INTO `oauth_auth_codes` VALUES ('5aa4ca2057b265b3e2d14b1ea22e017b6c4860d40e413a5f73af939d2d22a29226a3730d6fc41417', 4, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-11 18:43:54');
INSERT INTO `oauth_auth_codes` VALUES ('5aa6a012272db7c3c2577cd4dbfd09b147ddc5eed31dce806b7f33f5af21ccffe031cd2aec0845b9', 3, '1', '[\"view-user\"]', 1, '2023-12-26 20:03:58');
INSERT INTO `oauth_auth_codes` VALUES ('5b70fc10a1f0305a5dd060ca6c4fcfed4d15ec71bf65505e8a591a7f51ad3052b820fd072039e50b', 12, '1', '[\"view-user\"]', 1, '2023-12-18 14:39:38');
INSERT INTO `oauth_auth_codes` VALUES ('5bcfcaa3994eed9000a39376ab88e355509df9a8f19713177aaf80a1bce3947b845cd58ed25c867b', 2, '1', '[\"view-user\"]', 1, '2023-12-13 19:01:07');
INSERT INTO `oauth_auth_codes` VALUES ('5e406b373226c288b4d967cb4a7ed10764fdb6047caf76b6137e9dd8945df1d06650656145c16d5e', 2, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-13 18:08:59');
INSERT INTO `oauth_auth_codes` VALUES ('5e808cc03fd77e8446f89e22c7969aa96b784b4e95073a3e7929b0dc414e1bd66d91a1220cdcf474', 1029, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', '[\"view-user\"]', 1, '2023-12-28 22:04:23');
INSERT INTO `oauth_auth_codes` VALUES ('5ec4c69897f1adc0859fbb8543a4d39681992acc8ad3c6632616bd5837d3862bd5c68ce1505a85d6', 4, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-11 15:09:34');
INSERT INTO `oauth_auth_codes` VALUES ('5f83ec0764c45c8b47ffd0e25d17808e58d171c3d84e206999ea4bba3395be95eef050eaf6473bb8', 1019, '1', '[\"view-user\"]', 1, '2023-12-27 17:58:46');
INSERT INTO `oauth_auth_codes` VALUES ('5f849ec48375f88c612f625ad40749f8000a9b8a0c8567bdfe1478ad0b0e98d4f1df551761cfe7bf', 1025, '9ac45384-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 0, '2023-12-28 19:10:48');
INSERT INTO `oauth_auth_codes` VALUES ('61456ab7964c0b58f533ed149d2bf465a15d667af7bd37562265f3882d7c7e8c04a7d463793fc0c9', 1009, '1', '[\"view-user\"]', 1, '2023-12-27 16:01:18');
INSERT INTO `oauth_auth_codes` VALUES ('615831737abd70d22c074cb3cb53e17b4ff5825cb1696379de3af2f9338f4e720de5bad5886b6045', 4, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-11 15:08:11');
INSERT INTO `oauth_auth_codes` VALUES ('61930292057d1b95800e2fb0feafe1529fd376e7246d84840453250d4642ae6e9f2bbc4d4566e077', 1015, '1', '[\"view-user\"]', 1, '2023-12-27 16:35:56');
INSERT INTO `oauth_auth_codes` VALUES ('619d358c76a012b26a1904fa0030885aa3b805845c26b0f348d4af37e07e3e0f480c0ff54e22580f', 8, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-13 15:15:49');
INSERT INTO `oauth_auth_codes` VALUES ('61e4287ce3639d4aad829e22dc8977c812529a6f5b674f5c0ad8417d438711a8e274fa07e439f74c', 5, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:28:31');
INSERT INTO `oauth_auth_codes` VALUES ('61ef0edaa04458de275ee21c743659e7714e9577e54c2f09b787c97653e2824e7f8d32c6d90e4893', 16, '1', '[\"view-user\"]', 1, '2023-12-26 12:07:05');
INSERT INTO `oauth_auth_codes` VALUES ('62160278e6cca034d4620f2559068720264cbf8d8476bd6d00f757837a1f98d03536c03b43f83d60', 1, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-05 18:37:09');
INSERT INTO `oauth_auth_codes` VALUES ('62d4b9e0916e984cbe54c2dc377bbfcfa7e7a22b6770effa547c0ff9092f81c189d6e9ba36aa830a', 1012, '1', '[\"view-user\"]', 1, '2023-12-27 16:48:51');
INSERT INTO `oauth_auth_codes` VALUES ('62eea5b3b88539239eab2b7fbaaca5bfa98a32241355b315183bec343db11bea8a0d2e382c2a988f', 1012, '1', '[\"view-user\"]', 1, '2023-12-27 16:47:36');
INSERT INTO `oauth_auth_codes` VALUES ('63871666f1c9aa7a1db3227567d511286f2ccae48a2c89b3c896da9e34dcd620fe7afb3b8f221a33', 6, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:39:12');
INSERT INTO `oauth_auth_codes` VALUES ('63aed1f4a9065f27e4ae1e2f3053f48384e5409bf725b45e1cdee384ff950a0e7bd3b7f7955a3165', 5, '1', '[\"view-user\"]', 1, '2023-12-26 16:29:25');
INSERT INTO `oauth_auth_codes` VALUES ('6473d7fc7c0c45a4675a5ab49426f566b3542ff6c5f85683b4c36f45225b3e46a38edd7182b39bac', 1025, '1', '[\"view-user\"]', 1, '2023-12-28 16:23:47');
INSERT INTO `oauth_auth_codes` VALUES ('64b01f57cd1a6ff4666b446cda0c6a5cd796256e92c31b5ea1b81fc4349c34e1467a1108a7cb8549', 5, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:35:18');
INSERT INTO `oauth_auth_codes` VALUES ('64d011b85dfc5496a90e94f599a3b56f5a65c2f0f070115010bac5886b6700cc30653b2b6f519372', 1022, '1', '[\"view-user\"]', 1, '2023-12-28 15:50:01');
INSERT INTO `oauth_auth_codes` VALUES ('653a6b0f411cc3ba939ba2fb13af8d8fa66d9cd42129d31e9f240169a743b8e601ed2d904dd36bc6', 2, '1', '[\"view-user\"]', 1, '2023-12-27 10:50:24');
INSERT INTO `oauth_auth_codes` VALUES ('66ae51d42ec3186739e151e217ab05fa010a52051ad9fa3361474df3c61eec7035a248faece80356', 2, '1', '[\"view-user\"]', 1, '2023-12-27 14:40:12');
INSERT INTO `oauth_auth_codes` VALUES ('673a046f30d5006e8da2b38cbc87a349af8d33efaff36f2ba5d50a5bda7f4014d82afc7e2303b5c1', 17, '1', '[\"view-user\"]', 1, '2023-12-26 11:56:14');
INSERT INTO `oauth_auth_codes` VALUES ('679075dd7e58b2875dfde931f9885e4e6a1e850d4c318c3fd8261526c3b0c22776e17b09036cc9f1', 1, '9ac44355-abb0-4f65-b22e-229e413009f0', '[]', 0, '2023-12-04 18:00:31');
INSERT INTO `oauth_auth_codes` VALUES ('67c6b8901884212efc86d5354b62c5beb36f90771d43e0e5263b0646b55fed39287e18a74a107fb7', 8, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-13 15:36:17');
INSERT INTO `oauth_auth_codes` VALUES ('67d670d9628706afbc96a46071580ae2a62dae8b7eea8d64a6a6f28d4934f288f231255fceb1e24a', 3, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-06 18:27:05');
INSERT INTO `oauth_auth_codes` VALUES ('67e02f3559e91d933d71ef95e75a564368fcbd7a83a7f004cc7efd0fdd72dcbbe4a886a6eb8d9337', 1009, '1', '[\"view-user\"]', 1, '2023-12-27 15:34:34');
INSERT INTO `oauth_auth_codes` VALUES ('67e8b2ed1e1f3a229d26d5397747d75e6a2a0414b46d27d8803615ab03f897442ca37ec514cf4956', 1, '9ac44355-abb0-4f65-b22e-229e413009f0', '[]', 1, '2023-12-04 20:06:41');
INSERT INTO `oauth_auth_codes` VALUES ('68b29a093e38b0454a639a377e4edbb272600cebaa43e7b0eb8df8f97cbf019350024eab46346b5c', 1027, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', '[\"view-user\"]', 1, '2023-12-28 20:29:04');
INSERT INTO `oauth_auth_codes` VALUES ('68c2810905dfce26ad384dbeecc1ab3517f32b18c81534810c9886385bbd644e450679a4bc6f0e95', 1012, '1', '[\"view-user\"]', 1, '2023-12-27 16:48:41');
INSERT INTO `oauth_auth_codes` VALUES ('68d0bf523bde74d20ee16ec425fc3480af421b28a0d21ad8e2431c9505d5409eaca1e8eddfea83c2', 5, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:35:35');
INSERT INTO `oauth_auth_codes` VALUES ('69be069cb19d85101d6e55d40c5d4a0ccc8748ed2ab6732977858e6852f6c34188506ba8f9dec87d', 2, '1', '[\"view-user\"]', 1, '2023-12-27 10:50:05');
INSERT INTO `oauth_auth_codes` VALUES ('6a34067044d188aa70a2145a6d49e68eeb7c27c45c636b5fb9e5f30fb9d0c2f9c061c365b4de0ad7', 1019, '1', '[\"view-user\"]', 1, '2023-12-28 15:51:20');
INSERT INTO `oauth_auth_codes` VALUES ('6a3492090450d80f33e25deb4119257ecb0c14548b43c9988d7183d5059ba50c2ad2dcf8c13ce329', 8, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-13 15:33:11');
INSERT INTO `oauth_auth_codes` VALUES ('6b52610ef675ff05a549aa5afc7e634458c2e1d55b4c8dfd58eca873b004436a3c108a67f542d21f', 1017, '1', '[\"view-user\"]', 1, '2023-12-27 16:44:57');
INSERT INTO `oauth_auth_codes` VALUES ('6bd01f4330563d24fb83e5ee9d98b0c394d6e65fc03b46c016bceb73d80900074d9dbe72843880f9', 16, '1', '[\"view-user\"]', 1, '2023-12-26 12:06:55');
INSERT INTO `oauth_auth_codes` VALUES ('6c39bcab92f2f83bc60f1b5d9b772129b0f6dd6fab2fb357fd4406aea0115c447c4864f7dffeb0ee', 15, '1', '[\"view-user\"]', 1, '2023-12-18 15:32:49');
INSERT INTO `oauth_auth_codes` VALUES ('6d0d520f7d782d9075a6de9b6ea9767fb06e95b74e7ebd9fc8ceeacc9ef11dd845ec208e55b7e733', 6, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:38:09');
INSERT INTO `oauth_auth_codes` VALUES ('6d350509e7456ecad8e0eae0d58937fbf17c5b24b51ba72c22d1a088b53712d4a0b495c2937c6976', 1019, '1', '[\"view-user\"]', 1, '2023-12-27 18:18:46');
INSERT INTO `oauth_auth_codes` VALUES ('6d89644c14e563162d209d0b37ea30ad72c50dbd67f7d9ae5622494b8e7eab049c6825bfee4725d6', 1025, '9ac45384-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 0, '2023-12-28 20:07:42');
INSERT INTO `oauth_auth_codes` VALUES ('6dac2f99bcf6c65c810801e5f85acae608c317bc9a7677e06739f644f03db9c79c315bc47a15408c', 1015, '1', '[\"view-user\"]', 1, '2023-12-27 16:36:12');
INSERT INTO `oauth_auth_codes` VALUES ('6e6a46f2a340f720aa13ef2e4b15ea5066472d1de4e19ceae95c2845fb355df8bc21774ee3be6fa2', 2, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-11 15:07:09');
INSERT INTO `oauth_auth_codes` VALUES ('6eb45861d38640bae4655f96b2bc51a3180b1d33c80c288dfa3045ac31ee4bbda65fcb4d70688bd0', 12, '1', '[\"view-user\"]', 1, '2023-12-18 15:24:53');
INSERT INTO `oauth_auth_codes` VALUES ('6ebc876bc66ccd1fedadafe7d2507438f5ae7dfd203bcc064693eff770b2b04ee5f83ab9a6ef604b', 12, '1', '[\"view-user\"]', 1, '2023-12-14 10:52:11');
INSERT INTO `oauth_auth_codes` VALUES ('6ec898400b7914a1a4e0c9f1cfdeb1942bf01c141f1fcc0385dceeec19031644a1b98fe248bac781', 3, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-06 18:33:24');
INSERT INTO `oauth_auth_codes` VALUES ('6f7f7ca6f592904472ca00321e805c4cec25355547acef65f2ce8e577d74f4f388c325d32f633843', 15, '1', '[\"view-user\"]', 1, '2023-12-26 11:54:55');
INSERT INTO `oauth_auth_codes` VALUES ('701d8739a0825f8669299fb29d383c8fcdaee539f24df3c87605aecec8d69bd7f363dd760e03b84a', 8, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-13 15:30:20');
INSERT INTO `oauth_auth_codes` VALUES ('709bd9176d53c4e767fcf4df3bd7f1c2142adb5e6fe35c2e168c4060fff9826f4f2ffd2511ec632c', 1, '9ac44355-abb0-4f65-b22e-229e413009f0', '[]', 1, '2023-12-04 18:12:25');
INSERT INTO `oauth_auth_codes` VALUES ('70c58316d894b72fdf095c9903b61acac6caf3b4b66f794feb1d6077c9ab0ff97833cf5c2fe26964', 16, '1', '[\"view-user\"]', 1, '2023-12-25 10:44:09');
INSERT INTO `oauth_auth_codes` VALUES ('713d1b0c8f563fb865ba0b5455cc0b57be92e402d20e227f11b30a7689111122afb5cbe4b69c9288', 4, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-11 18:46:51');
INSERT INTO `oauth_auth_codes` VALUES ('723b69f5520a22080377cde270c15195a292ce4b1cbd0c3a0aa21fd1fb70fd52bf165aafe7008bc6', 1028, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', '[\"view-user\"]', 1, '2023-12-28 21:43:43');
INSERT INTO `oauth_auth_codes` VALUES ('733a7c3ec269dbf74b9d4c2b3626c887c3298ee97b5201383ad3f00e9fcbac6f2f1f4fd2c59af8ca', 1019, '1', '[\"view-user\"]', 1, '2023-12-27 21:22:48');
INSERT INTO `oauth_auth_codes` VALUES ('738d9ddb4b8ce254c22dd6ac3982f49269e7d4ebfff24c2043fd930fa7e505fc9328b6831dd71882', 1019, '1', '[\"view-user\"]', 1, '2023-12-27 18:06:26');
INSERT INTO `oauth_auth_codes` VALUES ('73ef95737c6b6dfe16a6811a7aea9f20e8161a38a094ba70f7e189debe5c41b6c3cac8d4c24c6fee', 3, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-06 18:25:25');
INSERT INTO `oauth_auth_codes` VALUES ('74a90655531ab9a3bd8790c2ff2f2452a28cd59ed622fef6535d3a70f598a9d4ce225518a5d9de45', 1009, '1', '[\"view-user\"]', 1, '2023-12-27 15:30:21');
INSERT INTO `oauth_auth_codes` VALUES ('7589ff559ce82e5fd475622d3714c43b3598d51d12a62201c106cd08dc4a0f8d129da5a44005eb33', 4, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-11 18:46:46');
INSERT INTO `oauth_auth_codes` VALUES ('75deeede73a1a004de598ddf3af354781fbf93a121c8bee78f364d4c41dc6746203e445b93991fd3', 1, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-04 23:06:45');
INSERT INTO `oauth_auth_codes` VALUES ('765c26fd58c463f1be85d20c409df59981cdfff696a70afd9ae9ffe8581f647e51ea39dd5f05d59f', 1017, '1', '[\"view-user\"]', 1, '2023-12-27 17:34:35');
INSERT INTO `oauth_auth_codes` VALUES ('76674c30c49767bac8953b0031e91f879eab3ce0b8379fc440b137ef1757f6aa81e635d13c688f6d', 1019, '1', '[\"view-user\"]', 1, '2023-12-27 18:15:10');
INSERT INTO `oauth_auth_codes` VALUES ('76ccadd48d252b93b661fe8e99c700014d8d8ac3d15c3801b44ecc8cacbab2d9424cc6646483e04a', 1025, '1', '[\"view-user\"]', 1, '2023-12-28 16:57:41');
INSERT INTO `oauth_auth_codes` VALUES ('7705d4caf510f104d591d6e616844dbd1a436dd5c3d846db8fe1e2e61fc82c5399a142cd1a0a1d00', 1010, '1', '[\"view-user\"]', 1, '2023-12-27 16:17:18');
INSERT INTO `oauth_auth_codes` VALUES ('77f929f6b851a7c0b1338c786506984c30096089f2c230902e838ce44ed7f9e438feac67480b1b99', 4, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-11 18:43:42');
INSERT INTO `oauth_auth_codes` VALUES ('7810478d8587920d60acfb82b76caafd8e6d67fc0d072fcd3174e7ae58f7d4efc5c19007850f73a8', 1014, '1', '[\"view-user\"]', 1, '2023-12-27 17:44:16');
INSERT INTO `oauth_auth_codes` VALUES ('78184ede0b0101b617d1af37da9051f8c7a754779d36d3f710194f00f18c54a423303d0934281071', 1027, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', '[\"view-user\"]', 1, '2023-12-28 22:04:43');
INSERT INTO `oauth_auth_codes` VALUES ('798c9f698c6e36221062233baa53baea73902b14e342d3c4002786ac2b7fd56679bd023c7c85814a', 1018, '1', '[\"view-user\"]', 1, '2023-12-27 17:48:04');
INSERT INTO `oauth_auth_codes` VALUES ('79aa2271e83603a69f900040b33c0b70027fab964c93b340885cf66007c7b528a76bec6657027049', 1025, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', '[\"view-user\"]', 1, '2023-12-28 22:02:57');
INSERT INTO `oauth_auth_codes` VALUES ('7a22fa21f924559ad16e84715dcaaea76d83413e005e534bb9fc9ec8a8db1c94b22fb5c1a4efd7d8', 1028, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', '[\"view-user\"]', 1, '2023-12-28 20:47:38');
INSERT INTO `oauth_auth_codes` VALUES ('7a2cc43879ff0417d45c570595b4920f63db21803f375fe522223302756b55c60c784355253b5ea4', 1019, '1', '[\"view-user\"]', 1, '2023-12-27 18:01:01');
INSERT INTO `oauth_auth_codes` VALUES ('7a90b25e1f968ac71ffc1ce69186ac455d9c45bbc9db56c0ab3bbedc6426da7b03c1c72218b5d9c1', 1022, '1', '[\"view-user\"]', 1, '2023-12-28 13:42:45');
INSERT INTO `oauth_auth_codes` VALUES ('7ade6d65472b2f02aa30ffcab286d7db34fa0f0c0284e2ca0942a1fb65f06f78c91e94715a2528a9', 1024, '9ac45384-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-28 17:39:19');
INSERT INTO `oauth_auth_codes` VALUES ('7b2fcb2ded1ca2262711f2170f18499a4e885d80534dacc13691fb059737668351e6b86f9ef0c1e7', 3, '1', '[\"view-user\"]', 1, '2023-12-26 22:07:43');
INSERT INTO `oauth_auth_codes` VALUES ('7b8f23f9029533d34d9881b4d9752445f917bfa3542bc69772f6adbfe941d203e5a599b870d408ae', 1, '1', '[\"view-user\"]', 1, '2023-12-27 15:00:38');
INSERT INTO `oauth_auth_codes` VALUES ('7b9a74ae23787821171c6c51671cf7d95f13c4f83c7c13ffa9d606666e20ac555b05cd439a08fae4', 11, '1', '[\"view-user\"]', 1, '2023-12-18 15:27:20');
INSERT INTO `oauth_auth_codes` VALUES ('7c6c93baec6a99831320ac1ae7f461aa69ccafd53b3b9f871159a8fbe100c5aba6bb706f5caeeaa3', 1027, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', '[\"view-user\"]', 1, '2023-12-28 20:36:58');
INSERT INTO `oauth_auth_codes` VALUES ('7c77d672ec4bf7c5d16ab37cdb47736f4930d445a671e773afd9a53a73c6619fd7b7c1244cc91e57', 11, '1', '[\"view-user\"]', 1, '2023-12-13 19:02:03');
INSERT INTO `oauth_auth_codes` VALUES ('7ceb9037c1e74091ecf7b31999bd7c67a626b49124854c26ece568e42fee6ae2865345b9e4dbc364', 4, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-11 18:45:27');
INSERT INTO `oauth_auth_codes` VALUES ('7d1e08ec492f8a198a548dc7f34714733a24c5f9a439367c1cf9bc0a36e71114ded2b5b8b1e59253', 1019, '1', '[\"view-user\"]', 1, '2023-12-27 17:56:04');
INSERT INTO `oauth_auth_codes` VALUES ('7df66a9af076d56f2079328e0e50590e98fcae0b965a4be3f0c08cf9254442376010d7e439f623a4', 5, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 10:21:53');
INSERT INTO `oauth_auth_codes` VALUES ('7ec7e993928ee00bb3fcb36fb5e0c7f3164ce9c85bc813b3eb86faab5462b4d52407636eba452665', 1010, '1', '[\"view-user\"]', 1, '2023-12-27 16:17:38');
INSERT INTO `oauth_auth_codes` VALUES ('7f13276565b9a00b57838586e605270b03ffb0490aac3791cad69d30d3dd56f50e65384ed4e1557b', 1022, '1', '[\"view-user\"]', 1, '2023-12-28 11:57:55');
INSERT INTO `oauth_auth_codes` VALUES ('7fc22bd8477e84497babba6b6b3d10973073b0935f339d3405c92b94f3f7ab8c8e3ceac133a05b4b', 3, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-06 18:26:33');
INSERT INTO `oauth_auth_codes` VALUES ('7fcbe253e3b4e0ec949d43e40b0a119faec464779264102102e272aad0ee9ee54cdd35fd9c2c7071', 1019, '1', '[\"view-user\"]', 1, '2023-12-27 17:58:50');
INSERT INTO `oauth_auth_codes` VALUES ('7fd0fe8104cec7ed969fd4f0429baf0268a4e5dc495f540e079d822708a61923fb7ce9fd4281d903', 1017, '1', '[\"view-user\"]', 1, '2023-12-27 17:35:09');
INSERT INTO `oauth_auth_codes` VALUES ('800aea1ca0380cca1fcd88efacba4c40cdfec49b0a6cd8bc762b640448dcabb745536a638aec9aa1', 5, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-11 18:48:39');
INSERT INTO `oauth_auth_codes` VALUES ('8138808e1550e06a681e36c9a823dc81ce3a0b83a2eeca295b16e3e3b2234ece2bf8db40356d63bf', 1027, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', '[\"view-user\"]', 1, '2023-12-28 20:31:28');
INSERT INTO `oauth_auth_codes` VALUES ('818dcea0acc43c73c18ac4606d101906d7ceb33571526526833892c49e31083f469c5000d9f05a25', 1030, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', '[\"view-user\"]', 1, '2023-12-28 22:06:14');
INSERT INTO `oauth_auth_codes` VALUES ('821e6e97016326d8a2d83880c0a7fb9689758b440e4395323b5f2f21c54670a100bad779a2fc6013', 3, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-06 18:23:01');
INSERT INTO `oauth_auth_codes` VALUES ('8291b8cc1af27e04eba8fb2f0211120645aa12e5483f793c571b65568822437984bf962c8b80b039', 16, '1', '[\"view-user\"]', 1, '2023-12-26 15:07:24');
INSERT INTO `oauth_auth_codes` VALUES ('82e57b188595a3a21098c0778ddf7afa58a4cfa64755ce0df60c05a48ff8477ea76095ddd78ad336', 1018, '1', '[\"view-user\"]', 1, '2023-12-27 17:48:28');
INSERT INTO `oauth_auth_codes` VALUES ('83359516fe3fcd467ae4c0f7d77370d47d873b29aea6b1bd3ac1702e19a8a117e161db56f661226a', 16, '1', '[\"view-user\"]', 1, '2023-12-26 15:03:53');
INSERT INTO `oauth_auth_codes` VALUES ('8344ff411435050db3532379ab2b33ad78fff8ed0c1f018e0d12402d2143a8bc7eee5a00f5c6d2d6', 1023, '1', '[\"view-user\"]', 1, '2023-12-28 16:22:34');
INSERT INTO `oauth_auth_codes` VALUES ('8396a995943d04ce3cc68fe221149320f0c2fa7fee5ea43857c932b0f8530396c245d97ac1562b37', 2, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-05 18:39:53');
INSERT INTO `oauth_auth_codes` VALUES ('83f55ca8e861a5eec526b5a55f226993e9d9ffdbeeab6c12f408cf05020350a3c8f500595adb6d2c', 16, '1', '[\"view-user\"]', 1, '2023-12-18 15:36:31');
INSERT INTO `oauth_auth_codes` VALUES ('845db77acf903e026088f32015a48b0e70867c41dbbe449cd8fd76639457efcd37b62ac4a58f2bd6', 12, '1', '[\"view-user\"]', 1, '2023-12-15 12:01:02');
INSERT INTO `oauth_auth_codes` VALUES ('84fb12bb4d0f0147a28b78e2a2906c678ea505fd239fb49366565f1b2fe75b8cf0bb7d798a281d5c', 11, '1', '[\"view-user\"]', 1, '2023-12-18 10:47:38');
INSERT INTO `oauth_auth_codes` VALUES ('85202eb2787451c3056c274bca34bac27add800021b158ca5ff29fa504efce7af2efbc1a7349fefe', 1025, '9ac45384-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-28 17:40:57');
INSERT INTO `oauth_auth_codes` VALUES ('8552b07c2799c8e44c1c9061cd2304c7bbf51dde236c922f59861ff3964de627f38ecbe14a05bc43', 4, '1', '[\"view-user\"]', 1, '2023-12-26 20:40:57');
INSERT INTO `oauth_auth_codes` VALUES ('861154e828d6cbdb456359c6e6ffb10719e38f82015c5b4cb2f8965052702d507cdd9876cf404217', 1, '9ac44355-abb0-4f65-b22e-229e413009f0', '[]', 1, '2023-12-04 20:01:04');
INSERT INTO `oauth_auth_codes` VALUES ('86373acfea6e8f8de3fe3ee593de3dcbfa9c3deb92270627c60d6ca707afccb2841591e296d3111e', 4, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-11 18:46:13');
INSERT INTO `oauth_auth_codes` VALUES ('86908b676ce6a906f6518b9a48821c07ff041a8fc5883513d4e711355d94e20f8fbdd8531de94a73', 6, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:39:07');
INSERT INTO `oauth_auth_codes` VALUES ('869a3209404f7d2ff949a91589dc9b413a5edd57fc2bab2e3d05b8565dca9ddacd5f3a763d88eb0f', 14, '1', '[\"view-user\"]', 1, '2023-12-25 22:03:57');
INSERT INTO `oauth_auth_codes` VALUES ('87d0f850ff9cb2e35190fe09421f7f2c0f3403e7cff15fe622b19d9150617e6063f8a05fc16874d6', 12, '1', '[\"view-user\"]', 0, '2023-12-18 10:46:51');
INSERT INTO `oauth_auth_codes` VALUES ('87fc9dab13c5d6dea5d22ef49786aa6edd8fe31b3eb60c5a64cb4aea45186280767d124247f7442e', 16, '1', '[\"view-user\"]', 1, '2023-12-26 15:12:12');
INSERT INTO `oauth_auth_codes` VALUES ('88085ec24df7a45c929f806acfeeb15dd4ad5ac643731c812e01501eaf12a6315f5a57d2d403a327', 11, '1', '[\"view-user\"]', 1, '2023-12-18 11:03:47');
INSERT INTO `oauth_auth_codes` VALUES ('885e038e64276414fdc9eaff3cb50386c0bd7c29d8b08f17e8e2557317d532cf7edf5fb063a38943', 1, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-04 22:39:46');
INSERT INTO `oauth_auth_codes` VALUES ('889152d2e53ba231648b3dd3e7b14bf55b03922a6acb661eaf4cf0b04e17e7b5a34627fbe411673e', 12, '1', '[\"view-user\"]', 1, '2023-12-18 14:51:27');
INSERT INTO `oauth_auth_codes` VALUES ('88e522b0b134ab503bb4d4d3622cbe3caeeec9491ca20940ce4d1bbc890a8a032860e3f39c4128c5', 3, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-06 18:28:07');
INSERT INTO `oauth_auth_codes` VALUES ('8945701dcc6a3dd1b79454106c814a1baa575a81d33aa4beaa05eb24a67581c7d540ad245b863d1d', 15, '1', '[\"view-user\"]', 1, '2023-12-26 11:52:01');
INSERT INTO `oauth_auth_codes` VALUES ('8995ffc3c75ce09ba3eb55b74b704bb451c7c4ed8fec5830d6ca9cadccde5c1e3c54b77c7510ffd4', 2, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-13 18:31:12');
INSERT INTO `oauth_auth_codes` VALUES ('89a3194f67bbb95aa9b2e35ff1f3ef4230cc38e3b143cf2b3a962b9141e47c9a8399a5d9bf1b2476', 1013, '1', '[\"view-user\"]', 1, '2023-12-27 17:40:40');
INSERT INTO `oauth_auth_codes` VALUES ('8aca69264bfb39151d009aa4c330fc2efb1bf2296d8be42bf12eb4e1c35f251d5fd86d12f585c2be', 12, '1', '[\"view-user\"]', 1, '2023-12-18 15:25:25');
INSERT INTO `oauth_auth_codes` VALUES ('8ad9765a37c3882deff10751a17fa0db096babfc749f9ad46fd2f0cd620625c85ea34cb54546ac89', 1, '1', '[\"view-user\"]', 1, '2023-12-27 14:41:32');
INSERT INTO `oauth_auth_codes` VALUES ('8b0b080677ce91f850b0666351fb9a0900f125d9bbcd982883bf9fc8bd48484273d6ed25e40b85fd', 2, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-13 15:46:19');
INSERT INTO `oauth_auth_codes` VALUES ('8b8f6ce7476e8e31a1028b1355c653476f10ad59dd2c0953f6faae5d52336e31b40bd5b3d16b55ad', 5, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:35:28');
INSERT INTO `oauth_auth_codes` VALUES ('8c3c4a1351ae1b309d3a6251235079b43e8150d1c214b666078eeb96e7046c5f8a56e5f0a7176253', 1019, '1', '[\"view-user\"]', 1, '2023-12-27 18:18:41');
INSERT INTO `oauth_auth_codes` VALUES ('8c585b607e42a3ac289444d2d701a4647b155c47705254234473572d02115e95e45e0ea47ef21556', 1028, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', '[\"view-user\"]', 1, '2023-12-28 20:43:39');
INSERT INTO `oauth_auth_codes` VALUES ('8c78804c5bc71b48c4de9037d97a5763361b2c20928bc3fba43d2d0dcc3b1a529d2eb0bae31d750b', 14, '1', '[\"view-user\"]', 1, '2023-12-25 21:12:44');
INSERT INTO `oauth_auth_codes` VALUES ('8f91a0a7f67c33b5d5eef70c6f82818ea00cfad309654a9f31f0d82fafb2ea7bb981cb1cfdd65512', 6, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:41:20');
INSERT INTO `oauth_auth_codes` VALUES ('8fb2092ad95bb8a6279f2d4618cf023bc58a6086e7246bc1e1df59e972aecf758883ad34ffbaa017', 1, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-04 21:05:03');
INSERT INTO `oauth_auth_codes` VALUES ('8fd9f3abd3dea6c9f98600aa4415c93131e5d97ee7b9939435277ed45257d3cc8ff29e8aaba9d6ec', 1028, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', '[\"view-user\"]', 1, '2023-12-28 22:02:45');
INSERT INTO `oauth_auth_codes` VALUES ('8ffdd3a3e9e779d66e6f8ff8fb5245421601346bb5f21a28914e0edfdb77d7ac90cdbb97264b2f3a', 1017, '1', '[\"view-user\"]', 1, '2023-12-27 17:33:52');
INSERT INTO `oauth_auth_codes` VALUES ('9074819ade7e1edeea57fb4f4818f659f94d914146c058ba924e1c94c803e099eb38832d897867b2', 1023, '9ac45384-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-28 17:38:44');
INSERT INTO `oauth_auth_codes` VALUES ('90c5451848e18047e2698ee1c487f024219fd690e6d1b672657c3415ab6cdd776ae896a047fd46ee', 1025, '9ac45384-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 0, '2023-12-28 19:05:03');
INSERT INTO `oauth_auth_codes` VALUES ('90f0ea413dba6de20c06a9afbf239f8720cd67576ead2aa9e5eb0db677d8ff37753311abe63effd5', 8, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 17:21:09');
INSERT INTO `oauth_auth_codes` VALUES ('9132878dd5cf84c698a07382452099de0d2eb13c34c2c9260663c9f83ae26d3def75e98acddd56f2', 14, '1', '[\"view-user\"]', 1, '2023-12-25 21:31:12');
INSERT INTO `oauth_auth_codes` VALUES ('914b2bf13b1ce71ff709ed5205a5baff243fdb918c469a26b730d93bf20b599e8ced1da010d81de7', 1009, '1', '[\"view-user\"]', 1, '2023-12-27 15:33:01');
INSERT INTO `oauth_auth_codes` VALUES ('91812731ca727a96c89513b1c5aafcb118e8c3af2927a33fda4a2537d17cf85366c110c2455563e4', 1019, '1', '[\"view-user\"]', 1, '2023-12-27 18:10:43');
INSERT INTO `oauth_auth_codes` VALUES ('9212f723cc4c7142069baaef269ae7da7c5a406f365fd1049f23432a6ee9e2a26d95054627e182ed', 2, '1', '[\"view-user\"]', 1, '2023-12-13 19:01:49');
INSERT INTO `oauth_auth_codes` VALUES ('927896b647002ff099f4382dcc65868f3baebbe4b6be2f33793e22b1a8dacd5d49ada7934452a6c4', 1, '9ac44355-abb0-4f65-b22e-229e413009f0', '[]', 0, '2023-12-04 18:08:15');
INSERT INTO `oauth_auth_codes` VALUES ('935d442c1b9bcbf93c3cff33e9926c301ad9ce4b4766abe82ded48559d803e930fdb75c8c5e6b734', 2, '1', '[\"view-user\"]', 1, '2023-12-27 10:50:15');
INSERT INTO `oauth_auth_codes` VALUES ('938edd1e23bb6600f2c8a26030ee778a17bf84b4b8582a8e48323548b9503b7c92f4962a58882504', 8, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:52:37');
INSERT INTO `oauth_auth_codes` VALUES ('9488d6bae935fc19cbccea3be07367c930f994774e396444a0fc72e71873da4d35a70bc4947a3e54', 14, '1', '[\"view-user\"]', 1, '2023-12-26 15:13:42');
INSERT INTO `oauth_auth_codes` VALUES ('949c424e97fd9ae3ec07641f23b4ae592693d5357f2bdc47f6a18b1855d2afd3de3980fadcf1268c', 2, '1', '[\"view-user\"]', 1, '2023-12-27 10:50:38');
INSERT INTO `oauth_auth_codes` VALUES ('952f0cb77eddb0e4b60d6303cae72a6d41d7c9267b1ec59932590b2fd2b4c6ffc6eede3c32013768', 12, '1', '[\"view-user\"]', 1, '2023-12-18 14:53:50');
INSERT INTO `oauth_auth_codes` VALUES ('95ed93b8f39cd67646fd26fc9eb25c45994e414d73ecd7ef37b8002447e222fb686dca834fa3ee55', 15, '1', '[\"view-user\"]', 1, '2023-12-18 15:31:57');
INSERT INTO `oauth_auth_codes` VALUES ('968eddbdf90d87437d1834dbde2f4f5642fe55d6b3272dcf50624cd22a9669e155a87bd626ff5fb0', 15, '1', '[\"view-user\"]', 1, '2023-12-26 15:12:47');
INSERT INTO `oauth_auth_codes` VALUES ('96a5a8305da8a421b52ecd8e02b818de00f9450293ad51b85ad384e1cc404e172205cbd969c50603', 4, '1', '[\"view-user\"]', 1, '2023-12-26 20:41:10');
INSERT INTO `oauth_auth_codes` VALUES ('980c2703095a434d32646dd8d459bd251715d3e45fc31c2f23f599ed4e8a19beaaa97e3de0945873', 1013, '1', '[\"view-user\"]', 1, '2023-12-27 17:37:17');
INSERT INTO `oauth_auth_codes` VALUES ('985775852c0a288d735ee7034cfb2357861fae6a156e9627befdf9529d4ff5dd9156101272bdf69d', 1, '9ac44355-abb0-4f65-b22e-229e413009f0', '[]', 1, '2023-12-04 20:04:48');
INSERT INTO `oauth_auth_codes` VALUES ('997a66ff9c1d871a1d9d1511310168de8e69c3a2b1e2655776103dad96fcb5b110a5fa891822c6bf', 3, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-06 18:29:42');
INSERT INTO `oauth_auth_codes` VALUES ('997acef5e7180e9eb0ab451359a046d0bdb2a77a2f4a4c8a4e8f6bee3f95d43c1428b252c8bd97c4', 16, '1', '[\"view-user\"]', 1, '2023-12-26 12:06:39');
INSERT INTO `oauth_auth_codes` VALUES ('997bd08cbea0df26635c6dc64b9ed009ed015908dcbba2727d59a3ead169ae629368b3893fe23c59', 1026, '9ac45384-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-28 17:41:21');
INSERT INTO `oauth_auth_codes` VALUES ('9a5157863b22e7bbcb44650a0ad029cea5bb06961408822e0db12f83a2051d9a1c64f46c8681f78a', 8, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-13 15:18:57');
INSERT INTO `oauth_auth_codes` VALUES ('9a6aee7d65fcec8251703c68ca8556a94b0f6306c916c7d22549d6a5c409840639c3bd3f75f1a0b8', 2, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:42:04');
INSERT INTO `oauth_auth_codes` VALUES ('9aaebfc653021353b49cf5ed9e68e61e86ee3b8049bff554dde1e7bb91f0bf96757f940dd44e5964', 5, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:29:42');
INSERT INTO `oauth_auth_codes` VALUES ('9b383619aae9a27edb952f65c863e4871fa5eb8118175f43d77f839b60d7ace7bc862201fea454ec', 1028, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', '[\"view-user\"]', 1, '2023-12-28 20:48:11');
INSERT INTO `oauth_auth_codes` VALUES ('9b51a2b6acfac9d10d999582801a1f992ea069d66e9d47d4e429c42f364b26c44997e9db3982049e', 15, '1', '[\"view-user\"]', 1, '2023-12-26 11:52:42');
INSERT INTO `oauth_auth_codes` VALUES ('9bc1e091639ded312e36860bbaec53b973396599a5282acc08ec79869257328f4e4ef36d2a3aa17d', 1011, '1', '[\"view-user\"]', 1, '2023-12-27 16:28:31');
INSERT INTO `oauth_auth_codes` VALUES ('9c2651a5d68752df3e6290043a3ea0028d4176a2a722cecf99641ad26446c6f043294f683efb8e4b', 1026, '9ac45384-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-28 17:41:24');
INSERT INTO `oauth_auth_codes` VALUES ('9cb140a6035a9688583038387a563294d4f8a88827983f3587be528c0eaf8d89a1904920f49efb5b', 1, '1', '[\"view-user\"]', 1, '2023-12-27 14:43:33');
INSERT INTO `oauth_auth_codes` VALUES ('9cc98374785252a50ea0b6e5f0651fe82cfcc42080267d98cb95784c52e3c2d478241519cf1aaead', 16, '1', '[\"view-user\"]', 1, '2023-12-26 15:13:22');
INSERT INTO `oauth_auth_codes` VALUES ('9d001f5e995325bd4876c77d38aade900eef4a1b1746190ac8944bb2dfc0c07431c8d3f2f5249dca', 1019, '1', '[\"view-user\"]', 1, '2023-12-27 18:15:07');
INSERT INTO `oauth_auth_codes` VALUES ('9d36801feec17704b604fcb6546f992a007d1e79adc6a37ba17e82e86bf7cb47c43ae004d5c31ca0', 15, '1', '[\"view-user\"]', 1, '2023-12-26 12:02:05');
INSERT INTO `oauth_auth_codes` VALUES ('9da2c4dac39a87950f919876719ec47ef4e204c647a4b0946fee24db25de662d766aefb9cdc106e8', 1022, '1', '[\"view-user\"]', 1, '2023-12-28 12:22:12');
INSERT INTO `oauth_auth_codes` VALUES ('9dd292d56655d592025e0240d70cbb04d50fb67e9328d0201afb8f1f38b6e1d603bde69238f56c29', 1012, '1', '[\"view-user\"]', 1, '2023-12-27 16:49:19');
INSERT INTO `oauth_auth_codes` VALUES ('9df01a8aa8e2eb3a8a0773cda0b069f575741de265e78d1282b342f96c1b22da2dba4ecfe64f3201', 5, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:28:37');
INSERT INTO `oauth_auth_codes` VALUES ('9e1bbe6e95cffd1ee76d9ea73c07b39f1e7f4e6ce15fb5d5a51e34cf75dc80948cbc54aaf03518b2', 11, '1', '[\"view-user\"]', 1, '2023-12-15 12:01:22');
INSERT INTO `oauth_auth_codes` VALUES ('9e5f64dbe5e4a8aa75196be2c3b4f675b8e6693d3fee9e377833bfe2305d76fe8d9241f0bf8ae80b', 11, '1', '[\"view-user\"]', 1, '2023-12-18 15:27:01');
INSERT INTO `oauth_auth_codes` VALUES ('9f9958ca87fedae9657631b6e9e0d81d484936b4db72750fbb5700e6fd584d3093fec875ef48f4cb', 1, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-05 18:33:39');
INSERT INTO `oauth_auth_codes` VALUES ('a00bc9e39356291454d94a714135d0214da3c7f2f7598584f5519c03c453e4c9166bfaca592f6eb4', 1, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-05 18:37:41');
INSERT INTO `oauth_auth_codes` VALUES ('a019529ef7eb388bc56ec21a61f98fd0cb205e92baa413bf837421f79e0113a069272dbf16185c91', 1019, '1', '[\"view-user\"]', 1, '2023-12-27 18:43:24');
INSERT INTO `oauth_auth_codes` VALUES ('a1b9632b513d689ab80cb9f4874713f475872c6eec835bc289d187af6b0d4538e2ea8b6f0458dbc2', 1, '1', '[\"view-user\"]', 1, '2023-12-26 18:57:38');
INSERT INTO `oauth_auth_codes` VALUES ('a210894d1caa74890f44e2800c267bb0cd353b2cd727062583b7244bc09d848e67029d82846997cd', 1027, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', '[\"view-user\"]', 1, '2023-12-28 20:26:57');
INSERT INTO `oauth_auth_codes` VALUES ('a3efb3f8620122e5fc075040bfb9402c1aecb4ca892e3cbe55270271a2265cf5aaf4a6ca97bb37ba', 1, '1', '[\"view-user\"]', 1, '2023-12-27 15:00:28');
INSERT INTO `oauth_auth_codes` VALUES ('a3f549c63d767866108d66df733a7e3afbf9afb83437469332839d118ed0ac8471d8bbc3874f0be6', 1019, '1', '[\"view-user\"]', 1, '2023-12-27 18:10:18');
INSERT INTO `oauth_auth_codes` VALUES ('a405d29f50e95aca837d64daa1e0dda10ea5c7bbddf1ba6398d98db3c5bde794e1c561184b4587c8', 1024, '9ac45384-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-28 17:39:43');
INSERT INTO `oauth_auth_codes` VALUES ('a4932efaf6c757f061b9336a771fddf17d79915aa07f97d455cf3ea5c5a59862438afcf1f8a0da37', 14, '1', '[\"view-user\"]', 1, '2023-12-18 15:36:08');
INSERT INTO `oauth_auth_codes` VALUES ('a4c4d7a7389ea41d765c91479aa34787d396265c30115d1ef522c3df8461a62de5a1bd081a5b5120', 1019, '1', '[\"view-user\"]', 1, '2023-12-27 17:49:36');
INSERT INTO `oauth_auth_codes` VALUES ('a4e9e4b91a3b107d9bd93c66c87525c587cab81f653bcda4fdc55ca2d51ae72decee5ede40f95893', 2, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:31:16');
INSERT INTO `oauth_auth_codes` VALUES ('a4fe7f55bd1bcb03f1b5208a54a91a6e05b4b7d1c4b96700c451f15f9928b8208fda6d8a1800e972', 1012, '1', '[\"view-user\"]', 1, '2023-12-27 16:48:03');
INSERT INTO `oauth_auth_codes` VALUES ('a50cf1406cb0a0e702a8adf7ebe1027e1362550606d937118fe0994ad36209a8ba3f049837c8ec00', 1011, '1', '[\"view-user\"]', 1, '2023-12-27 16:33:30');
INSERT INTO `oauth_auth_codes` VALUES ('a59ce471f5c02d03d71863d8a5017e886ef4ecfb36c1ce397fec65d8edb8216f02fd9f82f08f7894', 4, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-06 18:36:07');
INSERT INTO `oauth_auth_codes` VALUES ('a617755ed4feb67656aec7996fc279bc881d8a4cf687bf8832bbe0980474e76160e6c1a4a0cd2dd0', 1009, '1', '[\"view-user\"]', 1, '2023-12-27 16:03:32');
INSERT INTO `oauth_auth_codes` VALUES ('a623de989eb1f0f44550c171702faea569510c10a88df9745d1d82ea9bb88329de5977e132e282fd', 5, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:30:14');
INSERT INTO `oauth_auth_codes` VALUES ('a646fa7d7b399d7c2174d50cc63537317e17c4a28ce2ba7b2ba4294dd9296e599edebebb7d1a465d', 4, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-11 15:12:12');
INSERT INTO `oauth_auth_codes` VALUES ('a64e7b13027d3ceb772755c57401d21e69974e79be90b01102eb518f3bddce74f9ba3e8d74257ad2', 1, '9ad29408-0282-4cb3-a1e6-75d3f68a722d', '[\"view-user\"]', 1, '2023-12-26 18:57:18');
INSERT INTO `oauth_auth_codes` VALUES ('a66e0a227ed26bde8da852c600e5169c9baaf09ca0858a5b9160374092d9b5e399a04ad1051a1176', 2, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-13 15:45:00');
INSERT INTO `oauth_auth_codes` VALUES ('a69a05d852f5119ee7f129e5ff116d014dbe68c7a5073c91b94a3ce108f118b54f8f61e2d7f2e905', 2, '1', '[\"view-user\"]', 1, '2023-12-13 18:56:06');
INSERT INTO `oauth_auth_codes` VALUES ('a718abefa8485643708ae230bfdf21ba2cda0f9e05dec55ad49a21c840286e4b9fddf9d861cbdbac', 1, '9ac44355-abb0-4f65-b22e-229e413009f0', '[]', 1, '2023-12-04 19:04:29');
INSERT INTO `oauth_auth_codes` VALUES ('a8605b4c58b195aa923593e3674b7e2224bb9af82bc6e748c087469f774dd6f9442fe68ba6209e13', 5, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:28:07');
INSERT INTO `oauth_auth_codes` VALUES ('a97e19db88653d42f8b52677a608ac3e8774c589019a2bf0c78db7eb8cc3b28622c41951728d4c71', 1028, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', '[\"view-user\"]', 1, '2023-12-28 22:02:35');
INSERT INTO `oauth_auth_codes` VALUES ('aa69c62627dfc3d3ae69c5e857db6fd9a9fce88f8248c9214133e5da96de54e7084efc5dd6e95973', 4, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-11 18:47:48');
INSERT INTO `oauth_auth_codes` VALUES ('aa925975a6559647f559c82706ff6045eba5dba818584ecbea37e0acdb3a12b5995cf39cf18337d0', 5, '1', '[\"view-user\"]', 1, '2023-12-26 22:02:33');
INSERT INTO `oauth_auth_codes` VALUES ('ab147ca102613e6eb785585ed93a727474207f1ea9715452221e0f686a576cf26289e5e91f7c0ab7', 1022, '1', '[\"view-user\"]', 1, '2023-12-28 15:49:55');
INSERT INTO `oauth_auth_codes` VALUES ('abaaf928ff900a1ff2a7103cd1cceea60d15bdf345677ad8ff21f904391f5c3c39260f7b62ea7c1c', 1009, '1', '[\"view-user\"]', 1, '2023-12-27 15:57:44');
INSERT INTO `oauth_auth_codes` VALUES ('abcc5e44ad115b17447c22f5dc12acd9a9d93adb7362aac80aead4ab5229a4ac14aece21530b0e14', 1020, '1', '[\"view-user\"]', 1, '2023-12-27 22:31:28');
INSERT INTO `oauth_auth_codes` VALUES ('acc5929665ed461f4c357ea5467eb6eeb68c07a3090f3484bef40a0f95d0660b3710329b133dc91b', 1, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-05 18:40:04');
INSERT INTO `oauth_auth_codes` VALUES ('acfb4119f43acb9bae146cfb1e14ac5a44c9280af62e0606b0cf82cc1b57d7f6cd1ca44172ea1076', 1027, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', '[\"view-user\"]', 1, '2023-12-28 20:36:38');
INSERT INTO `oauth_auth_codes` VALUES ('ad0deb18155bbb1f8c5a34e77d5ae9baf7094a4c83959385856940fa5cd97cd9468022ab90d92f2e', 5, '1', '[\"view-user\"]', 1, '2023-12-26 22:00:18');
INSERT INTO `oauth_auth_codes` VALUES ('ad1dfe580319814b28306840e09f062d03e742d6da28b6fe0b2bc1b705781615aba77ad831d147e7', 1027, '9ac45384-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 0, '2023-12-28 18:56:07');
INSERT INTO `oauth_auth_codes` VALUES ('ad77e9cde2c01db0f9748d92a44c7109c93bbe67cce24c901451ff53cebe673672254bdf0936f9f4', 1019, '1', '[\"view-user\"]', 1, '2023-12-27 18:56:04');
INSERT INTO `oauth_auth_codes` VALUES ('ae709ab8b33a32a00af39cbde161e97bc7dfb2ffbf4be0e7c90ddeaf96d857670d9c7ffd872fb765', 15, '1', '[\"view-user\"]', 1, '2023-12-26 12:01:29');
INSERT INTO `oauth_auth_codes` VALUES ('aee979ff01d4d4abf4e36f47befefb4c08e55bd5e0be3333dcb4fd68b6e0278f340093c193fd258f', 3, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-06 18:25:12');
INSERT INTO `oauth_auth_codes` VALUES ('aef558886b586bb688f875ee075e26fe477f473b448b6f663c96698368afd28ab7965a97b9f3acdb', 5, '1', '[\"view-user\"]', 1, '2023-12-27 10:45:32');
INSERT INTO `oauth_auth_codes` VALUES ('af861189fb11abd692249746f1dfbb840bf81aa0b2fe26702316817578d2ddecfd98a510a94454bc', 1009, '1', '[\"view-user\"]', 1, '2023-12-27 15:46:58');
INSERT INTO `oauth_auth_codes` VALUES ('b0214d57471e8e6fdd7a984865658a99b7f5fff8efc46ec89ad1fd065097ba7aaa1fe25076f76619', 6, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:44:24');
INSERT INTO `oauth_auth_codes` VALUES ('b16ce6be8aa7545f5441fa97484b079df6fe22008028bbc58685ef3d2637f0da004395ca78e9c6f7', 1027, '9ac45384-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 0, '2023-12-28 18:56:55');
INSERT INTO `oauth_auth_codes` VALUES ('b1f0be600aa873c1fc9b0f429e95d2b33efad5aa5ad608f6ee11f781680410a9c81f361045d7b5e5', 6, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:39:11');
INSERT INTO `oauth_auth_codes` VALUES ('b21f8d0078243da58d259fd9a493b1acc897c75910fc7996cbd98550aeebe7d0727aea09d80074a3', 2, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-11 19:09:02');
INSERT INTO `oauth_auth_codes` VALUES ('b22dd4cf5afcec899ba9c9488e3d662829673adbedc4a98b346fc9d55461a9632df0135954c02d96', 2, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:32:06');
INSERT INTO `oauth_auth_codes` VALUES ('b273c646e193d976bdee07de7665a0288813f4ad4cd4469236210e4cd3bb355c8fcfcb64017027a1', 1027, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', '[\"view-user\"]', 1, '2023-12-28 22:04:41');
INSERT INTO `oauth_auth_codes` VALUES ('b2838c57de8b683cf5098c8051de16396046614984263d78f6a62648fc045e4284a1d36fd527a59d', 1022, '1', '[\"view-user\"]', 1, '2023-12-28 09:56:37');
INSERT INTO `oauth_auth_codes` VALUES ('b29a0204095b87c4a4bdf13daccb36c24005ac1614c1c5028817140391c420c8e057056d2531aaf6', 1012, '1', '[\"view-user\"]', 1, '2023-12-27 16:49:03');
INSERT INTO `oauth_auth_codes` VALUES ('b2f34004d02106ffbfb2eb46b6ac26e70b1c3a62d2928a83cf3624d5e1c480bc5de851370fc1881c', 15, '1', '[\"view-user\"]', 1, '2023-12-18 15:32:56');
INSERT INTO `oauth_auth_codes` VALUES ('b323190fc97851b5f8889757584b177e195e92b0a56f899f62609ce712a2e3af66810f566355fc74', 5, '1', '[\"view-user\"]', 1, '2023-12-27 10:45:58');
INSERT INTO `oauth_auth_codes` VALUES ('b37e3171985715292dfc56ca29b0f716235ea8754ae15c4a2bdf944ed45b30c65df5efc49eceab1b', 1010, '1', '[\"view-user\"]', 1, '2023-12-27 16:21:29');
INSERT INTO `oauth_auth_codes` VALUES ('b3e274584c95003f2d174375d75c70a668abd8d77f4f79034472fb197c4596f9fcae66f5431a8eef', 3, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-06 18:22:27');
INSERT INTO `oauth_auth_codes` VALUES ('b40128438bbae7d8431a3b642ad3325a1c23520b4a74ccf0d66c6d1eb506a16689809e60d0f1a4e3', 1027, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', '[\"view-user\"]', 1, '2023-12-28 20:27:35');
INSERT INTO `oauth_auth_codes` VALUES ('b4c4c0596dd06fb4e6cec1d507cc23de3ba69ed1b4f4126f65758faef8580d4fae93ab6a22d402ca', 1, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-05 18:37:25');
INSERT INTO `oauth_auth_codes` VALUES ('b50c061a2bae1b52df29db907c8052d9ff9bb86265f90bf1cb014f5d4162e327c207b8a079863b1e', 1021, '1', '[\"view-user\"]', 1, '2023-12-27 22:34:03');
INSERT INTO `oauth_auth_codes` VALUES ('b622127b4eba81e4d3002bdfc6dbc135677e449661601434dec4b6e343cff8285ae74792d2734eda', 1029, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', '[\"view-user\"]', 1, '2023-12-28 22:04:30');
INSERT INTO `oauth_auth_codes` VALUES ('b629f9f7ca306980c41fe6e94701f49099470d74a4458d06a5f80a63946c78aee89cb04fecfe171c', 3, '1', '[\"view-user\"]', 1, '2023-12-26 22:09:39');
INSERT INTO `oauth_auth_codes` VALUES ('b64a25df211e1bc2e73e24a77199a4a402e0ff8db740b5f740c2959a1fa02b9dc8d044aece27cd2b', 1028, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', '[\"view-user\"]', 1, '2023-12-28 20:41:44');
INSERT INTO `oauth_auth_codes` VALUES ('b6d357db394d9879d274bafd3eeed9bda5b1b36251454702915c9e3389ef3a07943c6e1c548ab7a2', 4, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 0, '2023-12-11 18:43:28');
INSERT INTO `oauth_auth_codes` VALUES ('b74b09a11b0d27d77fc619eb25ec787ddf336beb790b63066e1103b045b39d836ae6df7afad8fe18', 2, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:32:26');
INSERT INTO `oauth_auth_codes` VALUES ('b7ee2109794f61647f65c4d8255defed6126d8be40a4284e790bf141df6d3f3305fb54aa7d995cb6', 1021, '1', '[\"view-user\"]', 1, '2023-12-27 22:08:19');
INSERT INTO `oauth_auth_codes` VALUES ('b8a22ab0aac37f0256f69218ed3713b8d7be53712ea4ff42f4c64c59c9a737c0750c2266e26ad035', 1015, '1', '[\"view-user\"]', 1, '2023-12-27 16:36:02');
INSERT INTO `oauth_auth_codes` VALUES ('b8b532d4171393b59ab5b52a9f659872dbfbd3462879c10a66491e5f282befc29a0585f02b8c698d', 5, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:31:31');
INSERT INTO `oauth_auth_codes` VALUES ('b8cd6f40d2cb90af1957e658e1873e20aabf7e47c3da987f5cd317b43f756279dbbfae7f48db9c92', 1010, '1', '[\"view-user\"]', 1, '2023-12-27 16:21:34');
INSERT INTO `oauth_auth_codes` VALUES ('b901cb9e1612628190c237dc343973ea69fe09798117c3258d8a529f51c0cb00b552ad925757049c', 2, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:54:33');
INSERT INTO `oauth_auth_codes` VALUES ('b90effa356bd68281e6e895368f606c9a8acbeffab49c8249bfb8039a7b501d4dec30b00b721ec81', 11, '1', '[\"view-user\"]', 1, '2023-12-18 10:19:42');
INSERT INTO `oauth_auth_codes` VALUES ('b942fdb9ade028e2aa4e58ad2b38dfe88ac7005230bd590f17e4ba213522a03ee3fd8bad0465a576', 1020, '1', '[\"view-user\"]', 1, '2023-12-27 22:03:49');
INSERT INTO `oauth_auth_codes` VALUES ('b96eeb7d47adfe76c88a42ae21cd9504d91a55e5eb0a7f630b1bbfa42df8780a8a96c9474783e445', 1013, '1', '[\"view-user\"]', 1, '2023-12-27 17:37:46');
INSERT INTO `oauth_auth_codes` VALUES ('b998552e8ae787ba3a14750a9c757854c49cdd5a8ec2aacf6fb13f8d3510e5b62f09147c76cddd9e', 1019, '1', '[\"view-user\"]', 1, '2023-12-27 18:03:29');
INSERT INTO `oauth_auth_codes` VALUES ('b9c36a1f99d28e96d3ec7670cf4ebda9ec25e65c478f97f389a7d74582244c3c3f9b0d483b9f642e', 5, '1', '[\"view-user\"]', 1, '2023-12-26 22:06:55');
INSERT INTO `oauth_auth_codes` VALUES ('ba11a3f39bd8f97676019dd3b95c06f86360296f4e7f24c93417e984ca6475b0239705592b9d1661', 1025, '9ac45384-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 0, '2023-12-28 20:11:12');
INSERT INTO `oauth_auth_codes` VALUES ('bb584c1c567aa55e690d4ed623951edbbc920639b7d7a32cfd0da42f0fafc7793d480a5b3b0f3e3b', 1019, '1', '[\"view-user\"]', 1, '2023-12-27 21:02:34');
INSERT INTO `oauth_auth_codes` VALUES ('bbd45daa7d496abc1facb09a5174031e1ab30db16ef7e4062e76bd7b18a920ceca824da652632403', 16, '1', '[\"view-user\"]', 1, '2023-12-26 15:03:06');
INSERT INTO `oauth_auth_codes` VALUES ('bdf44a38822ab5e932697b7a71df826ee0c1c0a30b921569d4264690fc4dd07daaa071bc436adf47', 1025, '9ac45384-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 0, '2023-12-28 18:57:55');
INSERT INTO `oauth_auth_codes` VALUES ('beb1f074b0c97ef58d9f4680f9305d6cda56b0ff3c97b7684aac087930d9ad5b631268f89d484cc7', 1, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-05 18:33:45');
INSERT INTO `oauth_auth_codes` VALUES ('bef45ed16c0ff9ca75546e2fa64478e3b7d04c2062b60ab59cebd74a291c910b444610edc2262522', 1010, '1', '[\"view-user\"]', 1, '2023-12-27 16:10:00');
INSERT INTO `oauth_auth_codes` VALUES ('bf7d12f0bdecfa0b7f7cedc34f5225daa1254d5070b5fffe47e6352d1b0dcc34cd14877b10a304f6', 1017, '1', '[\"view-user\"]', 1, '2023-12-27 16:44:13');
INSERT INTO `oauth_auth_codes` VALUES ('bfa6d9302ca9b73281861704bf1ec727fcba3efbe91cd24e885afbbbdefa0acc44f5b86a10506e8c', 8, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:52:20');
INSERT INTO `oauth_auth_codes` VALUES ('bfd2058f7d39f13b99bfbcba745fd9fa1daa181956ae126fb29d9da060b86bf26666cea242316443', 1025, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', '[\"view-user\"]', 1, '2023-12-28 20:25:37');
INSERT INTO `oauth_auth_codes` VALUES ('bff6085b0c4d5a4b1e61a1534833d11101cda2d48182503e57f2cfceefe94a1e3add8c74a352378e', 5, '1', '[\"view-user\"]', 1, '2023-12-27 10:46:18');
INSERT INTO `oauth_auth_codes` VALUES ('c1104277844ac6b3ac015e850d64478cb3ce12322d6141989f8925da8355936df2e7254e37babbc5', 12, '1', '[\"view-user\"]', 1, '2023-12-14 10:41:00');
INSERT INTO `oauth_auth_codes` VALUES ('c137669bd98ddb52cc886c6a0232882bed9dafaf0520b8b7d6fe0bbac3c4d442510832041b0283ce', 1025, '9ac45384-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 0, '2023-12-28 19:08:44');
INSERT INTO `oauth_auth_codes` VALUES ('c14d97a9c75a1f7e65d21cffc84479da7baee66deba6f0bbc2257f1d097741c742638b1dce5e1f09', 1019, '1', '[\"view-user\"]', 1, '2023-12-27 21:02:28');
INSERT INTO `oauth_auth_codes` VALUES ('c15c0d19c8b16199c93c0460f4e1f20d12cf9bfc6a732b09e05bc5ba9727280cb49c6c1f85e1322b', 5, '1', '[\"view-user\"]', 1, '2023-12-27 10:48:44');
INSERT INTO `oauth_auth_codes` VALUES ('c1977164126f81794f5f28fe93d8330bad852b6b9db37da939105311aaef6b48a1314ccf3ebdd8ec', 1016, '1', '[\"view-user\"]', 1, '2023-12-27 16:42:12');
INSERT INTO `oauth_auth_codes` VALUES ('c1a3215107e0e1cdecfeddcd6a6114ec9e1de15efbaba307faa011304ca3c72563e8ebe3fbedc940', 2, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 10:20:53');
INSERT INTO `oauth_auth_codes` VALUES ('c23fd8430dec114af781fa14f2b4bac6c71e2477d9499667488a1910e8ccda03aca65e6aaa898699', 1025, '9ac45384-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-28 17:40:15');
INSERT INTO `oauth_auth_codes` VALUES ('c28e48ddf40db0904ce010d396cfdc8d105f8f1744a3ce270abb498bdf4a589fdd4b2048cea1ecaf', 15, '1', '[\"view-user\"]', 1, '2023-12-18 15:30:20');
INSERT INTO `oauth_auth_codes` VALUES ('c2f015c0b4b80251f6c4b58adb602d7f926d2baaaee93b87db8dab8c5fe5a62fa5f513ad2c3e4d4f', 3, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 0, '2023-12-06 18:22:23');
INSERT INTO `oauth_auth_codes` VALUES ('c31e227dead17524f9836fc7c43fe12802339022bcf460382752ed3533e5ec0e1e98887a85ea3892', 6, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:39:50');
INSERT INTO `oauth_auth_codes` VALUES ('c360d33cf7d7c5d7459da465dce331c1373b071974277b099ae020260b2631a56cd4c27438cfbe51', 1017, '1', '[\"view-user\"]', 1, '2023-12-27 16:44:18');
INSERT INTO `oauth_auth_codes` VALUES ('c3bd803d8656b06e50aa2a2475d5f18512e2b9cae65972b642f3e73fe295cbd6e693a9fe3694a99a', 8, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-13 15:21:17');
INSERT INTO `oauth_auth_codes` VALUES ('c483385ebd57ed399eec06021cdd7db6952283c574f7f72a1401d15e6f7842de77f97042a7012127', 12, '1', '[\"view-user\"]', 1, '2023-12-18 14:52:23');
INSERT INTO `oauth_auth_codes` VALUES ('c49cca29b25d0932154f6735feb2ee944ae619d681383c9a955c2d156e2d2e796fae03bc36c756c1', 1025, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', '[\"view-user\"]', 0, '2023-12-28 20:16:03');
INSERT INTO `oauth_auth_codes` VALUES ('c543d9b617cbb169965f37102a57586f6221eed0751f3c96e180b3807066d300dae412e0cc780fb8', 14, '1', '[\"view-user\"]', 1, '2023-12-26 12:06:07');
INSERT INTO `oauth_auth_codes` VALUES ('c58ec117c7c5da9e44b0b02431a1af805008370ff59e3d85ef759843ab0d18a04807cce148097152', 17, '1', '[\"view-user\"]', 1, '2023-12-26 11:55:18');
INSERT INTO `oauth_auth_codes` VALUES ('c6ac98db2469f918b729d300bbd09c7a3a08af3b246b26c64a3d0cb910c6de4b26132f734dc5e96f', 1010, '1', '[\"view-user\"]', 1, '2023-12-27 16:20:28');
INSERT INTO `oauth_auth_codes` VALUES ('c6c01b05b59a38a706c28b24f2197ddb867b5efed22cdb7c552942521bc822f8a78224112438eca3', 1, '1', '[\"view-user\"]', 1, '2023-12-27 14:51:09');
INSERT INTO `oauth_auth_codes` VALUES ('c6d977bfd8929118c7ad5017edd19e58db1f5f0a73e7ff012c117dab4e53b5fac345b5467dd12a7d', 8, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-13 15:31:22');
INSERT INTO `oauth_auth_codes` VALUES ('c6e7c425b530c7fbba4ca10cfe7973f53a3bd090f9bde4b535835d3d8f9770c01bda6d4da5b9438b', 8, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 17:20:54');
INSERT INTO `oauth_auth_codes` VALUES ('c72c4f2efc4a6f55c5b5d0b540ffd7273d6a3f404583af03d281a1e4459ea297ddc6e67c7babe30f', 1019, '1', '[\"view-user\"]', 1, '2023-12-27 21:03:21');
INSERT INTO `oauth_auth_codes` VALUES ('c775cfc814ee3170929e0ecad6bf48213baf488b14530815fcecc8ab9e65b5939e01e3bd3cc6751d', 6, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:44:45');
INSERT INTO `oauth_auth_codes` VALUES ('c89d6ba0d935286d2fd881d379373e80c64de879388a31bbe6d9fee12dea668f48ce548f91b6d4cd', 11, '1', '[\"view-user\"]', 1, '2023-12-18 10:47:34');
INSERT INTO `oauth_auth_codes` VALUES ('c932fec0b9f6c0c2c4c3c60a8d8135d1d6997f0b441b5be68ccab5ea2d449e4d6f601fe4957cc1ba', 1025, '9ac45384-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 0, '2023-12-28 20:08:25');
INSERT INTO `oauth_auth_codes` VALUES ('c993f432559af2658f362b973f9f223412cbe1657dc8d55171418a0daf8a04a1954bed6b9de01c84', 8, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:52:34');
INSERT INTO `oauth_auth_codes` VALUES ('ca2ad9861a10f0bfaf9e6ab23908ac2000dfa6478539f9733d384c7d58b661d60bfdf495c6e83797', 1014, '1', '[\"view-user\"]', 1, '2023-12-27 17:44:37');
INSERT INTO `oauth_auth_codes` VALUES ('ca71ef5387fe3fb7649a1e2c99c6fb8fca6d593511e96ada50d3d4bd7b25b2c4ca3c3d8a51e3092e', 1019, '1', '[\"view-user\"]', 1, '2023-12-27 21:22:51');
INSERT INTO `oauth_auth_codes` VALUES ('ca8d45e62f4836d98b1013488d81adfeaf0fddcc1be806b7de9b698349547575e78d5e029005cd95', 16, '1', '[\"view-user\"]', 1, '2023-12-26 12:06:33');
INSERT INTO `oauth_auth_codes` VALUES ('ca900b2f36446e13ec2c555acfb53563e71a14f5ccb1ed0294c9f33ef5cb2130e63d1886a2885f6d', 15, '1', '[\"view-user\"]', 1, '2023-12-18 15:34:15');
INSERT INTO `oauth_auth_codes` VALUES ('ca9b81fb8b6d3115254ade4c92c27d7175c59c8c766bb400084ffdf09cbf0fae956411c84f4dcaea', 1018, '1', '[\"view-user\"]', 1, '2023-12-27 17:47:56');
INSERT INTO `oauth_auth_codes` VALUES ('cade61bffc0b460c3ea2e529f8cc8845dbbb7f3452d049a7eb1d10876d3f507a5cd9beaf8330ecaa', 15, '1', '[\"view-user\"]', 1, '2023-12-18 15:29:26');
INSERT INTO `oauth_auth_codes` VALUES ('cb9e8ddb88b460c7cd00e858cc56c6ef6d2d174edd9c6c07163200f8e1dafbdf02607757457fa183', 5, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 11:43:45');
INSERT INTO `oauth_auth_codes` VALUES ('cd35fd605b19e856303dd39845546dbc0bf8695043a28dad3840015fefea93e2ecaccd79993e3865', 4, '1', '[\"view-user\"]', 1, '2023-12-26 20:42:28');
INSERT INTO `oauth_auth_codes` VALUES ('ce0b6b50f5ac22f9211d3d71b799f50e8bdd4c5982e6d825b07f804951f9354eaa94cdaff0e4d6e9', 12, '1', '[\"view-user\"]', 1, '2023-12-18 10:47:16');
INSERT INTO `oauth_auth_codes` VALUES ('ce7703244a8667d8b144a526b9cb7d205a2122fb774d6299f30d7dd94903beda121a921458ff69e0', 1025, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', '[\"view-user\"]', 1, '2023-12-28 22:03:01');
INSERT INTO `oauth_auth_codes` VALUES ('cf338b23d9da9587aee3bb393be46d51c93c8460cc94bf9a92cfe8f63f041e4c758e2ef6217ddb2f', 2, '1', '[\"view-user\"]', 1, '2023-12-13 18:32:07');
INSERT INTO `oauth_auth_codes` VALUES ('cf9d26cbb5116e04d26678829b76584c60678806e36440a442575a94ac2484f35a68b76707a1716c', 5, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:30:24');
INSERT INTO `oauth_auth_codes` VALUES ('d00c39c05ddc647efd3c8800b1aa412a1d8afc0907ef30c1639b06c8216095d44d33a0994c3a2aa3', 5, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:29:29');
INSERT INTO `oauth_auth_codes` VALUES ('d0b83c3d2ee0fc60f4014f5ee08ccd1ad6056b3a0737272aedc596c0efe3cc82978cf85adf15299f', 1, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-05 18:32:11');
INSERT INTO `oauth_auth_codes` VALUES ('d0c850f8cdc351a8ffb4154cb196edd87b002958470225aaa10990a355f67ded3e1c830a4e9eb004', 5, '1', '[\"view-user\"]', 1, '2023-12-26 22:06:47');
INSERT INTO `oauth_auth_codes` VALUES ('d18ced757961bf20a804604aec623ce3078ab77d1dc92c855c782bd755d4bc9552997c7914634a39', 12, '1', '[\"view-user\"]', 1, '2023-12-18 14:52:40');
INSERT INTO `oauth_auth_codes` VALUES ('d1a68b7b1cebe8c4d90478ce0b23fc081829c9e6f389748986bd02e5e9e080e67c4718b9d87e98ec', 1017, '1', '[\"view-user\"]', 1, '2023-12-27 16:57:09');
INSERT INTO `oauth_auth_codes` VALUES ('d1bb10e41f129c65b3aab648cbc19f27bfbe004ae4263d1ff6dfde64bf84b1f34fe747eb1fe8db0f', 3, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-06 18:26:09');
INSERT INTO `oauth_auth_codes` VALUES ('d219468f2aa6669a9d3d1e5da022d02032541de961fb8de35390193a6e0502a20e205bb6315a6d95', 1009, '1', '[\"view-user\"]', 1, '2023-12-27 16:01:48');
INSERT INTO `oauth_auth_codes` VALUES ('d2fa1201de13c0f6246f4a590e9ec4ec8e1719b3be5e667747d03e17c9506f88578b9417b2ae39ab', 5, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:30:10');
INSERT INTO `oauth_auth_codes` VALUES ('d37c16b043b4c0a92033c0d9abe510fce5191a78bf68555bb22ebb104aa446ddfc78b1ffbd1d0a6e', 11, '1', '[\"view-user\"]', 1, '2023-12-18 15:25:44');
INSERT INTO `oauth_auth_codes` VALUES ('d3a9ce259b6314a7f9432ef94ce860752f43b05939612517454d7ed031408f0748b94bc99b9065f4', 1028, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', '[\"view-user\"]', 1, '2023-12-28 22:00:28');
INSERT INTO `oauth_auth_codes` VALUES ('d3ac88cf03d27229e34eb67f1a00251f72046cf498c2a44d17903186a7cf77a056b1d4e78ba94b06', 2, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:41:53');
INSERT INTO `oauth_auth_codes` VALUES ('d42c2d144658fea439067bbe9bd04c61e13afb44516275a099a641940c7fb43dcb0500175e8fde4a', 3, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-06 18:23:06');
INSERT INTO `oauth_auth_codes` VALUES ('d45a2d31bdd41a020ea8972cf88743d477a1f73ccafc59f131f7cb5fd62c145dc4393f1ff4543553', 1025, '9ac45384-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 0, '2023-12-28 19:07:13');
INSERT INTO `oauth_auth_codes` VALUES ('d4fbe0f16402e589c584708e121f2d9f790f3fa56730ce6a5e98fdada2e17f9f6966637ccf5e82be', 14, '1', '[\"view-user\"]', 1, '2023-12-18 15:36:50');
INSERT INTO `oauth_auth_codes` VALUES ('d52fc1a17eb1fdfdce3da7c36ba8e4d93737d21d8fa438ceed69b68367de3832ca00a1c5764445be', 5, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:31:48');
INSERT INTO `oauth_auth_codes` VALUES ('d59f49d052290030d37b447d9fe5789237b02bef01d3c2e5f72562301ef189bce189d7cda93e4e21', 1, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-04 22:47:09');
INSERT INTO `oauth_auth_codes` VALUES ('d69eb9df32d30d050b6aae57deb37252b7a78905b5bd20b12cf43b1aec620363787545870c0832ed', 1019, '1', '[\"view-user\"]', 1, '2023-12-27 17:50:07');
INSERT INTO `oauth_auth_codes` VALUES ('d6ac891dda55225623efe171251d8f20c5f4a8ec3a6a6d741d1fd5e37990d90dbaf56c738a4a45a5', 3, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-06 18:20:29');
INSERT INTO `oauth_auth_codes` VALUES ('d6be98ecb2a2a427a1756b2fe8b623e1338959c982f5e75488d04b30e2d047ac31b7e7d911a17e25', 6, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:44:51');
INSERT INTO `oauth_auth_codes` VALUES ('d7afd0eaecd9f0a99fa234839af8e23bf041b65cf4bca067d70ef86b6338196787e56667bf7a4b66', 1012, '1', '[\"view-user\"]', 0, '2023-12-27 16:48:27');
INSERT INTO `oauth_auth_codes` VALUES ('d7db6d06946c9aae2f5f641651e9ef55173ff3f5e96168e41cfdff760b99739de4532e9838ecd5dc', 11, '1', '[\"view-user\"]', 1, '2023-12-18 10:49:37');
INSERT INTO `oauth_auth_codes` VALUES ('d885485358ceec9a9de080fefb2ae90f5684f6975b047ff1c8ed552d7ac552a982d7b626b00c350d', 4, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-11 18:47:44');
INSERT INTO `oauth_auth_codes` VALUES ('d8f53864714cc8d5065f244c61dfa5651f9edb7ffd99dbd86b1dfb07c37610af3cfd729177a10967', 6, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:42:21');
INSERT INTO `oauth_auth_codes` VALUES ('da36718b740472c52d9efdcf5267e3defa604b71e7fe173f154f2f90a2eeaddb44866496a1f75e38', 1023, '1', '[\"view-user\"]', 1, '2023-12-28 17:36:51');
INSERT INTO `oauth_auth_codes` VALUES ('dac99367ca0ed35199ac7f42311c87cba5556e3da5f47df7253b23ce6520d8e1d6ab4761bfaa2ee5', 8, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-13 15:19:38');
INSERT INTO `oauth_auth_codes` VALUES ('daf017331e92ebdbba11fde53a9e61f8b81b0e5416191e66a39d210256388d2ddc9c88e5b15ffe45', 1013, '1', '[\"view-user\"]', 1, '2023-12-27 17:40:46');
INSERT INTO `oauth_auth_codes` VALUES ('dbeb59bb640f43a4f91ff32f34b6fc499b4baf45d7b3be8039745f3a94a2f9b1ea55d5503089883c', 1019, '1', '[\"view-user\"]', 1, '2023-12-27 21:03:25');
INSERT INTO `oauth_auth_codes` VALUES ('dc3421cdaa99b4c1f2034e7f35659a4b19db15a79128bc4f0e8f1fd378e50e7bc3cd2633671c5325', 5, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-11 18:52:29');
INSERT INTO `oauth_auth_codes` VALUES ('dcf434cab57bc7ddab294ffd6c43b0462d0e04ae658060c099982b5e85d1aacd027c6b02e5e6540d', 4, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-11 18:44:32');
INSERT INTO `oauth_auth_codes` VALUES ('dcf8f58243af87bb88d489dcf1c4c88cc43fca9c682b007926ed864032b4dc17dee0ee5d9d2f5d99', 2, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:41:50');
INSERT INTO `oauth_auth_codes` VALUES ('dd15cd5d4c2b89e6ca81ac3241910fc8ac86ee2fa450b4f345c05a31a5109ab889aecd2acb314835', 4, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-11 18:45:02');
INSERT INTO `oauth_auth_codes` VALUES ('dd6dcefab0ca51cf199602d98482236659bb4fa3f1c205dd4bb2df8dcd839df1edcb51088ce109b3', 6, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:37:49');
INSERT INTO `oauth_auth_codes` VALUES ('dd84d01d28f48500f70c0a6748b1ba9733b13ba607d49e44032ca0955a27ffa5900607ce5f16dc6f', 8, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 21:38:37');
INSERT INTO `oauth_auth_codes` VALUES ('de088ff40d365bc989661cba3c8a0fb27e9b930b7b21ef8a465a1960b9999600cf38bfcf36d9daba', 1019, '1', '[\"view-user\"]', 1, '2023-12-27 18:24:12');
INSERT INTO `oauth_auth_codes` VALUES ('de122146efbd53277f46bc399eb476f80e3e96d9ed1ea360a635201f42e2a0ff3d447ecb69cbef43', 1, '1', '[\"view-user\"]', 1, '2023-12-27 14:51:54');
INSERT INTO `oauth_auth_codes` VALUES ('de41fd7e6327171bc5ed699e0a9706a66d0b4289f6a7a3e874207081830eea77afd5a43498deac81', 2, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-13 18:31:15');
INSERT INTO `oauth_auth_codes` VALUES ('def03c56076d35d1e745cd53e7ad7a47aa7c7051d2a54a38b9fc668021a4be26165a6647e63c82b9', 1025, '9ac45384-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 0, '2023-12-28 19:05:20');
INSERT INTO `oauth_auth_codes` VALUES ('df3486737f329a6472e8c22caa80ce00c95eb1fc4a5a145aabc4265e1046d02bc6082e77683515a6', 12, '1', '[\"view-user\"]', 1, '2023-12-14 10:51:23');
INSERT INTO `oauth_auth_codes` VALUES ('df5344af635f6e9bed3691aa89d919015a6c2102a2e676cb1e9196eca758afedda6b7b4e4a1c1788', 2, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-05 18:41:56');
INSERT INTO `oauth_auth_codes` VALUES ('df6d97db2a1504d06afe266ad354ca0409866c192fceb88ec9b90404cb26a463fe6d0be392b29d8f', 3, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-06 18:29:36');
INSERT INTO `oauth_auth_codes` VALUES ('e022cb9852762f4e9e55bb2ef85334608c348e347dbfea7d40daa04e41452f4e7b970f9b857ba4a1', 6, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:39:54');
INSERT INTO `oauth_auth_codes` VALUES ('e0c88036eb5999b4588ac2d8aaa2f8b6b9e7020e17cd955a2f02fe0b7ea6a8935bb5a02ad31cf511', 2, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-05 18:40:59');
INSERT INTO `oauth_auth_codes` VALUES ('e10a9b402ec0fa638235559f919ce51ec68a55eefe4bc590d154e744bac3cd20b7f3d336dbb4d859', 1022, '1', '[\"view-user\"]', 1, '2023-12-28 11:08:54');
INSERT INTO `oauth_auth_codes` VALUES ('e10e02d359650c6348d1f542061f1d97e3ea487d9c242a2aff8eee342fd8f6519142df13d2aee428', 1019, '1', '[\"view-user\"]', 1, '2023-12-27 18:22:44');
INSERT INTO `oauth_auth_codes` VALUES ('e13e45c0a653b90a7cff6380dfc45dbce113d35dccd40f9e6f970fdc46f269d7f199c1c9efc68cab', 11, '1', '[\"view-user\"]', 1, '2023-12-18 15:26:28');
INSERT INTO `oauth_auth_codes` VALUES ('e25139923c78364bbb89c1dea8840cff39fa20670520bfe2ab87bab78e84760bb2e6bdf53e1faf78', 6, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:40:14');
INSERT INTO `oauth_auth_codes` VALUES ('e2741eb7edc40cc114576300a7c51cf0e5889945632ce10fad6da6f9f9da4c1f9bdfda26f806dbec', 1, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-05 18:32:31');
INSERT INTO `oauth_auth_codes` VALUES ('e32d0474065c6333ce3083339fc6fe1cf6654810a23b04c836b7f47958b176979cbc9be80838ac4d', 5, '1', '[\"view-user\"]', 1, '2023-12-27 14:38:46');
INSERT INTO `oauth_auth_codes` VALUES ('e3b0a783a0ceee1b6fad7f427ab8a8d11c0bf2c9d6c3cd3ab618b16eab5a3e4ac918516368878c62', 2, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:32:12');
INSERT INTO `oauth_auth_codes` VALUES ('e3f99d97105c122b5c874567099d1c97eef19c8c3c776eef0616b239c81d6ae219f5caa8b0d10fa3', 3, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-06 18:21:25');
INSERT INTO `oauth_auth_codes` VALUES ('e40d76f07b7cf2b27a48ec47e1c7ed254f067f162aa40a2f0c75201e6409a14dd3cc5aa14afef9a9', 2, '1', '[\"view-user\"]', 1, '2023-12-27 10:51:23');
INSERT INTO `oauth_auth_codes` VALUES ('e45dfb9c73f8232abe2ffb34ecfae5074372786ff0eda86db2d0f7b8cd9ffa224fcd7773bbd5754f', 8, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-13 15:11:50');
INSERT INTO `oauth_auth_codes` VALUES ('e4d5920ef4b9f71ec950edab3741e388be2630daf8ad7652baf9db4fedc1561ccc6bb8a07527820e', 2, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-06 18:32:48');
INSERT INTO `oauth_auth_codes` VALUES ('e520cbc90fe6c8a0114b947c532bcf7156d3c323f1141a15746752bf554ed71a9d6948dc70b8089d', 1010, '1', '[\"view-user\"]', 1, '2023-12-27 16:11:25');
INSERT INTO `oauth_auth_codes` VALUES ('e53ff72f92bcee8632e13a788d29f42317a7d01d89618ddf9aa9981fa9210236b4eba0bc67423d60', 1030, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', '[\"view-user\"]', 1, '2023-12-28 22:06:11');
INSERT INTO `oauth_auth_codes` VALUES ('e5ddec7094abf98c461b4562196c9fc347a70bf214a4d14103a7bf402213b3d418e9572080c4b70a', 1019, '1', '[\"view-user\"]', 1, '2023-12-27 18:00:58');
INSERT INTO `oauth_auth_codes` VALUES ('e72b630a58fb43ae42b41f7f92687af526b7b757b02d002335313d4fcb9d5e58e300150e8efab5c3', 15, '1', '[\"view-user\"]', 1, '2023-12-26 11:54:05');
INSERT INTO `oauth_auth_codes` VALUES ('e75feac0a67c97440308ba8f20a8c89f257c709dc2fd5e1367a64793f1e6336e6f0c7c22a9237844', 1, '9ad29408-0282-4cb3-a1e6-75d3f68a722d', '[\"view-user\"]', 1, '2023-12-26 18:57:27');
INSERT INTO `oauth_auth_codes` VALUES ('e75ffabb48332735c12b06ba8fa12e128f4f56d386bdc9f04590cd96082609613e5d1ffaff73d820', 5, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 10:35:24');
INSERT INTO `oauth_auth_codes` VALUES ('e7a531704ee586213864af3966e2fdb3a4f567b26238bc7dbc8ab9c6b8370cd9a7c8ead85bf28b58', 15, '1', '[\"view-user\"]', 1, '2023-12-18 15:32:08');
INSERT INTO `oauth_auth_codes` VALUES ('e856e8a9291fe8214e1ff436ae00f35cabf94d0990349ecb8840460aff0a20877d32db2ca34ada55', 2, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-13 15:33:30');
INSERT INTO `oauth_auth_codes` VALUES ('e8721a64617f7793fac8a55258bb49c7f2e6a174316e9c8e98a35597d757b8929f64bb05a7bb36c3', 12, '1', '[\"view-user\"]', 1, '2023-12-18 14:39:15');
INSERT INTO `oauth_auth_codes` VALUES ('e920d776f71a98a4df4a3b92c53a5457ba27c17d0cda0152fbd174dd1e05fecebc05fb44c996c48d', 15, '1', '[\"view-user\"]', 1, '2023-12-18 15:28:59');
INSERT INTO `oauth_auth_codes` VALUES ('e967e8cc798abd902f33a8bb8134f7fab659c357e82e8d2d9e1af99bed033d2385087fae47e2d662', 16, '1', '[\"view-user\"]', 1, '2023-12-26 12:18:59');
INSERT INTO `oauth_auth_codes` VALUES ('eaf181688d52b306f5884eea925d85efd33ff245064cfdf4e6c7a949c9ae8746d6b145a39da43f04', 1022, '1', '[\"view-user\"]', 1, '2023-12-28 13:42:40');
INSERT INTO `oauth_auth_codes` VALUES ('ebaad1d53b451d81ceda9cf2f2aee673a641cc8988f4b13284e76e1dd0b8c163a9bb7d0b3af4bd97', 1009, '1', '[\"view-user\"]', 1, '2023-12-27 15:46:18');
INSERT INTO `oauth_auth_codes` VALUES ('ec293dc617f51b42cd8b977c445a794bb7b570820369b51625fd82c838983e78ec2cdc73c2eb929a', 8, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-13 15:39:22');
INSERT INTO `oauth_auth_codes` VALUES ('ec7de9631768f87cbda581488425faa758dd3b85b37c287b887d02ed97c4408602152766ad42aafd', 2, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-13 18:11:07');
INSERT INTO `oauth_auth_codes` VALUES ('ec7fd4c7d19c215b69417989c8398966705d8eb2fd64090009fb69ed79ecf63ce93db5ec4dffe275', 10, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-13 15:52:51');
INSERT INTO `oauth_auth_codes` VALUES ('ecd8e7d753f9d5702304165347760d566e077e08ef15295f73646c34ba693b0aa209073b0412d4aa', 1028, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', '[\"view-user\"]', 1, '2023-12-28 20:45:06');
INSERT INTO `oauth_auth_codes` VALUES ('ecf920fc2f42b59704c0c43c04e099627ff8216a35230d5e82db9a6afe1e9c85ee7c5772dd932026', 4, '1', '[\"view-user\"]', 1, '2023-12-26 20:51:09');
INSERT INTO `oauth_auth_codes` VALUES ('ed042be48cf3fdb82f10c4d201a0f7283dfc207a516d8aaebe961042ddefb5aea25f2e91e7da3d9d', 1010, '1', '[\"view-user\"]', 1, '2023-12-27 16:18:22');
INSERT INTO `oauth_auth_codes` VALUES ('ed080eeaae904525d318a5cac66c81139798fc85ad5372e6448a2ec3fbfa00c75320a844bd917b73', 1028, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', '[\"view-user\"]', 1, '2023-12-28 22:02:31');
INSERT INTO `oauth_auth_codes` VALUES ('ed0fe78e9bbde031701b93eb345eac228a1319fca1f55e423813bd11c2e4937522bde9f2c0867272', 6, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:40:07');
INSERT INTO `oauth_auth_codes` VALUES ('ed3b2b0d1daedb355fed4e3fa180f21aad02b438541289080f8f1ad51b02e63a92b54fca386fd0de', 3, '1', '[\"view-user\"]', 1, '2023-12-26 16:26:44');
INSERT INTO `oauth_auth_codes` VALUES ('edc53c8cf498f56c874e9384c67ac803a5137d47284820959234d4091b54445f13a8b23bcb197f14', 1, '9ac44355-abb0-4f65-b22e-229e413009f0', '[]', 0, '2023-12-04 18:08:19');
INSERT INTO `oauth_auth_codes` VALUES ('edcc0f052f068d03b222921627f85b1a2b8c88d41070ed4c4776122094faebadf7a917819bbe68de', 1020, '1', '[\"view-user\"]', 1, '2023-12-27 22:31:04');
INSERT INTO `oauth_auth_codes` VALUES ('ee1d542564f0eec9ecf8992c9f4df8590e8bc72dfe14c01c0271dff47e1518e1366643381601b8e1', 4, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-11 18:44:27');
INSERT INTO `oauth_auth_codes` VALUES ('ee4677cf49394827f6dc406090f42a6323affb2e245689885cdc4e6073e32bcfdf0a0b024a6e57b0', 11, '1', '[\"view-user\"]', 1, '2023-12-18 15:26:42');
INSERT INTO `oauth_auth_codes` VALUES ('eed425e7a7d650452b2aefe83e0571078ed80933f68f5e257462c86812a9c64c656a9e1ee5c6aaed', 1025, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', '[\"view-user\"]', 1, '2023-12-28 20:24:06');
INSERT INTO `oauth_auth_codes` VALUES ('ef60797bec3272da5326e019188fdda86c39dd20af91d810fdcefa65b97ccb9bab08af8ba22faa3a', 8, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-13 15:39:13');
INSERT INTO `oauth_auth_codes` VALUES ('ef83d42ca5ca4cd972c0d53943d3a65fc033bb5c69c79a239d3a00974dee527e3c7632fc66d32c7b', 1, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-05 18:34:06');
INSERT INTO `oauth_auth_codes` VALUES ('f0a82fcd8d80854e87d22d11edb21340132dd3b3f9000cf149104ba0577c9396f493e4155676cbf6', 1019, '1', '[\"view-user\"]', 1, '2023-12-27 18:44:15');
INSERT INTO `oauth_auth_codes` VALUES ('f0c6bb05a49fdc5893cc42b6baddc980c5dd988098c056a517daed7d97616c752b73c38b3b180c34', 4, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-06 19:02:04');
INSERT INTO `oauth_auth_codes` VALUES ('f0c999d824ea9b30a8e89f3784652a22ff7956940d8696961457d8e4ae0856b26cd7c837b3c252f8', 1009, '1', '[\"view-user\"]', 1, '2023-12-27 15:45:40');
INSERT INTO `oauth_auth_codes` VALUES ('f12cd4f5f99a515ee44a8b7194f0faea85b5a19eeaba68623ba606d8aeecc8431e5779905b7f4355', 11, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-13 18:11:34');
INSERT INTO `oauth_auth_codes` VALUES ('f143195f7ec40d0ba6783d995b35a0e88ef766ca1f6fb5e59b5cea09751d2b50f118db2b5727087c', 15, '1', '[\"view-user\"]', 1, '2023-12-18 15:30:13');
INSERT INTO `oauth_auth_codes` VALUES ('f1a0e1b2d62077798fa60ec730c658ca13afc0d7b93949c2c1923bb0f83022b28ff5aa4056ab9125', 2, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:54:20');
INSERT INTO `oauth_auth_codes` VALUES ('f1c05263f387a9b92e1a23e7e320cda238b6e098b3ccdce203166c173133e5cb58a863cb0ffffe46', 12, '1', '[\"view-user\"]', 1, '2023-12-18 14:37:04');
INSERT INTO `oauth_auth_codes` VALUES ('f2a1cd8793bfaa6f3f89a6378da582eea94524c032dded985910316386076d698ddaf388c7b2c334', 2, '1', '[\"view-user\"]', 1, '2023-12-13 19:01:43');
INSERT INTO `oauth_auth_codes` VALUES ('f2dee7de13b4f72056904ee1ac423035d03961c77ac2e56ba49e6ac0ae0d18f3dd0732e0b29d6618', 2, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:30:53');
INSERT INTO `oauth_auth_codes` VALUES ('f2fee8e16c9f08579bbd2a6dfa3b9e650dcbff3d7450cf2acd41400e0a543aab35454fccb0cfd336', 12, '1', '[\"view-user\"]', 1, '2023-12-18 15:25:12');
INSERT INTO `oauth_auth_codes` VALUES ('f55653e322545e89eef9dc63e081d5b92c8ebf4587bf00a24ab7ca96129447901b11b8d79ca0c8cf', 4, '1', '[\"view-user\"]', 1, '2023-12-26 20:41:26');
INSERT INTO `oauth_auth_codes` VALUES ('f78b90e46d74f559072b4236a96e60b15de620f0c79534824c874e38278966c615305180673edeb2', 3, '1', '[\"view-user\"]', 1, '2023-12-26 20:42:55');
INSERT INTO `oauth_auth_codes` VALUES ('f873ebfcf5a127db1c8ba08cbda74d92ce2801acc587efe80abe4928f38701855b444657c5a9d1fb', 2, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-13 15:53:02');
INSERT INTO `oauth_auth_codes` VALUES ('f916699c9e293ca8178672df1b932c53ec7a372ba2e30f66ae0cebd88a1a80289db80c5671f14d7e', 1010, '1', '[\"view-user\"]', 1, '2023-12-27 16:08:22');
INSERT INTO `oauth_auth_codes` VALUES ('f9c372f63c60a219e7af5bbad54b36497141a421424e74bf9af6f3986b23a8b9938fb252d67f68e6', 5, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 11:43:50');
INSERT INTO `oauth_auth_codes` VALUES ('f9db93018bdcf8f917da3a88106e6c5451cfc7f40043e72b0f11d78f3ff3f614c1c1709332fcd370', 16, '1', '[\"view-user\"]', 1, '2023-12-26 11:59:59');
INSERT INTO `oauth_auth_codes` VALUES ('faa0659e9d469d64eb553b8099f00160bcf28a948dfc1a69777c4340939d28bc29b1b18e91af088f', 1021, '1', '[\"view-user\"]', 1, '2023-12-28 15:55:39');
INSERT INTO `oauth_auth_codes` VALUES ('fbcd3beceafd58ba29be97c4ea742c67fbc5fa87f1dabb23f85b0eada57ee9949eff0f1b14113be7', 1019, '1', '[\"view-user\"]', 1, '2023-12-27 17:56:10');
INSERT INTO `oauth_auth_codes` VALUES ('fcdc32c04cd5cad32a96a04cd9c1424f9aac4d41e6dc24824ba349e5bc7edfc17fed79a543bfd778', 6, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:41:04');
INSERT INTO `oauth_auth_codes` VALUES ('fd7dd366629b544d36998ef552d5ad40347af78343b803086a6a86c1b335f3ffe3520db0a103a219', 5, '9ad3da52-4728-48d6-b471-ffad4c104f2e', '[\"view-user\"]', 1, '2023-12-12 15:30:06');
INSERT INTO `oauth_auth_codes` VALUES ('fe1f3a4df50150050a8ba52d9f1e05f933ce4956d1e57b1b839f68f6b645c0ed321d520de1b9ad5a', 2, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-11 18:58:14');
INSERT INTO `oauth_auth_codes` VALUES ('fe9a6edd846b1a7e59d0d8b1ede7577940a5e30503038919794f79807558a4169cc7bef9e9dcb60e', 12, '1', '[\"view-user\"]', 1, '2023-12-18 14:52:45');
INSERT INTO `oauth_auth_codes` VALUES ('fea56782d211a9af67c12f5b0f186fbce377993e8b2246d4644fa8f083bc92a795e101fac0a2601d', 4, '9ac44355-abb0-4f65-b22e-229e413009f0', '[\"view-user\"]', 1, '2023-12-11 18:45:35');
INSERT INTO `oauth_auth_codes` VALUES ('ff0de36bb3a7dff0e3541ef57527df758a879e437cd8de7396a66be1c03a8962bf9c707fe496283a', 1019, '1', '[\"view-user\"]', 1, '2023-12-27 18:00:11');
INSERT INTO `oauth_auth_codes` VALUES ('ff1efa79a7b1fe06aee3e0154970e8af9d05d912ff79a19fac717039d2508bb9a55b86e20bd51523', 16, '1', '[\"view-user\"]', 1, '2023-12-18 15:36:28');
INSERT INTO `oauth_auth_codes` VALUES ('ff34b8675ad3051d1821dd5fdbf8b17c0362a80feaae9dc089ecc433ba8b17ee899911619e7dc6aa', 1027, '9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', '[\"view-user\"]', 1, '2023-12-28 20:26:28');
INSERT INTO `oauth_auth_codes` VALUES ('ff6267e8ea1c8f3b61d0a086f1bc430b294b20c3b433f8ebc1efaeb6a6e88fef151ee47c92f68e1d', 17, '1', '[\"view-user\"]', 1, '2023-12-26 12:02:28');
INSERT INTO `oauth_auth_codes` VALUES ('ffcfa6023056a93a0555c52a59941f769ef0a6c99c97e3c8421d2957f0f8759e97ab01a037f5e4cb', 1019, '1', '[\"view-user\"]', 1, '2023-12-27 18:02:33');

-- ----------------------------
-- Table structure for oauth_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_clients_user_id_index`(`user_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of oauth_clients
-- ----------------------------
INSERT INTO `oauth_clients` VALUES ('2', 1, 'system00', '2', NULL, 'http://system00.com/callback', 0, 0, 0, '2023-12-28 18:41:13', '2023-12-04 16:08:59');
INSERT INTO `oauth_clients` VALUES ('9ac45384-abb0-4f65-b22e-229e413009f0', 1, 'system00_01', 'JUYghbIJKyteGBNmopWsY22ODVKC6Lz17XY2FeBY', NULL, 'http://system00.com/callback,http://system01.com/callback', 0, 0, 0, '2023-12-28 18:41:04', '2023-12-12 10:08:36');
INSERT INTO `oauth_clients` VALUES ('9ad29408-0282-4cb3-a1e6-75d3f68a722d', 2, 'system01', 'ebm2RJbZ1FbK5TPaFEQMhIEs3M2ABw7sZXgNbTC4', NULL, 'http://system01.com/callback', 0, 0, 0, '2023-12-28 18:41:22', '2023-12-11 18:56:13');
INSERT INTO `oauth_clients` VALUES ('9af4df48-e3ca-4b5e-8f8c-a61e44f711a4', 3, 'system0001', 'HNkpAqsn3qyGovfCChfv8NjQx6mOjj0tlGgx0a2j', NULL, 'http://system00.com/callback,http://system01.com/callback,http://system02.com/callback,http://system03.com/callback', 0, 0, 0, '2023-12-28 21:52:23', '2023-12-28 20:04:47');

-- ----------------------------
-- Table structure for oauth_personal_access_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE `oauth_personal_access_clients`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of oauth_personal_access_clients
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_refresh_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_refresh_tokens_access_token_id_index`(`access_token_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of oauth_refresh_tokens
-- ----------------------------
INSERT INTO `oauth_refresh_tokens` VALUES ('03c06ba1485d02738caab2541a3634d46aa5161121765ab13905cc9e0d596d44e4dbc719a8cd7824', 'df591bad1693a441ce10d351d8487c9e8ed84756739faacad1ec3937d8d6643439f644ae4c062f88', 0, '2025-05-10 15:45:34');
INSERT INTO `oauth_refresh_tokens` VALUES ('03d45dc48a0e6a726386b0c9dd6d0ed4711587a71709c298ef1735ab7d32a7654db5e19fdd29ce71', 'b0a66bca9fc68146416deac0edf8f40c7c2289d0da2b8b26543e714c1a446a8f7340f6ed775b59ba', 0, '2025-05-10 16:38:51');
INSERT INTO `oauth_refresh_tokens` VALUES ('04483db1d834c42056dba762850a79820a3b8a804e9271d89426b15752b015757b818a3f416272c3', '8e35c549199d9c1e20d7fd68fe5aa67245587ef7fce787885f72ad7422faaee2d6b59b8642453825', 0, '2024-01-10 18:31:19');
INSERT INTO `oauth_refresh_tokens` VALUES ('0735e4666caa2e4408f8ae27081baab96bb70986702f95a639d349332536c1dddb4403b46d229e09', '08cf6b141089d1c4e3b457e19c0d243a9f7af15311c421e74c61c2e8dd86209b2e731931067289eb', 0, '2024-01-03 20:51:10');
INSERT INTO `oauth_refresh_tokens` VALUES ('08747e515440b8fce66f3dac1512812297a7f9de7718d64fe50e320e58c8d5a27c5c82e6f57417dd', 'c3a80b2f1e733763d595c0b9310a0e46a8b8f39d8a5fe200014c961cef7753f2fb840cc38e1460ad', 0, '2025-05-11 15:40:01');
INSERT INTO `oauth_refresh_tokens` VALUES ('0b2ef9b566899c739420f3cf7de5e6014ea6b7863c0100e940c418199e0a20d88ac065296464ce31', 'd564d7b1e98bbc5ad2126e1427fcf691ff6426f302adee34ab467e5f996441a202e749bda9666950', 0, '2025-05-11 20:17:36');
INSERT INTO `oauth_refresh_tokens` VALUES ('0b8654a7eeb179d775cef6932f6317189caf20931030ab7b6dfd6dc9fb2cfd8e34cda8b897f76bb2', '7345e8c7f35a8c3228f075354449fb2bf2403b0a0d89d7221f6225ceb6b660a027f466d66a143cba', 0, '2025-05-10 15:54:22');
INSERT INTO `oauth_refresh_tokens` VALUES ('0c3e54b04dfdd398ed03dcfc91e0de7ba4e77f7c40591396a60c747e6ef61dd26bc20a0fb5445bff', '390b49bc23310100bfe1f9646945cc01ce2729a56091d44ae6fa30f7eea0375093757dd57e5f7137', 0, '2025-05-10 14:50:28');
INSERT INTO `oauth_refresh_tokens` VALUES ('0e5c03697b0aaef19f3edafaba434d0c33d453defe7662cd07b6e03b54324d5ab4bb0c8f42f72ea2', '2bcf0f41ab8c8f99103fe05b103d57ce9caad184f332d4b98f268e795259b7fc91441f9987b5ee98', 0, '2025-05-10 17:25:44');
INSERT INTO `oauth_refresh_tokens` VALUES ('0fec2441b5d1efed11f41a80aaad5ceb77621ea1fe2a48b8f45b96478b04d97cf235cf8e6321fee8', '735c6e371277a3a4d39e76138b5fc2c68f5c7523d6d18e825a1153357acbbce156e1d891cdc0ff69', 0, '2025-05-10 15:26:58');
INSERT INTO `oauth_refresh_tokens` VALUES ('10d32b432907a3f495d4f7544affbf9751b19fc00d3c2f32c09a33be494f158225e3e413b2ad93bc', 'bc6e4fedc18f0ff8bef09a1e703de8d0a9a897867974e21aa02fc2f998b6e185496b6a8abbae5e3b', 0, '2025-05-10 15:51:19');
INSERT INTO `oauth_refresh_tokens` VALUES ('11309571c5c86b4e38712a4a3bf9ff6788adff853b013366fd9f40132cf580d1e317d4e925040f70', '5b2da9ccbc0a7f8ba14d4146160d99712fd91eca069fc36bf7a9018b1e0978675f5c437f54838856', 0, '2025-05-10 16:34:19');
INSERT INTO `oauth_refresh_tokens` VALUES ('17ce396a05e4d945663a396bce36627f39768bca5fe8dc886cf0f49c2b012c325e7e3fa674e0285a', '7c4d506d57927982502f1944157625e6b30542f0f85fe289d703cb36e413d96939fbe44eb07decd8', 0, '2025-05-10 16:32:25');
INSERT INTO `oauth_refresh_tokens` VALUES ('1809c7dece2f694e3dd50910439cc5ed1fed644084d13699a2023ba99c4502bac27d0f999b380c37', '174645341ea1ca209bef420f77a3799a1ea56202bfe04799385ad3a90db5e99a702fba164230e3f2', 0, '2025-05-11 15:41:20');
INSERT INTO `oauth_refresh_tokens` VALUES ('18775058701b61eb0f19668a9e181ee3a2ead374b85bcec68a0fd74c38a2aeb711a7fee7202b7318', '79862aa27c5ac0308d07fb6676d4841f40dce94ad99a972d71335e7de4d103ca652963b72f3e8e3b', 0, '2025-05-10 15:52:32');
INSERT INTO `oauth_refresh_tokens` VALUES ('1abe0b3d975f48fe1c0fed021fb4a38d4b328f0f198d202ae74cbb7231254bbb1077c1ba41baad06', 'c73eeb0f495ebaec3786e91e4371bccfd95a07e52659e614845fbc9eba454dadd77da5c6370dbf05', 0, '2024-01-03 22:37:10');
INSERT INTO `oauth_refresh_tokens` VALUES ('2188724c4d0675146ba105e233e9f44e85538db560888ffc28878195296c99d4c574e9caa193c14f', '55865e2208c9b75fff3631559fef2a49cee8ed5a8b220607805c22b017a2cd4a60d83ddfba2340dd', 0, '2025-05-09 21:56:40');
INSERT INTO `oauth_refresh_tokens` VALUES ('218af45c3f450b76b604e907588519887e5df10b6d72972c354c872a8c7b5a91e9dff4338428305c', '72567abf5dc26c6ab56217e319c795930b93e8e01ee4996d72ab85cae47a957fed40ecf03f964594', 0, '2025-05-10 22:01:18');
INSERT INTO `oauth_refresh_tokens` VALUES ('230fc47e647c295f8a30d2eea43ca003bbbdd0eb960833333c5ff7ecdb4537d58dc3fe35343e0e94', '2bd7d7040201c2fcc921363447c196443b17dc110b31401a877a46f834b5cefdbfb3f36f3fe407a5', 0, '2025-05-01 15:21:58');
INSERT INTO `oauth_refresh_tokens` VALUES ('235da54b8b635f6d3a6c0603f3c107d24702bd0e1f56dc3e8bcf3d1672cb6f6c1c8e5089439e668c', '3da933eccb1e96d14b45f699c0e667fcdc0f3078f5d76270f5fafcba15c2619619125f1f3bc065b1', 0, '2024-01-03 19:54:49');
INSERT INTO `oauth_refresh_tokens` VALUES ('23884f9c76d26d2f67496ef138affee42301fb3a3f8683f894482dd59ed6a0e2926bcfbe3d410402', 'df8305a64ac56683c4707b9cf73abdfdc04eaf5de37841758f010aedb355ef1aaef7c697a7a3e1e8', 0, '2025-05-10 16:26:02');
INSERT INTO `oauth_refresh_tokens` VALUES ('246b6c8366a362ab17713dd7bb6d3c3dee26c811080f5c1ffb84a17b38f6dfda7fbdd1837738bfe6', 'e66192a4db3df65522749336fa2daf764dad9f3063d90c71add04d9745abde66d1965a421725186e', 0, '2025-05-10 16:37:37');
INSERT INTO `oauth_refresh_tokens` VALUES ('24fb84743d22fc5c13ea2ca9f545a2d4bfc7fea10996b5e16772bbe2efbaba4ee72a638c7d0f53f5', '9b6344cd2f8f0cf2185e1cce0cd6f8490827a2b3467128ccf52bddaf54064333116bc93cd915c1aa', 0, '2025-05-11 20:26:45');
INSERT INTO `oauth_refresh_tokens` VALUES ('2b0490d42965429c93d868e3a86151e372582a2f2e01fed63784b6601414cea6d17a0dedfa6d55af', '246cdb05b7cadfcda9c5961bc4b1d337e5eb9e74f9142e53284897eb30399fef66b9c630007d693f', 0, '2025-05-10 15:20:22');
INSERT INTO `oauth_refresh_tokens` VALUES ('2c3bbf72ed1772c8619a240634e3f760e019c08944e7a342353ffebde637e6eca53f6f915c7b5f89', '1eb537fbd2d36e27b6bfeed5cf0d94b4e037f874b3451768dd09c1152baf00daa3109b708e29e45b', 0, '2024-01-12 15:11:18');
INSERT INTO `oauth_refresh_tokens` VALUES ('2fb9d27b19f4072a20e58b3d0a99122b748d2c35ed0e686c5a8a597086fc2a98ab76849b8344e1ed', 'ebd6347a2a8f6cd85ed42b8800f7d05aed8d0da69d895c172fa27bf6b5e39719a26e561562034309', 0, '2025-05-10 15:51:48');
INSERT INTO `oauth_refresh_tokens` VALUES ('30598593ce45411fbb11231ceed342eca6fcbb5db022435ac59703a3b13ba82dbc12328ba21bbda2', 'dcce75fc7894297dfaf96472452193f39818c4a51c93d88c72e540c107542a9012ccbdf5dc49b8e3', 0, '2025-05-10 16:39:03');
INSERT INTO `oauth_refresh_tokens` VALUES ('30be0d6ff2c834165df4d691439409018d046eaed5952567571c838a49c21d71a30315830a271bd9', '50801dd3ad4e0e129eb15f727156372f373f67acde36c269a52da34c7b17faf7608d82fc4b3827de', 0, '2025-05-10 15:23:02');
INSERT INTO `oauth_refresh_tokens` VALUES ('31f6bc5d5accc949993f486f6ec06894d86a6c1c3ef32199f426bb5e6d1d6832992990c6b8d881b2', 'd24e4243ad9fbd6c55cd743278c5bd65b727c80fb902be015a4aa8c2855bf2f043a52821576d1cd1', 0, '2025-05-11 17:29:37');
INSERT INTO `oauth_refresh_tokens` VALUES ('3386b6d9fa6aabc7dac9919a8e367477c42d3ea7845b56ab2c6d9235a6c516245b82b0fc7c4429d3', 'ff5874c74376763fa76a36364368742254bda5bf738b9f0acf6d842ce005d186511308b56d653022', 0, '2024-01-11 15:25:29');
INSERT INTO `oauth_refresh_tokens` VALUES ('387d246de7495ff9ddd64f9e79fb7e1631694c2692b486c18a302ee000b121b5f8066bbcc4562e88', '7c04c77fa46519e6e3eed4ad4e4584f35bfe7a4aeb74b508d78af50f43957ad8a17e6f9399dc188a', 0, '2024-01-03 22:56:46');
INSERT INTO `oauth_refresh_tokens` VALUES ('3ef3d03e154e6aeecd5d8d0c242bbfddf6509a5da3c8076c13b92e6d6805ad9fc75b4cf888ee3bb7', 'b6bef3697b30632292c23551c74bf0d2a19b5146c686c3c0843295a95a62019eb9e1d96690c1a119', 0, '2025-05-10 17:34:22');
INSERT INTO `oauth_refresh_tokens` VALUES ('3f03bd5130db8b229e36e701745f116dc4f664f0056ccfe793a595e30cb4e534bd11e6be097c86a7', '32f595567e1db7c65c7453bfa9944747fd4fa60a97b1d6ac9669583a7b04a737e7d3cfb84f32d347', 0, '2025-05-11 20:14:06');
INSERT INTO `oauth_refresh_tokens` VALUES ('42de92143d1c94df50f381ee8ff8e2c95017e148485f1caa5d18a52b14347c0b58b70cb59617bb66', '9ce2113f945e2c5a843b2477daefe47de4579d9df8dd2b6d9253a2362fbd218ec428f2787010ba06', 0, '2025-05-10 16:07:26');
INSERT INTO `oauth_refresh_tokens` VALUES ('434a36ad3bdb7ccd430a44012af561b526ac71edb79d30a9853c81a12e763100d2c2159edf3c42a6', '43148bbcef6442be7dff0ebaf9c44c763424419ca4a5eebf82f8cff3f5a121a81078809edb6a141b', 0, '2025-05-09 21:57:11');
INSERT INTO `oauth_refresh_tokens` VALUES ('451de1897e4404601bd4987097d3d3705ffb816d03f300bdb15edf8e93b282d48e8268e0c2c8550f', '80a830905f3edfe9dddf3bd33e585f4843aab61c8c8fb9939c03b241d49f1b50d875ebad8bd7afb6', 0, '2024-01-03 20:31:11');
INSERT INTO `oauth_refresh_tokens` VALUES ('45ce89960d6354553060a107241d1c9db09b362d5b2388fa802c9dc80e9bed58c00598ee22efc3f9', 'c6e43480fbd7061692e2ea33bb3b75ae436c2ab4b056b849f808bd66e5905f7293b54474e8389331', 0, '2025-05-10 15:47:04');
INSERT INTO `oauth_refresh_tokens` VALUES ('464e9e472aea467c9927bf3833042139d21b5d9a3c39ef48e13294e53a87ef6458515ca8d11bf53a', 'd4323b089bda3c7a48af715e941fc3f1b80c5ee8850ce76009348bf02319a6014baf033269ba224e', 0, '2025-05-01 14:42:24');
INSERT INTO `oauth_refresh_tokens` VALUES ('4cd76ba334e1d7f3260eb9ddf4ff0e571a37313e4d8d3f84238fe46137202abe6fc51ebe15b89d5e', 'bfb349a2106c24a02720b5ca2c810c402120abddf0e0136fc9bc411f17282988cd3ad69c28345c11', 0, '2025-05-11 20:17:10');
INSERT INTO `oauth_refresh_tokens` VALUES ('4de04d339cc07cb1881d0c691aef41a7f24d02ae347d34143be9d3707e757cd00c193306028a0c62', '2bd76ec24190b6a4852fce44b13d0e20db9f99fe20700850000846f67d0f4c7a8a18fac19e175b04', 0, '2024-01-03 18:54:30');
INSERT INTO `oauth_refresh_tokens` VALUES ('4e3009f2f258cc834c6ba9c78357b356bc28f322e5da40418d87ba033c641d1c69682c4c3874db77', 'f45eec04b57ff9c64095f2b18767f9faa64bdd97363a1571dcbee7158171303edf785e5cf2dad90f', 0, '2025-05-10 16:23:31');
INSERT INTO `oauth_refresh_tokens` VALUES ('5217a79510b7a69bce10198e615adc5c8f354dc10a603ebc4f259eb62b8227ebe3067c0dbe5411cc', '7a3d4190260eb615487a67ecc60350ffaf71e363e02ee8ee73f96d12066147295eb10b2740aa186f', 0, '2025-05-10 15:45:03');
INSERT INTO `oauth_refresh_tokens` VALUES ('5527ebac8079f2111fbc37792924b447cfe798165372ee5484fd25489a720cf78bc38924a363a11c', 'a452018503b20067e2ba0846451655b46e1a7230fcb0f4a9b1f89cf72c896a5d79e7f8c23b7c33af', 0, '2025-05-11 15:43:04');
INSERT INTO `oauth_refresh_tokens` VALUES ('560a3f74a1603e571c8dc77de93a887f6afa5a76ced8dee6c4de48aa8d60ca3ab0f9fe0a1062e871', 'c262fa90f7bc929c6e8161238093279ae6e280239b37fe424247323f2e3b4fc058b3a91cb26ea322', 0, '2024-01-03 19:51:05');
INSERT INTO `oauth_refresh_tokens` VALUES ('56d11ce1c9a3d12258da66cf394d13583088aa162d330d87b79a2620a7df0ae723b5575ca9e92de3', 'ced1df8913a54f494f44401d2668187cdb479d886cb4edccdba6eee8efa93d31970af96b8bee0036', 0, '2025-05-11 20:19:05');
INSERT INTO `oauth_refresh_tokens` VALUES ('5708ce2f5a305aa2226626ac898397b0a973df51711560b3a1cc7340d7740ad6d2a288029da01078', '1acb8891ec7d6951308c3777924bc348c594796fc7f47b5ff9c22111566ede9603c8d9b0281eac15', 0, '2025-04-26 18:51:14');
INSERT INTO `oauth_refresh_tokens` VALUES ('570ee09d35c0274246f9e4123e94615cbd880d0c19c43771207fdf3476928909e7a85dbe7fd15c4a', '5cf249a457a53a545085af5e07e0736219c70cdae8845a2648eeadd20a899345cbc380901a1f1d97', 0, '2025-05-10 22:21:28');
INSERT INTO `oauth_refresh_tokens` VALUES ('5920718552978c1dc45ab601e9815f06184e948a674dded3551b8331dd272c97abf17c5827b3c32b', 'c14f1bb986e7d390d44f4f1c4d4f2f2a2071bbb81ebe0fc3bdf3435518df051a61e5b33fd3ad6348', 0, '2025-05-11 13:32:46');
INSERT INTO `oauth_refresh_tokens` VALUES ('602d77f6e712764ed123de598588ba96756306062cbc62d5a8971f10615080c9412fd79513645c0a', '7f1b33b37ba773b6d8dcdedcbeaca10bda64697537eecb624d68a70d972f39655099f9100292ca4c', 0, '2025-05-10 15:36:18');
INSERT INTO `oauth_refresh_tokens` VALUES ('602e3ae7cd7e87694f66557a1ba9877d46272758a42895bf8649dd5dcca90871c77322ff3cf4e114', '356f6ebdef0e3b653d1a719221133f232a7f5a1763288ad44b7315582bc8c2e266294d4a4c29b73d', 0, '2025-04-26 18:50:30');
INSERT INTO `oauth_refresh_tokens` VALUES ('6357decc80b714bc3888df77b5f21a3ab88732993d50cca8a0f92a1fe4bb997410eb8a811b8de100', 'f8e6503a41137b9c3285f7fe331ce2d44efab37086b61059ef440699b5a95522f366fe8a36b11c3f', 0, '2024-01-12 15:11:37');
INSERT INTO `oauth_refresh_tokens` VALUES ('671233ac8e4bc89227f82cc12ae4307255b993e507ffc06fcd0161bf0e560b6caa4399cda725eb88', '2114ad717de7c6bf31c205aebf5285fc7c6283e8a38c1325757ac62ba76a34d6ef38cd0bb818ef44', 0, '2024-01-12 15:05:50');
INSERT INTO `oauth_refresh_tokens` VALUES ('685163c7696ea4f259ea4ca1ece94f6f71dbe0ca98662c6ee872d7c6c2f2ece11d0bbe99466bece1', '4042867efac7409290da4448f3296df238fd171f85432261f26066bac8d5c8724675200873057c5a', 0, '2025-05-11 20:21:29');
INSERT INTO `oauth_refresh_tokens` VALUES ('6859d89ce2588213280e2f862a5145154e7d5f2f87fd853ab636397ea5314cb529a3db3425780923', '00be0f87c95d180e6c5338110b8c63323e0b5764784bf3d98ab310f0032222f23159d53974f73ff0', 0, '2025-05-11 15:45:40');
INSERT INTO `oauth_refresh_tokens` VALUES ('6c3451e276b3be7b7ce922824ebfc68711ab7d6294415a87c361f2612889bc80ae07d6912e9a70f6', 'c219d535d66b7febf0564a4b84e360400394e82a220dab9ff228e95c56ae37ecb922505467122abb', 0, '2025-05-10 14:50:39');
INSERT INTO `oauth_refresh_tokens` VALUES ('6df5693adc6e911973ff6a682173e59f31a41f79f776c6831d5ed2f2dd299d505b751286608070c1', 'df1444f9a3d0159f786a94874ff106bf1eb4d07693a315f9cd7a4989fcc3424359ad967e43f7868d', 0, '2025-05-11 13:32:41');
INSERT INTO `oauth_refresh_tokens` VALUES ('702e11b1028ea29bd656cbebe8f6a63ba8af3963b11b2ac6adbea24ae99367abd38b0e5d24a1d39e', 'd98e4c9578aa83ac5ae7e4b1812285c0cd0c0bb8583683ec5b7406e2df77985bf9c66b1e8518c5f3', 0, '2024-01-03 18:02:26');
INSERT INTO `oauth_refresh_tokens` VALUES ('74401559f0f1d6518fdc8b741a863161d0e18fca2a347584c3d390b64cd65a4318619feba03c604d', 'eb0f62deea2dc7239d2dc6dd9c25485cc713f922f81d83c7ad6d0b94e7a0b14875997293c9d539b4', 0, '2025-05-10 14:42:45');
INSERT INTO `oauth_refresh_tokens` VALUES ('7638358fbee1d340a789b8ea3d7ad026b776f0e8d0c453cefa35063c772dacd5370e89a1b5a8fe39', '5029dd7fdcb2d9fd1f65b2188385bec2408b65c7e9d6d8ca74be3ea6e51e55365e91ea8c7c93473f', 0, '2025-05-11 20:18:09');
INSERT INTO `oauth_refresh_tokens` VALUES ('7aeb48adbdc1cb800ed782cf32219a3efede6992ce6dfd58d23e8448fc38a13ab1fdcb362450c52d', '89afe75162c78abe311d86635062a471e121c5ae41c47eb67fa864dbc38b89e3f42f84562ddced80', 0, '2024-01-03 19:51:30');
INSERT INTO `oauth_refresh_tokens` VALUES ('7bfcf480451cf9d813485870b34e1e66c93cac7d651e62b8d963bf697ac448718c40681bee277e05', 'a8952f5075f5fab548d33d83c393018fd5f42497604a2871fca06701f01219ae74f6a609f6501980', 0, '2025-05-11 20:16:28');
INSERT INTO `oauth_refresh_tokens` VALUES ('7c267c5de7c205095c8279e275abbbfab59e01f1b0ccfc03cec60725a12c02a7e3a46b1ffe9561a0', '4d47920993d723b7eb0603149d3321d4465314e478ed4f1648313fcf84a2ceb9bf631500ae5376e8', 0, '2025-05-11 20:15:42');
INSERT INTO `oauth_refresh_tokens` VALUES ('7fa4ff8d8cfcf00f31c5e8e37b9db3fb5d28b4ac8b365366d92838dd85e548b896b26c94787dbdac', 'de04cd0d6a72c18b3325a3d8b5d2b10eff1d0bfef166fe9a3d6b04509c4f622fa845605031a22189', 0, '2025-05-11 20:16:00');
INSERT INTO `oauth_refresh_tokens` VALUES ('8041ccd87fa67e824661361b6bca9796e74ec13c6d4e23a89d96daa8a59f685175b048a563200d4f', '3aeb4f0993f44b3a15dcf1548c63b5cebf1c4cd0eb3f764a2e0f316dfa853237c6d98c16d14129ff', 0, '2025-05-10 15:24:35');
INSERT INTO `oauth_refresh_tokens` VALUES ('894bbe9614f0247101be99071b0516109045f390c21d941ced9086cb57ed781f882aa97a2c939612', '009e12fd36a2db3346a48d6a5c088fc2b95c56b82bac5baf7b57a95e6a997732dba33a7b76b2547e', 0, '2025-05-10 17:32:32');
INSERT INTO `oauth_refresh_tokens` VALUES ('89cb5f0ab930f9cd69a7af4bc27eb1e7f25fc0757b6198706e5e9cf26ba9cabaf77841a9d86ea9ca', '1e8b64e460d83e54aa1460dbe5acdac7a16752c7f85f1378e2f61bc2bee3bad2ea301410819525d8', 0, '2024-01-12 15:23:12');
INSERT INTO `oauth_refresh_tokens` VALUES ('8cc4802beebeb61a00f9489cf6eb24c37d29e8ff651c3d52379c8c4b0d03bf7b3402e7ec4bea6ab8', '436334c1fdc34c5cb7d57606d93fb906ef6b80b086c2e10ab1d10c55c00e949d8d76636c0db47923', 0, '2025-05-01 15:15:25');
INSERT INTO `oauth_refresh_tokens` VALUES ('8ebb6d8a01b8715b7cb22f24b0c2322629662319419ef7569a46e827f15005f4b72473c7662f4fbc', 'ea3ca53ffeed85aca71d6aaab87eacfbf395e9183383f9ac983d5df81bd0def99f5390e7b4ce983e', 0, '2025-05-10 10:40:15');
INSERT INTO `oauth_refresh_tokens` VALUES ('8ef3a43ae9f238dd3fc33ce8fc608c32ad13a8694958e7652080d6b1afdd04e7a6fdf63ff0b4d9c8', 'ad03441eaff9d8bb5ef960edef791aaabd8acb3d323df693e85a66de289185cff3dcbafc19e1246e', 0, '2024-01-03 19:51:38');
INSERT INTO `oauth_refresh_tokens` VALUES ('8fd34316c88b8e3564cc3d1c6cc01bd562e31a6c137e0a8dd16419fbb3241c3c33cac35f4a19d5df', 'a4b37e6cc0b11ef27ae337b622a4ae8abe8b43f5e53538930b8c0aa36d54fa58a8a96757aac76b83', 0, '2025-05-10 16:38:27');
INSERT INTO `oauth_refresh_tokens` VALUES ('9025991d835b666c278f1dba915da65dfbf8632d5861920ad245dbb8eff34d3091b1b0d11bc9f143', '3c5ea0ee98304c407b6fea44c299bd5b68c3f498660d03bf090fb4de56b23da3a627503f2592762b', 0, '2024-01-11 11:34:26');
INSERT INTO `oauth_refresh_tokens` VALUES ('93a20cd0f58e513bcb69207ff7202ba950bc0eb84f0f7de1613f07010117de85e4f3b5b453060fbf', '054a91791be3d93c8be8ce1b90ef6c931ff509f602b14b1b99b38a3a060246fdaaa46725d2333424', 0, '2024-01-03 20:55:04');
INSERT INTO `oauth_refresh_tokens` VALUES ('943dfe056855286da7953bd1293569431f32e917a576651e7378b798a9c851184b5f03807b9adaf9', 'b26454d3015a75ee9ee7405136b4bd95d2112d97690af5e70cbe0d5ac9f540183a1396e6394fbdcb', 0, '2024-01-05 18:11:26');
INSERT INTO `oauth_refresh_tokens` VALUES ('9e8fe2874822ccacc85a62d7e65e9fbce3b75ab3ce9c51c9d3e09b6e3ed1223b47102c68372e3df1', '4341c26f42e85bf97e173ccf4bb1638919e934cbad9f9dfa9869c8767bf2749afa8b929b11e9bf89', 0, '2025-05-10 16:34:32');
INSERT INTO `oauth_refresh_tokens` VALUES ('a13624c873f509344ba688de6c3f27da6bb0b8c7e793acb70ce2fae62739b6734274fd8690145208', '75684ac1264cabe4fb601efbf8e709e31a024f0094e17ae2875c7c190d38cd2082b8187a69d52d99', 0, '2025-05-01 15:19:37');
INSERT INTO `oauth_refresh_tokens` VALUES ('a160f4952fc46f245cb8ddc739398259a61cc3b5681922787f3f334623f9c5929672d393a1626324', 'a8d0737c31dea150d8930e25667db1fbae443c8b098c42d2d3611f28c7a6d2e030734dbe16a6d0e4', 0, '2025-05-10 14:52:59');
INSERT INTO `oauth_refresh_tokens` VALUES ('a613fffce354046e67692b54bcbbc04cecc7542828cd6f4a72fd44b8ed29a2cfbc7679792806b73e', '6bd63bfc73abd309591cbb3d818f289204e847e82405ab7f72585191d02a682804a7e727b327b187', 0, '2025-05-11 15:41:17');
INSERT INTO `oauth_refresh_tokens` VALUES ('a8155007397972152901a83d7226a654a5df374636917f935d15721d123180d4784cec136667e395', 'b60be4a43b6a08a092433df3d49c79b9ccbd58d5e7e5fdf65e174b54e501c952410ac1587793e95a', 0, '2025-05-11 12:12:13');
INSERT INTO `oauth_refresh_tokens` VALUES ('a9d137d8c60fe6832bb5ab8f3770cdd365c424740bc6788a902b234506e1537b851cbaf82f13abc2', '3b1cf74b11cda612d1ded471539966570f51d17295d00fb4c5067e280f27f4a6b22fcfca9bdaa4a9', 0, '2025-05-11 20:24:54');
INSERT INTO `oauth_refresh_tokens` VALUES ('b105a2efd87c13a0281af66f05bce80d3c1d99f3ecf50f48835e7775a8eee955a60c5378e0b87354', '06f830eaab7a9c32681c21ca044e06a39da8d55483e73cf75090a3bbfd2f6e8d84a3562be5eac99b', 0, '2025-05-01 14:42:41');
INSERT INTO `oauth_refresh_tokens` VALUES ('b58ea1e1a648894649a7d5d8c970808ab1771b61d49a3f8ecafd3a7c4219895022a532c2d6af1afa', 'e250bdcc2a86e4795ccff971bc33f20bf166502bf1436591ab47bd6d52b30beb2c6f5428d1d7f778', 0, '2024-01-10 18:35:35');
INSERT INTO `oauth_refresh_tokens` VALUES ('bb9e481b25b5e243246961f444c8a165853f8e34607b6e5d3f65854d4be8d3a21a657a40c4bd3026', '246320b204b8ca285998535c140c9c5adb951ffe3a1535cb59dde84cc99f1456dee527c999098644', 0, '2025-05-11 17:28:45');
INSERT INTO `oauth_refresh_tokens` VALUES ('bc60655cf17b4becb761efae33aca3fd2927416e5abf6ce46beb00cf83c2e6d50d48503a2b440977', 'a5ed889465994b53a26c8e91e5f49f0efaf0f861a2eff67cdbd1722bb61ef8ff5ae30e3dd8174313', 0, '2025-05-11 20:26:39');
INSERT INTO `oauth_refresh_tokens` VALUES ('bd8ddc11dc750a123f9976c0eaf6894218097bad9f244e18e04c0edafde65e50e8ccf11dfa8f77f4', '1c9cf8007f359e22204d9ef8b9314250a4756ee603c617a09a7d4045baf13c89a8fc9a3704004007', 0, '2024-01-11 15:29:11');
INSERT INTO `oauth_refresh_tokens` VALUES ('bd93f9d478641ff959c611222773eb3f0cb8a78196ffe39fcb7b0fbda03199de9d5589d130891adb', 'a5128c8242c2caf799cd8acef80ffb4eb39a708018cdfa6be2d676f3f83fce575eb2c7a49340b6e3', 0, '2025-05-10 16:07:38');
INSERT INTO `oauth_refresh_tokens` VALUES ('bf31b9e7255bbf96242c5fba6dcaf25b3822b4798cab7cc001f3308fa5eccc8640e470f00b53bc01', 'd201efe3b822154cfe5d173efad7c1bf14eaf34088525fca29d7a16555e4c407d3b58d187fa949c3', 0, '2025-05-11 20:16:57');
INSERT INTO `oauth_refresh_tokens` VALUES ('c54bdb189fd2a9322be27e642aa79ec6eae196ebca7731f05d8f419c9698355fd21f06ede9d6b680', '73af41c0a2f0ac921e11ec55983af4bd040362fbdd1a80e7fecffb2c72f12c640a2e22643bd35585', 0, '2024-01-10 18:34:32');
INSERT INTO `oauth_refresh_tokens` VALUES ('c5a95bd9aa302b2fcc64e43c66d7e0e326a30a13c94cba098bb8b40543bd8b4732574fd0e468a8c8', 'c5fc76e9c71c4e68c7e452f5907c3e885fa238004b6edd7b514413c27da45eb8533fec3763e241f6', 0, '2025-05-01 14:42:46');
INSERT INTO `oauth_refresh_tokens` VALUES ('d04f17e6c9e68fb9762532c6289cd9d7e480fcb9b2175267d9c911e431f4077eedf2a16326756757', '8f5762f535e5e665eb49fd9ac5ade7c4937e3000f9435627845a03243ae63ceeb0fa4b4c2b39eb12', 0, '2025-05-11 20:24:13');
INSERT INTO `oauth_refresh_tokens` VALUES ('d0ca90b9bddd8c9fb7f2b769ca99dfb2312efc9cfa0a7f84df2c62788440e404d1135d283de59b8f', '9305add0959a19fec304e398fdf8337be1bbfb5fdfd398f52727524419010a6ee2db9cda269fa926', 0, '2024-01-03 19:56:41');
INSERT INTO `oauth_refresh_tokens` VALUES ('d24373b23afa9140b80ea224622762e3b5297f2b256d677e7210249534c2ede3c625b789a3f576bd', '918eb78f4da34dd3a63dc17a8a206fd2e4d770bde143b8ad7f8710b504a86500f3ca2d02135405f2', 0, '2025-05-01 15:16:29');
INSERT INTO `oauth_refresh_tokens` VALUES ('da1497a0b17be6473112f0983a57825f6cdc241c925e5ca3cef23a2b139c9fcd214c4f8d743bc26f', 'f5bc96b9e069a84370b363d00eac4873938d934c7689d35ed33f221327a1a5f3e121f9a405daedbb', 0, '2025-05-10 15:47:44');
INSERT INTO `oauth_refresh_tokens` VALUES ('dd8fe8f0aef51ced82b95e61dad6de1965e7d410cbe9708f2c6ee651c98385aff62438e4aa7e1a11', 'a5946a6b20468dfba2ea8834c0e9064fd0fc5ed6d7c4373a03d36639e7c34128dc8a7ecc261b8f6b', 0, '2025-05-10 17:38:04');
INSERT INTO `oauth_refresh_tokens` VALUES ('e0479f1225b6df4aff5df600005041efdd9a8443ed2ad37f501918631099be6d401e8faf9c8adca4', 'fd8198edd3b800cf258778c6ffa869209b430c6129b64d46d3e42122edd219a61e32a51fbe6d4fe9', 0, '2024-01-11 11:34:30');
INSERT INTO `oauth_refresh_tokens` VALUES ('e1451178b63af4e9ef672f13a9bf984dd0134e57c24a3ba285b6ee803794b26cfbc70d24ded6fbcd', 'e420cf2b108bc940bfe01506ded6097059eae46efa78fa1ffc1bae4a8f8e61c2f064b90695bb2f24', 0, '2025-05-10 15:35:40');
INSERT INTO `oauth_refresh_tokens` VALUES ('e48f3013510dffce36d28bbe68de46a2f72773062637c3a7acf3d7ec1b3618c1633decc862822f08', '57e859a25861ed112123059e5c2c5243e212d57a7968bd5ade21a9d61351f4713d70b3a6f32b4098', 0, '2025-05-10 15:34:49');
INSERT INTO `oauth_refresh_tokens` VALUES ('e5e2682d00eafd555a0bebeab9655f9ac56598019d2f6f1c57216bca5e463b67b380ca6fe2dddf7f', 'f4b401af9216e080a7e034bbf11a4281f288d496d37c4d066df58c4ab322cb5a61a806262bf5b865', 0, '2025-05-10 16:21:02');
INSERT INTO `oauth_refresh_tokens` VALUES ('e7c8ddf76885a0eee2eb8acdf860370c8a6d82e3cd5eec34e2d5b79b6a795bd87edc777ae2c8285b', '74f37a6d74e334c2c816740cf8d25650a36b82f28052fdf1320ca2af3ae9d96f44a580662909f4f6', 0, '2025-05-11 20:26:59');
INSERT INTO `oauth_refresh_tokens` VALUES ('e8ab1bdbd7d79625c1629ca9fe76cecd3734b0b0227ce196893a7607b9f3579a833fa69cc7278d9f', '302afee09193f982be34dfcf1783b8ed6e757c086ef05c2b908fe9ee20374148200c71a9a24fc520', 0, '2024-01-03 22:29:47');
INSERT INTO `oauth_refresh_tokens` VALUES ('eaaced6fbeff1d676ade309ddb6ea2508e59f618329cff6d97db22ca251d01d1f5b66ca9d09e8201', '395e29a30c9f717d2ed860497c82cb910d02f5347e1c5f3bcdca859a21c3dc20262f1a038112dc37', 0, '2025-05-10 15:36:59');
INSERT INTO `oauth_refresh_tokens` VALUES ('eedfe068c20105c2018e5f77ea30651d6d53b6bebb7075de2e91053d0e13f1fb10bc70a080b3dd67', 'a9be03ea6b81be268897d10022a7a6b29797c829c0f6419f314bd240e9d178737b50a1b7c24d7b5f', 0, '2025-05-09 15:07:29');
INSERT INTO `oauth_refresh_tokens` VALUES ('f1bbb7f60fafc35e57f1db8ad974a849cfe1405ade925b2f18f772fc07e09552e571eb02f5583ff0', '73dc9e454f41b594dbe7dc77c19d73df354f0dbcd63c686f3bd6c58e84931c55eded357e2369d5f1', 0, '2025-05-11 17:28:50');
INSERT INTO `oauth_refresh_tokens` VALUES ('f595ed7fda6991d0167b4d750c6076e1164509e77e2c322f289cf6313f1b7ac5d44e0b0421adcfdf', 'fb7a7e4dee46320df96956c2c6560ade586c2db86b977a94b34715acfad4e61ae76eb1bd5bd8fa75', 0, '2025-05-11 15:39:56');
INSERT INTO `oauth_refresh_tokens` VALUES ('f6d453ade086640a171dd8cec0eb801af8d07057f769f65c68d32f3b385c98f1095e13e79d0c1ba6', '3c508c3dc63ee572dcae33581f7d70a69c3248198d67dc586d3663bd337abe040cdb557a83bd5f31', 0, '2025-05-10 14:53:44');
INSERT INTO `oauth_refresh_tokens` VALUES ('f9609ecf38f2038298fafa976c717159248938e00fd90ae57ad3ced024ead1a3f401b83f58d89108', '0d67ba92921204e4810c315489132aa4fb1aa9d538adf7b12e90ae22bd602c61af466adfb4c4c1f0', 0, '2025-05-11 20:15:38');
INSERT INTO `oauth_refresh_tokens` VALUES ('fcf7696d996b81106c008f56c8464ff4c0f887276a497a9f1837b934badc1680d8ba1e1fe13749b9', 'af2be1b9b58bb8664b5004a1f78a01005266d354532c6bdbefc57c1e2629063a3ef98020c6b4ee4b', 0, '2025-05-10 15:53:33');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '权限名称',
  `redirect_uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '客户端回调地址',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES (1, '本系统', NULL, '2023-12-25 15:30:51', '2023-12-25 16:40:05');
INSERT INTO `permissions` VALUES (2, '入口', 'http://system00.com/callback', '2023-12-22 17:28:15', '2023-12-28 18:19:16');
INSERT INTO `permissions` VALUES (3, 'system01', 'http://system01.com/callback', '2023-12-22 18:14:25', '2023-12-28 18:19:30');
INSERT INTO `permissions` VALUES (4, 'system02', 'http://system02.com/callback', '2023-12-25 09:56:54', '2023-12-28 18:19:42');
INSERT INTO `permissions` VALUES (21, 'system03', 'http://system03.com/callback', '2023-12-28 21:42:37', '2023-12-28 21:42:46');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色名称',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, '超级管理员', '2023-12-22 11:59:01', '2023-12-25 09:56:37', NULL);
INSERT INTO `roles` VALUES (13, '全系统', '2023-12-25 11:25:08', '2023-12-27 21:57:22', NULL);
INSERT INTO `roles` VALUES (14, '普通员工', '2023-12-25 18:30:24', '2023-12-27 21:57:43', NULL);
INSERT INTO `roles` VALUES (15, 'system01', '2023-12-25 18:30:35', '2023-12-28 18:18:59', NULL);
INSERT INTO `roles` VALUES (16, 'system02', '2023-12-28 21:49:21', '2023-12-28 21:49:21', NULL);
INSERT INTO `roles` VALUES (17, 'system03', '2023-12-28 21:49:30', '2023-12-28 21:49:34', NULL);

-- ----------------------------
-- Table structure for roles_permissions
-- ----------------------------
DROP TABLE IF EXISTS `roles_permissions`;
CREATE TABLE `roles_permissions`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` bigint NOT NULL DEFAULT 0,
  `permission_id` bigint NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `updated_at` timestamp NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of roles_permissions
-- ----------------------------
INSERT INTO `roles_permissions` VALUES (6, 13, 2, '2023-12-25 16:03:06', '2023-12-25 16:03:06');
INSERT INTO `roles_permissions` VALUES (7, 1, 1, '2023-12-25 17:56:49', '2023-12-25 17:56:49');
INSERT INTO `roles_permissions` VALUES (8, 1, 2, '2023-12-25 17:56:54', '2023-12-25 17:56:54');
INSERT INTO `roles_permissions` VALUES (9, 1, 3, '2023-12-25 17:56:54', '2023-12-25 17:56:54');
INSERT INTO `roles_permissions` VALUES (24, 13, 3, '2023-12-25 18:30:17', '2023-12-25 18:30:17');
INSERT INTO `roles_permissions` VALUES (25, 14, 2, '2023-12-25 18:30:28', '2023-12-25 18:30:28');
INSERT INTO `roles_permissions` VALUES (26, 15, 3, '2023-12-25 18:30:38', '2023-12-25 18:30:38');
INSERT INTO `roles_permissions` VALUES (29, 13, 4, '2023-12-27 21:55:26', '2023-12-27 21:55:26');
INSERT INTO `roles_permissions` VALUES (30, 1, 4, '2023-12-27 21:55:29', '2023-12-27 21:55:29');
INSERT INTO `roles_permissions` VALUES (31, 15, 2, '2023-12-27 21:58:00', '2023-12-27 21:58:00');
INSERT INTO `roles_permissions` VALUES (32, 13, 21, '2023-12-28 21:49:05', '2023-12-28 21:49:05');
INSERT INTO `roles_permissions` VALUES (33, 16, 2, '2023-12-28 21:49:25', '2023-12-28 21:49:25');
INSERT INTO `roles_permissions` VALUES (34, 16, 4, '2023-12-28 21:49:25', '2023-12-28 21:49:25');
INSERT INTO `roles_permissions` VALUES (35, 17, 21, '2023-12-28 21:49:39', '2023-12-28 21:49:39');
INSERT INTO `roles_permissions` VALUES (36, 17, 2, '2023-12-28 21:49:47', '2023-12-28 21:49:47');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '姓名',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '邮箱',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1031 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (6, '雷致远', 'zhiyule@hotmail.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2019-05-17 05:57:50', '2023-12-27 10:43:43', '2023-12-27 10:43:43');
INSERT INTO `users` VALUES (7, '邹秀英', 'zouxiuy@gmail.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2022-05-14 07:44:02', '2023-12-26 16:55:22', NULL);
INSERT INTO `users` VALUES (8, 'Stephanie Nichols', 'nicholss@mail.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2018-10-18 10:39:11', '2023-12-27 10:44:56', '2023-12-27 10:44:56');
INSERT INTO `users` VALUES (9, 'Peggy Miller', 'millerpeggy96@yahoo.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2013-09-13 22:15:13', '2023-12-27 10:44:56', '2023-12-27 10:44:56');
INSERT INTO `users` VALUES (10, 'Rodney Johnson', 'rj2001@outlook.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2007-10-20 07:27:29', '2023-10-03 14:26:38', NULL);
INSERT INTO `users` VALUES (11, 'Anna Silva', 'sanna10@yahoo.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2000-02-20 04:09:23', '2023-04-04 23:24:49', NULL);
INSERT INTO `users` VALUES (12, 'Amber Woods', 'amberwoods@outlook.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2009-11-06 19:35:23', '2023-10-05 15:10:08', NULL);
INSERT INTO `users` VALUES (13, 'Wendy Patterson', 'wendypatte10@hotmail.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2013-02-01 21:02:44', '2023-02-04 21:35:57', NULL);
INSERT INTO `users` VALUES (14, 'Diane Brooks', 'dianeb@hotmail.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2000-12-02 03:24:21', '2023-03-19 07:25:01', NULL);
INSERT INTO `users` VALUES (15, 'Sharon Jenkins', 'jenkins67@outlook.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2022-04-04 05:38:34', '2023-12-01 16:58:43', NULL);
INSERT INTO `users` VALUES (16, 'Edith Harrison', 'harredith1106@hotmail.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2003-10-24 14:33:43', '2023-01-10 02:45:39', NULL);
INSERT INTO `users` VALUES (17, '顾震南', 'zhg@icloud.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2018-02-26 13:22:22', '2023-06-18 02:18:40', NULL);
INSERT INTO `users` VALUES (18, 'Nathan Hawkins', 'hawkins6@gmail.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2021-06-15 01:23:55', '2023-02-21 14:55:41', NULL);
INSERT INTO `users` VALUES (19, 'Anita Guzman', 'anitguz@gmail.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2008-08-24 23:02:34', '2023-09-20 05:00:11', NULL);
INSERT INTO `users` VALUES (20, 'Susan Butler', 'butler58@outlook.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2006-04-24 19:05:11', '2023-08-28 14:47:38', NULL);
INSERT INTO `users` VALUES (21, 'Amber Weaver', 'weaamber@gmail.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2006-03-02 05:45:20', '2023-01-01 17:31:42', NULL);
INSERT INTO `users` VALUES (22, '董璐', 'dong3@icloud.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2007-04-29 15:27:18', '2023-07-15 22:33:45', NULL);
INSERT INTO `users` VALUES (23, '尹宇宁', 'yinyuning3@yahoo.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2013-03-04 13:20:30', '2023-04-12 13:52:50', NULL);
INSERT INTO `users` VALUES (24, '苏詩涵', 'sushihan4@mail.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2006-07-30 11:37:29', '2023-10-22 09:37:04', NULL);
INSERT INTO `users` VALUES (25, '魏晓明', 'xiaomingw@icloud.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2008-02-11 18:39:56', '2023-11-21 19:14:29', NULL);
INSERT INTO `users` VALUES (26, 'Diana Reynolds', 'diareynolds@gmail.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2005-12-04 17:36:20', '2023-01-14 07:08:58', NULL);
INSERT INTO `users` VALUES (27, 'Clarence Murphy', 'clarence723@gmail.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2016-01-01 03:12:32', '2023-12-18 14:50:12', NULL);
INSERT INTO `users` VALUES (28, 'Anna Bell', 'anna818@mail.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2018-10-23 05:14:48', '2023-06-16 15:50:28', NULL);
INSERT INTO `users` VALUES (29, 'Mary Herrera', 'maherrera@outlook.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2004-08-28 00:03:52', '2023-11-11 10:40:11', NULL);
INSERT INTO `users` VALUES (30, '田岚', 'tian125@gmail.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2005-08-13 04:24:46', '2023-05-31 19:00:26', NULL);
INSERT INTO `users` VALUES (31, '胡杰宏', 'jhu@icloud.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2006-11-08 22:15:47', '2023-08-10 19:20:55', NULL);
INSERT INTO `users` VALUES (32, 'Crystal Porter', 'portercrys409@icloud.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2005-04-26 09:51:28', '2023-08-21 22:42:31', NULL);
INSERT INTO `users` VALUES (33, 'Dale Morales', 'moralesdale@gmail.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2010-09-26 17:07:08', '2023-12-12 04:31:53', NULL);
INSERT INTO `users` VALUES (34, 'Wayne Lewis', 'lewayne426@outlook.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2016-11-20 05:08:34', '2023-01-30 05:29:10', NULL);
INSERT INTO `users` VALUES (35, 'Henry Edwards', 'he03@mail.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2018-06-04 02:23:48', '2023-01-18 22:47:57', NULL);
INSERT INTO `users` VALUES (36, 'Randy Vargas', 'randyvargas@gmail.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2017-12-22 19:42:08', '2023-09-23 18:03:55', NULL);
INSERT INTO `users` VALUES (37, 'Todd Hayes', 'hayest8@icloud.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2013-12-20 05:07:39', '2023-06-05 10:08:40', NULL);
INSERT INTO `users` VALUES (38, '张子异', 'zizhan9@gmail.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2014-10-10 04:23:51', '2023-07-08 20:43:51', NULL);
INSERT INTO `users` VALUES (39, 'Paul Cruz', 'paul1@outlook.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2020-03-12 18:13:14', '2023-02-28 09:00:53', NULL);
INSERT INTO `users` VALUES (40, 'Clifford Campbell', 'ccl@gmail.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2013-08-12 17:38:39', '2023-01-17 04:20:14', NULL);
INSERT INTO `users` VALUES (41, 'Dennis Olson', 'olsonden612@hotmail.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2001-05-16 08:46:12', '2023-12-21 18:01:38', NULL);
INSERT INTO `users` VALUES (42, 'Lori Smith', 'smithlori915@gmail.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2013-11-14 02:11:35', '2023-07-27 17:21:18', NULL);
INSERT INTO `users` VALUES (43, '余宇宁', 'yuy@outlook.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2013-09-28 01:44:07', '2023-06-18 11:38:15', NULL);
INSERT INTO `users` VALUES (44, '傅子异', 'fziyi706@gmail.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2008-09-05 19:32:13', '2023-02-08 15:48:51', NULL);
INSERT INTO `users` VALUES (45, '许云熙', 'yxu@icloud.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2016-03-27 16:33:56', '2023-11-10 05:35:34', NULL);
INSERT INTO `users` VALUES (46, 'Sherry Fisher', 'sherry8@outlook.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2002-03-03 16:01:49', '2023-08-30 18:12:06', NULL);
INSERT INTO `users` VALUES (47, '尹秀英', 'yinxiuying@gmail.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2019-01-15 13:07:17', '2023-04-19 19:44:45', NULL);
INSERT INTO `users` VALUES (48, '孔宇宁', 'yuk@icloud.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2000-03-30 04:25:09', '2023-06-11 01:59:15', NULL);
INSERT INTO `users` VALUES (49, '袁詩涵', 'shihy@gmail.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2010-01-20 00:18:41', '2023-02-06 22:00:22', NULL);
INSERT INTO `users` VALUES (50, 'Judy Nelson', 'judyn@gmail.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2013-09-08 03:04:41', '2023-07-08 09:54:21', NULL);
INSERT INTO `users` VALUES (51, '唐致远', 'zhta1@outlook.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2020-01-22 00:25:43', '2023-07-11 01:38:24', NULL);
INSERT INTO `users` VALUES (52, 'Eva Fisher', 'evafish@hotmail.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2005-08-07 02:23:01', '2023-03-12 06:47:18', NULL);
INSERT INTO `users` VALUES (53, 'Andrea Gutierrez', 'andreagut41@gmail.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2021-05-19 16:49:40', '2023-05-12 13:11:32', NULL);
INSERT INTO `users` VALUES (54, 'Valerie Simmons', 'simmva60@icloud.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2022-02-20 01:33:46', '2023-12-04 13:53:23', NULL);
INSERT INTO `users` VALUES (55, '顾睿', 'gurui310@icloud.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2004-02-04 19:09:40', '2023-11-11 14:30:45', NULL);
INSERT INTO `users` VALUES (56, 'Thomas Brooks', 'thombrooks@outlook.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2007-04-02 09:16:35', '2023-08-10 16:47:20', NULL);
INSERT INTO `users` VALUES (57, '朱宇宁', 'zyunin00@mail.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2019-11-16 18:21:56', '2023-05-03 17:44:04', NULL);
INSERT INTO `users` VALUES (58, 'Norman Reyes', 'norreyes@gmail.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2005-09-12 23:53:54', '2023-01-18 13:09:35', NULL);
INSERT INTO `users` VALUES (59, 'Shawn Shaw', 'shawn92@mail.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2000-02-24 06:24:09', '2023-02-18 08:34:18', NULL);
INSERT INTO `users` VALUES (60, 'Edwin Collins', 'colledwin@mail.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2016-08-08 05:08:01', '2023-11-26 07:58:46', NULL);
INSERT INTO `users` VALUES (61, '邵秀英', 'xishao10@yahoo.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2016-02-24 06:33:44', '2023-05-22 06:13:37', NULL);
INSERT INTO `users` VALUES (62, 'Don Aguilar', 'doaguil@hotmail.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2019-05-17 16:54:17', '2023-01-22 14:03:30', NULL);
INSERT INTO `users` VALUES (63, 'Norma Tucker', 'tunorma@gmail.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2009-08-30 05:02:18', '2023-02-17 13:32:50', NULL);
INSERT INTO `users` VALUES (64, '侯嘉伦', 'jialun2005@icloud.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2015-12-01 21:57:24', '2023-10-23 14:54:13', NULL);
INSERT INTO `users` VALUES (65, 'Marilyn Walker', 'marilynwalker@gmail.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2020-05-07 13:16:39', '2023-11-30 06:42:48', NULL);
INSERT INTO `users` VALUES (66, '孟璐', 'menlu5@mail.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2010-09-13 10:45:19', '2023-06-16 09:03:44', NULL);
INSERT INTO `users` VALUES (67, '崔宇宁', 'cuy3@icloud.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2012-08-27 13:17:01', '2023-10-14 14:54:02', NULL);
INSERT INTO `users` VALUES (68, '汤致远', 'tangzhiy@mail.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2003-06-26 10:55:30', '2023-10-07 07:08:16', NULL);
INSERT INTO `users` VALUES (69, '熊璐', 'lxiong@icloud.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2006-04-17 01:31:47', '2023-08-12 03:20:20', NULL);
INSERT INTO `users` VALUES (70, '杨睿', 'ruiyang03@gmail.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2020-11-02 15:37:11', '2023-04-22 20:02:22', NULL);
INSERT INTO `users` VALUES (71, '韩晓明', 'hanxiaom@gmail.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2010-06-22 02:35:28', '2023-10-14 02:20:30', NULL);
INSERT INTO `users` VALUES (72, 'Herbert Taylor', 'taylorherbert9@outlook.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2022-12-12 17:30:57', '2023-11-27 14:42:54', NULL);
INSERT INTO `users` VALUES (73, '梁宇宁', 'liangyuning@yahoo.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2016-08-20 13:48:39', '2023-06-12 10:17:22', NULL);
INSERT INTO `users` VALUES (74, '史嘉伦', 'jialun5@gmail.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2009-12-10 00:06:48', '2023-08-27 03:37:30', NULL);
INSERT INTO `users` VALUES (75, 'Benjamin Powell', 'bpo6@gmail.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2008-02-25 07:23:33', '2023-05-16 21:02:05', NULL);
INSERT INTO `users` VALUES (76, '廖岚', 'liaola@yahoo.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2016-05-28 13:20:39', '2023-09-10 05:43:33', NULL);
INSERT INTO `users` VALUES (77, 'Melvin Garcia', 'garcimelvin@outlook.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2002-12-29 22:09:54', '2023-04-10 12:33:24', NULL);
INSERT INTO `users` VALUES (78, '严睿', 'yaru1953@gmail.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2009-01-03 05:56:36', '2023-10-27 21:11:49', NULL);
INSERT INTO `users` VALUES (79, 'Stephen Rice', 'sr2@outlook.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2011-06-25 13:45:52', '2023-06-29 17:58:16', NULL);
INSERT INTO `users` VALUES (80, 'Evelyn Alexander', 'alexander10@icloud.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2004-12-08 10:54:04', '2023-07-02 21:50:53', NULL);
INSERT INTO `users` VALUES (81, 'Howard Garcia', 'garcia1948@gmail.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2017-05-13 10:48:34', '2023-07-30 01:32:39', NULL);
INSERT INTO `users` VALUES (82, '黎子韬', 'zitaoli@gmail.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2005-08-25 09:09:02', '2023-06-30 15:18:37', NULL);
INSERT INTO `users` VALUES (83, 'Deborah Thompson', 'thd@outlook.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2005-09-12 14:30:13', '2023-01-24 01:12:46', NULL);
INSERT INTO `users` VALUES (84, 'Charles Chavez', 'chac@icloud.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2016-05-25 14:41:29', '2023-02-15 03:24:03', NULL);
INSERT INTO `users` VALUES (85, '陈岚', 'chenlan@gmail.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2013-09-22 13:21:25', '2023-03-16 16:06:13', NULL);
INSERT INTO `users` VALUES (86, '萧睿', 'xiao909@icloud.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2003-10-26 22:29:21', '2023-09-06 12:12:51', NULL);
INSERT INTO `users` VALUES (87, 'Frederick Washington', 'frederickwashington6@gmail.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2015-08-29 06:19:32', '2023-02-03 00:59:25', NULL);
INSERT INTO `users` VALUES (88, '龚致远', 'gzhiyuan9@icloud.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2005-03-19 22:38:44', '2023-10-20 00:16:51', NULL);
INSERT INTO `users` VALUES (89, 'Bryan Bennett', 'bennebryan9@yahoo.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2021-07-12 19:07:39', '2023-05-18 09:53:32', NULL);
INSERT INTO `users` VALUES (90, 'Bobby Mills', 'mbo@hotmail.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2011-04-09 00:44:59', '2023-12-03 05:19:06', NULL);
INSERT INTO `users` VALUES (91, '许岚', 'lxu9@gmail.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2011-07-01 10:31:04', '2023-04-11 14:53:41', NULL);
INSERT INTO `users` VALUES (92, '姚云熙', 'yunxiyao1106@gmail.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2001-02-26 10:20:12', '2023-12-01 18:56:40', NULL);
INSERT INTO `users` VALUES (93, '余杰宏', 'jiehongyu@icloud.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2018-11-15 20:53:06', '2023-03-30 02:15:00', NULL);
INSERT INTO `users` VALUES (94, 'Carrie Edwards', 'carrieedwards1031@outlook.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2003-02-24 06:25:30', '2023-09-27 17:28:20', NULL);
INSERT INTO `users` VALUES (95, 'Ruby Reyes', 'rreyes2@outlook.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2021-08-06 21:09:21', '2023-02-19 03:09:30', NULL);
INSERT INTO `users` VALUES (96, '周云熙', 'zhou917@outlook.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2014-11-16 03:07:48', '2023-06-06 09:21:21', NULL);
INSERT INTO `users` VALUES (97, '莫宇宁', 'yumo@hotmail.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2001-03-13 11:43:02', '2023-12-12 17:27:48', NULL);
INSERT INTO `users` VALUES (98, 'Kimberly Gomez', 'kimberlygom@gmail.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2008-12-08 10:07:52', '2023-04-30 06:31:35', NULL);
INSERT INTO `users` VALUES (99, 'Victoria Jordan', 'victjo@icloud.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2014-02-10 13:49:51', '2023-08-11 05:04:47', NULL);
INSERT INTO `users` VALUES (100, 'Cynthia Clark', 'clarkcynthia@gmail.com', '$2y$10$cQa6D4LTZpQ5EXMGeycLa.3FmW7Dmdiq0y6JbKp24LivoFAEzUnx.', '2010-11-26 06:04:01', '2023-07-17 18:40:00', NULL);
INSERT INTO `users` VALUES (101, '1411111', '111@qq.com', '$2y$10$5LSYsVP14apHtvhSTyIMmuYTODCohe0g/Vyc69EgA5dORqEjoRpn.', '2023-12-26 16:53:16', '2023-12-26 16:53:38', NULL);
INSERT INTO `users` VALUES (1026, 'admin4', 'admin4@qq.com', '$2y$10$cBxmAXQCTpd/c8hd.6BqZegMPCWAvTMduK5BzJMepgqS7Enb8XXj6', '2023-12-28 17:17:26', '2023-12-28 17:17:26', NULL);
INSERT INTO `users` VALUES (1028, 'admin2', 'admin2@qq.com', '$2y$10$srCMCuIG3PfoNHXb0Q76fuF/mBqpYpBkzP8XO3MUJxd3sEvCzW4wG', '2023-12-28 17:32:42', '2023-12-28 17:32:42', NULL);
INSERT INTO `users` VALUES (1029, 'admin3', 'admin3@qq.com', '$2y$10$eXo6h8yG8r9JBttqUYw91.8bak/8.ywtjkC3VhGXml640zU4GV0qm', '2023-12-28 21:54:02', '2023-12-28 21:54:02', NULL);
INSERT INTO `users` VALUES (1030, 'admin1', 'admin1@qq.com', '$2y$10$4hdNVAoEowMJauyAiLQJterS5V8t2jLe6Oa6SCZ5DDIeXKSHkKuru', '2023-12-28 21:55:45', '2023-12-28 21:55:45', NULL);

-- ----------------------------
-- Table structure for users_roles
-- ----------------------------
DROP TABLE IF EXISTS `users_roles`;
CREATE TABLE `users_roles`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 79 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users_roles
-- ----------------------------
INSERT INTO `users_roles` VALUES (32, 3, 14, '2023-12-26 17:16:08', '2023-12-26 17:16:08');
INSERT INTO `users_roles` VALUES (34, 4, 15, '2023-12-26 17:16:14', '2023-12-26 17:16:14');
INSERT INTO `users_roles` VALUES (38, 10, 1, '2023-12-26 17:16:50', '2023-12-26 17:16:50');
INSERT INTO `users_roles` VALUES (42, 2, 13, '2023-12-26 17:29:16', '2023-12-26 17:29:16');
INSERT INTO `users_roles` VALUES (44, 5, 13, '2023-12-27 10:54:45', '2023-12-27 10:54:45');
INSERT INTO `users_roles` VALUES (47, 1011, 1, '2023-12-27 16:15:38', '2023-12-27 16:15:38');
INSERT INTO `users_roles` VALUES (48, 1012, 13, '2023-12-27 16:16:26', '2023-12-27 16:16:26');
INSERT INTO `users_roles` VALUES (51, 21, 1, '2023-12-27 16:17:17', '2023-12-27 16:17:17');
INSERT INTO `users_roles` VALUES (52, 12, 1, '2023-12-27 16:17:21', '2023-12-27 16:17:21');
INSERT INTO `users_roles` VALUES (53, 11, 13, '2023-12-27 16:17:27', '2023-12-27 16:17:27');
INSERT INTO `users_roles` VALUES (54, 7, 1, '2023-12-27 16:17:29', '2023-12-27 16:17:29');
INSERT INTO `users_roles` VALUES (55, 1015, 1, '2023-12-27 16:24:34', '2023-12-27 16:24:34');
INSERT INTO `users_roles` VALUES (56, 1016, 1, '2023-12-27 16:31:14', '2023-12-27 16:31:14');
INSERT INTO `users_roles` VALUES (57, 1017, 1, '2023-12-27 16:33:57', '2023-12-27 16:33:57');
INSERT INTO `users_roles` VALUES (58, 1013, 1, '2023-12-27 17:24:53', '2023-12-27 17:24:53');
INSERT INTO `users_roles` VALUES (59, 1014, 1, '2023-12-27 17:34:04', '2023-12-27 17:34:04');
INSERT INTO `users_roles` VALUES (60, 1018, 1, '2023-12-27 17:37:09', '2023-12-27 17:37:09');
INSERT INTO `users_roles` VALUES (61, 1019, 1, '2023-12-27 17:37:12', '2023-12-27 17:37:12');
INSERT INTO `users_roles` VALUES (62, 1020, 1, '2023-12-27 21:53:42', '2023-12-27 21:53:42');
INSERT INTO `users_roles` VALUES (64, 1022, 1, '2023-12-27 22:23:22', '2023-12-27 22:23:22');
INSERT INTO `users_roles` VALUES (65, 1021, 1, '2023-12-28 15:45:24', '2023-12-28 15:45:24');
INSERT INTO `users_roles` VALUES (66, 1023, 1, '2023-12-28 16:11:53', '2023-12-28 16:11:53');
INSERT INTO `users_roles` VALUES (67, 1024, 1, '2023-12-28 16:11:56', '2023-12-28 16:11:56');
INSERT INTO `users_roles` VALUES (69, 1026, 1, '2023-12-28 17:17:30', '2023-12-28 17:17:30');
INSERT INTO `users_roles` VALUES (74, 1027, 15, '2023-12-28 21:49:58', '2023-12-28 21:49:58');
INSERT INTO `users_roles` VALUES (75, 1028, 16, '2023-12-28 21:50:01', '2023-12-28 21:50:01');
INSERT INTO `users_roles` VALUES (76, 1025, 17, '2023-12-28 21:50:11', '2023-12-28 21:50:11');
INSERT INTO `users_roles` VALUES (77, 1029, 17, '2023-12-28 21:54:19', '2023-12-28 21:54:19');
INSERT INTO `users_roles` VALUES (78, 1030, 15, '2023-12-28 21:56:03', '2023-12-28 21:56:03');

SET FOREIGN_KEY_CHECKS = 1;
