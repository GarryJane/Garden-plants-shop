CREATE DATABASE IF NOT EXISTS gp_shop
  CHARACTER SET utf8
  DEFAULT CHARACTER SET utf8
  DEFAULT COLLATE utf8_general_ci;

use gp_shop;

CREATE TABLE IF NOT EXISTS categories (
  cat_id    INT(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  cat_name  VARCHAR(128) NOT NULL,
  cat_descr VARCHAR(256) NOT NULL,
  cat_img   VARCHAR(128),
  PRIMARY KEY (cat_id)
);

CREATE TABLE IF NOT EXISTS plants (
  p_id    INT(6) UNSIGNED AUTO_INCREMENT,
  cat_id INT(6) UNSIGNED NOT NULL,
  p_name  VARCHAR(128) NOT NULL,
  p_img VARCHAR(128) NOT NULL,
  p_intro TEXT NOT NULL,
  p_descr TEXT NOT NULL,
  p_additional TEXT,
  p_price INT NOT NULL,
  PRIMARY KEY (p_id),
  FOREIGN KEY (cat_id) REFERENCES categories(cat_id)
);

INSERT INTO categories (cat_name, cat_descr, cat_img)
VALUES
  ("Лилейники","Описание лилейников","img/plant-1.png"),
  ("Хосты", "Описание хост", "img/plant-2.png"),
  ("Пионы", "Описание пион", "img/plant-3.png"),
  ("Лилейники2","Описание лилейников2","img/plant-1.png"),
  ("Хосты2", "Описание хост2", "img/plant-2.png"),
  ("Пионы2", "Описание пион2", "img/plant-3.png");

INSERT INTO plants (cat_id, p_name, p_img, p_intro, p_descr, p_additional, p_price)
VALUES
  (1, "Лилейник-1", "img/plant-1.png", "Лилейник-1 intro", "Лилейник-1 descr", "Лилейник-1 addition descr", 101),
  (1, "Лилейник-2", "img/plant-1.png", "Лилейник-2 intro", "Лилейник-2 descr", "Лилейник-2 addition descr", 102),
  (2, "Хоста-1", "img/plant-2.png", "Хоста-1 intro", "Хоста-1 descr", "Хоста-1 addition descr", 201),
  (2, "Хоста-2", "img/plant-2.png", "Хоста-2 intro", "Хоста-2 descr", "Хоста-2 addition descr", 202),
  (3, "Пион-1", "img/plant-3.png", "Пион-1 intro", "Пион-1 descr", "Пион-1 addition descr", 301),
  (3, "Пион-2", "img/plant-3.png", "Пион-2 intro", "Пион-2 descr", "Пион-2 addition descr", 302),
  (4, "Лилейник2-1", "img/plant-1.png", "Лилейник2-1 intro", "Лилейник2-1 descr", "Лилейник2-1 addition descr", 121),
  (4, "Лилейник2-2", "img/plant-1.png", "Лилейник2-2 intro", "Лилейник2-2 descr", "Лилейник2-2 addition descr", 122),
  (5, "Хоста2-1", "img/plant-2.png", "Хоста2-1 intro", "Хоста2-1 descr", "Хоста2-1 addition descr", 221),
  (5, "Хоста2-2", "img/plant-2.png", "Хоста2-2 intro", "Хоста2-2 descr", "Хоста2-2 addition descr", 222),
  (6, "Пион2-1", "img/plant-3.png", "Пион2-1 intro", "Пион2-1 descr", "Пион2-1 addition descr", 321),
  (6, "Пион2-2", "img/plant-3.png", "Пион2-2 intro", "Пион2-2 descr", "Пион2-2 addition descr", 322);