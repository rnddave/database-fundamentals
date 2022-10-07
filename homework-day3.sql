-- we need to find the names of people that came 1st, 2nd, 3rd position

--select max(marks) from schools

--select max(marks) from schools where marks <(select max(marks) from schools where marks < (select max(marks) from schools))

-- we know this involves subqueries, but what they are? 

-- lets create a new table
create table studentRecords(studentID int(4), name char(20), totalMarks int(4))

-- populate with some records 
insert into studentRecords values(1024, 'Bobby Orange', 320),
(1024, 'The Green Giant', 364),
(2048, 'Banana Man', 380),
(4096, 'Danger Mouse', 380),
(512, 'Inspector Gadget', 325),
(256, 'Thundercats', 319),
(128, 'The Tango Man', 319),
(64, 'Mr Delmonte', 396),
(32, 'Mr Blobby', 379)

-- now we want to award a medal for each of the 3 best scores

select max(totalmarks) from studentRecords where totalmarks <(select max(totalmarks) from studentRecords where totalmarks < (select max(totalmarks) from studentRecords))

-- my first attempt only produce the thrid highest score and nothing else

select max(totalmarks) from studentRecords where totalmarks <(select max(totalmarks) from studentRecords)

-- only showing the second highest score, nothing else (and only one of them) 

-- this shows me the highest score 

select name, max(totalmarks) from studentRecords

select studentid, name, max(totalmarks) from studentRecords 

select studentid, name, max(totalmarks) from studentRecords where totalMarks<(select max(totalMarks) from studentRecords)

select studentid, name, max(totalmarks) -- expect 3rd place
	from studentRecords 
    where totalMarks<(
      select max(totalMarks) AS 'silver'
      	from studentRecords 
      	where totalMarks<(
          select max(totalMarks) AS 'bronze' 
          	from studentRecords))

-- given up temporarily and asked for help on discord

-- this one gives me 3 scores, but does not account for second place being a tie, in this case I would expect 3 scores
SELECT 
    studentid, name, totalmarks
FROM studentRecords
ORDER BY totalMarks DESC
LIMIT 3 distinct;

-- could try a join (THIS DOESN'@'T WORK - JUST GIVES ME TOP SCORE AGAIN)

SELECT 
    medal.studentid, medal.name, medal.totalmarks
FROM studentRecords medal
LEFT JOIN studentRecords sorted ON medal.totalMarks < sorted.totalMarks
WHERE sorted.studentID IS NULL;

-- this doesn't work as well

select studentid, name, totalmarks from studentRecords ORDER by totalMarks DESC limit 3

-- lets try the rank 

select studentid, name, totalmarks, dense_rank() over(order by totalMarks DESC) as rank from studentRecords

-- ABOVE shows whole database sorted by rank

select studentid, name, totalmarks, dense_rank() over(order by totalMarks DESC ) as rank from studentRecords 

select studentid, name, totalmarks, dense_rank() over(order by totalMarks DESC ) as rank from studentRecords  where rank <=3


----------------------

-- Shafeeq suggested: 

select studentid, name, totalmarks --expect 3rd place 
    from studentRecords 
    where totalMarks>(
      select max(totalMarks) -- expect 2nd place
          from studentRecords 
          where totalMarks<(
          select max(totalMarks) -- expect 1st place
              from studentRecords))

-- this produced the 1st place rank but nothing extra. 

-----------------------------

-- returning to rank

select 
	*
    from (
      SELECT
          studentid, name, totalmarks,
          DENSE_RANK() OVER (
              ORDER BY totalmarks DESC
          ) As Rank 
      FROM
          studentRecords
      ) studentRecords
      
      where Rank <= 3

---------- THIS ^^ IS THE ANSWER -----------






