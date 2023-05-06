-- 
-- Set character set the client will use to send SQL statements to the server
--
SET NAMES 'utf8mb4';

--
-- Set default database
--
USE pvo_v1_2023;

--
-- Drop table `sys_dialect`
--
DROP TABLE IF EXISTS sys_dialect;

--
-- Set default database
--
USE pvo_v1_2023;

--
-- Create table `sys_dialect`
--
CREATE TABLE sys_dialect (
  sys_dialect_id char(36) NOT NULL COMMENT 'id khóa chính',
  dialect_name varchar(255) DEFAULT NULL COMMENT 'Tên dialect',
  dialect_type int(11) DEFAULT NULL COMMENT 'Loại dialect',
  sort_order int(11) DEFAULT NULL COMMENT 'Thứ tự sắp xếp',
  created_date datetime DEFAULT NULL,
  modified_date datetime DEFAULT NULL,
  PRIMARY KEY (sys_dialect_id)
)
ENGINE = INNODB,
AVG_ROW_LENGTH = 4096,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci,
COMMENT = 'Bảng sys loại dialect';