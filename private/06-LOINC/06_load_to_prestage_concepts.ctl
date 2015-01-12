options (direct=true, errors=0, SKIP=1)
load data
characterset UTF8 length semantics char
infile 'LOINCDB.TXT' --"str X'7c0d0a'"
badfile 'LOINCDB.bad'
discardfile 'LOINCDB.dsc'
truncate
into table LOINC
fields terminated by ','
--fields terminated by WHITESPACE
--fields terminated by X'09'
trailing nullcols
(
LOINC_NUM CHAR(8256) "REPLACE(:LOINC_NUM, '\"', '')"     , 
COMPONENT CHAR(8256) "REPLACE(:COMPONENT , '\"', '')"    , 
PROPERTY CHAR(8256) "REPLACE(:PROPERTY , '\"', '')"    , 
TIME_ASPCT CHAR(8256) "REPLACE(:TIME_ASPCT , '\"', '')"    , 
SYSTEM CHAR(8256) "REPLACE(:SYSTEM , '\"', '')"    , 
SCALE_TYP CHAR(8256) "REPLACE(:SCALE_TYP , '\"', '')"    , 
METHOD_TYP CHAR(8256) "REPLACE(:METHOD_TYP , '\"', '')"    , 
CLASS CHAR(8256) "REPLACE(:CLASS , '\"', '')"    , 
SOURCE CHAR(8256) "REPLACE(:SOURCE , '\"', '')"    , 
DATE_LAST_CHANGED CHAR(8256) "REPLACE(:DATE_LAST_CHANGED , '\"', '')"    
--CHNG_TYPE
--COMMENTS
--STATUS
--MAP_TO
--CONSUMER_NAME
--MOLAR_MASS
--CLASSTYPE
--FORMULA
--SPECIES
--EXMPL_ANSWERS
--ACSSYM
--BASE_NAME
--NAACCR_ID
--CODE_TABLE
--SURVEY_QUEST_TEXT
--SURVEY_QUEST_SRC
--UNITSREQUIRED
--SUBMITTED_UNITS
--RELATEDNAMES2
--SHORTNAME
--ORDER_OBS
--CDISC_COMMON_TESTS
--HL7_FIELD_SUBFIELD_ID
--EXTERNAL_COPYRIGHT_NOTICE
--EXAMPLE_UNITS
--LONG_COMMON_NAME
--HL7_V2_DATATYPE
--HL7_V3_DATATYPE
--CURATED_RANGE_AND_UNITS
--DOCUMENT_SECTION
--EXAMPLE_UCUM_UNITS
--EXAMPLE_SI_UCUM_UNITS
--STATUS_REASON
--STATUS_TEXT
--CHANGE_REASON_PUBLIC
--COMMON_TEST_RANK
--COMMON_ORDER_RANK
--COMMON_SI_TEST_RANK
)