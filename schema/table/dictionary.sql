-- 
-- Set character set the client will use to send SQL statements to the server
--
SET NAMES 'utf8mb4';

--
-- Set default database
--
USE pvo_v1_2023;

--
-- Drop table `dictionary`
--
DROP TABLE IF EXISTS dictionary;

--
-- Set default database
--
USE pvo_v1_2023;

--
-- Create table `dictionary`
--
CREATE TABLE dictionary (
  dictionary_id char(36) NOT NULL COMMENT 'id khóa chính',
  user_id char(36) DEFAULT NULL COMMENT 'id người dùng (tham chiếu bảng user)',
  dictionary_name varchar(255) DEFAULT NULL COMMENT 'Tên dictionary',
  last_view_at datetime DEFAULT NULL COMMENT 'Thời điểm truy cập gần nhất',
  created_at datetime DEFAULT NULL,
  modified_at datetime DEFAULT NULL,
  PRIMARY KEY (dictionary_id)
)
ENGINE = INNODB,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci,
COMMENT = 'Bảng chứa thông tin dictionary';

--
-- Create foreign key
--
ALTER TABLE dictionary
ADD CONSTRAINT FK_dictionary_user_id FOREIGN KEY (user_id)
REFERENCES user (user_id) ON DELETE CASCADE;