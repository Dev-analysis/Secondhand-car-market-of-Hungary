-- First step was to import the all tables [ through Table data import weizard ]
-- for [model] table the schema was created manually
-- second is to assign primary key 
-- create the relationship between table

CREATE TABLE model(
	model_id INT PRIMARY KEY,
    model_name VARCHAR(250)
    );
    
LOAD DATA 
INFILE "D:/PROJECT/Git project/Secondhan_car_market_hungary/model_202006112147.csv"
INTO TABLE model
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

# Now data is imported, in order to make a relationship we have to assign the primary and foreign key
# PRIMARY KEY

ALTER TABLE advertisements MODIFY ad_id INT PRIMARY KEY;
ALTER TABLE brand MODIFY brand_id INT PRIMARY KEY;
ALTER TABLE car_type MODIFY car_type_id INT PRIMARY KEY;

desc catalogs;
ALTER TABLE catalogs MODIFY catalog_url varchar(250) PRIMARY KEY;

ALTER TABLE category MODIFY category_id INT PRIMARY KEY;
ALTER TABLE clime MODIFY clime_id INT PRIMARY KEY;
ALTER TABLE drive MODIFY drive_id INT PRIMARY KEY;
ALTER TABLE environmental MODIFY environmental_id INT PRIMARY KEY;
ALTER TABLE gas MODIFY gas_id INT PRIMARY KEY;
ALTER TABLE region MODIFY region_id INT PRIMARY KEY;


# FOREIGN KEY 

DESC advertisements;
# here again we have to again modify the catalog_url for advertisement table else it will show error code: 1170 
ALTER TABLE advertisements MODIFY catalog_url varchar(250);
ALTER TABLE advertisements ADD CONSTRAINT 
FOREIGN KEY (catalog_url) REFERENCES catalogs(catalog_url);

ALTER TABLE advertisements ADD CONSTRAINT  
FOREIGN KEY (brand_id) REFERENCES brand(brand_id);

ALTER TABLE advertisements ADD CONSTRAINT 
FOREIGN KEY (clime_id) REFERENCES clime(clime_id);

''' error code 1170
desc advertisements;
desc gas;
ALTER TABLE advertisements MODIFY gas_id int DEFAULT ;
ALTER TABLE advertisements ADD 
FOREIGN KEY (gas_id) REFERENCES gas(gas_id);

for a while we leave this column as it because 'gas_id' column is empty in the .csv file'''

ALTER TABLE advertisements ADD CONSTRAINT 
FOREIGN KEY (model_id) REFERENCES model(model_id);
 
ALTER TABLE advertisements ADD CONSTRAINT  
FOREIGN KEY (region_id) REFERENCES region(region_id);
    
    
    
    
ALTER TABLE catalogs ADD CONSTRAINT 
FOREIGN KEY (car_type_id) REFERENCES car_type(car_type_id);

ALTER TABLE catalogs ADD CONSTRAINT 
FOREIGN KEY (category_id) REFERENCES category(category_id);

ALTER TABLE catalogs ADD CONSTRAINT 
FOREIGN KEY (drive_id) REFERENCES drive(drive_id);

ALTER TABLE catalogs ADD CONSTRAINT 
FOREIGN KEY (environmental_id) REFERENCES environmental(environmental_id);


select count(*) from advertisements;