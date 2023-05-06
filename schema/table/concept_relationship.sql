-- 
-- Set character set the client will use to send SQL statements to the server
--
SET NAMES 'utf8mb4';

--
-- Set default database
--
USE pvo_v1_2023;

--
-- Drop table `concept_relationship`
--
DROP TABLE IF EXISTS concept_relationship;

--
-- Set default database
--
USE pvo_v1_2023;

--
-- Create table `concept_relationship`
--
CREATE TABLE concept_relationship (
  concept_relationship_id int(11) NOT NULL AUTO_INCREMENT COMMENT 'id khóa chính',
  dictionary_id char(36) DEFAULT NULL COMMENT 'id dictionảy',
  concept_id char(36) DEFAULT NULL COMMENT 'id concept',
  parent_id char(36) DEFAULT NULL COMMENT 'id concept cha',
  concept_link_id char(36) DEFAULT NULL COMMENT 'id loại liên kết concept-concept',
  created_date datetime DEFAULT NULL,
  modified_date datetime DEFAULT NULL,
  PRIMARY KEY (concept_relationship_id)
)
ENGINE = INNODB,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci,
COMMENT = 'Bảng chứa liên kết concept-concept';

--
-- Create foreign key
--
ALTER TABLE concept_relationship
ADD CONSTRAINT FK_concept_relationship_concept_id FOREIGN KEY (concept_id)
REFERENCES concept (concept_id) ON DELETE CASCADE;

--
-- Create foreign key
--
ALTER TABLE concept_relationship
ADD CONSTRAINT FK_concept_relationship_concept_link_id FOREIGN KEY (concept_link_id)
REFERENCES concept_link (concept_link_id) ON DELETE NO ACTION;

--
-- Create foreign key
--
ALTER TABLE concept_relationship
ADD CONSTRAINT FK_concept_relationship_dictionary_id FOREIGN KEY (dictionary_id)
REFERENCES dictionary (dictionary_id) ON DELETE CASCADE;

--
-- Create foreign key
--
ALTER TABLE concept_relationship
ADD CONSTRAINT FK_concept_relationship_parent_id FOREIGN KEY (parent_id)
REFERENCES concept (concept_id) ON DELETE CASCADE;