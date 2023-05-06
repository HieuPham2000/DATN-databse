-- 
-- Set character set the client will use to send SQL statements to the server
--
SET NAMES 'utf8mb4';

--
-- Set default database
--
USE pvo_v1_2023;

--
-- Drop table `example_relationship`
--
DROP TABLE IF EXISTS example_relationship;

--
-- Set default database
--
USE pvo_v1_2023;

--
-- Create table `example_relationship`
--
CREATE TABLE example_relationship (
  example_relationship_id int(11) NOT NULL AUTO_INCREMENT COMMENT 'id khóa chính',
  dictionary_id char(36) DEFAULT NULL COMMENT 'id dictionary',
  content_id char(36) DEFAULT NULL,
  example_id char(36) DEFAULT NULL,
  example_link_id char(36) DEFAULT NULL,
  created_date datetime DEFAULT NULL,
  modified_date datetime DEFAULT NULL,
  PRIMARY KEY (example_relationship_id)
)
ENGINE = INNODB,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci,
COMMENT = 'Bảng chứa liên kết example-content';

--
-- Create foreign key
--
ALTER TABLE example_relationship
ADD CONSTRAINT FK_example_relationship_content_id FOREIGN KEY (content_id)
REFERENCES concept (concept_id) ON DELETE CASCADE;

--
-- Create foreign key
--
ALTER TABLE example_relationship
ADD CONSTRAINT FK_example_relationship_dictionary_id FOREIGN KEY (dictionary_id)
REFERENCES dictionary (dictionary_id) ON DELETE CASCADE;

--
-- Create foreign key
--
ALTER TABLE example_relationship
ADD CONSTRAINT FK_example_relationship_example_id FOREIGN KEY (example_id)
REFERENCES example (example_id) ON DELETE CASCADE;

--
-- Create foreign key
--
ALTER TABLE example_relationship
ADD CONSTRAINT FK_example_relationship_example_link_id FOREIGN KEY (example_link_id)
REFERENCES example_link (example_link_id) ON DELETE CASCADE;