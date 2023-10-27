{{ config(schema='demo') }}

SELECT cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CP_CATALOG_PAGE_SK') as Numeric(38,0))
as CP_CATALOG_PAGE_SK,
cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CP_CATALOG_PAGE_ID') as VARCHAR(16) )
as CP_CATALOG_PAGE_ID,
case when (JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CP_START_DATE_SK')) = '' then null
else  cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CP_START_DATE_SK') as Numeric(38,0)) end
as CP_START_DATE_SK,
case when (JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CP_END_DATE_SK')) = '' then null
else  cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CP_END_DATE_SK') as Numeric(38,0)) end
as CP_END_DATE_SK,
cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CP_DEPARTMENT') as VARCHAR(50) )
as CP_DEPARTMENT,
case when (JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CP_CATALOG_NUMBER')) = '' then null
else  cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CP_CATALOG_NUMBER') as Numeric(38,0)) end
as CP_CATALOG_NUMBER,
case when (JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CP_CATALOG_PAGE_NUMBER')) = '' then null
else  cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CP_CATALOG_PAGE_NUMBER') as Numeric(38,0)) end
as CP_CATALOG_PAGE_NUMBER,
cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CP_DESCRIPTION') as VARCHAR(100) )
as CP_DESCRIPTION,
cast(JSON_EXTRACT_PATH_TEXT(JSON_SERIALIZE(_airbyte_data),'CP_TYPE') as VARCHAR(100) )
as CP_TYPE,
_airbyte_ab_id,
    _airbyte_emitted_at,
    getdate() as _airbyte_normalized_at
FROM "dev"."demo"."_airbyte_raw_catalog_page"