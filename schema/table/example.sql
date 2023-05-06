-- 
-- Set character set the client will use to send SQL statements to the server
--
SET NAMES 'utf8mb4';

--
-- Set default database
--
USE pvo_v1_2023;

--
-- Drop table `example`
--
DROP TABLE IF EXISTS example;

--
-- Set default database
--
USE pvo_v1_2023;

--
-- Create table `example`
--
CREATE TABLE example (
  example_id char(36) NOT NULL,
  dictionary_id char(36) DEFAULT NULL,
  detail text DEFAULT NULL,
  detail_html text DEFAULT NULL,
  note varchar(255) DEFAULT NULL,
  tone_id char(36) DEFAULT NULL,
  register_id char(36) DEFAULT NULL,
  dialect_id char(36) DEFAULT NULL,
  mode_id char(36) DEFAULT NULL,
  nuance_id char(36) DEFAULT NULL,
  created_date datetime DEFAULT NULL,
  modified_date datetime DEFAULT NULL,
  PRIMARY KEY (example_id)
)
ENGINE = INNODB,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci,
COMMENT = 'Bảng chứa thông tin example';

--
-- Create foreign key
--
ALTER TABLE example
ADD CONSTRAINT FK_example_dictionary_id FOREIGN KEY (dictionary_id)
REFERENCES dictionary (dictionary_id) ON DELETE CASCADE;