USE EnterpriseRetailDW;
GO

INSERT INTO dbo.Dimseller
(
    sellerID,
    sellerzipcodeprefix,
    sellercity,
    sellerstate
)
SELECT 
    seller_id,
    seller_zip_code_prefix,
    seller_city,
    seller_state
FROM stg.Sellers;
GO

select top(10)* from Dimseller

select COUNT(*) from Dimseller