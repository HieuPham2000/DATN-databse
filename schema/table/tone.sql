-- 
-- Set character set the client will use to send SQL statements to the server
--
SET NAMES 'utf8mb4';

--
-- Set default database
--
USE pvo_v1_2023;

--
-- Drop table `tone`
--
DROP TABLE IF EXISTS tone;

--
-- Set default database
--
USE pvo_v1_2023;

--
-- Create table `tone`
--
CREATE TABLE tone (
  tone_id char(36) NOT NULL,
  sys_tone_id char(36) DEFAULT NULL,
  user_id char(36) DEFAULT NULL,
  tone_name varchar(255) DEFAULT NULL,
  tone_type int(11) DEFAULT NULL,
  sort_order int(11) DEFAULT NULL,
  created_date datetime DEFAULT NULL,
  modified_date datetime DEFAULT NULL,
  PRIMARY KEY (tone_id)
)
ENGINE = INNODB,
AVG_ROW_LENGTH = 3276,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci,
COMMENT = 'Bảng danh sách tone';

--
-- Create foreign key
--
ALTER TABLE tone
ADD CONSTRAINT FK_tone_sys_tone_id FOREIGN KEY (sys_tone_id)
REFERENCES sys_tone (sys_tone_id) ON DELETE CASCADE;

--
-- Create foreign key
--
ALTER TABLE tone
ADD CONSTRAINT FK_tone_user_id FOREIGN KEY (user_id)
REFERENCES user (user_id) ON DELETE CASCADE;