USE imdb_movies_DB;


select * from imdb_top_250_cleaned;

-- -------------------------

-- FURTHER CLEANING

-- TRIM `imdB_Ranking` and rename to `imdb_ranking`

-- 1. create an identical dataset to working from----
select * into new_imdb from imdb_top_250_cleaned;

select * from new_imdb;
-- -- DONE ✅


-- 2. check for duplicates--------
select count(distinct imdB_Ranking) from new_imdb
-- no duplicates✅


-- 3. Fix NULL, BLANK, and missing VALUES

-- main problem: `Age_Rating (MPAA Rating)` has some wrong infomation

select Title, Age_Rating, IMDb_Ranking
from new_imdb
--where Age_Rating like '%h%'
group by Age_Rating, Title, IMDb_Ranking;

/*
these are the correction: 
-- Your Name.	{1h 46m	84 = ''}
-- The Chaos Class Failed the Class	{1h 35m	97 = ''}
-- The Wild Robot	{1h 42m	175 = PG}
-- My Father and My Son	{1h 52m	237 = 'Not Rated'}
-- I'm Still Here	{2h 17m	233 = 'PG-13'}
-- 12th Fail	{2h 27m	68 = ''}
-- Das Boot	{2h 29m	79 = ''}

*/


UPDATE new_imdb
SET Age_Rating = 'PG'
WHERE Title = 'Your Name.' and IMDb_Ranking = 84;


UPDATE new_imdb
SET Age_Rating = ''
WHERE Title = 'The Chaos Class Failed the Class' and IMDb_Ranking = 97;


UPDATE new_imdb
SET Age_Rating = 'PG'
WHERE Title = 'The Wild Robot' and IMDb_Ranking = 175;


UPDATE new_imdb
SET Age_Rating = 'Not Rated'
WHERE Title = 'My Father and My Son' and IMDb_Ranking = 237;


UPDATE new_imdb
SET Age_Rating = 'PG-13'
WHERE Title = 'I''m Still Here' and IMDb_Ranking = 233;


UPDATE new_imdb
SET Age_Rating = 'PG'
WHERE Title = '12th Fail' and IMDb_Ranking = 68;


UPDATE new_imdb
SET Age_Rating = 'R'
WHERE Title = 'Das Boot' and IMDb_Ranking = 79;


--  Done. ✅ (for name change)


-- [NB:standardization like trim, column name change etc will be done with power Query]


Select * From new_imdb;
