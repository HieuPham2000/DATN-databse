-- 
-- Set character set the client will use to send SQL statements to the server
--
SET NAMES 'utf8mb4';

--
-- Set default database
--
USE pvo_v1_2023;

--
-- Drop table `nuance`
--
DROP TABLE IF EXISTS nuance;

--
-- Set default database
--
USE pvo_v1_2023;

--
-- Create table `nuance`
--
CREATE TABLE nuance (
  nuance_id char(36) NOT NULL,
  sys_nuance_id char(36) DEFAULT NULL,
  user_id char(36) DEFAULT NULL,
  nuance_name varchar(255) DEFAULT NULL,
  nuance_type int(11) DEFAULT NULL,
  sort_order int(11) DEFAULT NULL,
  created_date datetime DEFAULT NULL,
  modified_date datetime DEFAULT NULL,
  PRIMARY KEY (nuance_id)
)
ENGINE = INNODB,
AVG_ROW_LENGTH = 3276,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci,
COMMENT = 'Bảng danh sách nuance';

--
-- Create foreign key
--
ALTER TABLE nuance
ADD CONSTRAINT FK_nuance_sys_nuance_id FOREIGN KEY (sys_nuance_id)
REFERENCES sys_nuance (sys_nuance_id) ON DELETE CASCADE;

--
-- Create foreign key
--
ALTER TABLE nuance
ADD CONSTRAINT FK_nuance_user_id FOREIGN KEY (user_id)
REFERENCES user (user_id) ON DELETE CASCADE;