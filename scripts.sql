--Question1
Select count(*) From data_analyst_jobs;
--Answer: 1793

--Question2
Select * From data_analyst_jobs
Limit 10;
--Answer: ExxonMobile

--Question3
Select * From data_analyst_jobs
Where location ='TN';
--Answer: 21
Select * From data_analyst_jobs
Where location = 'TN'
Or location ='KY';
--Answer: 27

--Question4
Select * From data_analyst_jobs
Where location = 'TN'
And star_rating >= '4';
--Answer: 4

--Question5
Select * From data_analyst_jobs
Where review_count between 500 and 1000;
--Answer: 151

--Question6
Select location as state, avg(star_rating) as avg_rating
From data_analyst_jobs
Group by state
Order by avg_rating desc;
--Answer: NE

--Question7
Select distinct title
From data_analyst_jobs;
--Answer: 881

--Question8
Select distinct title
From data_analyst_jobs
Where location = 'CA';
--Answer: 230

--Question9
Select company, Avg(star_rating)
From data_analyst_jobs
Where review_count > 5000
And company IS NOT null
group by company;
--Answer:40

--Question10
Select company, Avg(star_rating)
From data_analyst_jobs
Where review_count >5000
Group By company
Order by Avg(star_rating) desc;
/* Answer: 6 way tie between
    General Motors
    Unilever
    Microsoft
    Nike
    American Express
    Kaiser Permanente
With an Avg score of 4.199999809 */

--Question11
Select count(distinct title)
From data_analyst_jobs
Where title like '%nalyst%';
--Answer: 757

--Question12
Select distinct(title)
From data_analyst_jobs
Where title Not Like '%analy%'
And title Not Like '%Analy%'
And title Not Like '%ANALY%';
--Answer: 4

--Bonus
Select count(title) , domain
From data_analyst_jobs
Where domain IS Not null
And skill like '%SQL%'
And days_since_posting >= 21
Group By domain
Order by count(domain) desc;
--Answer:26

Select *
From data_analyst_jobs
Where domain Is Not null
and days_since_posting >= 21
and skill Like '%SQL%'
Order By days_since_posting;
/* Answer: Philanthropy Data Analyst(Fundraising)
           SQL Data Analyst-Applied Technology-Tax
           Health Data Analyst-Experienced*/

Select *
From data_analyst_jobs
Where domain Is Not null
And days_since_posting >= 21
And skill Like '%SQL%'
And title Like '%Philanthropy Data Analyst (Fundraising)%'
Order by days_since_posting;
--Answer: 3

Select *
From data_analyst_jobs
Where domain Is Not null
And days_since_posting >= 21
And skill Like '%SQL%'
And title Like '%SQL Data Analyst%'
And title like '%Tax%'
Order by days_since_posting;
--Answer: 4

Select *
From data_analyst_jobs
Where domain Is Not null
And days_since_posting >= 21
And skill Like '%SQL%'
And title Like '%Health Data Analyst%' 
and title Like '%Experienced%'
Order by days_since_posting;
--Answer: 1

