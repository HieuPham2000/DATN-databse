-- 
-- Set character set the client will use to send SQL statements to the server
--
SET NAMES 'utf8mb4';

--
-- Set default database
--
USE pvo_v1_2023;

--
-- Drop table `user`
--
DROP TABLE IF EXISTS user;

--
-- Set default database
--
USE pvo_v1_2023;

--
-- Create table `user`
--
CREATE TABLE user (
  user_id char(36) NOT NULL COMMENT 'id khóa chính',
  user_name varchar(100) DEFAULT NULL COMMENT 'Tên đăng nhập',
  password char(60) DEFAULT NULL COMMENT 'Mã hash mật khẩu',
  email varchar(50) DEFAULT NULL,
  full_name varchar(255) DEFAULT NULL COMMENT 'Tên đầy đủ',
  display_name varchar(100) DEFAULT NULL COMMENT 'Tên hiển thị',
  birthday datetime DEFAULT NULL COMMENT 'Ngày sinh',
  `position` varchar(255) DEFAULT NULL COMMENT 'Công việc',
  avatar text DEFAULT NULL COMMENT 'Link ảnh đại diện',
  status int(11) DEFAULT NULL COMMENT 'Trạng thái tài khoản',
  created_date datetime DEFAULT NULL,
  modified_date datetime DEFAULT NULL,
  PRIMARY KEY (user_id)
)
ENGINE = INNODB,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci,
COMMENT = 'Bảng chứa thông tin người dùng';

--
-- Create index `email` on table `user`
--
ALTER TABLE user
ADD UNIQUE INDEX email (email);

--
-- Create index `user_name` on table `user`
--
ALTER TABLE user
ADD UNIQUE INDEX user_name (user_name);