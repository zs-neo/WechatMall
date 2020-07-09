/*
 Navicat Oracle Data Transfer

 Source Server         : oracle
 Source Server Type    : Oracle
 Source Server Version : 110200
 Source Host           : 118.31.11.163:1521
 Source Schema         : FOOD

 Target Server Type    : Oracle
 Target Server Version : 110200
 File Encoding         : 65001

 Date: 09/07/2020 09:29:48
*/


-- ----------------------------
-- Table structure for ADMINS
-- ----------------------------
DROP TABLE "FOOD"."ADMINS";
CREATE TABLE "FOOD"."ADMINS" (
  "ID" NUMBER ,
  "USERNAME" VARCHAR2(256 BYTE) ,
  "REALNAME" VARCHAR2(256 BYTE) ,
  "PASSWORD" VARCHAR2(40 BYTE) ,
  "PHONE" VARCHAR2(11 BYTE) ,
  "CREDITNUM" VARCHAR2(20 BYTE) ,
  "IDENTITYID" VARCHAR2(18 BYTE) ,
  "ROLEID" NUMBER ,
  "DEPTNO" NUMBER ,
  "CREATEDATE" DATE ,
  "STATUS" NUMBER ,
  "ICON" VARCHAR2(256 BYTE) 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of ADMINS
-- ----------------------------
INSERT INTO "FOOD"."ADMINS" VALUES ('3', '小可爱', '张可爱', '4QrcOUm6Wau+VuBX8g+IPg==', '15645158285', '9988018888888888', '251642200212264512', '7', '2', TO_DATE('2020-06-22 23:05:55', 'SYYYY-MM-DD HH24:MI:SS'), '1', '9c1b52fbf3cf45f5a5e7652a9012ac92_IMG_-289676001.jpg');
INSERT INTO "FOOD"."ADMINS" VALUES ('4', '小谢', '谢铭浩', '123456', '13521212122', '11', '22', '2', '2', TO_DATE('2020-06-23 16:46:29', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL);
INSERT INTO "FOOD"."ADMINS" VALUES ('5', '小明', '王明豪', '123456', '13521212122', '11', '22', '2', '2', TO_DATE('2020-06-23 16:47:57', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL);
INSERT INTO "FOOD"."ADMINS" VALUES ('6', '小航', '赵瑞航', '123456', '13521212122', '11', '22', '2', '2', TO_DATE('2020-06-23 16:47:57', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL);
INSERT INTO "FOOD"."ADMINS" VALUES ('7', '小升', '周升', '123456', '13521212122', '11', '22', '2', '2', TO_DATE('2020-06-23 16:47:57', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL);
INSERT INTO "FOOD"."ADMINS" VALUES ('8', '小瀚', '王瀚', '123456', '13521212122', '11', '22', '2', '2', TO_DATE('2020-06-23 16:47:57', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL);
INSERT INTO "FOOD"."ADMINS" VALUES ('9', '小小谢', '谢铭浩', '123456', '13521212122', '11', '22', '2', '2', TO_DATE('2020-06-23 16:54:48', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL);
INSERT INTO "FOOD"."ADMINS" VALUES ('10', '小小明', '王明豪', '123456', '13521212122', '11', '22', '2', '2', TO_DATE('2020-06-23 16:54:48', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL);
INSERT INTO "FOOD"."ADMINS" VALUES ('41', '前端拦截器好像有问题', '问题', '4QrcOUm6Wau+VuBX8g+IPg==', '18745151515', '9988011515151515', '371616199911111111', '2', '2', TO_DATE('2020-06-27 22:06:31', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL);
INSERT INTO "FOOD"."ADMINS" VALUES ('40', '创建员编号测试', '测试', '4QrcOUm6Wau+VuBX8g+IPg==', '18715161616', '9988011515151515', '316916199911111111', '2', '2', TO_DATE('2020-06-27 21:57:56', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL);
INSERT INTO "FOOD"."ADMINS" VALUES ('14', 'test_privileges', '午夜测试', '123456', '13651252315', '9988011254521256', '351630198512124212', '2', '2', TO_DATE('2020-06-23 23:54:03', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL);
INSERT INTO "FOOD"."ADMINS" VALUES ('15', 'test_privileges_jixu', '午夜继续测试', '123456', '13651252315', '9988011254521256', '351630198512124212', '2', '2', TO_DATE('2020-06-24 00:00:35', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL);
INSERT INTO "FOOD"."ADMINS" VALUES ('16', 'test_p_haidei', '午夜再次测试', '123456', '13512151515', '9988011254521256', '201215199902120212', '2', '2', TO_DATE('2020-06-24 00:01:58', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL);
INSERT INTO "FOOD"."ADMINS" VALUES ('17', 'test_p_youlai', '午夜又来测试', '123456', '13512151515', '9988011254521256', '201215199902120212', '2', '2', TO_DATE('2020-06-24 00:05:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL);
INSERT INTO "FOOD"."ADMINS" VALUES ('18', 'test_p_yinggaishizuihou', '午夜应该好使测试', '123456', '13512151515', '9988011254521256', '201215199902120212', '2', '2', TO_DATE('2020-06-24 00:10:18', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL);
INSERT INTO "FOOD"."ADMINS" VALUES ('19', 'test_p_hope', '我想睡觉测试', '123456', '13512151515', '9988011254521256', '201215199902120212', '2', '2', TO_DATE('2020-06-24 00:16:23', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL);
INSERT INTO "FOOD"."ADMINS" VALUES ('20', '心态崩了', '我是傻子测试', '4QrcOUm6Wau+VuBX8g+IPg==', '13512151515', '9988011254521256', '201215199902120212', '2', '2', TO_DATE('2020-06-24 00:20:12', 'SYYYY-MM-DD HH24:MI:SS'), '1', '4832312c62be449d9e6c9af4ddfb9d48_rissm1wviv2png.png');
INSERT INTO "FOOD"."ADMINS" VALUES ('21', '整合小朋友', 'HeZheng', '123456', '18721254512', '9988011252135255', '321512198412021245', '5', '4', TO_DATE('2020-06-26 11:04:43', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL);
INSERT INTO "FOOD"."ADMINS" VALUES ('22', '整合心态要崩', 'Beng', '123456', '18745165125', '9988011111111111', '384512199911111111', '5', '4', TO_DATE('2020-06-26 11:07:47', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL);
INSERT INTO "FOOD"."ADMINS" VALUES ('23', '整合开始了', 'GO', '4QrcOUm6Wau+VuBX8g+IPg==', '18745151312', '9988011111111111', '351251199911111111', '2', '2', TO_DATE('2020-06-26 11:20:29', 'SYYYY-MM-DD HH24:MI:SS'), '1', 'fc2b1defe8c1493b84bdf5192a5e7e87_IMG_-289676001.jpg');

-- ----------------------------
-- Table structure for ADMIN_PRIVILEGES
-- ----------------------------
DROP TABLE "FOOD"."ADMIN_PRIVILEGES";
CREATE TABLE "FOOD"."ADMIN_PRIVILEGES" (
  "APID" NUMBER ,
  "ADMINID" NUMBER ,
  "PRIVILEGEID" NUMBER ,
  "CREATEDATE" DATE ,
  "CREATEADMINID" NUMBER ,
  "MODIFYDATE" DATE ,
  "MODIFYADMINID" NUMBER ,
  "VALID" NUMBER 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of ADMIN_PRIVILEGES
-- ----------------------------
INSERT INTO "FOOD"."ADMIN_PRIVILEGES" VALUES ('51', '41', '2', TO_DATE('2020-06-27 22:06:31', 'SYYYY-MM-DD HH24:MI:SS'), '3', NULL, NULL, '1');
INSERT INTO "FOOD"."ADMIN_PRIVILEGES" VALUES ('52', '41', '3', TO_DATE('2020-06-27 22:06:31', 'SYYYY-MM-DD HH24:MI:SS'), '3', NULL, NULL, '1');
INSERT INTO "FOOD"."ADMIN_PRIVILEGES" VALUES ('49', '40', '2', TO_DATE('2020-06-27 21:57:56', 'SYYYY-MM-DD HH24:MI:SS'), '3', NULL, NULL, '1');
INSERT INTO "FOOD"."ADMIN_PRIVILEGES" VALUES ('50', '40', '3', TO_DATE('2020-06-27 21:57:56', 'SYYYY-MM-DD HH24:MI:SS'), '3', NULL, NULL, '1');
INSERT INTO "FOOD"."ADMIN_PRIVILEGES" VALUES ('81', '3', '6', TO_DATE('2020-07-05 22:49:41', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '1');
INSERT INTO "FOOD"."ADMIN_PRIVILEGES" VALUES ('82', '3', '7', TO_DATE('2020-07-05 22:49:41', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '1');
INSERT INTO "FOOD"."ADMIN_PRIVILEGES" VALUES ('83', '3', '8', TO_DATE('2020-07-05 22:49:41', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '1');
INSERT INTO "FOOD"."ADMIN_PRIVILEGES" VALUES ('84', '3', '9', TO_DATE('2020-07-05 22:49:41', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '1');
INSERT INTO "FOOD"."ADMIN_PRIVILEGES" VALUES ('85', '3', '10', TO_DATE('2020-07-05 22:49:41', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '1');
INSERT INTO "FOOD"."ADMIN_PRIVILEGES" VALUES ('86', '3', '2', TO_DATE('2020-07-05 22:49:41', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '1');
INSERT INTO "FOOD"."ADMIN_PRIVILEGES" VALUES ('87', '3', '4', TO_DATE('2020-07-05 22:49:41', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '1');
INSERT INTO "FOOD"."ADMIN_PRIVILEGES" VALUES ('88', '3', '5', TO_DATE('2020-07-05 22:49:41', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '1');
INSERT INTO "FOOD"."ADMIN_PRIVILEGES" VALUES ('89', '3', '3', TO_DATE('2020-07-05 22:49:41', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '1');
INSERT INTO "FOOD"."ADMIN_PRIVILEGES" VALUES ('90', '3', '11', TO_DATE('2020-07-05 22:49:41', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '1');
INSERT INTO "FOOD"."ADMIN_PRIVILEGES" VALUES ('91', '3', '12', TO_DATE('2020-07-05 22:49:41', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '1');
INSERT INTO "FOOD"."ADMIN_PRIVILEGES" VALUES ('92', '3', '21', TO_DATE('2020-07-05 22:49:41', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '1');
INSERT INTO "FOOD"."ADMIN_PRIVILEGES" VALUES ('18', '20', '4', TO_DATE('2020-06-24 21:52:09', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '1');
INSERT INTO "FOOD"."ADMIN_PRIVILEGES" VALUES ('19', '20', '5', TO_DATE('2020-06-24 21:52:09', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '1');
INSERT INTO "FOOD"."ADMIN_PRIVILEGES" VALUES ('20', '23', '2', TO_DATE('2020-06-26 11:20:29', 'SYYYY-MM-DD HH24:MI:SS'), '-1', NULL, NULL, '1');
INSERT INTO "FOOD"."ADMIN_PRIVILEGES" VALUES ('21', '23', '3', TO_DATE('2020-06-26 11:20:29', 'SYYYY-MM-DD HH24:MI:SS'), '-1', NULL, NULL, '1');
INSERT INTO "FOOD"."ADMIN_PRIVILEGES" VALUES ('16', '20', '2', TO_DATE('2020-06-24 21:52:09', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '1');
INSERT INTO "FOOD"."ADMIN_PRIVILEGES" VALUES ('17', '20', '3', TO_DATE('2020-06-24 21:52:09', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '1');

-- ----------------------------
-- Table structure for CART
-- ----------------------------
DROP TABLE "FOOD"."CART";
CREATE TABLE "FOOD"."CART" (
  "FID" NUMBER NOT NULL ,
  "TID" NUMBER NOT NULL ,
  "FDESC" VARCHAR2(500 BYTE) NOT NULL ,
  "FNAME" VARCHAR2(255 BYTE) NOT NULL ,
  "FPIC" VARCHAR2(255 BYTE) NOT NULL ,
  "FPRICE" NUMBER NOT NULL ,
  "FDISCOUNT" NUMBER NOT NULL ,
  "FNUM" NUMBER NOT NULL ,
  "FCOST" NUMBER NOT NULL 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of CART
-- ----------------------------
INSERT INTO "FOOD"."CART" VALUES ('82', '32', '清淡的虾皮萝卜丝汤!作为最流行的夏季汤品，逐渐走入大家的心中。清淡的萝卜丝配上淡味的虾皮，将百煮的浓汤浇在汤面上，一碗清淡爽口的虾皮萝卜丝汤出锅了', '虾皮萝卜丝汤', '52da1ae8a9375.jpg', '14', '0.88', '1', '4');
INSERT INTO "FOOD"."CART" VALUES ('87', '38', '蓝莓味冰激凌  细细的沙冰上面，浇上酸甜可口的蓝莓糖浆，大大的一杯，清凉爽口，是夏季解暑的上佳单品。', '蓝莓味冰激凌', '52da0a1841e10.jpg', '5', '0.88', '1', '1');
INSERT INTO "FOOD"."CART" VALUES ('88', '33', '酸辣白菜粉丝  喜欢吃酸的朋友绝对喜欢这道菜，使用传统手法腌制的酸菜，配上爽口的粉丝，将酸爽融为一体，加上少许的辣椒后，酸中微微带辣，绝对够味', '酸辣白菜粉丝', '52da1b7bbfe87.jpg', '9', '0.88', '1', '1');

-- ----------------------------
-- Table structure for CLIENT
-- ----------------------------
DROP TABLE "FOOD"."CLIENT";
CREATE TABLE "FOOD"."CLIENT" (
  "CLIENTID" NUMBER NOT NULL ,
  "USERNAME" VARCHAR2(255 BYTE) ,
  "PASSWORD" VARCHAR2(255 BYTE) ,
  "WECHAT_ID" VARCHAR2(255 BYTE) ,
  "ICON" VARCHAR2(255 BYTE) ,
  "PHONE" NUMBER ,
  "CREATEDATE" DATE ,
  "TYPE" NUMBER ,
  "STATE" NUMBER ,
  "SCORES" NUMBER 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of CLIENT
-- ----------------------------
INSERT INTO "FOOD"."CLIENT" VALUES ('25', 'oCdpZ5JDA2PaZjJcoeYhJGpRtd-M', 'oCdpZ5JDA2PaZjJcoeYhJGpRtd-M', 'oCdpZ5JDA2PaZjJcoeYhJGpRtd-M', NULL, '0', TO_DATE('2020-07-08 17:17:24', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', '0');
INSERT INTO "FOOD"."CLIENT" VALUES ('4', '123', '123', 'wechat666', 'person2.jpg', '18895642135', TO_DATE('2020-07-08 13:27:14', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', '295');
INSERT INTO "FOOD"."CLIENT" VALUES ('21', '123', '123', '123', NULL, '123', TO_DATE('2020-07-08 14:23:02', 'SYYYY-MM-DD HH24:MI:SS'), '0', '1', '0');
INSERT INTO "FOOD"."CLIENT" VALUES ('1', 'Test', '123456', '122133wechat', 'person1.jpg', '13368457625', TO_DATE('2020-07-05 23:14:39', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', '50');
INSERT INTO "FOOD"."CLIENT" VALUES ('2', '会员Test', '1234567', NULL, '153b692e2d22480a97292c824c691f6a_leslie.jpg', '18888888888', TO_DATE('2020-07-02 15:02:11', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', '150');
INSERT INTO "FOOD"."CLIENT" VALUES ('3', '非会员Test', '123456', NULL, 'f58c47b6bdfe47089fa188df5101a4dd_a.jpg', '16666666668', TO_DATE('2020-07-02 15:02:11', 'SYYYY-MM-DD HH24:MI:SS'), '0', '1', '50');

-- ----------------------------
-- Table structure for COUPON
-- ----------------------------
DROP TABLE "FOOD"."COUPON";
CREATE TABLE "FOOD"."COUPON" (
  "COUPONID" NUMBER NOT NULL ,
  "COUPONNAME" VARCHAR2(50 BYTE) ,
  "COUPONDESC" VARCHAR2(100 BYTE) ,
  "COUPONBEGTIME" DATE ,
  "COUPONENDTIME" DATE ,
  "COUPONSTATUS" NUMBER ,
  "COUPONAMOUNT" NUMBER ,
  "COUPONSCORE" NUMBER ,
  "COUPONGETNUM" NUMBER ,
  "COUPONUSEDNUM" NUMBER ,
  "LIMITUSER" NUMBER 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of COUPON
-- ----------------------------
INSERT INTO "FOOD"."COUPON" VALUES ('23', '满300元减50元优惠券', '该优惠券可在付款时满300元减50元', TO_DATE('2020-07-08 14:25:02', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-07-18 14:25:02', 'SYYYY-MM-DD HH24:MI:SS'), '0', '25', '60', '20', '5', '0');
INSERT INTO "FOOD"."COUPON" VALUES ('24', '满500元减100元优惠券', '该优惠券可在付款时满500元减100元', TO_DATE('2020-07-08 14:25:03', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-07-18 14:25:03', 'SYYYY-MM-DD HH24:MI:SS'), '1', '30', '70', '11', '5', '0');
INSERT INTO "FOOD"."COUPON" VALUES ('2', '满10元减5元优惠券', '该优惠券可在付款时满10元减5元', TO_DATE('2020-07-18 14:09:09', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-07-23 14:09:09', 'SYYYY-MM-DD HH24:MI:SS'), '1', '10', '30', '5', '5', '1');
INSERT INTO "FOOD"."COUPON" VALUES ('3', '满15元减5元优惠券', '该优惠券可在付款时满15元减5元', TO_DATE('2020-06-28 14:09:09', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-07-08 14:09:09', 'SYYYY-MM-DD HH24:MI:SS'), '0', '15', '40', '10', '5', '1');
INSERT INTO "FOOD"."COUPON" VALUES ('4', '满20元减10元优惠券', '该优惠券可在付款时满20元减10元', TO_DATE('2020-06-28 14:09:10', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-08-07 14:21:20', 'SYYYY-MM-DD HH24:MI:SS'), '1', '20', '50', '11', '5', '1');
INSERT INTO "FOOD"."COUPON" VALUES ('5', '满25元减15元优惠券', '该优惠券可在付款时满25元减15元', TO_DATE('2020-06-28 14:09:10', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-08-07 14:21:20', 'SYYYY-MM-DD HH24:MI:SS'), '0', '25', '60', '20', '5', '0');
INSERT INTO "FOOD"."COUPON" VALUES ('6', '满30元减20元优惠券', '该优惠券可在付款时满30元减20元', TO_DATE('2020-06-28 14:09:10', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-08-07 14:21:20', 'SYYYY-MM-DD HH24:MI:SS'), '1', '30', '70', '10', '5', '0');
INSERT INTO "FOOD"."COUPON" VALUES ('7', '满50元减25元优惠券', '该优惠券可在付款时满50元减25元', TO_DATE('2020-06-28 14:09:10', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-08-07 14:21:20', 'SYYYY-MM-DD HH24:MI:SS'), '1', '30', '70', '10', '5', '0');
INSERT INTO "FOOD"."COUPON" VALUES ('8', '满55元减15元优惠券', '该优惠券可在付款时满55元减15元', TO_DATE('2020-06-28 14:09:10', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-08-07 14:21:20', 'SYYYY-MM-DD HH24:MI:SS'), '1', '30', '70', '11', '5', '0');
INSERT INTO "FOOD"."COUPON" VALUES ('9', '满10元减5元优惠券', '该优惠券可在付款时满10元减5元', TO_DATE('2020-07-18 14:09:10', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-07-23 14:09:10', 'SYYYY-MM-DD HH24:MI:SS'), '1', '10', '30', '5', '5', '1');
INSERT INTO "FOOD"."COUPON" VALUES ('10', '满15元减5元优惠券', '该优惠券可在付款时满15元减5元', TO_DATE('2020-06-28 14:09:10', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-08-07 14:21:20', 'SYYYY-MM-DD HH24:MI:SS'), '0', '15', '40', '10', '5', '1');
INSERT INTO "FOOD"."COUPON" VALUES ('11', '满20元减10元优惠券', '该优惠券可在付款时满20元减10元', TO_DATE('2020-06-28 14:09:10', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-08-07 14:21:20', 'SYYYY-MM-DD HH24:MI:SS'), '1', '20', '50', '10', '5', '1');
INSERT INTO "FOOD"."COUPON" VALUES ('12', '满25元减15元优惠券', '该优惠券可在付款时满25元减15元', TO_DATE('2020-06-28 14:09:10', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-08-07 14:21:20', 'SYYYY-MM-DD HH24:MI:SS'), '0', '25', '60', '20', '5', '0');
INSERT INTO "FOOD"."COUPON" VALUES ('13', '满30元减20元优惠券', '该优惠券可在付款时满30元减20元', TO_DATE('2020-06-28 14:09:10', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-08-07 14:21:20', 'SYYYY-MM-DD HH24:MI:SS'), '1', '30', '70', '10', '5', '0');
INSERT INTO "FOOD"."COUPON" VALUES ('14', '满50元减25元优惠券', '该优惠券可在付款时满50元减25元', TO_DATE('2020-06-28 14:09:10', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-08-07 14:21:20', 'SYYYY-MM-DD HH24:MI:SS'), '1', '30', '70', '10', '5', '0');
INSERT INTO "FOOD"."COUPON" VALUES ('15', '满55元减15元优惠券', '该优惠券可在付款时满55元减15元', TO_DATE('2020-06-28 14:09:10', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-08-07 14:21:20', 'SYYYY-MM-DD HH24:MI:SS'), '1', '30', '70', '10', '5', '0');
INSERT INTO "FOOD"."COUPON" VALUES ('16', '满10元减5元优惠券', '该优惠券可在付款时满10元减5元', TO_DATE('2020-07-18 14:09:10', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-07-23 14:09:10', 'SYYYY-MM-DD HH24:MI:SS'), '1', '10', '30', '5', '5', '1');
INSERT INTO "FOOD"."COUPON" VALUES ('17', '满15元减5元优惠券', '该优惠券可在付款时满15元减5元', TO_DATE('2020-06-28 14:09:10', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-08-07 14:21:20', 'SYYYY-MM-DD HH24:MI:SS'), '0', '15', '40', '10', '5', '1');
INSERT INTO "FOOD"."COUPON" VALUES ('18', '满20元减10元优惠券', '该优惠券可在付款时满20元减10元', TO_DATE('2020-06-28 14:09:10', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-08-07 14:21:20', 'SYYYY-MM-DD HH24:MI:SS'), '1', '20', '50', '10', '5', '1');
INSERT INTO "FOOD"."COUPON" VALUES ('19', '满25元减15元优惠券', '该优惠券可在付款时满25元减15元', TO_DATE('2020-06-28 14:09:10', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-08-07 14:21:20', 'SYYYY-MM-DD HH24:MI:SS'), '0', '25', '60', '20', '5', '0');
INSERT INTO "FOOD"."COUPON" VALUES ('20', '满30元减20元优惠券', '该优惠券可在付款时满30元减20元', TO_DATE('2020-06-28 14:09:10', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-08-07 14:21:20', 'SYYYY-MM-DD HH24:MI:SS'), '1', '30', '70', '10', '5', '0');
INSERT INTO "FOOD"."COUPON" VALUES ('21', '满50元减25元优惠券', '该优惠券可在付款时满50元减25元', TO_DATE('2020-06-28 14:09:10', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-08-07 14:21:20', 'SYYYY-MM-DD HH24:MI:SS'), '1', '30', '70', '10', '5', '0');
INSERT INTO "FOOD"."COUPON" VALUES ('22', '满55元减15元优惠券', '该优惠券可在付款时满55元减15元', TO_DATE('2020-06-28 14:09:10', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-08-07 14:21:20', 'SYYYY-MM-DD HH24:MI:SS'), '1', '30', '70', '10', '5', '0');

-- ----------------------------
-- Table structure for COUPON_RECEIVE
-- ----------------------------
DROP TABLE "FOOD"."COUPON_RECEIVE";
CREATE TABLE "FOOD"."COUPON_RECEIVE" (
  "CRID" NUMBER NOT NULL ,
  "CLIENTID" NUMBER ,
  "COUPONID" NUMBER ,
  "CREATETIME" DATE ,
  "STATUS" NUMBER 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of COUPON_RECEIVE
-- ----------------------------
INSERT INTO "FOOD"."COUPON_RECEIVE" VALUES ('12', '4', '8', TO_DATE('2020-07-08 14:22:50', 'SYYYY-MM-DD HH24:MI:SS'), '0');
INSERT INTO "FOOD"."COUPON_RECEIVE" VALUES ('14', '4', '24', TO_DATE('2020-07-08 14:55:56', 'SYYYY-MM-DD HH24:MI:SS'), '0');
INSERT INTO "FOOD"."COUPON_RECEIVE" VALUES ('15', '4', '4', TO_DATE('2020-07-08 15:46:10', 'SYYYY-MM-DD HH24:MI:SS'), '0');
INSERT INTO "FOOD"."COUPON_RECEIVE" VALUES ('0', '1', '2', TO_DATE('2020-06-25 19:19:11', 'SYYYY-MM-DD HH24:MI:SS'), '-1');
INSERT INTO "FOOD"."COUPON_RECEIVE" VALUES ('1', '2', '2', TO_DATE('2020-07-15 19:19:11', 'SYYYY-MM-DD HH24:MI:SS'), '1');
INSERT INTO "FOOD"."COUPON_RECEIVE" VALUES ('2', '3', '2', TO_DATE('2020-07-05 19:19:11', 'SYYYY-MM-DD HH24:MI:SS'), '1');
INSERT INTO "FOOD"."COUPON_RECEIVE" VALUES ('3', '1', '2', TO_DATE('2020-06-30 19:19:11', 'SYYYY-MM-DD HH24:MI:SS'), '0');
INSERT INTO "FOOD"."COUPON_RECEIVE" VALUES ('4', '2', '2', TO_DATE('2020-07-10 19:19:11', 'SYYYY-MM-DD HH24:MI:SS'), '-1');
INSERT INTO "FOOD"."COUPON_RECEIVE" VALUES ('5', '3', '2', TO_DATE('2020-07-10 19:19:11', 'SYYYY-MM-DD HH24:MI:SS'), '1');
INSERT INTO "FOOD"."COUPON_RECEIVE" VALUES ('6', '1', '2', TO_DATE('2020-07-05 19:19:11', 'SYYYY-MM-DD HH24:MI:SS'), '0');
INSERT INTO "FOOD"."COUPON_RECEIVE" VALUES ('7', '2', '2', TO_DATE('2020-06-25 19:19:11', 'SYYYY-MM-DD HH24:MI:SS'), '1');
INSERT INTO "FOOD"."COUPON_RECEIVE" VALUES ('8', '3', '2', TO_DATE('2020-07-05 19:19:11', 'SYYYY-MM-DD HH24:MI:SS'), '-1');
INSERT INTO "FOOD"."COUPON_RECEIVE" VALUES ('9', '1', '2', TO_DATE('2020-07-05 19:19:11', 'SYYYY-MM-DD HH24:MI:SS'), '0');
INSERT INTO "FOOD"."COUPON_RECEIVE" VALUES ('10', '2', '2', TO_DATE('2020-07-05 19:19:11', 'SYYYY-MM-DD HH24:MI:SS'), '-1');
INSERT INTO "FOOD"."COUPON_RECEIVE" VALUES ('11', '1', '2', TO_DATE('2020-07-05 19:19:11', 'SYYYY-MM-DD HH24:MI:SS'), '-1');
INSERT INTO "FOOD"."COUPON_RECEIVE" VALUES ('13', '4', '13', TO_DATE('2020-07-08 14:22:40', 'SYYYY-MM-DD HH24:MI:SS'), '0');

-- ----------------------------
-- Table structure for DEPARTMENT
-- ----------------------------
DROP TABLE "FOOD"."DEPARTMENT";
CREATE TABLE "FOOD"."DEPARTMENT" (
  "DID" NUMBER ,
  "DNAME" VARCHAR2(256 BYTE) ,
  "MANAGERID" NUMBER 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of DEPARTMENT
-- ----------------------------
INSERT INTO "FOOD"."DEPARTMENT" VALUES ('2', '库存部', NULL);
INSERT INTO "FOOD"."DEPARTMENT" VALUES ('3', '活动运维部', NULL);
INSERT INTO "FOOD"."DEPARTMENT" VALUES ('4', '销售部', NULL);
INSERT INTO "FOOD"."DEPARTMENT" VALUES ('5', '信息安全部', NULL);
INSERT INTO "FOOD"."DEPARTMENT" VALUES ('7', '财务部', NULL);
INSERT INTO "FOOD"."DEPARTMENT" VALUES ('8', '人力资源部', NULL);

-- ----------------------------
-- Table structure for EVENT
-- ----------------------------
DROP TABLE "FOOD"."EVENT";
CREATE TABLE "FOOD"."EVENT" (
  "EVENTID" NUMBER NOT NULL ,
  "ENAME" VARCHAR2(255 BYTE) NOT NULL ,
  "EPIC" VARCHAR2(255 BYTE) NOT NULL ,
  "EDETAILPIC" VARCHAR2(255 BYTE) NOT NULL ,
  "EDESC" VARCHAR2(500 BYTE) ,
  "ESTATUS" NUMBER NOT NULL ,
  "EVENTBEGTIME" DATE NOT NULL ,
  "EVENTENDTIME" DATE NOT NULL 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of EVENT
-- ----------------------------
INSERT INTO "FOOD"."EVENT" VALUES ('2', '0元配送5折起吃活动', '1.jpg', 'd1.jpg', '参与活动赢取红包，优惠多多', '1', TO_DATE('2020-06-28 14:08:32', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-07-08 14:08:32', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "FOOD"."EVENT" VALUES ('3', '0元配送5折起吃活动', '2.jpg', 'd2.jpg', '参与活动赢取红包，优惠多多', '1', TO_DATE('2020-06-28 14:08:32', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-07-08 14:08:32', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "FOOD"."EVENT" VALUES ('4', '中秋特惠活动', '3.jpg', 'd3.jpg', '参与活动赢取红包，优惠多多', '0', TO_DATE('2020-06-28 14:08:32', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-07-08 14:08:32', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "FOOD"."EVENT" VALUES ('5', '端午特惠活动', '4.jpg', 'd4.jpg', '参与活动赢取红包，优惠多多', '0', TO_DATE('2020-06-28 14:08:32', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-07-08 14:08:32', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "FOOD"."EVENT" VALUES ('6', '春节特惠活动', '1.jpg', 'd1.jpg', '参与活动赢取红包，优惠多多', '0', TO_DATE('2020-06-28 14:08:32', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-07-08 14:08:32', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "FOOD"."EVENT" VALUES ('7', '0元配送5折起吃活动', '1.jpg', 'd1.jpg', '参与活动赢取红包，优惠多多', '1', TO_DATE('2020-06-28 14:08:32', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-07-08 14:08:32', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "FOOD"."EVENT" VALUES ('8', '0元配送5折起吃活动', '1.jpg', 'd1.jpg', '参与活动赢取红包，优惠多多', '1', TO_DATE('2020-06-28 14:08:32', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-07-08 14:08:32', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "FOOD"."EVENT" VALUES ('9', '0元配送5折起吃活动', '2.jpg', 'd2.jpg', '参与活动赢取红包，优惠多多', '1', TO_DATE('2020-06-28 14:08:33', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-07-08 14:08:33', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "FOOD"."EVENT" VALUES ('10', '中秋特惠活动', '3.jpg', 'd3.jpg', '参与活动赢取红包，优惠多多', '0', TO_DATE('2020-06-28 14:08:33', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-07-08 14:08:33', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "FOOD"."EVENT" VALUES ('11', '端午特惠活动', '4.jpg', 'd4.jpg', '参与活动赢取红包，优惠多多', '0', TO_DATE('2020-06-28 14:08:33', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-07-08 14:08:33', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "FOOD"."EVENT" VALUES ('12', '春节特惠活动', '1.jpg', 'd1.jpg', '参与活动赢取红包，优惠多多', '0', TO_DATE('2020-06-28 14:08:33', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-07-08 14:08:33', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "FOOD"."EVENT" VALUES ('13', '0元配送5折起吃活动', '1.jpg', 'd1.jpg', '参与活动赢取红包，优惠多多', '1', TO_DATE('2020-06-28 14:08:33', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-07-08 14:08:33', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "FOOD"."EVENT" VALUES ('14', '0元配送5折起吃活动', '1.jpg', 'd1.jpg', '参与活动赢取红包，优惠多多', '1', TO_DATE('2020-06-28 14:08:33', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-07-08 14:08:33', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "FOOD"."EVENT" VALUES ('15', '0元配送5折起吃活动', '2.jpg', 'd2.jpg', '参与活动赢取红包，优惠多多', '1', TO_DATE('2020-06-28 14:08:33', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-07-08 14:08:33', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "FOOD"."EVENT" VALUES ('16', '中秋特惠活动', '3.jpg', 'd3.jpg', '参与活动赢取红包，优惠多多', '0', TO_DATE('2020-06-28 14:08:33', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-07-08 14:08:33', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "FOOD"."EVENT" VALUES ('17', '端午特惠活动', '4.jpg', 'd4.jpg', '参与活动赢取红包，优惠多多', '0', TO_DATE('2020-06-28 14:08:33', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-07-08 14:08:33', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "FOOD"."EVENT" VALUES ('18', '春节特惠活动', '1.jpg', 'd1.jpg', '参与活动赢取红包，优惠多多', '0', TO_DATE('2020-06-28 14:08:33', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-07-08 14:08:33', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "FOOD"."EVENT" VALUES ('19', '0元配送5折起吃活动', '1.jpg', 'd1.jpg', '参与活动赢取红包，优惠多多', '1', TO_DATE('2020-06-28 14:08:33', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-07-08 14:08:33', 'SYYYY-MM-DD HH24:MI:SS'));

-- ----------------------------
-- Table structure for FIRST_TYPE
-- ----------------------------
DROP TABLE "FOOD"."FIRST_TYPE";
CREATE TABLE "FOOD"."FIRST_TYPE" (
  "FTID" NUMBER NOT NULL ,
  "FTNAME" VARCHAR2(250 BYTE) NOT NULL ,
  "FTDESC" VARCHAR2(500 BYTE) ,
  "FTUSED" NUMBER DEFAULT 1
 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of FIRST_TYPE
-- ----------------------------
INSERT INTO "FOOD"."FIRST_TYPE" VALUES ('13', '饮品甜点', '饮品甜点', '1');
INSERT INTO "FOOD"."FIRST_TYPE" VALUES ('12', '火锅', '火锅', '1');
INSERT INTO "FOOD"."FIRST_TYPE" VALUES ('11', '煲汤', '煲汤', '1');
INSERT INTO "FOOD"."FIRST_TYPE" VALUES ('9', '正餐', '正餐', '1');
INSERT INTO "FOOD"."FIRST_TYPE" VALUES ('10', '快餐', '快餐', '1');
INSERT INTO "FOOD"."FIRST_TYPE" VALUES ('14', '面食', '面食', '1');

-- ----------------------------
-- Table structure for FOODS
-- ----------------------------
DROP TABLE "FOOD"."FOODS";
CREATE TABLE "FOOD"."FOODS" (
  "FID" NUMBER NOT NULL ,
  "TID" NUMBER ,
  "FNAME" VARCHAR2(255 BYTE) NOT NULL ,
  "FPIC" VARCHAR2(255 BYTE) NOT NULL ,
  "FPRICE" NUMBER NOT NULL ,
  "FORDER" NUMBER ,
  "FDESC" VARCHAR2(500 BYTE) NOT NULL ,
  "FREGTIME" DATE NOT NULL ,
  "FUSED" NUMBER DEFAULT 1
 ,
  "FCOST" NUMBER(6,2) DEFAULT 20
 ,
  "FDISCOUNT" NUMBER(2,2) DEFAULT 0.88
 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of FOODS
-- ----------------------------
INSERT INTO "FOOD"."FOODS" VALUES ('111', '15', '歌乐山辣子鸡', '52fc3bad1708a.jpg', '35', '1', '此州乃竹乡，春笋满山谷。<br>山夫折盈抱，抱来早市鬻。<br>物以多为贱，双钱易一束。<br>置之炊甑中，与饭同时熟。<br>紫箨坼故锦，素肌掰新玉。<br>每日遂加餐，经时不思肉。<br>久为京洛客，此味常不足。<br>且食勿踟蹰，南风吹作竹。', TO_DATE('2020-06-19 20:52:32', 'SYYYY-MM-DD HH24:MI:SS'), '1', '20', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('112', '15', '宫保鸡丁', '52fc3bd4d7b9c.jpg', '36', '1', '此州乃竹乡，春笋满山谷。<br>山夫折盈抱，抱来早市鬻。<br>物以多为贱，双钱易一束。<br>置之炊甑中，与饭同时熟。<br>紫箨坼故锦，素肌掰新玉。<br>每日遂加餐，经时不思肉。<br>久为京洛客，此味常不足。<br>且食勿踟蹰，南风吹作竹。', TO_DATE('2020-06-19 20:52:32', 'SYYYY-MM-DD HH24:MI:SS'), '1', '20', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('113', '15', '崂山蘑菇毽子肉', '52fc3c2872a3a.jpg', '40', '1', '此州乃竹乡，春笋满山谷。<br>山夫折盈抱，抱来早市鬻。<br>物以多为贱，双钱易一束。<br>置之炊甑中，与饭同时熟。<br>紫箨坼故锦，素肌掰新玉。<br>每日遂加餐，经时不思肉。<br>久为京洛客，此味常不足。<br>且食勿踟蹰，南风吹作竹。', TO_DATE('2020-06-19 20:52:32', 'SYYYY-MM-DD HH24:MI:SS'), '1', '20', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('114', '15', '老成都鸡米芽菜', '52fc3c674077e.jpg', '40', '1', '此州乃竹乡，春笋满山谷。<br>山夫折盈抱，抱来早市鬻。<br>物以多为贱，双钱易一束。<br>置之炊甑中，与饭同时熟。<br>紫箨坼故锦，素肌掰新玉。<br>每日遂加餐，经时不思肉。<br>久为京洛客，此味常不足。<br>且食勿踟蹰，南风吹作竹。', TO_DATE('2020-06-19 20:52:33', 'SYYYY-MM-DD HH24:MI:SS'), '1', '20', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('115', '15', '蚂蚁上树', '52fc3c8e9cb23.jpg', '39', '1', '此州乃竹乡，春笋满山谷。<br>山夫折盈抱，抱来早市鬻。<br>物以多为贱，双钱易一束。<br>置之炊甑中，与饭同时熟。<br>紫箨坼故锦，素肌掰新玉。<br>每日遂加餐，经时不思肉。<br>久为京洛客，此味常不足。<br>且食勿踟蹰，南风吹作竹。', TO_DATE('2020-06-19 20:52:33', 'SYYYY-MM-DD HH24:MI:SS'), '1', '20', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('116', '15', '松仁扒脆皖鱼', '52fc3ce075f0c.jpg', '40', '1', '此州乃竹乡，春笋满山谷。<br>山夫折盈抱，抱来早市鬻。<br>物以多为贱，双钱易一束。<br>置之炊甑中，与饭同时熟。<br>紫箨坼故锦，素肌掰新玉。<br>每日遂加餐，经时不思肉。<br>久为京洛客，此味常不足。<br>且食勿踟蹰，南风吹作竹。', TO_DATE('2020-06-19 20:52:33', 'SYYYY-MM-DD HH24:MI:SS'), '1', '20', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('117', '15', '万喜八宝烟熏肠', '52fc3d2cd68ec.jpg', '35', '1', '此州乃竹乡，春笋满山谷。<br>山夫折盈抱，抱来早市鬻。<br>物以多为贱，双钱易一束。<br>置之炊甑中，与饭同时熟。<br>紫箨坼故锦，素肌掰新玉。<br>每日遂加餐，经时不思肉。<br>久为京洛客，此味常不足。<br>且食勿踟蹰，南风吹作竹。', TO_DATE('2020-06-19 20:52:33', 'SYYYY-MM-DD HH24:MI:SS'), '1', '20', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('118', '31', '滋补养生鱼翅汤', '52fc3d845fdc0.jpg', '50', '1', '枇杷已熟粲金珠，桑落初尝滟玉蛆。<br>暂借垂莲十分盏，一浇空腹五车书。<br>青浮卵碗槐芽饼，红点冰盘藿叶鱼。<br>细雨斜风作小寒， <br>淡烟疏柳媚晴滩. <br>入淮清洛渐漫漫， <br>雪沫乳花浮午盏.<br>蓼茸蒿笋试春盘,<br>人间有味是清欢.', TO_DATE('2020-06-19 20:52:33', 'SYYYY-MM-DD HH24:MI:SS'), '1', '20', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('119', '31', '中药鸡汤', '52fc3db2cfc13.jpg', '39', '1', '枇杷已熟粲金珠，桑落初尝滟玉蛆。<br>暂借垂莲十分盏，一浇空腹五车书。<br>青浮卵碗槐芽饼，红点冰盘藿叶鱼。<br>细雨斜风作小寒， <br>淡烟疏柳媚晴滩. <br>入淮清洛渐漫漫， <br>雪沫乳花浮午盏.<br>蓼茸蒿笋试春盘,<br>人间有味是清欢.', TO_DATE('2020-06-19 20:52:33', 'SYYYY-MM-DD HH24:MI:SS'), '1', '20', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('120', '44', '韩国火锅', '52fc3f1620ef9.jpg', '45', '1', '枇杷已熟粲金珠，桑落初尝滟玉蛆。', TO_DATE('2020-06-19 20:52:33', 'SYYYY-MM-DD HH24:MI:SS'), '1', '20', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('121', '45', '特质砂锅', '52fc3f77e6e20.jpg', '45', '1', '枇杷已熟粲金珠，桑落初尝滟玉蛆。', TO_DATE('2020-06-19 20:52:33', 'SYYYY-MM-DD HH24:MI:SS'), '1', '20', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('122', '46', '经典火锅', '52fc3fac1853e.jpg', '45', '1', '枇杷已熟粲金珠，桑落初尝滟玉蛆。', TO_DATE('2020-06-19 20:52:33', 'SYYYY-MM-DD HH24:MI:SS'), '1', '20', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('123', '26', '大虾牛腩饭', '52fc40de9d72f.jpg', '20', '1', '枇杷已熟粲金珠，桑落初尝滟玉蛆。', TO_DATE('2020-06-19 20:52:33', 'SYYYY-MM-DD HH24:MI:SS'), '1', '10', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('124', '26', '海参牛腩饭', '52fc410a53153.jpg', '25', '1', '枇杷已熟粲金珠，桑落初尝滟玉蛆。', TO_DATE('2020-06-19 20:52:33', 'SYYYY-MM-DD HH24:MI:SS'), '1', '10', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('125', '26', '金针菇肥牛盖饭', '52fc4130ce1c5.jpg', '20', '1', '枇杷已熟粲金珠，桑落初尝滟玉蛆。', TO_DATE('2020-06-19 20:52:33', 'SYYYY-MM-DD HH24:MI:SS'), '1', '10', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('126', '48', '美味盖鱼饭', '52fc415b1ffbb.jpg', '20', '1', '枇杷已熟粲金珠，桑落初尝滟玉蛆。', TO_DATE('2020-06-19 20:52:33', 'SYYYY-MM-DD HH24:MI:SS'), '1', '10', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('127', '19', '金光四溢', '52fc8eaf149fc.jpg', '30', '1', '枇杷已熟粲金珠，桑落初尝滟玉蛆。', TO_DATE('2020-06-19 20:52:33', 'SYYYY-MM-DD HH24:MI:SS'), '1', '10', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('128', '22', '红烧茄子', '52fc8ee8618c3.jpg', '35', '1', '枇杷已熟粲金珠，桑落初尝滟玉蛆。', TO_DATE('2020-06-19 20:52:33', 'SYYYY-MM-DD HH24:MI:SS'), '1', '20', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('129', '23', '红烧鸡腿', '52fc8f110d265.jpg', '50', '1', '枇杷已熟粲金珠，桑落初尝滟玉蛆。', TO_DATE('2020-06-19 20:52:33', 'SYYYY-MM-DD HH24:MI:SS'), '1', '20', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('130', '21', '青春如虹', '52fc8f76d4a6e.jpg', '25', '1', '枇杷已熟粲金珠，桑落初尝滟玉蛆。', TO_DATE('2020-06-19 20:52:33', 'SYYYY-MM-DD HH24:MI:SS'), '1', '15', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('131', '59', '烧麦', '52fc8fa12a233.jpg', '15', '1', '枇杷已熟粲金珠，桑落初尝滟玉蛆。', TO_DATE('2020-06-19 20:52:33', 'SYYYY-MM-DD HH24:MI:SS'), '1', '5', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('132', '27', '草莓小虾', '52fc8fdcd8fc1.jpg', '35', '1', '枇杷已熟粲金珠，桑落初尝滟玉蛆。', TO_DATE('2020-06-19 20:52:33', 'SYYYY-MM-DD HH24:MI:SS'), '1', '20', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('133', '27', '千层豆腐', '52fc901433aa4.jpg', '30', '1', '枇杷已熟粲金珠，桑落初尝滟玉蛆。', TO_DATE('2020-06-19 20:52:33', 'SYYYY-MM-DD HH24:MI:SS'), '1', '20', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('134', '49', '韩国泡饭', '52fc95f53ac02.jpg', '20', '1', '枇杷已熟粲金珠，桑落初尝滟玉蛆。', TO_DATE('2020-06-19 20:52:34', 'SYYYY-MM-DD HH24:MI:SS'), '1', '10', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('135', '50', '喜沙肉盖饭', '52fc964ad89de.jpg', '20', '1', '枇杷已熟粲金珠，桑落初尝滟玉蛆。', TO_DATE('2020-06-19 20:52:34', 'SYYYY-MM-DD HH24:MI:SS'), '1', '10', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('136', '55', '黄金盖饭', '52fc9682bb47d.jpg', '18', '1', '枇杷已熟粲金珠，桑落初尝滟玉蛆。', TO_DATE('2020-06-19 20:52:34', 'SYYYY-MM-DD HH24:MI:SS'), '1', '8', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('137', '57', '豆饼面条', '52fc96c751a2d.jpg', '15', '1', '枇杷已熟粲金珠，桑落初尝滟玉蛆。', TO_DATE('2020-06-19 20:52:34', 'SYYYY-MM-DD HH24:MI:SS'), '1', '5', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('138', '57', '清淡面条', '52fc96fad99fc.jpg', '13', '1', '枇杷已熟粲金珠，桑落初尝滟玉蛆。', TO_DATE('2020-06-19 20:52:34', 'SYYYY-MM-DD HH24:MI:SS'), '1', '3', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('139', '58', '海绵宝宝', '52fc972152868.jpg', '5', '1', '枇杷已熟粲金珠，桑落初尝滟玉蛆。', TO_DATE('2020-06-19 20:52:34', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('140', '59', '寿司拼盘', '52fc975e311c0.jpg', '20', '1', '枇杷已熟粲金珠，桑落初尝滟玉蛆。', TO_DATE('2020-06-19 20:52:34', 'SYYYY-MM-DD HH24:MI:SS'), '1', '10', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('141', '28', '碳烤生蚝', '52fc978d44a54.jpg', '20', '1', '枇杷已熟粲金珠，桑落初尝滟玉蛆。', TO_DATE('2020-06-19 20:52:34', 'SYYYY-MM-DD HH24:MI:SS'), '1', '10', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('142', '60', '鲜虾米线', '52fc97c9e34b7.jpg', '15', '1', '枇杷已熟粲金珠，桑落初尝滟玉蛆。', TO_DATE('2020-06-19 20:52:34', 'SYYYY-MM-DD HH24:MI:SS'), '1', '5', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('143', '19', '秘制翅扇贝', '52fc98252b588.jpg', '30', '1', '枇杷已熟粲金珠，桑落初尝滟玉蛆。', TO_DATE('2020-06-19 20:52:34', 'SYYYY-MM-DD HH24:MI:SS'), '1', '20', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('148', '14', '冰爽柠檬汁', '52fc98242b589.jpg', '6', '1', '温馨雅室正阳春，宾至如归笑语频。<br>冷气舒身身解暑，热茶润口口生津。<br>兰芽雀舌今之贵，凤饼龙团古所珍。<br>绿韵悠悠今胜古，香茗似酒醉游人。', TO_DATE('2020-06-24 15:18:19', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('147', '14', '冰镇青柠苏打水', '52fc97252b486.jpg', '4', '1', '温馨雅室正阳春，宾至如归笑语频。<br>冷气舒身身解暑，热茶润口口生津。<br>兰芽雀舌今之贵，凤饼龙团古所珍。<br>绿韵悠悠今胜古，香茗似酒醉游人。', TO_DATE('2020-06-24 15:18:16', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('82', '32', '虾皮萝卜丝汤', '52da1ae8a9375.jpg', '14', '1', '清淡的虾皮萝卜丝汤!作为最流行的夏季汤品，逐渐走入大家的心中。清淡的萝卜丝配上淡味的虾皮，将百煮的浓汤浇在汤面上，一碗清淡爽口的虾皮萝卜丝汤出锅了', TO_DATE('2020-06-19 20:52:31', 'SYYYY-MM-DD HH24:MI:SS'), '1', '4', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('83', '32', '白蛤蒸蛋', '52da147fc29fb.jpg', '15', '2', '白蛤蒸蛋　洗净的白蛤经过腌制，放入到新鲜的鸡蛋中，加上各种调味品。海鲜加鸡蛋，不仅美味而且营养价值高，对于害怕海鲜腥味的朋友也可以品尝。', TO_DATE('2020-06-19 20:52:31', 'SYYYY-MM-DD HH24:MI:SS'), '1', '5', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('84', '26', '梅子茶泡饭', '52da0feb79de3.jpg', '10', '5', '梅子茶泡饭 喜欢饭泡水的朋友，一定不能错过，汤水微有酸甜味，米饭软硬适中，是快速餐饮，解饿充饥的首选', TO_DATE('2020-06-19 20:52:31', 'SYYYY-MM-DD HH24:MI:SS'), '1', '2', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('85', '15', '水煮肉片', '52da0e14dce6a.jpg', '30', '4', '水煮肉片 使用小米辣椒，辣而不辛，肉片爽滑，轻嚼即化，不油腻，爱吃辣的朋友绝对不能错过', TO_DATE('2020-06-19 20:52:31', 'SYYYY-MM-DD HH24:MI:SS'), '1', '10', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('86', '15', '香酥小肉丸', '52fcef7a7ab06.jpg', '20', '2', '香酥小肉丸  不油腻，外层酥脆，内层肉质松软', TO_DATE('2020-06-19 20:52:31', 'SYYYY-MM-DD HH24:MI:SS'), '1', '10', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('87', '38', '蓝莓味冰激凌', '52da0a1841e10.jpg', '5', '1', '蓝莓味冰激凌  细细的沙冰上面，浇上酸甜可口的蓝莓糖浆，大大的一杯，清凉爽口，是夏季解暑的上佳单品。', TO_DATE('2020-06-19 20:52:31', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('88', '33', '酸辣白菜粉丝', '52da1b7bbfe87.jpg', '9', '1', '酸辣白菜粉丝  喜欢吃酸的朋友绝对喜欢这道菜，使用传统手法腌制的酸菜，配上爽口的粉丝，将酸爽融为一体，加上少许的辣椒后，酸中微微带辣，绝对够味', TO_DATE('2020-06-19 20:52:31', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('89', '33', '香辣牛肉面', '52da1db1dd3b6.jpg', '8', '10', '香辣牛肉面  麻辣鲜香集为一体，各种调味品加以烹饪，面质劲道，汤味鲜辣，加上爽滑牛肉，就是这个味儿。', TO_DATE('2020-06-19 20:52:31', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('90', '40', '苹果橙汁', '52fceb99d6f92.jpg', '5', '1', '新鲜的苹果和橙子，现榨现送。', TO_DATE('2020-06-19 20:52:31', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('93', '25', '酸妞面包', '52fced755d4a1.jpg', '8', '1', '酸妞面包  甜甜的面包，加上少许的酸粉，是早餐、开胃的甜点佳品', TO_DATE('2020-06-19 20:52:31', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('94', '43', '拉罐汽水', '52fc1fea98afd.jpg', '5', '1', '细雨斜风作小寒， <br>淡烟疏柳媚晴滩. <br>入淮清洛渐漫漫， <br>雪沫乳花浮午盏.<br>蓼茸蒿笋试春盘,<br>人间有味是清欢.', TO_DATE('2020-06-19 20:52:32', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('95', '32', '四物番鸭汤', '52fcee55f24eb.jpg', '10', '1', '四物番鸭汤  是美容滋补的上好单品', TO_DATE('2020-06-19 20:52:32', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('96', '40', '鲜榨草莓汁', '52fc206e27500.jpg', '6', '1', '细雨斜风作小寒， <br>淡烟疏柳媚晴滩. <br>入淮清洛渐漫漫， <br>雪沫乳花浮午盏.<br>蓼茸蒿笋试春盘,<br>人间有味是清欢.', TO_DATE('2020-06-19 20:52:32', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('97', '40', '鲜榨木瓜奶', '52fc20a9458c6.jpg', '6', '1', '细雨斜风作小寒， <br>淡烟疏柳媚晴滩. <br>入淮清洛渐漫漫， <br>雪沫乳花浮午盏.<br>蓼茸蒿笋试春盘,<br>人间有味是清欢.', TO_DATE('2020-06-19 20:52:32', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('98', '25', '冰沙餐饮', '52fc22baeccf5.jpg', '8', '1', '天然食品神，返扑又归真。绿色无污染，清醇可健身。<br>田畴千里碧，棚室四时春。淡饭粗茶饱，青蔬弥足珍。<br>形美味浓鲜果珍，健脾润肺九州闻。<br>产销两旺年超亿，绿色“香田”出国门。', TO_DATE('2020-06-19 20:52:32', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('99', '40', '五彩水果汁', '52fc27a7f3f6b.jpg', '10', '1', '濒危物种叹珍稀，繁育放流举世奇。<br>翘企明年鱼上市，佳肴佐酒欲涎垂。<br>天然食品神，返扑又归真。绿色无污染，清醇可健身。<br>田畴千里碧，棚室四时春。淡饭粗茶饱，青蔬弥足珍。', TO_DATE('2020-06-19 20:52:32', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('100', '25', '火山冰沙', '52fc233ad861d.jpg', '10', '1', '濒危物种叹珍稀，繁育放流举世奇。<br>翘企明年鱼上市，佳肴佐酒欲涎垂。<br>天然食品神，返扑又归真。绿色无污染，清醇可健身。<br>田畴千里碧，棚室四时春。淡饭粗茶饱，青蔬弥足珍。', TO_DATE('2020-06-19 20:52:32', 'SYYYY-MM-DD HH24:MI:SS'), '1', '5', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('101', '41', '蓝莓酱沙冰', '52fc23ba2900e.jpg', '20', '1', '濒危物种叹珍稀，繁育放流举世奇。<br>翘企明年鱼上市，佳肴佐酒欲涎垂。<br>天然食品神，返扑又归真。绿色无污染，清醇可健身。<br>田畴千里碧，棚室四时春。淡饭粗茶饱，青蔬弥足珍。', TO_DATE('2020-06-19 20:52:32', 'SYYYY-MM-DD HH24:MI:SS'), '1', '5', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('102', '15', '粉蒸牛肉', '52fc3b2132278.jpg', '40', '1', '此州乃竹乡，春笋满山谷。<br>山夫折盈抱，抱来早市鬻。<br>物以多为贱，双钱易一束。<br>置之炊甑中，与饭同时熟。<br>紫箨坼故锦，素肌掰新玉。<br>每日遂加餐，经时不思肉。<br>久为京洛客，此味常不足。<br>且食勿踟蹰，南风吹作竹。', TO_DATE('2020-06-19 20:52:32', 'SYYYY-MM-DD HH24:MI:SS'), '1', '20', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('103', '25', '水果魔方', '52fc24512e9c1.jpg', '10', '1', '濒危物种叹珍稀，繁育放流举世奇。<br>翘企明年鱼上市，佳肴佐酒欲涎垂。<br>天然食品神，返扑又归真。绿色无污染，清醇可健身。<br>田畴千里碧，棚室四时春。淡饭粗茶饱，青蔬弥足珍。', TO_DATE('2020-06-19 20:52:32', 'SYYYY-MM-DD HH24:MI:SS'), '1', '5', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('104', '25', '巧克力樱桃甜点', '52fc24878e2f1.jpg', '10', '1', '濒危物种叹珍稀，繁育放流举世奇。<br>翘企明年鱼上市，佳肴佐酒欲涎垂。<br>天然食品神，返扑又归真。绿色无污染，清醇可健身。<br>田畴千里碧，棚室四时春。淡饭粗茶饱，青蔬弥足珍。', TO_DATE('2020-06-19 20:52:32', 'SYYYY-MM-DD HH24:MI:SS'), '1', '5', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('105', '25', '树莓香草雪糕', '52fc24bfd5442.jpg', '8', '1', '濒危物种叹珍稀，繁育放流举世奇。<br>翘企明年鱼上市，佳肴佐酒欲涎垂。<br>天然食品神，返扑又归真。绿色无污染，清醇可健身。<br>田畴千里碧，棚室四时春。淡饭粗茶饱，青蔬弥足珍。', TO_DATE('2020-06-19 20:52:32', 'SYYYY-MM-DD HH24:MI:SS'), '1', '5', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('106', '25', '水果沙拉', '52fc24e7d52e6.jpg', '10', '1', '濒危物种叹珍稀，繁育放流举世奇。<br>翘企明年鱼上市，佳肴佐酒欲涎垂。<br>天然食品神，返扑又归真。绿色无污染，清醇可健身。<br>田畴千里碧，棚室四时春。淡饭粗茶饱，青蔬弥足珍。', TO_DATE('2020-06-19 20:52:32', 'SYYYY-MM-DD HH24:MI:SS'), '1', '5', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('107', '42', '西瓜芒果奶昔', '52fc2513180f3.jpg', '10', '1', '濒危物种叹珍稀，繁育放流举世奇。<br>翘企明年鱼上市，佳肴佐酒欲涎垂。<br>天然食品神，返扑又归真。绿色无污染，清醇可健身。<br>田畴千里碧，棚室四时春。淡饭粗茶饱，青蔬弥足珍。', TO_DATE('2020-06-19 20:52:32', 'SYYYY-MM-DD HH24:MI:SS'), '1', '5', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('108', '25', '水晶草莓', '52fc2553d94d3.jpg', '8', '1', '濒危物种叹珍稀，繁育放流举世奇。<br>翘企明年鱼上市，佳肴佐酒欲涎垂。<br>天然食品神，返扑又归真。绿色无污染，清醇可健身。<br>田畴千里碧，棚室四时春。淡饭粗茶饱，青蔬弥足珍。', TO_DATE('2020-06-19 20:52:32', 'SYYYY-MM-DD HH24:MI:SS'), '1', '5', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('109', '37', '拉花咖啡', '52fc27e146137.jpg', '10', '1', '濒危物种叹珍稀，繁育放流举世奇。<br>翘企明年鱼上市，佳肴佐酒欲涎垂。<br>天然食品神，返扑又归真。绿色无污染，清醇可健身。<br>田畴千里碧，棚室四时春。淡饭粗茶饱，青蔬弥足珍。', TO_DATE('2020-06-19 20:52:32', 'SYYYY-MM-DD HH24:MI:SS'), '1', '5', '0.88');
INSERT INTO "FOOD"."FOODS" VALUES ('110', '15', '椒香口水手撕鸡', '52fc3b7fe2e8c.jpg', '35', '1', '此州乃竹乡，春笋满山谷。<br>山夫折盈抱，抱来早市鬻。<br>物以多为贱，双钱易一束。<br>置之炊甑中，与饭同时熟。<br>紫箨坼故锦，素肌掰新玉。<br>每日遂加餐，经时不思肉。<br>久为京洛客，此味常不足。<br>且食勿踟蹰，南风吹作竹。', TO_DATE('2020-06-19 20:52:32', 'SYYYY-MM-DD HH24:MI:SS'), '1', '20', '0.88');

-- ----------------------------
-- Table structure for FORDER
-- ----------------------------
DROP TABLE "FOOD"."FORDER";
CREATE TABLE "FOOD"."FORDER" (
  "ORDERID" NUMBER(10) ,
  "CLIENTID" NUMBER(10) ,
  "CREATEDATE" DATE ,
  "STATE" NUMBER(2) ,
  "COST" NUMBER(10,2) ,
  "REMARK" VARCHAR2(255 BYTE) ,
  "SERIALNUM" VARCHAR2(256 BYTE) ,
  "COUPONID" NUMBER ,
  "VALID" NUMBER 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of FORDER
-- ----------------------------
INSERT INTO "FOOD"."FORDER" VALUES ('22', '23', TO_DATE('2020-07-08 15:27:36', 'SYYYY-MM-DD HH24:MI:SS'), '0', '12', '不打包', '1594193295643524', '0', '0');
INSERT INTO "FOOD"."FORDER" VALUES ('24', '25', TO_DATE('2020-07-08 17:18:14', 'SYYYY-MM-DD HH24:MI:SS'), '0', '98', '不打包233333', '1594199933545295', '0', '0');
INSERT INTO "FOOD"."FORDER" VALUES ('21', '1000', TO_DATE('2020-07-08 14:45:29', 'SYYYY-MM-DD HH24:MI:SS'), '0', '12', '不打包', '1594190768446494', '0', '0');
INSERT INTO "FOOD"."FORDER" VALUES ('23', '23', TO_DATE('2020-07-08 16:45:58', 'SYYYY-MM-DD HH24:MI:SS'), '0', '30', '不打包', '1594197997538881', '0', '0');
INSERT INTO "FOOD"."FORDER" VALUES ('1', '2', TO_DATE('2020-07-06 08:10:22', 'SYYYY-MM-DD HH24:MI:SS'), '0', '122.32', NULL, '1593994222506755', '0', '0');
INSERT INTO "FOOD"."FORDER" VALUES ('2', '2', TO_DATE('2020-07-06 09:56:29', 'SYYYY-MM-DD HH24:MI:SS'), '0', '132', NULL, '1594000589082742', '0', '0');
INSERT INTO "FOOD"."FORDER" VALUES ('3', '2', TO_DATE('2020-07-06 09:56:33', 'SYYYY-MM-DD HH24:MI:SS'), '0', '132', NULL, '1594000593970994', '0', '0');
INSERT INTO "FOOD"."FORDER" VALUES ('5', '2', TO_DATE('2020-07-06 10:01:31', 'SYYYY-MM-DD HH24:MI:SS'), '0', '37.84', NULL, '159400089183838', '0', '0');
INSERT INTO "FOOD"."FORDER" VALUES ('8', '2', TO_DATE('2020-07-06 10:49:11', 'SYYYY-MM-DD HH24:MI:SS'), '0', '33.44', NULL, '1594003751127924', '0', '0');
INSERT INTO "FOOD"."FORDER" VALUES ('9', '2', TO_DATE('2020-07-06 22:51:40', 'SYYYY-MM-DD HH24:MI:SS'), '0', '136.4', NULL, '159404710042572', '0', '0');
INSERT INTO "FOOD"."FORDER" VALUES ('4', '2', TO_DATE('2020-07-06 09:59:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', '132', NULL, '159400079937311', '0', '0');
INSERT INTO "FOOD"."FORDER" VALUES ('6', '2', TO_DATE('2020-07-06 10:05:21', 'SYYYY-MM-DD HH24:MI:SS'), '0', '132', NULL, '1594001121956826', '0', '0');
INSERT INTO "FOOD"."FORDER" VALUES ('7', '2', TO_DATE('2020-07-06 10:06:15', 'SYYYY-MM-DD HH24:MI:SS'), '0', '132', NULL, '1594001175869301', '0', '0');

-- ----------------------------
-- Table structure for FORDERDETAIL
-- ----------------------------
DROP TABLE "FOOD"."FORDERDETAIL";
CREATE TABLE "FOOD"."FORDERDETAIL" (
  "DETAILID" NUMBER(10) ,
  "ORDERID" NUMBER(10) ,
  "FOODID" NUMBER(10) ,
  "AMOUNT" NUMBER(10) 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of FORDERDETAIL
-- ----------------------------
INSERT INTO "FOOD"."FORDERDETAIL" VALUES ('43', '22', '147', '1');
INSERT INTO "FOOD"."FORDERDETAIL" VALUES ('44', '22', '93', '1');
INSERT INTO "FOOD"."FORDERDETAIL" VALUES ('46', '24', '148', '7');
INSERT INTO "FOOD"."FORDERDETAIL" VALUES ('47', '24', '147', '4');
INSERT INTO "FOOD"."FORDERDETAIL" VALUES ('48', '24', '93', '3');
INSERT INTO "FOOD"."FORDERDETAIL" VALUES ('49', '24', '98', '2');
INSERT INTO "FOOD"."FORDERDETAIL" VALUES ('41', '21', '147', '1');
INSERT INTO "FOOD"."FORDERDETAIL" VALUES ('42', '21', '93', '1');
INSERT INTO "FOOD"."FORDERDETAIL" VALUES ('45', '23', '148', '5');
INSERT INTO "FOOD"."FORDERDETAIL" VALUES ('1', '1', '88', '1');
INSERT INTO "FOOD"."FORDERDETAIL" VALUES ('2', '1', '82', '2');
INSERT INTO "FOOD"."FORDERDETAIL" VALUES ('3', '1', '84', '1');
INSERT INTO "FOOD"."FORDERDETAIL" VALUES ('4', '1', '85', '2');
INSERT INTO "FOOD"."FORDERDETAIL" VALUES ('5', '1', '89', '4');
INSERT INTO "FOOD"."FORDERDETAIL" VALUES ('12', '5', '0', '1');
INSERT INTO "FOOD"."FORDERDETAIL" VALUES ('13', '5', '0', '2');
INSERT INTO "FOOD"."FORDERDETAIL" VALUES ('14', '5', '0', '1');
INSERT INTO "FOOD"."FORDERDETAIL" VALUES ('27', '8', '82', '2');
INSERT INTO "FOOD"."FORDERDETAIL" VALUES ('28', '8', '87', '2');
INSERT INTO "FOOD"."FORDERDETAIL" VALUES ('29', '9', '87', '2');
INSERT INTO "FOOD"."FORDERDETAIL" VALUES ('30', '9', '82', '2');
INSERT INTO "FOOD"."FORDERDETAIL" VALUES ('31', '9', '84', '1');
INSERT INTO "FOOD"."FORDERDETAIL" VALUES ('32', '9', '85', '2');
INSERT INTO "FOOD"."FORDERDETAIL" VALUES ('33', '9', '89', '4');
INSERT INTO "FOOD"."FORDERDETAIL" VALUES ('34', '9', '83', '1');
INSERT INTO "FOOD"."FORDERDETAIL" VALUES ('6', '4', '0', '1');
INSERT INTO "FOOD"."FORDERDETAIL" VALUES ('7', '4', '0', '2');
INSERT INTO "FOOD"."FORDERDETAIL" VALUES ('8', '4', '0', '1');
INSERT INTO "FOOD"."FORDERDETAIL" VALUES ('9', '4', '0', '2');
INSERT INTO "FOOD"."FORDERDETAIL" VALUES ('10', '4', '0', '4');
INSERT INTO "FOOD"."FORDERDETAIL" VALUES ('11', '4', '0', '1');
INSERT INTO "FOOD"."FORDERDETAIL" VALUES ('15', '6', '0', '1');
INSERT INTO "FOOD"."FORDERDETAIL" VALUES ('16', '6', '0', '2');
INSERT INTO "FOOD"."FORDERDETAIL" VALUES ('17', '6', '0', '1');
INSERT INTO "FOOD"."FORDERDETAIL" VALUES ('18', '6', '0', '2');
INSERT INTO "FOOD"."FORDERDETAIL" VALUES ('19', '6', '0', '4');
INSERT INTO "FOOD"."FORDERDETAIL" VALUES ('20', '6', '0', '1');
INSERT INTO "FOOD"."FORDERDETAIL" VALUES ('23', '7', '84', '1');
INSERT INTO "FOOD"."FORDERDETAIL" VALUES ('24', '7', '85', '2');
INSERT INTO "FOOD"."FORDERDETAIL" VALUES ('25', '7', '89', '4');
INSERT INTO "FOOD"."FORDERDETAIL" VALUES ('26', '7', '83', '1');
INSERT INTO "FOOD"."FORDERDETAIL" VALUES ('21', '7', '87', '1');
INSERT INTO "FOOD"."FORDERDETAIL" VALUES ('22', '7', '82', '2');

-- ----------------------------
-- Table structure for FULLREDUCTINFO
-- ----------------------------
DROP TABLE "FOOD"."FULLREDUCTINFO";
CREATE TABLE "FOOD"."FULLREDUCTINFO" (
  "FRINFOID" NUMBER NOT NULL ,
  "FRNAME" VARCHAR2(255 BYTE) NOT NULL ,
  "FRDESC" VARCHAR2(500 BYTE) ,
  "FRSHARE" NUMBER ,
  "FRSTATUS" NUMBER NOT NULL ,
  "FRBEGTIME" DATE NOT NULL ,
  "FRENDTIME" DATE NOT NULL 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of FULLREDUCTINFO
-- ----------------------------
INSERT INTO "FOOD"."FULLREDUCTINFO" VALUES ('1', '满28元减5元,满30元减10元,满50元减20元', '满减优惠多多', '0', '1', TO_DATE('2020-06-28 14:09:35', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-08-17 14:09:35', 'SYYYY-MM-DD HH24:MI:SS'));

-- ----------------------------
-- Table structure for MEMBER
-- ----------------------------
DROP TABLE "FOOD"."MEMBER";
CREATE TABLE "FOOD"."MEMBER" (
  "CLIENTID" NUMBER NOT NULL ,
  "IDENTITYID" VARCHAR2(40 BYTE) ,
  "REALNAME" VARCHAR2(255 BYTE) ,
  "CERTIFICATIONDATE" DATE ,
  "ACCUMULATESCORES" NUMBER 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of MEMBER
-- ----------------------------
INSERT INTO "FOOD"."MEMBER" VALUES ('25', '12312312', '12312312', TO_DATE('2020-07-08 17:17:33', 'SYYYY-MM-DD HH24:MI:SS'), '0');
INSERT INTO "FOOD"."MEMBER" VALUES ('4', '371202111166666666', '李四', TO_DATE('2020-07-08 13:32:29', 'SYYYY-MM-DD HH24:MI:SS'), '300');
INSERT INTO "FOOD"."MEMBER" VALUES ('1', '371561199911111111', 'Jack Ma', TO_DATE('2020-07-03 19:49:17', 'SYYYY-MM-DD HH24:MI:SS'), '50');
INSERT INTO "FOOD"."MEMBER" VALUES ('2', '371202111155555555', '张会员', TO_DATE('2020-07-03 08:16:50', 'SYYYY-MM-DD HH24:MI:SS'), '300');

-- ----------------------------
-- Table structure for MEMBERDETAIL
-- ----------------------------
DROP TABLE "FOOD"."MEMBERDETAIL";
CREATE TABLE "FOOD"."MEMBERDETAIL" (
  "CLIENTID" NUMBER ,
  "UPDATEAMOUNT" NUMBER ,
  "DESCRIPTION" VARCHAR2(255 BYTE) ,
  "UPDATETIME" DATE 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of MEMBERDETAIL
-- ----------------------------
INSERT INTO "FOOD"."MEMBERDETAIL" VALUES ('4', '-5', '兑换5元无门槛红包，消耗5积分', TO_DATE('2020-07-08 15:39:36', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "FOOD"."MEMBERDETAIL" VALUES ('3', '-20', '兑换20元无门槛红包', TO_DATE('2020-06-25 19:20:19', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "FOOD"."MEMBERDETAIL" VALUES ('3', '-20', '兑换20元无门槛红包', TO_DATE('2020-06-25 19:20:19', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "FOOD"."MEMBERDETAIL" VALUES ('3', '-20', '兑换20元无门槛红包', TO_DATE('2020-06-25 19:20:19', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "FOOD"."MEMBERDETAIL" VALUES ('2', '20', '订单支付满200元赠送20积分', TO_DATE('2020-06-25 19:20:19', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "FOOD"."MEMBERDETAIL" VALUES ('2', '20', '订单支付满200元赠送20积分', TO_DATE('2020-06-25 19:20:19', 'SYYYY-MM-DD HH24:MI:SS'));

-- ----------------------------
-- Table structure for PRIVILEGESET
-- ----------------------------
DROP TABLE "FOOD"."PRIVILEGESET";
CREATE TABLE "FOOD"."PRIVILEGESET" (
  "PID" NUMBER ,
  "PNAME" VARCHAR2(256 BYTE) ,
  "VALID" NUMBER 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of PRIVILEGESET
-- ----------------------------
INSERT INTO "FOOD"."PRIVILEGESET" VALUES ('10', '订单管理', '1');
INSERT INTO "FOOD"."PRIVILEGESET" VALUES ('11', 'IP管理', '1');
INSERT INTO "FOOD"."PRIVILEGESET" VALUES ('12', '客户管理', '1');
INSERT INTO "FOOD"."PRIVILEGESET" VALUES ('21', '红包优惠券管理', '1');
INSERT INTO "FOOD"."PRIVILEGESET" VALUES ('2', '美食管理', '1');
INSERT INTO "FOOD"."PRIVILEGESET" VALUES ('3', '美食类别管理', '1');
INSERT INTO "FOOD"."PRIVILEGESET" VALUES ('4', '角色管理', '1');
INSERT INTO "FOOD"."PRIVILEGESET" VALUES ('5', '权限管理', '1');
INSERT INTO "FOOD"."PRIVILEGESET" VALUES ('6', '限时活动', '1');
INSERT INTO "FOOD"."PRIVILEGESET" VALUES ('7', '优惠管理', '1');
INSERT INTO "FOOD"."PRIVILEGESET" VALUES ('8', '流量统计', '1');
INSERT INTO "FOOD"."PRIVILEGESET" VALUES ('9', '财务报表', '1');

-- ----------------------------
-- Table structure for REDPACKET
-- ----------------------------
DROP TABLE "FOOD"."REDPACKET";
CREATE TABLE "FOOD"."REDPACKET" (
  "RPID" NUMBER NOT NULL ,
  "RPMONEY" NUMBER ,
  "NEEDSCORE" NUMBER ,
  "RPBEGTIME" DATE ,
  "RPENDTIME" DATE ,
  "STATUS" NUMBER 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of REDPACKET
-- ----------------------------
INSERT INTO "FOOD"."REDPACKET" VALUES ('1', '1', '1', TO_DATE('2020-07-05 19:20:50', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-03 19:20:50', 'SYYYY-MM-DD HH24:MI:SS'), '1');
INSERT INTO "FOOD"."REDPACKET" VALUES ('2', '5', '5', TO_DATE('2020-07-05 19:20:50', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-03 19:20:50', 'SYYYY-MM-DD HH24:MI:SS'), '1');
INSERT INTO "FOOD"."REDPACKET" VALUES ('3', '10', '10', TO_DATE('2020-07-05 19:20:50', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-03 19:20:50', 'SYYYY-MM-DD HH24:MI:SS'), '1');
INSERT INTO "FOOD"."REDPACKET" VALUES ('4', '15', '15', TO_DATE('2020-07-05 19:20:50', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-03 19:20:50', 'SYYYY-MM-DD HH24:MI:SS'), '1');
INSERT INTO "FOOD"."REDPACKET" VALUES ('5', '20', '20', TO_DATE('2020-07-05 19:20:50', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-03 19:20:50', 'SYYYY-MM-DD HH24:MI:SS'), '1');
INSERT INTO "FOOD"."REDPACKET" VALUES ('6', '30', '30', TO_DATE('2020-07-05 19:20:50', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-03 19:20:50', 'SYYYY-MM-DD HH24:MI:SS'), '1');
INSERT INTO "FOOD"."REDPACKET" VALUES ('7', '50', '50', TO_DATE('2020-07-05 19:20:50', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-03 19:20:50', 'SYYYY-MM-DD HH24:MI:SS'), '1');
INSERT INTO "FOOD"."REDPACKET" VALUES ('8', '100', '100', TO_DATE('2020-07-05 19:20:50', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-03 19:20:50', 'SYYYY-MM-DD HH24:MI:SS'), '1');

-- ----------------------------
-- Table structure for REDPACKET_RECEIVE
-- ----------------------------
DROP TABLE "FOOD"."REDPACKET_RECEIVE";
CREATE TABLE "FOOD"."REDPACKET_RECEIVE" (
  "ID" NUMBER NOT NULL ,
  "CLIENTID" NUMBER ,
  "RPID" NUMBER ,
  "CREATETIME" DATE ,
  "STATUS" NUMBER 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of REDPACKET_RECEIVE
-- ----------------------------
INSERT INTO "FOOD"."REDPACKET_RECEIVE" VALUES ('13', '4', '2', TO_DATE('2020-07-08 15:39:35', 'SYYYY-MM-DD HH24:MI:SS'), '0');
INSERT INTO "FOOD"."REDPACKET_RECEIVE" VALUES ('1', '2', '2', TO_DATE('2020-07-05 19:21:54', 'SYYYY-MM-DD HH24:MI:SS'), '0');
INSERT INTO "FOOD"."REDPACKET_RECEIVE" VALUES ('2', '1', '1', TO_DATE('2020-07-05 19:21:54', 'SYYYY-MM-DD HH24:MI:SS'), '1');
INSERT INTO "FOOD"."REDPACKET_RECEIVE" VALUES ('3', '1', '3', TO_DATE('2020-07-15 19:21:54', 'SYYYY-MM-DD HH24:MI:SS'), '-1');
INSERT INTO "FOOD"."REDPACKET_RECEIVE" VALUES ('4', '2', '4', TO_DATE('2020-06-15 19:21:54', 'SYYYY-MM-DD HH24:MI:SS'), '0');
INSERT INTO "FOOD"."REDPACKET_RECEIVE" VALUES ('5', '1', '6', TO_DATE('2020-07-15 19:21:54', 'SYYYY-MM-DD HH24:MI:SS'), '1');
INSERT INTO "FOOD"."REDPACKET_RECEIVE" VALUES ('6', '2', '7', TO_DATE('2020-06-25 19:21:54', 'SYYYY-MM-DD HH24:MI:SS'), '-1');
INSERT INTO "FOOD"."REDPACKET_RECEIVE" VALUES ('7', '2', '2', TO_DATE('2020-07-05 19:21:54', 'SYYYY-MM-DD HH24:MI:SS'), '0');
INSERT INTO "FOOD"."REDPACKET_RECEIVE" VALUES ('8', '1', '1', TO_DATE('2020-07-05 19:21:54', 'SYYYY-MM-DD HH24:MI:SS'), '1');
INSERT INTO "FOOD"."REDPACKET_RECEIVE" VALUES ('9', '1', '3', TO_DATE('2020-07-15 19:21:55', 'SYYYY-MM-DD HH24:MI:SS'), '-1');
INSERT INTO "FOOD"."REDPACKET_RECEIVE" VALUES ('10', '2', '4', TO_DATE('2020-06-15 19:21:55', 'SYYYY-MM-DD HH24:MI:SS'), '0');
INSERT INTO "FOOD"."REDPACKET_RECEIVE" VALUES ('11', '1', '6', TO_DATE('2020-07-15 19:21:55', 'SYYYY-MM-DD HH24:MI:SS'), '1');
INSERT INTO "FOOD"."REDPACKET_RECEIVE" VALUES ('12', '2', '7', TO_DATE('2020-06-25 19:21:55', 'SYYYY-MM-DD HH24:MI:SS'), '-1');

-- ----------------------------
-- Table structure for REWORD
-- ----------------------------
DROP TABLE "FOOD"."REWORD";
CREATE TABLE "FOOD"."REWORD" (
  "REWORDID" NUMBER(10) ,
  "FORDERID" NUMBER(10) ,
  "CUSTOMERID" NUMBER(10) ,
  "CREATETIME" VARCHAR2(255 BYTE) ,
  "FCONTENT" VARCHAR2(255 BYTE) ,
  "PIC" VARCHAR2(255 BYTE) 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of REWORD
-- ----------------------------
INSERT INTO "FOOD"."REWORD" VALUES ('5', '0', '0', '2020-6.15-8:00', 'w(？Д？)w好吃不呀', NULL);
INSERT INTO "FOOD"."REWORD" VALUES ('7', '1', '0', '2020-6.15-8:00', 'hiahiahia', NULL);
INSERT INTO "FOOD"."REWORD" VALUES ('1', '1', '1', '2020-6.15-8:00', '好吃奥', NULL);
INSERT INTO "FOOD"."REWORD" VALUES ('2', '1', '2', '2020-6.15-8:00', '好吃奥', NULL);
INSERT INTO "FOOD"."REWORD" VALUES ('1', '1', '0', '2020-6.15-8:00', '好吃奥', NULL);
INSERT INTO "FOOD"."REWORD" VALUES ('2', '1', '0', '2020-6.15-8:00', '好吃奥', NULL);

-- ----------------------------
-- Table structure for ROLES
-- ----------------------------
DROP TABLE "FOOD"."ROLES";
CREATE TABLE "FOOD"."ROLES" (
  "RID" NUMBER ,
  "RNAME" VARCHAR2(256 BYTE) ,
  "RDESCRIPTION" VARCHAR2(256 BYTE) ,
  "VALID" NUMBER 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of ROLES
-- ----------------------------
INSERT INTO "FOOD"."ROLES" VALUES ('2', '美食管理员', NULL, '1');
INSERT INTO "FOOD"."ROLES" VALUES ('3', '活动运维员', NULL, '1');
INSERT INTO "FOOD"."ROLES" VALUES ('4', '网络安全工程师', NULL, '1');
INSERT INTO "FOOD"."ROLES" VALUES ('5', '销售员', NULL, '1');
INSERT INTO "FOOD"."ROLES" VALUES ('6', '数据统计师', NULL, '1');
INSERT INTO "FOOD"."ROLES" VALUES ('7', '超级管理员', NULL, '1');

-- ----------------------------
-- Table structure for ROLE_DETAILS
-- ----------------------------
DROP TABLE "FOOD"."ROLE_DETAILS";
CREATE TABLE "FOOD"."ROLE_DETAILS" (
  "RDID" NUMBER ,
  "ROLEID" NUMBER ,
  "PRIVILEGEID" NUMBER ,
  "VALID" NUMBER 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of ROLE_DETAILS
-- ----------------------------
INSERT INTO "FOOD"."ROLE_DETAILS" VALUES ('10', '3', '6', '1');
INSERT INTO "FOOD"."ROLE_DETAILS" VALUES ('11', '3', '7', '1');
INSERT INTO "FOOD"."ROLE_DETAILS" VALUES ('12', '6', '8', '1');
INSERT INTO "FOOD"."ROLE_DETAILS" VALUES ('13', '6', '9', '1');
INSERT INTO "FOOD"."ROLE_DETAILS" VALUES ('14', '5', '10', '1');
INSERT INTO "FOOD"."ROLE_DETAILS" VALUES ('15', '4', '11', '1');
INSERT INTO "FOOD"."ROLE_DETAILS" VALUES ('16', '4', '12', '1');
INSERT INTO "FOOD"."ROLE_DETAILS" VALUES ('21', '3', '21', '1');
INSERT INTO "FOOD"."ROLE_DETAILS" VALUES ('2', '2', '2', '1');
INSERT INTO "FOOD"."ROLE_DETAILS" VALUES ('3', '2', '3', '1');
INSERT INTO "FOOD"."ROLE_DETAILS" VALUES ('4', '7', '4', '1');
INSERT INTO "FOOD"."ROLE_DETAILS" VALUES ('5', '7', '5', '1');
INSERT INTO "FOOD"."ROLE_DETAILS" VALUES ('6', '7', '6', '1');
INSERT INTO "FOOD"."ROLE_DETAILS" VALUES ('7', '7', '7', '1');
INSERT INTO "FOOD"."ROLE_DETAILS" VALUES ('8', '7', '8', '1');
INSERT INTO "FOOD"."ROLE_DETAILS" VALUES ('9', '7', '9', '1');

-- ----------------------------
-- Table structure for SECOND_TYPE
-- ----------------------------
DROP TABLE "FOOD"."SECOND_TYPE";
CREATE TABLE "FOOD"."SECOND_TYPE" (
  "STID" NUMBER NOT NULL ,
  "STNAME" VARCHAR2(250 BYTE) NOT NULL ,
  "FTID" NUMBER NOT NULL ,
  "STUSED" NUMBER DEFAULT 1
 ,
  "ISEDITED" NUMBER DEFAULT 0
 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of SECOND_TYPE
-- ----------------------------
INSERT INTO "FOOD"."SECOND_TYPE" VALUES ('19', '湘菜', '9', '1', '0');
INSERT INTO "FOOD"."SECOND_TYPE" VALUES ('23', '东北风味', '9', '1', '0');
INSERT INTO "FOOD"."SECOND_TYPE" VALUES ('22', '京菜', '9', '1', '0');
INSERT INTO "FOOD"."SECOND_TYPE" VALUES ('21', '浙菜', '9', '1', '0');
INSERT INTO "FOOD"."SECOND_TYPE" VALUES ('15', '川菜', '9', '1', '0');
INSERT INTO "FOOD"."SECOND_TYPE" VALUES ('14', '冰饮', '13', '1', '0');
INSERT INTO "FOOD"."SECOND_TYPE" VALUES ('25', '甜品', '13', '1', '0');
INSERT INTO "FOOD"."SECOND_TYPE" VALUES ('26', '中式盖饭', '10', '1', '0');
INSERT INTO "FOOD"."SECOND_TYPE" VALUES ('27', '家常菜', '9', '1', '0');
INSERT INTO "FOOD"."SECOND_TYPE" VALUES ('28', '日本锄烧火锅', '12', '1', '0');
INSERT INTO "FOOD"."SECOND_TYPE" VALUES ('29', '四川火锅', '12', '1', '0');
INSERT INTO "FOOD"."SECOND_TYPE" VALUES ('30', '重庆火锅', '12', '1', '0');
INSERT INTO "FOOD"."SECOND_TYPE" VALUES ('31', '养生', '11', '1', '0');
INSERT INTO "FOOD"."SECOND_TYPE" VALUES ('32', '滋补', '11', '1', '0');
INSERT INTO "FOOD"."SECOND_TYPE" VALUES ('33', '米粉', '14', '1', '0');
INSERT INTO "FOOD"."SECOND_TYPE" VALUES ('38', '冰淇淋', '13', '1', '0');
INSERT INTO "FOOD"."SECOND_TYPE" VALUES ('37', '咖啡', '13', '1', '0');
INSERT INTO "FOOD"."SECOND_TYPE" VALUES ('39', '啤酒', '13', '1', '0');
INSERT INTO "FOOD"."SECOND_TYPE" VALUES ('40', '果汁', '13', '1', '0');
INSERT INTO "FOOD"."SECOND_TYPE" VALUES ('41', '冰沙', '13', '1', '0');
INSERT INTO "FOOD"."SECOND_TYPE" VALUES ('42', '奶昔', '13', '1', '0');
INSERT INTO "FOOD"."SECOND_TYPE" VALUES ('43', '汽水', '13', '1', '0');
INSERT INTO "FOOD"."SECOND_TYPE" VALUES ('44', '韩国火锅', '12', '1', '0');
INSERT INTO "FOOD"."SECOND_TYPE" VALUES ('45', '特质砂锅', '12', '1', '0');
INSERT INTO "FOOD"."SECOND_TYPE" VALUES ('46', '经典火锅', '12', '1', '0');
INSERT INTO "FOOD"."SECOND_TYPE" VALUES ('47', '创新火锅', '12', '1', '0');
INSERT INTO "FOOD"."SECOND_TYPE" VALUES ('48', '日式盖饭', '10', '1', '0');
INSERT INTO "FOOD"."SECOND_TYPE" VALUES ('49', '韩国泡饭', '10', '1', '0');
INSERT INTO "FOOD"."SECOND_TYPE" VALUES ('50', '家常盖饭', '10', '1', '0');
INSERT INTO "FOOD"."SECOND_TYPE" VALUES ('55', '经典盖饭', '10', '1', '0');
INSERT INTO "FOOD"."SECOND_TYPE" VALUES ('52', '安神', '11', '1', '0');
INSERT INTO "FOOD"."SECOND_TYPE" VALUES ('53', '保健', '11', '1', '0');
INSERT INTO "FOOD"."SECOND_TYPE" VALUES ('56', '聚气', '11', '1', '0');
INSERT INTO "FOOD"."SECOND_TYPE" VALUES ('57', '面条', '14', '1', '0');
INSERT INTO "FOOD"."SECOND_TYPE" VALUES ('58', '蛋糕', '14', '1', '0');
INSERT INTO "FOOD"."SECOND_TYPE" VALUES ('59', '馒头', '14', '1', '0');
INSERT INTO "FOOD"."SECOND_TYPE" VALUES ('60', '过桥米线', '14', '1', '0');

-- ----------------------------
-- Table structure for USERADDRESS
-- ----------------------------
DROP TABLE "FOOD"."USERADDRESS";
CREATE TABLE "FOOD"."USERADDRESS" (
  "ADDRESSID" NUMBER NOT NULL ,
  "USERID" NUMBER ,
  "USERNAME" VARCHAR2(255 BYTE) ,
  "PHONE" VARCHAR2(255 BYTE) ,
  "PROVINCE" VARCHAR2(255 BYTE) ,
  "CITY" VARCHAR2(255 BYTE) ,
  "DISTRICT" VARCHAR2(255 BYTE) ,
  "ADDRESS" VARCHAR2(255 BYTE) ,
  "POSTAL" VARCHAR2(255 BYTE) 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Sequence structure for COUNPONID
-- ----------------------------
DROP SEQUENCE "FOOD"."COUNPONID";
CREATE SEQUENCE "FOOD"."COUNPONID" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for EVENTID_SEQ
-- ----------------------------
DROP SEQUENCE "FOOD"."EVENTID_SEQ";
CREATE SEQUENCE "FOOD"."EVENTID_SEQ" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for OF_USERADDRESS_USERID_SEQ
-- ----------------------------
DROP SEQUENCE "FOOD"."OF_USERADDRESS_USERID_SEQ";
CREATE SEQUENCE "FOOD"."OF_USERADDRESS_USERID_SEQ" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for SEQ_ADMINS_ID
-- ----------------------------
DROP SEQUENCE "FOOD"."SEQ_ADMINS_ID";
CREATE SEQUENCE "FOOD"."SEQ_ADMINS_ID" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for SEQ_ADMIN_PRIVILEGES_ID
-- ----------------------------
DROP SEQUENCE "FOOD"."SEQ_ADMIN_PRIVILEGES_ID";
CREATE SEQUENCE "FOOD"."SEQ_ADMIN_PRIVILEGES_ID" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for SEQ_CLIENT_ID
-- ----------------------------
DROP SEQUENCE "FOOD"."SEQ_CLIENT_ID";
CREATE SEQUENCE "FOOD"."SEQ_CLIENT_ID" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for SEQ_DEPARTMENT_ID
-- ----------------------------
DROP SEQUENCE "FOOD"."SEQ_DEPARTMENT_ID";
CREATE SEQUENCE "FOOD"."SEQ_DEPARTMENT_ID" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for SEQ_ORDERDETAILS_ID
-- ----------------------------
DROP SEQUENCE "FOOD"."SEQ_ORDERDETAILS_ID";
CREATE SEQUENCE "FOOD"."SEQ_ORDERDETAILS_ID" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for SEQ_ORDER_ID
-- ----------------------------
DROP SEQUENCE "FOOD"."SEQ_ORDER_ID";
CREATE SEQUENCE "FOOD"."SEQ_ORDER_ID" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for SEQ_PRIVILEGES_ID
-- ----------------------------
DROP SEQUENCE "FOOD"."SEQ_PRIVILEGES_ID";
CREATE SEQUENCE "FOOD"."SEQ_PRIVILEGES_ID" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for SEQ_ROLES_ID
-- ----------------------------
DROP SEQUENCE "FOOD"."SEQ_ROLES_ID";
CREATE SEQUENCE "FOOD"."SEQ_ROLES_ID" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for SEQ_ROLE_DETAILS_ID
-- ----------------------------
DROP SEQUENCE "FOOD"."SEQ_ROLE_DETAILS_ID";
CREATE SEQUENCE "FOOD"."SEQ_ROLE_DETAILS_ID" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Primary Key structure for table CART
-- ----------------------------
ALTER TABLE "FOOD"."CART" ADD CONSTRAINT "SYS_C0011095" PRIMARY KEY ("FID");

-- ----------------------------
-- Checks structure for table CART
-- ----------------------------
ALTER TABLE "FOOD"."CART" ADD CONSTRAINT "SYS_C0011087" CHECK ("TID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "FOOD"."CART" ADD CONSTRAINT "SYS_C0011088" CHECK ("FDESC" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "FOOD"."CART" ADD CONSTRAINT "SYS_C0011089" CHECK ("FNAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "FOOD"."CART" ADD CONSTRAINT "SYS_C0011090" CHECK ("FPIC" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "FOOD"."CART" ADD CONSTRAINT "SYS_C0011091" CHECK ("FPRICE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "FOOD"."CART" ADD CONSTRAINT "SYS_C0011092" CHECK ("FDISCOUNT" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "FOOD"."CART" ADD CONSTRAINT "SYS_C0011093" CHECK ("FNUM" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "FOOD"."CART" ADD CONSTRAINT "SYS_C0011094" CHECK ("FCOST" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table CLIENT
-- ----------------------------
ALTER TABLE "FOOD"."CLIENT" ADD CONSTRAINT "SYS_C0011096" PRIMARY KEY ("CLIENTID");

-- ----------------------------
-- Primary Key structure for table COUPON
-- ----------------------------
ALTER TABLE "FOOD"."COUPON" ADD CONSTRAINT "SYS_C0011097" PRIMARY KEY ("COUPONID");

-- ----------------------------
-- Primary Key structure for table COUPON_RECEIVE
-- ----------------------------
ALTER TABLE "FOOD"."COUPON_RECEIVE" ADD CONSTRAINT "SYS_C0011098" PRIMARY KEY ("CRID");

-- ----------------------------
-- Primary Key structure for table EVENT
-- ----------------------------
ALTER TABLE "FOOD"."EVENT" ADD CONSTRAINT "SYS_C0011105" PRIMARY KEY ("EVENTID");

-- ----------------------------
-- Checks structure for table EVENT
-- ----------------------------
ALTER TABLE "FOOD"."EVENT" ADD CONSTRAINT "SYS_C0011099" CHECK ("ENAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "FOOD"."EVENT" ADD CONSTRAINT "SYS_C0011100" CHECK ("EPIC" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "FOOD"."EVENT" ADD CONSTRAINT "SYS_C0011101" CHECK ("EDETAILPIC" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "FOOD"."EVENT" ADD CONSTRAINT "SYS_C0011102" CHECK ("ESTATUS" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "FOOD"."EVENT" ADD CONSTRAINT "SYS_C0011103" CHECK ("EVENTBEGTIME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "FOOD"."EVENT" ADD CONSTRAINT "SYS_C0011104" CHECK ("EVENTENDTIME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table FIRST_TYPE
-- ----------------------------
ALTER TABLE "FOOD"."FIRST_TYPE" ADD CONSTRAINT "SYS_C0011107" PRIMARY KEY ("FTID");

-- ----------------------------
-- Checks structure for table FIRST_TYPE
-- ----------------------------
ALTER TABLE "FOOD"."FIRST_TYPE" ADD CONSTRAINT "SYS_C0011106" CHECK ("FTNAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table FOODS
-- ----------------------------
ALTER TABLE "FOOD"."FOODS" ADD CONSTRAINT "SYS_C0011113" PRIMARY KEY ("FID");

-- ----------------------------
-- Checks structure for table FOODS
-- ----------------------------
ALTER TABLE "FOOD"."FOODS" ADD CONSTRAINT "SYS_C0011108" CHECK ("FNAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "FOOD"."FOODS" ADD CONSTRAINT "SYS_C0011109" CHECK ("FPIC" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "FOOD"."FOODS" ADD CONSTRAINT "SYS_C0011110" CHECK ("FPRICE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "FOOD"."FOODS" ADD CONSTRAINT "SYS_C0011111" CHECK ("FDESC" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "FOOD"."FOODS" ADD CONSTRAINT "SYS_C0011112" CHECK ("FREGTIME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table FULLREDUCTINFO
-- ----------------------------
ALTER TABLE "FOOD"."FULLREDUCTINFO" ADD CONSTRAINT "SYS_C0011118" PRIMARY KEY ("FRINFOID");

-- ----------------------------
-- Checks structure for table FULLREDUCTINFO
-- ----------------------------
ALTER TABLE "FOOD"."FULLREDUCTINFO" ADD CONSTRAINT "SYS_C0011114" CHECK ("FRNAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "FOOD"."FULLREDUCTINFO" ADD CONSTRAINT "SYS_C0011115" CHECK ("FRSTATUS" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "FOOD"."FULLREDUCTINFO" ADD CONSTRAINT "SYS_C0011116" CHECK ("FRBEGTIME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "FOOD"."FULLREDUCTINFO" ADD CONSTRAINT "SYS_C0011117" CHECK ("FRENDTIME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table MEMBER
-- ----------------------------
ALTER TABLE "FOOD"."MEMBER" ADD CONSTRAINT "SYS_C0011119" PRIMARY KEY ("CLIENTID");

-- ----------------------------
-- Primary Key structure for table REDPACKET
-- ----------------------------
ALTER TABLE "FOOD"."REDPACKET" ADD CONSTRAINT "SYS_C0011120" PRIMARY KEY ("RPID");

-- ----------------------------
-- Primary Key structure for table REDPACKET_RECEIVE
-- ----------------------------
ALTER TABLE "FOOD"."REDPACKET_RECEIVE" ADD CONSTRAINT "SYS_C0011121" PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table SECOND_TYPE
-- ----------------------------
ALTER TABLE "FOOD"."SECOND_TYPE" ADD CONSTRAINT "SYS_C0011124" PRIMARY KEY ("STID");

-- ----------------------------
-- Checks structure for table SECOND_TYPE
-- ----------------------------
ALTER TABLE "FOOD"."SECOND_TYPE" ADD CONSTRAINT "SYS_C0011122" CHECK ("STNAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "FOOD"."SECOND_TYPE" ADD CONSTRAINT "SYS_C0011123" CHECK ("FTID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table USERADDRESS
-- ----------------------------
ALTER TABLE "FOOD"."USERADDRESS" ADD CONSTRAINT "SYS_C0011125" PRIMARY KEY ("ADDRESSID");
