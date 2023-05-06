-- 
-- Set character set the client will use to send SQL statements to the server
--
SET NAMES 'utf8mb4';

--
-- Set default database
--
USE pvo_v1_2023;

--
-- Drop table `sys_mode`
--
DROP TABLE IF EXISTS sys_mode;

--
-- Set default database
--
USE pvo_v1_2023;

--
-- Create table `sys_mode`
--
CREATE TABLE sys_mode (
  sys_mode_id char(36) NOT NULL COMMENT 'id khóa chính',
  mode_name varchar(255) DEFAULT NULL COMMENT 'Tên mode',
  mode_type int(11) DEFAULT NULL COMMENT 'Loại mode',
  sort_order int(11) DEFAULT NULL COMMENT 'Thứ tự sắp xếp',
  created_date datetime DEFAULT NULL,
  modified_date datetime DEFAULT NULL,
  PRIMARY KEY (sys_mode_id)
)
ENGINE = INNODB,
AVG_ROW_LENGTH = 5461,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci,
COMMENT = 'Bảng sys loại mode';