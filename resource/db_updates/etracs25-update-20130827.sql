ALTER TABLE machrysetting ADD COLUMN residualrate DECIMAL(10,2) NOT NULL;

UPDATE machrysetting SET residualrate = 20;