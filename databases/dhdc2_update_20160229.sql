/*
Navicat MySQL Data Transfer

Source Server         : localhost3309
Source Server Version : 50542
Source Host           : localhost:3309
Source Database       : dhdc2_update

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2016-02-29 17:45:35
*/
SET NAMES 'utf8' COLLATE 'utf8_general_ci';
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cbyear
-- ----------------------------
DROP TABLE IF EXISTS `cbyear`;
CREATE TABLE `cbyear` (
  `BYEAR` varchar(255) NOT NULL,
  `DATE1` date NOT NULL,
  `DATE2` date NOT NULL,
  `NOTE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`BYEAR`,`DATE1`,`DATE2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cbyear
-- ----------------------------
INSERT INTO `cbyear` VALUES ('2558', '2014-10-01', '2015-09-30', '\'2014-10-01\' AND \'2015-09-30\'');
INSERT INTO `cbyear` VALUES ('2559', '2015-10-01', '2016-09-30', '\'2015-10-01\' AND \'2016-09-30\'');
INSERT INTO `cbyear` VALUES ('2560', '2016-10-01', '2017-09-30', '\'2016-10-01\' AND \'2017-09-30\'');

-- ----------------------------
-- Table structure for cppspecial
-- ----------------------------
DROP TABLE IF EXISTS `cppspecial`;
CREATE TABLE `cppspecial` (
  `itmcode` varchar(6) NOT NULL,
  `itmname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`itmcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cppspecial
-- ----------------------------
INSERT INTO `cppspecial` VALUES ('1B003', 'การคัดกรองความเสี่ยง/โรคมะเร็งเต้านม');
INSERT INTO `cppspecial` VALUES ('1B0030', 'ตรวจคัดกรองได้ผลปกติ ผู้รับบริการเคยตรวจด้วยตนเองได้ผลปกติ');
INSERT INTO `cppspecial` VALUES ('1B0031', 'ตรวจคัดกรองได้ผลปกติ ผู้รับบริการเคยตรวจด้วยตนเองได้ผลผิดปกติ');
INSERT INTO `cppspecial` VALUES ('1B0032', 'ตรวจคัดกรองได้ผลปกติ ผู้รับบริการไม่เคยตรวจด้วยตนเอง');
INSERT INTO `cppspecial` VALUES ('1B0033', 'ตรวจคัดกรองได้ผลปกติ ไม่ระบุว่าผู้รับบริการเคยตรวจด้วยตนเองหรือไม่');
INSERT INTO `cppspecial` VALUES ('1B0034', 'ตรวจคัดกรองได้ผลผิดปกติ ผู้รับบริการเคยตรวจด้วยตนเองได้ผลปกติ');
INSERT INTO `cppspecial` VALUES ('1B0035', 'ตรวจคัดกรองได้ผลผิดปกติ ผู้รับบริการเคยตรวจด้วยตนเองได้ผลผิดปกติ');
INSERT INTO `cppspecial` VALUES ('1B0036', 'ตรวจคัดกรองได้ผลผิดปกติ ผู้รับบริการไม่เคยตรวจด้วยตนเอง');
INSERT INTO `cppspecial` VALUES ('1B0037', 'ตรวจคัดกรองได้ผลผิดปกติ ไม่ระบุว่าผู้รับบริการเคยตรวจด้วยตนเองหรือไม่');
INSERT INTO `cppspecial` VALUES ('1B0039', 'ตรวจคัดกรองมะเร็งเต้านม ไม่ระบุรายละเอียด');
INSERT INTO `cppspecial` VALUES ('1B004 ', 'การคัดกรองความเสี่ยง/โรคมะเร็งปากมดลูก ');
INSERT INTO `cppspecial` VALUES ('1B0040', 'ตรวจคัดกรอง VIA ได้ผลลบ');
INSERT INTO `cppspecial` VALUES ('1B0041', 'ตรวจคัดกรอง VIA ได้ผลบวก ไม่ให้การรักษา');
INSERT INTO `cppspecial` VALUES ('1B0042', 'ตรวจคัดกรอง VIA ได้ผลบวก และให้การรักษา ');
INSERT INTO `cppspecial` VALUES ('1B0043', 'ตรวจคัดกรอง VIA ไม่ระบุผลการตรวจ');
INSERT INTO `cppspecial` VALUES ('1B0044', 'ตรวจคัดกรอง Pap (ยังไม่ทราบผล)');
INSERT INTO `cppspecial` VALUES ('1B0045', 'การคัดกรองมะเร็งปากมดลูก ด้วยวิธี VIA ผลตรวจเป็นมะเร็งปากมดลูก');
INSERT INTO `cppspecial` VALUES ('1B0048', 'ตรวจคัดกรอง วิธีอื่น (ระบุวิธี)');
INSERT INTO `cppspecial` VALUES ('1B0049', 'ตรวจคัดกรอง ไม่ระบุวิธี');
INSERT INTO `cppspecial` VALUES ('1B026', 'การประเมินภาวะซึมเศร้าด้วยแบบประเมิน 9Q ในกลุ่มผู้ป่วยที่มีผลการคัดกรอง 2Q ผิดปกติ  ');
INSERT INTO `cppspecial` VALUES ('1B0260', 'การประเมินภาวะซึมเศร้าด้วยแบบประเมิน 9Q พบว่าผลปกติ ');
INSERT INTO `cppspecial` VALUES ('1B0261', 'การประเมินภาวะซึมเศร้าด้วยแบบประเมิน 9Q พบว่าซึมเศร้าน้อย (คะแนน 7-12)');
INSERT INTO `cppspecial` VALUES ('1B0262', 'การประเมินภาวะซึมเศร้าด้วยแบบประเมิน 9Q พบว่าซึมเศร้าปานกลาง (คะแนน 13-18)');
INSERT INTO `cppspecial` VALUES ('1B0263', 'การประเมินภาวะซึมเศร้าด้วยแบบประเมิน 9Q พบว่าซึมเศร้ารุนแรง (คะแนน≥19)');
INSERT INTO `cppspecial` VALUES ('1B0269', 'การประเมินภาวะซึมเศร้าด้วยแบบประเมิน 9Q ไม่ระบุรายละเอียด');
INSERT INTO `cppspecial` VALUES ('1B027', 'การประเมินการฆ่าตัวตายด้วยแบบประเมิน 8Q ');
INSERT INTO `cppspecial` VALUES ('1B0270', 'การประเมินการฆ่าตัวตายด้วยแบบประเมิน 8Q พบว่าไม่มีแนวโน้มการฆ่าตัวตาย ');
INSERT INTO `cppspecial` VALUES ('1B0271', 'การประเมินการฆ่าตัวตายด้วยแบบประเมิน 8Q พบว่ามีแนวโน้มที่จะฆ่าตัวตายระดับน้อย (คะแนน 1-8) ');
INSERT INTO `cppspecial` VALUES ('1B0272', 'การประเมินการฆ่าตัวตายด้วยแบบประเมิน 8Q พบว่ามีแนวโน้มที่จะฆ่าตัวตายระดับปานกลาง (คะแนน 9-16)');
INSERT INTO `cppspecial` VALUES ('1B0273', 'การประเมินการฆ่าตัวตายด้วยแบบประเมิน 8Q พบว่ามีแนวโน้มที่จะฆ่าตัวตายระดับรุนแรง (คะแนน ≥17)');
INSERT INTO `cppspecial` VALUES ('1B0279', 'การประเมินการฆ่าตัวตายด้วยแบบประเมิน 8Q ไม่ระบุรายละเอียด ');
INSERT INTO `cppspecial` VALUES ('1B028', 'การตรวจคัดกรองความเสี่ยง / โรคทางจิตเวช อื่นๆ');
INSERT INTO `cppspecial` VALUES ('1B0280', 'การตรวจคัดกรองโรคซึมเศร้าในผู้สูงอายุด้วยแบบคัดกรอง 2Q พบว่าผลปกติ');
INSERT INTO `cppspecial` VALUES ('1B0281', 'การตรวจคัดกรองโรคซึมเศร้าในผู้สูงอายุด้วยแบบคัดกรอง 2Q พบว่าผลผิดปกติ');
INSERT INTO `cppspecial` VALUES ('1B0282', 'การตรวจคัดกรองโรคซึมเศร้าในผู้สูงอายุด้วยแบบคัดกรอง 9Q พบว่าผลปกติ');
INSERT INTO `cppspecial` VALUES ('1B0283', 'การตรวจคัดกรองโรคซึมเศร้าในผู้สูงอายุด้วยแบบคัดกรอง 9Q พบว่าซึมเศร้าน้อย (คะแนน 7-12)');
INSERT INTO `cppspecial` VALUES ('1B0284', 'การตรวจคัดกรองโรคซึมเศร้าในผู้สูงอายุด้วยแบบคัดกรอง 9Q พบว่าซึมเศร้าปานกลาง (คะแนน 13-18)');
INSERT INTO `cppspecial` VALUES ('1B0285', 'การตรวจคัดกรองโรคซึมเศร้าในผู้สูงอายุด้วยแบบคัดกรอง 9Q พบว่าซึมเศร้ารุนแรง (คะแนน ≥19)');
INSERT INTO `cppspecial` VALUES ('1B0286', 'การประเมินความเครียดด้วยแบบคัดกรอง ST5 ในผู้สูงอายุ พบว่าผลปกติ');
INSERT INTO `cppspecial` VALUES ('1B0287', 'การประเมินความเครียดด้วยแบบคัดกรอง ST5 ในผู้สูงอายุ พบว่าผลผิดปกติ');
INSERT INTO `cppspecial` VALUES ('1B0289', 'การตรวจคัดกรองโรคซึมเศร้า/ประเมินความเครียดในผู้สูงอายุ ไม่ระบุรายละเอียด');
INSERT INTO `cppspecial` VALUES ('1B113', 'การตรวจคัดกรองสมรรถภาพทางการเห็น ');
INSERT INTO `cppspecial` VALUES ('1B1130', 'การตรวจคัดกรองสมรรถภาพทางการเห็น ผลเหมาะสมกับลักษณะงาน');
INSERT INTO `cppspecial` VALUES ('1B1131', 'การตรวจคัดกรองสมรรถภาพทางการเห็น ผลไม่เหมาะสมกับลักษณะงาน');
INSERT INTO `cppspecial` VALUES ('1B1139', 'การตรวจคัดกรองสมรรถภาพทางการเห็น ไม่ระบุรายละเอียด');
INSERT INTO `cppspecial` VALUES ('1B114', 'การตรวจคัดกรองสมรรถภาพทางการได้ยิน');
INSERT INTO `cppspecial` VALUES ('1B1140', 'การตรวจคัดกรองสมรรถภาพทางการได้ยิน ผลปกติ');
INSERT INTO `cppspecial` VALUES ('1B1141', 'การตรวจคัดกรองสมรรถภาพทางการได้ยิน ผลต้องเฝ้าระวัง');
INSERT INTO `cppspecial` VALUES ('1B1142', 'การตรวจคัดกรองสมรรถภาพทางการได้ยิน ผลผิดปกติ');
INSERT INTO `cppspecial` VALUES ('1B1143', 'การตรวจคัดกรองสมรรถภาพทางการได้ยิน ผลผิดปกติจากเสียง');
INSERT INTO `cppspecial` VALUES ('1B1149', 'การตรวจคัดกรองสมรรถภาพทางการได้ยิน ไม่ระบุรายละเอียด');
INSERT INTO `cppspecial` VALUES ('1B115', 'การตรวจคัดกรองสมรรถภาพทางปอด');
INSERT INTO `cppspecial` VALUES ('1B1150', 'การตรวจคัดกรองสมรรถภาพทางปอด ผลปกติ');
INSERT INTO `cppspecial` VALUES ('1B1151', 'การตรวจคัดกรองสมรรถภาพทางปอด ผลต่ำกว่าเกณฑ์มาตรฐานแบบหลอดลมอุดกั้น');
INSERT INTO `cppspecial` VALUES ('1B1152', 'การตรวจคัดกรองสมรรถภาพทางปอด ผลต่ำกว่าเกณฑ์มาตรฐานแบบจำกัดการขยายตัว');
INSERT INTO `cppspecial` VALUES ('1B1153', 'การตรวจคัดกรองสมรรถภาพทางปอด ผลต่ำกว่าเกณฑ์มาตรฐานแบบผสม');
INSERT INTO `cppspecial` VALUES ('1B1159', 'การตรวจคัดกรองสมรรถภาพทางปอด ไม่ระบุรายละเอียด');
INSERT INTO `cppspecial` VALUES ('1B116', 'การตรวจเอ็กซเรย์ปอดฟิล์มใหญ่ในวัยทำงาน ');
INSERT INTO `cppspecial` VALUES ('1B1160', 'การตรวจเอ็กซเรย์ปอดฟิล์มใหญ่ในวัยทำงาน ผลปกติระดับ 0/0');
INSERT INTO `cppspecial` VALUES ('1B1161', 'การตรวจเอ็กซเรย์ปอดฟิล์มใหญ่ในวัยทำงาน ผลผิดปกติตั้งแต่ระดับ 0/1 – 1/0 ');
INSERT INTO `cppspecial` VALUES ('1B1162', 'การตรวจเอ็กซเรย์ปอดฟิล์มใหญ่ในวัยทำงาน ผลผิดปกติตั้งแต่ระดับ 1/1 ขึ้นไป ');
INSERT INTO `cppspecial` VALUES ('1B1169', 'การตรวจเอ็กซเรย์ปอดฟิล์มใหญ่ในวัยทำงาน ไม่ระบุรายละเอียด');
INSERT INTO `cppspecial` VALUES ('1B117', 'การตรวจคัดกรองเพื่อหาความเสี่ยงจากสารกำจัดศัตรูพืช ');
INSERT INTO `cppspecial` VALUES ('1B1170', 'การตรวจคัดกรองเพื่อหาความเสี่ยงจากสารกำจัดศัตรูพืช ผลปกติ');
INSERT INTO `cppspecial` VALUES ('1B1171', 'การตรวจคัดกรองเพื่อหาความเสี่ยงจากสารกำจัดศัตรูพืช ผลปลอดภัย');
INSERT INTO `cppspecial` VALUES ('1B1172', 'การตรวจคัดกรองเพื่อหาความเสี่ยงจากสารกำจัดศัตรูพืช ผลมีความเสี่ยง');
INSERT INTO `cppspecial` VALUES ('1B1173', 'การตรวจคัดกรองเพื่อหาความเสี่ยงจากสารกำจัดศัตรูพืช ผลไม่ปลอดภัย');
INSERT INTO `cppspecial` VALUES ('1B1179', 'การตรวจคัดกรองเพื่อหาความเสี่ยงจากสารกำจัดศัตรูพืช ไม่ระบุรายละเอียด');
INSERT INTO `cppspecial` VALUES ('1B118', 'การตรวจคัดกรองความเสี่ยง / เฝ้าระวัง ในประชากรวัยแรงงาน อื่น ๆ  ');
INSERT INTO `cppspecial` VALUES ('1B119', 'การตรวจคัดกรองความเสี่ยง / เฝ้าระวัง ในประชากรวัยแรงงาน ไม่ระบุรายละเอียด');
INSERT INTO `cppspecial` VALUES ('1B12', 'การตรวจคัดกรองความเสี่ยง/เฝ้าระวังในผู้สูงอายุ');
INSERT INTO `cppspecial` VALUES ('1B120', 'การตรวจคัดกรองผู้สูงอายุที่เสี่ยงต่อภาวะหกล้ม');
INSERT INTO `cppspecial` VALUES ('1B1200', 'การตรวจคัดกรองผู้สูงอายุที่มีภาวะหกล้ม พบว่าไม่มีความเสี่ยง');
INSERT INTO `cppspecial` VALUES ('1B1201', 'การตรวจคัดกรองผู้สูงอายุที่มีภาวะหกล้ม พบว่ามีความเสี่ยง ให้คำแนะนำและรักษา');
INSERT INTO `cppspecial` VALUES ('1B1202', 'การตรวจคัดกรองผู้สูงอายุที่มีภาวะหกล้ม พบว่ามีความเสี่ยงส่งรักษาต่อ');
INSERT INTO `cppspecial` VALUES ('1B1209', 'การตรวจคัดกรองผู้สูงอายุที่เสี่ยงภาวะหกล้มไม่ระบุรายละเอียด');
INSERT INTO `cppspecial` VALUES ('1B122', 'การตรวจคัดกรองสมรรถภาพสมอง (ภาวะสมองเสื่อม) โดยแบบAMT/ MMSE-T 2002 ในผู้สูงอายุ ');
INSERT INTO `cppspecial` VALUES ('1B1220', 'การตรวจคัดกรองสมรรถภาพสมอง (ภาวะสมองเสื่อม) โดยแบบAMT ในผู้สูงอายุพบว่าปกติ');
INSERT INTO `cppspecial` VALUES ('1B1221', 'การตรวจคัดกรองสมรรถภาพสมอง (ภาวะสมองเสื่อม) โดยแบบ AMT ในผู้สูงอายุพบว่าผิดปกติ ให้คำแนะนำและรักษา');
INSERT INTO `cppspecial` VALUES ('1B1223', 'การตรวจคัดกรองสมรรถภาพสมอง (ภาวะสมองเสื่อม) โดยแบบ AMT ในผู้สูงอายุพบว่าผิดปกติและส่งไปรักษาต่อ');
INSERT INTO `cppspecial` VALUES ('1B1224', 'การตรวจคัดกรองสมรรถภาพสมอง (ภาวะสมองเสื่อม) โดยแบบ MMSE-T 2002  ในผู้สูงอายุพบว่าปกติ');
INSERT INTO `cppspecial` VALUES ('1B1225', 'การตรวจคัดกรองสมรรถภาพสมอง (ภาวะสมองเสื่อม) โดยแบบ MMSE-T 2002  ในผู้สูงอายุพบว่าผิดปกติ ให้คำแนะนำและรักษา');
INSERT INTO `cppspecial` VALUES ('1B1226', 'การตรวจคัดกรองสมรรถภาพสมอง (ภาวะสมองเสื่อม) โดยแบบ MMSE-T 2002  ในผู้สูงอายุพบว่าผิดปกติและส่งไปรักษาต่อ');
INSERT INTO `cppspecial` VALUES ('1B1229', 'การตรวจคัดกรองสมรรถภาพสมอง (ภาวะสมองเสื่อม) โดยแบบ AMT/ MMSE-T 2002   ในผู้สูงอายุ ไม่ระบุรายละเอียด');
INSERT INTO `cppspecial` VALUES ('1B123', 'การตรวจคัดกรองความเสี่ยงโรคหัวใจและหลอดเลือดสมองในผู้สูงอายุ');
INSERT INTO `cppspecial` VALUES ('1B1230', 'การตรวจคัดกรองความเสี่ยงโรคหัวใจและหลอดเลือดสมองในผู้สูงอายุ พบว่าไม่มีความเสี่ยง');
INSERT INTO `cppspecial` VALUES ('1B1231', 'การตรวจคัดกรองความเสี่ยงโรคหัวใจและหลอดเลือดสมองในผู้สูงอายุ พบว่ามีความเสี่ยง');
INSERT INTO `cppspecial` VALUES ('1B1232', 'การตรวจคัดกรองความเสี่ยงโรคหัวใจและหลอดเลือดสมองในผู้สูงอายุ พบว่ามีความเสี่ยงสูง');
INSERT INTO `cppspecial` VALUES ('1B1234', 'การตรวจคัดกรองความเสี่ยงโรคหัวใจและหลอดเลือดสมองในผู้สูงอายุ พบว่ามีความเสี่ยงสูงมาก ให้คำแนะนำ / รักษา');
INSERT INTO `cppspecial` VALUES ('1B1235', 'การตรวจคัดกรองความเสี่ยงโรคหัวใจและหลอดเลือดสมองในผู้สูงอายุพบว่ามีความเสี่ยงสูงมาก รักษาต่อ');
INSERT INTO `cppspecial` VALUES ('1B1239', 'การตรวจคัดกรองความเสี่ยงโรคหัวใจและหลอดเลือดสมองในผู้สูงอายุ  ไม่ระบุรายละเอียด');
INSERT INTO `cppspecial` VALUES ('1B124', 'การตรวจคัดกรองสายตาระยะใกล้/ระยะไกลในผู้สูงอายุ');
INSERT INTO `cppspecial` VALUES ('1B1240', 'การตรวจคัดกรองสายตาระยะใกล้ในผู้สูงอายุพบว่าไม่มีปัญหา');
INSERT INTO `cppspecial` VALUES ('1B1241', 'การตรวจคัดกรองสายตาระยะใกล้ในผู้สูงอายุพบว่ามีปัญหาให้คำแนะนำและรักษา');
INSERT INTO `cppspecial` VALUES ('1B1242', 'การตรวจคัดกรองสายตาระยะใกล้ในผู้สูงอายุพบว่ามีปัญหาส่งไปรักษาต่อ');
INSERT INTO `cppspecial` VALUES ('1B1243', 'การตรวจคัดกรองสายตาระยะไกลในผู้สูงอายุพบว่าไม่มีปัญหา');
INSERT INTO `cppspecial` VALUES ('1B1244', 'การตรวจคัดกรองสายตาระยะไกลในผู้สูงอายุพบว่ามีปัญหาให้คำแนะนำและรักษา');
INSERT INTO `cppspecial` VALUES ('1B1245', 'การตรวจคัดกรองสายตาระยะไกลในผู้สูงอายุพบว่ามีปัญหาส่งไปรักษาต่อ');
INSERT INTO `cppspecial` VALUES ('1B1249', 'การตรวจคัดกรองสายตาระยะใกล้/ระยะไกลในผู้สูงอายุไม่ระบุรายละเอียด');
INSERT INTO `cppspecial` VALUES ('1B125', 'การตรวจคัดกรองความเสี่ยงต้อกระจก / ต้อหิน / จอประสาทตาเสื่อมจากอายุ ในผู้สูงอายุ');
INSERT INTO `cppspecial` VALUES ('1B1250', 'การตรวจคัดกรองความเสี่ยงต้อกระจกในผู้สูงอายุพบว่าไม่มีปัญหา');
INSERT INTO `cppspecial` VALUES ('1B1251', 'การตรวจคัดกรองความเสี่ยงต้อกระจกในผู้สูงอายุพบว่ามีปัญหาให้คำแนะนำและรักษา');
INSERT INTO `cppspecial` VALUES ('1B1252', 'การตรวจคัดกรองความเสี่ยงต้อกระจกในผู้สูงอายุพบว่ามีปัญหาส่งไปรักษาต่อ');
INSERT INTO `cppspecial` VALUES ('1B1253', 'การตรวจคัดกรองความเสี่ยงต้อหินในผู้สูงอายุพบว่าไม่มีปัญหา');
INSERT INTO `cppspecial` VALUES ('1B1254', 'การตรวจคัดกรองความเสี่ยงต้อหินในผู้สูงอายุพบว่ามีปัญหาให้คำแนะนำและรักษา');
INSERT INTO `cppspecial` VALUES ('1B1255', 'การตรวจคัดกรองความเสี่ยงต้อหินในผู้สูงอายุพบว่ามีปัญหาส่งไปรักษาต่อ');
INSERT INTO `cppspecial` VALUES ('1B1256', 'การตรวจคัดกรองความเสี่ยงโรคจอประสาทตาเสื่อมจากอายุในผู้สูงอายุพบว่าไม่มีปัญหา');
INSERT INTO `cppspecial` VALUES ('1B1257', 'การตรวจคัดกรองความเสี่ยงโรคจอประสาทตาเสื่อมจากอายุในผู้สูงอายุพบว่ามีปัญหาให้คำแนะนำ และรักษา');
INSERT INTO `cppspecial` VALUES ('1B1258', 'การตรวจคัดกรองความเสี่ยงโรคจอประสาทตาเสื่อมจากอายุในผู้สูงอายุพบว่ามีปัญหา ส่งไปรักษาต่อ');
INSERT INTO `cppspecial` VALUES ('1B1259', 'การตรวจคัดกรองความเสี่ยงต้อกระจก  / ต้อหิน / จอประสาทตาเสื่อมจากอายุ ในผู้สูงอายุ ไม่ระบุรายละเอียด');
INSERT INTO `cppspecial` VALUES ('1B126', 'การตรวจคัดกรองพฤติกรรมเสี่ยงต่อสุขภาพช่องปากในผู้สูงอายุ');
INSERT INTO `cppspecial` VALUES ('1B1260', 'การตรวจคัดกรองพฤติกรรมเสี่ยงต่อสุขภาพช่องปากในผู้สูงอายุพบว่าพฤติกรรมเหมาะสม');
INSERT INTO `cppspecial` VALUES ('1B1261', 'การตรวจคัดกรองพฤติกรรมเสี่ยงต่อสุขภาพช่องปากในผู้สูงอายุพบว่าพฤติกรรมไม่เหมาะสม และแนะนำให้ความรู้');
INSERT INTO `cppspecial` VALUES ('1B1269', 'การตรวจคัดกรองพฤติกรรมเสี่ยงต่อสุขภาพช่องปากในผู้สูงอายุไม่ระบุรายละเอียด');
INSERT INTO `cppspecial` VALUES ('1B127', 'การตรวจคัดกรองข้อเข่าเสื่อมทางคลินิก ในผู้สูงอายุ / สมรรถนะผู้สูงอายุเกี่ยวกับการดูแลระยะยาว');
INSERT INTO `cppspecial` VALUES ('1B1270', 'การตรวจคัดกรองข้อเข่าเสื่อมทางคลินิกในผู้สูงอายุพบว่าปกติ');
INSERT INTO `cppspecial` VALUES ('1B1271', 'การตรวจคัดกรองข้อเข่าเสื่อมทางคลินิกในผู้สูงอายุพบว่าผิดปกติ ให้คำแนะนำและรักษา');
INSERT INTO `cppspecial` VALUES ('1B1272', 'การตรวจคัดกรองข้อเข่าเสื่อมทางคลินิกในผู้สูงอายุพบว่าผิดปกติและส่งรักษาต่อ');
INSERT INTO `cppspecial` VALUES ('1B1273', 'การตรวจคัดกรองสมรรถนะผู้สูงอายุเกี่ยวกับการดูแลระยะยาวพบว่าไม่ต้องดูแลระยะยาว');
INSERT INTO `cppspecial` VALUES ('1B1274', 'การตรวจคัดกรองสมรรถนะผู้สูงอายุเกี่ยวกับการดูแลระยะยาวพบว่าต้องเฝ้าระวัง ให้คำแนะนำและติดตาม');
INSERT INTO `cppspecial` VALUES ('1B1275', 'การตรวจคัดกรองสมรรถนะผู้สูงอายุเกี่ยวกับการดูแลระยะยาวพบว่าต้องดูแลระยะยาว ให้คำแนะนำและดูแลต่อเนื่อง');
INSERT INTO `cppspecial` VALUES ('1B1279', 'การตรวจคัดกรองข้อเข่าเสื่อมทางคลินิก ในผู้สูงอายุ / สมรรถนะผู้สูงอายุเกี่ยวกับการดูแลระยะยาว ไม่ระบุรายละเอียด');
INSERT INTO `cppspecial` VALUES ('1B128', 'การตรวจคัดกรองสมรรถนะผู้สูงอายุเกี่ยวกับความสามารถในการทำกิจวัตรประจำวัน/ ผู้สูงอายุที่มีภาวะพึ่งพิง');
INSERT INTO `cppspecial` VALUES ('1B1280', 'การตรวจคัดกรองสมรรถนะผู้สูงอายุเกี่ยวกับความสามารถในการทำกิจวัตรประจำวันพบว่าช่วยเหลือตัวเองได้ /ติดสังคม (ADL 12-20 คะแนน)');
INSERT INTO `cppspecial` VALUES ('1B1281', 'การตรวจคัดกรองสมรรถนะผู้สูงอายุเกี่ยวกับความสามารถในการทำกิจวัตรประจำวันพบว่าช่วยเหลือตัวเองได้บ้าง / บางส่วน /ติดบ้าน (ADL 5-11 คะแนน)');
INSERT INTO `cppspecial` VALUES ('1B1282', 'การตรวจคัดกรองสมรรถนะผู้สูงอายุเกี่ยวกับความสามารถในการทำกิจวัตรประจำวัน พบว่าช่วยเหลือตัวเองได้น้อย / ไม่ได้เลย /ภาวะติดเตียง (ADL 0-4 คะแนน)');
INSERT INTO `cppspecial` VALUES ('1B1289', 'การตรวจคัดกรองสมรรถนะผู้สูงอายุเกี่ยวกับความสามารถในการทำกิจวัตรประจำวันไม่ระบุรายละเอียด');
INSERT INTO `cppspecial` VALUES ('1B129', 'การตรวจคัดกรองความเสี่ยง/เฝ้าระวังในผู้สูงอายุ ไม่ระบุรายละเอียด');
INSERT INTO `cppspecial` VALUES ('1B13', 'การตรวจคัดกรองโรคซึมเศร้า/ประเมินความเครียดในผู้ป่วยโรคเรื้อรัง');
INSERT INTO `cppspecial` VALUES ('1B130', 'การตรวจคัดกรองโรคซึมเศร้าในผู้ป่วยโรคเรื้อรังด้วยแบบคัดกรอง 2Q พบว่าผลปกติ');
INSERT INTO `cppspecial` VALUES ('1B131', 'การตรวจคัดกรองโรคซึมเศร้าในผู้ป่วยโรคเรื้อรังด้วยแบบคัดกรอง 2Q พบว่าผลผิดปกติ');
INSERT INTO `cppspecial` VALUES ('1B132', 'การประเมินความเครียดด้วยแบบคัดกรอง ST5 ในผู้ป่วยโรคเรื้อรังพบว่าผลปกติ (0 – 4 คะแนน)');
INSERT INTO `cppspecial` VALUES ('1B133', 'การประเมินความเครียดด้วยแบบคัดกรอง ST5 ในผู้ป่วยโรคเรื้อรังพบว่ามีปัญหาความเครียด (5 – 7 คะแนน) ');
INSERT INTO `cppspecial` VALUES ('1B134', 'การประเมินความเครียดด้วยแบบคัดกรอง ST5 ในผู้ป่วยโรคเรื้อรังพบว่ามีความเครียดสูง (8 คะแนนขึ้นไป)');
INSERT INTO `cppspecial` VALUES ('1B139', 'การตรวจคัดกรองโรคซึมเศร้า/ประเมินความเครียดในผู้ป่วยโรคเรื้อรังไม่ระบุรายละเอียด');
INSERT INTO `cppspecial` VALUES ('1B14', 'การตรวจคัดกรองโรคซึมเศร้า/ประเมินความเครียดในหญิงตั้งครรภ์/หลังคลอด');
INSERT INTO `cppspecial` VALUES ('1B140', 'การตรวจคัดกรองโรคซึมเศร้าในหญิงตั้งครรภ์/หลังคลอดด้วยแบบคัดกรอง 2Q พบว่าผลปกติ');
INSERT INTO `cppspecial` VALUES ('1B141', 'การตรวจคัดกรองโรคซึมเศร้าในหญิงตั้งครรภ์/หลังคลอดด้วยแบบคัดกรอง 2Q พบว่าผลผิดปกติ');
INSERT INTO `cppspecial` VALUES ('1B142', 'การประเมินความเครียดด้วยแบบคัดกรอง ST5 ในหญิงตั้งครรภ์/หลังคลอดพบว่าผลปกติ (0 – 4 คะแนน) ');
INSERT INTO `cppspecial` VALUES ('1B143', 'การประเมินความเครียดด้วยแบบคัดกรอง ST5 ในหญิงตั้งครรภ์/หลังคลอดพบว่ามีปัญหาความเครียด  (5 – 7 คะแนน)');
INSERT INTO `cppspecial` VALUES ('1B144', 'การประเมินความเครียดด้วยแบบคัดกรอง ST5 ในหญิงตั้งครรภ์/หลังคลอดพบว่ามีความเครียดสูง (8 คะแนนขึ้นไป) ');
INSERT INTO `cppspecial` VALUES ('1B149', 'การตรวจคัดกรองโรคซึมเศร้า/ประเมินความเครียดในหญิงตั้งครรภ์/หลังคลอด ไม่ระบุรายละเอียด');
INSERT INTO `cppspecial` VALUES ('1B15', 'การตรวจคัดกรองโรคซึมเศร้า/ประเมินความเครียดในผู้มีปัญหาสุรา/สารเสพติด');
INSERT INTO `cppspecial` VALUES ('1B150', 'การตรวจคัดกรองโรคซึมเศร้าในผู้มีปัญหาสุรา/สารเสพติดด้วยแบบคัดกรอง 2Q พบว่าผลปกติ');
INSERT INTO `cppspecial` VALUES ('1B151', 'การตรวจคัดกรองโรคซึมเศร้าในผู้มีปัญหาสุรา/สารเสพติดด้วยแบบคัดกรอง 2Q พบว่าผลผิดปกติ');
INSERT INTO `cppspecial` VALUES ('1B152', 'การประเมินความเครียดด้วยแบบคัดกรอง ST5 ในผู้มีปัญหาสุรา/สารเสพติดพบว่าผลปกติ (0 – 4 คะแนน)');
INSERT INTO `cppspecial` VALUES ('1B153', 'การประเมินความเครียดด้วยแบบคัดกรอง ST5 ในผู้มีปัญหาสุรา/สารเสพติดพบว่ามีปัญหาความเครียด (5 – 7 คะแนน)');
INSERT INTO `cppspecial` VALUES ('1B154', 'การประเมินความเครียดด้วยแบบคัดกรอง ST5 ในผู้มีปัญหาสุรา/สารเสพติดพบว่ามีความเครียดสูง (8 คะแนนขึ้นไป)');
INSERT INTO `cppspecial` VALUES ('1B159', 'การตรวจคัดกรองโรคซึมเศร้า/ประเมินความเครียดในผู้มีปัญหาสุรา/สารเสพติดไม่ระบุรายละเอียด');
INSERT INTO `cppspecial` VALUES ('1B16', 'การตรวจคัดกรองโรคซึมเศร้า/ประเมินความเครียดในกลุ่มที่มีอาการซึมเศร้าชัดเจน');
INSERT INTO `cppspecial` VALUES ('1B160', 'การตรวจคัดกรองโรคซึมเศร้าในกลุ่มที่มีอาการซึมเศร้าชัดเจนด้วยแบบคัดกรอง 2Q พบว่าผลปกติ');
INSERT INTO `cppspecial` VALUES ('1B161', 'การตรวจคัดกรองโรคซึมเศร้าในกลุ่มที่มีอาการซึมเศร้าชัดเจนด้วยแบบคัดกรอง 2Q พบว่าผลผิดปกติ');
INSERT INTO `cppspecial` VALUES ('1B162', 'การประเมินความเครียดด้วยแบบคัดกรอง ST5 ในกลุ่มที่มีอาการซึมเศร้าชัดเจนพบว่าผลปกติ (0 – 4 คะแนน)');
INSERT INTO `cppspecial` VALUES ('1B163', 'การประเมินความเครียดด้วยแบบคัดกรอง ST5 ในกลุ่มที่มีอาการซึมเศร้าชัดเจนพบว่ามีปัญหาความเครียด (5 – 7 คะแนน)');
INSERT INTO `cppspecial` VALUES ('1B164', 'การประเมินความเครียดด้วยแบบคัดกรอง ST5 ในกลุ่มที่มีอาการซึมเศร้าชัดเจนพบว่ามีความเครียดสูง (8 คะแนนขึ้นไป)');
INSERT INTO `cppspecial` VALUES ('1B169', 'การตรวจคัดกรองโรคซึมเศร้า/ประเมินความเครียดในกลุ่มที่มีอาการซึมเศร้า ชัดเจน ไม่ระบุรายละเอียด');
INSERT INTO `cppspecial` VALUES ('1B17', 'การตรวจคัดกรองโรคซึมเศร้า/ประเมินความเครียดในผู้ที่มีอาการทางกายเรื้อรังหลายอาการที่หาสาเหตุไม่ได้');
INSERT INTO `cppspecial` VALUES ('1B170', 'การตรวจคัดกรองโรคซึมเศร้าในผู้ที่มีอาการทางกายเรื้อรังหลายอาการที่หาสาเหตุไม่ได้ด้วยแบบคัดกรอง 2Q พบว่าผลปกติ');
INSERT INTO `cppspecial` VALUES ('1B171', 'การตรวจคัดกรองโรคซึมเศร้าในผู้ที่มีอาการทางกายเรื้อรังหลายอาการที่หาสาเหตุไม่ได้ด้วยแบบคัดกรอง 2Q พบว่าผลผิดปกติ');
INSERT INTO `cppspecial` VALUES ('1B172', 'การประเมินความเครียดด้วยแบบคัดกรอง ST5 ในกลุ่มที่มีอาการซึมเศร้ในผู้ที่มีอาการทางกายเรื้อรังหลายอาการที่หาสาเหตุไม่ได้ พบว่าผลปกติ (0 – 4 คะแนน)');
INSERT INTO `cppspecial` VALUES ('1B173', 'การประเมินความเครียดด้วยแบบคัดกรอง ST5 ในผู้ที่มีอาการทางกายเรื้อรังหลายอาการที่หาสาเหตุไม่ได้ พบว่ามีปัญหาความเครียด (5 – 7 คะแนน)');
INSERT INTO `cppspecial` VALUES ('1B174 ', 'การประเมินความเครียดด้วยแบบคัดกรอง ST5 ในผู้ที่มีอาการทางกายเรื้อรังหลายอาการที่หาสาเหตุไม่ได้ พบว่ามีความเครียดสูง (8 คะแนนขึ้นไป)');
INSERT INTO `cppspecial` VALUES ('1B179', 'การตรวจคัดกรองโรคซึมเศร้า/ประเมินความเครียดในผู้ที่มีอาการทางกายเรื้อรังหลายอาการที่หาสาเหตุไม่ได้  ไม่ระบุรายละเอียด');
INSERT INTO `cppspecial` VALUES ('1B18', 'การตรวจคัดกรองโรคซึมเศร้า/ประเมินความเครียดในกลุ่มที่มีการสูญเสียคนที่รัก /ทรัพย์สินจำนวนมาก ฯลฯ');
INSERT INTO `cppspecial` VALUES ('1B180', 'การตรวจคัดกรองโรคซึมเศร้าในกลุ่มที่มีการสูญเสีย  ด้วยแบบคัดกรอง 2Q พบว่าผลปกติ');
INSERT INTO `cppspecial` VALUES ('1B181', 'การตรวจคัดกรองโรคซึมเศร้าในกลุ่มที่มีการสูญเสีย ด้วยแบบคัดกรอง 2Q พบว่าผลผิดปกติ');
INSERT INTO `cppspecial` VALUES ('1B182', 'การประเมินความเครียดด้วยแบบคัดกรอง ST5 ในกลุ่มที่มีการสูญเสีย พบว่าผลปกติ (0 – 4 คะแนน)');
INSERT INTO `cppspecial` VALUES ('1B183', 'การประเมินความเครียดด้วยแบบคัดกรอง ST5 ในกลุ่มที่มีการสูญเสีย พบว่าปัญหาความเครียด (5 – 7 คะแนน)');
INSERT INTO `cppspecial` VALUES ('1B184', 'การประเมินความเครียดด้วยแบบคัดกรอง ST5 ในกลุ่มที่มีการสูญเสีย พบว่ามีความเครียดสูง (8 คะแนนขึ้นไป)');
INSERT INTO `cppspecial` VALUES ('1B189', 'การตรวจคัดกรองโรคซึมเศร้า/ประเมินความเครียดในกลุ่มที่มีการสูญเสีย  ไม่ระบุรายละเอียด');
INSERT INTO `cppspecial` VALUES ('1B2', 'การตรวจคัดกรอง / เฝ้าระวัง ในเด็กอายุ 0-60 เดือนโดยเครื่องมือ DSPM / DAIM');
INSERT INTO `cppspecial` VALUES ('1B20', 'การตรวจคัดกรอง/แบบเฝ้าระวังพัฒนาการสมวัยด้านการเคลื่อนไหว');
INSERT INTO `cppspecial` VALUES ('1B200', 'การตรวจคัดกรองพัฒนาการสมวัยด้านการเคลื่อนไหวโดยเครื่องมือ DSPM ผลปกติ');
INSERT INTO `cppspecial` VALUES ('1B201', 'การตรวจคัดกรองพัฒนาการสมวัยด้านการเคลื่อนไหวโดยเครื่องมือ DSPM สงสัยล่าช้า ส่งเสริมพัฒนาการใน 1 เดือน');
INSERT INTO `cppspecial` VALUES ('1B202', 'การตรวจคัดกรองพัฒนาการสมวัยด้านการเคลื่อนไหวโดยเครื่องมือ DSPM ผลล่าช้า ส่งเพื่อประเมิน/รักษาต่อ');
INSERT INTO `cppspecial` VALUES ('1B203', 'การตรวจแบบเฝ้าระวังพัฒนาการสมวัยด้านการเคลื่อนไหวโดยเครื่องมือ DSPMผลปกติ');
INSERT INTO `cppspecial` VALUES ('1B204', 'การตรวจแบบเฝ้าระวังพัฒนาการสมวัยด้านการเคลื่อนไหวโดยเครื่องมือ DSPM สงสัยล่าช้า ส่งเสริมพัฒนาการใน 1 เดือน');
INSERT INTO `cppspecial` VALUES ('1B205', 'การตรวจแบบเฝ้าระวังพัฒนาการสมวัยด้านการเคลื่อนไหวโดยเครื่องมือ DSPM ผลล่าช้า ส่งเพื่อประเมิน/รักษาต่อ');
INSERT INTO `cppspecial` VALUES ('1B206', 'การตรวจแบบเฝ้าระวังพัฒนาการสมวัยด้านการเคลื่อนไหวโดยเครื่องมือ DAIM ผลปกติ');
INSERT INTO `cppspecial` VALUES ('1B207', 'การตรวจแบบเฝ้าระวังพัฒนาการสมวัยด้านการเคลื่อนไหวโดยเครื่องมือ DAIM ผลล่าช้า ส่งเพื่อประเมิน/รักษาต่อ');
INSERT INTO `cppspecial` VALUES ('1B21', 'การตรวจคัดกรอง/แบบเฝ้าระวังพัฒนาสมวัยด้านกล้ามเนื้อมัดเล็กและสติปัญญา');
INSERT INTO `cppspecial` VALUES ('1B210', 'การตรวจคัดกรองพัฒนาการสมวัยด้านกล้ามเนื้อมัดเล็กและสติปัญญาโดยเครื่องมือ DSPM ผลปกติ');
INSERT INTO `cppspecial` VALUES ('1B211', 'การตรวจคัดกรองพัฒนาการสมวัยด้านกล้ามเนื้อมัดเล็กและสติปัญญาโดยเครื่องมือ DSPM สงสัยล่าช้า ส่งเสริมพัฒนาการใน 1 เดือน');
INSERT INTO `cppspecial` VALUES ('1B212', 'การตรวจคัดกรองพัฒนาการสมวัยด้านกล้ามเนื้อมัดเล็กและสติปัญญาโดยเครื่องมือ DSPM ผลล่าช้า ส่งเพื่อประเมิน/รักษาต่อ');
INSERT INTO `cppspecial` VALUES ('1B213', 'การตรวจแบบเฝ้าระวังพัฒนาการสมวัยด้านกล้ามเนื้อมัดเล็กและสติปัญญาโดยเครื่องมือ DSPM ผลปกติ');
INSERT INTO `cppspecial` VALUES ('1B214', 'การตรวจแบบเฝ้าระวังพัฒนาการสมวัยด้านกล้ามเนื้อมัดเล็กและสติปัญญาโดยเครื่องมือ DSPM สงสัยล่าช้า ส่งเสริมพัฒนาการใน 1 เดือน');
INSERT INTO `cppspecial` VALUES ('1B215', 'การตรวจแบบเฝ้าระวังพัฒนาการสมวัยด้านกล้ามเนื้อมัดเล็กและสติปัญญาโดยเครื่องมือ DSPM ผลล่าช้า ส่งเพื่อประเมิน/รักษาต่อ');
INSERT INTO `cppspecial` VALUES ('1B216', 'การตรวจแบบเฝ้าระวังพัฒนาการสมวัยด้านกล้ามเนื้อมัดเล็กและสติปัญญาโดยเครื่องมือ DAIM ผลปกติ');
INSERT INTO `cppspecial` VALUES ('1B217', 'การตรวจแบบเฝ้าระวังพัฒนาการสมวัยด้านกล้ามเนื้อมัดเล็กและสติปัญญาโดยเครื่องมือ DAIM ผลล่าช้า ส่งเพื่อประเมิน/รักษาต่อ');
INSERT INTO `cppspecial` VALUES ('1B219', 'การตรวจคัดกรอง/แบบเฝ้าระวังพัฒนาการสมวัยด้านกล้ามเนื้อมัดเล็กและสติปัญญาโดยเครื่องมือ DSPM และหรือ DAIM ไม่ระบุรายละเอียด');
INSERT INTO `cppspecial` VALUES ('1B22', 'การตรวจคัดกรอง/แบบเฝ้าระวังพัฒนาสมวัยด้านการเข้าใจภาษา');
INSERT INTO `cppspecial` VALUES ('1B220', 'การตรวจคัดกรองพัฒนาการสมวัยด้านการเข้าใจภาษาโดยเครื่องมือ DSPM ผลปกติ');
INSERT INTO `cppspecial` VALUES ('1B221', 'การตรวจคัดกรองพัฒนาการสมวัยด้านการเข้าใจภาษาโดยเครื่องมือ DSPM สงสัยล่าช้า ส่งเสริมพัฒนาการใน 1 เดือน');
INSERT INTO `cppspecial` VALUES ('1B222', 'การตรวจคัดกรองพัฒนาการสมวัยด้านการเข้าใจภาษาโดยเครื่องมือ DSPM ผลล่าช้า ส่งเพื่อประเมิน/รักษาต่อ');
INSERT INTO `cppspecial` VALUES ('1B223', 'การตรวจแบบเฝ้าระวังพัฒนาการสมวัยด้านการเข้าใจภาษาโดยเครื่องมือ DSPM ผลปกติ');
INSERT INTO `cppspecial` VALUES ('1B224', 'การตรวจแบบเฝ้าระวังพัฒนาการสมวัยด้านการเข้าใจภาษาโดยเครื่องมือ DSPM สงสัยล่าช้า ส่งเสริมพัฒนาการใน 1 เดือน');
INSERT INTO `cppspecial` VALUES ('1B225', 'การตรวจแบบเฝ้าระวังพัฒนาการสมวัยด้านการเข้าใจภาษาโดยเครื่องมือ DSPM ผลล่าช้า ส่งเพื่อประเมิน/รักษาต่อ');
INSERT INTO `cppspecial` VALUES ('1B226', 'การตรวจแบบเฝ้าระวังพัฒนาการสมวัยด้านการเข้าใจภาษาโดยเครื่องมือ DAIM ผลปกติ');
INSERT INTO `cppspecial` VALUES ('1B227', 'การตรวจแบบเฝ้าระวังพัฒนาการสมวัยด้านการเข้าใจภาษาโดยเครื่องมือ DAIM ผลล่าช้า ส่งเพื่อประเมิน/รักษาต่อ');
INSERT INTO `cppspecial` VALUES ('1B229', 'การตรวจคัดกรอง/แบบเฝ้าระวังพัฒนาการสมวัยด้านการเข้าใจภาษาโดยเครื่องมือ DSPM และหรือ DAIM ไม่ระบุรายละเอียด');
INSERT INTO `cppspecial` VALUES ('1B23', 'การตรวจคัดกรอง/แบบเฝ้าระวังพัฒนาสมวัยด้านการใช้ภาษา');
INSERT INTO `cppspecial` VALUES ('1B230', 'การตรวจคัดกรองพัฒนาการสมวัยด้านการใช้ภาษาโดยเครื่องมือ DSPM ผลปกติ');
INSERT INTO `cppspecial` VALUES ('1B231', 'การตรวจคัดกรองพัฒนาการสมวัยด้านการใช้ภาษาโดยเครื่องมือ DSPM สงสัยล่าช้า ส่งเสริมพัฒนาการใน 1 เดือน');
INSERT INTO `cppspecial` VALUES ('1B232', 'การตรวจคัดกรองพัฒนาการสมวัยด้านการใช้ภาษาโดยเครื่องมือ DSPM ผลล่าช้า ส่งเพื่อประเมิน/รักษาต่อ');
INSERT INTO `cppspecial` VALUES ('1B233', 'การตรวจแบบเฝ้าระวังพัฒนาการสมวัยด้านการใช้ภาษาโดยเครื่องมือ DSPM ผลปกติ');
INSERT INTO `cppspecial` VALUES ('1B234', 'การตรวจแบบเฝ้าระวังพัฒนาการสมวัยด้านการใช้ภาษาโดยเครื่องมือ DSPM สงสัยล่าช้า ส่งเสริมพัฒนาการใน 1 เดือน');
INSERT INTO `cppspecial` VALUES ('1B235', 'การตรวจแบบเฝ้าระวังพัฒนาการสมวัยด้านการใช้ภาษาโดยเครื่องมือ DSPM ผลล่าช้า ส่งเพื่อประเมิน/รักษาต่อ');
INSERT INTO `cppspecial` VALUES ('1B236', 'การตรวจแบบเฝ้าระวังพัฒนาการสมวัยด้านการใช้ภาษาโดยเครื่องมือ DAIM ผลปกติ');
INSERT INTO `cppspecial` VALUES ('1B237', 'การตรวจแบบเฝ้าระวังพัฒนาการสมวัยด้านการใช้ภาษาโดยเครื่องมือ DAIM ผลล่าช้า ส่งเพื่อประเมิน/รักษาต่อ');
INSERT INTO `cppspecial` VALUES ('1B239', 'การตรวจคัดกรอง/แบบเฝ้าระวังพัฒนาการสมวัยด้านการใช้ภาษาโดยเครื่องมือ DSPM และหรือ DAIM ไม่ระบุรายละเอียด');
INSERT INTO `cppspecial` VALUES ('1B24', 'การตรวจคัดกรอง/แบบเฝ้าระวังพัฒนาสมวัยด้านการช่วยเหลือตัวเองและสังคม');
INSERT INTO `cppspecial` VALUES ('1B240', 'การตรวจคัดกรองพัฒนาการสมวัยด้านการช่วยเหลือตัวเองและสังคมโดยเครื่องมือ DSPM ผลปกติ');
INSERT INTO `cppspecial` VALUES ('1B241', 'การตรวจคัดกรองพัฒนาการสมวัยด้านการช่วยเหลือตัวเองและสังคมโดยเครื่องมือ DSPM สงสัยล่าช้า ส่งเสริมพัฒนาการใน 1 เดือน');
INSERT INTO `cppspecial` VALUES ('1B242', 'การตรวจคัดกรองพัฒนาการสมวัยด้านการช่วยเหลือตัวเองและสังคมโดยเครื่องมือ DSPM ผลล่าช้าส่งเพื่อประเมิน/รักษาต่อ');
INSERT INTO `cppspecial` VALUES ('1B243', 'การตรวจแบบเฝ้าระวังพัฒนาการสมวัยด้านการช่วยเหลือตัวเองและสังคมโดยเครื่องมือ DSPM ผลปกติ');
INSERT INTO `cppspecial` VALUES ('1B244', 'การตรวจแบบเฝ้าระวังพัฒนาการสมวัยด้านการช่วยเหลือตัวเองและสังคมโดยเครื่องมือ DSPM สงสัยล่าช้า ส่งเสริมพัฒนาการใน 1 เดือน');
INSERT INTO `cppspecial` VALUES ('1B245', 'การตรวจแบบเฝ้าระวังพัฒนาการสมวัยด้านการใช้ภาด้านการช่วยเหลือตัวเองและสังคม โดยเครื่องมือ DSPM ผลล่าช้า ส่งเพื่อประเมิน/รักษาต่อ');
INSERT INTO `cppspecial` VALUES ('1B246', 'การตรวจแบบเฝ้าระวังพัฒนาการสมวัยด้านการช่วยเหลือตัวเองและสังคมโดยเครื่องมือ DAIM ผลปกติ');
INSERT INTO `cppspecial` VALUES ('1B247', 'การตรวจแบบเฝ้าระวังพัฒนาการสมวัยด้านการช่วยเหลือตัวเองและสังคมโดยเครื่องมือ DAIM ผลล่าช้า ส่งเพื่อประเมิน/รักษาต่อ');
INSERT INTO `cppspecial` VALUES ('1B249', 'การตรวจคัดกรอง/แบบเฝ้าระวังพัฒนาการสมวัยด้านการช่วยเหลือตัวเองและสังคมโดยเครื่องมือ DSPMและหรือ DAIM ไม่ระบุรายละเอียด');
INSERT INTO `cppspecial` VALUES ('1B25', 'การตรวจประเมินระบบประสาทและพัฒนาการ');
INSERT INTO `cppspecial` VALUES ('1B250', 'การตรวจประเมินระบบประสาทและพัฒนาการอายุแรกเกิด โดยเครื่องมือ DAIM ข้อที่ 1-3 (ตรวจปฏิกิริยา ตรวจความตึงตัวของกล้ามเนื้อ และตรวจข้อเท้า) ผ่าน');
INSERT INTO `cppspecial` VALUES ('1B251', 'การตรวจประเมินระบบประสาทและพัฒนาการอายุแรกเกิด โดยเครื่องมือ DAIMข้อที่ 1-3 (ตรวจปฏิกิริยา ตรวจความตึงตัวของกล้ามเนื้อ และตรวจข้อเท้า) ไม่ผ่าน ส่งเพื่อประเมิน/รักษาต่อ');
INSERT INTO `cppspecial` VALUES ('1B252', 'การตรวจประเมินระบบประสาทและพัฒนาการอายุ 1 เดือน โดยเครื่องมือ DAIM ข้อที่ 4 (ตรวจการเหยียดแขนและขา) ผ่าน');
INSERT INTO `cppspecial` VALUES ('1B253', 'การตรวจประเมินระบบประสาทและพัฒนาการอายุ 1 เดือน โดยเครื่องมือ DAIM ข้อที่ 4 (ตรวจการเหยียดแขนและขา) ไม่ผ่าน ส่งเพื่อประเมิน/รักษาต่อ');
INSERT INTO `cppspecial` VALUES ('1B254', 'การตรวจประเมินระบบประสาทและพัฒนาการอายุ 3-4 เดือน โดยเครื่องมือ DAIM ข้อที่ 5 (ตรวจการกำมือ) ผ่าน');
INSERT INTO `cppspecial` VALUES ('1B255', 'การตรวจประเมินระบบประสาทและพัฒนาการอายุ 3-4 เดือน โดยเครื่องมือ DAIM ข้อที่ 5 (ตรวจการกำมือ) ไม่ผ่าน ส่งเพื่อประเมิน/รักษาต่อ');
INSERT INTO `cppspecial` VALUES ('1B256', 'การตรวจประเมินระบบประสาทและพัฒนาการอายุ 10-12 เดือน โดยเครื่องมือ DAIM ข้อที่ 6 (ตรวจการกางแขน) ผ่าน');
INSERT INTO `cppspecial` VALUES ('1B257', 'การตรวจประเมินระบบประสาทและพัฒนาการอายุ 10-12 เดือน โดยเครื่องมือ DAIM ข้อที่ 6 (ตรวจการกางแขน) ไม่ผ่าน ส่งเพื่อประเมิน/รักษาต่อ');
INSERT INTO `cppspecial` VALUES ('1B258', 'การตรวจประเมินระบบประสาทและพัฒนาการอายุ 55-60 เดือน โดยเครื่องมือ DAIM ข้อที่ 7 (เดินต่อส้นเท้า) ผ่าน');
INSERT INTO `cppspecial` VALUES ('1B259', 'การตรวจประเมินระบบประสาทและพัฒนาการอายุ 55-60 เดือน โดยเครื่องมือ DAIM ข้อที่ 7 (เดินต่อส้นเท้า) ไม่ผ่าน ส่งเพื่อประเมิน/รักษาต่อ');
INSERT INTO `cppspecial` VALUES ('1B3  ', 'ผลการตรวจคัดกรองผลปกติ');
INSERT INTO `cppspecial` VALUES ('1B30', 'ผลการตรวจคัดกรองมะเร็งปากมดลูก');
INSERT INTO `cppspecial` VALUES ('1B31', 'ผลการตรวจคัดกรองธาลาสซีเมีย');
INSERT INTO `cppspecial` VALUES ('1B4 ', 'ผลการตรวจคัดกรองผลผิดปกติ');
INSERT INTO `cppspecial` VALUES ('1B40', 'ผลการตรวจคัดกรองมะเร็งปากมดลูก');
INSERT INTO `cppspecial` VALUES ('1B41', 'ผลการตรวจคัดกรองธาลาสซีเมีย');

-- ----------------------------
-- Table structure for err_zall
-- ----------------------------
DROP TABLE IF EXISTS `err_zall`;
CREATE TABLE `err_zall` (
  `HOSPCODE` varchar(5) NOT NULL DEFAULT '',
  `FILE` varchar(255) NOT NULL DEFAULT '',
  `BYEAR` varchar(4) NOT NULL,
  `TOTAL` int(8) DEFAULT '0',
  `ERR` int(8) DEFAULT NULL,
  `ERR_DATE` int(8) DEFAULT NULL,
  `DUPDATE` date DEFAULT '0000-00-00',
  PRIMARY KEY (`HOSPCODE`,`FILE`,`BYEAR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of err_zall
-- ----------------------------

-- ----------------------------
-- Table structure for err_zhos
-- ----------------------------
DROP TABLE IF EXISTS `err_zhos`;
CREATE TABLE `err_zhos` (
  `HOSPCODE` varchar(5) NOT NULL,
  `FILE` varchar(255) NOT NULL,
  `TOTAL` int(255) DEFAULT NULL,
  `ERR` int(255) DEFAULT NULL,
  `DUPDATE` date DEFAULT NULL,
  PRIMARY KEY (`HOSPCODE`,`FILE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of err_zhos
-- ----------------------------

-- ----------------------------
-- Table structure for sys_count_import_file
-- ----------------------------
DROP TABLE IF EXISTS `sys_count_import_file`;
CREATE TABLE `sys_count_import_file` (
  `ZIP_NAME` varchar(255) NOT NULL,
  `FILE_NAME` varchar(255) NOT NULL,
  `TOTAL_RECORD` int(8) DEFAULT NULL,
  `IMPORT_DATE` datetime DEFAULT NULL,
  `NOTE1` varchar(255) DEFAULT NULL,
  `NOTE2` varchar(255) DEFAULT NULL,
  `NOTE3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ZIP_NAME`,`FILE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_count_import_file
-- ----------------------------

-- ----------------------------
-- Table structure for sys_store_proc_err
-- ----------------------------
DROP TABLE IF EXISTS `sys_store_proc_err`;
CREATE TABLE `sys_store_proc_err` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `spname` varchar(255) DEFAULT NULL,
  `spdesc` varchar(255) DEFAULT NULL,
  `d_update` datetime DEFAULT NULL,
  `note1` varchar(255) DEFAULT NULL,
  `note2` varchar(255) DEFAULT NULL,
  `note3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_store_proc_err
-- ----------------------------
INSERT INTO `sys_store_proc_err` VALUES ('1', 'err_anc', '', '2016-02-28 00:00:00', '', '', '');
INSERT INTO `sys_store_proc_err` VALUES ('2', 'err_charge_opd', '', '2016-02-28 00:00:00', '', '', '');
INSERT INTO `sys_store_proc_err` VALUES ('3', 'err_chronic', '', '2016-02-28 00:00:00', '', '', '');
INSERT INTO `sys_store_proc_err` VALUES ('4', 'err_chronicfu', '', '2016-02-28 00:00:00', '', '', '');
INSERT INTO `sys_store_proc_err` VALUES ('5', 'err_dental', '', '2016-02-28 00:00:00', '', '', '');
INSERT INTO `sys_store_proc_err` VALUES ('6', 'err_diagnosis_opd', '', '2016-02-28 00:00:00', '', '', '');
INSERT INTO `sys_store_proc_err` VALUES ('7', 'err_disability', '', '2016-02-28 00:00:00', '', '', '');
INSERT INTO `sys_store_proc_err` VALUES ('8', 'err_drugallergy', '', '2016-02-28 00:00:00', '', '', '');
INSERT INTO `sys_store_proc_err` VALUES ('9', 'err_drug_opd', '', '2016-02-28 00:00:00', '', '', '');
INSERT INTO `sys_store_proc_err` VALUES ('10', 'err_epi', '', '2016-02-28 00:00:00', '', '', '');
INSERT INTO `sys_store_proc_err` VALUES ('11', 'err_fp', '', '2016-02-28 00:00:00', '', '', '');
INSERT INTO `sys_store_proc_err` VALUES ('12', 'err_functional', '', '2016-02-28 00:00:00', '', '', '');
INSERT INTO `sys_store_proc_err` VALUES ('13', 'err_icf', '', '2016-02-28 00:00:00', '', '', '');
INSERT INTO `sys_store_proc_err` VALUES ('14', 'err_labfu', '', '2016-02-28 00:00:00', '', '', '');
INSERT INTO `sys_store_proc_err` VALUES ('15', 'err_labor', '', '2016-02-28 00:00:00', '', '', '');
INSERT INTO `sys_store_proc_err` VALUES ('16', 'err_ncdscreen', '', '2016-02-28 00:00:00', '', '', '');
INSERT INTO `sys_store_proc_err` VALUES ('17', 'err_newborn', '', '2016-02-28 00:00:00', '', '', '');
INSERT INTO `sys_store_proc_err` VALUES ('18', 'err_newborncare', '', '2016-02-28 00:00:00', '', '', '');
INSERT INTO `sys_store_proc_err` VALUES ('19', 'err_nutrition', '', '2016-02-28 00:00:00', '', '', '');
INSERT INTO `sys_store_proc_err` VALUES ('20', 'err_person', '', '2016-02-28 00:00:00', '', '', '');
INSERT INTO `sys_store_proc_err` VALUES ('21', 'err_postnatal', '', '2016-02-28 00:00:00', '', '', '');
INSERT INTO `sys_store_proc_err` VALUES ('22', 'err_prenatal', '', '2016-02-28 00:00:00', '', '', '');
INSERT INTO `sys_store_proc_err` VALUES ('23', 'err_procedure_opd', '', '2016-02-28 00:00:00', '', '', '');
INSERT INTO `sys_store_proc_err` VALUES ('24', 'err_provider', '', '2016-02-28 00:00:00', '', '', '');
INSERT INTO `sys_store_proc_err` VALUES ('25', 'err_rehabilitation', '', '2016-02-28 00:00:00', '', '', '');
INSERT INTO `sys_store_proc_err` VALUES ('26', 'err_service', '', '2016-02-28 00:00:00', '', '', '');
INSERT INTO `sys_store_proc_err` VALUES ('27', 'err_specialpp', '', '2016-02-28 00:00:00', '', '', '');
INSERT INTO `sys_store_proc_err` VALUES ('28', 'err_village', '', '2016-02-28 00:00:00', '', '', '');

-- ----------------------------
-- Table structure for sys_store_proc_err_b
-- ----------------------------
DROP TABLE IF EXISTS `sys_store_proc_err_b`;
CREATE TABLE `sys_store_proc_err_b` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `spname` varchar(255) DEFAULT NULL,
  `spdesc` varchar(255) DEFAULT NULL,
  `d_update` datetime DEFAULT NULL,
  `note1` varchar(255) DEFAULT NULL,
  `note2` varchar(255) DEFAULT NULL,
  `note3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_store_proc_err_b
-- ----------------------------
INSERT INTO `sys_store_proc_err_b` VALUES ('1', 'err_anc_b', '', '2016-02-28 00:00:00', '', '', '');
INSERT INTO `sys_store_proc_err_b` VALUES ('2', 'err_charge_opd_b', '', '2016-02-28 00:00:00', '', '', '');
INSERT INTO `sys_store_proc_err_b` VALUES ('3', 'err_chronicfu_b', '', '2016-02-28 00:00:00', '', '', '');
INSERT INTO `sys_store_proc_err_b` VALUES ('4', 'err_chronic_b', '', '2016-02-28 00:00:00', '', '', '');
INSERT INTO `sys_store_proc_err_b` VALUES ('5', 'err_dental_b', '', '2016-02-28 00:00:00', '', '', '');
INSERT INTO `sys_store_proc_err_b` VALUES ('6', 'err_diagnosis_opd_b', '', '2016-02-28 00:00:00', '', '', '');
INSERT INTO `sys_store_proc_err_b` VALUES ('7', 'err_disability_b', '', '2016-02-28 00:00:00', '', '', '');
INSERT INTO `sys_store_proc_err_b` VALUES ('8', 'err_drugallergy_b', '', '2016-02-28 00:00:00', '', '', '');
INSERT INTO `sys_store_proc_err_b` VALUES ('9', 'err_drug_opd_b', '', '2016-02-28 00:00:00', '', '', '');
INSERT INTO `sys_store_proc_err_b` VALUES ('10', 'err_epi_b', '', '2016-02-28 00:00:00', '', '', '');
INSERT INTO `sys_store_proc_err_b` VALUES ('11', 'err_fp_b', '', '2016-02-28 00:00:00', '', '', '');
INSERT INTO `sys_store_proc_err_b` VALUES ('12', 'err_functional_b', '', '2016-02-28 00:00:00', '', '', '');
INSERT INTO `sys_store_proc_err_b` VALUES ('13', 'err_icf_b', '', '2016-02-28 00:00:00', '', '', '');
INSERT INTO `sys_store_proc_err_b` VALUES ('14', 'err_labfu_b', '', '2016-02-28 00:00:00', '', '', '');
INSERT INTO `sys_store_proc_err_b` VALUES ('15', 'err_labor_b', '', '2016-02-28 00:00:00', '', '', '');
INSERT INTO `sys_store_proc_err_b` VALUES ('16', 'err_ncdscreen_b', '', '2016-02-28 00:00:00', '', '', '');
INSERT INTO `sys_store_proc_err_b` VALUES ('17', 'err_newborncare_b', '', '2016-02-28 00:00:00', '', '', '');
INSERT INTO `sys_store_proc_err_b` VALUES ('18', 'err_newborn_b', '', '2016-02-28 00:00:00', '', '', '');
INSERT INTO `sys_store_proc_err_b` VALUES ('19', 'err_nutrition_b', '', '2016-02-28 00:00:00', '', '', '');
INSERT INTO `sys_store_proc_err_b` VALUES ('20', 'err_person_b', '', '2016-02-28 00:00:00', '', '', '');
INSERT INTO `sys_store_proc_err_b` VALUES ('21', 'err_postnatal_b', '', '2016-02-28 00:00:00', '', '', '');
INSERT INTO `sys_store_proc_err_b` VALUES ('22', 'err_prenatal_b', '', '2016-02-28 00:00:00', '', '', '');
INSERT INTO `sys_store_proc_err_b` VALUES ('23', 'err_procedure_opd_b', '', '2016-02-28 00:00:00', '', '', '');
INSERT INTO `sys_store_proc_err_b` VALUES ('24', 'err_provider_b', '', '2016-02-28 00:00:00', '', '', '');
INSERT INTO `sys_store_proc_err_b` VALUES ('25', 'err_rehabilitation_b', '', '2016-02-28 00:00:00', '', '', '');
INSERT INTO `sys_store_proc_err_b` VALUES ('26', 'err_service_b', '', '2016-02-28 00:00:00', '', '', '');
INSERT INTO `sys_store_proc_err_b` VALUES ('27', 'err_specialpp_b', '', '2016-02-28 00:00:00', '', '', '');
INSERT INTO `sys_store_proc_err_b` VALUES ('28', 'err_village_b', '', '2016-02-28 00:00:00', '', '', '');

-- ----------------------------
-- Table structure for sys_version
-- ----------------------------
DROP TABLE IF EXISTS `sys_version`;
CREATE TABLE `sys_version` (
  `version` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_version
-- ----------------------------
INSERT INTO `sys_version` VALUES ('20160229');

-- ----------------------------
-- Procedure structure for api_epi
-- ----------------------------
DROP PROCEDURE IF EXISTS `api_epi`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `api_epi`(IN `rep_year` varchar(4),IN `d_start` varchar(10),IN `d_end` varchar(10))
BEGIN	
	
SET @rep_year = rep_year;
SET @ds1 = d_start;
SET @ds2 = d_end;
SET @group_id = 'epi';
SET @group_title = 'สร้างเสริมภูมิคุ้มกันโรค';


--  dtp5
REPLACE INTO mob_raw_data 
SELECT @rep_year,h.hoscode as hospcode,h.hosname as hospname
,@group_id as group_id,@group_title as group_title

,'epi1' as report_id,'เด็ก 0-5 ปีได้รับ DTP5' as report_title
	,a.target
	,a.result as work
,CURDATE() as 'd_process','','','',''


from chospital_amp h
left join (
	select p.hospcode
		,count(distinct p.pid) target
		,count(distinct if(timestampdiff(year,p.birth,a.date_serv)<=5,a.pid,null)) result
	from person p
	left join epi a on a.pid=p.pid and a.hospcode=p.hospcode and a.vaccinetype=035
	where p.birth between '2009-04-01' and '2010-03-31'
			and p.typearea in (1,3)
	group by p.hospcode
) a on a.hospcode=h.hoscode;



END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for api_mom
-- ----------------------------
DROP PROCEDURE IF EXISTS `api_mom`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `api_mom`(IN `rep_year` varchar(4),IN `d_start` varchar(10),IN `d_end` varchar(10))
BEGIN	
	
SET @rep_year = rep_year;
SET @ds1 = d_start;
SET @ds2 = d_end;
SET @group_id = 'mom';
SET @group_title = 'แม่และเด็ก';


-- anc 12 wks
REPLACE INTO mob_raw_data 
SELECT @rep_year,h.hoscode as hospcode,h.hosname as hospname
,@group_id as group_id,@group_title as group_title
,'mom1' as report_id,'ฝากครรภ์ครั้งแรกก่อน 12 สัปดาห์' as report_title
	,a.target
	,a.result as work
,CURDATE() as 'd_process','','','',''
from chospital_amp h
left join (
	select l.hospcode
		,count(distinct l.pid) target
		,count(distinct if(a.ga<=12,a.pid,null)) result
	from labor l
	left join person p on p.pid=l.pid and l.hospcode=p.hospcode
	left join anc a on a.pid=l.pid and a.hospcode=l.hospcode and a.ancno=1
	where l.bdate between @ds1 and @ds2
			and p.typearea in (1,3)
	group by l.hospcode
) a on a.hospcode=h.hoscode;


-- anc 5 time
REPLACE INTO mob_raw_data 
SELECT @rep_year,h.hoscode as hospcode,h.hosname as hospname
,@group_id as group_id,@group_title as group_title
,'mom2' as report_id,'ฝากครรภ์ 5 ครั้งตามเกณฑ์' as report_title
	,a.target
	,a.result as work
,CURDATE() as 'd_process','','','',''

from chospital_amp h
left join (
	select l.hospcode
		,count(distinct l.pid) target
		,count(distinct if(a1.ga<=12 
				and a2.ga between 13 and 18
				and a3.ga between 19 and 26
				and a4.ga between 27 and 32
				and a5.ga between 33 and 40,l.pid,null)) result
	from labor l
	left join person p on p.pid=l.pid and l.hospcode=p.hospcode
	left join anc a1 on a1.pid=l.pid and a1.hospcode=l.hospcode and a1.ancno=1
	left join anc a2 on a2.pid=l.pid and a2.hospcode=l.hospcode and a2.ancno=2
	left join anc a3 on a3.pid=l.pid and a3.hospcode=l.hospcode and a3.ancno=3
	left join anc a4 on a4.pid=l.pid and a4.hospcode=l.hospcode and a4.ancno=4
	left join anc a5 on a5.pid=l.pid and a5.hospcode=l.hospcode and a5.ancno=5
	where l.bdate between @ds1 and @ds2
				and p.typearea in (1,3)
				and p.nation=099
	group by l.hospcode
) a on a.hospcode=h.hoscode;


-- 2500 กรัม
REPLACE INTO mob_raw_data 
SELECT @rep_year,h.hoscode as hospcode,h.hosname as hospname
,@group_id as group_id,@group_title as group_title
,'mom3' as report_id,'ทารกแรกเกิด นน.น้อยกว่า 2500 ก.' as report_title
	,a.target
	,a.result as work
,CURDATE() as 'd_process','','','',''

from chospital_amp h
left join (
	select p.hospcode
		,count(distinct p.pid) target
		,count(distinct if(a.bweight<2500,a.pid,null)) result
	from person p
	left join newborn a on a.pid=p.pid and a.hospcode=p.hospcode
	where a.bdate between @ds1 and @ds2
			and p.typearea in (1,3)
	group by p.hospcode
) a on a.hospcode=h.hoscode;

	


END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for api_ncd
-- ----------------------------
DROP PROCEDURE IF EXISTS `api_ncd`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `api_ncd`(IN `rep_year` varchar(4),IN `d_start` varchar(10),IN `d_end` varchar(10))
BEGIN	
	
SET @rep_year = rep_year;
SET @ds1 = d_start;
SET @ds2 = d_end;
SET @group_id = 'ncd';
SET @group_title = 'กลุ่มผู้ป่วย NCD';


-- UC  DM
REPLACE INTO mob_raw_data 
SELECT @rep_year,h.hoscode as hospcode,h.hosname as hospname
,@group_id as group_id,@group_title as group_title

,'ncd01' as report_id,'ผู้ป่วยเบาหวานได้รับการตรวจ HbA1c' as report_title
	,a.target
	,a.result as work
,CURDATE() as 'd_process','','','',''

from chospital_amp h

left join (
	select p.hospcode
		,count(distinct p.pid) target
		,count(distinct if(s.labresult>0,s.pid,null)) result
	from person p
	left join chronic c on c.pid=p.pid and c.hospcode=p.hospcode
	left join card cc on cc.pid=p.pid and cc.hospcode=p.hospcode
	left join labfu s on s.pid=p.pid and s.hospcode=p.hospcode 
							and s.labtest='05'
							and s.date_serv between @ds1 and @ds2
	where c.chronic between 'E10' and 'E1499'
			and cc.instype_new='0100'
			and p.typearea in (1,3)
	group by p.hospcode
) a on a.hospcode=h.hoscode;

-- ควบคุมระดับน้ำตาลในเลือดได้

REPLACE INTO mob_raw_data 
SELECT @rep_year,h.hoscode as hospcode,h.hosname as hospname
,@group_id as group_id,@group_title as group_title

,'ncd02' as report_id,'ผู้ป่วยเบาหวานควบคุมระดับน้ำตาลในเลือดได้' as report_title
	,a.target
	,a.result as work
,CURDATE() as 'd_process','','','',''

from chospital_amp h

inner join (
	select p.hospcode
		,count(distinct p.pid) target
		,count(distinct if(hba1c = 'Y' and getwordnum(hba1c_lab_result, 1) <= 7, p.pid,
					if(getwordnum(other_lab, 1) = 'FPG' and getwordnum(other_lab, 2) = 'FPG' 
							and getwordnum(other_result,1) between 70 and 130 
										and getwordnum(other_result,2) between 70 and 130, p.pid,
					if(getwordnum(other_lab, 1) = 'DTX' and getwordnum(other_lab, 2) = 'DTX' 
							and getwordnum(other_result,1) between 70 and 130 
										and getwordnum(other_result,2) between 70 and 130, p.pid,
					if((getwordnum(other_lab, 1) = 'FPG' and getwordnum(other_lab, 2) = 'DTX') or
					   (getwordnum(other_lab, 1) = 'DTX' and getwordnum(other_lab, 2) = 'FPG' )
					
							and getwordnum(other_result,1) between 70 and 130 
										and getwordnum(other_result,2) between 70 and 130, p.pid, null))))) result
	from(
		select p.hospcode
			,p.pid
			,group_concat(distinct if(s.labtest = '05', 'Y', null)) hba1c
			,group_concat(if(s.labtest = '05', s.labresult, null) order by s.seq desc) hba1c_lab_result
			,group_concat(if(s.labtest = '01','FPG',if(s.labtest = '03', 'DTX',null)) order by s.seq desc) other_lab
			,group_concat(if(s.labtest = '01',s.labresult,if(s.labtest = '03', s.labresult,null)) order by s.seq desc) other_result
		from person p
		left join chronic c on c.pid=p.pid and c.hospcode=p.hospcode
		left join service cc on cc.pid=p.pid and cc.hospcode=p.hospcode
		left join labfu s on s.pid=p.pid and s.hospcode=p.hospcode 
							and s.labtest in ('05','01', '03') 
							and s.date_serv between @ds1 and @ds2
		where timestampdiff(year,p.birth,@ds1)>15
				and c.chronic between 'E10' and 'E1499'
				and cc.instype='0100'
				and p.typearea in (1,3)
		group by p.hospcode, p.pid
	) p
	group by p.hospcode
) a on a.hospcode=h.hoscode;

-- 

REPLACE INTO mob_raw_data 
SELECT @rep_year,h.hoscode as hospcode,h.hosname as hospname
,@group_id as group_id,@group_title as group_title

,'ncd03' as report_id,'ผู้ป่วยเบาหวานได้รับการตรวจ  Lipid profile' as report_title
	,a.target
	,a.result as work
,CURDATE() as 'd_process','','','',''
from chospital_amp h

left join (
	select p.hospcode
		,count(distinct p.pid) target
		,count(distinct if(s1.labresult>0 and s2.labresult>0 and s3.labresult>0 and s4.labresult>0,p.pid,null)) result
	from person p
	left join chronic c on c.pid=p.pid and c.hospcode=p.hospcode
	left join card cc on cc.pid=p.pid and cc.hospcode=p.hospcode
	left join labfu s1 on s1.pid=p.pid and s1.hospcode=p.hospcode and s1.labtest=06 and s1.date_serv between @ds1 and @ds2
	left join labfu s2 on s2.pid=p.pid and s2.hospcode=p.hospcode and s2.labtest=07 and s2.date_serv between @ds1 and @ds2
	left join labfu s3 on s3.pid=p.pid and s3.hospcode=p.hospcode and s3.labtest=08 and s3.date_serv between @ds1 and @ds2
	left join labfu s4 on s4.pid=p.pid and s4.hospcode=p.hospcode and s4.labtest=09 and s4.date_serv between @ds1 and @ds2
	where c.chronic between 'E10' and 'E1499'
			and cc.instype_new='0100'
			and p.typearea in (1,3)
	group by p.hospcode
) a on a.hospcode=h.hoscode;


--
REPLACE INTO mob_raw_data 
SELECT @rep_year,h.hoscode as hospcode,h.hosname as hospname
,@group_id as group_id,@group_title as group_title

,'ncd04' as report_id,'ผู้ป่วยเความดันโลหิตสูงได้รับการตรวจ  Lipid profile' as report_title
	,a.target
	,a.result as work
,CURDATE() as 'd_process','','','',''
from chospital_amp h

left join (
	select p.hospcode
		,count(distinct p.pid) target
		,count(distinct if(s1.labresult>0 and s2.labresult>0 and s3.labresult>0 and s4.labresult>0,p.pid,null)) result
	from person p
	left join chronic c on c.pid=p.pid and c.hospcode=p.hospcode
	left join card cc on cc.pid=p.pid and cc.hospcode=p.hospcode
	left join labfu s1 on s1.pid=p.pid and s1.hospcode=p.hospcode and s1.labtest=06 and s1.date_serv between @ds1 and @ds2
	left join labfu s2 on s2.pid=p.pid and s2.hospcode=p.hospcode and s2.labtest=07 and s2.date_serv between @ds1 and @ds2
	left join labfu s3 on s3.pid=p.pid and s3.hospcode=p.hospcode and s3.labtest=08 and s3.date_serv between @ds1 and @ds2
	left join labfu s4 on s4.pid=p.pid and s4.hospcode=p.hospcode and s4.labtest=09 and s4.date_serv between @ds1 and @ds2
	where c.chronic between 'I10' and 'I1599'
		and cc.instype_new='0100'
		and p.typearea in (1,3)
	group by p.hospcode
) a on a.hospcode=h.hoscode;


--
REPLACE INTO mob_raw_data 
SELECT @rep_year,h.hoscode as hospcode,h.hosname as hospname
,@group_id as group_id,@group_title as group_title

,'ncd05' as report_id,'ผู้ป่วยเบาหวานได้รับการตรวจ  Microalbumin' as report_title
	,a.target
	,a.result as work
,CURDATE() as 'd_process','','','',''

from chospital_amp h

left join (
	select p.hospcode
		,count(distinct p.pid) target
		,count(distinct if(s.labresult is not null,s.pid,null)) result
	from person p
	left join chronic c on c.pid=p.pid and c.hospcode=p.hospcode
	left join card cc on cc.pid=p.pid and cc.hospcode=p.hospcode
	left join labfu s on s.pid=p.pid and s.hospcode=p.hospcode 
							and s.labtest=12 
							and s.date_serv between @ds1 and @ds2
	where c.chronic between 'E10' and 'E1499'
				and cc.instype_new='0100'
				and p.typearea in (1,3)
	group by p.hospcode
) a on a.hospcode=h.hoscode;

--

REPLACE INTO mob_raw_data 
SELECT @rep_year,h.hoscode as hospcode,h.hosname as hospname
,@group_id as group_id,@group_title as group_title

,'ncd06' as report_id,'ผู้ป่วยเบาหวานได้รับการตรวจจอประสาทตา' as report_title
	,a.target
	,a.result as work
,CURDATE() as 'd_process','','','',''

from chospital_amp h

left join (
	select p.hospcode
		,count(distinct p.pid) target
		,count(distinct if(s.retina in (1,2,3,4),s.pid,null)) result
	from person p
	left join chronic c on c.pid=p.pid and c.hospcode=p.hospcode
	left join card cc on cc.pid=p.pid and cc.hospcode=p.hospcode
	left join chronicfu s on s.pid=p.pid and s.hospcode=p.hospcode 
							and s.date_serv between @ds1 and @ds2
	where c.chronic between 'E10' and 'E1499'
			and cc.instype_new='0100'
			and p.typearea in (1,3)
	group by p.hospcode
) a on a.hospcode=h.hoscode;

--

REPLACE INTO mob_raw_data 
SELECT @rep_year,h.hoscode as hospcode,h.hosname as hospname
,@group_id as group_id,@group_title as group_title

,'ncd07' as report_id,'ผู้ป่วยเบาหวานได้รับการตรวจเท้า' as report_title
	,a.target
	,a.result as work
,CURDATE() as 'd_process','','','',''
from chospital_amp h

left join (
	select p.hospcode,count(distinct p.pid) target
	,count(distinct if(s.foot in (1,3),s.pid,null)) result
	from person p
	left join chronic c on c.pid=p.pid and c.hospcode=p.hospcode
	left join card cc on cc.pid=p.pid and cc.hospcode=p.hospcode
	left join chronicfu s on s.pid=p.pid and s.hospcode=p.hospcode 
							and s.date_serv between @ds1 and @ds2
	where c.chronic between 'E10' and 'E1499'
			and cc.instype_new='0100'
			and p.typearea in (1,3)
	group by p.hospcode
) a on a.hospcode=h.hoscode;

--
REPLACE INTO mob_raw_data 
SELECT @rep_year,h.hoscode as hospcode,h.hosname as hospname
,@group_id as group_id,@group_title as group_title

,'ncd08' as report_id,'ผู้ป่วยเบาหวานมีผล LDLน้อยกว่า 100' as report_title
	,a.target
	,a.result as work
,CURDATE() as 'd_process','','','',''
from chospital_amp h

left join (
	select p.hospcode
		,count(distinct p.pid) target
		,sum(if(labresult<100,1,0)) result
	from (
		select p.hospcode
			,p.cid
			,p.hn
			,p.pid
			,concat(p.name,' ',p.lname) ptname
			,timestampdiff(year,p.birth,@ds1) age
			,instype_new
			,c.chronic
			,s.date_serv
			,s.labresult
			,if(s.labresult<100,'Y',null) OK
		from person p
		left join chronic c on c.pid=p.pid and c.hospcode=p.hospcode
		left join card cc on cc.pid=p.pid and cc.hospcode=p.hospcode
		left join labfu s on s.pid=p.pid and s.hospcode=p.hospcode and s.date_serv between @ds1 and @ds2
		where c.chronic between 'E10' and 'E1499'
			and s.labtest=09
			and cc.instype_new=0100
			and p.typearea in (1,3)
		group by p.hospcode,p.pid
	) p
	group by p.hospcode
) a on a.hospcode=h.hoscode;

--
REPLACE INTO mob_raw_data 
SELECT @rep_year,h.hoscode as hospcode,h.hosname as hospname
,@group_id as group_id,@group_title as group_title

,'ncd09' as report_id,'ผู้ป่วยเบาหวานความดันที่ควบคุมได้ 2 ครั้งสุดท้าย' as report_title
	,a.target
	,a.result as work
,CURDATE() as 'd_process','','','',''
from chospital_amp h

left join (
	select p.hospcode
		,count(distinct p.pid) target
		,count(distinct if(p.diag='I10' and sbp1<140 and sbp2<140 and dbp1<80 and dbp2<80,p.pid,null)) result
	from (
		select p.hospcode
			,p.cid
			,p.hn
			,p.pid
			,concat(p.name,' ',p.lname) ptname
			,instype_new
			,c.clinic
			,group_concat(distinct if(d.diagcode between 'I10' and 'I1599' or d.diagcode in ('I674')
				or d.diagcode between 'E10' and 'E1499','I10',null)) Diag 
			,getwordnum(group_concat(if(sbp>0,sbp,null) order by s.seq desc),1) sbp1
			,getwordnum(group_concat(if(sbp>0,sbp,null) order by s.seq desc),2) sbp2
			,getwordnum(group_concat(if(dbp>0,dbp,null) order by s.seq desc),1) dbp1
			,getwordnum(group_concat(if(dbp>0,dbp,null) order by s.seq desc),1) dbp2
		from person p
		left join (
			select c.hospcode
				,c.pid
				,group_concat(distinct if(c.chronic between 'E10' and 'E1499','DM','HT') order by c.chronic) clinic 
			from chronic c 
			where c.chronic between 'E10' and 'E1499' or c.chronic between 'I10' and 'I1599'
			group by c.hospcode,c.pid
		) c on c.pid=p.pid and c.hospcode=p.hospcode
		left join card cc on cc.pid=p.pid and cc.hospcode=p.hospcode
		left join service s on s.pid=p.pid and s.hospcode=p.hospcode and s.date_serv between @ds1 and @ds2
		left join diagnosis_opd d on s.pid=d.pid and s.hospcode=d.hospcode and s.seq=d.seq and d.diagtype=1

		where c.clinic='DM,HT'
			and timestampdiff(year,p.birth,@ds1)>=15
			and cc.instype_new=0100
			and p.typearea in (1,3)
		group by p.hospcode,p.pid
	) p
	group by p.hospcode
) a on a.hospcode=h.hoscode;

--
REPLACE INTO mob_raw_data 
SELECT @rep_year,h.hoscode as hospcode,h.hosname as hospname
,@group_id as group_id,@group_title as group_title

,'ncd10' as report_id,'ผู้ป่วยความดันที่ควบคุมได้ 2 ครั้งสุดท้าย' as report_title
	,a.target
	,a.result as work
,CURDATE() as 'd_process','','','',''
from chospital_amp h

left join (
	select p.hospcode
		,count(distinct p.pid) target
		,count(distinct if(p.diag='I10' and sbp1<140 and sbp2<140 and dbp1<90 and dbp2<90,p.pid,null)) result
	from (
		select p.hospcode
			,p.cid,p.hn
			,p.pid
			,concat(p.name,' ',p.lname) ptname
			,instype_new,c.clinic
			,group_concat(distinct if(d.diagcode between 'I10' and 'I1599','I10',null)) Diag 
			,getwordnum(group_concat(if(sbp>0,sbp,null) order by s.seq desc),1) sbp1
			,getwordnum(group_concat(if(sbp>0,sbp,null) order by s.seq desc),2) sbp2
			,getwordnum(group_concat(if(dbp>0,dbp,null) order by s.seq desc),1) dbp1
			,getwordnum(group_concat(if(dbp>0,dbp,null) order by s.seq desc),1) dbp2
		from person p
		left join (
			select c.hospcode
				,c.pid
				,group_concat(distinct if(c.chronic between 'E10' and 'E1499','DM','HT') order by c.chronic) clinic 
			from chronic c 
			where c.chronic between 'E10' and 'E1499' or c.chronic between 'I10' and 'I1599'
			group by c.hospcode,c.pid
		) c on c.pid=p.pid and c.hospcode=p.hospcode

		left join card cc on cc.pid=p.pid and cc.hospcode=p.hospcode
		left join service s on s.pid=p.pid and s.hospcode=p.hospcode 
								and s.date_serv between @ds1 and @ds2
		left join diagnosis_opd d on s.pid=d.pid and s.hospcode=d.hospcode 
									and s.seq=d.seq and d.diagtype=1

		where c.clinic='HT'
				and cc.instype_new=0100
				and p.typearea in (1,3)
		group by p.hospcode,p.pid
	) p
	group by p.hospcode
) a on a.hospcode=h.hoscode;

--
REPLACE INTO mob_raw_data 
SELECT @rep_year,h.hoscode as hospcode,h.hosname as hospname
,@group_id as group_id,@group_title as group_title

,'ncd11' as report_id,'ผู้ป่วยเบาหวานพบภาวะแทรกซ้อนทางไต' as report_title
	,a.target
	,a.result as work
,CURDATE() as 'd_process','','','',''
from chospital_amp h
left join (
	select p.hospcode
		,count(distinct p.pid) target
		,count(distinct if(labresult=2 or labresult>=300,p.pid,null)) result
	from (
		select p.hospcode
			,p.cid
			,p.hn
			,p.pid
			,concat(p.name,' ',p.lname) ptname
			,timestampdiff(year,p.birth,@ds1) age
			,instype_new
			,c.chronic
			,s.date_serv
			,s.labresult
			,if(s.labresult=2 or s.labresult>=300,'Y',null) OK
		from person p
		left join chronic c on c.pid=p.pid and c.hospcode=p.hospcode
		left join card cc on cc.pid=p.pid and cc.hospcode=p.hospcode
		left join labfu s on s.pid=p.pid and s.hospcode=p.hospcode /*and s.date_serv between @ds1 and @ds2*/
		where c.chronic between 'E10' and 'E1499'
			and s.labtest=12
			and cc.instype_new=0100
			and p.typearea in (1,3)
		group by p.hospcode,p.pid
	) p
	group by p.hospcode
) a on a.hospcode=h.hoscode;

--
REPLACE INTO mob_raw_data 
SELECT @rep_year,h.hoscode as hospcode,h.hosname as hospname
,@group_id as group_id,@group_title as group_title

,'ncd12' as report_id,'ผู้ป่วยความดันพบภาวะแทรกซ้อนทางไต' as report_title
	,a.target
	,a.result as work
,CURDATE() as 'd_process','','','',''
from chospital_amp h

left join (
	select p.hospcode
		,count(distinct p.pid) target
		,sum(if(p.lab14=2,1,if(p.sex=1 and p.lab11>1.5,1,if(p.sex=2 and p.lab11>1.4,1,0)))) result
	from (
		select p.hospcode
			,p.cid
			,p.hn
			,p.pid
			,concat(p.name,' ',p.lname) ptname
			,p.sex
			,instype_new
			,getwordnum(group_concat(if(s.labtest=14,s.labresult,null) order by s.date_serv desc),1) Lab14
			,getwordnum(group_concat(if(s.labtest=11,s.labresult,null) order by s.date_serv desc),1) Lab11
		from person p
		left join (
			select c.hospcode,c.pid
				,group_concat(distinct if(c.chronic between 'E10' and 'E1499','DM','HT') order by c.chronic) clinic 
			from chronic c 
			where c.chronic between 'E10' and 'E1499' or c.chronic between 'I10' and 'I1599'
			group by c.hospcode,c.pid
		) c on c.pid=p.pid and c.hospcode=p.hospcode
		left join card cc on cc.pid=p.pid and cc.hospcode=p.hospcode
		left join labfu s on s.pid=p.pid and s.hospcode=p.hospcode 
								/*and s.date_serv between @ds1 and @ds2*/
		where c.clinic='HT'
			and s.labtest in (14,11)
			and cc.instype_new=0100
			and p.typearea in (1,3)
		group by p.hospcode,p.pid
	) p
	group by p.hospcode
) a on a.hospcode=h.hoscode;




END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for api_screen
-- ----------------------------
DROP PROCEDURE IF EXISTS `api_screen`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `api_screen`(IN `rep_year` varchar(4),IN `d_start` varchar(10),IN `d_end` varchar(10))
BEGIN	
	
SET @rep_year = rep_year;
SET @ds1 := d_start;
SET @ds2 := d_end;
SET @group_id = 'screen';
SET @group_title = 'คัดกรองโรค';

-- DM >35
REPLACE INTO mob_raw_data 
SELECT @rep_year,h.hoscode as hospcode,h.hosname as hospname
,@group_id as group_id,@group_title as group_title

,'screen1' as report_id,'คัดกรองเบาหวานอายุ 35ปีขึ้นไป' as report_title
	,a.target
	,a.result as work
,CURDATE() as 'd_process','','','',''

from chospital_amp h

left join (
	select p.hospcode
		,count(distinct p.pid) target
		,count(distinct if(a.date_serv is not null,a.pid,null)) result
		/*,count(distinct if(a.weight>0 and height>0
		and htfamily not in (0,9)
		and dmfamily not in (0,9)
		and sbp_1>0 and dbp_1>0 and bslevel>0,a.pid,null)) result*/
	from person p

	left join ncdscreen a on a.pid=p.pid and a.hospcode=p.hospcode 
								and a.date_serv between @ds1 and @ds2

	left join chronic c on c.pid=p.pid and c.hospcode=p.hospcode 
							and c.chronic between 'E10' and 'E1499' 
							and c.date_diag<@ds1

	where timestampdiff(year,p.birth,@ds1)>=35
			and p.typearea in (1,3)
			and c.pid is null
	group by p.hospcode
) a on a.hospcode=h.hoscode;

-- HT >35
REPLACE INTO mob_raw_data 
SELECT @rep_year,h.hoscode as hospcode,h.hosname as hospname
,@group_id as group_id,@group_title as group_title

,'screen2' as report_id,'คัดกรองความดันอายุ 35ปีขึ้นไป' as report_title
	,a.target
	,a.result as work
,CURDATE() as 'd_process','','','',''

from chospital_amp h

left join (
	select p.hospcode
		,count(distinct p.pid) target
		,count(distinct if(a.date_serv is not null,a.pid,null)) result
	from person p
	left join ncdscreen a on a.pid=p.pid and a.hospcode=p.hospcode 
							and a.date_serv between @ds1 and @ds2
	left join chronic c on c.pid=p.pid and c.hospcode=p.hospcode 
							and c.chronic between 'I10' and 'I1599' 
							and c.date_diag<@ds1
	where timestampdiff(year,p.birth,@ds1)>=35
		and p.typearea in (1,3)
		and c.pid is null
	group by p.hospcode
) a on a.hospcode=h.hoscode;

-- DM รายใหม่ จาก preDM
REPLACE INTO mob_raw_data 
SELECT @rep_year,h.hoscode as hospcode,h.hosname as hospname
,@group_id as group_id,@group_title as group_title

,'screen3' as report_id,'ผู้ป่วยเบาหวานรายใหม่ จากกลุ่ม Pre-DM' as report_title
	,a.target
	,a.result as work
,CURDATE() as 'd_process','','','',''

from chospital_amp h

left join (
	select p.hospcode
				,count(distinct if(p.DM_target='NODM',p.pid,null)) target
				,count(distinct if(p.DM_work='NODM',p.pid,null)) result
	from(
		select p.hospcode
					,p.pid
					,if(c.pid is null, 'NODM', null) DM_work
					,if(cc.pid is null, 'NODM', null) DM_target
					/*,c.DATE_DIAG
					,p.cid
					,p.hn
					,concat(p.name,' ',p.lname) ptname
					,timestampdiff(year,p.birth,@ds1) age
					,p.typearea
					,p.nation
					,p.discharge 
					,n.date_serv
					,n.bslevel*/
		from person p
		left join ncdscreen n on n.pid=p.pid and n.hospcode=p.hospcode
		left join chronic c on c.pid=p.pid and c.hospcode=p.hospcode 
								and c.chronic between 'E10' and 'E1499' 
								and c.DATE_DIAG between @ds1 and @ds2

		left join chronic cc on cc.pid=p.pid and cc.hospcode=p.hospcode and cc.chronic between 'E10' and 'E1499' 
													and c.DATE_DIAG >= n.date_serv

		where timestampdiff(year,p.birth,@ds1)>=35
			and p.typearea in (1,3)
			and p.nation='099'
			and p.discharge='9'
			and n.date_serv between '2013-4-1' and '2014-3-31'  #1 เมษายน 56 - 31 มีนาคม 57
			and n.bslevel between 100 and 125
	) p
	group by p.hospcode
) a on a.hospcode=h.hoscode;


-- HT รายใหม่ จาก Pre-HT
REPLACE INTO mob_raw_data 
SELECT @rep_year,h.hoscode as hospcode,h.hosname as hospname
,@group_id as group_id,@group_title as group_title

,'screen4' as report_id,'ผู้ป่วยความดันโลหิตสูงรายใหม่ จากกลุ่ม Pre-HT' as report_title
	,a.target
	,a.result as work
,CURDATE() as 'd_process','','','',''

from chospital_amp h

left join (
	select p.hospcode
		,count(distinct if(p.HT_target='NOHT',p.pid,null)) target
		,count(distinct if(p.HT_work='NOHT',p.pid,null)) result
	from (
		select p.hospcode, p.pid, p.cid ,p.hn
			,concat(p.name,' ',p.lname) ptname
			,timestampdiff(year,p.birth,@ds1) age
			,p.typearea, p.nation
			,p.discharge, n.date_serv
			,n.bslevel, c.date_diag
			,if(c.pid is null, 'NOHT', null) HT_work
			,if(cc.pid is null, 'NOHT', null) HT_target
		from person p
		left join ncdscreen n on n.pid=p.pid and n.hospcode=p.hospcode
		left join chronic c on c.pid=p.pid and c.hospcode=p.hospcode 
								and c.chronic between 'I10' and 'I1599' 
								and c.date_diag between @ds1 and @ds2

		left join chronic cc on cc.pid=p.pid and cc.hospcode=p.hospcode 
								and cc.chronic between 'I10' and 'I1599' 
								and cc.date_diag >= n.DATE_SERV

		where timestampdiff(year,p.birth,@ds1)>=35
				and p.typearea in (1,3)
				and p.nation='099'
				and p.discharge='9'
				and n.date_serv between '2013-4-1' and '2014-3-31'  #1 เมษายน 56 - 31 มีนาคม 57
				and n.sbp_2 between 130 and 139
				and n.dbp_2 between 80 and 89
	) p
	group by p.hospcode
) a on a.hospcode=h.hoscode;




END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for api_step1_mob_raw_data
-- ----------------------------
DROP PROCEDURE IF EXISTS `api_step1_mob_raw_data`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `api_step1_mob_raw_data`()
BEGIN

TRUNCATE mob_raw_data;
TRUNCATE mob_report_main;
TRUNCATE mob_nav_menu;

call api_mom(2558,'2014-10-01','2015-09-30');
call api_epi(2558,'2014-10-01','2015-09-30');
call api_screen(2558,'2014-04-01','2015-03-31');
call api_ncd(2558,'2014-04-01','2015-03-31');

-- end raw DATA
UPDATE mob_raw_data m set m.target = 0 where m.target IS NULL  OR m.target = '';
UPDATE mob_raw_data m set m.work = 0 where m.work IS NULL  OR m.target = '';

CALL api_step2_mob_report_main;
CALL api_step3_mob_nav_menu;

UPDATE mob_report_main t set t.image = 'http://utehn.plkhealth.go.th/dhdc/app/img/qof.png';

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for api_step2_mob_report_main
-- ----------------------------
DROP PROCEDURE IF EXISTS `api_step2_mob_report_main`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `api_step2_mob_report_main`()
BEGIN
	
	#DROP TABLE IF EXISTS mob_report_main;
REPLACE INTO mob_report_main (
SELECT m.group_id,m.report_id,m.report_title
,ROUND(SUM(m.work)*100/SUM(m.target),2) as percent
,CURDATE() as d_process,'image' as 'image'

from mob_raw_data m WHERE m.rep_year = '2558'

GROUP BY m.group_id,m.report_id );

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for api_step3_mob_nav_menu
-- ----------------------------
DROP PROCEDURE IF EXISTS `api_step3_mob_nav_menu`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `api_step3_mob_nav_menu`()
BEGIN
	
	#DROP TABLE if EXISTS mob_nav_menu;
REPLACE INTO mob_nav_menu
SELECT  t.group_id,t.group_title,COUNT(t.group_id) as ncount from (
SELECT  m.group_id,m.group_title,m.report_id from mob_raw_data m
GROUP BY m.group_id,m.report_id
) t GROUP BY t.group_id;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cal_chart_dial_1
-- ----------------------------
DROP PROCEDURE IF EXISTS `cal_chart_dial_1`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cal_chart_dial_1`(IN `bdg_date` varchar(10))
BEGIN	
	UPDATE sys_check_process t set t.fnc_name = 'cal_chart_dial_1' , t.time = NOW();
	
	set @start='2014-10-01';
	set @end=CURDATE();
	set @bdg_date = bdg_date;

DROP TABLE IF EXISTS sys_chart_dial_1 ;
CREATE TABLE sys_chart_dial_1 select * from (

select  h.hoscode as hospcode,h.hosname as hospname,


(SELECT hos_target from
 (select person.hospcode , count(distinct person.pid) as hos_target from person  
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' 
           and (TIMESTAMPDIFF(YEAR,person.birth,@bdg_date) >= 35 ) group by person.hospcode ) as t
where  t.hospcode = h.hoscode
) as target ,
(SELECT  hos_chronic from 
          (select person.hospcode,count(distinct(person.pid)) as hos_chronic from chronic  
           inner join person on chronic.hospcode = person.hospcode and chronic.pid = person.pid 
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' and  ((chronic.chronic between 'E10' and 'E14') or (chronic.chronic between 'I10' and 'I15')) 
           and (TIMESTAMPDIFF(YEAR,person.birth,@bdg_date) >= 35 )  group by person.hospcode) as c
where c.hospcode  = h.hoscode
) as chronic,
(SELECT hos_doit from
          (select person.hospcode,count(distinct(person.pid)) as hos_doit from ncdscreen  
           inner join person on ncdscreen.hospcode = person.hospcode and ncdscreen.pid = person.pid 
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' and date_serv between @start and @end 
           and (TIMESTAMPDIFF(YEAR,person.birth,date_serv) >= 35 )  group by person.hospcode) as r
where r.hospcode = h.hoscode
) as result 



from chospital_amp h

order by hoscode asc

) t;

UPDATE sys_check_process t set t.fnc_name = 'end_cal_chart_dial_1' , t.time = NOW();

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cal_chart_dial_2
-- ----------------------------
DROP PROCEDURE IF EXISTS `cal_chart_dial_2`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cal_chart_dial_2`(IN `bdg_date`  varchar(10))
BEGIN
	UPDATE sys_check_process t set t.fnc_name = 'cal_chart_dial_2' , t.time = NOW();

	set @start='2014-10-01';
	set @end=CURDATE();
	set @bdg_date = bdg_date;

DROP TABLE IF EXISTS sys_chart_dial_2 ;
CREATE TABLE sys_chart_dial_2 select * from (

select  h.hoscode as hospcode ,h.hosname as hospname,


(SELECT  hos_chronic from 
          (select person.hospcode,count(distinct(person.pid)) as hos_chronic from chronic  
           inner join person on chronic.hospcode = person.hospcode and chronic.pid = person.pid
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' and  (chronic.chronic between 'E10' and 'E14')  
           and (TIMESTAMPDIFF(YEAR,person.birth,@bdg_date) >= 35 )  group by person.hospcode) as c
where c.hospcode  = h.hoscode
) as target,
(SELECT hos_doit from
          (select person.hospcode,count(distinct(person.pid)) as hos_doit from chronic  
           inner join person on chronic.hospcode = person.hospcode and chronic.pid = person.pid            
           inner join labfu on person.hospcode = labfu.hospcode and person.pid = labfu.pid 
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' 
           and labfu.labtest = '05' and (labfu.date_serv BETWEEN @start and @end ) 
           and (TIMESTAMPDIFF(YEAR,person.birth,labfu.date_serv) >= 35 )  group by person.hospcode) as r
where r.hospcode = h.hoscode
) as result ,
(SELECT hos_doit from
          (select person.hospcode,count(distinct(person.pid)) as hos_doit from chronic  
           inner join person on chronic.hospcode = person.hospcode and chronic.pid = person.pid 
           inner join labfu on person.hospcode = labfu.hospcode and person.pid = labfu.pid 
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' 
           and labfu.labtest = '05' and labfu.LABRESULT < 7 and (labfu.date_serv BETWEEN @start and @end ) 
           and (TIMESTAMPDIFF(YEAR,person.birth,labfu.date_serv) >= 35 )  group by person.hospcode) as r
where r.hospcode = h.hoscode
) as control


from chospital_amp h
order by hoscode asc



) t;

UPDATE sys_check_process t set t.fnc_name = 'end_cal_chart_dial_2' , t.time = NOW();

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cal_chart_dial_3
-- ----------------------------
DROP PROCEDURE IF EXISTS `cal_chart_dial_3`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cal_chart_dial_3`(IN `bdg_date`  varchar(10))
BEGIN
	UPDATE sys_check_process t set t.fnc_name = 'cal_chart_dial_3' , t.time = NOW();
	set @start='2014-10-01';
	set @end=CURDATE();
	set @bdg_date = bdg_date;

DROP TABLE IF EXISTS sys_chart_dial_3 ;
CREATE TABLE sys_chart_dial_3 select * from (


select  h.hoscode as hospcode ,h.hosname as hospname,

(SELECT  hos_chronic from 
          (select person.hospcode,count(distinct(person.pid)) as hos_chronic from chronic  
           inner join person on chronic.hospcode = person.hospcode and chronic.pid = person.pid          
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' and  (chronic.chronic between 'I10' and 'I15')  
           and (TIMESTAMPDIFF(YEAR,person.birth,@bdg_date) >= 35 )  group by person.hospcode) as c
where c.hospcode  = h.hoscode
) as target,
(SELECT hos_doit from
          (select person.hospcode,count(distinct(person.pid)) as hos_doit from chronic  
           inner join person on chronic.hospcode = person.hospcode and chronic.pid = person.pid 
           inner join chronicfu on person.hospcode = chronicfu.hospcode and person.pid = chronicfu.pid 
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' and  (chronic.chronic between 'I10' and 'I15')  
           and (chronicfu.sbp <140 and chronicfu.dbp < 90) and (chronicfu.date_serv BETWEEN @start and @end ) 
           and (TIMESTAMPDIFF(YEAR,person.birth,chronicfu.date_serv) >= 35 )  group by person.hospcode) as r
where r.hospcode = h.hoscode
) as result 

from chospital_amp h

order by distcode,hoscode asc

) t;

UPDATE sys_check_process t set t.fnc_name = 'end_cal_chart_dial_3' , t.time = NOW();

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cal_chart_dial_4
-- ----------------------------
DROP PROCEDURE IF EXISTS `cal_chart_dial_4`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cal_chart_dial_4`()
BEGIN
	UPDATE sys_check_process t set t.fnc_name = 'cal_chart_dial_4', t.time = NOW();
set @start='2014-10-01';
set @end=CURDATE();

DROP TABLE IF EXISTS sys_chart_dial_4 ;
CREATE TABLE sys_chart_dial_4 select * from (

select h.hoscode as hospcode ,h.hosname as hospname,
(select count(distinct CID) as num 
from 
(select
p.HOSPCODE,p.CID,p.PID,p.PRENAME,p.NAME,p.LNAME,
la.LMP,la.BDATE,la.BTYPE,
(select ga_date 
from 
(select
a.HOSPCODE,
a.PID,
a.DATE_SERV,
a.ANCNO,
a.GA,
l.LMP,
datediff(a.DATE_SERV,l.LMP) as ga_date
from
anc as a,
labor as l 
where a.HOSPCODE = l.HOSPCODE 
and a.PID = l.PID) as a2
where a2.ga_date between '7' and '84' and a2.PID=p.PID and a2.HOSPCODE=p.HOSPCODE
group by a2.PID
) as anc_no1,
(select ga_date 
from 
(select
a.HOSPCODE,a.PID,
a.DATE_SERV,a.ANCNO,a.GA,
l.LMP,
datediff(a.DATE_SERV,l.LMP) as ga_date
from
anc as a,
labor as l 
where a.HOSPCODE = l.HOSPCODE 
and a.PID = l.PID) as a2
where a2.ga_date between '85' and '146'   and a2.PID=p.PID and a2.HOSPCODE=p.HOSPCODE
group by a2.PID
) as anc_no2,
(select ga_date 
from 
(select a.HOSPCODE,a.PID,a.DATE_SERV,a.ANCNO,a.GA,
l.LMP,
datediff(a.DATE_SERV,l.LMP) as ga_date
from
anc as a,
labor as l 
where a.HOSPCODE = l.HOSPCODE 
and a.PID = l.PID) as a2
where a2.ga_date between '147' and '202'    and a2.PID=p.PID and a2.HOSPCODE=p.HOSPCODE
group by a2.PID
) as anc_no3,
(select ga_date 
from 
(select a.HOSPCODE,a.PID,a.DATE_SERV,a.ANCNO,a.GA,l.LMP,
datediff(a.DATE_SERV,l.LMP) as ga_date
from
anc as a,
labor as l 
where a.HOSPCODE = l.HOSPCODE 
and a.PID = l.PID) as a2
where a2.ga_date between '203' and '244'    and a2.PID=p.PID and a2.HOSPCODE=p.HOSPCODE
group by a2.PID
) as anc_no4,
(
select ga_date 
from 
(select
a.HOSPCODE,
a.PID,
a.DATE_SERV,
a.ANCNO,
a.GA,
l.LMP,
datediff(a.DATE_SERV,l.LMP) as ga_date
from
anc as a,
labor as l 
where a.HOSPCODE = l.HOSPCODE 
and a.PID = l.PID) as a2
where a2.ga_date between '245' and '286'    and a2.PID=p.PID and a2.HOSPCODE=p.HOSPCODE
group by a2.PID
) as anc_no5
from
labor as la
,person as p 
where  la.PID = p.PID 
and p.HOSPCODE = la.HOSPCODE
and la.BDATE between @start and @end
and p.NATION='099' and p.DISCHARGE='9' and p.TYPEAREA in ('1','3') and la.BTYPE<>'6'
order by p.HOSPCODE 
) as anc5t where anc5t.HOSPCODE=h.hoscode
) as target,
(
select count(distinct CID) as num 
from 
(select
p.HOSPCODE,p.CID,p.PID,p.PRENAME,p.NAME,p.LNAME,
la.LMP,la.BDATE,la.BTYPE,
(select ga_date 
from 
(select a.HOSPCODE,a.PID,a.DATE_SERV,a.ANCNO,a.GA,l.LMP,
datediff(a.DATE_SERV,l.LMP) as ga_date
from
anc as a,
labor as l 
where a.HOSPCODE = l.HOSPCODE 
and a.PID = l.PID) as a2
where a2.ga_date between '7' and '84' and a2.PID=p.PID and a2.HOSPCODE=p.HOSPCODE
group by a2.PID
) as anc_no1,
(select ga_date 
from 
(select
a.HOSPCODE,a.PID,a.DATE_SERV,a.ANCNO,a.GA,l.LMP,datediff(a.DATE_SERV,l.LMP) as ga_date
from anc as a,
labor as l 
where a.HOSPCODE = l.HOSPCODE 
and a.PID = l.PID) as a2
where a2.ga_date between '85' and '146'   and a2.PID=p.PID and a2.HOSPCODE=p.HOSPCODE
group by a2.PID
) as anc_no2,
(select ga_date 
from  (select a.HOSPCODE,a.PID,a.DATE_SERV,a.ANCNO,a.GA,l.LMP,datediff(a.DATE_SERV,l.LMP) as ga_date
from
anc as a,labor as l 
where a.HOSPCODE = l.HOSPCODE 
and a.PID = l.PID) as a2
where a2.ga_date between '147' and '202'    and a2.PID=p.PID and a2.HOSPCODE=p.HOSPCODE
group by a2.PID
) as anc_no3,
(select ga_date 
from 
(select a.HOSPCODE,a.PID,a.DATE_SERV,a.ANCNO,a.GA,l.LMP,datediff(a.DATE_SERV,l.LMP) as ga_date
from anc as a,labor as l 
where a.HOSPCODE = l.HOSPCODE 
and a.PID = l.PID) as a2
where a2.ga_date between '203' and '244'    and a2.PID=p.PID and a2.HOSPCODE=p.HOSPCODE
group by a2.PID
) as anc_no4,
(
select ga_date 
from 
(select
a.HOSPCODE,
a.PID,
a.DATE_SERV,
a.ANCNO,
a.GA,
l.LMP,
datediff(a.DATE_SERV,l.LMP) as ga_date
from
anc as a,
labor as l 
where a.HOSPCODE = l.HOSPCODE 
and a.PID = l.PID) as a2
where a2.ga_date between '245' and '286'    and a2.PID=p.PID and a2.HOSPCODE=p.HOSPCODE
group by a2.PID
) as anc_no5
from
labor as la
,person as p 
where  la.PID = p.PID 
and p.HOSPCODE = la.HOSPCODE
and la.BDATE between @start and @end
and p.NATION='099' and p.DISCHARGE='9' and p.TYPEAREA in ('1','3') and la.BTYPE<>'6'
order by p.HOSPCODE 
) as anc5t where anc5t.HOSPCODE=h.hoscode 
and anc_no1 is not null and anc_no2 is not null and anc_no3 is not null and anc_no4 is not null and anc_no5 is not null
) as result

from chospital_amp h

order by distcode,hoscode asc


) t;

UPDATE sys_check_process t set t.fnc_name = 'end_cal_chart_dial_4', t.time = NOW();

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cal_chart_dial_5
-- ----------------------------
DROP PROCEDURE IF EXISTS `cal_chart_dial_5`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cal_chart_dial_5`()
BEGIN
	UPDATE sys_check_process t set t.fnc_name = 'cal_chart_dial_5' , t.time = NOW();
set @start='2014-04-01';
set @end=CURDATE();

DROP TABLE IF EXISTS sys_chart_dial_5 ;
CREATE TABLE sys_chart_dial_5 select * from (

select h.hoscode as hospcode ,h.hosname as hospname,
(select count(distinct CID) as num 
from 
(select
p.HOSPCODE,p.CID,p.PID,p.PRENAME,p.NAME,p.LNAME,
pn.LMP,a.DATE_SERV,
(select ga_date 
from 
(select
a.HOSPCODE,
a.PID,
a.DATE_SERV,
a.ANCNO,
a.GA,
pn.LMP,
datediff(a.DATE_SERV,pn.LMP) as ga_date
from
anc as a,
prenatal as pn
where a.HOSPCODE = pn.HOSPCODE 
and a.PID = pn.PID) as a2
where a2.ga_date between '7' and '84' and a2.PID=p.PID and a2.HOSPCODE=p.HOSPCODE
group by a2.PID
) as anc_no1
from
prenatal as pn
,anc as a
,person as p 
where  pn.PID = p.PID and p.HOSPCODE = pn.HOSPCODE
and pn.PID = a.PID and pn.HOSPCODE = a.HOSPCODE
and a.DATE_SERV between @start and @end
and p.NATION='099' and p.DISCHARGE='9' and p.TYPEAREA in ('1','3') 
order by p.HOSPCODE 
) as anc12wks where anc12wks.HOSPCODE=h.hoscode
) as target,
(
select count(distinct CID) as num 
from 
(select
p.HOSPCODE,p.CID,p.PID,p.PRENAME,p.NAME,p.LNAME,
a.DATE_SERV,
(select ga_date 
from 
(select a.HOSPCODE,a.PID,a.DATE_SERV,a.ANCNO,a.GA,pn.LMP,
datediff(a.DATE_SERV,pn.LMP) as ga_date
from
anc as a,
prenatal as pn
where a.HOSPCODE = pn.HOSPCODE 
and a.PID = pn.PID) as a2
where a2.ga_date between '7' and '84' and a2.PID=p.PID and a2.HOSPCODE=p.HOSPCODE
group by a2.PID
) as anc_no1
from
anc as a
,person as p 
where  a.PID = p.PID 
and p.HOSPCODE = a.HOSPCODE
and a.DATE_SERV between @start and @end
and p.NATION='099' and p.DISCHARGE='9' and p.TYPEAREA in ('1','3') 
order by p.HOSPCODE 
) as anc12wks where anc12wks.HOSPCODE=h.hoscode 
and anc_no1 is not null 
) as result

from chospital_amp h

order by distcode,hoscode asc

) t;

UPDATE sys_check_process t set t.fnc_name = 'end_cal_chart_dial_5' , t.time = NOW();

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cal_chart_dial_6
-- ----------------------------
DROP PROCEDURE IF EXISTS `cal_chart_dial_6`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cal_chart_dial_6`()
BEGIN
UPDATE sys_check_process t set t.fnc_name = 'cal_chart_dial_6', t.time = NOW();
	
set @start='2014-10-01';
set @end=CURDATE();

DROP TABLE IF EXISTS sys_chart_dial_6 ;
CREATE TABLE sys_chart_dial_6 select * from (

select  h.hoscode as hospcode ,h.hosname as hospname,
(SELECT hos_target from
 (select person.hospcode , count(distinct person.pid) as hos_target from person  
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' 
           and (person.birth BETWEEN DATE_ADD(@start,INTERVAL -71 month) and DATE_ADD(@end,INTERVAL -71 month)) group by person.hospcode ) as t
where  t.hospcode = h.hoscode
) as target ,
(SELECT hos_doit from
          (select person.hospcode,count(distinct(person.pid)) as hos_doit from epi  inner join person on epi.hospcode = person.hospcode and epi.pid = person.pid 
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099'  
           and (person.birth BETWEEN DATE_ADD(@start,INTERVAL -71 month) and DATE_ADD(@end,INTERVAL -71 month))  and epi.VACCINETYPE = '035'  group by person.hospcode) as r
where r.hospcode = h.hoscode
) as result 

from chospital_amp h

order by distcode,hoscode asc


) t;

UPDATE sys_check_process t set t.fnc_name = 'end_cal_chart_dial_6', t.time = NOW();

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cal_chart_dial_7
-- ----------------------------
DROP PROCEDURE IF EXISTS `cal_chart_dial_7`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cal_chart_dial_7`(IN `bdg_date`  varchar(10))
BEGIN
	UPDATE sys_check_process t set t.fnc_name = 'cal_chart_dial_7' , t.time = NOW();
set @start='2014-10-01';
set @end=CURDATE();
set @bdg_date = bdg_date;

DROP TABLE IF EXISTS sys_chart_dial_7 ;
CREATE TABLE sys_chart_dial_7 select * from (

select  '90' as base,format(sum(ncdscreen_all.htresult*100)/sum(ncdscreen_all.httarget),2) as result from 
(select  h.distcode as amphur,

(SELECT hos_target from
 (select person.hospcode , count(*) as hos_target from person  
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' 
           and (TIMESTAMPDIFF(YEAR,person.birth,@bdg_date) >= 35 )
           and concat(person.hospcode ,person.pid) not in  
           ( select concat(hospcode,pid) from chronic c where c.chronic between 'I10' and 'I159' )
group by person.hospcode ) as t
where  t.hospcode = h.hoscode
) as HTtarget ,
(SELECT hos_doit from
          (select person.hospcode,count(*) as hos_doit from ncdscreen  
           inner join person on ncdscreen.hospcode = person.hospcode and ncdscreen.pid = person.pid 
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' 
           and (TIMESTAMPDIFF(YEAR,person.birth,@bdg_date) >= 35 ) and date_serv between @start and @end 
            
           and concat(person.hospcode,person.pid) not in  
           ( select concat(c.hospcode,c.pid) from chronic c where c.chronic between 'I10' and 'I159' ) group by person.hospcode) as r
where r.hospcode = h.hoscode
) as HTresult
from chospital_amp h
) as ncdscreen_all
GROUP BY amphur

) t;

UPDATE sys_check_process t set t.fnc_name = 'end_cal_chart_dial_7' , t.time = NOW();

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cal_chart_dial_8
-- ----------------------------
DROP PROCEDURE IF EXISTS `cal_chart_dial_8`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cal_chart_dial_8`(IN `bdg_date`  varchar(10))
BEGIN
	UPDATE sys_check_process t set t.fnc_name = 'cal_chart_dial_8' , t.time = NOW();
set @start='2014-10-01';
set @end=CURDATE();
set @bdg_date = bdg_date;

DROP TABLE IF EXISTS sys_chart_dial_8 ;
CREATE TABLE sys_chart_dial_8 select * from (

select  '90' as base,format(sum(ncdscreen_all.htresult*100)/sum(ncdscreen_all.httarget),2) as result from 
(select  h.distcode as amphur,

(SELECT hos_target from
 (select person.hospcode , count(*) as hos_target from person  
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' 
           and (TIMESTAMPDIFF(YEAR,person.birth,@bdg_date) >= 35 )
           and concat(person.hospcode ,person.pid) not in  
           ( select concat(hospcode,pid) from chronic c where c.chronic between 'E10' and 'E149' )
group by person.hospcode ) as t
where  t.hospcode = h.hoscode
) as HTtarget ,
(SELECT hos_doit from
          (select person.hospcode,count(*) as hos_doit from ncdscreen  
           inner join person on ncdscreen.hospcode = person.hospcode and ncdscreen.pid = person.pid 
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' 
           and (TIMESTAMPDIFF(YEAR,person.birth,@bdg_date) >= 35 ) and date_serv between @start and @end 
            
           and concat(person.hospcode,person.pid) not in  
           ( select concat(c.hospcode,c.pid) from chronic c where c.chronic between 'E10' and 'E149' ) group by person.hospcode) as r
where r.hospcode = h.hoscode
) as HTresult
from chospital_amp h
) as ncdscreen_all
GROUP BY amphur

) t;

UPDATE sys_check_process t set t.fnc_name = 'end_cal_chart_dial_8' , t.time = NOW();

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cal_chart_dial_9
-- ----------------------------
DROP PROCEDURE IF EXISTS `cal_chart_dial_9`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cal_chart_dial_9`()
BEGIN
	UPDATE sys_check_process t set t.fnc_name = 'cal_chart_dial_9' , t.time = NOW();
set @start='2014-10-01';
set @end=CURDATE();

DROP TABLE IF EXISTS sys_chart_dial_9 ;
CREATE TABLE sys_chart_dial_9 select * from (

select  '90' as base,format(sum(anc12.result*100)/sum(anc12.target),2) as result from 
(select h.distcode as amphur,h.hoscode as hospcode,
(select total from
(select anc.hospcode,count(distinct anc.pid) as total 
from labor 
INNER JOIN anc ON labor.hospcode = anc.hospcode AND labor.pid = anc.pid 
INNER JOIN person ON person.hospcode = anc.hospcode AND person.pid = anc.pid 
WHERE person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' and person.sex = '2' 
      and labor.btype<>'6'   and labor.bdate BETWEEN  @start AND @end
GROUP BY person.hospcode  ) as t
where t.hospcode =h.hoscode ) as Target,

( select  total from
(
select labor.hospcode,count(*) as total  
from labor 
INNER JOIN 
(select anc1.hospcode,anc1.pid,anc1.gravida,count(distinct anc1.pid) as total 
from anc anc1
WHERE anc1.ga <= 12  
GROUP BY anc1.hospcode,anc1.pid  ) as anc1
ON labor.hospcode = anc1.hospcode AND labor.pid = anc1.pid
INNER JOIN person ON person.hospcode = labor.hospcode AND person.pid = labor.pid 
WHERE person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' and person.sex = '2' 
      and labor.btype<>'6'   and labor.bdate BETWEEN  @start AND @end
GROUP BY labor.hospcode
) as 12wks
where 12wks.hospcode = h.hoscode) as Result

from chospital_amp h

order by distcode,hoscode asc
) as anc12
GROUP BY amphur


) t;

UPDATE sys_check_process t set t.fnc_name = 'end_cal_chart_dial_9' , t.time = NOW();

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cal_count_service
-- ----------------------------
DROP PROCEDURE IF EXISTS `cal_count_service`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cal_count_service`(IN `selyear` varchar(4))
BEGIN

UPDATE sys_check_process t set t.fnc_name = 'cal_count_service' , t.time = NOW();

set @selyear = selyear;
set @pyear = selyear-1;
replace into sys_count_service 
select SQL_BIG_RESULT  h.hoscode,h.hosname,selyear,
(SELECT COUNT(DISTINCT s.pid) FROM service s 
where s.HOSPCODE = h.hoscode and EXTRACT(YEAR_MONTH FROM s.DATE_SERV)= CONCAT(@pyear,'10')) as oct,
(SELECT COUNT(s.pid) FROM service s 
where s.HOSPCODE = h.hoscode and EXTRACT(YEAR_MONTH FROM s.DATE_SERV)= CONCAT(@pyear,'10')) as oct1,

(SELECT COUNT(DISTINCT s.pid) FROM service s 
where s.HOSPCODE = h.hoscode and EXTRACT(YEAR_MONTH FROM s.DATE_SERV)= CONCAT(@pyear,'11')) as nov,
(SELECT COUNT(s.pid) FROM service s 
where s.HOSPCODE = h.hoscode and EXTRACT(YEAR_MONTH FROM s.DATE_SERV)= CONCAT(@pyear,'11')) as nov1,

(SELECT COUNT(DISTINCT s.pid) FROM service s 
where s.HOSPCODE = h.hoscode and EXTRACT(YEAR_MONTH FROM s.DATE_SERV)= CONCAT(@pyear,'12')) as 'dec',
(SELECT COUNT(s.pid) FROM service s 
where s.HOSPCODE = h.hoscode and EXTRACT(YEAR_MONTH FROM s.DATE_SERV)= CONCAT(@pyear,'12')) as 'dec1',

(SELECT COUNT(DISTINCT s.pid) FROM service s 
where s.HOSPCODE = h.hoscode and EXTRACT(YEAR_MONTH FROM s.DATE_SERV)= CONCAT(@selyear,'01')) as jan,
(SELECT COUNT(s.pid) FROM service s 
where s.HOSPCODE = h.hoscode and EXTRACT(YEAR_MONTH FROM s.DATE_SERV)= CONCAT(@selyear,'01')) as jan1,

(SELECT COUNT(DISTINCT s.pid) FROM service s 
where s.HOSPCODE = h.hoscode and EXTRACT(YEAR_MONTH FROM s.DATE_SERV)= CONCAT(@selyear,'02')) as feb,
(SELECT COUNT(s.pid) FROM service s 
where s.HOSPCODE = h.hoscode and EXTRACT(YEAR_MONTH FROM s.DATE_SERV)= CONCAT(@selyear,'02')) as feb1,

(SELECT COUNT(DISTINCT s.pid) FROM service s 
where s.HOSPCODE = h.hoscode and EXTRACT(YEAR_MONTH FROM s.DATE_SERV)= CONCAT(@selyear,'03'))as mar,
(SELECT COUNT(s.pid) FROM service s 
where s.HOSPCODE = h.hoscode and EXTRACT(YEAR_MONTH FROM s.DATE_SERV)= CONCAT(@selyear,'03'))as mar1,

(SELECT COUNT(DISTINCT s.pid) FROM service s 
where s.HOSPCODE = h.hoscode and EXTRACT(YEAR_MONTH FROM s.DATE_SERV)= CONCAT(@selyear,'04'))as apr,
(SELECT COUNT(s.pid) FROM service s 
where s.HOSPCODE = h.hoscode and EXTRACT(YEAR_MONTH FROM s.DATE_SERV)= CONCAT(@selyear,'04'))as apr1,

(SELECT COUNT(DISTINCT s.pid) FROM service s 
where s.HOSPCODE = h.hoscode and EXTRACT(YEAR_MONTH FROM s.DATE_SERV)= CONCAT(@selyear,'05'))as may,
(SELECT COUNT(s.pid) FROM service s 
where s.HOSPCODE = h.hoscode and EXTRACT(YEAR_MONTH FROM s.DATE_SERV)= CONCAT(@selyear,'05'))as may1,

(SELECT COUNT(DISTINCT s.pid) FROM service s 
where s.HOSPCODE = h.hoscode and EXTRACT(YEAR_MONTH FROM s.DATE_SERV)= CONCAT(@selyear,'06'))as jun,
(SELECT COUNT(s.pid) FROM service s 
where s.HOSPCODE = h.hoscode and EXTRACT(YEAR_MONTH FROM s.DATE_SERV)= CONCAT(@selyear,'06'))as jun1,

(SELECT COUNT(DISTINCT s.pid) FROM service s 
where s.HOSPCODE = h.hoscode and EXTRACT(YEAR_MONTH FROM s.DATE_SERV)= CONCAT(@selyear,'07'))as jul,
(SELECT COUNT(s.pid) FROM service s 
where s.HOSPCODE = h.hoscode and EXTRACT(YEAR_MONTH FROM s.DATE_SERV)= CONCAT(@selyear,'07'))as jul1,

(SELECT COUNT(DISTINCT s.pid) FROM service s 
where s.HOSPCODE = h.hoscode and EXTRACT(YEAR_MONTH FROM s.DATE_SERV)= CONCAT(@selyear,'08'))as aug,
(SELECT COUNT(s.pid) FROM service s 
where s.HOSPCODE = h.hoscode and EXTRACT(YEAR_MONTH FROM s.DATE_SERV)= CONCAT(@selyear,'08'))as aug1,

(SELECT COUNT(DISTINCT s.pid) FROM service s 
where s.HOSPCODE = h.hoscode and EXTRACT(YEAR_MONTH FROM s.DATE_SERV)= CONCAT(@selyear,'09'))as sep,
(SELECT COUNT(s.pid) FROM service s 
where s.HOSPCODE = h.hoscode and EXTRACT(YEAR_MONTH FROM s.DATE_SERV)= CONCAT(@selyear,'09'))as sep1

from chospital_amp h;

UPDATE sys_check_process t set t.fnc_name = 'end_cal_count_service' , t.time = NOW();

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cal_ncd_cholesteral_colorchart
-- ----------------------------
DROP PROCEDURE IF EXISTS `cal_ncd_cholesteral_colorchart`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cal_ncd_cholesteral_colorchart`(IN `bdg_date` varchar(10))
BEGIN

UPDATE sys_check_process t set t.fnc_name = 'cal_ncd_cholesteral_colorchart' , t.time = NOW();
	
	set @start='2014-10-01';
	set @end=CURDATE();
	set @bdg_date = bdg_date;

#DROP TABLE IF EXISTS `sys_ncd_cholesteral_colorchart` ;

CREATE TABLE IF NOT EXISTS  `sys_ncd_cholesteral_colorchart` (
  `hospcode` varchar(5) NOT NULL DEFAULT '',
  `pid` varchar(15) NOT NULL DEFAULT '',
  `sex` char(1) DEFAULT NULL,
  `smoke` char(1) DEFAULT NULL,
  `chronic` varchar(6) DEFAULT NULL,
  `labtest` char(2) DEFAULT NULL,
  `labresult` float DEFAULT NULL,
  `date_serv` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sbp` int(11) DEFAULT NULL,
  `chart` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`hospcode`,`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DELETE FROM sys_ncd_cholesteral_colorchart WHERE date_serv BETWEEN @start and @end;

INSERT IGNORE INTO sys_ncd_cholesteral_colorchart 
(
  hospcode,pid,sex,smoke,chronic,labtest,labresult,date_serv,age,sbp,chart
)

 (     select person.hospcode,person.pid,person.sex,'N',chronic.chronic,la.labtest,la.labresult,bp.date_serv,TIMESTAMPDIFF(YEAR,person.birth,bp.date_serv) as age,bp.sbp,
        CASE 
             when SEX ='1' THEN
               CASE  
                   WHEN   TIMESTAMPDIFF(YEAR,person.birth,bp.date_serv) < 50 THEN
                     CASE
                        WHEN   ( sbp <140) THEN
                           CASE  
                                WHEN  labresult <200 THEN '<10%'
                                WHEN  (labresult >=200  and labresult <240) THEN '<10%'
                                WHEN  (labresult >=240  and labresult <280) THEN '<10%'
                                WHEN  (labresult >=280  and labresult <320) THEN '<10%'
                                WHEN  (labresult >=320) THEN '<10%'
                           ELSE 'NA'
                           END  
                        WHEN   (sbp >=140 and sbp <160) THEN
                           CASE  
                                WHEN  labresult <200 THEN '<10%'
                                WHEN  (labresult >=200  and labresult <240) THEN '<10%'
                                WHEN  (labresult >=240  and labresult <280) THEN '<10%'
                                WHEN  (labresult >=280  and labresult <320) THEN '<10%'
                                WHEN  (labresult >=320  ) THEN '10-<20%'
                           ELSE 'NA'
                           END  
                        WHEN   (sbp >=160 and sbp <180) THEN
                           CASE  
                                WHEN  labresult <200 THEN '<10%'
                                WHEN  (labresult >=200  and labresult <240) THEN '<10%'
                                WHEN  (labresult >=240  and labresult <280) THEN '<10%'
                                WHEN  (labresult >=280  and labresult <320) THEN '10-<20%'
                                WHEN  (labresult >=320  ) THEN '20-<30%'
                           ELSE 'NA'
                           END  
                        WHEN   sbp >=180  THEN
                           CASE  
                                WHEN  labresult <200 THEN '10-<20%'
                                WHEN  (labresult >=200  and labresult <240) THEN '10-<20%'
                                WHEN  (labresult >=240  and labresult <280) THEN '20-<30%'
                                WHEN  (labresult >=280  and labresult <320) THEN '>=40%'   
                                WHEN  (labresult >=320  ) THEN '>=40%'   
                           ELSE 'NA'
                           END  /* sbp*/ 
                       END    /* 40*/

                   WHEN   TIMESTAMPDIFF(YEAR,person.birth,bp.date_serv) BETWEEN 50 and 59 THEN
                     CASE
                        WHEN   ( sbp <140) THEN
                           CASE  
                                WHEN  labresult <200 THEN '<10%'
                                WHEN  (labresult >=200  and labresult <240) THEN '<10%'
                                WHEN  (labresult >=240  and labresult <280) THEN '<10%'
                                WHEN  (labresult >=280  and labresult <320) THEN '<10%'
                                WHEN  (labresult >=320  ) THEN '<10%'
                           ELSE 'NA'
                           END  
                        WHEN   (sbp >=140 and sbp <160) THEN
                           CASE  
                                WHEN  labresult <200 THEN '<10%'
                                WHEN  (labresult >=200  and labresult <240) THEN '<10%'
                                WHEN  (labresult >=240  and labresult <280) THEN '<10%'
                                WHEN  (labresult >=280  and labresult <320) THEN '<10%'
                                WHEN  (labresult >=320  ) THEN '10-<20%'
                           ELSE 'NA'
                           END  
                        WHEN   (sbp >=160 and sbp <180) THEN
                           CASE  
                                WHEN  labresult <200 THEN '<10%'
                                WHEN  (labresult >=200  and labresult <240) THEN '<10%'
                                WHEN  (labresult >=240  and labresult <280) THEN '<10%'
                                WHEN  (labresult >=280  and labresult <320) THEN '10-<20%'
                                WHEN  (labresult >=320 ) THEN '20-<30%'
                           ELSE 'NA'
                           END  
                        WHEN   sbp >=180  THEN
                           CASE  
                                WHEN  labresult <200 THEN '10-<20%'
                                WHEN  (labresult >=200  and labresult <240) THEN '20-<30%'
                                WHEN  (labresult >=240  and labresult <280) THEN '20-<30%'
                                WHEN  (labresult >=280  and labresult <320) THEN '>=40%'   
                                WHEN  (labresult >=320  ) THEN '>=40%'   
                           ELSE 'NA'
                           END  /* sbp*/ 
                       END    /* 50*/
                   WHEN   TIMESTAMPDIFF(YEAR,person.birth,bp.date_serv) BETWEEN 60 and 69 THEN
                     CASE
                        WHEN   ( sbp <140) THEN
                           CASE  
                                WHEN  labresult <200 THEN '<10%'
                                WHEN  (labresult >=200  and labresult <240) THEN '<10%'
                                WHEN  (labresult >=240  and labresult <280) THEN '<10%'
                                WHEN  (labresult >=280  and labresult <320) THEN '<10%'
                                WHEN  (labresult >=320  ) THEN '<10%'
                           ELSE 'NA'
                           END  
                        WHEN   (sbp >=140 and sbp <160) THEN
                           CASE  
                                WHEN  labresult <200 THEN '<10%'
                                WHEN  (labresult >=200  and labresult <240) THEN '<10%'
                                WHEN  (labresult >=240  and labresult <280) THEN '<10%'
                                WHEN  (labresult >=280  and labresult <320) THEN '10-<20%'
                                WHEN  (labresult >=320  ) THEN '10-<20%'
                           ELSE 'NA'
                           END  
                        WHEN   (sbp >=160 and sbp <180) THEN
                           CASE  
                                WHEN  labresult <200 THEN '<10%'
                                WHEN  (labresult >=200  and labresult <240) THEN '10-<20%'
                                WHEN  (labresult >=240  and labresult <280) THEN '10-<20%'
                                WHEN  (labresult >=280  and labresult <320) THEN '10-<20%'
                                WHEN  (labresult >=320  ) THEN '20-<30%'
                           ELSE 'NA'
                           END  
                        WHEN   sbp >=180  THEN
                           CASE  
                                WHEN  labresult <200 THEN '20-<30%'
                                WHEN  (labresult >=200  and labresult <240) THEN '20-<30%'
                                WHEN  (labresult >=240  and labresult <280) THEN '30-<40%'
                                WHEN  (labresult >=280  and labresult <320) THEN '>=40%'   
                                WHEN  (labresult >=320  ) THEN '>=40%'   
                           ELSE 'NA'
                           END  /* sbp*/ 
                      END     /* 60*/
                   WHEN   TIMESTAMPDIFF(YEAR,person.birth,bp.date_serv) >=70 THEN
                     CASE
                        WHEN   ( sbp <140) THEN
                           CASE  
                                WHEN  labresult <200 THEN '<10%'
                                WHEN  (labresult >=200  and labresult <240) THEN '<10%'
                                WHEN  (labresult >=240  and labresult <280) THEN '<10%'
                                WHEN  (labresult >=280  and labresult <320) THEN '<10%'
                                WHEN  (labresult >=320  ) THEN '10-<20%'
                           ELSE 'NA'
                           END  
                        WHEN   (sbp >=140 and sbp <160) THEN
                           CASE  
                                WHEN  labresult <200 THEN '<10%'
                                WHEN  (labresult >=200  and labresult <240) THEN '<10%'
                                WHEN  (labresult >=240  and labresult <280) THEN '10-<20%'
                                WHEN  (labresult >=280  and labresult <320) THEN '10-<20%'
                                WHEN  (labresult >=320  ) THEN '10-<20%'
                           ELSE 'NA'
                           END  
                        WHEN   (sbp >=160 and sbp <180) THEN
                           CASE  
                                WHEN  labresult <200 THEN '10-<20%'
                                WHEN  (labresult >=200  and labresult <240) THEN '10-<20%'
                                WHEN  (labresult >=240  and labresult <280) THEN '10-<20%'
                                WHEN  (labresult >=280  and labresult <320) THEN '20-<30%'
                                WHEN  (labresult >=320  ) THEN '20-<30%'
                           ELSE 'NA'
                           END  
                        WHEN   sbp >=180  THEN
                           CASE  
                                WHEN  labresult <200 THEN '10-<20%'
                                WHEN  (labresult >=200  and labresult <240) THEN '10-<20%'
                                WHEN  (labresult >=240  and labresult <280) THEN '30-<40%'
                                WHEN  (labresult >=280  and labresult <320) THEN '>=40%'   
                                WHEN  (labresult >=320  ) THEN '>=40%'   
                           ELSE 'NA'
                           END  /* sbp*/ 
                    END  /* 70*/
           ELSE 'NA'
           END   /* sex =1*/  
             when SEX ='2' THEN
               CASE  
                   WHEN   TIMESTAMPDIFF(YEAR,person.birth,bp.date_serv) < 50 THEN
                     CASE
                        WHEN   ( sbp <140) THEN
                           CASE  
                                WHEN  labresult <200 THEN '<10%'
                                WHEN  (labresult >=200  and labresult <240) THEN '<10%'
                                WHEN  (labresult >=240  and labresult <280) THEN '<10%'
                                WHEN  (labresult >=280  and labresult <320) THEN '<10%'
                                WHEN  (labresult >=320  ) THEN '10-<20%'
                           ELSE 'NA'
                           END  
                        WHEN   (sbp >=140 and sbp <160) THEN
                           CASE  
                                WHEN  labresult <200 THEN '<10%'
                                WHEN  (labresult >=200  and labresult <240) THEN '<10%'
                                WHEN  (labresult >=240  and labresult <280) THEN '<10%'
                                WHEN  (labresult >=280  and labresult <320) THEN '10-<20%'
                                WHEN  (labresult >=320  ) THEN '20-<30%'
                           ELSE 'NA'
                           END  
                        WHEN   (sbp >=160 and sbp <180) THEN
                           CASE  
                                WHEN  labresult <200 THEN '<10%'
                                WHEN  (labresult >=200  and labresult <240) THEN '<10%'
                                WHEN  (labresult >=240  and labresult <280) THEN '10-<20%'
                                WHEN  (labresult >=280  and labresult <320) THEN '20-<30%'
                                WHEN  (labresult >=320  ) THEN '>=40%'  
                           ELSE 'NA'
                           END  
                        WHEN   sbp >=180  THEN
                           CASE  
                                WHEN  labresult <200 THEN '10-<20%'
                                WHEN  (labresult >=200  and labresult <240) THEN '20-<30%'
                                WHEN  (labresult >=240  and labresult <280) THEN '>=40%'   
                                WHEN  (labresult >=280  and labresult <320) THEN '>=40%'   
                                WHEN  (labresult >=320  ) THEN '>=40%'   
                           ELSE 'NA'
                           END  /* sbp*/ 
                       END    /* 40*/

                   WHEN   TIMESTAMPDIFF(YEAR,person.birth,bp.date_serv) BETWEEN 50 and 59 THEN
                     CASE
                        WHEN   ( sbp <140) THEN
                           CASE  
                                WHEN  labresult <200 THEN '<10%'
                                WHEN  (labresult >=200  and labresult <240) THEN '<10%'
                                WHEN  (labresult >=240  and labresult <280) THEN '<10%'
                                WHEN  (labresult >=280  and labresult <320) THEN '<10%'
                                WHEN  (labresult >=320  ) THEN '10-<20%'
                           ELSE 'NA'
                           END  
                        WHEN   (sbp >=140 and sbp <160) THEN
                           CASE  
                                WHEN  labresult <200 THEN '<10%'
                                WHEN  (labresult >=200  and labresult <240) THEN '<10%'
                                WHEN  (labresult >=240  and labresult <280) THEN '<10%'
                                WHEN  (labresult >=280  and labresult <320) THEN '10-<20%'
                                WHEN  (labresult >=320  ) THEN '20-<30%'
                           ELSE 'NA'
                           END  
                        WHEN   (sbp >=160 and sbp <180) THEN
                           CASE  
                                WHEN  labresult <200 THEN '<10%'
                                WHEN  (labresult >=200  and labresult <240) THEN '<10%'
                                WHEN  (labresult >=240  and labresult <280) THEN  '10-<20%'
                                WHEN  (labresult >=280  and labresult <320) THEN '20-<30%'
                                WHEN  (labresult >=320  ) THEN '>=40%' 
                           ELSE 'NA'
                           END  
                        WHEN   sbp >=180  THEN
                           CASE  
                                WHEN  labresult <200 THEN '20-<30%'
                                WHEN  (labresult >=200  and labresult <240) THEN '30-<40%'
                                WHEN  (labresult >=240  and labresult <280) THEN '>=40%'   
                                WHEN  (labresult >=280  and labresult <320) THEN '>=40%'   
                                WHEN  (labresult >=320  ) THEN '>=40%'   
                           ELSE 'NA'
                           END  /* sbp*/ 
                       END    /* 50*/
                   WHEN   TIMESTAMPDIFF(YEAR,person.birth,bp.date_serv) BETWEEN 60 and 69 THEN
                     CASE
                        WHEN   ( sbp <140) THEN
                           CASE  
                                WHEN  labresult <200 THEN '<10%'
                                WHEN  (labresult >=200  and labresult <240) THEN '<10%'
                                WHEN  (labresult >=240  and labresult <280) THEN '<10%'
                                WHEN  (labresult >=280  and labresult <320) THEN '<10%'
                                WHEN  (labresult >=320  ) THEN '10-<20%'
                           ELSE 'NA'
                           END  
                        WHEN   (sbp >=140 and sbp <160) THEN
                           CASE  
                                WHEN  labresult <200 THEN '<10%'
                                WHEN  (labresult >=200  and labresult <240) THEN '<10%'
                                WHEN  (labresult >=240  and labresult <280) THEN '<10%'
                                WHEN  (labresult >=280  and labresult <320) THEN '10-<20%'
                                WHEN  (labresult >=320  ) THEN '20-<30%'
                           ELSE 'NA'
                           END  
                        WHEN   (sbp >=160 and sbp <180) THEN
                           CASE  
                                WHEN  labresult <200 THEN '<10%'
                                WHEN  (labresult >=200  and labresult <240) THEN '10-<20%'
                                WHEN  (labresult >=240  and labresult <280) THEN '10-<20%'
                                WHEN  (labresult >=280  and labresult <320) THEN '20-<30%'
                                WHEN  (labresult >=320  ) THEN '>=40%'   
                           ELSE 'NA'
                           END  
                        WHEN   sbp >=180  THEN
                           CASE  
                                WHEN  labresult <200 THEN '20-<30%'
                                WHEN  (labresult >=200  and labresult <240) THEN '30-<40%'
                                WHEN  (labresult >=240  and labresult <280) THEN '>=40%'   
                                WHEN  (labresult >=280  and labresult <320) THEN '>=40%'   
                                WHEN  (labresult >=320  ) THEN '>=40%'   
                           ELSE 'NA'
                           END  /* sbp*/ 
                      END     /* 60*/
                   WHEN   TIMESTAMPDIFF(YEAR,person.birth,bp.date_serv) >=70 THEN
                     CASE
                        WHEN   ( sbp <140) THEN
                           CASE  
                                WHEN  labresult <200 THEN '<10%'
                                WHEN  (labresult >=200  and labresult <240) THEN '<10%'
                                WHEN  (labresult >=240  and labresult <280) THEN '<10%'
                                WHEN  (labresult >=280  and labresult <320) THEN '<10%'
                                WHEN  (labresult >=320  ) THEN '10-<20%'
                           ELSE 'NA'
                           END  
                        WHEN   (sbp >=140 and sbp <160) THEN
                           CASE  
                                WHEN  labresult <200 THEN '<10%'
                                WHEN  (labresult >=200  and labresult <240) THEN '<10%'
                                WHEN  (labresult >=240  and labresult <280) THEN '10-<20%'
                                WHEN  (labresult >=280  and labresult <320) THEN '10-<20%'
                                WHEN  (labresult >=320  ) THEN '20-<30%'
                           ELSE 'NA'
                           END  
                        WHEN   (sbp >=160 and sbp <180) THEN
                           CASE  
                                WHEN  labresult <200 THEN '10-<20%'
                                WHEN  (labresult >=200  and labresult <240) THEN '10-<20%'
                                WHEN  (labresult >=240  and labresult <280) THEN '10-<20%'
                                WHEN  (labresult >=280  and labresult <320) THEN '20-<30%'
                                WHEN  (labresult >=320  ) THEN '>=40%'   
                           ELSE 'NA'
                           END  
                        WHEN   sbp >=180  THEN
                           CASE  
                                WHEN  labresult <200 THEN '20-<30%'
                                WHEN  (labresult >=200  and labresult <240) THEN '30-<40%'
                                WHEN  (labresult >=240  and labresult <280) THEN '>=40%'   
                                WHEN  (labresult >=280  and labresult <320) THEN '>=40%'   
                                WHEN  (labresult >=320  ) THEN '>=40%'   
                           ELSE 'NA'
                           END  /* sbp*/ 
                    END  /* 70*/
           ELSE 'NA'
           END   /* sex =2*/     
        
        ELSE 'NA' 
        END  as chart
        from chronic,person,
        (select l.hospcode,l.pid,l.date_serv,l.labtest,l.labresult from labfu l
         WHERE l.labtest = '07'
         group by l.hospcode,l.pid 
         order by l.date_serv desc ) as la,

        (select c.hospcode,c.pid,c.date_serv,c.SBP from chronicfu c
         group by c.hospcode,c.pid 
         order by c.date_serv desc ) as bp 

        where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' 
         and (chronic.hospcode = person.hospcode and chronic.pid = person.pid) 
         and (la.hospcode= chronic.hospcode and la.pid = chronic.pid)
         and (la.date_serv between @start and @end)
         and (bp.hospcode= chronic.hospcode and bp.pid = chronic.pid)
         and (bp.date_serv between @start and @end)
         and  ((chronic.chronic between 'I10' and 'I15') or (chronic.chronic between 'E10' and 'E14'))
         and (timestampdiff(year,person.birth,bp.date_serv) >= 35  ) );




UPDATE sys_check_process t set t.fnc_name = 'end_cal_ncd_cholesteral_colorchart' , t.time = NOW();

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cal_ncd_nocholesteral_colorchart
-- ----------------------------
DROP PROCEDURE IF EXISTS `cal_ncd_nocholesteral_colorchart`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cal_ncd_nocholesteral_colorchart`(IN `bdg_date` varchar(10))
BEGIN

UPDATE sys_check_process t set t.fnc_name = 'cal_ncd_nocholesteral_colorchart' , t.time = NOW();	

	set @start='2014-10-01';
	set @end=CURDATE();
	set @bdg_date = bdg_date;


CREATE TABLE  IF NOT EXISTS `sys_ncd_nocholesteral_colorchart` (
  `hospcode` varchar(5) NOT NULL DEFAULT '',
  `pid` varchar(15) NOT NULL DEFAULT '',
  `sex` char(1) DEFAULT NULL,
  `smoke` char(1) DEFAULT NULL,
  `chronic` varchar(6) DEFAULT NULL,
  `date_serv` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sbp` int(11) DEFAULT NULL,
  `chart` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`hospcode`,`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

DELETE FROM sys_ncd_nocholesteral_colorchart WHERE date_serv BETWEEN @start and @end;

INSERT IGNORE INTO sys_ncd_nocholesteral_colorchart 
(
  hospcode,pid,sex,smoke,chronic,date_serv,age,sbp,chart
)

 (      select person.hospcode,person.pid,person.sex,'N',chronic.chronic,bp.date_serv,TIMESTAMPDIFF(YEAR,person.birth,bp.date_serv) as age,bp.sbp,
        CASE 
             when SEX ='1' THEN
               CASE  
                   WHEN   TIMESTAMPDIFF(YEAR,person.birth,bp.date_serv) < 50 THEN
                     CASE
                        WHEN   ( sbp <140) THEN    '<10%'
                        WHEN   (sbp >=140 and sbp <160) THEN   '<10%'
                        WHEN   (sbp >=160 and sbp <180) THEN   '<10%'
                         WHEN   sbp >=180  THEN   '10-<20%'
                      END    /* 40*/
                   WHEN   TIMESTAMPDIFF(YEAR,person.birth,bp.date_serv) BETWEEN 50 and 59 THEN
                     CASE
                        WHEN   ( sbp <140) THEN   '<10%'
                        WHEN   (sbp >=140 and sbp <160) THEN   '<10%'
                        WHEN   (sbp >=160 and sbp <180) THEN   '<10%'
                        WHEN   sbp >=180  THEN   '20-<30%'
                     END    /* 50*/
                   WHEN   TIMESTAMPDIFF(YEAR,person.birth,bp.date_serv) BETWEEN 60 and 69 THEN
                     CASE
                        WHEN   ( sbp <140) THEN   '<10%'
                        WHEN   (sbp >=140 and sbp <160) THEN   '<10%'
                        WHEN   (sbp >=160 and sbp <180) THEN   '10-<20%'
                        WHEN   sbp >=180  THEN   '20-<30%'
                     END     /* 60*/
                   WHEN   TIMESTAMPDIFF(YEAR,person.birth,bp.date_serv) >=70 THEN
                     CASE
                        WHEN   ( sbp <140) THEN   '<10%'
                        WHEN   (sbp >=140 and sbp <160) THEN   '<10%'
                        WHEN   (sbp >=160 and sbp <180) THEN    '10-<20%'
                        WHEN   sbp >=180  THEN   '20-<30%'
                    END  /* 70*/
           ELSE 'NA'
           END   /* sex =1*/  
             when SEX ='2' THEN
               CASE  
                   WHEN   TIMESTAMPDIFF(YEAR,person.birth,bp.date_serv) < 50 THEN
                     CASE
                        WHEN   ( sbp <140) THEN    '<10%'
                        WHEN   (sbp >=140 and sbp <160) THEN   '<10%'
                        WHEN   (sbp >=160 and sbp <180) THEN   '<10%'
                         WHEN   sbp >=180  THEN   '10-<20%'
                      END    /* 40*/
                   WHEN   TIMESTAMPDIFF(YEAR,person.birth,bp.date_serv) BETWEEN 50 and 59 THEN
                     CASE
                        WHEN   ( sbp <140) THEN   '<10%'
                        WHEN   (sbp >=140 and sbp <160) THEN   '<10%'
                        WHEN   (sbp >=160 and sbp <180) THEN   '<10%'
                        WHEN   sbp >=180  THEN   '20-<30%'
                     END    /* 50*/
                   WHEN   TIMESTAMPDIFF(YEAR,person.birth,bp.date_serv) BETWEEN 60 and 69 THEN
                     CASE
                        WHEN   ( sbp <140) THEN   '<10%'
                        WHEN   (sbp >=140 and sbp <160) THEN   '<10%'
                        WHEN   (sbp >=160 and sbp <180) THEN   '10-<20%'
                        WHEN   sbp >=180  THEN   '20-<30%'
                     END     /* 60*/
                   WHEN   TIMESTAMPDIFF(YEAR,person.birth,bp.date_serv) >=70 THEN
                     CASE
                        WHEN   ( sbp <140) THEN   '<10%'
                        WHEN   (sbp >=140 and sbp <160) THEN   '<10%'
                        WHEN   (sbp >=160 and sbp <180) THEN    '10-<20%'
                        WHEN   sbp >=180  THEN   '20-<30%'
                    END  /* 70*/           ELSE 'NA'
           END   /* sex =2*/     
        
        ELSE 'NA' 
        END  as chart
        from chronic,person,

        (select c.hospcode,c.pid,c.date_serv,c.SBP from chronicfu c
         group by c.hospcode,c.pid 
         order by c.date_serv desc ) as bp 

        where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' 
         and (chronic.hospcode = person.hospcode and chronic.pid = person.pid) 
         and (bp.hospcode= chronic.hospcode and bp.pid = chronic.pid)
         and (bp.date_serv between @start and @end)
         and  ((chronic.chronic between 'I10' and 'I15') or (chronic.chronic between 'E10' and 'E14'))
         and (timestampdiff(year,person.birth,bp.date_serv) >= 35  ) );


UPDATE sys_check_process t set t.fnc_name = 'end_cal_ncd_nocholesteral_colorchart' , t.time = NOW();	


END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cal_pyramid_level_1
-- ----------------------------
DROP PROCEDURE IF EXISTS `cal_pyramid_level_1`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cal_pyramid_level_1`(IN `bdg_date` varchar(15))
BEGIN
UPDATE sys_check_process t set t.fnc_name = 'cal_pyramid_level_1' , t.time = NOW();	
	
set @bdg_date=bdg_date;

DROP TABLE IF EXISTS sys_pyramid_level_1 ;
CREATE TABLE sys_pyramid_level_1 select * from (

select SQL_BIG_RESULT  dh.hoscode as hospcode,dh.hosname as hospname 
,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '1' year),interval '1' day) and date_sub(@bdg_date,interval '0' year),1,0)) as am00
,sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '1' year),interval '1' day) and date_sub(@bdg_date,interval '0' year),1,0)) as af00  
,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '2' year),interval '1' day) and date_sub(@bdg_date,interval '1' year),1,0)) as am01
,sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '2' year),interval '1' day) and date_sub(@bdg_date,interval '1' year),1,0)) as af01      
,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '3' year),interval '1' day) and date_sub(@bdg_date,interval '2' year),1,0)) as am02
,sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '3' year),interval '1' day) and date_sub(@bdg_date,interval '2' year),1,0)) as af02  
,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '4' year),interval '1' day) and date_sub(@bdg_date,interval '3' year),1,0)) as am03
,sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '4' year),interval '1' day) and date_sub(@bdg_date,interval '3' year),1,0)) as af03 
,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '5' year),interval '1' day) and date_sub(@bdg_date,interval '4' year),1,0)) as am04
,sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '5' year),interval '1' day) and date_sub(@bdg_date,interval '4' year),1,0)) as af04   ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '6' year),interval '1' day) and date_sub(@bdg_date,interval '5' year),1,0)) as am05,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '6' year),interval '1' day) and date_sub(@bdg_date,interval '5' year),1,0)) as af05  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '7' year),interval '1' day) and date_sub(@bdg_date,interval '6' year),1,0)) as am06,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '7' year),interval '1' day) and date_sub(@bdg_date,interval '6' year),1,0)) as af06  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '8' year),interval '1' day) and date_sub(@bdg_date,interval '7' year),1,0)) as am07
,sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '8' year),interval '1' day) and date_sub(@bdg_date,interval '7' year),1,0)) as af07  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '9' year),interval '1' day) and date_sub(@bdg_date,interval '8' year),1,0)) as am08, sum(if(p.sex=2  and p.birth   between date_add(date_sub(@bdg_date,interval '9' year),interval '1' day) and date_sub(@bdg_date,interval '8' year),1,0)) as af08  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '10' year),interval '1' day) and date_sub(@bdg_date,interval '9' year),1,0)) as am09,  sum(if(p.sex=2  and p.birth   between date_add(date_sub(@bdg_date,interval '10' year),interval '1' day) and date_sub(@bdg_date,interval '9' year),1,0)) as af09  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '11' year),interval '1' day) and date_sub(@bdg_date,interval '10' year),1,0)) as am10, sum(if(p.sex=2  and p.birth   between date_add(date_sub(@bdg_date,interval '11' year),interval '1' day) and date_sub(@bdg_date,interval '10' year),1,0)) as af10  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '12' year),interval '1' day) and date_sub(@bdg_date,interval '11' year),1,0)) as am11, sum(if(p.sex=2  and p.birth   between date_add(date_sub(@bdg_date,interval '12' year),interval '1' day) and date_sub(@bdg_date,interval '11' year),1,0)) as af11  
,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '13' year),interval '1' day) and date_sub(@bdg_date,interval '12' year),1,0)) as am12,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '13' year),interval '1' day) and date_sub(@bdg_date,interval '12' year),1,0)) as af12  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '14' year),interval '1' day) and date_sub(@bdg_date,interval '13' year),1,0)) as am13,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '14' year),interval '1' day) and date_sub(@bdg_date,interval '13' year),1,0)) as af13  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '15' year),interval '1' day) and date_sub(@bdg_date,interval '14' year),1,0)) as am14,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '15' year),interval '1' day) and date_sub(@bdg_date,interval '14' year),1,0)) as af14  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '16' year),interval '1' day) and date_sub(@bdg_date,interval '15' year),1,0)) as am15, sum(if(p.sex=2  and p.birth   between date_add(date_sub(@bdg_date,interval '16' year),interval '1' day) and date_sub(@bdg_date,interval '15' year),1,0)) as af15  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '17' year),interval '1' day) and date_sub(@bdg_date,interval '16' year),1,0)) as am16, sum(if(p.sex=2  and p.birth   between date_add(date_sub(@bdg_date,interval '17' year),interval '1' day) and date_sub(@bdg_date,interval '16' year),1,0)) as af16  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '18' year),interval '1' day) and date_sub(@bdg_date,interval '17' year),1,0)) as am17, sum(if(p.sex=2  and p.birth   between date_add(date_sub(@bdg_date,interval '18' year),interval '1' day) and date_sub(@bdg_date,interval '17' year),1,0)) as af17 ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '19' year),interval '1' day) and date_sub(@bdg_date,interval '18' year),1,0)) as am18, sum(if(p.sex=2  and p.birth   between date_add(date_sub(@bdg_date,interval '19' year),interval '1' day) and date_sub(@bdg_date,interval '18' year),1,0)) as af18  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '20' year),interval '1' day) and date_sub(@bdg_date,interval '19' year),1,0)) as am19, sum(if(p.sex=2  and p.birth   between date_add(date_sub(@bdg_date,interval '20' year),interval '1' day) and date_sub(@bdg_date,interval '19' year),1,0)) as af19 ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '21' year),interval '1' day) and date_sub(@bdg_date,interval '20' year),1,0)) as am20,  sum(if(p.sex=2  and p.birth   between date_add(date_sub(@bdg_date,interval '21' year),interval '1' day) and date_sub(@bdg_date,interval '20' year),1,0)) as af20  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '22' year),interval '1' day) and date_sub(@bdg_date,interval '21' year),1,0)) as am21, sum(if(p.sex=2  and p.birth   between date_add(date_sub(@bdg_date,interval '22' year),interval '1' day) and date_sub(@bdg_date,interval '21' year),1,0)) as af21  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '23' year),interval '1' day) and date_sub(@bdg_date,interval '22' year),1,0)) as am22, sum(if(p.sex=2  and p.birth   between date_add(date_sub(@bdg_date,interval '23' year),interval '1' day) and date_sub(@bdg_date,interval '22' year),1,0)) as af22  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '24' year),interval '1' day) and date_sub(@bdg_date,interval '23' year),1,0)) as am23,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '24' year),interval '1' day) and date_sub(@bdg_date,interval '23' year),1,0)) as af23  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '25' year),interval '1' day) and date_sub(@bdg_date,interval '24' year),1,0)) as am24, sum(if(p.sex=2  and p.birth   between date_add(date_sub(@bdg_date,interval '25' year),interval '1' day) and date_sub(@bdg_date,interval '24' year),1,0)) as af24  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '26' year),interval '1' day) and date_sub(@bdg_date,interval '25' year),1,0)) as am25,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '26' year),interval '1' day) and date_sub(@bdg_date,interval '25' year),1,0)) as af25  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '27' year),interval '1' day) and date_sub(@bdg_date,interval '26' year),1,0)) as am26,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '27' year),interval '1' day) and date_sub(@bdg_date,interval '26' year),1,0)) as af26  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '28' year),interval '1' day) and date_sub(@bdg_date,interval '27' year),1,0)) as am27,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '28' year),interval '1' day) and date_sub(@bdg_date,interval '27' year),1,0)) as af27  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '29' year),interval '1' day) and date_sub(@bdg_date,interval '28' year),1,0)) as am28,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '29' year),interval '1' day) and date_sub(@bdg_date,interval '28' year),1,0)) as af28  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '30' year),interval '1' day) and date_sub(@bdg_date,interval '29' year),1,0)) as am29,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '30' year),interval '1' day) and date_sub(@bdg_date,interval '29' year),1,0)) as af29  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '31' year),interval '1' day) and date_sub(@bdg_date,interval '30' year),1,0)) as am30,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '31' year),interval '1' day) and date_sub(@bdg_date,interval '30' year),1,0)) as af30  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '32' year),interval '1' day) and date_sub(@bdg_date,interval '31' year),1,0)) as am31,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '32' year),interval '1' day) and date_sub(@bdg_date,interval '31' year),1,0)) as af31  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '33' year),interval '1' day) and date_sub(@bdg_date,interval '32' year),1,0)) as am32,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '33' year),interval '1' day) and date_sub(@bdg_date,interval '32' year),1,0)) as af32  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '34' year),interval '1' day) and date_sub(@bdg_date,interval '33' year),1,0)) as am33,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '34' year),interval '1' day) and date_sub(@bdg_date,interval '33' year),1,0)) as af33  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '35' year),interval '1' day) and date_sub(@bdg_date,interval '34' year),1,0)) as am34,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '35' year),interval '1' day) and date_sub(@bdg_date,interval '34' year),1,0)) as af34  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '36' year),interval '1' day) and date_sub(@bdg_date,interval '35' year),1,0)) as am35,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '36' year),interval '1' day) and date_sub(@bdg_date,interval '35' year),1,0)) as af35  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '37' year),interval '1' day) and date_sub(@bdg_date,interval '36' year),1,0)) as am36,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '37' year),interval '1' day) and date_sub(@bdg_date,interval '36' year),1,0)) as af36  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '38' year),interval '1' day) and date_sub(@bdg_date,interval '37' year),1,0)) as am37,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '38' year),interval '1' day) and date_sub(@bdg_date,interval '37' year),1,0)) as af37  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '39' year),interval '1' day) and date_sub(@bdg_date,interval '38' year),1,0)) as am38,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '39' year),interval '1' day) and date_sub(@bdg_date,interval '38' year),1,0)) as af38  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '40' year),interval '1' day) and date_sub(@bdg_date,interval '39' year),1,0)) as am39,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '40' year),interval '1' day) and date_sub(@bdg_date,interval '39' year),1,0)) as af39  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '41' year),interval '1' day) and date_sub(@bdg_date,interval '40' year),1,0)) as am40,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '41' year),interval '1' day) and date_sub(@bdg_date,interval '40' year),1,0)) as af40  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '42' year),interval '1' day) and date_sub(@bdg_date,interval '41' year),1,0)) as am41,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '42' year),interval '1' day) and date_sub(@bdg_date,interval '41' year),1,0)) as af41   ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '43' year),interval '1' day) and date_sub(@bdg_date,interval '42' year),1,0)) as am42,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '43' year),interval '1' day) and date_sub(@bdg_date,interval '42' year),1,0)) as af42  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '44' year),interval '1' day) and date_sub(@bdg_date,interval '43' year),1,0)) as am43,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '44' year),interval '1' day) and date_sub(@bdg_date,interval '43' year),1,0)) as af43  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '45' year),interval '1' day) and date_sub(@bdg_date,interval '44' year),1,0)) as am44,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '45' year),interval '1' day) and date_sub(@bdg_date,interval '44' year),1,0)) as af44   ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '46' year),interval '1' day) and date_sub(@bdg_date,interval '45' year),1,0)) as am45,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '46' year),interval '1' day) and date_sub(@bdg_date,interval '45' year),1,0)) as af45  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '47' year),interval '1' day) and date_sub(@bdg_date,interval '46' year),1,0)) as am46,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '47' year),interval '1' day) and date_sub(@bdg_date,interval '46' year),1,0)) as af46  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '48' year),interval '1' day) and date_sub(@bdg_date,interval '47' year),1,0)) as am47,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '48' year),interval '1' day) and date_sub(@bdg_date,interval '47' year),1,0)) as af47  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '49' year),interval '1' day) and date_sub(@bdg_date,interval '48' year),1,0)) as am48,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '49' year),interval '1' day) and date_sub(@bdg_date,interval '48' year),1,0)) as af48 ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '50' year),interval '1' day) and date_sub(@bdg_date,interval '49' year),1,0)) as am49,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '50' year),interval '1' day) and date_sub(@bdg_date,interval '49' year),1,0)) as af49   ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '51' year),interval '1' day) and date_sub(@bdg_date,interval '50' year),1,0)) as am50,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '51' year),interval '1' day) and date_sub(@bdg_date,interval '50' year),1,0)) as af50  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '52' year),interval '1' day) and date_sub(@bdg_date,interval '51' year),1,0)) as am51,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '52' year),interval '1' day) and date_sub(@bdg_date,interval '51' year),1,0)) as af51   ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '53' year),interval '1' day) and date_sub(@bdg_date,interval '52' year),1,0)) as am52,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '53' year),interval '1' day) and date_sub(@bdg_date,interval '52' year),1,0)) as af52  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '54' year),interval '1' day) and date_sub(@bdg_date,interval '53' year),1,0)) as am53,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '54' year),interval '1' day) and date_sub(@bdg_date,interval '53' year),1,0)) as af53  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '55' year),interval '1' day) and date_sub(@bdg_date,interval '54' year),1,0)) as am54,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '55' year),interval '1' day) and date_sub(@bdg_date,interval '54' year),1,0)) as af54  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '56' year),interval '1' day) and date_sub(@bdg_date,interval '55' year),1,0)) as am55,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '56' year),interval '1' day) and date_sub(@bdg_date,interval '55' year),1,0)) as af55   ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '57' year),interval '1' day) and date_sub(@bdg_date,interval '56' year),1,0)) as am56,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '57' year),interval '1' day) and date_sub(@bdg_date,interval '56' year),1,0)) as af56  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '58' year),interval '1' day) and date_sub(@bdg_date,interval '57' year),1,0)) as am57,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '58' year),interval '1' day) and date_sub(@bdg_date,interval '57' year),1,0)) as af57 ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '59' year),interval '1' day) and date_sub(@bdg_date,interval '58' year),1,0)) as am58,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '59' year),interval '1' day) and date_sub(@bdg_date,interval '58' year),1,0)) as af58  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '60' year),interval '1' day) and date_sub(@bdg_date,interval '59' year),1,0)) as am59,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '60' year),interval '1' day) and date_sub(@bdg_date,interval '59' year),1,0)) as af59  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '61' year),interval '1' day) and date_sub(@bdg_date,interval '60' year),1,0)) as am60,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '61' year),interval '1' day) and date_sub(@bdg_date,interval '60' year),1,0)) as af60  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '62' year),interval '1' day) and date_sub(@bdg_date,interval '61' year),1,0)) as am61,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '62' year),interval '1' day) and date_sub(@bdg_date,interval '61' year),1,0)) as af61  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '63' year),interval '1' day) and date_sub(@bdg_date,interval '62' year),1,0)) as am62,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '63' year),interval '1' day) and date_sub(@bdg_date,interval '62' year),1,0)) as af62  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '64' year),interval '1' day) and date_sub(@bdg_date,interval '63' year),1,0)) as am63,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '64' year),interval '1' day) and date_sub(@bdg_date,interval '63' year),1,0)) as af63  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '65' year),interval '1' day) and date_sub(@bdg_date,interval '64' year),1,0)) as am64,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '65' year),interval '1' day) and date_sub(@bdg_date,interval '64' year),1,0)) as af64  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '66' year),interval '1' day) and date_sub(@bdg_date,interval '65' year),1,0)) as am65,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '66' year),interval '1' day) and date_sub(@bdg_date,interval '65' year),1,0)) as af65   ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '67' year),interval '1' day) and date_sub(@bdg_date,interval '66' year),1,0)) as am66,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '67' year),interval '1' day) and date_sub(@bdg_date,interval '66' year),1,0)) as af66  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '68' year),interval '1' day) and date_sub(@bdg_date,interval '67' year),1,0)) as am67,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '68' year),interval '1' day) and date_sub(@bdg_date,interval '67' year),1,0)) as af67   ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '69' year),interval '1' day) and date_sub(@bdg_date,interval '68' year),1,0)) as am68,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '69' year),interval '1' day) and date_sub(@bdg_date,interval '68' year),1,0)) as af68 ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '70' year),interval '1' day) and date_sub(@bdg_date,interval '69' year),1,0)) as am69,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '70' year),interval '1' day) and date_sub(@bdg_date,interval '69' year),1,0)) as af69   ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '71' year),interval '1' day) and date_sub(@bdg_date,interval '70' year),1,0)) as am70,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '71' year),interval '1' day) and date_sub(@bdg_date,interval '70' year),1,0)) as af70  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '72' year),interval '1' day) and date_sub(@bdg_date,interval '71' year),1,0)) as am71,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '72' year),interval '1' day) and date_sub(@bdg_date,interval '71' year),1,0)) as af71  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '73' year),interval '1' day) and date_sub(@bdg_date,interval '72' year),1,0)) as am72,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '73' year),interval '1' day) and date_sub(@bdg_date,interval '72' year),1,0)) as af72  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '74' year),interval '1' day) and date_sub(@bdg_date,interval '73' year),1,0)) as am73,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '74' year),interval '1' day) and date_sub(@bdg_date,interval '73' year),1,0)) as af73  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '75' year),interval '1' day) and date_sub(@bdg_date,interval '74' year),1,0)) as am74,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '75' year),interval '1' day) and date_sub(@bdg_date,interval '74' year),1,0)) as af74   ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '76' year),interval '1' day) and date_sub(@bdg_date,interval '75' year),1,0)) as am75,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '76' year),interval '1' day) and date_sub(@bdg_date,interval '75' year),1,0)) as af75  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '77' year),interval '1' day) and date_sub(@bdg_date,interval '76' year),1,0)) as am76,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '77' year),interval '1' day) and date_sub(@bdg_date,interval '76' year),1,0)) as af76  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '78' year),interval '1' day) and date_sub(@bdg_date,interval '77' year),1,0)) as am77,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '78' year),interval '1' day) and date_sub(@bdg_date,interval '77' year),1,0)) as af77  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '79' year),interval '1' day) and date_sub(@bdg_date,interval '78' year),1,0)) as am78,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '79' year),interval '1' day) and date_sub(@bdg_date,interval '78' year),1,0)) as af78  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '80' year),interval '1' day) and date_sub(@bdg_date,interval '79' year),1,0)) as am79,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '80' year),interval '1' day) and date_sub(@bdg_date,interval '79' year),1,0)) as af79  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '81' year),interval '1' day) and date_sub(@bdg_date,interval '80' year),1,0)) as am80,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '81' year),interval '1' day) and date_sub(@bdg_date,interval '80' year),1,0)) as af80  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '82' year),interval '1' day) and date_sub(@bdg_date,interval '81' year),1,0)) as am81,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '82' year),interval '1' day) and date_sub(@bdg_date,interval '81' year),1,0)) as af81  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '83' year),interval '1' day) and date_sub(@bdg_date,interval '82' year),1,0)) as am82,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '83' year),interval '1' day) and date_sub(@bdg_date,interval '82' year),1,0)) as af82  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '84' year),interval '1' day) and date_sub(@bdg_date,interval '83' year),1,0)) as am83,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '84' year),interval '1' day) and date_sub(@bdg_date,interval '83' year),1,0)) as af83   ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '85' year),interval '1' day) and date_sub(@bdg_date,interval '84' year),1,0)) as am84,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '85' year),interval '1' day) and date_sub(@bdg_date,interval '84' year),1,0)) as af84  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '86' year),interval '1' day) and date_sub(@bdg_date,interval '85' year),1,0)) as am85,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '86' year),interval '1' day) and date_sub(@bdg_date,interval '85' year),1,0)) as af85  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '87' year),interval '1' day) and date_sub(@bdg_date,interval '86' year),1,0)) as am86,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '87' year),interval '1' day) and date_sub(@bdg_date,interval '86' year),1,0)) as af86   ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '88' year),interval '1' day) and date_sub(@bdg_date,interval '87' year),1,0)) as am87,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '88' year),interval '1' day) and date_sub(@bdg_date,interval '87' year),1,0)) as af87  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '89' year),interval '1' day) and date_sub(@bdg_date,interval '88' year),1,0)) as am88,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '89' year),interval '1' day) and date_sub(@bdg_date,interval '88' year),1,0)) as af88  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '90' year),interval '1' day) and date_sub(@bdg_date,interval '89' year),1,0)) as am89,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '90' year),interval '1' day) and date_sub(@bdg_date,interval '89' year),1,0)) as af89   ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '91' year),interval '1' day) and date_sub(@bdg_date,interval '90' year),1,0)) as am90,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '91' year),interval '1' day) and date_sub(@bdg_date,interval '90' year),1,0)) as af90  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '92' year),interval '1' day) and date_sub(@bdg_date,interval '91' year),1,0)) as am91,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '92' year),interval '1' day) and date_sub(@bdg_date,interval '91' year),1,0)) as af91 ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '93' year),interval '1' day) and date_sub(@bdg_date,interval '92' year),1,0)) as am92,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '93' year),interval '1' day) and date_sub(@bdg_date,interval '92' year),1,0)) as af92  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '94' year),interval '1' day) and date_sub(@bdg_date,interval '93' year),1,0)) as am93,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '94' year),interval '1' day) and date_sub(@bdg_date,interval '93' year),1,0)) as af93  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '95' year),interval '1' day) and date_sub(@bdg_date,interval '94' year),1,0)) as am94,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '95' year),interval '1' day) and date_sub(@bdg_date,interval '94' year),1,0)) as af94  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '96' year),interval '1' day) and date_sub(@bdg_date,interval '95' year),1,0)) as am95, sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '96' year),interval '1' day) and date_sub(@bdg_date,interval '95' year),1,0)) as af95   ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '97' year),interval '1' day) and date_sub(@bdg_date,interval '96' year),1,0)) as am96,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '97' year),interval '1' day) and date_sub(@bdg_date,interval '96' year),1,0)) as af96  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '98' year),interval '1' day) and date_sub(@bdg_date,interval '97' year),1,0)) as am97,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '98' year),interval '1' day) and date_sub(@bdg_date,interval '97' year),1,0)) as af97  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '99' year),interval '1' day) and date_sub(@bdg_date,interval '98' year),1,0)) as am98,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '99' year),interval '1' day) and date_sub(@bdg_date,interval '98' year),1,0)) as af98  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '100' year),interval '1' day) and date_sub(@bdg_date,interval '99' year),1,0)) as am99,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '100' year),interval '1' day) and date_sub(@bdg_date,interval '99' year),1,0)) as af99  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '101' year),interval '1' day) and date_sub(@bdg_date,interval '100' year),1,0)) as am100,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '101' year),interval '1' day) and date_sub(@bdg_date,interval '100' year),1,0)) as af100  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '102' year),interval '1' day) and date_sub(@bdg_date,interval '150' year),1,0)) as am100u,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '102' year),interval '1' day) and date_sub(@bdg_date,interval '150' year),1,0)) as af100u,   sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '150' year),interval '1' day) and date_sub(@bdg_date,interval '0' year),1,0)) as totalm,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '150' year),interval '1' day) and date_sub(@bdg_date,interval '0' year),1,0)) as totalf,   sum(if(p.birth  between date_add(date_sub(@bdg_date,interval '150' year),interval '1' day) and date_sub(@bdg_date,interval '0' year),1,0)) as total   
from person p    
inner  join chospital_amp  dh on p.hospcode = dh.hoscode  
where  p.discharge='9'   and p.nation ='099' and p.typearea in('1','3')   
group by dh.hoscode  order by hoscode asc


) t;

UPDATE sys_check_process t set t.fnc_name = 'end_cal_pyramid_level_1' , t.time = NOW();	

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cal_pyramid_level_2
-- ----------------------------
DROP PROCEDURE IF EXISTS `cal_pyramid_level_2`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cal_pyramid_level_2`()
BEGIN

UPDATE sys_check_process t set t.fnc_name = 'cal_pyramid_level_2' , t.time = NOW();	

DROP TABLE IF EXISTS sys_pyramid_level_2;
CREATE TABLE sys_pyramid_level_2 select * from (
SELECT 
t.hospcode,t.hospname
,t.am00+t.am01+t.am02+t.am03+t.am04 as m0_4
,t.am05+t.am06+t.am07+t.am08+t.am09 as m5_9
,t.am10+t.am11+t.am12+t.am14+t.am14 as m10_14
,t.am15+t.am16+t.am17+t.am18+t.am19 as m15_19
,t.am20+t.am21+t.am22+t.am23+t.am24 as m20_24
,t.am25+t.am26+t.am27+t.am28+t.am29 as m25_29
,t.am30+t.am31+t.am32+t.am33+t.am34 as m30_34
,t.am35+t.am36+t.am37+t.am38+t.am39 as m35_39
,t.am40+t.am41+t.am42+t.am43+t.am44 as m40_44
,t.am45+t.am46+t.am47+t.am48+t.am49 as m45_49
,t.am50+t.am51+t.am52+t.am53+t.am54 as m50_54
,t.am55+t.am56+t.am57+t.am58+t.am59 as m55_59
,t.am60+t.am61+t.am62+t.am63+t.am64 as m60_64
,t.am65+t.am66+t.am67+t.am68+t.am69 as m65_69
,t.am70+t.am71+t.am72+t.am73+t.am74 as m70_74
,t.am75+t.am76+t.am77+t.am78+t.am79 as m75_79
,t.am80+t.am81+t.am82+t.am83+t.am84 as m80_84
,t.am85+t.am86+t.am87+t.am88+t.am89 as m85_89
,t.am90+t.am91+t.am92+t.am93+t.am94 as m90_94
,t.am95+t.am96+t.am97+t.am98+t.am99 as m95_99
,t.am100 as m100
#####
,t.af00+t.af01+t.af02+t.af03+t.af04 as f0_4
,t.af05+t.af06+t.af07+t.af08+t.af09 as f5_9
,t.af10+t.af11+t.af12+t.af14+t.af14 as f10_14
,t.af15+t.af16+t.af17+t.af18+t.af19 as f15_19
,t.af20+t.af21+t.af22+t.af23+t.af24 as f20_24
,t.af25+t.af26+t.af27+t.af28+t.af29 as f25_29
,t.af30+t.af31+t.af32+t.af33+t.af34 as f30_34
,t.af35+t.af36+t.af37+t.af38+t.af39 as f35_39
,t.af40+t.af41+t.af42+t.af43+t.af44 as f40_44
,t.af45+t.af46+t.af47+t.af48+t.af49 as f45_49
,t.af50+t.af51+t.af52+t.af53+t.af54 as f50_54
,t.af55+t.af56+t.af57+t.af58+t.af59 as f55_59
,t.af60+t.af61+t.af62+t.af63+t.af64 as f60_64
,t.af65+t.af66+t.af67+t.af68+t.af69 as f65_69
,t.af70+t.af71+t.af72+t.af73+t.af74 as f70_74
,t.af75+t.af76+t.af77+t.af78+t.af79 as f75_79
,t.af80+t.af81+t.af82+t.af83+t.af84 as f80_84
,t.af85+t.af86+t.af87+t.af88+t.af89 as f85_89
,t.af90+t.af91+t.af92+t.af93+t.af94 as f90_94
,t.af95+t.af96+t.af97+t.af98+t.af99 as f95_99
,t.af100 as f100

from sys_pyramid_level_1 t

)	t;

UPDATE sys_check_process t set t.fnc_name = 'end_cal_pyramid_level_2' , t.time = NOW();	
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cal_pyramid_level_3
-- ----------------------------
DROP PROCEDURE IF EXISTS `cal_pyramid_level_3`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cal_pyramid_level_3`()
BEGIN	

UPDATE sys_check_process t set t.fnc_name = 'cal_pyramid_level_3' , t.time = NOW();	

TRUNCATE sys_pyramid_level_3;
REPLACE into sys_pyramid_level_3 SELECT 'a,0-4',t.hospcode,t.m0_4,t.f0_4 			from sys_pyramid_level_2 t;
REPLACE into sys_pyramid_level_3 SELECT 'b,5-9',t.hospcode,t.m5_9,t.f5_9 			from sys_pyramid_level_2 t;

REPLACE into sys_pyramid_level_3 SELECT 'c,10-14',t.hospcode,t.m10_14,t.f10_14 from sys_pyramid_level_2 t;
REPLACE into sys_pyramid_level_3 SELECT 'd,15-19',t.hospcode,t.m15_19,t.f15_19 from sys_pyramid_level_2 t;

REPLACE into sys_pyramid_level_3 SELECT 'e,20-24',t.hospcode,t.m20_24,t.f20_24 from sys_pyramid_level_2 t;
REPLACE into sys_pyramid_level_3 SELECT 'f,25-29',t.hospcode,t.m25_29,t.f25_29 from sys_pyramid_level_2 t;

REPLACE into sys_pyramid_level_3 SELECT 'g,30-34',t.hospcode,t.m30_34,t.f30_34 from sys_pyramid_level_2 t;
REPLACE into sys_pyramid_level_3 SELECT 'h,35-39',t.hospcode,t.m35_39,t.f35_39 from sys_pyramid_level_2 t;

REPLACE into sys_pyramid_level_3 SELECT 'i,40-44',t.hospcode,t.m40_44,t.f40_44 from sys_pyramid_level_2 t;
REPLACE into sys_pyramid_level_3 SELECT 'j,45-49',t.hospcode,t.m45_49,t.f45_49 from sys_pyramid_level_2 t;

REPLACE into sys_pyramid_level_3 SELECT 'k,50-54',t.hospcode,t.m50_54,t.f50_54 from sys_pyramid_level_2 t;
REPLACE into sys_pyramid_level_3 SELECT 'l,55-59',t.hospcode,t.m55_59,t.f55_59 from sys_pyramid_level_2 t;

REPLACE into sys_pyramid_level_3 SELECT 'm,60-64',t.hospcode,t.m60_64,t.f60_64 from sys_pyramid_level_2 t;
REPLACE into sys_pyramid_level_3 SELECT 'n,65-69',t.hospcode,t.m65_69,t.f65_69 from sys_pyramid_level_2 t;

REPLACE into sys_pyramid_level_3 SELECT 'o,70-74',t.hospcode,t.m70_74,t.f70_74 from sys_pyramid_level_2 t;
REPLACE into sys_pyramid_level_3 SELECT 'p,75-79',t.hospcode,t.m75_79,t.f75_79 from sys_pyramid_level_2 t;

REPLACE into sys_pyramid_level_3 SELECT 'q,80-84',t.hospcode,t.m80_84,t.f80_84 from sys_pyramid_level_2 t;
REPLACE into sys_pyramid_level_3 SELECT 'r,85-89',t.hospcode,t.m85_89,t.f85_89 from sys_pyramid_level_2 t;

REPLACE into sys_pyramid_level_3 SELECT 's,90-94',t.hospcode,t.m90_94,t.f90_94 from sys_pyramid_level_2 t;
REPLACE into sys_pyramid_level_3 SELECT 't,95-99',t.hospcode,t.m95_99,t.f95_99 from sys_pyramid_level_2 t;

REPLACE into sys_pyramid_level_3 SELECT 'u,100+',t.hospcode,t.m100,t.f100 from sys_pyramid_level_2 t;


UPDATE sys_check_process t set t.fnc_name = 'end_cal_pyramid_level_3' , t.time = NOW();	
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cal_rpt_breast_cancer_screening
-- ----------------------------
DROP PROCEDURE IF EXISTS `cal_rpt_breast_cancer_screening`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cal_rpt_breast_cancer_screening`(IN `selyear` varchar(4))
BEGIN
	UPDATE sys_check_process t set t.fnc_name = 'cal_rpt_breast_cancer_screening' , t.time = NOW();	

set @selyear = selyear;
#DROP TABLE IF EXISTS rpt_panth_visit_ratio;
#CREATE TABLE IF NOT EXISTS rpt_panth_visit_ratio;
REPLACE INTO rpt_breast_cancer_screening 
select  @selyear rep_year,h.hoscode as hospcode,h.hosname as hospname,
round(((pt_all/
(SELECT hos_target from
 (select person.hospcode , count(distinct person.pid) as hos_target from person  
           where person.typearea in ('1', '3') and person.nation ='099' 
           and (TIMESTAMPDIFF(YEAR,person.birth,CONCAT((@selyear-1),'-09-30')) between 30 and 60) and sex = '2' group by person.hospcode ) as t
where  t.hospcode = h.hoscode
))*100),2) as percentage,
(SELECT hos_target from
 (select person.hospcode , count(distinct person.pid) as hos_target from person  
           where person.typearea in ('1', '3') and person.nation ='099' 
           and (TIMESTAMPDIFF(YEAR,person.birth,CONCAT((@selyear-1),'-09-30')) between 30 and 60) and sex = '2' group by person.hospcode ) as t
where  t.hospcode = h.hoscode
) as target ,
pt_all,pt_m10,pt_m11,pt_m12,pt_m01,pt_m02,pt_m03,
pt_m04,pt_m05,pt_m06,pt_m07,pt_m08,pt_m09

from chospital_amp h
left join 
	(select person.hospcode,service.DATE_SERV,
	COUNT(DISTINCT IF(MONTH(service.DATE_SERV)=10,person.PID,NULL)) pt_m10,
	COUNT(DISTINCT IF(MONTH(service.DATE_SERV)=11,person.PID,NULL)) pt_m11,
	COUNT(DISTINCT IF(MONTH(service.DATE_SERV)=12,person.PID,NULL)) pt_m12,
	COUNT(DISTINCT IF(MONTH(service.DATE_SERV)=01,person.PID,NULL)) pt_m01,
	COUNT(DISTINCT IF(MONTH(service.DATE_SERV)=02,person.PID,NULL)) pt_m02,
	COUNT(DISTINCT IF(MONTH(service.DATE_SERV)=03,person.PID,NULL)) pt_m03,
	COUNT(DISTINCT IF(MONTH(service.DATE_SERV)=04,person.PID,NULL)) pt_m04,
	COUNT(DISTINCT IF(MONTH(service.DATE_SERV)=05,person.PID,NULL)) pt_m05,
	COUNT(DISTINCT IF(MONTH(service.DATE_SERV)=06,person.PID,NULL)) pt_m06,
	COUNT(DISTINCT IF(MONTH(service.DATE_SERV)=07,person.PID,NULL)) pt_m07,
	COUNT(DISTINCT IF(MONTH(service.DATE_SERV)=08,person.PID,NULL)) pt_m08,
	COUNT(DISTINCT IF(MONTH(service.DATE_SERV)=09,person.PID,NULL)) pt_m09,
	COUNT(DISTINCT person.PID) pt_all
	from service 
           inner join diagnosis_opd d on service.hospcode = d.hospcode and service.pid = d.pid  and service.SEQ = d.SEQ
           inner join person on service.hospcode = person.hospcode and service.pid = person.pid 
           where person.typearea in ('1', '3') and person.nation ='099'  and sex = '2'
           and (TIMESTAMPDIFF(YEAR,person.birth,CONCAT((@selyear-1),'-09-30')) between 30 and 60)  and d.diagcode = 'Z123' 
           and (DATE(service.DATE_SERV) BETWEEN CONCAT((@selyear-1),'-10-01') AND CONCAT(@selyear,'-09-30'))  group by person.hospcode) as r
on r.hospcode=h.hoscode
order by distcode,hoscode asc;

UPDATE sys_check_process t set t.fnc_name = 'end_cal_rpt_breast_cancer_screening' , t.time = NOW();

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cal_rpt_cervical_cancer_screening
-- ----------------------------
DROP PROCEDURE IF EXISTS `cal_rpt_cervical_cancer_screening`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cal_rpt_cervical_cancer_screening`(IN `selyear` varchar(4))
BEGIN
	

set @selyear = selyear;
#DROP TABLE IF EXISTS rpt_cervical_cancer_screening;
#CREATE TABLE IF NOT EXISTS rpt_cervical_cancer_screening
REPLACE INTO rpt_cervical_cancer_screening 

select  @selyear rep_year,h.hoscode as hospcode,h.hosname as hospname,
ROUND((pt_all/(SELECT hos_target from
 (select person.hospcode , count(distinct person.pid) as hos_target from person  
           where person.typearea in ('1', '3') and person.nation ='099' 
           and (TIMESTAMPDIFF(YEAR,person.birth,CONCAT((@selyear-1),'-09-30')) between 30 and 60) and sex = '2' group by person.hospcode ) as t
where  t.hospcode = h.hoscode
)*100),2) as percentage,
(SELECT hos_target from
 (select person.hospcode , count(distinct person.pid) as hos_target from person  
           where person.typearea in ('1', '3') and person.nation ='099' 
           and (TIMESTAMPDIFF(YEAR,person.birth,CONCAT((@selyear-1),'-09-30')) between 30 and 60) and sex = '2' group by person.hospcode ) as t
where  t.hospcode = h.hoscode
) as target,
pt_all,pt_m10,pt_m11,pt_m12,pt_m01,pt_m02,pt_m03,
pt_m04,pt_m05,pt_m06,pt_m07,pt_m08,pt_m09
from chospital_amp h
left join 
	(select person.hospcode,service.DATE_SERV,
	COUNT(DISTINCT IF(MONTH(service.DATE_SERV)=10,person.PID,NULL)) pt_m10,
	COUNT(DISTINCT IF(MONTH(service.DATE_SERV)=11,person.PID,NULL)) pt_m11,
	COUNT(DISTINCT IF(MONTH(service.DATE_SERV)=12,person.PID,NULL)) pt_m12,
	COUNT(DISTINCT IF(MONTH(service.DATE_SERV)=01,person.PID,NULL)) pt_m01,
	COUNT(DISTINCT IF(MONTH(service.DATE_SERV)=02,person.PID,NULL)) pt_m02,
	COUNT(DISTINCT IF(MONTH(service.DATE_SERV)=03,person.PID,NULL)) pt_m03,
	COUNT(DISTINCT IF(MONTH(service.DATE_SERV)=04,person.PID,NULL)) pt_m04,
	COUNT(DISTINCT IF(MONTH(service.DATE_SERV)=05,person.PID,NULL)) pt_m05,
	COUNT(DISTINCT IF(MONTH(service.DATE_SERV)=06,person.PID,NULL)) pt_m06,
	COUNT(DISTINCT IF(MONTH(service.DATE_SERV)=07,person.PID,NULL)) pt_m07,
	COUNT(DISTINCT IF(MONTH(service.DATE_SERV)=08,person.PID,NULL)) pt_m08,
	COUNT(DISTINCT IF(MONTH(service.DATE_SERV)=09,person.PID,NULL)) pt_m09,
	COUNT(DISTINCT person.PID) pt_all
	from service 
    inner join diagnosis_opd d on service.hospcode = d.hospcode and service.pid = d.pid  and service.SEQ = d.SEQ
    inner join person on service.hospcode = person.hospcode and service.pid = person.pid 
    where person.typearea in ('1', '3') and person.nation ='099'  and sex = '2'
    and (TIMESTAMPDIFF(YEAR,person.birth,CONCAT((@selyear-1),'-09-30')) between 30 and 60)  and d.diagcode in ('Z014','Z124') 
    and (DATE(service.DATE_SERV) BETWEEN CONCAT((@selyear-1),'-10-01') AND CONCAT(@selyear,'-09-30'))  group by person.hospcode) as r
on r.hospcode=h.hoscode
order by hoscode asc;


END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cal_rpt_panth_drug_value
-- ----------------------------
DROP PROCEDURE IF EXISTS `cal_rpt_panth_drug_value`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cal_rpt_panth_drug_value`(IN `selyear` varchar(4))
BEGIN
	UPDATE sys_check_process t set t.fnc_name = 'cal_rpt_panth_drug_value' , t.time = NOW();	

set @selyear = selyear;
#DROP TABLE IF EXISTS rpt_panth_visit_ratio;
#CREATE TABLE IF NOT EXISTS rpt_panth_visit_ratio;
REPLACE INTO rpt_panth_drug_value 
SELECT SQL_BIG_RESULT
e.HOSPCODE as hoscode,
@selyear year_rep,
DATE_FORMAT(e.date_serv,'%m') as month,
SUM(IF(LEFT(e.DIDSTD,2) <> '41' OR LEFT(e.DIDSTD,2) <> '42',e.DRUGPRICE*e.AMOUNT,0))  price_drug ,
SUM(IF(d.didstd IS NOT NULL,e.DRUGPRICE*e.AMOUNT,0))  price_planthai_drug
FROM drug_opd e 
LEFT JOIN cdrug_planthai d ON d.didstd=e.DIDSTD 
LEFT JOIN chospital_amp i ON e.HOSPCODE = i.hoscode 
WHERE e.DATE_SERV BETWEEN CONCAT((@selyear-1),'-10-01') AND CONCAT(@selyear,'-09-30')   
GROUP BY e.HOSPCODE, LEFT(DATE(e.DATE_SERV),7);

UPDATE sys_check_process t set t.fnc_name = 'end_cal_rpt_panth_drug_value' , t.time = NOW();	
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cal_rpt_panth_visit_ratio
-- ----------------------------
DROP PROCEDURE IF EXISTS `cal_rpt_panth_visit_ratio`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cal_rpt_panth_visit_ratio`(IN `selyear` varchar(4))
BEGIN
	UPDATE sys_check_process t set t.fnc_name = 'cal_rpt_panth_visit_ratio' , t.time = NOW();	

set @selyear = selyear;
#DROP TABLE IF EXISTS rpt_panth_visit_ratio;
#CREATE TABLE IF NOT EXISTS rpt_panth_visit_ratio;
REPLACE INTO rpt_panth_visit_ratio 
SELECT 
o.hoscode pcucode,
e.code_rep quarterly,
@selyear year_rep,
IFNULL(e.OP_SERVICE_PT,0) op_service_pt,
IFNULL(e.OP_SERVICE,0) op_service,
IFNULL(t.TM_SERVICE_PT,0) tm_service_pt,
IFNULL(t.TM_SERVICE,0) tm_service
FROM chospital_amp o 
LEFT JOIN 
(
SELECT SQL_BIG_RESULT 
e.HOSPCODE,
IF(MONTH(e.DATE_SERV) IN (10,11,12),1,
IF(MONTH(e.DATE_SERV) IN (1,2,3),2,
IF(MONTH(e.DATE_SERV) IN (4,5,6),3,4))) code_rep,
COUNT(DISTINCT e.PID) OP_SERVICE_PT, 
COUNT(DISTINCT e.SEQ) OP_SERVICE 
FROM service e 
LEFT JOIN diagnosis_opd d ON d.HOSPCODE = e.HOSPCODE AND d.PID = e.PID AND d.SEQ = e.SEQ AND DATE_FORMAT(d.DATE_SERV,'%Y-%m-%d') BETWEEN CONCAT((@selyear-1),'-10-01') AND CONCAT(@selyear,'-09-30') 
WHERE DATE_FORMAT(e.DATE_SERV,'%Y-%m-%d') BETWEEN CONCAT((@selyear-1),'-10-01') AND CONCAT(@selyear,'-09-30') 
AND LEFT(d.DIAGCODE,1) <> 'Z'
GROUP BY e.HOSPCODE, 
IF(MONTH(e.DATE_SERV) IN (10,11,12),1,
IF(MONTH(e.DATE_SERV) IN (1,2,3),2,
IF(MONTH(e.DATE_SERV) IN (4,5,6),3,4)))
) e ON e.HOSPCODE = o.hoscode 

LEFT JOIN 
(
SELECT SQL_BIG_RESULT 
e.HOSPCODE,
IF(MONTH(e.DATE_SERV) IN (10,11,12),1,
IF(MONTH(e.DATE_SERV) IN (1,2,3),2,
IF(MONTH(e.DATE_SERV) IN (4,5,6),3,4))) code_rep,
COUNT(DISTINCT e.PID) TM_SERVICE_PT, 
COUNT(DISTINCT e.SEQ) TM_SERVICE 
FROM
(
SELECT e.HOSPCODE, 
e.PID, 
e.SEQ, 
e.DATE_SERV 
FROM diagnosis_opd e 
WHERE DATE_FORMAT(e.DATE_SERV,'%Y-%m-%d') BETWEEN CONCAT((@selyear-1),'-10-01') AND CONCAT(@selyear,'-09-30') 
AND LEFT(e.DIAGCODE,1) = 'U'

UNION 
SELECT e.HOSPCODE, 
e.PID, 
e.SEQ, 
e.DATE_SERV 
FROM drug_opd e 
WHERE DATE_FORMAT(e.DATE_SERV,'%Y-%m-%d') BETWEEN CONCAT((@selyear-1),'-10-01') AND CONCAT(@selyear,'-09-30') 
AND LEFT(e.DIDSTD,2) IN ('41','42') 

UNION 
SELECT e.HOSPCODE, 
e.PID, 
e.SEQ, 
e.DATE_SERV 
FROM procedure_opd e 
LEFT JOIN cicd9ttm_planthai p ON e.PROCEDCODE=p.`code` 
WHERE DATE_FORMAT(e.DATE_SERV,'%Y-%m-%d') BETWEEN CONCAT((@selyear-1),'-10-01') AND CONCAT(@selyear,'-09-30') 
AND p.code IS NOT NULL 

) e
GROUP BY e.HOSPCODE, IF(MONTH(e.DATE_SERV) IN (10,11,12),1,
IF(MONTH(e.DATE_SERV) IN (1,2,3),2,
IF(MONTH(e.DATE_SERV) IN (4,5,6),3,4)))
) t ON t.HOSPCODE = e.HOSPCODE AND t.code_rep = e.code_rep
WHERE  e.HOSPCODE IS NOT NULL;

UPDATE sys_check_process t set t.fnc_name = 'end_cal_rpt_panth_visit_ratio' , t.time = NOW();	
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cal_rpt_visit_oldman
-- ----------------------------
DROP PROCEDURE IF EXISTS `cal_rpt_visit_oldman`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cal_rpt_visit_oldman`(IN `selyear` varchar(4))
BEGIN

UPDATE sys_check_process t set t.fnc_name = 'cal_rpt_visit_oldman' , t.time = NOW();	

set @bdg_date = '2014-09-30';
set @selyear = selyear;
set @pyear = @selyear-1;

#/ร้อยละของผู้สูงอายุที่ได้รับการเยี่ยมบ้าน.sql
#drop TABLE if EXISTS rpt_visit_oldman;
#CREATE TABLE rpt_visit_oldman
REPLACE into  rpt_visit_oldman

select SQL_BIG_RESULT  @selyear as selyear,temp.hoscode,temp.hosname,temp.target,temp.oct,temp.nov,temp.dec,temp.jan,temp.feb
,temp.mar,temp.apr,temp.may,temp.jun,temp.jul,temp.aug,temp.sep from 
(select h.hoscode,h.hosname,
(SELECT
count(distinct p.CID)
FROM
person as p
where  p.NATION='099' and p.DISCHARGE='9' and p.TYPEAREA in ('1','3') 
and p.HOSPCODE=h.hoscode and (TIMESTAMPDIFF(YEAR,p.birth,@bdg_date)>= 60)) as target,

(select count(distinct hhv.CID) as num from 
(SELECT comserv.HOSPCODE,comserv.PID,comserv.SEQ,comserv.DATE_SERV,comserv.COMSERVICE,p.CID
FROM community_service as comserv,person as p
where p.PID=comserv.PID and p.HOSPCODE=comserv.HOSPCODE
and comserv.COMSERVICE like "1A4%" and (TIMESTAMPDIFF(YEAR,p.birth,@bdg_date)>= 60)
and  EXTRACT(YEAR_MONTH FROM comserv.DATE_SERV)= CONCAT(@pyear,'10')
group by p.CID) as hhv where hhv.HOSPCODE=h.hoscode) as 'oct'

,(select count(distinct hhv.CID) as num from 
(SELECT comserv.HOSPCODE,comserv.PID,comserv.SEQ,comserv.DATE_SERV,comserv.COMSERVICE,p.CID
FROM community_service as comserv,person as p
where p.PID=comserv.PID and p.HOSPCODE=comserv.HOSPCODE
and comserv.COMSERVICE like "1A4%" and (TIMESTAMPDIFF(YEAR,p.birth,@bdg_date)>= 60)
and  EXTRACT(YEAR_MONTH FROM comserv.DATE_SERV)= CONCAT(@pyear,'11')
group by p.CID) as hhv where hhv.HOSPCODE=h.hoscode) as 'nov'

,(select count(distinct hhv.CID) as num from 
(SELECT comserv.HOSPCODE,comserv.PID,comserv.SEQ,comserv.DATE_SERV,comserv.COMSERVICE,p.CID
FROM community_service as comserv,person as p
where p.PID=comserv.PID and p.HOSPCODE=comserv.HOSPCODE
and comserv.COMSERVICE like "1A4%" and (TIMESTAMPDIFF(YEAR,p.birth,@bdg_date)>= 60)
and  EXTRACT(YEAR_MONTH FROM comserv.DATE_SERV)= CONCAT(@pyear,'12')
group by p.CID) as hhv where hhv.HOSPCODE=h.hoscode) as 'dec'

,(select count(distinct hhv.CID) as num from 
(SELECT comserv.HOSPCODE,comserv.PID,comserv.SEQ,comserv.DATE_SERV,comserv.COMSERVICE,p.CID
FROM community_service as comserv,person as p
where p.PID=comserv.PID and p.HOSPCODE=comserv.HOSPCODE
and comserv.COMSERVICE like "1A4%" and (TIMESTAMPDIFF(YEAR,p.birth,@bdg_date)>= 60)
and  EXTRACT(YEAR_MONTH FROM comserv.DATE_SERV)= CONCAT(@selyear,'01')
group by p.CID) as hhv where hhv.HOSPCODE=h.hoscode) as jan

,(select count(distinct hhv.CID) as num from 
(SELECT comserv.HOSPCODE,comserv.PID,comserv.SEQ,comserv.DATE_SERV,comserv.COMSERVICE,p.CID
FROM community_service as comserv,person as p
where p.PID=comserv.PID and p.HOSPCODE=comserv.HOSPCODE
and comserv.COMSERVICE like "1A4%" and (TIMESTAMPDIFF(YEAR,p.birth,@bdg_date)>= 60)
and  EXTRACT(YEAR_MONTH FROM comserv.DATE_SERV)= CONCAT(@selyear,'02')
group by p.CID) as hhv where hhv.HOSPCODE=h.hoscode) as feb

,(select count(distinct hhv.CID) as num from 
(SELECT comserv.HOSPCODE,comserv.PID,comserv.SEQ,comserv.DATE_SERV,comserv.COMSERVICE,p.CID
FROM community_service as comserv,person as p
where p.PID=comserv.PID and p.HOSPCODE=comserv.HOSPCODE
and comserv.COMSERVICE like "1A4%" and (TIMESTAMPDIFF(YEAR,p.birth,@bdg_date)>= 60)
and  EXTRACT(YEAR_MONTH FROM comserv.DATE_SERV)= CONCAT(@selyear,'03')
group by p.CID) as hhv where hhv.HOSPCODE=h.hoscode) as mar

,(select count(distinct hhv.CID) as num from 
(SELECT comserv.HOSPCODE,comserv.PID,comserv.SEQ,comserv.DATE_SERV,comserv.COMSERVICE,p.CID
FROM community_service as comserv,person as p
where p.PID=comserv.PID and p.HOSPCODE=comserv.HOSPCODE
and comserv.COMSERVICE like "1A4%" and (TIMESTAMPDIFF(YEAR,p.birth,@bdg_date)>= 60)
and  EXTRACT(YEAR_MONTH FROM comserv.DATE_SERV)= CONCAT(@selyear,'04')
group by p.CID) as hhv where hhv.HOSPCODE=h.hoscode) as apr

,(select count(distinct hhv.CID) as num from 
(SELECT comserv.HOSPCODE,comserv.PID,comserv.SEQ,comserv.DATE_SERV,comserv.COMSERVICE,p.CID
FROM community_service as comserv,person as p
where p.PID=comserv.PID and p.HOSPCODE=comserv.HOSPCODE
and comserv.COMSERVICE like "1A4%" and (TIMESTAMPDIFF(YEAR,p.birth,@bdg_date)>= 60)
and  EXTRACT(YEAR_MONTH FROM comserv.DATE_SERV)= CONCAT(@selyear,'05')
group by p.CID) as hhv where hhv.HOSPCODE=h.hoscode) as may

,(select count(distinct hhv.CID) as num from 
(SELECT comserv.HOSPCODE,comserv.PID,comserv.SEQ,comserv.DATE_SERV,comserv.COMSERVICE,p.CID
FROM community_service as comserv,person as p
where p.PID=comserv.PID and p.HOSPCODE=comserv.HOSPCODE
and comserv.COMSERVICE like "1A4%" and (TIMESTAMPDIFF(YEAR,p.birth,@bdg_date)>= 60)
and  EXTRACT(YEAR_MONTH FROM comserv.DATE_SERV)= CONCAT(@selyear,'06')
group by p.CID) as hhv where hhv.HOSPCODE=h.hoscode) as jun 

,(select count(distinct hhv.CID) as num from 
(SELECT comserv.HOSPCODE,comserv.PID,comserv.SEQ,comserv.DATE_SERV,comserv.COMSERVICE,p.CID
FROM community_service as comserv,person as p
where p.PID=comserv.PID and p.HOSPCODE=comserv.HOSPCODE
and comserv.COMSERVICE like "1A4%" and (TIMESTAMPDIFF(YEAR,p.birth,@bdg_date)>= 60)
and  EXTRACT(YEAR_MONTH FROM comserv.DATE_SERV)= CONCAT(@selyear,'07')
group by p.CID) as hhv where hhv.HOSPCODE=h.hoscode) as jul

,(select count(distinct hhv.CID) as num from 
(SELECT comserv.HOSPCODE,comserv.PID,comserv.SEQ,comserv.DATE_SERV,comserv.COMSERVICE,p.CID
FROM community_service as comserv,person as p
where p.PID=comserv.PID and p.HOSPCODE=comserv.HOSPCODE
and comserv.COMSERVICE like "1A4%" and (TIMESTAMPDIFF(YEAR,p.birth,@bdg_date)>= 60)
and  EXTRACT(YEAR_MONTH FROM comserv.DATE_SERV)= CONCAT(@selyear,'08')
group by p.CID) as hhv where hhv.HOSPCODE=h.hoscode) as aug

,(select count(distinct hhv.CID) as num from 
(SELECT comserv.HOSPCODE,comserv.PID,comserv.SEQ,comserv.DATE_SERV,comserv.COMSERVICE,p.CID
FROM community_service as comserv,person as p
where p.PID=comserv.PID and p.HOSPCODE=comserv.HOSPCODE
and comserv.COMSERVICE like "1A4%" and (TIMESTAMPDIFF(YEAR,p.birth,@bdg_date)>= 60)
and  EXTRACT(YEAR_MONTH FROM comserv.DATE_SERV)= CONCAT(@selyear,'09')
group by p.CID) as hhv where hhv.HOSPCODE=h.hoscode) as sep





from chospital_amp h ) as temp;	

UPDATE sys_check_process t set t.fnc_name = 'end_cal_rpt_visit_oldman' , t.time = NOW();	


END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cal_sys_count_all
-- ----------------------------
DROP PROCEDURE IF EXISTS `cal_sys_count_all`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cal_sys_count_all`(IN `ym` varchar(6))
BEGIN
UPDATE sys_check_process t set t.fnc_name = 'cal_sys_count_all' , t.time = NOW();	

	set @ym = ym;

#DROP TABLE sys_count_all;
#CREATE TABLE sys_count_all  as 
REPLACE into sys_count_all  


SELECT SQL_BIG_RESULT h.hoscode as hospcode,@ym as month,

(select COUNT(*) from functional t where t.HOSPCODE=h.hoscode and EXTRACT(YEAR_MONTH FROM t.DATE_SERV)=@ym) as functional,
(select COUNT(*) from icf t where t.HOSPCODE=h.hoscode and EXTRACT(YEAR_MONTH FROM t.DATE_SERV)=@ym) as icf,
(select COUNT(*) from service t where t.HOSPCODE=h.hoscode and EXTRACT(YEAR_MONTH FROM t.DATE_SERV)=@ym) as service,
(select COUNT(*) from diagnosis_opd t where t.HOSPCODE=h.hoscode and EXTRACT(YEAR_MONTH FROM t.DATE_SERV)=@ym) as diagnosis_opd,
(select COUNT(*) from drug_opd t where t.HOSPCODE=h.hoscode and EXTRACT(YEAR_MONTH FROM t.DATE_SERV)=@ym) as drug_opd,
(select COUNT(*) from procedure_opd t where t.HOSPCODE=h.hoscode and EXTRACT(YEAR_MONTH FROM t.DATE_SERV)=@ym) as procedure_opd,
(select COUNT(*) from charge_opd t where t.HOSPCODE=h.hoscode and EXTRACT(YEAR_MONTH FROM t.DATE_SERV)=@ym) as charge_opd,
(select COUNT(*) from surveillance t where t.HOSPCODE=h.hoscode and EXTRACT(YEAR_MONTH FROM t.DATE_SERV)=@ym) as surveillance,
(select COUNT(*) from accident t where t.HOSPCODE=h.hoscode and EXTRACT(YEAR_MONTH FROM t.DATETIME_SERV)=@ym) as accident,
(select COUNT(*) from labfu t where t.HOSPCODE=h.hoscode and EXTRACT(YEAR_MONTH FROM t.DATE_SERV)=@ym) as labfu,
(select COUNT(*) from chronicfu t where t.HOSPCODE=h.hoscode and EXTRACT(YEAR_MONTH FROM t.DATE_SERV)=@ym) as chronicfu,

(select COUNT(*) from admission t where t.HOSPCODE=h.hoscode and EXTRACT(YEAR_MONTH FROM t.DATETIME_ADMIT)=@ym) as admission,
(select COUNT(*) from diagnosis_ipd t where t.HOSPCODE=h.hoscode and EXTRACT(YEAR_MONTH FROM t.DATETIME_ADMIT)=@ym) as diagnosis_ipd,
(select COUNT(*) from procedure_ipd t where t.HOSPCODE=h.hoscode and EXTRACT(YEAR_MONTH FROM t.DATETIME_ADMIT)=@ym) as procedure_ipd,
(select COUNT(*) from drug_ipd t where t.HOSPCODE=h.hoscode and EXTRACT(YEAR_MONTH FROM t.DATETIME_ADMIT)=@ym) as drug_ipd,
(select COUNT(*) from charge_ipd t where t.HOSPCODE=h.hoscode and EXTRACT(YEAR_MONTH FROM t.DATETIME_ADMIT)=@ym) as charge_ipd,

(select COUNT(*) from dental t where t.HOSPCODE=h.hoscode and EXTRACT(YEAR_MONTH FROM t.DATE_SERV)=@ym) as dental,
(select COUNT(*) from fp t where t.HOSPCODE=h.hoscode and EXTRACT(YEAR_MONTH FROM t.DATE_SERV)=@ym) as fp,
(select COUNT(*) from community_activity t where t.HOSPCODE=h.hoscode and EXTRACT(YEAR_MONTH FROM t.DATE_START)=@ym) as community_activity,
(select COUNT(*) from community_service t where t.HOSPCODE=h.hoscode and EXTRACT(YEAR_MONTH FROM t.DATE_SERV)=@ym) as community_service,



(select COUNT(*) from rehabilitation t where t.HOSPCODE=h.hoscode and EXTRACT(YEAR_MONTH FROM t.DATE_SERV)=@ym) as rehabilitation,
(select COUNT(*) from ncdscreen t where t.HOSPCODE=h.hoscode and EXTRACT(YEAR_MONTH FROM t.DATE_SERV)=@ym) as ncdscreen,
(select COUNT(*) from anc t where t.HOSPCODE=h.hoscode and EXTRACT(YEAR_MONTH FROM t.DATE_SERV)=@ym) as anc,
(select COUNT(*) from postnatal t where t.HOSPCODE=h.hoscode and EXTRACT(YEAR_MONTH FROM t.PPCARE)=@ym) as postnatal,
(select COUNT(*) from newborncare t where t.HOSPCODE=h.hoscode and EXTRACT(YEAR_MONTH FROM t.BCARE)=@ym) as newborncare,
(select COUNT(*) from epi t where t.HOSPCODE=h.hoscode and EXTRACT(YEAR_MONTH FROM t.DATE_SERV)=@ym) as epi,
(select COUNT(*) from nutrition t where t.HOSPCODE=h.hoscode and EXTRACT(YEAR_MONTH FROM t.DATE_SERV)=@ym) as nutrition,
(select COUNT(*) from specialpp t where t.HOSPCODE=h.hoscode and EXTRACT(YEAR_MONTH FROM t.DATE_SERV)=@ym) as specialpp,


(select COUNT(*) from person t where t.HOSPCODE=h.hoscode ) as person,
(select COUNT(*) from chronic t where t.HOSPCODE=h.hoscode ) as chronic,
(select COUNT(*) from address t where t.HOSPCODE=h.hoscode ) as address,
(select COUNT(*) from home t where t.HOSPCODE=h.hoscode ) as home,
(select COUNT(*) from village t where t.HOSPCODE=h.hoscode ) as village,
(select COUNT(*) from disability t where t.HOSPCODE=h.hoscode ) as disability,
(select COUNT(*) from provider t where t.HOSPCODE=h.hoscode ) as provider,
(select COUNT(*) from women t where t.HOSPCODE=h.hoscode ) as women,
(select COUNT(*) from drugallergy t where t.HOSPCODE=h.hoscode ) as drugallergy,
(select COUNT(*) from prenatal t where t.HOSPCODE=h.hoscode ) as prenatal,
(select COUNT(*) from labor t where t.HOSPCODE=h.hoscode ) as labor,
(select COUNT(*) from newborn t where t.HOSPCODE=h.hoscode ) as newborn,
(select COUNT(*) from death t where t.HOSPCODE=h.hoscode ) as death


from chospital_amp h;

UPDATE sys_check_process t set t.fnc_name = 'end_cal_sys_count_all' , t.time = NOW();	
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cal_sys_person_type
-- ----------------------------
DROP PROCEDURE IF EXISTS `cal_sys_person_type`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cal_sys_person_type`()
BEGIN
UPDATE sys_check_process t set t.fnc_name = 'cal_sys_person_type' , t.time = NOW();	

drop TABLE  IF EXISTS sys_person_type;
CREATE TABLE sys_person_type SELECT * from (
select SQL_BIG_RESULT  h.hoscode as hospcode ,h.hosname as hospname,type1,type2,type3,type4,type5,nottype,total
from chospital_amp h
left join 
   (select person.hospcode  ,count(*) as total
		,sum(if(person.typearea='1',1,0)) as type1
    ,sum(if(person.typearea='2',1,0)) as type2
		,sum(if(person.typearea='3',1,0)) as type3
		,sum(if(person.typearea='4',1,0)) as type4
		,sum(if(person.typearea='5',1,0)) as type5
    ,sum(if(person.typearea not in ('1','2','3','4','5'),1,0)) as nottype
    from person
    #where person.discharge = '9'  and person.nation ='099' 
    group by person.hospcode
    order by hospcode) as pa
on h.hoscode = pa.hospcode

order by hoscode asc ) t	;

UPDATE sys_check_process t set t.fnc_name = 'end_cal_sys_person_type' , t.time = NOW();
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for clear_import_not_success
-- ----------------------------
DROP PROCEDURE IF EXISTS `clear_import_not_success`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `clear_import_not_success`()
BEGIN
UPDATE sys_check_process t set t.fnc_name = 'clear_import_not_success' , t.time = NOW();	
	
DELETE from sys_upload_fortythree where UPPER(note2) != 'OK' and  (DATEDIFF(CURDATE(),upload_date) > 2);

UPDATE sys_check_process t set t.fnc_name = 'end_clear_import_not_success' , t.time = NOW();	

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for clear_null_hospcode
-- ----------------------------
DROP PROCEDURE IF EXISTS `clear_null_hospcode`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `clear_null_hospcode`()
BEGIN

UPDATE sys_check_process t set t.fnc_name = 'clear_null_hospcode' , t.time = NOW();

delete from service where hospcode ='';
delete from person where hospcode ='';
delete from chronic where hospcode='';
delete from labfu where hospcode='';
delete from charge_opd where hospcode='';
delete from charge_ipd where hospcode='';
delete from diagnosis_opd where hospcode='';
delete from drug_opd where hospcode='';
delete from procedure_opd where hospcode='';
delete from home where hospcode='';
delete from labfu where hospcode='';
delete from chronicfu where hospcode='';
delete from epi where hospcode='';
delete from accident where hospcode='';
	
UPDATE sys_check_process t set t.fnc_name = 'end_clear_null_hospcode' , t.time = NOW();
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for clear_qc
-- ----------------------------
DROP PROCEDURE IF EXISTS `clear_qc`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `clear_qc`()
BEGIN
	UPDATE sys_files SET qc = 0 , note1 = NULL,note2 = NULL,note3=NULL;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for clear_upload_error
-- ----------------------------
DROP PROCEDURE IF EXISTS `clear_upload_error`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `clear_upload_error`()
BEGIN
		
		UPDATE sys_check_process t set t.fnc_name = 'clear_upload_error' , t.time = NOW();
		
		DELETE FROM sys_upload_fortythree		WHERE note2 <> 'OK'  
		AND TIMESTAMPDIFF(DAY,upload_date,CURDATE()) > 3;

		UPDATE sys_check_process t set t.fnc_name = 'end_clear_upload_error' , t.time = NOW();

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for disable_keys
-- ----------------------------
DROP PROCEDURE IF EXISTS `disable_keys`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `disable_keys`()
BEGIN
	
	ALTER TABLE charge_opd DISABLE KEYS;
	ALTER TABLE charge_ipd DISABLE KEYS;
	ALTER TABLE drug_opd DISABLE KEYS;
	ALTER TABLE drug_ipd DISABLE KEYS;
	ALTER TABLE diagnosis_opd DISABLE KEYS;
	ALTER TABLE diagnosis_ipd DISABLE KEYS;
	ALTER TABLE service DISABLE KEYS;
	ALTER TABLE procedure_opd DISABLE KEYS;
	ALTER TABLE procedure_ipd DISABLE KEYS;
	ALTER TABLE appointment DISABLE KEYS;
	ALTER TABLE person DISABLE KEYS;
	ALTER TABLE card DISABLE KEYS;
	ALTER TABLE address DISABLE KEYS;
	ALTER TABLE labfu DISABLE KEYS;

	

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for enable_keys
-- ----------------------------
DROP PROCEDURE IF EXISTS `enable_keys`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `enable_keys`()
BEGIN

	ALTER TABLE charge_opd ENABLE KEYS;
	ALTER TABLE charge_ipd ENABLE KEYS;
	ALTER TABLE drug_opd ENABLE KEYS;
	ALTER TABLE drug_ipd ENABLE KEYS;
	ALTER TABLE diagnosis_opd ENABLE KEYS;
	ALTER TABLE diagnosis_ipd ENABLE KEYS;
	ALTER TABLE service ENABLE KEYS;
	ALTER TABLE procedure_opd ENABLE KEYS;
	ALTER TABLE procedure_ipd ENABLE KEYS;
	ALTER TABLE appointment ENABLE KEYS;
	ALTER TABLE person ENABLE KEYS;
	ALTER TABLE card ENABLE KEYS;
	ALTER TABLE address ENABLE KEYS;
	ALTER TABLE labfu ENABLE KEYS;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for end_process
-- ----------------------------
DROP PROCEDURE IF EXISTS `end_process`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `end_process`()
BEGIN
	UPDATE sys_check_process t set t.fnc_name = 'end_process' , t.time = NOW();

	 UPDATE sys_process_running s  set s.is_running = 'false';
	 UPDATE sys_event_log SET end_at=DATE_FORMAT(NOW(), '%Y%m%d%H%i%s') ORDER BY id DESC LIMIT 1;

UPDATE sys_check_process t set t.fnc_name = 'all_process_complete' , t.time = NOW();

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_all
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_all`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_all`()
BEGIN
call start_process;

TRUNCATE err_zhos;
call err_anc;
call err_charge_opd;
call err_chronic;
call err_chronicfu;
call err_dental;
call err_diagnosis_opd;
call err_disability;
call err_drugallergy;
call err_drug_opd;
call err_epi;
call err_fp;
call err_functional;
call err_icf;
call err_labfu;
call err_labor;
call err_ncdscreen;
call err_newborn;
call err_newborncare;
call err_nutrition;
call err_person;
call err_postnatal;
call err_prenatal;
call err_procedure_opd;
call err_provider;
call err_rehabilitation;
call err_service;
call err_specialpp;
call err_village;
	

	call end_process;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_anc
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_anc`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_anc`()
BEGIN


SET @start_date='2015-10-01',@end_date = CURDATE();

UPDATE sys_check_process t set t.fnc_name = 'err_anc' , t.time = NOW();
DELETE FROM anc WHERE HOSPCODE NOT IN (SELECT hoscode from chospital_amp);
DROP TABLE IF EXISTS err_anc;
CREATE TABLE  err_anc AS
(
SELECT * FROM
(SELECT SQL_BIG_RESULT
	'ANC' as FILE

	,(SELECT y.BYEAR FROM cbyear y WHERE t.DATE_SERV BETWEEN y.DATE1 AND y.DATE2) as 'BYEAR' 
	,if(t.DATE_SERV is NULL or t.DATE_SERV < (CURDATE()-INTERVAL 50 YEAR) or  t.DATE_SERV > CURDATE(),'Y','') as 'ERR_DATE'

,CONCAT(
	if(LENGTH(trim(t.HOSPCODE)) <> 5 ,'AN1101,','')
	,if(trim(t.PID) = '' or t.PID is NULL,'AN1103,','')
	,if(t.DATE_SERV is NULL or t.DATE_SERV < (CURDATE()-INTERVAL 50 YEAR) or  t.DATE_SERV > CURDATE(),'AN1105,','')	
	,if(trim(t.GA)='' or t.GA IS NULL or t.GA > 45,'AN1141,','')
	,if(trim(t.ANCNO) NOT IN (1,2,3,4,5,'',NULL),'AN1143,','')
	,if(p.HOSPCODE IS NUll or p.PID is NULL,'AN9200,','')
	,if(hos.hoscode is NUll,'AN9201,','')	
	,if(p.SEX <> 2,'SEX,','')
	,if(t.GRAVIDA IS NULL or trim(t.GRAVIDA)='' or t.GRAVIDA=0,'GRAVIDA,','')
) as ERR_CODE 
	,t.HOSPCODE 	,t.PID ,p.SEX,t.DATE_SERV,t.GRAVIDA,t.ANCNO,t.GA,date(t.D_UPDATE) as 'DUPDATE'

	


FROM  anc  t 
			LEFT JOIN person p on t.HOSPCODE = p.HOSPCODE AND t.PID = p.PID
			LEFT JOIN chospital_amp hos ON hos.hoscode = t.HOSPCODE
		

) d 

WHERE d.ERR_CODE <> ''

); # end create

REPLACE INTO err_zhos
(
SELECT h.hoscode as 'HOSPCODE'
,'ANC' as 'FILE' 
,(SELECT COUNT(*) FROM anc t WHERE t.HOSPCODE = h.hoscode) as 'TOTAL'
,(SELECT COUNT(*) FROM err_anc t WHERE t.HOSPCODE = h.hoscode) as 'ERR'
,CURDATE() as 'DUPDATE'
FROM chospital_amp h
);

UPDATE sys_files SET 
qc = 100-ROUND((SELECT count(*) from err_anc)*100/(SELECT count(*) from anc),2)
,note1 = 'y' , note2 = CURDATE() WHERE file_name = 'anc';
UPDATE sys_files set qc = 0.00 WHERE qc is NULL;

CALL err_anc_b(2558);CALL err_anc_b(2559);

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_anc_b
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_anc_b`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_anc_b`(IN `BYEAR` varchar(4))
BEGIN
	SET @byear = byear;
	SET @date1 = (SELECT c.DATE1 FROM cbyear c WHERE c.BYEAR = @byear);
	SET @date2 = (SELECT c.DATE2 FROM cbyear c WHERE c.BYEAR = @byear) ;


REPLACE INTO err_zall (

	SELECT  h.hoscode as 'HOSPCODE',UPPER('anc') as 'FILE',@byear as 'BYEAR'
		,COUNT(t.HOSPCODE) as 'TOTAL'
		,(SELECT COUNT(*) FROM err_anc e WHERE e.HOSPCODE = h.hoscode AND e.BYEAR = @byear) as 'ERR'
		,(SELECT COUNT(*) FROM err_anc e WHERE e.HOSPCODE = h.hoscode AND e.ERR_DATE = 'Y') as 'ERR_DATE'
		,CURDATE() as 'DUPDATE'
	FROM chospital_amp h

	LEFT JOIN anc t on t.HOSPCODE = h.hoscode AND  (t.DATE_SERV BETWEEN @date1 	AND @date2)
	GROUP BY h.hoscode 
); # end insert

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_charge_opd
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_charge_opd`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_charge_opd`()
BEGIN


SET @start_date='2015-10-01',@end_date = CURDATE();

UPDATE sys_check_process t set t.fnc_name = 'err_charge_opd' , t.time = NOW();
DELETE FROM charge_opd WHERE HOSPCODE NOT IN (SELECT hoscode from chospital_amp);
DROP TABLE IF EXISTS err_charge_opd;
CREATE TABLE  err_charge_opd AS
(
SELECT * FROM
(SELECT SQL_BIG_RESULT
	'CHARGE_OPD' as FILE

	,if(t.DATE_SERV is NULL or t.DATE_SERV < (CURDATE()-INTERVAL 50 YEAR) or  t.DATE_SERV > CURDATE(),'Y','') as 'ERR_DATE'
	,(SELECT y.BYEAR FROM cbyear y WHERE t.DATE_SERV BETWEEN y.DATE1 AND y.DATE2) as 'BYEAR' 


,CONCAT(
	if(LENGTH(trim(t.HOSPCODE)) <> 5 ,'CR1101,','')
	,if(LENGTH(trim(t.PID)) = 0 or t.PID IS NULL ,'CR1103,','')
	,if(LENGTH(trim(t.SEQ)) = 0  or t.SEQ is NULL,'CR1104,','')	
	,if(t.DATE_SERV is NULL or t.DATE_SERV < (CURDATE()-INTERVAL 50 YEAR) or  t.DATE_SERV > CURDATE(),'CR1105,','')
	,if(LENGTH(trim(t.CHARGEITEM)) <> 2,'CR1106,','')
	,if(t.PRICE is NULL or LENGTH(trim(t.PRICE)) =0 ,'CR1108,','')
	,if(p.HOSPCODE IS NUll or p.PID is NULL,'CR9200,','')
	,if(hos.hoscode is NULL,'CR9201,','')
	,if(c.id_chargeitem is NULL,'CR9206,','')
	,if(s.SEQ is NULL or s.PID is NULL or s.HOSPCODE is NULL,'SERVICE,','')
) as ERR_CODE
	,t.HOSPCODE	,t.PID	,t.SEQ ,s.SEQ as SERVICE_SEQ,t.DATE_SERV,t.CHARGEITEM,t.PRICE,date(t.D_UPDATE) as 'DUPDATE'

	
FROM charge_opd t 
		LEFT JOIN service s on t.HOSPCODE = s.HOSPCODE AND t.PID = s.PID AND t.SEQ = s.SEQ
		LEFT JOIN person p on t.HOSPCODE = p.HOSPCODE AND t.PID = p.PID	
		LEFT JOIN chospital_amp hos ON hos.hoscode = t.HOSPCODE
		LEFT JOIN cchargeitem c ON c.id_chargeitem = t.CHARGEITEM
		
		#WHERE t.DATE_SERV BETWEEN @start_date AND @end_date
		

) d 

WHERE d.ERR_CODE <> ''

); # end create

REPLACE INTO err_zhos
(
SELECT h.hoscode as 'HOSPCODE'
,'CHARGE_OPD' as 'FILE' 
,(SELECT COUNT(*) FROM charge_opd t WHERE t.HOSPCODE = h.hoscode) as 'TOTAL'
,(SELECT COUNT(*) FROM err_charge_opd t WHERE t.HOSPCODE = h.hoscode) as 'ERR'
,CURDATE() as 'DUPDATE'
FROM chospital_amp h
);


UPDATE sys_files SET 
qc = 100-ROUND((SELECT count(*) from err_charge_opd)*100/(SELECT count(*) from charge_opd),2)
,note1 = 'y' , note2 = CURDATE() WHERE file_name = 'charge_opd';
UPDATE sys_files set qc = 0.00 WHERE qc is NULL;

CALL err_charge_opd_b(2558);CALL err_charge_opd_b(2559);

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_charge_opd_b
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_charge_opd_b`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_charge_opd_b`(IN `BYEAR` varchar(4))
BEGIN
	SET @byear = byear;
	SET @date1 = (SELECT c.DATE1 FROM cbyear c WHERE c.BYEAR = @byear);
	SET @date2 = (SELECT c.DATE2 FROM cbyear c WHERE c.BYEAR = @byear) ;

REPLACE INTO err_zall (

	SELECT  h.hoscode as 'HOSPCODE',UPPER('charge_opd') as 'FILE',@byear as 'BYEAR'
		,COUNT(t.HOSPCODE) as 'TOTAL'
		,(SELECT COUNT(*) FROM err_charge_opd e WHERE e.HOSPCODE = h.hoscode AND e.BYEAR = @byear) as 'ERR'
		,(SELECT COUNT(*) FROM err_charge_opd e WHERE e.HOSPCODE = h.hoscode AND e.ERR_DATE = 'Y') as 'ERR_DATE'
		,CURDATE() as 'DUPDATE'
	FROM chospital_amp h

	LEFT JOIN charge_opd t on t.HOSPCODE = h.hoscode AND  (t.DATE_SERV BETWEEN @date1 	AND @date2)
	GROUP BY h.hoscode 
); # end insert

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_chronic
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_chronic`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_chronic`()
BEGIN
DELETE FROM chronic WHERE HOSPCODE is NULL OR trim(HOSPCODE) = '';

UPDATE sys_check_process t set t.fnc_name = 'err_chronic' , t.time = NOW();	
DELETE FROM chronic WHERE HOSPCODE NOT IN (SELECT hoscode from chospital_amp);
DROP TABLE IF EXISTS err_chronic;
CREATE TABLE  err_chronic AS
(
SELECT * FROM
(SELECT SQL_BIG_RESULT
	'CHRONIC' as FILE

,if(t.DATE_DIAG is NULL or t.DATE_DIAG < (CURDATE()-INTERVAL 50 YEAR) or  t.DATE_DIAG > CURDATE(),'Y','') as 'ERR_DATE'
,'' as 'BYEAR' 

,CONCAT(
	if(LENGTH(trim(t.HOSPCODE)) <> 5 ,'CH1101,','')
	,if(LENGTH(trim(t.PID)) = 0 or t.PID is NULL,'CH1103,','')
	,if(LENGTH(trim(t.CHRONIC)) < 3 OR t.CHRONIC is NULL ,'CH1130,','')	
	,if(t.DATE_DIAG is NULL or t.DATE_DIAG < (CURDATE()-INTERVAL 50 YEAR) or  t.DATE_DIAG > CURDATE(),'DATE_DIAG,','')
	,if(t.TYPEDISCH not in (01,02,03,04,05,06,07,08,09,10),'CH1141,','')
	,if(t.DATE_DISCH <> '0000-00-00','DATE_DISCH,','')
	,if(p.HOSPCODE IS NUll or p.PID is NULL,'CH9200,','')
	,if(hos.hoscode is NULL,'CH9201,','')
) as ERR_CODE
	,t.HOSPCODE	,t.PID	,t.CHRONIC,t.TYPEDISCH,t.DATE_DIAG,t.DATE_DISCH,date(t.D_UPDATE) as 'DUPDATE'



FROM chronic t 
			LEFT JOIN person p on t.HOSPCODE = p.HOSPCODE AND t.PID = p.PID
			LEFT JOIN cchronic c ON c.id_chronic = t.CHRONIC
			LEFT JOIN chospital_amp hos ON hos.hoscode = t.HOSPCODE
		
WHERE t.TYPEDISCH in ('03','05')

) d 

WHERE d.ERR_CODE <> ''

); # end create

REPLACE INTO err_zhos
(
SELECT h.hoscode as 'HOSPCODE'
,'CHRONIC' as 'FILE' 
,(SELECT COUNT(*) FROM chronic t WHERE t.HOSPCODE = h.hoscode) as 'TOTAL'
,(SELECT COUNT(*) FROM err_chronic t WHERE t.HOSPCODE = h.hoscode) as 'ERR'
,CURDATE() as 'DUPDATE'
FROM chospital_amp h
);

UPDATE sys_files SET qc = 100-ROUND((SELECT count(*) from err_chronic)*100/(SELECT count(*) from chronic),2)
,note1 = 'y' , note2 = CURDATE() WHERE file_name = 'chronic';
UPDATE sys_files set qc = 0.00 WHERE qc is NULL;

CALL err_chronic_b(2558);CALL err_chronic_b(2559);

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_chronicfu
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_chronicfu`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_chronicfu`()
BEGIN

SET @start_date='2015-10-01',@end_date = CURDATE();

UPDATE sys_check_process t set t.fnc_name = 'err_chronicfu' , t.time = NOW();

DELETE FROM chronicfu WHERE HOSPCODE NOT IN (SELECT hoscode from chospital_amp);

DROP TABLE IF EXISTS err_chronicfu;
CREATE TABLE  err_chronicfu AS
(
SELECT * FROM
(SELECT SQL_BIG_RESULT
	'CHRONICFU' as FILE

,if(t.DATE_SERV is NULL or t.DATE_SERV < (CURDATE()-INTERVAL 50 YEAR) or  t.DATE_SERV > CURDATE(),'Y','') as 'ERR_DATE'
	,(SELECT y.BYEAR FROM cbyear y WHERE t.DATE_SERV BETWEEN y.DATE1 AND y.DATE2) as 'BYEAR'

,CONCAT(
	if(LENGTH(trim(t.HOSPCODE)) <> 5 ,'CF1101,','')
	,if(LENGTH(trim(t.PID)) = 0 or t.PID is NULL,'CF1103,','')
	,if(trim(t.SEQ) = '' or t.SEQ is NULL,'CF1104,','')	
	,if(t.DATE_SERV is NULL or t.DATE_SERV < (CURDATE()-INTERVAL 50 YEAR) or  t.DATE_SERV > CURDATE(),'CF1105,DATE,','')

	,if(trim(t.WEIGHT)='' or t.WEIGHT is NULL,'CF1141,','')
	,if(trim(t.HEIGHT)='' or t.HEIGHT is NULL,'CF1142,','')
	,if(trim(t.WAIST_CM)='' or t.WAIST_CM is NULL,'CF1143,','')
	,if(trim(t.SBP)='' or t.SBP is NULL,'CF1144,','')
	,if(trim(t.DBP)='' or t.DBP is NULL,'CF1145,','')
	,if(t.FOOT NOT IN (1,2,3,9),'CF1146,','')
	,if(t.RETINA NOT IN (1,2,3,4,8,9),'CF1147,','')

	,if(p.HOSPCODE IS NUll or p.PID is NULL,'CF9200,','')
	,if(hos.hoscode is NULL,'CF9201,','')
	,if(s.SEQ is NULL or s.PID is NULL or s.HOSPCODE is NULL,'SERVICE,','')

) as ERR_CODE
	,t.HOSPCODE	,t.PID,t.SEQ,s.SEQ as SERVICE_SEQ,t.DATE_SERV,t.WEIGHT,t.HEIGHT,t.WAIST_CM,t.SBP,t.DBP
	,t.FOOT,t.RETINA,date(t.D_UPDATE) as 'DUPDATE'

	 

FROM chronicfu t 
	LEFT JOIN service s on t.HOSPCODE = s.HOSPCODE AND t.PID = s.PID AND t.SEQ = s.SEQ
	LEFT JOIN person p on t.HOSPCODE = p.HOSPCODE AND t.PID = p.PID
	LEFT JOIN chospital_amp hos ON hos.hoscode = t.HOSPCODE

	#WHERE t.DATE_SERV BETWEEN @start_date AND @end_date
	

) d 

WHERE d.ERR_CODE <> ''

); # end create

REPLACE INTO err_zhos
(
SELECT h.hoscode as 'HOSPCODE'
,'CHRONICFU' as 'FILE' 
,(SELECT COUNT(*) FROM chronicfu t WHERE t.HOSPCODE = h.hoscode) as 'TOTAL'
,(SELECT COUNT(*) FROM err_chronicfu t WHERE t.HOSPCODE = h.hoscode) as 'ERR'
,CURDATE() as 'DUPDATE'
FROM chospital_amp h
);


UPDATE sys_files SET 
qc = 100-ROUND((SELECT count(*) from err_chronicfu)*100/(SELECT count(*) from chronicfu),2)
,note1 = 'y' , note2 = CURDATE() WHERE file_name = 'chronicfu';
UPDATE sys_files set qc = 0.00 WHERE qc is NULL;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_chronicfu_b
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_chronicfu_b`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_chronicfu_b`(IN `BYEAR` varchar(4))
BEGIN
	SET @byear = byear;
	SET @date1 = (SELECT c.DATE1 FROM cbyear c WHERE c.BYEAR = @byear);
	SET @date2 = (SELECT c.DATE2 FROM cbyear c WHERE c.BYEAR = @byear) ;

REPLACE INTO err_zall (

	SELECT  h.hoscode as 'HOSPCODE',UPPER('chronicfu') as 'FILE',@byear as 'BYEAR'
		,COUNT(t.HOSPCODE) as 'TOTAL'
		,(SELECT COUNT(*) FROM err_chronicfu e WHERE e.HOSPCODE = h.hoscode AND e.BYEAR = @byear) as 'ERR'
		,(SELECT COUNT(*) FROM err_chronicfu e WHERE e.HOSPCODE = h.hoscode AND e.ERR_DATE = 'Y') as 'ERR_DATE'
		,CURDATE() as 'DUPDATE'
	FROM chospital_amp h

	LEFT JOIN chronicfu t on t.HOSPCODE = h.hoscode AND  (t.DATE_SERV BETWEEN @date1 	AND @date2)
	GROUP BY h.hoscode 
); # end insert

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_chronic_b
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_chronic_b`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_chronic_b`(IN `BYEAR` varchar(4))
BEGIN
	SET @byear = byear;
	SET @date1 = (SELECT c.DATE1 FROM cbyear c WHERE c.BYEAR = @byear);
	SET @date2 = (SELECT c.DATE2 FROM cbyear c WHERE c.BYEAR = @byear) ;

REPLACE INTO err_zall (

	SELECT  h.hoscode as 'HOSPCODE',UPPER('chronic') as 'FILE',@byear as 'BYEAR'
		,COUNT(t.HOSPCODE) as 'TOTAL'
		,(SELECT COUNT(*) FROM err_chronic e WHERE e.HOSPCODE = h.hoscode AND e.BYEAR = @byear) as 'ERR'
		,(SELECT COUNT(*) FROM err_chronic e WHERE e.HOSPCODE = h.hoscode AND e.ERR_DATE = 'Y') as 'ERR_DATE'
		,CURDATE() as 'DUPDATE'
	FROM chospital_amp h

	LEFT JOIN chronic t on t.HOSPCODE = h.hoscode 
	GROUP BY h.hoscode 
); # end insert

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_dental
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_dental`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_dental`()
BEGIN
DELETE FROM dental WHERE HOSPCODE is NULL OR trim(HOSPCODE) = '';

SET @start_date='2015-10-01',@end_date = CURDATE();

UPDATE sys_check_process t set t.fnc_name = 'err_dental' , t.time = NOW();
DELETE FROM dental WHERE HOSPCODE NOT IN (SELECT hoscode from chospital_amp);
DROP TABLE IF EXISTS err_dental;
CREATE TABLE  err_dental AS
(
SELECT * FROM
(SELECT SQL_BIG_RESULT
	'DENTAL' as FILE

,if(t.DATE_SERV is NULL or t.DATE_SERV < (CURDATE()-INTERVAL 50 YEAR) or  t.DATE_SERV > CURDATE(),'Y','') as 'ERR_DATE'
	,(SELECT y.BYEAR FROM cbyear y WHERE t.DATE_SERV BETWEEN y.DATE1 AND y.DATE2) as 'BYEAR'

,CONCAT(
	if(LENGTH(trim(t.HOSPCODE)) <> 5 ,'DT1101,','')
	,if(LENGTH(trim(t.PID)) = 0 or t.PID is NULL,'DT1103,','')
	,if(LENGTH(trim(t.SEQ)) = 0 or t.SEQ is NULL,'DT1104,','')	
	,if(t.DATE_SERV is NULL or t.DATE_SERV < (CURDATE()-INTERVAL 50 YEAR) or  t.DATE_SERV > CURDATE(),'DT1105,','')
	,if(t.DENTTYPE NOT IN ( 1,2,3,4,5,6),'DT1106,','')	
	,if(t.SERVPLACE NOT IN ( 1,2),'DT1107,','')		
	,if(p.HOSPCODE IS NUll or p.PID is NULL,'DT9200,','')
	,if(hos.hoscode is NULL,'DT9201,','')
	,if(s.SEQ is NULL or s.PID is NULL or s.HOSPCODE is NULL,'SERVICE,','')

) as ERR_CODE
	,t.HOSPCODE,t.PID,t.SEQ,s.SEQ as SERVICE_SEQ,t.DATE_SERV,t.DENTTYPE,t.SERVPLACE,date(t.D_UPDATE) as 'DUPDATE'
	
	 
	
FROM dental t 
		LEFT JOIN service s on t.HOSPCODE = s.HOSPCODE AND t.PID = s.PID AND t.SEQ = s.SEQ
		LEFT JOIN person p on t.HOSPCODE = p.HOSPCODE AND t.PID = p.PID
		LEFT JOIN chospital_amp hos ON hos.hoscode = t.HOSPCODE

		#WHERE t.DATE_SERV BETWEEN @start_date AND @end_date
		
	
 
) d 

WHERE d.ERR_CODE <> ''

); # end create

REPLACE INTO err_zhos
(
SELECT h.hoscode as 'HOSPCODE'
,'DENTAL' as 'FILE' 
,(SELECT COUNT(*) FROM dental t WHERE t.HOSPCODE = h.hoscode) as 'TOTAL'
,(SELECT COUNT(*) FROM err_dental t WHERE t.HOSPCODE = h.hoscode) as 'ERR'
,CURDATE() as 'DUPDATE'
FROM chospital_amp h
);


UPDATE sys_files SET 
qc = 100-ROUND((SELECT count(*) from err_dental)*100/(SELECT count(*) from dental),2)
,note1 = 'y' , note2 = CURDATE() WHERE file_name = 'dental';
UPDATE sys_files set qc = 0.00 WHERE qc is NULL;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_dental_b
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_dental_b`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_dental_b`(IN `BYEAR` varchar(4))
BEGIN
	SET @byear = byear;
	SET @date1 = (SELECT c.DATE1 FROM cbyear c WHERE c.BYEAR = @byear);
	SET @date2 = (SELECT c.DATE2 FROM cbyear c WHERE c.BYEAR = @byear) ;

REPLACE INTO err_zall (

	SELECT  h.hoscode as 'HOSPCODE',UPPER('dental') as 'FILE',@byear as 'BYEAR'
		,COUNT(t.HOSPCODE) as 'TOTAL'
		,(SELECT COUNT(*) FROM err_dental e WHERE e.HOSPCODE = h.hoscode AND e.BYEAR = @byear) as 'ERR'
		,(SELECT COUNT(*) FROM err_dental e WHERE e.HOSPCODE = h.hoscode AND e.ERR_DATE = 'Y') as 'ERR_DATE'
		,CURDATE() as 'DUPDATE'
	FROM chospital_amp h

	LEFT JOIN dental t on t.HOSPCODE = h.hoscode AND  (t.DATE_SERV BETWEEN @date1 	AND @date2)
	GROUP BY h.hoscode 
); # end insert

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_diagnosis_opd
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_diagnosis_opd`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_diagnosis_opd`()
BEGIN

SET @start_date='2015-10-01',@end_date = CURDATE();

UPDATE sys_check_process t set t.fnc_name = 'err_diagnosis_opd' , t.time = NOW();
DELETE FROM diagnosis_opd WHERE HOSPCODE NOT IN (SELECT hoscode from chospital_amp);
DROP TABLE IF EXISTS err_diagnosis_opd;
CREATE TABLE  err_diagnosis_opd AS
(

SELECT * FROM
(SELECT SQL_BIG_RESULT
	'DIAGNOSIS_OPD' as FILE

,if(t.DATE_SERV is NULL or t.DATE_SERV < (CURDATE()-INTERVAL 50 YEAR) or  t.DATE_SERV > CURDATE(),'Y','') as 'ERR_DATE'
	,(SELECT y.BYEAR FROM cbyear y WHERE t.DATE_SERV BETWEEN y.DATE1 AND y.DATE2) as 'BYEAR' 

,CONCAT(
	if(LENGTH(trim(t.HOSPCODE)) <> 5 ,'DX1101,','')
	,if(LENGTH(trim(t.PID)) = 0 or t.PID is NULL,'DX1103,','')
	,if(LENGTH(trim(t.SEQ))=0 or t.SEQ is NULL,'DX1104,','')
	,if(t.DATE_SERV is NULL or t.DATE_SERV < (CURDATE()-INTERVAL 50 YEAR) or  t.DATE_SERV > CURDATE(),'DX1105,','')

	,if(LENGTH(trim(t.CLINIC)) <> 5,'DX1106,','')
	,if(t.DIAGCODE is NULL or TRIM(t.DIAGCODE)='','DX1130,','')
	,if(t.DIAGTYPE not in (1,2,3,4,5,6,7) ,'DX1131,','')	

	,if(p.HOSPCODE IS NUll or p.PID is NULL,'DX9200,','')
	,if(hos.hoscode is NULL,'DX9201,','')

	,if(s.SEQ is NULL or s.PID is NULL or s.HOSPCODE is NULL,'SERVICE,','')

) as ERR_CODE
	,t.HOSPCODE	,t.PID	,t.SEQ ,s.SEQ as SERVICE_SEQ,t.DATE_SERV	,t.DIAGCODE	,t.DIAGTYPE	,t.CLINIC,date(t.D_UPDATE) as 'DUPDATE'

	
	
FROM diagnosis_opd t 	

		LEFT JOIN service s on t.HOSPCODE = s.HOSPCODE AND t.PID = s.PID AND t.SEQ = s.SEQ
		LEFT JOIN person p on t.HOSPCODE = p.HOSPCODE AND t.PID = p.PID
		LEFT JOIN chospital_amp hos ON hos.hoscode = t.HOSPCODE

		#WHERE t.DATE_SERV BETWEEN @start_date AND @end_date
		

) d 
WHERE d.ERR_CODE <> ''


); # end create

REPLACE INTO err_zhos
(
SELECT h.hoscode as 'HOSPCODE'
,'DIAGNOSIS_OPD' as 'FILE' 
,(SELECT COUNT(*) FROM diagnosis_opd t WHERE t.HOSPCODE = h.hoscode) as 'TOTAL'
,(SELECT COUNT(*) FROM err_diagnosis_opd t WHERE t.HOSPCODE = h.hoscode) as 'ERR'
,CURDATE() as 'DUPDATE'
FROM chospital_amp h
);


UPDATE sys_files SET 
qc = 100-ROUND((SELECT count(*) from err_diagnosis_opd)*100/(SELECT count(*) from diagnosis_opd),2)
,note1 = 'y' , note2 = CURDATE() WHERE file_name = 'diagnosis_opd';
UPDATE sys_files set qc = 0.00 WHERE qc is NULL;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_diagnosis_opd_b
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_diagnosis_opd_b`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_diagnosis_opd_b`(IN `BYEAR` varchar(4))
BEGIN
	SET @byear = byear;
	SET @date1 = (SELECT c.DATE1 FROM cbyear c WHERE c.BYEAR = @byear);
	SET @date2 = (SELECT c.DATE2 FROM cbyear c WHERE c.BYEAR = @byear) ;

REPLACE INTO err_zall (

	SELECT  h.hoscode as 'HOSPCODE',UPPER('diagnosis_opd') as 'FILE',@byear as 'BYEAR'
		,COUNT(t.HOSPCODE) as 'TOTAL'
		,(SELECT COUNT(*) FROM err_diagnosis_opd e WHERE e.HOSPCODE = h.hoscode AND e.BYEAR = @byear) as 'ERR'
		,(SELECT COUNT(*) FROM err_diagnosis_opd e WHERE e.HOSPCODE = h.hoscode AND e.ERR_DATE = 'Y') as 'ERR_DATE'
		,CURDATE() as 'DUPDATE'
	FROM chospital_amp h

	LEFT JOIN diagnosis_opd t on t.HOSPCODE = h.hoscode AND  (t.DATE_SERV BETWEEN @date1 	AND @date2)
	GROUP BY h.hoscode 
); # end insert

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_disability
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_disability`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_disability`()
BEGIN

SET @start_date='2015-10-01',@end_date = CURDATE();

UPDATE sys_check_process t set t.fnc_name = 'err_disability' , t.time = NOW();	
DELETE FROM disability WHERE HOSPCODE NOT IN (SELECT hoscode from chospital_amp);
DROP TABLE IF EXISTS err_disability;
CREATE TABLE  err_disability AS
(

SELECT * FROM
(SELECT SQL_BIG_RESULT
	'DISABILITY' as FILE

	,if(t.DATE_DETECT is NULL or t.DATE_DETECT < (CURDATE()-INTERVAL 100 YEAR) or  t.DATE_DETECT > CURDATE(),'Y','') as 'ERR_DATE'
	,'' as 'BYEAR' 

,CONCAT(
	if(LENGTH(trim(t.HOSPCODE)) <> 5 ,'DS1101,','')
	,if(LENGTH(trim(t.PID)) = 0 or t.PID is NULL,'DS1103,','')
	,if(LENGTH(trim(t.DISABTYPE)) = 0 or t.DISABTYPE is NULL,'DS1104,','')	
	,if(t.DATE_DETECT is NULL or t.DATE_DETECT < (CURDATE()-INTERVAL 100 YEAR) or  t.DATE_DETECT > CURDATE(),'DS1105,','')
	,if(p.HOSPCODE IS NUll or p.PID is NULL,'DS9200,','')
	,if(hos.hoscode is NULL,'DS9201,','')
	,if(CONCAT(t.HOSPCODE,t.PID) <> CONCAT(t2.HOSPCODE,t2.PID),'DS9299,','') 
) as ERR_CODE
	,t.HOSPCODE	,t.PID,t.DISABTYPE,t.DATE_DETECT,date(t.D_UPDATE) as 'DUPDATE'



FROM disability t 
	LEFT JOIN disability t2  on t.HOSPCODE = t2.HOSPCODE AND t.PID = t2.PID AND t.DISABTYPE = t2.DISABTYPE
	LEFT JOIN person p on t.HOSPCODE = p.HOSPCODE AND t.PID = p.PID
	LEFT JOIN chospital_amp hos ON hos.hoscode = t.HOSPCODE

WHERE p.DISCHARGE = 9

) d 
WHERE d.ERR_CODE <> ''

); # end create

REPLACE INTO err_zhos
(
SELECT h.hoscode as 'HOSPCODE'
,'DISABILITY' as 'FILE' 
,(SELECT COUNT(*) FROM disability t WHERE t.HOSPCODE = h.hoscode) as 'TOTAL'
,(SELECT COUNT(*) FROM err_disability t WHERE t.HOSPCODE = h.hoscode) as 'ERR'
,CURDATE() as 'DUPDATE'
FROM chospital_amp h
);

UPDATE sys_files SET qc = 100-ROUND((SELECT count(*) from err_disability)*100/(SELECT count(*) from disability),2)
,note1 = 'y' , note2 = CURDATE() WHERE file_name = 'disability';
UPDATE sys_files set qc = 0.00 WHERE qc is NULL;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_disability_b
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_disability_b`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_disability_b`(IN `BYEAR` varchar(4))
BEGIN
	SET @byear = byear;
	SET @date1 = (SELECT c.DATE1 FROM cbyear c WHERE c.BYEAR = @byear);
	SET @date2 = (SELECT c.DATE2 FROM cbyear c WHERE c.BYEAR = @byear) ;

REPLACE INTO err_zall (

	SELECT  h.hoscode as 'HOSPCODE',UPPER('disability') as 'FILE',@byear as 'BYEAR'
		,COUNT(t.HOSPCODE) as 'TOTAL'
		,(SELECT COUNT(*) FROM err_disability e WHERE e.HOSPCODE = h.hoscode AND e.BYEAR = @byear) as 'ERR'
		,(SELECT COUNT(*) FROM err_disability e WHERE e.HOSPCODE = h.hoscode AND e.ERR_DATE = 'Y') as 'ERR_DATE'
		,CURDATE() as 'DUPDATE'
	FROM chospital_amp h

	LEFT JOIN disability t on t.HOSPCODE = h.hoscode 
	GROUP BY h.hoscode 
); # end insert

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_drugallergy
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_drugallergy`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_drugallergy`()
BEGIN

SET @start_date='2015-10-01',@end_date = CURDATE();

UPDATE sys_check_process t set t.fnc_name = 'err_drugallergy' , t.time = NOW();
DELETE FROM drugallergy WHERE HOSPCODE NOT IN (SELECT hoscode from chospital_amp);
DROP TABLE IF EXISTS err_drugallergy;
CREATE TABLE  err_drugallergy AS
(

SELECT * FROM
(SELECT SQL_BIG_RESULT
	'DRUGALLERGY' as FILE
,CONCAT(
	if(LENGTH(trim(t.HOSPCODE)) <> 5 ,'DG1101,','')
	,if(LENGTH(trim(t.PID)) = 0 or t.PID is NULL,'DG1103,','')
	,if(t.DATERECORD is NULL or t.DATERECORD < (CURDATE()-INTERVAL 50 YEAR) or  t.DATERECORD > CURDATE(),'DS1104','')
	,if(LENGTH(trim(t.DRUGALLERGY)) <> 24,'DS1105,','')
	,if(t.INFORMANT NOT IN ( 1,2,3,4),'DS1109','')
	,if(p.HOSPCODE IS NUll or p.PID is NULL,'DG9200,','')
	,if(hos.hoscode is NULL,'DG9201','')
	,if(CONCAT(t.HOSPCODE,t.PID,t.DATERECORD,t.DRUGALLERGY) <> CONCAT(t2.HOSPCODE,t2.PID,t2.DATERECORD,t2.DRUGALLERGY),'DG9299','') 
) as ERR_CODE
	,t.HOSPCODE 	,t.PID ,t.DATERECORD ,t.DRUGALLERGY,t.INFORMANT,date(t.D_UPDATE) as 'DUPDATE'

	,if(t.DATERECORD is NULL or t.DATERECORD < (CURDATE()-INTERVAL 50 YEAR) or  t.DATERECORD > CURDATE(),'Y','') as 'ERR_DATE'
	,(SELECT y.BYEAR FROM cbyear y WHERE t.DATERECORD BETWEEN y.DATE1 AND y.DATE2) as 'BYEAR' 

FROM drugallergy t 
	LEFT JOIN drugallergy t2  
	on t.HOSPCODE = t2.HOSPCODE 
	AND t.PID = t2.PID 
	AND t.DRUGALLERGY = t2.DRUGALLERGY
	LEFT JOIN person p on t.HOSPCODE = p.HOSPCODE AND t.PID = p.PID
	LEFT JOIN chospital_amp hos ON hos.hoscode = t.HOSPCODE

	
	#WHERE t.DATERECORD BETWEEN @start_date AND @end_date  

) d 

WHERE d.ERR_CODE <> ''



); # end create

REPLACE INTO err_zhos
(
SELECT h.hoscode as 'HOSPCODE'
,'DRUGALLERGY' as 'FILE' 
,(SELECT COUNT(*) FROM drugallergy t WHERE t.HOSPCODE = h.hoscode) as 'TOTAL'
,(SELECT COUNT(*) FROM err_drugallergy t WHERE t.HOSPCODE = h.hoscode) as 'ERR'
,CURDATE() as 'DUPDATE'
FROM chospital_amp h
);



UPDATE sys_files SET 
qc = 100-ROUND((SELECT count(*) from err_drugallergy)*100/(SELECT count(*) from drugallergy),2)
,note1 = 'y' , note2 = CURDATE() WHERE file_name = 'drugallergy';
UPDATE sys_files set qc = 0.00 WHERE qc is NULL;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_drugallergy_b
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_drugallergy_b`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_drugallergy_b`(IN `BYEAR` varchar(4))
BEGIN
	SET @byear = byear;
	SET @date1 = (SELECT c.DATE1 FROM cbyear c WHERE c.BYEAR = @byear);
	SET @date2 = (SELECT c.DATE2 FROM cbyear c WHERE c.BYEAR = @byear) ;

REPLACE INTO err_zall (

	SELECT  h.hoscode as 'HOSPCODE',UPPER('drugallergy') as 'FILE',@byear as 'BYEAR'
		,COUNT(t.HOSPCODE) as 'TOTAL'
		,(SELECT COUNT(*) FROM err_drugallergy e WHERE e.HOSPCODE = h.hoscode AND e.BYEAR = @byear) as 'ERR'
		,(SELECT COUNT(*) FROM err_drugallergy e WHERE e.HOSPCODE = h.hoscode AND e.ERR_DATE = 'Y') as 'ERR_DATE'
		,CURDATE() as 'DUPDATE'
	FROM chospital_amp h

	LEFT JOIN drugallergy t on t.HOSPCODE = h.hoscode AND  (t.DATERECORD BETWEEN @date1 	AND @date2)
	GROUP BY h.hoscode 
); # end insert

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_drug_opd
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_drug_opd`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_drug_opd`()
BEGIN

SET @start_date='2015-10-01',@end_date = CURDATE();

UPDATE sys_check_process t set t.fnc_name = 'err_drug_opd' , t.time = NOW();
DELETE FROM drug_opd WHERE HOSPCODE NOT IN (SELECT hoscode from chospital_amp);
DROP TABLE IF EXISTS err_drug_opd;
CREATE TABLE  err_drug_opd AS
(

SELECT * FROM
(SELECT SQL_BIG_RESULT
	'DRUG_OPD' as FILE

,if(t.DATE_SERV is NULL or t.DATE_SERV < (CURDATE()-INTERVAL 50 YEAR) or  t.DATE_SERV > CURDATE(),'Y','') as 'ERR_DATE'
	,(SELECT y.BYEAR FROM cbyear y WHERE t.DATE_SERV BETWEEN y.DATE1 AND y.DATE2) as 'BYEAR'

,CONCAT(
	if(LENGTH(trim(t.HOSPCODE)) <> 5 ,'RX1101,','')
	,if(LENGTH(trim(t.PID)) = 0 or t.PID is NULL,'RX1103,','')
	,if(t.SEQ is NULL or TRIM(t.SEQ)='','RX1104,','')
	,if(t.DATE_SERV is NULL or t.DATE_SERV < (CURDATE()-INTERVAL 50 YEAR) or  t.DATE_SERV > CURDATE(),'RX1105,','')
	,if(LENGTH(TRIM(t.DIDSTD))<> 24,'RX1130,','')		
	,if(p.HOSPCODE IS NUll or p.PID is NULL,'RX9200,','')
	,if(hos.hoscode is NULL,'RX9201,','')
	,if(LENGTH(TRIM(t.DIDSTD))<> 24,'RX9230,','')
	,if(s.SEQ is NULL or s.PID is NULL or s.HOSPCODE is NULL,'SERVICE,','')
) as ERR_CODE
	,t.HOSPCODE	,t.PID	,t.SEQ	,s.SEQ as SERVICE_SEQ,t.DATE_SERV	,t.DIDSTD	,t.DNAME,date(t.D_UPDATE) as 'DUPDATE'

	 

FROM drug_opd t 	
	LEFT JOIN service s on t.HOSPCODE = s.HOSPCODE AND t.PID = s.PID AND t.SEQ = s.SEQ
	LEFT JOIN person p on t.HOSPCODE = p.HOSPCODE AND t.PID = p.PID
	LEFT JOIN chospital_amp hos ON hos.hoscode = t.HOSPCODE

	#WHERE t.DATE_SERV BETWEEN @start_date AND @end_date


) d 
WHERE d.ERR_CODE <> ''




); # end create

REPLACE INTO err_zhos
(
SELECT h.hoscode as 'HOSPCODE'
,'DRUG_OPD' as 'FILE' 
,(SELECT COUNT(*) FROM drug_opd t WHERE t.HOSPCODE = h.hoscode) as 'TOTAL'
,(SELECT COUNT(*) FROM err_drug_opd t WHERE t.HOSPCODE = h.hoscode) as 'ERR'
,CURDATE() as 'DUPDATE'
FROM chospital_amp h
);



UPDATE sys_files SET 
qc = 100-ROUND((SELECT count(*) from err_drug_opd)*100/(SELECT count(*) from drug_opd),2)
,note1 = 'y' , note2 = CURDATE() WHERE file_name = 'drug_opd';
UPDATE sys_files set qc = 0.00 WHERE qc is NULL;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_drug_opd_b
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_drug_opd_b`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_drug_opd_b`(IN `BYEAR` varchar(4))
BEGIN
	SET @byear = byear;
	SET @date1 = (SELECT c.DATE1 FROM cbyear c WHERE c.BYEAR = @byear);
	SET @date2 = (SELECT c.DATE2 FROM cbyear c WHERE c.BYEAR = @byear) ;

REPLACE INTO err_zall (

	SELECT  h.hoscode as 'HOSPCODE',UPPER('drug_opd') as 'FILE',@byear as 'BYEAR'
		,COUNT(t.HOSPCODE) as 'TOTAL'
		,(SELECT COUNT(*) FROM err_drug_opd e WHERE e.HOSPCODE = h.hoscode AND e.BYEAR = @byear) as 'ERR'
		,(SELECT COUNT(*) FROM err_drug_opd e WHERE e.HOSPCODE = h.hoscode AND e.ERR_DATE = 'Y') as 'ERR_DATE'
		,CURDATE() as 'DUPDATE'
	FROM chospital_amp h

	LEFT JOIN drug_opd t on t.HOSPCODE = h.hoscode AND  (t.DATE_SERV BETWEEN @date1 	AND @date2)
	GROUP BY h.hoscode 
); # end insert

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_epi
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_epi`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_epi`()
BEGIN

SET @start_date='2015-10-01',@end_date = CURDATE();

UPDATE sys_check_process t set t.fnc_name = 'err_epi' , t.time = NOW();
DELETE FROM epi WHERE HOSPCODE NOT IN (SELECT hoscode from chospital_amp);
DROP TABLE IF EXISTS err_epi;
CREATE TABLE  err_epi AS
(
SELECT * FROM
(SELECT SQL_BIG_RESULT
	'EPI' as FILE

	,if(t.DATE_SERV is NULL or t.DATE_SERV < (CURDATE()-INTERVAL 50 YEAR) or  t.DATE_SERV > CURDATE(),'Y','') as 'ERR_DATE'
	,(SELECT y.BYEAR FROM cbyear y WHERE t.DATE_SERV BETWEEN y.DATE1 AND y.DATE2) as 'BYEAR' 

,CONCAT(
	if(LENGTH(trim(t.HOSPCODE)) <> 5 ,'EP1101,','')
	,if(LENGTH(trim(t.PID)) = 0 or t.PID is NULL,'EP1103,','')
	,if(t.DATE_SERV is NULL or t.DATE_SERV < (CURDATE()-INTERVAL 50 YEAR) or  t.DATE_SERV > CURDATE(),'EP1105,','')
	,if(trim(t.VACCINETYPE) = '' or t.VACCINETYPE is NULL,'EP1106,','')
	,if(p.HOSPCODE IS NUll or p.PID is NULL,'EP9200,','')
	,if(hos.hoscode is NULL,'EP9201,','')
	,if(c.vaccinecode is NULL,'EP9241,','')
	
) as ERR_CODE
	,t.HOSPCODE	,t.PID,t.DATE_SERV,t.VACCINETYPE,date(t.D_UPDATE) as 'DUPDATE'



FROM epi t 
		LEFT JOIN person p on t.HOSPCODE = p.HOSPCODE AND t.PID = p.PID
		LEFT JOIN chospital_amp hos ON hos.hoscode = t.HOSPCODE
		LEFT JOIN cvaccinetype c on c.vaccinecode = t.VACCINETYPE
		#WHERE (t.DATE_SERV BETWEEN @start_date AND @end_date)
		


) d 

WHERE d.ERR_CODE <> ''

); # end create

REPLACE INTO err_zhos
(
SELECT h.hoscode as 'HOSPCODE'
,'EPI' as 'FILE' 
,(SELECT COUNT(*) FROM epi t WHERE t.HOSPCODE = h.hoscode) as 'TOTAL'
,(SELECT COUNT(*) FROM err_epi t WHERE t.HOSPCODE = h.hoscode) as 'ERR'
,CURDATE() as 'DUPDATE'
FROM chospital_amp h
);



UPDATE sys_files SET 
qc = 100-ROUND((SELECT count(*) from err_epi)*100/(SELECT count(*) from epi),2)
,note1 = 'y' , note2 = CURDATE() WHERE file_name = 'epi';
UPDATE sys_files set qc = 0.00 WHERE qc is NULL;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_epi_b
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_epi_b`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_epi_b`(IN `BYEAR` varchar(4))
BEGIN
	SET @byear = byear;
	SET @date1 = (SELECT c.DATE1 FROM cbyear c WHERE c.BYEAR = @byear);
	SET @date2 = (SELECT c.DATE2 FROM cbyear c WHERE c.BYEAR = @byear) ;

REPLACE INTO err_zall (

	SELECT  h.hoscode as 'HOSPCODE',UPPER('epi') as 'FILE',@byear as 'BYEAR'
		,COUNT(t.HOSPCODE) as 'TOTAL'
		,(SELECT COUNT(*) FROM err_epi e WHERE e.HOSPCODE = h.hoscode AND e.BYEAR = @byear) as 'ERR'
		,(SELECT COUNT(*) FROM err_epi e WHERE e.HOSPCODE = h.hoscode AND e.ERR_DATE = 'Y') as 'ERR_DATE'
		,CURDATE() as 'DUPDATE'
	FROM chospital_amp h

	LEFT JOIN epi t on t.HOSPCODE = h.hoscode AND  (t.DATE_SERV BETWEEN @date1 	AND @date2)
	GROUP BY h.hoscode 
); # end insert

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_fp
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_fp`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_fp`()
BEGIN

SET @start_date='2015-10-01',@end_date = CURDATE();


UPDATE sys_check_process t set t.fnc_name = 'err_fp' , t.time = NOW();
DELETE FROM fp WHERE HOSPCODE NOT IN (SELECT hoscode from chospital_amp);
DROP TABLE IF EXISTS err_fp;
CREATE TABLE  err_fp AS
(

SELECT * FROM
(SELECT SQL_BIG_RESULT
	'FP' as FILE

,if(t.DATE_SERV is NULL or t.DATE_SERV < (CURDATE()-INTERVAL 50 YEAR) or  t.DATE_SERV > CURDATE(),'Y','') as 'ERR_DATE'
	,(SELECT y.BYEAR FROM cbyear y WHERE t.DATE_SERV BETWEEN y.DATE1 AND y.DATE2) as 'BYEAR' 

,CONCAT(
	if(LENGTH(trim(t.HOSPCODE)) <> 5 ,'FP1101,','')
	,if(LENGTH(trim(t.PID)) = 0 or t.PID is NULL,'FP1103,','')	
	,if(t.DATE_SERV is NULL or t.DATE_SERV < (CURDATE()-INTERVAL 50 YEAR) or  t.DATE_SERV > CURDATE(),'FP1105,','')
	,if(t.FPTYPE NOT IN (1,2,3,4,5,6,7),'FP1106,','')
	,if(p.HOSPCODE IS NUll or p.PID is NULL,'FP9200,','')
	,if(hos.hoscode is NULL,'FP9201,','')
	
) as ERR_CODE
	,t.HOSPCODE	,t.PID,t.SEQ,t.DATE_SERV,t.FPTYPE,date(t.D_UPDATE) as 'DUPDATE'

	

FROM fp t
	LEFT JOIN person p on t.HOSPCODE = p.HOSPCODE AND t.PID = p.PID
	LEFT JOIN chospital_amp hos ON hos.hoscode = t.HOSPCODE


) d 

WHERE d.ERR_CODE <> ''

); # end create

REPLACE INTO err_zhos
(
SELECT h.hoscode as 'HOSPCODE'
,'FP' as 'FILE' 
,(SELECT COUNT(*) FROM fp t WHERE t.HOSPCODE = h.hoscode) as 'TOTAL'
,(SELECT COUNT(*) FROM err_fp t WHERE t.HOSPCODE = h.hoscode) as 'ERR'
,CURDATE() as 'DUPDATE'
FROM chospital_amp h
);



UPDATE sys_files SET 
qc = 100-ROUND((SELECT count(*) from err_fp)*100/(SELECT count(*) from fp),2)
,note1 = 'y' , note2 = CURDATE() WHERE file_name = 'fp';
UPDATE sys_files set qc = 0.00 WHERE qc is NULL;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_fp_b
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_fp_b`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_fp_b`(IN `BYEAR` varchar(4))
BEGIN
	SET @byear = byear;
	SET @date1 = (SELECT c.DATE1 FROM cbyear c WHERE c.BYEAR = @byear);
	SET @date2 = (SELECT c.DATE2 FROM cbyear c WHERE c.BYEAR = @byear) ;

REPLACE INTO err_zall (

	SELECT  h.hoscode as 'HOSPCODE',UPPER('fp') as 'FILE',@byear as 'BYEAR'
		,COUNT(t.HOSPCODE) as 'TOTAL'
		,(SELECT COUNT(*) FROM err_fp e WHERE e.HOSPCODE = h.hoscode AND e.BYEAR = @byear) as 'ERR'
		,(SELECT COUNT(*) FROM err_fp e WHERE e.HOSPCODE = h.hoscode AND e.ERR_DATE = 'Y') as 'ERR_DATE'
		,CURDATE() as 'DUPDATE'
	FROM chospital_amp h

	LEFT JOIN fp t on t.HOSPCODE = h.hoscode AND  (t.DATE_SERV BETWEEN @date1 	AND @date2)
	GROUP BY h.hoscode 
); # end insert

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_functional
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_functional`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_functional`()
BEGIN

SET @start_date='2015-10-01',@end_date = CURDATE();


UPDATE sys_check_process t set t.fnc_name = 'err_functional' , t.time = NOW();
DELETE FROM functional WHERE HOSPCODE NOT IN (SELECT hoscode from chospital_amp);
DROP TABLE IF EXISTS err_functional;
CREATE TABLE  err_functional AS
(

SELECT * FROM
(SELECT SQL_BIG_RESULT
	'FUNCTIONAL' as FILE

,if(t.DATE_SERV is NULL or t.DATE_SERV < (CURDATE()-INTERVAL 50 YEAR) or  t.DATE_SERV > CURDATE(),'Y','') as 'ERR_DATE'
	,(SELECT y.BYEAR FROM cbyear y WHERE t.DATE_SERV BETWEEN y.DATE1 AND y.DATE2) as 'BYEAR' 

,CONCAT(
	if(LENGTH(trim(t.HOSPCODE)) <> 5 ,'FN1101,','')
	,if(LENGTH(trim(t.PID)) = 0 or t.PID is NULL,'FN1103,','')
	,if(t.SEQ is NULL or trim(t.SEQ)='','FN1104,','')
	,if(t.DATE_SERV is NULL or t.DATE_SERV < (CURDATE()-INTERVAL 50 YEAR) or  t.DATE_SERV > CURDATE(),'FN1105,','')
	,if(t.FUNCTIONAL_TEST is NULL or trim(t.FUNCTIONAL_TEST)='','FN1106,','')
	
	,if(p.HOSPCODE IS NUll or p.PID is NULL,'FN9200,','')
	,if(hos.hoscode is NULL,'FN9201,','')

) as ERR_CODE
	,t.HOSPCODE	,t.PID	,t.SEQ	,t.DATE_SERV,t.FUNCTIONAL_TEST,date(t.D_UPDATE) as 'DUPDATE'

	

FROM functional t
	LEFT JOIN person p on t.HOSPCODE = p.HOSPCODE AND t.PID = p.PID
	LEFT JOIN chospital_amp hos ON hos.hoscode = t.HOSPCODE
	#WHERE t.DATE_SERV BETWEEN @start_date AND @end_date
	

) d 

WHERE d.ERR_CODE <> ''



); # end create

REPLACE INTO err_zhos
(
SELECT h.hoscode as 'HOSPCODE'
,'FUNCTIONAL' as 'FILE' 
,(SELECT COUNT(*) FROM functional t WHERE t.HOSPCODE = h.hoscode) as 'TOTAL'
,(SELECT COUNT(*) FROM err_functional t WHERE t.HOSPCODE = h.hoscode) as 'ERR'
,CURDATE() as 'DUPDATE'
FROM chospital_amp h
);



UPDATE sys_files SET 
qc = 100-ROUND((SELECT count(*) from err_functional)*100/(SELECT count(*) from functional),2)
,note1 = 'y' , note2 = CURDATE() WHERE file_name = 'functional';
UPDATE sys_files set qc = 0.00 WHERE qc is NULL;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_functional_b
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_functional_b`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_functional_b`(IN `BYEAR` varchar(4))
BEGIN
	SET @byear = byear;
	SET @date1 = (SELECT c.DATE1 FROM cbyear c WHERE c.BYEAR = @byear);
	SET @date2 = (SELECT c.DATE2 FROM cbyear c WHERE c.BYEAR = @byear) ;

REPLACE INTO err_zall (

	SELECT  h.hoscode as 'HOSPCODE',UPPER('functional') as 'FILE',@byear as 'BYEAR'
		,COUNT(t.HOSPCODE) as 'TOTAL'
		,(SELECT COUNT(*) FROM err_functional e WHERE e.HOSPCODE = h.hoscode AND e.BYEAR = @byear) as 'ERR'
		,(SELECT COUNT(*) FROM err_functional e WHERE e.HOSPCODE = h.hoscode AND e.ERR_DATE = 'Y') as 'ERR_DATE'
		,CURDATE() as 'DUPDATE'
	FROM chospital_amp h

	LEFT JOIN functional t on t.HOSPCODE = h.hoscode AND  (t.DATE_SERV BETWEEN @date1 	AND @date2)
	GROUP BY h.hoscode 
); # end insert

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_icf
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_icf`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_icf`()
BEGIN

SET @start_date='2015-10-01',@end_date = CURDATE();

UPDATE sys_check_process t set t.fnc_name = 'err_icf' , t.time = NOW();
DELETE FROM icf WHERE HOSPCODE NOT IN (SELECT hoscode from chospital_amp);
DROP TABLE IF EXISTS err_icf;
CREATE TABLE  err_icf AS
(

SELECT * FROM
(SELECT SQL_BIG_RESULT
	'ICF' as FILE

,if(t.DATE_SERV is NULL or t.DATE_SERV < (CURDATE()-INTERVAL 50 YEAR) or  t.DATE_SERV > CURDATE(),'Y','') as 'ERR_DATE'
	,(SELECT y.BYEAR FROM cbyear y WHERE t.DATE_SERV BETWEEN y.DATE1 AND y.DATE2) as 'BYEAR'

,CONCAT(
	if(LENGTH(trim(t.HOSPCODE)) <> 5 ,'IC1101,','')
	,if(LENGTH(trim(t.PID)) = 0 or t.PID is NULL,'IC1103,','')

	,if(t.DATE_SERV is NULL or t.DATE_SERV < (CURDATE()-INTERVAL 50 YEAR) or  t.DATE_SERV > CURDATE(),'IC1105,','')
	,if(t.ICF is NULL or trim(t.ICF)='','IC1106,','')
	,if(p.HOSPCODE IS NUll or p.PID is NULL,'IC9200,','')
	,if(hos.hoscode is NULL,'IC9201,','')
	
) as ERR_CODE
	,t.HOSPCODE 	,t.PID,t.DATE_SERV,t.ICF,t.QUALIFIER,date(t.D_UPDATE) as 'DUPDATE'

	 

FROM icf t 
	LEFT JOIN person p on t.HOSPCODE = p.HOSPCODE AND t.PID = p.PID
	LEFT JOIN chospital_amp hos ON hos.hoscode = t.HOSPCODE
	

) d
WHERE d.ERR_CODE <> ''
); # end create

REPLACE INTO err_zhos
(
SELECT h.hoscode as 'HOSPCODE'
,'ICF' as 'FILE' 
,(SELECT COUNT(*) FROM icf t WHERE t.HOSPCODE = h.hoscode) as 'TOTAL'
,(SELECT COUNT(*) FROM err_icf t WHERE t.HOSPCODE = h.hoscode) as 'ERR'
,CURDATE() as 'DUPDATE'
FROM chospital_amp h
);


UPDATE sys_files SET 
qc = 100-ROUND((SELECT count(*) from err_icf)*100/(SELECT count(*) from icf),2)
,note1 = 'y' , note2 = CURDATE() WHERE file_name = 'icf';
UPDATE sys_files set qc = 0.00 WHERE qc is NULL;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_icf_b
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_icf_b`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_icf_b`(IN `BYEAR` varchar(4))
BEGIN
	SET @byear = byear;
	SET @date1 = (SELECT c.DATE1 FROM cbyear c WHERE c.BYEAR = @byear);
	SET @date2 = (SELECT c.DATE2 FROM cbyear c WHERE c.BYEAR = @byear) ;

REPLACE INTO err_zall (

	SELECT  h.hoscode as 'HOSPCODE',UPPER('icf') as 'FILE',@byear as 'BYEAR'
		,COUNT(t.HOSPCODE) as 'TOTAL'
		,(SELECT COUNT(*) FROM err_icf e WHERE e.HOSPCODE = h.hoscode AND e.BYEAR = @byear) as 'ERR'
		,(SELECT COUNT(*) FROM err_icf e WHERE e.HOSPCODE = h.hoscode AND e.ERR_DATE = 'Y') as 'ERR_DATE'
		,CURDATE() as 'DUPDATE'
	FROM chospital_amp h

	LEFT JOIN icf t on t.HOSPCODE = h.hoscode AND  (t.DATE_SERV BETWEEN @date1 	AND @date2)
	GROUP BY h.hoscode 
); # end insert

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_labfu
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_labfu`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_labfu`()
BEGIN

SET @start_date='2015-10-01',@end_date = CURDATE();

UPDATE sys_check_process t set t.fnc_name = 'err_labfu' , t.time = NOW();
DELETE FROM labfu WHERE HOSPCODE NOT IN (SELECT hoscode from chospital_amp);
DROP TABLE IF EXISTS err_labfu;
CREATE TABLE  err_labfu AS
(

SELECT * FROM
(SELECT SQL_BIG_RESULT
	'LABFU' as FILE

,if(t.DATE_SERV is NULL or t.DATE_SERV < (CURDATE()-INTERVAL 50 YEAR) or  t.DATE_SERV > CURDATE(),'Y','') as 'ERR_DATE'
	,(SELECT y.BYEAR FROM cbyear y WHERE t.DATE_SERV BETWEEN y.DATE1 AND y.DATE2) as 'BYEAR' 

,CONCAT(
	if(LENGTH(trim(t.HOSPCODE)) <> 5 ,'LA1101,','')
	,if(LENGTH(trim(t.PID)) = 0 or t.PID is NULL,'LA1103,','')
	,if(LENGTH(trim(t.SEQ)) = 0 or t.SEQ is NULL,'LA1104,','')	
	,if(t.DATE_SERV is NULL or t.DATE_SERV < (CURDATE()-INTERVAL 50 YEAR) or  t.DATE_SERV > CURDATE(),'LA1105,','')

	,if(t.LABTEST NOT BETWEEN '01' and '23','LA1141','')
	,if(t.LABRESULT is NULL or LENGTH(trim(t.LABRESULT)) = 0 ,'LA1142','')
	,if(p.HOSPCODE IS NUll or p.PID is NULL,'LA9200,','')
	,if(hos.hoscode is NULL,'LA9201,','')
	,if(s.SEQ is NULL or s.PID is NULL or s.HOSPCODE is NULL,'SERVICE,','')

) as ERR_CODE
	,t.HOSPCODE 	,t.PID ,t.SEQ,s.SEQ as SERVICE_SEQ,t.DATE_SERV,t.LABTEST,t.LABRESULT,date(t.D_UPDATE) as 'DUPDATE'

	

FROM labfu t 
		LEFT JOIN person p on t.HOSPCODE = p.HOSPCODE AND t.PID = p.PID
		LEFT JOIN chospital_amp hos ON hos.hoscode = t.HOSPCODE
		LEFT JOIN service s on t.HOSPCODE = s.HOSPCODE AND t.PID = s.PID AND t.SEQ = s.SEQ
		#WHERE t.DATE_SERV BETWEEN @start_date AND @end_date
		

) d 

WHERE d.ERR_CODE <> ''

); # end create

REPLACE INTO err_zhos
(
SELECT h.hoscode as 'HOSPCODE'
,'LABFU' as 'FILE' 
,(SELECT COUNT(*) FROM labfu t WHERE t.HOSPCODE = h.hoscode) as 'TOTAL'
,(SELECT COUNT(*) FROM err_labfu t WHERE t.HOSPCODE = h.hoscode) as 'ERR'
,CURDATE() as 'DUPDATE'
FROM chospital_amp h
);


UPDATE sys_files SET 
qc = 100-ROUND((SELECT count(*) from err_labfu)*100/(SELECT count(*) from labfu),2)
,note1 = 'y' , note2 = CURDATE() WHERE file_name = 'labfu';
UPDATE sys_files set qc = 0.00 WHERE qc is NULL;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_labfu_b
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_labfu_b`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_labfu_b`(IN `BYEAR` varchar(4))
BEGIN
	SET @byear = byear;
	SET @date1 = (SELECT c.DATE1 FROM cbyear c WHERE c.BYEAR = @byear);
	SET @date2 = (SELECT c.DATE2 FROM cbyear c WHERE c.BYEAR = @byear) ;

REPLACE INTO err_zall (

	SELECT  h.hoscode as 'HOSPCODE',UPPER('labfu') as 'FILE',@byear as 'BYEAR'
		,COUNT(t.HOSPCODE) as 'TOTAL'
		,(SELECT COUNT(*) FROM err_labfu e WHERE e.HOSPCODE = h.hoscode AND e.BYEAR = @byear) as 'ERR'
		,(SELECT COUNT(*) FROM err_labfu e WHERE e.HOSPCODE = h.hoscode AND e.ERR_DATE = 'Y') as 'ERR_DATE'
		,CURDATE() as 'DUPDATE'
	FROM chospital_amp h

	LEFT JOIN labfu t on t.HOSPCODE = h.hoscode AND  (t.DATE_SERV BETWEEN @date1 	AND @date2)
	GROUP BY h.hoscode 
); # end insert

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_labor
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_labor`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_labor`()
BEGIN

SET @start_date='2015-10-01',@end_date = CURDATE();

UPDATE sys_check_process t set t.fnc_name = 'err_labor' , t.time = NOW();
DELETE FROM labor WHERE HOSPCODE NOT IN (SELECT hoscode from chospital_amp);
DROP TABLE IF EXISTS err_labor;
CREATE TABLE  err_labor AS
(

SELECT * FROM
(SELECT SQL_BIG_RESULT
	'LABOR' as FILE

,if(t.BDATE is NULL or t.BDATE < (CURDATE()-INTERVAL 100 YEAR) or  t.BDATE > CURDATE(),'Y','') as 'ERR_DATE'
	,(SELECT y.BYEAR FROM cbyear y WHERE t.BDATE BETWEEN y.DATE1 AND y.DATE2) as 'BYEAR' 

,CONCAT(
	if(LENGTH(trim(t.HOSPCODE)) <> 5 ,'LB1101,','')
	,if(LENGTH(trim(t.PID)) = 0 or t.PID is NULL,'LB1103,','')
	,if(trim(t.GRAVIDA) = '' or t.GRAVIDA is NULL,'LB1104,','')	
	,if(t.LMP is NULL or t.LMP < (CURDATE()-INTERVAL 100 YEAR) or  t.LMP > CURDATE(),'LB1105,','')
	,if(t.BDATE is NULL or t.BDATE < (CURDATE()-INTERVAL 100 YEAR) or  t.BDATE > CURDATE(),'LB1106,','')
	,if(trim(t.BRESULT) = '' or t.BRESULT is NULL,'LB1107,','')	
	,if(t.BPLACE not in (1,2,3,4,5),'LB1108,','')
	,if(t.BTYPE not in (1,2,3,4,5,6),'LB1110,','')
	,if(t.BDOCTOR not in (1,2,3,4,5,6),'LB1111,','')
	,if(trim(t.LBORN) = '' or t.LBORN is NULL,'LB1112,','')
	,if(trim(t.SBORN) = '' or t.SBORN is NULL,'LB1113,','')

	,if(p.HOSPCODE IS NUll or p.PID is NULL,'LB9200,','')
	,if(hos.hoscode is NULL,'LB9201,','')
	,if(CONCAT(t.HOSPCODE,t.PID,t.GRAVIDA) <> CONCAT(t2.HOSPCODE,t2.PID,t2.GRAVIDA),'LB9299,','') 
) as ERR_CODE
	,t.HOSPCODE 	,t.PID ,t.GRAVIDA,t.LMP,t.BDATE,t.BRESULT,t.BPLACE,t.BTYPE,t.BDOCTOR,t.LBORN,t.SBORN,date(t.D_UPDATE) as 'DUPDATE'

	

FROM
labor t 
		LEFT JOIN labor t2 on t.HOSPCODE = t2.HOSPCODE AND t.PID = t2.PID  AND t.GRAVIDA = t2.GRAVIDA
		LEFT JOIN person p on t.HOSPCODE = p.HOSPCODE AND t.PID = p.PID
		LEFT JOIN chospital_amp hos ON hos.hoscode = t.HOSPCODE
		
		
) d 

WHERE d.ERR_CODE <> ''

); # end create

REPLACE INTO err_zhos
(
SELECT h.hoscode as 'HOSPCODE'
,'LABOR' as 'FILE' 
,(SELECT COUNT(*) FROM labor t WHERE t.HOSPCODE = h.hoscode) as 'TOTAL'
,(SELECT COUNT(*) FROM err_labor t WHERE t.HOSPCODE = h.hoscode) as 'ERR'
,CURDATE() as 'DUPDATE'
FROM chospital_amp h
);


UPDATE sys_files SET 
qc = 100-ROUND((SELECT count(*) from err_labor)*100/(SELECT count(*) from labor),2)
,note1 = 'y' , note2 = CURDATE() WHERE file_name = 'labor';
UPDATE sys_files set qc = 0.00 WHERE qc is NULL;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_labor_b
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_labor_b`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_labor_b`(IN `BYEAR` varchar(4))
BEGIN
	SET @byear = byear;
	SET @date1 = (SELECT c.DATE1 FROM cbyear c WHERE c.BYEAR = @byear);
	SET @date2 = (SELECT c.DATE2 FROM cbyear c WHERE c.BYEAR = @byear) ;

REPLACE INTO err_zall (
SELECT  h.hoscode as 'HOSPCODE',UPPER('labor') as 'FILE',@byear as 'BYEAR'
,COUNT(t.HOSPCODE) as 'TOTAL'
,(SELECT COUNT(*) FROM err_labor e WHERE e.HOSPCODE = t.HOSPCODE AND e.BYEAR = @byear) as 'ERR'
,(SELECT COUNT(*) FROM err_labor e WHERE e.HOSPCODE = t.HOSPCODE AND e.ERR_DATE = 'Y') as 'DATE_SERV_ERR'
,CURDATE() as 'DUPDATE'
FROM chospital_amp h

LEFT JOIN labor t on t.HOSPCODE = h.hoscode AND t.BDATE BETWEEN @date1 	AND @date2

GROUP BY h.hoscode 
);

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_ncdscreen
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_ncdscreen`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_ncdscreen`()
BEGIN

SET @start_date='2015-10-01',@end_date = CURDATE();

UPDATE sys_check_process t set t.fnc_name = 'err_ncdscreen' , t.time = NOW();
DELETE FROM ncdscreen WHERE HOSPCODE NOT IN (SELECT hoscode from chospital_amp);
DROP TABLE IF EXISTS err_ncdscreen;
CREATE TABLE  err_ncdscreen AS
(
SELECT * FROM
(SELECT SQL_BIG_RESULT
	'NCDSCREEN' as FILE

,if(t.DATE_SERV is NULL or t.DATE_SERV < (CURDATE()-INTERVAL 50 YEAR) or  t.DATE_SERV > CURDATE(),'Y','') as 'ERR_DATE'
	,(SELECT y.BYEAR FROM cbyear y WHERE t.DATE_SERV BETWEEN y.DATE1 AND y.DATE2) as 'BYEAR' 

,CONCAT(
	if(LENGTH(trim(t.HOSPCODE)) <> 5 ,'NC1101,','')
	,if(LENGTH(trim(t.PID)) = 0 or t.PID is NULL,'NC1103,','')

	,if(t.DATE_SERV is NULL or t.DATE_SERV < (CURDATE()-INTERVAL 50 YEAR) or  t.DATE_SERV > CURDATE(),'NC1105,','')
	,if(t.SERVPLACE NOT IN ( 1,2),'NC1140,','')
	,if(t.WEIGHT IS NULL,'NC1145,','')
	,if(t.HEIGHT IS NULL,'NC1146,','')	
	,if(t.WAIST_CM IS NULL,'NC1147,','')
	,if(t.SBP_1 IS NULL,'NC1148,','')
  ,if(t.DBP_1 IS NULL,'NC1149,','')
	,if(p.HOSPCODE IS NUll or p.PID is NULL,'NC9200,','')
	,if(hos.hoscode is NULL,'NC9201,','')

) as ERR_CODE
	,t.HOSPCODE	,t.PID,t.SEQ,t.DATE_SERV,t.SERVPLACE,t.WEIGHT,t.HEIGHT,t.WAIST_CM,t.SBP_1,t.DBP_1,date(t.D_UPDATE) as 'DUPDATE'

	

FROM ncdscreen t 
	LEFT JOIN person p on t.HOSPCODE = p.HOSPCODE AND t.PID = p.PID
	LEFT JOIN chospital_amp hos ON hos.hoscode = t.HOSPCODE
	#WHERE (t.DATE_SERV BETWEEN @start_date AND @end_date)
	
	

) d 

WHERE d.ERR_CODE <> ''

); # end create

REPLACE INTO err_zhos
(
SELECT h.hoscode as 'HOSPCODE'
,'NCDSCREEN' as 'FILE' 
,(SELECT COUNT(*) FROM ncdscreen t WHERE t.HOSPCODE = h.hoscode) as 'TOTAL'
,(SELECT COUNT(*) FROM err_ncdscreen t WHERE t.HOSPCODE = h.hoscode) as 'ERR'
,CURDATE() as 'DUPDATE'
FROM chospital_amp h
);


UPDATE sys_files SET 
qc = 100-ROUND((SELECT count(*) from err_ncdscreen)*100/(SELECT count(*) from ncdscreen),2)
,note1 = 'y' , note2 = CURDATE() WHERE file_name = 'ncdscreen';
UPDATE sys_files set qc = 0.00 WHERE qc is NULL;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_ncdscreen_b
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_ncdscreen_b`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_ncdscreen_b`(IN `BYEAR` varchar(4))
BEGIN
	SET @byear = byear;
	SET @date1 = (SELECT c.DATE1 FROM cbyear c WHERE c.BYEAR = @byear);
	SET @date2 = (SELECT c.DATE2 FROM cbyear c WHERE c.BYEAR = @byear) ;

REPLACE INTO err_zall (

	SELECT  h.hoscode as 'HOSPCODE',UPPER('ncdscreen') as 'FILE',@byear as 'BYEAR'
		,COUNT(t.HOSPCODE) as 'TOTAL'
		,(SELECT COUNT(*) FROM err_ncdscreen e WHERE e.HOSPCODE = h.hoscode AND e.BYEAR = @byear) as 'ERR'
		,(SELECT COUNT(*) FROM err_ncdscreen e WHERE e.HOSPCODE = h.hoscode AND e.ERR_DATE = 'Y') as 'ERR_DATE'
		,CURDATE() as 'DUPDATE'
	FROM chospital_amp h

	LEFT JOIN ncdscreen t on t.HOSPCODE = h.hoscode AND  (t.DATE_SERV BETWEEN @date1 	AND @date2)
	GROUP BY h.hoscode 
); # end insert

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_newborn
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_newborn`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_newborn`()
BEGIN

SET @start_date='2015-10-01',@end_date = CURDATE();

UPDATE sys_check_process t set t.fnc_name = 'err_newborn' , t.time = NOW();
DELETE FROM newborn WHERE HOSPCODE NOT IN (SELECT hoscode from chospital_amp);
DROP TABLE IF EXISTS err_newborn;
CREATE TABLE  err_newborn AS
(
SELECT * FROM
(SELECT SQL_BIG_RESULT
	'NEWBORN' as FILE

	,if(t.BDATE is NULL or t.BDATE < (CURDATE()-INTERVAL 50 YEAR) or  t.BDATE > CURDATE(),'Y','') as 'ERR_DATE'
	,(SELECT y.BYEAR FROM cbyear y WHERE t.BDATE BETWEEN y.DATE1 AND y.DATE2) as 'BYEAR' 

,CONCAT(
	if(LENGTH(trim(t.HOSPCODE)) <> 5 ,'NB1101,','')
	,if(LENGTH(trim(t.PID)) = 0 or t.PID is NULL,'NB1103,','')
	,if(t.MPID = '' or t.MPID is NULL,'NB1104,','')	
	,if(t.BDATE is NULL or t.BDATE < (CURDATE()-INTERVAL 50 YEAR) or  t.BDATE > CURDATE(),'NB1107,','')
	,if(t.ASPHYXIA NOT IN (1,2,9),'NB1115,','')
	,if(t.VITK NOT IN (1,2,9),'NB1116,','')
	,if(t.TSH NOT IN (1,2,9),'NB1117,','')
	
	,if(p.HOSPCODE IS NUll or p.PID is NULL,'NB9200,','')
	,if(hos.hoscode is NULL,'NB9201,','')

	,if(CONCAT(t.HOSPCODE,t.PID,t.MPID) <> CONCAT(t2.HOSPCODE,t2.PID,t2.MPID),'NB9299,','') 
) as ERR_CODE
	,t.HOSPCODE	,t.PID,t.MPID,t.BDATE,t.ASPHYXIA,t.VITK,t.TSH,date(t.D_UPDATE) as 'DUPDATE'



FROM newborn t 
		LEFT JOIN newborn t2 on t.HOSPCODE = t2.HOSPCODE AND t.PID = t2.PID AND t.MPID=t2.MPID
		LEFT JOIN person p on t.HOSPCODE = p.HOSPCODE AND t.PID = p.PID
		LEFT JOIN chospital_amp hos ON hos.hoscode = t.HOSPCODE

		#WHERE t.BDATE BETWEEN @start_date AND @end_date
	

) d 

WHERE d.ERR_CODE <> ''

); # end create

REPLACE INTO err_zhos
(
SELECT h.hoscode as 'HOSPCODE'
,'NEWBORN' as 'FILE' 
,(SELECT COUNT(*) FROM newborn t WHERE t.HOSPCODE = h.hoscode) as 'TOTAL'
,(SELECT COUNT(*) FROM err_newborn t WHERE t.HOSPCODE = h.hoscode) as 'ERR'
,CURDATE() as 'DUPDATE'
FROM chospital_amp h
);


UPDATE sys_files SET 
qc = 100-ROUND((SELECT count(*) from err_newborn)*100/(SELECT count(*) from newborn),2)
,note1 = 'y' , note2 = CURDATE() WHERE file_name = 'newborn';
UPDATE sys_files set qc = 0.00 WHERE qc is NULL;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_newborncare
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_newborncare`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_newborncare`()
BEGIN
SET @start_date='2015-10-01',@end_date = CURDATE();

UPDATE sys_check_process t set t.fnc_name = 'err_newborncare' , t.time = NOW();
DELETE FROM newborncare WHERE HOSPCODE NOT IN (SELECT hoscode from chospital_amp);
DROP TABLE IF EXISTS err_newborncare;
CREATE TABLE  err_newborncare AS
(

SELECT * FROM
(SELECT SQL_BIG_RESULT
	'NEWBORNCARE' as FILE

	,if(t.BCARE is NULL or t.BCARE < (CURDATE()-INTERVAL 50 YEAR) or  t.BCARE > CURDATE(),'Y','') as 'ERR_DATE'
	,(SELECT y.BYEAR FROM cbyear y WHERE t.BCARE BETWEEN y.DATE1 AND y.DATE2) as 'BYEAR' 

,CONCAT(
	if(LENGTH(trim(t.HOSPCODE)) <> 5 ,'NE1101,','')
	,if(LENGTH(trim(t.PID)) = 0 or t.PID is NULL,'NE1103,','')

	,if(t.BDATE is NULL or t.BDATE < (CURDATE()-INTERVAL 50 YEAR) or  t.BDATE > CURDATE(),'NE1104,','')
	,if(t.BCARE is NULL or t.BCARE < (CURDATE()-INTERVAL 50 YEAR) or  t.BCARE > CURDATE(),'NE1105,','')
	,if(t.BCARERESULT NOT IN (1,2,9),'NE1106,','')
	,if(t.FOOD NOT IN (1,2,3,4),'NE1107,','')
	,if(p.HOSPCODE IS NUll or p.PID is NULL,'NE9200,','')
	,if(hos.hoscode is NULL,'NE9201,','')

) as ERR_CODE
	,t.HOSPCODE	,t.PID,t.BDATE,t.BCARE,t.BCARERESULT,t.FOOD,date(t.D_UPDATE) as 'DUPDATE'



FROM newborncare t 
		LEFT JOIN person p on t.HOSPCODE = p.HOSPCODE AND t.PID = p.PID
		LEFT JOIN chospital_amp hos ON hos.hoscode = t.HOSPCODE

		#WHERE t.BDATE BETWEEN @start_date AND @end_date
	
) d 

WHERE d.ERR_CODE <> ''

); # end create

REPLACE INTO err_zhos
(
SELECT h.hoscode as 'HOSPCODE'
,'NEWBORNCARE' as 'FILE' 
,(SELECT COUNT(*) FROM newborncare t WHERE t.HOSPCODE = h.hoscode) as 'TOTAL'
,(SELECT COUNT(*) FROM err_newborncare t WHERE t.HOSPCODE = h.hoscode) as 'ERR'
,CURDATE() as 'DUPDATE'
FROM chospital_amp h
);



UPDATE sys_files SET 
qc = 100-ROUND((SELECT count(*) from err_newborncare)*100/(SELECT count(*) from newborncare),2)
,note1 = 'y' , note2 = CURDATE() WHERE file_name = 'newborncare';
UPDATE sys_files set qc = 0.00 WHERE qc is NULL;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_newborncare_b
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_newborncare_b`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_newborncare_b`(IN `BYEAR` varchar(4))
BEGIN
	SET @byear = byear;
	SET @date1 = (SELECT c.DATE1 FROM cbyear c WHERE c.BYEAR = @byear);
	SET @date2 = (SELECT c.DATE2 FROM cbyear c WHERE c.BYEAR = @byear) ;

REPLACE INTO err_zall (

	SELECT  h.hoscode as 'HOSPCODE',UPPER('newborncare') as 'FILE',@byear as 'BYEAR'
		,COUNT(t.HOSPCODE) as 'TOTAL'
		,(SELECT COUNT(*) FROM err_newborncare e WHERE e.HOSPCODE = h.hoscode AND e.BYEAR = @byear) as 'ERR'
		,(SELECT COUNT(*) FROM err_newborncare e WHERE e.HOSPCODE = h.hoscode AND e.ERR_DATE = 'Y') as 'ERR_DATE'
		,CURDATE() as 'DUPDATE'
	FROM chospital_amp h

	LEFT JOIN newborncare t on t.HOSPCODE = h.hoscode AND  (t.BCARE BETWEEN @date1 	AND @date2)
	GROUP BY h.hoscode 
); # end insert

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_newborn_b
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_newborn_b`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_newborn_b`(IN `BYEAR` varchar(4))
BEGIN
	SET @byear = byear;
	SET @date1 = (SELECT c.DATE1 FROM cbyear c WHERE c.BYEAR = @byear);
	SET @date2 = (SELECT c.DATE2 FROM cbyear c WHERE c.BYEAR = @byear) ;

REPLACE INTO err_zall (
SELECT  h.hoscode as 'HOSPCODE',UPPER('newborn') as 'FILE',@byear as 'BYEAR'
,COUNT(t.HOSPCODE) as 'TOTAL'
,(SELECT COUNT(*) FROM err_newborn e WHERE e.HOSPCODE = t.HOSPCODE AND e.BYEAR = @byear) as 'ERR'
,(SELECT COUNT(*) FROM err_newborn e WHERE e.HOSPCODE = t.HOSPCODE AND e.ERR_DATE = 'Y') as 'DATE_SERV_ERR'
,CURDATE() as 'DUPDATE'
FROM chospital_amp h

LEFT JOIN newborn t on t.HOSPCODE = h.hoscode AND t.BDATE BETWEEN @date1 	AND @date2

GROUP BY h.hoscode 
);

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_nutrition
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_nutrition`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_nutrition`()
BEGIN

SET @start_date='2015-10-01',@end_date = CURDATE();

UPDATE sys_check_process t set t.fnc_name = 'err_nutrition' , t.time = NOW();
DELETE FROM nutrition WHERE HOSPCODE NOT IN (SELECT hoscode from chospital_amp);
DROP TABLE IF EXISTS err_nutrition;
CREATE TABLE  err_nutrition AS
(

SELECT * FROM
(SELECT SQL_BIG_RESULT
	'NUTRITION' as FILE

,if(t.DATE_SERV is NULL or t.DATE_SERV < (CURDATE()-INTERVAL 50 YEAR) or  t.DATE_SERV > CURDATE(),'Y','') as 'ERR_DATE'
	,(SELECT y.BYEAR FROM cbyear y WHERE t.DATE_SERV BETWEEN y.DATE1 AND y.DATE2) as 'BYEAR' 

,CONCAT(
	if(LENGTH(trim(t.HOSPCODE)) <> 5 ,'NU1101,','')
	,if(LENGTH(trim(t.PID)) = 0 or t.PID is NULL,'NU1103,','')
	,if(t.DATE_SERV is NULL or t.DATE_SERV < (CURDATE()-INTERVAL 50 YEAR) or  t.DATE_SERV > CURDATE(),'NU1105,','')
	
	,if(trim(t.WEIGHT)='' or t.WEIGHT is NULL,'NU1141,','')
	,if(trim(t.HEIGHT)='' or t.HEIGHT is NULL,'NU1142,','')
	,if(p.HOSPCODE IS NUll or p.PID is NULL,'NU9200,','')
	,if(hos.hoscode is NULL,'NU9201,','')

) as ERR_CODE
	,t.HOSPCODE	,t.PID,t.DATE_SERV,t.WEIGHT,t.HEIGHT,date(t.D_UPDATE) as 'DUPDATE'

	
FROM nutrition t 
		LEFT JOIN person p on t.HOSPCODE = p.HOSPCODE AND t.PID = p.PID
		LEFT JOIN chospital_amp hos ON hos.hoscode = t.HOSPCODE

		#WHERE (t.DATE_SERV BETWEEN @start_date AND @end_date)
		
) d 

WHERE d.ERR_CODE <> ''

); # end create

REPLACE INTO err_zhos
(
SELECT h.hoscode as 'HOSPCODE'
,'NUTRITION' as 'FILE' 
,(SELECT COUNT(*) FROM nutrition t WHERE t.HOSPCODE = h.hoscode) as 'TOTAL'
,(SELECT COUNT(*) FROM err_nutrition t WHERE t.HOSPCODE = h.hoscode) as 'ERR'
,CURDATE() as 'DUPDATE'
FROM chospital_amp h
);


UPDATE sys_files SET 
qc = 100-ROUND((SELECT count(*) from err_nutrition)*100/(SELECT count(*) from nutrition),2)
,note1 = 'y' , note2 = CURDATE() WHERE file_name = 'nutrition';
UPDATE sys_files set qc = 0.00 WHERE qc is NULL;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_nutrition_b
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_nutrition_b`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_nutrition_b`(IN `BYEAR` varchar(4))
BEGIN
	SET @byear = byear;
	SET @date1 = (SELECT c.DATE1 FROM cbyear c WHERE c.BYEAR = @byear);
	SET @date2 = (SELECT c.DATE2 FROM cbyear c WHERE c.BYEAR = @byear) ;

REPLACE INTO err_zall (

	SELECT  h.hoscode as 'HOSPCODE',UPPER('nutrition') as 'FILE',@byear as 'BYEAR'
		,COUNT(t.HOSPCODE) as 'TOTAL'
		,(SELECT COUNT(*) FROM err_nutrition e WHERE e.HOSPCODE = h.hoscode AND e.BYEAR = @byear) as 'ERR'
		,(SELECT COUNT(*) FROM err_nutrition e WHERE e.HOSPCODE = h.hoscode AND e.ERR_DATE = 'Y') as 'ERR_DATE'
		,CURDATE() as 'DUPDATE'
	FROM chospital_amp h

	LEFT JOIN nutrition t on t.HOSPCODE = h.hoscode AND  (t.DATE_SERV BETWEEN @date1 	AND @date2)
	GROUP BY h.hoscode 
); # end insert

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_person
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_person`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_person`()
BEGIN

UPDATE sys_check_process t set t.fnc_name = 'err_person' , t.time = NOW();
DELETE FROM person WHERE HOSPCODE NOT IN (SELECT hoscode from chospital_amp);	
DROP TABLE IF EXISTS err_person;
CREATE TABLE  err_person AS
(
SELECT * 
from (
SELECT SQL_BIG_RESULT 
'PERSON' as FILE

,'' as 'ERR_DATE'
,'' as 'BYEAR' 

,CONCAT(
	if(LENGTH(trim(t.HOSPCODE)) <> 5 ,'PE1101,','') 
	,if(LENGTH(trim(t.CID)) <> 13 ,'PE1102,','')
	,if(LENGTH(trim(t.PID)) = 0 OR t.PID is NULL ,'PE1103,','')
	,if(t.SEX NOT IN (1,2),'PE1107,','')
	,if((t.BIRTH is NULL) or (t.BIRTH > CURDATE()) or (t.BIRTH < (CURDATE()-INTERVAL 200 YEAR)) ,'PE1109,','')
	,if(t.TYPEAREA not BETWEEN 1 and 5,'PE1140,','')
	,if(t.DISCHARGE ='' or t.DISCHARGE IS NULL,'PE1141,','')
	,if(hos.hoscode is NULL,'PE9201,','')
	,if(t.NATION='099' AND t.DISCHARGE=9,if(mod11(t.CID)=0,'CID,',''),'')
	,if(t.TYPEAREA IN (1,3) AND t.DISCHARGE =9,if(trim(t.HID)='' or t.HID is NULL or h.HID is null,'HOME,',''),'') # HOME
) as ERR_CODE,
	t.HOSPCODE,t.PID,t.CID,t.`NAME`,t.LNAME,t.TYPEAREA,t.BIRTH,t.NATION,t.DISCHARGE,t.HID,date(t.D_UPDATE) as 'DUPDATE'



FROM person t
	LEFT JOIN home h ON h.HOSPCODE = t.HOSPCODE AND h.HID = t.HID
	LEFT JOIN chospital_amp hos ON hos.hoscode = t.HOSPCODE

	WHERE t.DISCHARGE = 9

) d  
WHERE d.ERR_CODE <> ''
); # end create

REPLACE INTO err_zhos
(
SELECT h.hoscode as 'HOSPCODE'
,'PERSON' as 'FILE' 
,(SELECT COUNT(*) FROM person t WHERE t.HOSPCODE = h.hoscode) as 'TOTAL'
,(SELECT COUNT(*) FROM err_person t WHERE t.HOSPCODE = h.hoscode) as 'ERR'
,CURDATE() as 'DUPDATE'
FROM chospital_amp h
);


UPDATE sys_files SET qc = 100-ROUND((SELECT count(*) from err_person)*100/(SELECT count(*) from person),2)
,note1 = 'y' , note2 = CURDATE() WHERE file_name = 'person';
UPDATE sys_files set qc = 0.00 WHERE qc is NULL;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_person_b
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_person_b`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_person_b`(IN `BYEAR` varchar(4))
BEGIN
	SET @byear = byear;
	SET @date1 = (SELECT c.DATE1 FROM cbyear c WHERE c.BYEAR = @byear);
	SET @date2 = (SELECT c.DATE2 FROM cbyear c WHERE c.BYEAR = @byear) ;

REPLACE INTO err_zall (

	SELECT  h.hoscode as 'HOSPCODE',UPPER('person') as 'FILE',@byear as 'BYEAR'
		,COUNT(t.HOSPCODE) as 'TOTAL'
		,(SELECT COUNT(*) FROM err_person e WHERE e.HOSPCODE = h.hoscode AND e.BYEAR = @byear) as 'ERR'
		,(SELECT COUNT(*) FROM err_person e WHERE e.HOSPCODE = h.hoscode AND e.ERR_DATE = 'Y') as 'ERR_DATE'
		,CURDATE() as 'DUPDATE'
	FROM chospital_amp h

	LEFT JOIN person t on t.HOSPCODE = h.hoscode 
	GROUP BY h.hoscode 
); # end insert

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_postnatal
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_postnatal`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_postnatal`()
BEGIN

SET @start_date='2015-10-01',@end_date = CURDATE();

UPDATE sys_check_process t set t.fnc_name = 'err_postnatal' , t.time = NOW();
DELETE FROM postnatal WHERE HOSPCODE NOT IN (SELECT hoscode from chospital_amp);
DROP TABLE IF EXISTS err_postnatal;
CREATE TABLE  err_postnatal AS
(

SELECT * FROM
(SELECT SQL_BIG_RESULT
	'POSTNATAL' as FILE

	,if(t.PPCARE is NULL or t.PPCARE < (CURDATE()-INTERVAL 50 YEAR) or  t.PPCARE > CURDATE(),'Y','') as 'ERR_DATE'
	,(SELECT y.BYEAR FROM cbyear y WHERE t.PPCARE BETWEEN y.DATE1 AND y.DATE2) as 'BYEAR' 

,CONCAT(
	if(LENGTH(trim(t.HOSPCODE)) <> 5 ,'PO1101,','')
	,if(LENGTH(trim(t.PID)) = 0 or t.PID is NULL,'PO1103,','')

	,if(t.GRAVIDA is NULL OR t.GRAVIDA=0 OR (CONCAT('',t.GRAVIDA * 1)<> t.GRAVIDA),'PO1104,','')	
	,if(t.BDATE is NULL or t.BDATE < (CURDATE()-INTERVAL 50 YEAR) or  t.BDATE > CURDATE(),'PO1105,','')
	,if(t.PPCARE is NULL or t.PPCARE < (CURDATE()-INTERVAL 50 YEAR) or  t.PPCARE > CURDATE(),'PO1106,','')
	,if(t.PPRESULT NOT IN (1,2,9) ,'PO1107,','')
	,if(p.HOSPCODE IS NUll or p.PID is NULL,'PO9200,','')
	,if(hos.hoscode is NULL,'PO9201,','')
	 
) as ERR_CODE
	,t.HOSPCODE	,t.PID,t.GRAVIDA,t.BDATE,t.PPCARE,t.PPRESULT,date(t.D_UPDATE) as 'DUPDATE'



FROM postnatal t 
		LEFT JOIN person p on t.HOSPCODE = p.HOSPCODE AND t.PID = p.PID
		LEFT JOIN chospital_amp hos ON hos.hoscode = t.HOSPCODE

		#WHERE t.PPCARE BETWEEN @start_date AND @end_date
		
) d 

WHERE d.ERR_CODE <> ''

); # end create

REPLACE INTO err_zhos
(
SELECT h.hoscode as 'HOSPCODE'
,'POSTNATAL' as 'FILE' 
,(SELECT COUNT(*) FROM postnatal t WHERE t.HOSPCODE = h.hoscode) as 'TOTAL'
,(SELECT COUNT(*) FROM err_postnatal t WHERE t.HOSPCODE = h.hoscode) as 'ERR'
,CURDATE() as 'DUPDATE'
FROM chospital_amp h
);



UPDATE sys_files SET 
qc = 100-ROUND((SELECT count(*) from err_postnatal)*100/(SELECT count(*) from postnatal),2)
,note1 = 'y' , note2 = CURDATE() WHERE file_name = 'postnatal';
UPDATE sys_files set qc = 0.00 WHERE qc is NULL;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_postnatal_b
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_postnatal_b`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_postnatal_b`(IN `BYEAR` varchar(4))
BEGIN
	SET @byear = byear;
	SET @date1 = (SELECT c.DATE1 FROM cbyear c WHERE c.BYEAR = @byear);
	SET @date2 = (SELECT c.DATE2 FROM cbyear c WHERE c.BYEAR = @byear) ;

REPLACE INTO err_zall (

	SELECT  h.hoscode as 'HOSPCODE',UPPER('postnatal') as 'FILE',@byear as 'BYEAR'
		,COUNT(t.HOSPCODE) as 'TOTAL'
		,(SELECT COUNT(*) FROM err_postnatal e WHERE e.HOSPCODE = h.hoscode AND e.BYEAR = @byear) as 'ERR'
		,(SELECT COUNT(*) FROM err_postnatal e WHERE e.HOSPCODE = h.hoscode AND e.ERR_DATE = 'Y') as 'ERR_DATE'
		,CURDATE() as 'DUPDATE'
	FROM chospital_amp h

	LEFT JOIN postnatal t on t.HOSPCODE = h.hoscode AND  (t.BCARE BETWEEN @date1 	AND @date2)
	GROUP BY h.hoscode 
); # end insert

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_prenatal
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_prenatal`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_prenatal`()
BEGIN

SET @start_date='2015-10-01',@end_date = CURDATE();

UPDATE sys_check_process t set t.fnc_name = 'err_prenatal' , t.time = NOW();
DELETE FROM prenatal WHERE HOSPCODE NOT IN (SELECT hoscode from chospital_amp);
DROP TABLE IF EXISTS err_prenatal;
CREATE TABLE  err_prenatal AS
(
SELECT * FROM
(SELECT SQL_BIG_RESULT
	'PRENATAL' as FILE

,if(t.LMP is NULL or t.LMP < (CURDATE()-INTERVAL 50 YEAR) or  t.LMP > CURDATE(),'Y','') as 'ERR_DATE'
	,(SELECT y.BYEAR FROM cbyear y WHERE t.LMP BETWEEN y.DATE1 AND y.DATE2) as 'BYEAR'

,CONCAT(
	if(LENGTH(trim(t.HOSPCODE)) <> 5 ,'PR1101,','')
	,if(LENGTH(trim(t.PID)) = 0 or t.PID is NULL,'PR1103,','')
	,if(t.GRAVIDA is NULL OR (CONCAT('',t.GRAVIDA * 1)<> t.GRAVIDA),'PR1104,','')	
	,if(t.LMP is NULL or t.LMP < (CURDATE()-INTERVAL 50 YEAR) or  t.LMP > CURDATE(),'PR1105,','')
	,if(t.VDRL_RESULT NOT IN (1,2,3,4,9) ,'PR1106,','')
	,if(t.HB_RESULT NOT IN (1,2,3,4,9) ,'PR1107,','')
	,if(t.HIV_RESULT NOT IN (1,2,3,4,9) ,'PR1108,','')
	,if(t.THALASSEMIA NOT IN (1,2,3,4,9) ,'PR1109,','')
	,if(p.HOSPCODE IS NUll or p.PID is NULL,'PR9200,','')
	,if(hos.hoscode is NULL,'PR9201,','')


) as ERR_CODE
	,t.HOSPCODE	,t.PID ,t.GRAVIDA,t.LMP,t.VDRL_RESULT,t.HB_RESULT,t.HIV_RESULT,t.THALASSEMIA,date(t.D_UPDATE) as 'DUPDATE'



FROM prenatal t 
		LEFT JOIN person p on t.HOSPCODE = p.HOSPCODE AND t.PID = p.PID
		LEFT JOIN chospital_amp hos ON hos.hoscode = t.HOSPCODE

) d 

WHERE d.ERR_CODE <> ''

); # end create

REPLACE INTO err_zhos
(
SELECT h.hoscode as 'HOSPCODE'
,'PRENATAL' as 'FILE' 
,(SELECT COUNT(*) FROM prenatal t WHERE t.HOSPCODE = h.hoscode) as 'TOTAL'
,(SELECT COUNT(*) FROM err_prenatal t WHERE t.HOSPCODE = h.hoscode) as 'ERR'
,CURDATE() as 'DUPDATE'
FROM chospital_amp h
);



UPDATE sys_files SET 
qc = 100-ROUND((SELECT count(*) from err_prenatal)*100/(SELECT count(*) from prenatal),2)
,note1 = 'y' , note2 = CURDATE() WHERE file_name = 'prenatal';
UPDATE sys_files set qc = 0.00 WHERE qc is NULL;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_prenatal_b
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_prenatal_b`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_prenatal_b`(IN `BYEAR` varchar(4))
BEGIN
	SET @byear = byear;
	SET @date1 = (SELECT c.DATE1 FROM cbyear c WHERE c.BYEAR = @byear);
	SET @date2 = (SELECT c.DATE2 FROM cbyear c WHERE c.BYEAR = @byear) ;

REPLACE INTO err_zall (

	SELECT  h.hoscode as 'HOSPCODE',UPPER('prenatal') as 'FILE',@byear as 'BYEAR'
		,COUNT(t.HOSPCODE) as 'TOTAL'
		,(SELECT COUNT(*) FROM err_prenatal e WHERE e.HOSPCODE = h.hoscode AND e.BYEAR = @byear) as 'ERR'
		,(SELECT COUNT(*) FROM err_prenatal e WHERE e.HOSPCODE = h.hoscode AND e.ERR_DATE = 'Y') as 'ERR_DATE'
		,CURDATE() as 'DUPDATE'
	FROM chospital_amp h

	LEFT JOIN prenatal t on t.HOSPCODE = h.hoscode AND  (t.BCARE BETWEEN @date1 	AND @date2)
	GROUP BY h.hoscode 
); # end insert

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_procedure_opd
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_procedure_opd`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_procedure_opd`()
BEGIN

SET @start_date='2015-10-01',@end_date = CURDATE();

UPDATE sys_check_process t set t.fnc_name = 'err_procedure_opd' , t.time = NOW();
DELETE FROM procedure_opd WHERE HOSPCODE NOT IN (SELECT hoscode from chospital_amp);
DROP TABLE IF EXISTS err_procedure_opd;
CREATE TABLE  err_procedure_opd AS
(

SELECT * FROM
(SELECT SQL_BIG_RESULT
	'PROCEDURE_OPD' as FILE

,if(t.DATE_SERV is NULL or t.DATE_SERV < (CURDATE()-INTERVAL 50 YEAR) or  t.DATE_SERV > CURDATE(),'Y','') as 'ERR_DATE'
	,(SELECT y.BYEAR FROM cbyear y WHERE t.DATE_SERV BETWEEN y.DATE1 AND y.DATE2) as 'BYEAR'

,CONCAT(
	if(LENGTH(trim(t.HOSPCODE)) <> 5 ,'PX1101,','')
	,if(LENGTH(trim(t.PID)) = 0 or t.PID is NULL,'PX1103,','')
	,if(t.SEQ is NULL or TRIM(t.SEQ)='','PX1104,','')
	,if(t.DATE_SERV is NULL or t.DATE_SERV < (CURDATE()-INTERVAL 50 YEAR) or  t.DATE_SERV > CURDATE(),'PX1105,','')
	,if(LENGTH(TRIM(t.PROCEDCODE))=0 or t.PROCEDCODE is NULL,'PX1130,','')
	,if(p.HOSPCODE IS NUll or p.PID is NULL,'PX9200,','')
	,if(hos.hoscode is NULL,'PX9201,','')
	,if(t.CLINIC not in (SELECT cliniccode from cclinic),'PX9231,','')
	,if(s.SEQ is NULL or s.PID is NULL or s.HOSPCODE is NULL,'SERVICE,','')
	
) as ERR_CODE
	,t.HOSPCODE	,t.PID	,t.SEQ	,s.SEQ as SERVICE_SEQ,t.DATE_SERV ,t.PROCEDCODE	,t.CLINIC	,date(t.D_UPDATE) as 'DUPDATE'

	

FROM procedure_opd t 	

		LEFT JOIN service s on t.HOSPCODE = s.HOSPCODE AND t.PID = s.PID AND t.SEQ = s.SEQ
		LEFT JOIN person p on t.HOSPCODE = p.HOSPCODE AND t.PID = p.PID
		LEFT JOIN chospital_amp hos ON hos.hoscode = t.HOSPCODE

		#WHERE t.DATE_SERV BETWEEN '2015-10-01' AND CURDATE()
		

) d 
WHERE d.ERR_CODE <> ''



); # end create

REPLACE INTO err_zhos
(
SELECT h.hoscode as 'HOSPCODE'
,'PROCEDURE_OPD' as 'FILE' 
,(SELECT COUNT(*) FROM procedure_opd t WHERE t.HOSPCODE = h.hoscode) as 'TOTAL'
,(SELECT COUNT(*) FROM err_procedure_opd t WHERE t.HOSPCODE = h.hoscode) as 'ERR'
,CURDATE() as 'DUPDATE'
FROM chospital_amp h
);



UPDATE sys_files SET 
qc = 100-ROUND((SELECT count(*) from err_procedure_opd)*100/(SELECT count(*) from procedure_opd),2)
,note1 = 'y' , note2 = CURDATE() WHERE file_name = 'procedure_opd';
UPDATE sys_files set qc = 0.00 WHERE qc is NULL;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_procedure_opd_b
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_procedure_opd_b`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_procedure_opd_b`(IN `BYEAR` varchar(4))
BEGIN
	SET @byear = byear;
	SET @date1 = (SELECT c.DATE1 FROM cbyear c WHERE c.BYEAR = @byear);
	SET @date2 = (SELECT c.DATE2 FROM cbyear c WHERE c.BYEAR = @byear) ;

REPLACE INTO err_zall (

	SELECT  h.hoscode as 'HOSPCODE',UPPER('procedure_opd') as 'FILE',@byear as 'BYEAR'
		,COUNT(t.HOSPCODE) as 'TOTAL'
		,(SELECT COUNT(*) FROM err_procedure_opd e WHERE e.HOSPCODE = h.hoscode AND e.BYEAR = @byear) as 'ERR'
		,(SELECT COUNT(*) FROM err_procedure_opd e WHERE e.HOSPCODE = h.hoscode AND e.ERR_DATE = 'Y') as 'ERR_DATE'
		,CURDATE() as 'DUPDATE'
	FROM chospital_amp h

	LEFT JOIN procedure_opd t on t.HOSPCODE = h.hoscode AND  (t.DATE_SERV BETWEEN @date1 	AND @date2)
	GROUP BY h.hoscode 
); # end insert

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_provider
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_provider`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_provider`()
BEGIN


UPDATE sys_check_process t set t.fnc_name = 'err_provider' , t.time = NOW();
DELETE FROM provider WHERE HOSPCODE NOT IN (SELECT hoscode from chospital_amp);
DROP TABLE IF EXISTS err_provider;
CREATE TABLE  err_provider AS
(

SELECT * FROM
(SELECT SQL_BIG_RESULT
	'PROVIDER' as FILE

	,'' as 'ERR_DATE'
	,'' as 'BYEAR' 

,CONCAT(
	if(LENGTH(trim(t.HOSPCODE)) <> 5 ,'PD1101,','')
	,if(LENGTH(trim(t.CID)) <> 13,'PD1102,','')
	,if(LENGTH(trim(t.PROVIDER)) = 0 OR t.PROVIDER is NULL,'PD1103,','')
	,if(LENGTH(trim(t.PROVIDERTYPE)) = 0 or t.PROVIDERTYPE is NULL,'PD1104,','')	

	,if(hos.hoscode is NULL,'PD9201,','')

	,if(CONCAT(t.HOSPCODE,t.PROVIDER) <> CONCAT(t2.HOSPCODE,t2.PROVIDER),'PD9299,','') 
) as ERR_CODE
	,t.HOSPCODE,t.CID	,t.PROVIDER,t.PROVIDERTYPE,date(t.D_UPDATE) as 'DUPDATE'



FROM provider t 
		LEFT JOIN provider t2  on t.HOSPCODE = t2.HOSPCODE AND t.PROVIDER = t2.PROVIDER
		LEFT JOIN chospital_amp hos ON hos.hoscode = t.HOSPCODE
) d 

WHERE d.ERR_CODE <> ''


); # end create

REPLACE INTO err_zhos
(
SELECT h.hoscode as 'HOSPCODE'
,'PROVIDER' as 'FILE' 
,(SELECT COUNT(*) FROM provider t WHERE t.HOSPCODE = h.hoscode) as 'TOTAL'
,(SELECT COUNT(*) FROM err_provider t WHERE t.HOSPCODE = h.hoscode) as 'ERR'
,CURDATE() as 'DUPDATE'
FROM chospital_amp h
);



UPDATE sys_files SET 
qc = 100-ROUND((SELECT count(*) from err_provider)*100/(SELECT count(*) from provider),2)
,note1 = 'y' , note2 = CURDATE() WHERE file_name = 'provider';
UPDATE sys_files set qc = 0.00 WHERE qc is NULL;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_provider_b
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_provider_b`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_provider_b`(IN `BYEAR` varchar(4))
BEGIN
	SET @byear = byear;
	SET @date1 = (SELECT c.DATE1 FROM cbyear c WHERE c.BYEAR = @byear);
	SET @date2 = (SELECT c.DATE2 FROM cbyear c WHERE c.BYEAR = @byear) ;

REPLACE INTO err_zall (

	SELECT  h.hoscode as 'HOSPCODE',UPPER('provider') as 'FILE',@byear as 'BYEAR'
		,COUNT(t.HOSPCODE) as 'TOTAL'
		,(SELECT COUNT(*) FROM err_provider e WHERE e.HOSPCODE = h.hoscode AND e.BYEAR = @byear) as 'ERR'
		,(SELECT COUNT(*) FROM err_provider e WHERE e.HOSPCODE = h.hoscode AND e.ERR_DATE = 'Y') as 'ERR_DATE'
		,CURDATE() as 'DUPDATE'
	FROM chospital_amp h

	LEFT JOIN provider t on t.HOSPCODE = h.hoscode 
	GROUP BY h.hoscode 
); # end insert

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_rehabilitation
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_rehabilitation`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_rehabilitation`()
BEGIN


UPDATE sys_check_process t set t.fnc_name = 'err_rehabilitation' , t.time = NOW();
DELETE FROM rehabilitation WHERE HOSPCODE NOT IN (SELECT hoscode from chospital_amp);
DROP TABLE IF EXISTS err_rehabilitation;
CREATE TABLE  err_rehabilitation AS
(

SELECT * FROM
(SELECT SQL_BIG_RESULT
	'REHABILITATION' as FILE

,if(t.DATE_SERV is NULL or t.DATE_SERV < (CURDATE()-INTERVAL 50 YEAR) or  t.DATE_SERV > CURDATE(),'Y','') as 'ERR_DATE'
	,(SELECT y.BYEAR FROM cbyear y WHERE t.DATE_SERV BETWEEN y.DATE1 AND y.DATE2) as 'BYEAR'

,CONCAT(
	if(LENGTH(trim(t.HOSPCODE)) <> 5 ,'RT1101,','')
	,if(LENGTH(trim(t.PID)) = 0 or t.PID is NULL,'RT1103,','')

	,if(t.DATE_SERV is NULL or t.DATE_SERV < (CURDATE()-INTERVAL 50 YEAR) or  t.DATE_SERV > CURDATE(),'RT1104,','')	
	,if(LENGTH(trim(t.REHABCODE))=0 OR t.REHABCODE is NULL,'RT1105,','')
	,if(p.HOSPCODE IS NUll or p.PID is NULL,'RT9200,','')
	,if(hos.hoscode is NULL,'RT9201,','')
  ,if(LENGTH(trim(t.REHABCODE))=0 OR t.REHABCODE is NULL,'RT9206,','')
	
) as ERR_CODE
	,t.HOSPCODE	,t.PID,t.DATE_SERV,t.REHABCODE,date(t.D_UPDATE) as 'DUPDATE'



FROM rehabilitation t 
		LEFT JOIN person p on t.HOSPCODE = p.HOSPCODE AND t.PID = p.PID
		LEFT JOIN chospital_amp hos ON hos.hoscode = t.HOSPCODE

		#WHERE (t.DATE_SERV BETWEEN @start_date AND @end_date)
		
) d 

WHERE d.ERR_CODE <> ''

); # end create

REPLACE INTO err_zhos
(
SELECT h.hoscode as 'HOSPCODE'
,'REHABILITATION' as 'FILE' 
,(SELECT COUNT(*) FROM rehabilitation t WHERE t.HOSPCODE = h.hoscode) as 'TOTAL'
,(SELECT COUNT(*) FROM err_rehabilitation t WHERE t.HOSPCODE = h.hoscode) as 'ERR'
,CURDATE() as 'DUPDATE'
FROM chospital_amp h
);



UPDATE sys_files SET 
qc = 100-ROUND((SELECT count(*) from err_rehabilitation)*100/(SELECT count(*) from rehabilitation),2)
,note1 = 'y' , note2 = CURDATE() WHERE file_name = 'rehabilitation';
UPDATE sys_files set qc = 0.00 WHERE qc is NULL;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_rehabilitation_b
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_rehabilitation_b`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_rehabilitation_b`(IN `BYEAR` varchar(4))
BEGIN
	SET @byear = byear;
	SET @date1 = (SELECT c.DATE1 FROM cbyear c WHERE c.BYEAR = @byear);
	SET @date2 = (SELECT c.DATE2 FROM cbyear c WHERE c.BYEAR = @byear) ;

REPLACE INTO err_zall (

	SELECT  h.hoscode as 'HOSPCODE',UPPER('rehabilitation') as 'FILE',@byear as 'BYEAR'
		,COUNT(t.HOSPCODE) as 'TOTAL'
		,(SELECT COUNT(*) FROM err_rehabilitation e WHERE e.HOSPCODE = h.hoscode AND e.BYEAR = @byear) as 'ERR'
		,(SELECT COUNT(*) FROM err_rehabilitation e WHERE e.HOSPCODE = h.hoscode AND e.ERR_DATE = 'Y') as 'ERR_DATE'
		,CURDATE() as 'DUPDATE'
	FROM chospital_amp h

	LEFT JOIN rehabilitation t on t.HOSPCODE = h.hoscode AND  (t.DATE_SERV BETWEEN @date1 	AND @date2)
	GROUP BY h.hoscode 
); # end insert

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_service
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_service`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_service`()
BEGIN

SET @start_date='2015-10-01',@end_date = CURDATE();

UPDATE sys_check_process t set t.fnc_name = 'err_service' , t.time = NOW();
DELETE FROM service WHERE HOSPCODE NOT IN (SELECT hoscode from chospital_amp);
DROP TABLE IF EXISTS err_service;
CREATE TABLE  err_service AS
(
SELECT * FROM
(SELECT SQL_BIG_RESULT
	'SERVICE' as FILE

,if(t.DATE_SERV is NULL or t.DATE_SERV < (CURDATE()-INTERVAL 50 YEAR) or  t.DATE_SERV > CURDATE(),'Y','') as 'ERR_DATE'
	,(SELECT y.BYEAR FROM cbyear y WHERE t.DATE_SERV BETWEEN y.DATE1 AND y.DATE2) as 'BYEAR'

,CONCAT(
	if(LENGTH(trim(t.HOSPCODE)) <> 5 ,'SE1101,','')
	,if(LENGTH(trim(t.PID)) = 0 or t.PID is NULL,'SE1103,','')
	,if(t.SEQ is NULL or TRIM(t.SEQ)='','SE1104,','')
	,if(t.DATE_SERV is NULL  or t.DATE_SERV < (CURDATE()-INTERVAL 50 YEAR) or  t.DATE_SERV > CURDATE(),'SE1105,','')

	,if(t.INSTYPE is NULL or TRIM(t.INSTYPE)='','SE1108,','')
	,if(t.TYPEIN not in (1,2,3,4),'SE1109,','')
	,if(t.SERVPLACE not in (1,2),'SE1110,','')
	,if(t.TYPEOUT not in (1,2,3,4,5,6,7,8),'SE1111,','')
	,if(t.PRICE is NULL or TRIM(t.PRICE)='','SE1120,','')
	,if(t.PAYPRICE is NULL or TRIM(t.PAYPRICE)='','SE1123,','')
	,if(t.ACTUALPAY is NULL or TRIM(t.ACTUALPAY)='','SE1124,','')
	,if(p.HOSPCODE IS NUll or p.PID is NULL,'SE9200,','')
	,if(hos.hoscode is NULL,'SE9201,','')

	,if(CONCAT(t.HOSPCODE,t.PID,t.SEQ) <> CONCAT(t2.HOSPCODE,t2.PID,t2.SEQ),'SE9299,','') 
) as ERR_CODE
	,t.HOSPCODE,t.PID,t.SEQ,t.DATE_SERV,t.INSTYPE,t.TYPEIN,t.SERVPLACE,t.TYPEOUT,t.PRICE,t.PAYPRICE,t.ACTUALPAY,date(t.D_UPDATE) as 'DUPDATE'



FROM service t 
	LEFT JOIN service t2  
	on t.HOSPCODE = t2.HOSPCODE 
	AND t.PID = t2.PID 
	AND t.SEQ = t2.SEQ
	LEFT JOIN person p on t.HOSPCODE = p.HOSPCODE AND t.PID = p.PID
	LEFT JOIN chospital_amp hos ON hos.hoscode = t.HOSPCODE
	#WHERE t.DATE_SERV BETWEEN @start_date AND @end_date

	
) d 

WHERE d.ERR_CODE <> ''

); # end create

REPLACE INTO err_zhos
(
SELECT h.hoscode as 'HOSPCODE'
,'SERVICE' as 'FILE' 
,(SELECT COUNT(*) FROM service t WHERE t.HOSPCODE = h.hoscode) as 'TOTAL'
,(SELECT COUNT(*) FROM err_service t WHERE t.HOSPCODE = h.hoscode) as 'ERR'
,CURDATE() as 'DUPDATE'
FROM chospital_amp h
);



UPDATE sys_files SET 
qc = 100-ROUND((SELECT count(*) from err_service)*100/(SELECT count(*) from service),2)
,note1 = 'y' , note2 = CURDATE() WHERE file_name = 'service';
UPDATE sys_files set qc = 0.00 WHERE qc is NULL;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_service_b
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_service_b`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_service_b`(IN `BYEAR` varchar(4))
BEGIN
	SET @byear = byear;
	SET @date1 = (SELECT c.DATE1 FROM cbyear c WHERE c.BYEAR = @byear);
	SET @date2 = (SELECT c.DATE2 FROM cbyear c WHERE c.BYEAR = @byear) ;

REPLACE INTO err_zall (

	SELECT  h.hoscode as 'HOSPCODE',UPPER('service') as 'FILE',@byear as 'BYEAR'
		,COUNT(t.HOSPCODE) as 'TOTAL'
		,(SELECT COUNT(*) FROM err_service e WHERE e.HOSPCODE = h.hoscode AND e.BYEAR = @byear) as 'ERR'
		,(SELECT COUNT(*) FROM err_service e WHERE e.HOSPCODE = h.hoscode AND e.ERR_DATE = 'Y') as 'ERR_DATE'
		,CURDATE() as 'DUPDATE'
	FROM chospital_amp h

	LEFT JOIN service t on t.HOSPCODE = h.hoscode AND  (t.DATE_SERV BETWEEN @date1 	AND @date2)
	GROUP BY h.hoscode 
); # end insert

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_specialpp
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_specialpp`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_specialpp`()
BEGIN

SET @start_date='2015-10-01',@end_date = CURDATE();

UPDATE sys_check_process t set t.fnc_name = 'err_specialpp' , t.time = NOW();
DELETE FROM specialpp WHERE HOSPCODE NOT IN (SELECT hoscode from chospital_amp);
DROP TABLE IF EXISTS err_specialpp;
CREATE TABLE  err_specialpp AS
(

SELECT * FROM
(SELECT SQL_BIG_RESULT
	'SPECIALPP' as FILE

,if(t.DATE_SERV is NULL or t.DATE_SERV < (CURDATE()-INTERVAL 50 YEAR) or  t.DATE_SERV > CURDATE(),'Y','') as 'ERR_DATE'
	,(SELECT y.BYEAR FROM cbyear y WHERE t.DATE_SERV BETWEEN y.DATE1 AND y.DATE2) as 'BYEAR'

,CONCAT(
	if(LENGTH(trim(t.HOSPCODE)) <> 5 ,'SP1101,','')
	,if(LENGTH(trim(t.PID)) = 0 or t.PID is NULL,'SP1103,','')
	,if(t.DATE_SERV is NULL or t.DATE_SERV < (CURDATE()-INTERVAL 50 YEAR) or  t.DATE_SERV > CURDATE(),'SP1105,','')
	,if(t.PPSPECIAL is NULL or trim(t.PPSPECIAL)='' ,'SP1106,','')
	,if(p.HOSPCODE IS NUll or p.PID is NULL,'SP9200,','')
	,if(hos.hoscode is NULL,'SP9201,','')

	,if(t.DATE_SERV > '2015-09-30',if(c.itmcode is NULL,'SP9241,',''),'')
	
) as ERR_CODE
	,t.HOSPCODE 	,t.PID ,t.DATE_SERV,t.PPSPECIAL,t.PPSPLACE,date(t.D_UPDATE) as 'DUPDATE'



FROM specialpp t 
		LEFT JOIN person p on t.HOSPCODE = p.HOSPCODE AND t.PID = p.PID
		LEFT JOIN chospital_amp hos ON hos.hoscode = t.HOSPCODE
		LEFT JOIN cppspecial c ON c.itmcode = t.PPSPECIAL


		
) d 

WHERE d.ERR_CODE <> ''

); # end create

REPLACE INTO err_zhos
(
SELECT h.hoscode as 'HOSPCODE'
,'SPECIALPP' as 'FILE' 
,(SELECT COUNT(*) FROM specialpp t WHERE t.HOSPCODE = h.hoscode) as 'TOTAL'
,(SELECT COUNT(*) FROM err_specialpp t WHERE t.HOSPCODE = h.hoscode) as 'ERR'
,CURDATE() as 'DUPDATE'
FROM chospital_amp h
);



UPDATE sys_files SET 
qc = 100-ROUND((SELECT count(*) from err_specialpp)*100/(SELECT count(*) from specialpp),2)
,note1 = 'y' , note2 = CURDATE() WHERE file_name = 'specialpp';
UPDATE sys_files set qc = 0.00 WHERE qc is NULL;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_specialpp_b
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_specialpp_b`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_specialpp_b`(IN `BYEAR` varchar(4))
BEGIN
	SET @byear = byear;
	SET @date1 = (SELECT c.DATE1 FROM cbyear c WHERE c.BYEAR = @byear);
	SET @date2 = (SELECT c.DATE2 FROM cbyear c WHERE c.BYEAR = @byear) ;

REPLACE INTO err_zall (

	SELECT  h.hoscode as 'HOSPCODE',UPPER('specialpp') as 'FILE',@byear as 'BYEAR'
		,COUNT(t.HOSPCODE) as 'TOTAL'
		,(SELECT COUNT(*) FROM err_specialpp e WHERE e.HOSPCODE = h.hoscode AND e.BYEAR = @byear) as 'ERR'
		,(SELECT COUNT(*) FROM err_specialpp e WHERE e.HOSPCODE = h.hoscode AND e.ERR_DATE = 'Y') as 'ERR_DATE'
		,CURDATE() as 'DUPDATE'
	FROM chospital_amp h

	LEFT JOIN specialpp t on t.HOSPCODE = h.hoscode AND  (t.DATE_SERV BETWEEN @date1 	AND @date2)
	GROUP BY h.hoscode 
); # end insert

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_village
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_village`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_village`()
BEGIN
UPDATE sys_check_process t set t.fnc_name = 'err_village' , t.time = NOW();
DELETE FROM village WHERE HOSPCODE NOT IN (SELECT hoscode from chospital_amp);
DROP TABLE IF EXISTS err_village;
CREATE TABLE  err_village AS (
SELECT * FROM
(SELECT SQL_BIG_RESULT
	'VILLAGE' as FILE

,'' as 'ERR_DATE'
	,'' as 'BYEAR'

,CONCAT(
	if(LENGTH(trim(t.HOSPCODE)) <> 5 ,'VL1101,','')
	,if(LENGTH(trim(t.VID)) <> 8 ,'VL1103,','')
	,if(t.HOSPCODE not in (SELECT h.hoscode  from chospital_amp h),'VL9201,','')
	,if(CONCAT(t.HOSPCODE,t.VID) <> CONCAT(t2.HOSPCODE,t2.VID),'VL9299','') 
) as ERR_CODE
	,t.HOSPCODE	,t.VID,date(t.D_UPDATE) as 'DUPDATE'

	 
FROM village t 
		LEFT JOIN village t2  on t.HOSPCODE = t2.HOSPCODE AND t.VID = t2.VID
) d 

WHERE d.ERR_CODE <> ''

); # end create

REPLACE INTO err_zhos
(
SELECT h.hoscode as 'HOSPCODE'
,'VILLAGE' as 'FILE' 
,(SELECT COUNT(*) FROM village t WHERE t.HOSPCODE = h.hoscode) as 'TOTAL'
,(SELECT COUNT(*) FROM err_village t WHERE t.HOSPCODE = h.hoscode) as 'ERR'
,CURDATE() as 'DUPDATE'
FROM chospital_amp h
);



UPDATE sys_files SET qc = 100-ROUND((SELECT count(*) from err_village)*100/(SELECT count(*) from village),2)
,note1 = 'y' , note2 = CURDATE() WHERE file_name = 'village';
UPDATE sys_files set qc = 0.00 WHERE qc is NULL;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for err_village_b
-- ----------------------------
DROP PROCEDURE IF EXISTS `err_village_b`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `err_village_b`(IN `BYEAR` varchar(4))
BEGIN
	SET @byear = byear;
	SET @date1 = (SELECT c.DATE1 FROM cbyear c WHERE c.BYEAR = @byear);
	SET @date2 = (SELECT c.DATE2 FROM cbyear c WHERE c.BYEAR = @byear) ;

REPLACE INTO err_zall (

	SELECT  h.hoscode as 'HOSPCODE',UPPER('village') as 'FILE',@byear as 'BYEAR'
		,COUNT(t.HOSPCODE) as 'TOTAL'
		,(SELECT COUNT(*) FROM err_village e WHERE e.HOSPCODE = h.hoscode AND e.BYEAR = @byear) as 'ERR'
		,(SELECT COUNT(*) FROM err_village e WHERE e.HOSPCODE = h.hoscode AND e.ERR_DATE = 'Y') as 'ERR_DATE'
		,CURDATE() as 'DUPDATE'
	FROM chospital_amp h

	LEFT JOIN village t on t.HOSPCODE = h.hoscode 
	GROUP BY h.hoscode 
); # end insert

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for list_sp
-- ----------------------------
DROP PROCEDURE IF EXISTS `list_sp`;
DELIMITER ;;
CREATE DEFINER=`hos`@`%` PROCEDURE `list_sp`()
BEGIN

TRUNCATE sys_store_proc_err;
REPLACE INTO sys_store_proc_err (
	select '',name,'',CURDATE(),'','',''  from mysql.proc WHERE name like 'err_%' AND name  not like '%_b' AND name <> 'err_all'
);

TRUNCATE sys_store_proc_err_b;
REPLACE INTO sys_store_proc_err_b (
	select '',name,'',CURDATE(),'','',''  from mysql.proc WHERE name like '%_b' AND name <> 'err_all_b'
);

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for merge_newborncare
-- ----------------------------
DROP PROCEDURE IF EXISTS `merge_newborncare`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `merge_newborncare`()
BEGIN
	UPDATE sys_check_process t set t.fnc_name = 'merge_newborncare' , t.time = NOW();

	REPLACE INTO newborncare SELECT * FROM newborn_care;
	TRUNCATE newborn_care;

UPDATE sys_check_process t set t.fnc_name = 'end_merge_newborncare' , t.time = NOW();

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for start_process
-- ----------------------------
DROP PROCEDURE IF EXISTS `start_process`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `start_process`()
BEGIN
		UPDATE sys_check_process t set t.fnc_name = 'start_process' , t.time = NOW();
	
	UPDATE sys_process_running s set s.is_running = 'true';
	INSERT INTO sys_event_log (id,start_at,end_at) VALUES (null,DATE_FORMAT(NOW(), '%Y%m%d%H%i%s'),'wait');

UPDATE sys_check_process t set t.fnc_name = 'end_start_process' , t.time = NOW();

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for tmp_store_proc
-- ----------------------------
DROP PROCEDURE IF EXISTS `tmp_store_proc`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `tmp_store_proc`()
BEGIN 
SET @date1 = '20090401';
SET @date2 = '20100331';

SELECT  h.hoscode,h.hosname
,ROUND(SUM(if(t.dtp5='y',1,0))*100/COUNT(t.PID),2) as 'ผลงานร้อยละ'
,COUNT(t.PID) as 'เป้าหมาย(คน)'
,SUM(if(t.dtp5='y',1,0)) as 'ได้รับ DTP5' 
,SUM(if(t.dtp5='n',1,0)) as 'ไม่ได้รับ'


FROM chospital_amp h 

LEFT JOIN (
# indiv query 	

		SELECT p.HOSPCODE,p.PID,p.`NAME`,p.LNAME
			,home.HOUSE as addr,home.VILLAGE as moo
			,p.BIRTH,TIMESTAMPDIFF(YEAR,p.BIRTH,CURDATE()) as now_age_y
			,TIMESTAMPDIFF(MONTH,p.BIRTH,CURDATE())%12 as now_age_m
			,e.VACCINETYPE,e.DATE_SERV
			,TIMESTAMPDIFF(YEAR,p.BIRTH,e.DATE_SERV) as age_y_dtp5
			,TIMESTAMPDIFF(MONTH,p.BIRTH,e.DATE_SERV)%12 as age_m_dtp5
			,IF(NOT ISNULL(e.DATE_SERV),'y','n') AS 'dtp5'

			FROM person p 
			
			LEFT JOIN epi e 	ON (e.PID = p.PID and p.HOSPCODE = e.HOSPCODE )AND e.VACCINETYPE = 035	
			LEFT JOIN home on home.HOSPCODE = p.HOSPCODE and home.HID = p.HID
			      

		WHERE TRUE
			AND p.typearea in (1,3,5) and p.nation =099 and p.DISCHARGE = 9			
			AND p.BIRTH BETWEEN @date1 and @date2

			
#end indiv
) t  on t.HOSPCODE = h.hoscode

GROUP BY h.hoscode;
 END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for zzz_update_definer
-- ----------------------------
DROP PROCEDURE IF EXISTS `zzz_update_definer`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `zzz_update_definer`()
BEGIN
	
	UPDATE mysql.proc p set p.`definer` = 'root@localhost' WHERE p.db = 'dhdc';
	

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for zz_sys_process_running_false
-- ----------------------------
DROP PROCEDURE IF EXISTS `zz_sys_process_running_false`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `zz_sys_process_running_false`()
BEGIN
	
	UPDATE sys_process_running set is_running = 'false';

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for z_all
-- ----------------------------
DROP PROCEDURE IF EXISTS `z_all`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `z_all`()
BEGIN
	call start_process;

	CALL z_anc_cid;
	CALL z_chronic_cid;
	CALL z_chronicfu_cid;
	CALL z_epi_cid;
	CALL z_fp_cid;
	CALL z_labfu_cid;
	CALL z_labor_cid;
	CALL z_ncdscreen_cid;
	CALL z_newborn_cid;
	CALL z_newborncare_cid;
	CALL z_nutrition_cid;
	CALL z_postnatal_cid;
 
	call end_process;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for z_anc_cid
-- ----------------------------
DROP PROCEDURE IF EXISTS `z_anc_cid`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `z_anc_cid`()
BEGIN
UPDATE sys_check_process t set t.fnc_name = 'z_anc_cid' , t.time = NOW();

DROP TABLE IF EXISTS anc_cid;
CREATE TABLE anc_cid  AS (

	SELECT p.CID
	,s.CHIEFCOMP as CC
	,t.*
	,DATE(t.D_UPDATE) as DUPDATE
	FROM anc t 
	LEFT JOIN person p ON p.HOSPCODE = t.HOSPCODE AND p.PID = t.PID
	LEFT JOIN service s on s.HOSPCODE = t.HOSPCODE AND s.PID = t.PID AND s.SEQ = t.SEQ

	WHERE  p.CID IS NOT NULL AND trim(p.PID)<>''


);

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for z_chronicfu_cid
-- ----------------------------
DROP PROCEDURE IF EXISTS `z_chronicfu_cid`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `z_chronicfu_cid`()
BEGIN
UPDATE sys_check_process t set t.fnc_name = 'z_chronicfu_cid' , t.time = NOW();

DROP TABLE IF EXISTS chronicfu_cid;
CREATE TABLE chronicfu_cid  AS (

	SELECT p.CID
	,TIMESTAMPDIFF(YEAR,p.BIRTH,t.DATE_SERV) as 'AGEY_DATESERV'

	,t.*
	,date(t.D_UPDATE) as DUPDATE 	
	FROM chronicfu t 
	LEFT JOIN person p ON p.HOSPCODE = t.HOSPCODE AND p.PID = t.PID
	
	WHERE  p.CID IS NOT NULL AND trim(p.PID)<>''



);

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for z_chronic_cid
-- ----------------------------
DROP PROCEDURE IF EXISTS `z_chronic_cid`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `z_chronic_cid`()
BEGIN
UPDATE sys_check_process t set t.fnc_name = 'z_chronic_cid' , t.time = NOW();

DROP TABLE IF EXISTS chronic_cid;
CREATE TABLE chronic_cid  AS (

	SELECT  p.CID
	,p.`NAME`,p.LNAME,p.BIRTH,p.SEX
	,TIMESTAMPDIFF(YEAR,p.BIRTH,CURDATE()) as 'AGEY'
	,p.TYPEAREA
	,p.DISCHARGE


	,t.* 
	
	,date(t.D_UPDATE) as 'DUPDATE'

	FROM chronic t
	LEFT JOIN person p  on p.HOSPCODE = t.HOSPCODE AND p.PID = t.PID

	WHERE p.CID IS NOT NULL AND trim(p.PID)<>''


);

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for z_epi_cid
-- ----------------------------
DROP PROCEDURE IF EXISTS `z_epi_cid`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `z_epi_cid`()
BEGIN
UPDATE sys_check_process t set t.fnc_name = 'z_epi_cid' , t.time = NOW();

DROP TABLE IF EXISTS epi_cid;
CREATE TABLE epi_cid  AS (

	SELECT 	p.CID
	,t.*
	,c.engvaccine
	,TIMESTAMPDIFF(YEAR,p.BIRTH,t.DATE_SERV) as 'AGEY_DATESERV'
	,TIMESTAMPDIFF(MONTH,p.BIRTH,t.DATE_SERV) MOD 12 as 'AGEM_DATESERV'
	,(
		SELECT GROUP_CONCAT(d.DIAGCODE ORDER BY d.DIAGTYPE SEPARATOR ',')  
		FROM diagnosis_opd d WHERE d.HOSPCODE = t.HOSPCODE AND d.PID = t.PID AND d.SEQ = t.SEQ
		GROUP BY d.SEQ
	) as DX
	,DATE(t.D_UPDATE) as 'DUPDATE'

	FROM epi t 
	LEFT JOIN person p ON p.HOSPCODE = t.HOSPCODE AND p.PID = t.PID
	LEFT JOIN cvaccinetype c on c.vaccinecode = t.VACCINETYPE

		WHERE  p.CID IS NOT NULL AND trim(p.PID)<>''


);

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for z_fp_cid
-- ----------------------------
DROP PROCEDURE IF EXISTS `z_fp_cid`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `z_fp_cid`()
BEGIN
UPDATE sys_check_process t set t.fnc_name = 'z_fp_cid' , t.time = NOW();

DROP TABLE IF EXISTS fp_cid;
CREATE TABLE fp_cid  AS (

SELECT p.CID
,TIMESTAMPDIFF(YEAR,p.BIRTH,t.DATE_SERV) 'AGEY_DATESERV'
,CONCAT(c.id_fptype,'-',c.fptype) AS 'FP_TYPE'
,t.*
,date(t.D_UPDATE) as 'DUPDATE'

FROM fp t 

LEFT JOIN person p ON p.HOSPCODE = t.HOSPCODE AND p.PID = t.PID
LEFT JOIN cfptype c ON c.id_fptype = t.fptype

	WHERE  p.CID IS NOT NULL AND trim(p.PID)<>''

ORDER BY t.DATE_SERV ASC

);

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for z_labfu_cid
-- ----------------------------
DROP PROCEDURE IF EXISTS `z_labfu_cid`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `z_labfu_cid`()
BEGIN
UPDATE sys_check_process t set t.fnc_name = 'z_labfu_cid' , t.time = NOW();

DROP TABLE IF EXISTS labfu_cid;
CREATE TABLE labfu_cid  AS (

	SELECT p.CID
	,TIMESTAMPDIFF(YEAR,p.BIRTH,t.DATE_SERV) as 'AGEY_DATESERV'
	,t.*
	,date(t.D_UPDATE) as 'DUPDATE' 	
	FROM labfu t 
	LEFT JOIN person p ON p.HOSPCODE = t.HOSPCODE AND p.PID = t.PID

		WHERE  p.CID IS NOT NULL AND trim(p.PID)<>''

);

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for z_labor_cid
-- ----------------------------
DROP PROCEDURE IF EXISTS `z_labor_cid`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `z_labor_cid`()
BEGIN
UPDATE sys_check_process t set t.fnc_name = 'z_labor_cid' , t.time = NOW();

DROP TABLE IF EXISTS labor_cid;
CREATE TABLE labor_cid  AS (
	
SELECT p.CID,p.`NAME`,p.LNAME,p.SEX,p.BIRTH,TIMESTAMPDIFF(YEAR,p.BIRTH,CURDATE()) as AGEY
	,TIMESTAMPDIFF(YEAR,p.BIRTH,t.LMP) as AGEY_PREG
	,p.TYPEAREA,p.NATION,p.DISCHARGE ,h.HOUSE ,h.VILLAGE,h.TAMBON,h.AMPUR,h.CHANGWAT
	,t.* 
	,DATE(t.D_UPDATE) as 'DUPDATE'
	FROM labor t
	LEFT JOIN person p  ON  p.HOSPCODE = t.HOSPCODE AND p.PID = t.PID
	LEFT JOIN home h on h.HOSPCODE = p.HOSPCODE AND h.HID = p.HID

		WHERE  p.CID IS NOT NULL AND trim(p.PID)<>''

);

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for z_ncdscreen_cid
-- ----------------------------
DROP PROCEDURE IF EXISTS `z_ncdscreen_cid`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `z_ncdscreen_cid`()
BEGIN
UPDATE sys_check_process t set t.fnc_name = 'z_ncdscreen_cid' , t.time = NOW();

DROP TABLE IF EXISTS ncdscreen_cid;
CREATE TABLE ncdscreen_cid  AS (


	SELECT  p.CID
	,TIMESTAMPDIFF(YEAR,p.BIRTH,t.DATE_SERV) as 'AGEY_DATESERV'
	,t.* 
	,DATE(t.D_UPDATE) as 'DUPDATE'
	FROM ncdscreen t
	LEFT JOIN person p  on p.HOSPCODE = t.HOSPCODE AND p.PID = t.PID

		WHERE  p.CID IS NOT NULL AND trim(p.PID)<>''


);

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for z_newborncare_cid
-- ----------------------------
DROP PROCEDURE IF EXISTS `z_newborncare_cid`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `z_newborncare_cid`()
BEGIN
UPDATE sys_check_process t set t.fnc_name = 'z_newborncare_cid' , t.time = NOW();

DROP TABLE IF EXISTS newborncare_cid;
CREATE TABLE newborncare_cid  AS (

	SELECT p.CID
	,TIMESTAMPDIFF(DAY,t.BDATE,t.BCARE) as 'DAY_POSTNATAL'

	,t.*
	,date(t.D_UPDATE) as 'DUPDATE'	
	FROM newborncare t 
	LEFT JOIN person p ON p.HOSPCODE = t.HOSPCODE AND p.PID = t.PID

		WHERE  p.CID IS NOT NULL AND trim(p.PID)<>''

);

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for z_newborn_cid
-- ----------------------------
DROP PROCEDURE IF EXISTS `z_newborn_cid`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `z_newborn_cid`()
BEGIN
UPDATE sys_check_process t set t.fnc_name = 'z_newborn_cid' , t.time = NOW();

DROP TABLE IF EXISTS newborn_cid;
CREATE TABLE newborn_cid  AS (
	
SELECT p.CID,p.`NAME`,p.LNAME,p.SEX,p.BIRTH,TIMESTAMPDIFF(MONTH,p.BIRTH,CURDATE()) as 'AGEM'
	,p.TYPEAREA,p.NATION,p.DISCHARGE ,h.HOUSE ,h.VILLAGE,h.TAMBON,h.AMPUR,h.CHANGWAT
	,t.* 
	,DATE(t.D_UPDATE) as 'DUPDATE'
	FROM newborn t
	LEFT JOIN person p  ON  p.HOSPCODE = t.HOSPCODE AND p.PID = t.PID
	LEFT JOIN home h on h.HOSPCODE = p.HOSPCODE AND h.HID = p.HID
	
		WHERE  p.CID IS NOT NULL AND trim(p.PID)<>''

);

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for z_nutrition_cid
-- ----------------------------
DROP PROCEDURE IF EXISTS `z_nutrition_cid`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `z_nutrition_cid`()
BEGIN
UPDATE sys_check_process t set t.fnc_name = 'z_nutrition_cid' , t.time = NOW();

DROP TABLE IF EXISTS nutrition_cid;
CREATE TABLE nutrition_cid  AS (

	SELECT p.CID
	,TIMESTAMPDIFF(YEAR,p.BIRTH,t.DATE_SERV) as 'AGEY_DATESERV'
	,TIMESTAMPDIFF(MONTH,p.BIRTH,t.DATE_SERV) MOD 12 as 'AGEM_DATESERV'
	,t.*
	,DATE(t.D_UPDATE) as 'DUPDATE'
	FROM nutrition t 
	LEFT JOIN person p ON p.HOSPCODE = t.HOSPCODE AND p.PID = t.PID


	WHERE  p.CID IS NOT NULL AND trim(p.PID)<>''


);

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for z_postnatal_cid
-- ----------------------------
DROP PROCEDURE IF EXISTS `z_postnatal_cid`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `z_postnatal_cid`()
BEGIN
UPDATE sys_check_process t set t.fnc_name = 'z_postnatal_cid' , t.time = NOW();

DROP TABLE IF EXISTS postnatal_cid;
CREATE TABLE postnatal_cid  AS (

	SELECT p.CID
	,TIMESTAMPDIFF(DAY,t.BDATE,t.PPCARE) as 'DAY_POSTNATAL'

	,t.*
	,date(t.D_UPDATE) as 'DUPDATE'	
	FROM postnatal t 
	LEFT JOIN person p ON p.HOSPCODE = t.HOSPCODE AND p.PID = t.PID

		WHERE  p.CID IS NOT NULL AND trim(p.PID)<>''

);

END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for mod11
-- ----------------------------
DROP FUNCTION IF EXISTS `mod11`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `mod11`(v1 varchar(13)) RETURNS int(1)
    DETERMINISTIC
BEGIN
		## use call mod11('cid');
			 DECLARE chkrs int(1) DEFAULT 0;
				 DECLARE vc1 int(1) DEFAULT 0;
				 DECLARE vc2 int(1) DEFAULT 0;
				 DECLARE vc3 int(1) DEFAULT 0;
				 DECLARE vc4 int(1) DEFAULT 0;
				 DECLARE vc5 int(1) DEFAULT 0;
				 DECLARE vc6 int(1) DEFAULT 0;
				 DECLARE vc7 int(1) DEFAULT 0;
				 DECLARE vc8 int(1) DEFAULT 0;
				 DECLARE vc9 int(1) DEFAULT 0;
				 DECLARE vc10 int(1) DEFAULT 0;
				 DECLARE vc11 int(1) DEFAULT 0;
				 DECLARE vc12 int(1) DEFAULT 0;
				 DECLARE vc13 int(1) DEFAULT 0;
				 DECLARE vm int(1) DEFAULT 0;
				 DECLARE vt int(1) DEFAULT 0;

			IF substr(v1,1,1) NOT REGEXP '^[0-9]' OR substr(v1,2,1) NOT REGEXP '^[0-9]' OR substr(v1,3,1) NOT REGEXP '^[0-9]'  OR substr(v1,4,1) NOT REGEXP '^[0-9]'  OR substr(v1,5,1) NOT REGEXP '^[0-9]'  OR substr(v1,6,1) NOT REGEXP '^[0-9]'  OR substr(v1,7,1) NOT REGEXP '^[0-9]'  OR substr(v1,8,1) NOT REGEXP '^[0-9]'  OR substr(v1,9,1) NOT REGEXP '^[0-9]'  OR substr(v1,10,1) NOT REGEXP '^[0-9]'  OR substr(v1,11,1) NOT REGEXP '^[0-9]'  OR substr(v1,12,1) NOT REGEXP '^[0-9]'  OR substr(v1,13,1) NOT REGEXP '^[0-9]'  THEN	
					SET chkrs=9;	
			ELSE
	

					SET vc1=13*substr(v1,1,1);
					SET vc2=12*substr(v1,2,1);
					SET vc3=11*substr(v1,3,1);
					SET vc4=10*substr(v1,4,1);
					SET vc5=9*substr(v1,5,1);
					SET vc6=8*substr(v1,6,1);
					SET vc7=7*substr(v1,7,1);
					SET vc8=6*substr(v1,8,1);
					SET vc9=5*substr(v1,9,1);
					SET vc10=4*substr(v1,10,1);
					SET vc11=3*substr(v1,11,1);
					SET vc12=2*substr(v1,12,1);
					SET vc13=substr(v1,13,1);

						SET vt=vc1+vc2+vc3+vc4+vc5+vc6+vc7+vc8+vc9+vc10+vc11+vc12;
						set vt=mod(vt,11);
						IF vt<=1 THEN 
								SET vm=1-vt;
						ELSE 
								SET vm=11-vt;
						END IF;				
						IF vm=vc13 THEN	
								SET chkrs=1;
						ELSE 
								SET chkrs=0;
						END IF;

						IF vc1='0' AND vc2='0'  THEN  
								SET chkrs=0;				
						END IF;

						IF length(trim(v1))<>13  THEN 
								SET chkrs=0;				
						END IF;

		END IF;
			RETURN chkrs;
		END
;;
DELIMITER ;

-- ----------------------------
-- Event structure for event1
-- ----------------------------
DROP EVENT IF EXISTS `event1`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `event1` ON SCHEDULE EVERY 1 DAY STARTS '2016-02-16 03:00:00' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN

call start_process();
call clear_import_not_success();
call clear_null_hospcode();
call clear_upload_error();
call merge_newborncare();
call cal_pyramid_level_1('2015-02-24');
call cal_pyramid_level_2();
call cal_pyramid_level_3();
call cal_sys_person_type();
call cal_count_service(2015);
call cal_count_service(2016);
call end_process();
call err_all();

END
;;
DELIMITER ;
