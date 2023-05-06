-- 
-- Set character set the client will use to send SQL statements to the server
--
SET NAMES 'utf8mb4';

--
-- Set default database
--
USE pvo_v1_2023;

--
-- Drop table `sys_register`
--
DROP TABLE IF EXISTS sys_register;

--
-- Set default database
--
USE pvo_v1_2023;

--
-- Create table `sys_register`
--
CREATE TABLE sys_register (
  sys_register_id char(36) NOT NULL COMMENT 'id khóa chính',
  register_name varchar(255) DEFAULT NULL COMMENT 'Tên register',
  register_type varchar(255) DEFAULT NULL COMMENT 'Loại register',
  sort_order int(11) DEFAULT NULL COMMENT 'Thứ tự sắp xếp',
  created_date datetime DEFAULT NULL,
  modified_date datetime DEFAULT NULL,
  PRIMARY KEY (sys_register_id)
)
ENGINE = INNODB,
AVG_ROW_LENGTH = 1820,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci,
COMMENT = 'Bảng sys loại register';