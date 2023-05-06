-- 
-- Set character set the client will use to send SQL statements to the server
--
SET NAMES 'utf8mb4';

--
-- Set default database
--
USE pvo_v1_2023;

--
-- Drop table `register`
--
DROP TABLE IF EXISTS register;

--
-- Set default database
--
USE pvo_v1_2023;

--
-- Create table `register`
--
CREATE TABLE register (
  register_id char(36) NOT NULL,
  sys_register_id char(36) DEFAULT NULL,
  user_id char(36) DEFAULT NULL,
  register_name varchar(255) DEFAULT NULL,
  register_type int(11) DEFAULT NULL,
  sort_order int(11) DEFAULT NULL,
  created_date datetime DEFAULT NULL,
  modified_date datetime DEFAULT NULL,
  PRIMARY KEY (register_id)
)
ENGINE = INNODB,
AVG_ROW_LENGTH = 1820,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci,
COMMENT = 'Bảng danh sách register';

--
-- Create foreign key
--
ALTER TABLE register
ADD CONSTRAINT FK_register_sys_register_id FOREIGN KEY (sys_register_id)
REFERENCES sys_register (sys_register_id) ON DELETE CASCADE;

--
-- Create foreign key
--
ALTER TABLE register
ADD CONSTRAINT FK_register_user_id FOREIGN KEY (user_id)
REFERENCES user (user_id) ON DELETE CASCADE;