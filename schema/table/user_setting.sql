-- 
-- Set character set the client will use to send SQL statements to the server
--
SET NAMES 'utf8mb4';

--
-- Set default database
--
USE pvo_v1_2023;

--
-- Drop table `user_setting`
--
DROP TABLE IF EXISTS user_setting;

--
-- Set default database
--
USE pvo_v1_2023;

--
-- Create table `user_setting`
--
CREATE TABLE user_setting (
  user_setting_id char(36) NOT NULL COMMENT 'id khóa chính',
  user_id char(36) DEFAULT NULL COMMENT 'id người dùng',
  setting_key varchar(255) DEFAULT NULL COMMENT 'key',
  setting_value varchar(255) DEFAULT NULL COMMENT 'value',
  created_date datetime DEFAULT NULL,
  modified_date datetime DEFAULT NULL,
  PRIMARY KEY (user_setting_id)
)
ENGINE = INNODB,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci,
COMMENT = 'Bảng chứa thông tin cấu hình của người dùng';

--
-- Create foreign key
--
ALTER TABLE user_setting
ADD CONSTRAINT FK_user_setting_user_id FOREIGN KEY (user_id)
REFERENCES user (user_id) ON DELETE CASCADE;