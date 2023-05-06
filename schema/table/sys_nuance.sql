-- 
-- Set character set the client will use to send SQL statements to the server
--
SET NAMES 'utf8mb4';

--
-- Set default database
--
USE pvo_v1_2023;

--
-- Drop table `sys_nuance`
--
DROP TABLE IF EXISTS sys_nuance;

--
-- Set default database
--
USE pvo_v1_2023;

--
-- Create table `sys_nuance`
--
CREATE TABLE sys_nuance (
  sys_nuance_id char(36) NOT NULL COMMENT 'id khóa chính',
  nuance_name varchar(255) DEFAULT NULL COMMENT 'Tên nuance',
  nuance_type int(11) DEFAULT NULL COMMENT 'Loại nuance',
  sort_order int(11) DEFAULT NULL COMMENT 'Thứ tự sắp xếp',
  created_date datetime DEFAULT NULL,
  modified_date datetime DEFAULT NULL,
  PRIMARY KEY (sys_nuance_id)
)
ENGINE = INNODB,
AVG_ROW_LENGTH = 3276,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci,
COMMENT = 'Bảng sys loại nuance';