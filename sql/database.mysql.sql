CREATE TABLE IF NOT EXISTS attachments ( 
    attachment_id          INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    object_type            varchar(128),
    object_id              integer,
    title                  varchar(128),
    description            text,
    type                   TEXT,
    mime                   TEXT,
    file                   TEXT,
    size                   TEXT,
    parent                 INTEGER DEFAULT 0,
    last_modification_date datetime,
    creation_date          datetime
);
CREATE TABLE IF NOT EXISTS languages ( 
    language_id           INTEGER         PRIMARY KEY AUTO_INCREMENT NOT NULL,
    language_code         VARCHAR( 10 ),
    language_name         VARCHAR( 150 ),
    last_modificaion_date DATETIME,
    creation_date         DATETIME 
);
CREATE TABLE IF NOT EXISTS modules ( 
    module_id     INTEGER         NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name          VARCHAR( 256 ),
    description   TEXT,
    module_key    VARCHAR( 128 ),
    library_name  VARCHAR( 128 ),
    file          VARCHAR( 256 ),
    status        VARCHAR( 128 ),
    creation_date DATETIME 
);
CREATE TABLE IF NOT EXISTS `parameters` ( 
    id            INTEGER PRIMARY KEY AUTO_INCREMENT,
    `key`         varchar(128),
    `value`         TEXT,
    creation_date TEXT 
);
CREATE TABLE IF NOT EXISTS users ( 
    user_id       			INTEGER  NOT NULL       PRIMARY KEY AUTO_INCREMENT,
    first_name    			VARCHAR( 100 ),
    last_name     			VARCHAR( 100 ),
    username      			varchar(128),
    pwd           			varchar(512),
    email         			varchar(128),
    status        			varchar(32),
    role_id       			INTEGER         NOT NULL,
    store_id				INTEGER,
    last_modification_date	DATETIME,
    creation_date 			DATETIME
);
CREATE TABLE IF NOT EXISTS user_meta ( 
    meta_id       INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    user_id       INTEGER,
    meta_key      varchar(128),
    meta_value    TEXT,
    creation_date datetime 
);

CREATE TABLE IF NOT EXISTS user_roles ( 
    role_id                INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    role_name              varchar(128),
    role_description       TEXT,
    last_modification_date datetime,
    creation_date          datetime 
);
CREATE TABLE IF NOT EXISTS role2permission ( 
    id            INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    role_id       INTEGER NOT NULL,
    permission_id INTEGER NOT NULL,
    creation_date datetime 
);
CREATE TABLE IF NOT EXISTS permissions ( 
    permission_id          INTEGER         PRIMARY KEY AUTO_INCREMENT
                                           NOT NULL,
    permission             varchar(256),
    attributes             TEXT,
    label                  VARCHAR( 100 ),
    last_modification_date datetime,
    creation_date          datetime 
);
