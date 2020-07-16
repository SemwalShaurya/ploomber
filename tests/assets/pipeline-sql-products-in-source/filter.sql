{% set product = SQLiteRelation(['filter', 'table']) %}

CREATE TABLE {{product}} AS
SELECT * FROM {{upstream['load.sql']}}
WHERE strftime(purchase_date) > date('2015-01-01')