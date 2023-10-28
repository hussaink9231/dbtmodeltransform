{{ config(schema='demo') }}
 
SELECT cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CR_RETURNED_DATE_SK') as Numeric(38,0))
as CR_RETURNED_DATE_SK,
case when (JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CR_RETURNED_TIME_SK')) = '' then null
else  cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CR_RETURNED_TIME_SK') as Numeric(38,0)) end
as CR_RETURNED_TIME_SK,
case when (JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CR_ITEM_SK')) = '' then null
else  cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CR_ITEM_SK') as Numeric(38,0)) end
as CR_ITEM_SK,
case when (JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CR_REFUNDED_CUSTOMER_SK')) = '' then null
else  cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CR_REFUNDED_CUSTOMER_SK') as Numeric(38,0)) end
as CR_REFUNDED_CUSTOMER_SK,
case when (JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CR_REFUNDED_CDEMO_SK')) = '' then null
else  cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CR_REFUNDED_CDEMO_SK') as Numeric(38,0)) end
as CR_REFUNDED_CDEMO_SK,
case when (JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CR_REFUNDED_HDEMO_SK')) = '' then null
else  cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CR_REFUNDED_HDEMO_SK') as Numeric(38,0)) end
as CR_REFUNDED_HDEMO_SK,
case when (JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CR_REFUNDED_ADDR_SK')) = '' then null
else  cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CR_REFUNDED_ADDR_SK') as Numeric(38,0)) end
as CR_REFUNDED_ADDR_SK,
case when (JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CR_RETURNING_CUSTOMER_SK')) = '' then null
else  cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CR_RETURNING_CUSTOMER_SK') as Numeric(38,0)) end
as CR_RETURNING_CUSTOMER_SK,
case when (JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CR_RETURNING_CDEMO_SK')) = '' then null
else  cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CR_RETURNING_CDEMO_SK') as Numeric(38,0)) end
as CR_RETURNING_CDEMO_SK,
case when (JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CR_RETURNING_HDEMO_SK')) = '' then null
else  cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CR_RETURNING_HDEMO_SK') as Numeric(38,0)) end
as CR_RETURNING_HDEMO_SK,
case when (JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CR_RETURNING_ADDR_SK')) = '' then null
else  cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CR_RETURNING_ADDR_SK') as Numeric(38,0)) end
as CR_RETURNING_ADDR_SK,
case when (JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CR_CALL_CENTER_SK')) = '' then null
else  cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CR_CALL_CENTER_SK') as Numeric(38,0)) end
as CR_CALL_CENTER_SK, 
case when (JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CR_CATALOG_PAGE_SK')) = '' then null
else  cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CR_CATALOG_PAGE_SK') as Numeric(38,0)) end
as CR_CATALOG_PAGE_SK, 
case when (JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CR_SHIP_MODE_SK')) = '' then null
else  cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CR_SHIP_MODE_SK') as Numeric(38,0)) end
as CR_SHIP_MODE_SK, 
case when (JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CR_WAREHOUSE_SK')) = '' then null
else  cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CR_WAREHOUSE_SK') as Numeric(38,0)) end
as CR_WAREHOUSE_SK, 
case when (JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CR_REASON_SK')) = '' then null
else  cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CR_REASON_SK') as Numeric(38,0)) end
as CR_REASON_SK, 
case when (JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CR_ORDER_NUMBER')) = '' then null
else  cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CR_ORDER_NUMBER') as Numeric(38,0)) end
as CR_ORDER_NUMBER, 
case when (JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CR_RETURN_QUANTITY')) = '' then null
else  cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CR_RETURN_QUANTITY') as Numeric(38,0)) end
as CR_RETURN_QUANTITY, 
case when (JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CR_RETURN_AMOUNT')) = '' then null
else  cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CR_RETURN_AMOUNT') as Numeric(7,2)) end
as CR_RETURN_AMOUNT, 
case when (JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CR_RETURN_TAX')) = '' then null
else  cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CR_RETURN_TAX') as Numeric(7,2)) end
as CR_RETURN_TAX, 
case when (JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CR_RETURN_AMT_INC_TAX')) = '' then null
else  cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CR_RETURN_AMT_INC_TAX') as Numeric(7,2)) end
as CR_RETURN_AMT_INC_TAX, 
case when (JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CR_FEE')) = '' then null
else  cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CR_FEE') as Numeric(7,2)) end
as CR_FEE, 
case when (JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CR_RETURN_SHIP_COST')) = '' then null
else  cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CR_RETURN_SHIP_COST') as Numeric(7,2)) end
as CR_RETURN_SHIP_COST, 
case when (JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CR_REFUNDED_CASH')) = '' then null
else  cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CR_REFUNDED_CASH') as Numeric(7,2)) end
as CR_REFUNDED_CASH, 
case when (JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CR_REVERSED_CHARGE')) = '' then null
else  cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CR_REVERSED_CHARGE') as Numeric(7,2)) end
as CR_REVERSED_CHARGE, 
 case when (JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CR_STORE_CREDIT')) = '' then null
else  cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CR_STORE_CREDIT') as Numeric(7,2)) end
as CR_STORE_CREDIT, 
 case when (JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CR_NET_LOSS')) = '' then null
else  cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CR_NET_LOSS') as Numeric(7,2)) end
as CR_NET_LOSS, 
_airbyte_ab_id,
    _airbyte_emitted_at,
    getdate() as _airbyte_normalized_at
FROM "dev"."demo"."_airbyte_raw_catalog_returns"