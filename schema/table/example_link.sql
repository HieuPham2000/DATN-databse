-- 
-- Set character set the client will use to send SQL statements to the server
--
SET NAMES 'utf8mb4';

--
-- Set default database
--
USE pvo_v1_2023;

--
-- Drop table `example_link`
--
DROP TABLE IF EXISTS example_link;

--
-- Set default database
--
USE pvo_v1_2023;

--
-- Create table `example_link`
--
CREATE TABLE example_link (
  example_link_id char(36) NOT NULL COMMENT 'id khóa chính',
  sys_example_link_id char(36) DEFAULT NULL COMMENT 'sys id',
  user_id char(36) DEFAULT NULL COMMENT 'id người dùng',
  example_link_name varchar(255) DEFAULT NULL COMMENT 'tên loại liên kết',
  example_link_type int(11) DEFAULT NULL COMMENT 'loại liên kết',
  sort_order int(11) DEFAULT NULL COMMENT 'thứ tự sắp xếp',
  created_date datetime DEFAULT NULL,
  modified_date datetime DEFAULT NULL,
  PRIMARY KEY (example_link_id)
)
ENGINE = INNODB,
AVG_ROW_LENGTH = 1820,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci,
COMMENT = 'Bảng chứa thông tin loại liên kết example-content';

--
-- Create foreign key
--
ALTER TABLE example_link
ADD CONSTRAINT FK_example_link_sys_example_link_id FOREIGN KEY (sys_example_link_id)
REFERENCES sys_example_link (sys_example_link_id) ON DELETE CASCADE;

--
-- Create foreign key
--
ALTER TABLE example_link
ADD CONSTRAINT FK_example_link_user_id FOREIGN KEY (user_id)
REFERENCES user (user_id) ON DELETE CASCADE;