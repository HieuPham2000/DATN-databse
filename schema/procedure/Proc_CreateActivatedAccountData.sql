-- 
-- Set character set the client will use to send SQL statements to the server
--
SET NAMES 'utf8mb4';

--
-- Set default database
--
USE pvo_v1_2023;

--
-- Drop procedure `Proc_CreateActivatedAccountData`
--
DROP PROCEDURE IF EXISTS Proc_CreateActivatedAccountData;

--
-- Set default database
--
USE pvo_v1_2023;

DELIMITER $$

--
-- Create procedure `Proc_CreateActivatedAccountData`
--
CREATE DEFINER = 'dev'@'%'
PROCEDURE Proc_CreateActivatedAccountData (IN $UserId char(36))
COMMENT 'Store khởi tạo bộ dữ liệu người dùng'
BEGIN
  UPDATE user
  SET status = 1
  WHERE user_id = $UserId;

  INSERT INTO dictionary (dictionary_id, user_id, dictionary_name, last_view_at, created_at, modified_at)
    VALUES (UUID(), $UserId, 'My PVO', NULL, NOW(), NULL);

  INSERT INTO concept_link (concept_link_id, sys_concept_link_id, user_id, concept_link_name, concept_link_type, sort_order, created_date, modified_date)
    SELECT
      UUID(),
      scl.sys_concept_link_id,
      $UserId,
      scl.concept_link_name,
      scl.concept_link_type,
      scl.sort_order,
      NOW(),
      NULL
    FROM sys_concept_link scl;

  INSERT INTO example_link (example_link_id, sys_example_link_id, user_id, example_link_name, example_link_type, sort_order, created_date, modified_date)
    SELECT
      UUID(),
      sel.sys_example_link_id,
      $UserId,
      sel.example_link_name,
      sel.example_link_type,
      sel.sort_order,
      NOW(),
      NULL
    FROM sys_example_link sel;

  INSERT INTO tone (tone_id, sys_tone_id, user_id, tone_name, tone_type, sort_order, created_date, modified_date)
    SELECT
      UUID(),
      st.sys_tone_id,
      $UserId,
      st.tone_name,
      st.tone_type,
      st.sort_order,
      NOW(),
      NULL
    FROM sys_tone st;

  INSERT INTO mode (mode_id, sys_mode_id, user_id, mode_name, mode_type, sort_order, created_date, modified_date)
    SELECT
      UUID(),
      sm.sys_mode_id,
      $UserId,
      sm.mode_name,
      sm.mode_type,
      sm.sort_order,
      NOW(),
      NULL
    FROM sys_mode sm;

  INSERT INTO register (register_id, sys_register_id, user_id, register_name, register_type, sort_order, created_date, modified_date)
    SELECT
      UUID(),
      sr.sys_register_id,
      $UserId,
      sr.register_name,
      sr.register_type,
      sr.sort_order,
      NOW(),
      NULL
    FROM sys_register sr;

  INSERT INTO nuance (nuance_id, sys_nuance_id, user_id, nuance_name, nuance_type, sort_order, created_date, modified_date)
    SELECT
      UUID(),
      sn.sys_nuance_id,
      $UserId,
      sn.nuance_name,
      sn.nuance_type,
      sn.sort_order,
      NOW(),
      NULL
    FROM sys_nuance sn;

  INSERT INTO dialect (dialect_id, sys_dialect_id, user_id, dialect_name, dialect_type, sort_order, created_date, modified_date)
    SELECT
      UUID(),
      sd.sys_dialect_id,
      $UserId,
      sd.dialect_name,
      sd.dialect_type,
      sd.sort_order,
      NOW(),
      NULL
    FROM sys_dialect sd;
END
$$

DELIMITER ;