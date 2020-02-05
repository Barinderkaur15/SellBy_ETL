CREATE TABLE review_id_table (
  review_id TEXT PRIMARY KEY NOT NULL,
  customer_id INTEGER,
  product_id TEXT,
  product_parent INTEGER,
  review_date DATE -- this should be in the formate yyyy-mm-dd
);

-- This table will contain only unique values
CREATE TABLE products (
  product_id TEXT PRIMARY KEY NOT NULL UNIQUE,
  product_title TEXT
);

-- Customer table for first data set
CREATE TABLE customers (
  customer_id INT PRIMARY KEY NOT NULL UNIQUE,
  customer_count INT
);


-- vine table
CREATE TABLE vine_table (
  review_id TEXT PRIMARY KEY,
  star_rating INTEGER,
  helpful_votes INTEGER,
  total_votes INTEGER,
  vine TEXT
);
 -- checking the number of records ---
select count(*) from review_id_table;
select count(*) from products;
select count(*) from customers;
select count(*) from vine_table;


--- creating new tables for jewel review 

CREATE TABLE review_id_jewel1_table (
  review_id TEXT PRIMARY KEY NOT NULL,
  customer_id INTEGER,
  product_id TEXT,
  product_parent INTEGER,
  review_date DATE -- this should be in the formate yyyy-mm-dd
);

-- This table will contain only unique values
CREATE TABLE products_jewel1 (
  product_id TEXT PRIMARY KEY NOT NULL UNIQUE,
  product_title TEXT
);

-- Customer table for first data set
CREATE TABLE customers_jewel1 (
  customer_id INT PRIMARY KEY NOT NULL UNIQUE,
  customer_count INT
);


-- vine table
CREATE TABLE vine_table_jewel1 (
  review_id TEXT PRIMARY KEY,
  star_rating INTEGER,
  helpful_votes INTEGER,
  total_votes INTEGER,
  vine TEXT
);
-- checking the data ---
select count(*) from review_id_jewel1_table;
select count(*) from review_id_jewel1_table;
select count(*) from products_jewel1;
select count(*) from customers_jewel1;
select count(*) from vine_table_jewel1;
---

analysis 
select * from vine_table_jewel1 limit 10;

select vine,count(review_id) from vine_table_jewel1 group by vine;

select vine,count(review_id) from vine_table group by vine;

-- To count number of reviews  using Review ID 

select count (distinct review_id) from vine_table;

--Total Review : "104972"

select count(distinct review_id) from vine_table_jewel1 

--Total Review : "1767394"

select distinct vine from vine_table

--- dividing the reviews on basis of vine 
select  case  when vine ='Y' Then 'vine_review'
else  'Non-vine Review'  End AS Review_type , count (distinct review_id) from vine_table group by vine;

/* "Non-vine Review"	"104954"
"vine_review"  18 */

select  case  when vine ='Y' Then 'vine_review'
else  'Non-vine Review'  End AS Review_type , count (distinct review_id) from vine_table_jewel1  group by vine;
/*
"Non-vine Review"	"1763580"
"vine_review"	"3814"  */


--Counting the total number of votes the review recieved through vine and non vine 

select  case  when vine ='Y' Then 'vine_review'
else  'Non-vine Review'  End AS Review_type , sum(distinct total_votes) from vine_table  group by vine;
/*"Non-vine Review"	"18385"
"vine_review"	"907"*/

select  case  when vine ='Y' Then 'vine_review'
else  'Non-vine Review'  End AS Review_type , sum(distinct total_votes) from vine_table_jewel1  group by vine;

/*"Non-vine Review"	"33248"
"vine_review"	"828" */

-- Counting the number of helpful reviews ---


select  case  when vine ='Y' Then 'vine_review'
else  'Non-vine Review'  End AS Review_type , sum( distinct helpful_votes) from vine_table group by vine;

/*"Non-vine Review"	"15661"
"vine_review"	"751"*/

select  case  when vine ='Y' Then 'vine_review'
else  'Non-vine Review'  End AS Review_type , sum( distinct helpful_votes) from vine_table_jewel1  group by vine;
/*
"Non-vine Review"	"32112"
"vine_review"	"776"*/

--Counting the number of 5 starts reviews 
select  case  when vine ='Y' Then 'vine_review'
else  'Non-vine Review'  End AS Review_type , count (distinct review_id) from vine_table_jewel1 
where star_rating='5'
group by vine;

/*"Non-vine Review"	"1079521"
"vine_review"	"1723"*/

select  case  when vine ='Y' Then 'vine_review'
else  'Non-vine Review'  End AS Review_type , count (distinct review_id) from vine_table
where star_rating='5'
group by vine;
/*"Non-vine Review"	"52247"
"vine_review"	"6"*/













