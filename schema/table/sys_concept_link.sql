-- 
-- Set character set the client will use to send SQL statements to the server
--
SET NAMES 'utf8mb4';

--
-- Set default database
--
USE pvo_v1_2023;

--
-- Drop table `sys_concept_link`
--
DROP TABLE IF EXISTS sys_concept_link;

--
-- Set default database
--
USE pvo_v1_2023;

--
-- Create table `sys_concept_link`
--
CREATE TABLE sys_concept_link (
  sys_concept_link_id char(36) NOT NULL COMMENT 'id khóa chính',
  concept_link_name varchar(255) DEFAULT NULL COMMENT 'Tên loại liên kết',
  concept_link_type int(11) DEFAULT NULL COMMENT 'Loại liên kết',
  sort_order int(11) DEFAULT NULL COMMENT 'Thứ tự sắp xếp',
  created_date datetime DEFAULT NULL,
  modified_date datetime DEFAULT NULL,
  PRIMARY KEY (sys_concept_link_id)
)
ENGINE = INNODB,
AVG_ROW_LENGTH = 5461,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci,
COMMENT = 'Bảng sys loại liên kết giữa concept với concept';