-- 
-- Set character set the client will use to send SQL statements to the server
--
SET NAMES 'utf8mb4';

--
-- Set default database
--
USE pvo_v1_2023;

--
-- Drop table `mode`
--
DROP TABLE IF EXISTS mode;

--
-- Set default database
--
USE pvo_v1_2023;

--
-- Create table `mode`
--
CREATE TABLE mode (
  mode_id char(36) NOT NULL,
  sys_mode_id char(36) DEFAULT NULL,
  user_id char(36) DEFAULT NULL,
  mode_name varchar(255) DEFAULT NULL,
  mode_type int(11) DEFAULT NULL,
  sort_order int(11) DEFAULT NULL,
  created_date datetime DEFAULT NULL,
  modified_date datetime DEFAULT NULL,
  PRIMARY KEY (mode_id)
)
ENGINE = INNODB,
AVG_ROW_LENGTH = 5461,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci,
COMMENT = 'Bảng danh sách mode';

--
-- Create foreign key
--
ALTER TABLE mode
ADD CONSTRAINT FK_mode_sys_mode_id FOREIGN KEY (sys_mode_id)
REFERENCES sys_mode (sys_mode_id) ON DELETE CASCADE;

--
-- Create foreign key
--
ALTER TABLE mode
ADD CONSTRAINT FK_mode_user_id FOREIGN KEY (user_id)
REFERENCES user (user_id) ON DELETE CASCADE;