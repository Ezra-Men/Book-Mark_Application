CREATE DATABASE IF NOT EXISTS bookmarks;
USE bookmarks;

CREATE TABLE users (
  username VARCHAR(10) NOT NULL PRIMARY KEY,
  passwd CHAR(40) NOT NULL,
  email VARCHAR(100) NOT NULL
);

CREATE TABLE bookmark (
  username VARCHAR(10) NOT NULL,
  bm_url VARCHAR(225) NOT NULL,
  INDEX (username),
  INDEX (bm_url),
  PRIMARY KEY (bm_url, username)
);

GRANT INSERT, DELETE, CREATE, UPDATE ON bookmarks.* TO 'ezramen'@'localhost';
