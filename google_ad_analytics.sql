select * from googleads_dataanalytics_sales_uncleaned;

create table googleads_dataanalytics_sales_uncleaned_copy
like googleads_dataanalytics_sales_uncleaned;

insert googleads_dataanalytics_sales_uncleaned_copy
select *
from googleads_dataanalytics_sales_uncleaned;

select * from googleads_dataanalytics_sales_uncleaned_copy;

update googleads_dataanalytics_sales_uncleaned_copy
set `Conversion Rate` = 0.039
where `Conversion Rate` = '';

update googleads_dataanalytics_sales_uncleaned_copy
set `Cost` = replace(`Cost`, '$', '');

update googleads_dataanalytics_sales_uncleaned_copy
set `Sale_Amount` = replace(`Sale_Amount`, '$', '');

update googleads_dataanalytics_sales_uncleaned_copy t
join (
	select avg(`Cost`) as avg_cost
    from googleads_dataanalytics_sales_uncleaned_copy
    where `Cost` is not null
) a
set t.`Cost` = a.avg_cost
where t.`Cost` = '';

select avg(`Sale_Amount`) as avg_sales
from googleads_dataanalytics_sales_uncleaned_copy;

update googleads_dataanalytics_sales_uncleaned_copy
set `Sale_Amount` = 1417.54
where `Sale_Amount` = '';


alter table googleads_dataanalytics_sales_uncleaned_copy
rename column `Cost` to `Cost($)`;

alter table googleads_dataanalytics_sales_uncleaned_copy
rename column `Sale_Amount` to `Sale_Amount($)`;

update googleads_dataanalytics_sales_uncleaned_copy
set `Campaign_Name` = 'Data Analytics Course'
where `Campaign_Name` like 'DataAnalyticsCourse%';

update googleads_dataanalytics_sales_uncleaned_copy
set `Campaign_Name` = 'Data Analytics Course'
where `Campaign_Name` like 'Data Anlytics Corse%';

update googleads_dataanalytics_sales_uncleaned_copy
set `Campaign_Name` = 'Data Analytics Course'
where `Campaign_Name` like 'Data Analytcis Course%';

select * from googleads_dataanalytics_sales_uncleaned_copy;

UPDATE googleads_dataanalytics_sales_uncleaned_copy
SET Ad_Date = STR_TO_DATE(Ad_Date, '%d-%m-%Y')
WHERE Ad_Date REGEXP '^[0-9]{2}-[0-9]{2}-[0-9]{4}$';

update googleads_dataanalytics_sales_uncleaned_copy
set `Campaign_Name` = 'Data Analytics Course'
where `Campaign_Name` like 'Data Analytics Corse%';

UPDATE googleads_dataanalytics_sales_uncleaned_copy
SET Ad_Date = STR_TO_DATE(Ad_Date, '%Y/%m/%d')
WHERE Ad_Date LIKE '%/%';

select * from googleads_dataanalytics_sales_uncleaned_copy
where Impressions = '';

ALTER TABLE googleads_dataanalytics_sales_uncleaned_copy
MODIFY Ad_Date DATE;

UPDATE googleads_dataanalytics_sales_uncleaned_copy
SET Location =
  CONCAT(
    UPPER(LEFT(LOWER(Location), 1)),
    SUBSTRING(LOWER(Location), 2)
  );
  
UPDATE googleads_dataanalytics_sales_uncleaned_copy
SET Device =
  CONCAT(
    UPPER(LEFT(LOWER(Device), 1)),
    SUBSTRING(LOWER(Device), 2)
  ); 
  
UPDATE googleads_dataanalytics_sales_uncleaned_copy
SET Keyword =
  CONCAT(
    UPPER(LEFT(LOWER(Keyword), 1)),
    SUBSTRING(LOWER(Keyword), 2)
  ); 

select Location
from googleads_dataanalytics_sales_uncleaned_copy;

update googleads_dataanalytics_sales_uncleaned_copy
set Location = 'Hyderabad'
where location like 'Hyderbad%';

update googleads_dataanalytics_sales_uncleaned_copy
set Location = 'Hyderabad'
where location like 'Hydrebad%';

select * from googleads_dataanalytics_sales_uncleaned_copy;