CREATE DATABASE IF NOT EXISTS `gp_shop`
  CHARACTER SET utf8
  DEFAULT CHARACTER SET utf8
  DEFAULT COLLATE utf8_general_ci;

CREATE TABLE IF NOT EXISTS `categories` (
  cat_id    INT(6) UNSIGNED AUTO_INCREMENT,
  cat_name  VARCHAR(128) NOT NULL,
  cat_descr VARCHAR(256) NOT NULL,
  cat_img   VARCHAR(128),
  PRIMARY KEY (cat_id)
);

CREATE TABLE IF NOT EXISTS `plants` (
  p_id    INT(6) UNSIGNED AUTO_INCREMENT,
  cat_id INT(6) NOT NULL,
  p_name  VARCHAR(128) NOT NULL,
  p_img VARCHAR(128) NOT NULL,
  p_intro TEXT NOT NULL,
  p_descr TEXT NOT NULL,
  p_additional TEXT,
  p_price INT NOT NULL,
  PRIMARY KEY (p_id),
  FOREIGN KEY (cat_id) REFERENCES categories(cat_id)
);