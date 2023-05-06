-- 
-- Set character set the client will use to send SQL statements to the server
--
SET NAMES 'utf8mb4';

--
-- Set default database
--
USE pvo_v1_2023;

--
-- Drop table `sys_example_link`
--
DROP TABLE IF EXISTS sys_example_link;

--
-- Set default database
--
USE pvo_v1_2023;

--
-- Create table `sys_example_link`
--
CREATE TABLE sys_example_link (
  sys_example_link_id char(36) NOT NULL COMMENT 'id khóa chính',
  example_link_name varchar(255) DEFAULT NULL COMMENT 'Tên loại liên kết',
  example_link_type int(11) DEFAULT NULL COMMENT 'Loại liên kết',
  sort_order int(11) DEFAULT NULL COMMENT 'Thứ tự sắp xếp',
  created_date datetime DEFAULT NULL,
  modified_date datetime DEFAULT NULL,
  PRIMARY KEY (sys_example_link_id)
)
ENGINE = INNODB,
AVG_ROW_LENGTH = 1820,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci,
COMMENT = 'Bảng sys loại liên kết giữa example với concept';