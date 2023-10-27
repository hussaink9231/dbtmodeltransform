{{ config(schema='demo') }}
SELECT cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'C_CUSTOMER_SK') as Numeric(38,0))
as C_CUSTOMER_SK,
case when (JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'C_CURRENT_CDEMO_SK')) = '' then null
else  cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'C_CURRENT_CDEMO_SK') as Numeric(38,0)) end
as C_CURRENT_CDEMO_SK,
case when (JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'C_CURRENT_HDEMO_SK')) = '' then null
else  cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'C_CURRENT_HDEMO_SK') as Numeric(38,0)) end
as C_CURRENT_HDEMO_SK,
case when (JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'C_CURRENT_ADDR_SK')) = '' then null
else  cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'C_CURRENT_ADDR_SK') as Numeric(38,0)) end
as C_CURRENT_ADDR_SK,
case when (JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'C_FIRST_SHIPTO_DATE_SK')) = '' then null
else  cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'C_FIRST_SHIPTO_DATE_SK') as Numeric(38,0)) end
as C_FIRST_SHIPTO_DATE_SK,
case when (JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'C_FIRST_SALES_DATE_SK')) = '' then null
else  cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'C_FIRST_SALES_DATE_SK') as Numeric(38,0)) end
as C_FIRST_SALES_DATE_SK,
cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'C_SALUTATION') as VARCHAR(10) )
as C_SALUTATION,
cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'C_FIRST_NAME') as  VARCHAR(20) )
as C_FIRST_NAME,
cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'C_LAST_NAME') as VARCHAR(30) )
as C_LAST_NAME,
cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'C_PREFERRED_CUST_FLAG') as VARCHAR(1) )
as C_PREFERRED_CUST_FLAG,
case when (JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'C_BIRTH_DAY')) = '' then null
else  cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'C_BIRTH_DAY') as Numeric(38,0)) end
as C_BIRTH_DAY,
case when (JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'C_BIRTH_MONTH')) = '' then null
else  cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'C_BIRTH_MONTH') as Numeric(38,0)) end
as C_BIRTH_MONTH,
 case when (JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'C_BIRTH_YEAR')) = '' then null
else  cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'C_BIRTH_YEAR') as Numeric(38,0)) end
as C_BIRTH_YEAR,
cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'C_BIRTH_COUNTRY') as VARCHAR(20) )
as C_BIRTH_COUNTRY,
cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'C_LOGIN') as VARCHAR(13))
as C_LOGIN,
cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'C_EMAIL_ADDRESS') as VARCHAR(50) )
as C_EMAIL_ADDRESS,
cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'C_LAST_REVIEW_DATE') as VARCHAR(10) )
as C_LAST_REVIEW_DATE,
_airbyte_ab_id,
    _airbyte_emitted_at,
    getdate() as _airbyte_normalized_at
FROM "dev"."demo"."_airbyte_raw_customer"