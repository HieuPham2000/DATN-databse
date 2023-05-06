-- 
-- Set character set the client will use to send SQL statements to the server
--
SET NAMES 'utf8mb4';

--
-- Set default database
--
USE pvo_v1_2023;

--
-- Drop table `dialect`
--
DROP TABLE IF EXISTS dialect;

--
-- Set default database
--
USE pvo_v1_2023;

--
-- Create table `dialect`
--
CREATE TABLE dialect (
  dialect_id char(36) NOT NULL,
  sys_dialect_id char(36) DEFAULT NULL,
  user_id char(36) DEFAULT NULL,
  dialect_name varchar(255) DEFAULT NULL,
  dialect_type int(11) DEFAULT NULL,
  sort_order int(11) DEFAULT NULL,
  created_date datetime DEFAULT NULL,
  modified_date datetime DEFAULT NULL,
  PRIMARY KEY (dialect_id)
)
ENGINE = INNODB,
AVG_ROW_LENGTH = 4096,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci,
COMMENT = 'Bảng danh sách dialect';

--
-- Create foreign key
--
ALTER TABLE dialect
ADD CONSTRAINT FK_dialect_sys_dialect_id FOREIGN KEY (sys_dialect_id)
REFERENCES sys_dialect (sys_dialect_id) ON DELETE CASCADE;

--
-- Create foreign key
--
ALTER TABLE dialect
ADD CONSTRAINT FK_dialect_user_id FOREIGN KEY (user_id)
REFERENCES user (user_id) ON DELETE CASCADE;