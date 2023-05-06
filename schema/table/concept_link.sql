-- 
-- Set character set the client will use to send SQL statements to the server
--
SET NAMES 'utf8mb4';

--
-- Set default database
--
USE pvo_v1_2023;

--
-- Drop table `concept_link`
--
DROP TABLE IF EXISTS concept_link;

--
-- Set default database
--
USE pvo_v1_2023;

--
-- Create table `concept_link`
--
CREATE TABLE concept_link (
  concept_link_id char(36) NOT NULL COMMENT 'id khóa chính',
  sys_concept_link_id char(36) DEFAULT NULL COMMENT 'id bảng sys',
  user_id char(36) DEFAULT NULL COMMENT 'id người dùng',
  concept_link_name varchar(255) DEFAULT NULL COMMENT 'Tên loại liên kết',
  concept_link_type int(11) DEFAULT NULL COMMENT 'Loại liên kết',
  sort_order int(11) DEFAULT NULL COMMENT 'Thứ tự sắp xếp',
  created_date datetime DEFAULT NULL,
  modified_date datetime DEFAULT NULL,
  PRIMARY KEY (concept_link_id)
)
ENGINE = INNODB,
AVG_ROW_LENGTH = 5461,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci,
COMMENT = 'Bảng chứa thông tin loại liên kết concept-concept';

--
-- Create foreign key
--
ALTER TABLE concept_link
ADD CONSTRAINT FK_concept_link_sys_concept_link_id FOREIGN KEY (sys_concept_link_id)
REFERENCES sys_concept_link (sys_concept_link_id) ON DELETE CASCADE;

--
-- Create foreign key
--
ALTER TABLE concept_link
ADD CONSTRAINT FK_concept_link_user_id FOREIGN KEY (user_id)
REFERENCES user (user_id) ON DELETE CASCADE;