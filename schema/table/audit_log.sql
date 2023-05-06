-- 
-- Set character set the client will use to send SQL statements to the server
--
SET NAMES 'utf8mb4';

--
-- Set default database
--
USE pvo_v1_2023;

--
-- Drop table `audit_log`
--
DROP TABLE IF EXISTS audit_log;

--
-- Set default database
--
USE pvo_v1_2023;

--
-- Create table `audit_log`
--
CREATE TABLE audit_log (
  audit_log_id int(11) NOT NULL AUTO_INCREMENT COMMENT 'id khóa chính',
  user_id char(36) DEFAULT NULL COMMENT 'id người dùng',
  screen_info varchar(255) DEFAULT NULL COMMENT 'Thông tin màn hình',
  action_type int(11) DEFAULT NULL COMMENT 'Loại hành động',
  reference varchar(255) DEFAULT NULL COMMENT 'Thông tin tham chiếu, vd: id dictionary',
  description varchar(500) DEFAULT NULL COMMENT 'Mô tả',
  user_agent varchar(255) DEFAULT NULL,
  created_date datetime DEFAULT NULL,
  PRIMARY KEY (audit_log_id)
)
ENGINE = INNODB,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci,
COMMENT = 'Bảng chứa thông tin lịch sử truy cập';

--
-- Create foreign key
--
ALTER TABLE audit_log
ADD CONSTRAINT FK_audit_log_user_id FOREIGN KEY (user_id)
REFERENCES user (user_id) ON DELETE CASCADE;