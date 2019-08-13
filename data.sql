DROP TABLE Account ;
DROP TABLE Role ;

CREATE TABLE Account (
  id int unsigned not null auto_increment,
  username VARCHAR(100) NOT NULL,
  password VARCHAR(200) NOT NULL,
  enabled BOOLEAN DEFAULT true NOT NULL,
  credentialsexpired BOOLEAN DEFAULT false NOT NULL,
  expired BOOLEAN DEFAULT false NOT NULL,
  locked BOOLEAN DEFAULT false NOT NULL,
  PRIMARY KEY (id),
)auto_increment=1;

CREATE TABLE Role (
  id int unsigned not null,
  code VARCHAR(50) NOT NULL,
  label VARCHAR(100) NOT NULL,
  PRIMARY KEY (id),
);

CREATE TABLE AccountRole (
  accountId int unsigned not null,
  roleId BIGINT NOT NULL,
  PRIMARY KEY (accountId, roleId)
);
