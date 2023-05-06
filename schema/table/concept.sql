-- 
-- Set character set the client will use to send SQL statements to the server
--
SET NAMES 'utf8mb4';

--
-- Set default database
--
USE pvo_v1_2023;

--
-- Drop table `concept`
--
DROP TABLE IF EXISTS concept;

--
-- Set default database
--
USE pvo_v1_2023;

--
-- Create table `concept`
--
CREATE TABLE concept (
  concept_id char(36) NOT NULL COMMENT 'id khóa chính',
  dictionary_id char(36) DEFAULT NULL COMMENT 'id dictionary (tham chiếu bảng dictionary)',
  title varchar(255) DEFAULT NULL COMMENT 'Tên concept',
  description varchar(500) DEFAULT NULL COMMENT 'Mô tả concept',
  created_date datetime DEFAULT NULL,
  modified_date datetime DEFAULT NULL,
  PRIMARY KEY (concept_id)
)
ENGINE = INNODB,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci,
COMMENT = 'Bảng chứa thông tin concept';

--
-- Create foreign key
--
ALTER TABLE concept
ADD CONSTRAINT FK_concept_dictionary_id FOREIGN KEY (dictionary_id)
REFERENCES dictionary (dictionary_id) ON DELETE CASCADE;