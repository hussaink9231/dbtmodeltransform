{{ config(schema='demo') }}

SELECT cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'P_PROMO_SK') as Numeric(38,0))
as P_PROMO_SK,
cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'P_PROMO_ID') as VARCHAR(16) )
as P_PROMO_ID,
case when (JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'P_START_DATE_SK')) = '' then null
else  cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'P_START_DATE_SK') as Numeric(38,0)) end
as P_START_DATE_SK,
case when (JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'P_END_DATE_SK')) = '' then null
else  cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'P_END_DATE_SK') as Numeric(38,0)) end
as P_END_DATE_SK,
case when (JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'P_ITEM_SK')) = '' then null
else  cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'P_ITEM_SK') as Numeric(38,0)) end
as P_ITEM_SK,
case when (JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'P_COST')) = '' then null
else  cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'P_COST') as Numeric(15,2)) end
as P_COST,
case when (JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'P_RESPONSE_TARGET')) = '' then null
else  cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'P_RESPONSE_TARGET') as Numeric(38,0)) end
as P_RESPONSE_TARGET,
cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'P_PROMO_NAME') as VARCHAR(50))
as P_PROMO_NAME,
cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'P_CHANNEL_DMAIL') as  VARCHAR(1))
as P_CHANNEL_DMAIL,
cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'P_CHANNEL_EMAIL') as VARCHAR(1))
as P_CHANNEL_EMAIL,
cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'P_CHANNEL_CATALOG') as VARCHAR(1))
as P_CHANNEL_CATALOG,
cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'P_CHANNEL_TV') as VARCHAR(1))
as P_CHANNEL_TV,
cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'P_CHANNEL_RADIO') as VARCHAR(1))
as P_CHANNEL_RADIO,
cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'P_CHANNEL_PRESS') as VARCHAR(1))
as P_CHANNEL_PRESS,
cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'P_CHANNEL_DEMO') as VARCHAR(1))
as P_CHANNEL_DEMO,
cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'P_CHANNEL_DETAILS') as VARCHAR(100))
as P_CHANNEL_DETAILS,
cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'P_PURPOSE') as VARCHAR(15))
as P_PURPOSE,
cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'P_DISCOUNT_ACTIVE') as VARCHAR(1))
as P_DISCOUNT_ACTIVE,
_airbyte_ab_id,
    _airbyte_emitted_at,
    getdate() as _airbyte_normalized_at
FROM "dev"."demo"."_airbyte_raw_promotion"
ORDER BY cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'P_PROMO_SK') as Numeric(38,0)) desc 