USE EnterpriseRetailDW;
GO

CREATE TABLE stg.Geolocation
(
	geolocation_zip_code_prefix INT,
	geolocation_lat DECIMAL(10,7),
	geolocation_lng DECIMAL(10,7),
	geolocation_city VARCHAR(100),
	geolocation_state CHAR(2)
);
GO