CREATE TABLE product (
  id NUMBER GENERATED ALWAYS AS IDENTITY(START WITH 1 INCREMENT BY 3),
  sku VARCHAR(255) DEFAULT NULL,
  name VARCHAR(255) DEFAULT NULL,
  description VARCHAR(255) DEFAULT NULL,
  unit_price NUMBER(13,2) DEFAULT NULL,
  image_url VARCHAR(255) DEFAULT NULL,
  active CHAR(1)
  CONSTRAINT cons_table_active CHECK (active IN ('1','0')),
  units_in_stock NUMBER(11) DEFAULT NULL,
  date_created TIMESTAMP(6) DEFAULT NULL,
  last_updated TIMESTAMP(6)DEFAULT NULL,
  category_id NUMBER(20) NOT NULL,
  PRIMARY KEY (id)
);