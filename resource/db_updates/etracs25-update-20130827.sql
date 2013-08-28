ALTER TABLE machrysetting ADD COLUMN residualrate DECIMAL(10,2) NOT NULL;

UPDATE machrysetting SET residualrate = 20;

CREATE TABLE `batchgrerror` (
  `faasid` VARCHAR(50) NOT NULL,
  `ry` INT(11) NOT NULL,
  `msg` TEXT,
  PRIMARY KEY  (`faasid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;
