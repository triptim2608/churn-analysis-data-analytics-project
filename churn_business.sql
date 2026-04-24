create database project;
use project;
alter table final_churn_dataset
rename to churn_analysis;
describe  churn_analysis;
select * from churn_analysis;

-- How much revenue is lost due to churn? 
Select SUM(mrr_amount) as churned_revenue,
COUNT(account_id) as churned_customers
from churn_analysis
where churn_flag = 'True';

-- which industry has highest churn rate?
Select industry, COUNT(*) as customers,
 Avg(CASE WHEN churn_flag = 'True' THEN 1 ELSE 0 END) * 100 as churn_rate
 From churn_analysis
 Group by industry
 order by churn_rate desc;
 
 -- Does satisfaction affects churn
 Select ROUND(avg_satisfaction, 1) AS satisfaction,
COUNT(*) AS total,
SUM(Case when churn_flag = 'True' then 1 else 0 end) as churned
from churn_analysis
Group by satisfaction
Order by satisfaction;

-- HIGH ERROR USERS CHURN?
SELECT 
CASE 
	When error_count > 30 then 'High Error'
	else 'Low Error'
    end as error_group,
COUNT(*) as customers,
ROUND(avg(Case when churn_flag = 'True' then 1 else 0 end)*100,2) AS churn_rate
from churn_analysis
Group by error_group;

-- Top customers
SELECT account_id,mrr_amount,
Rank() over (order by  mrr_amount DESC) as revenue_rank
from churn_analysis;

-- which customers are raising more tickets
Select account_id,total_tickets,
Dense_rank() over (order by total_tickets DESC) as ticket_rank
from churn_analysis;

-- highest churn rate country wise
Select country, COUNT(*) as customers,
 avg(case when churn_flag = 'True' then 1 else 0 end) * 100 as churn_rate
 From churn_analysis
 Group by country
 order by churn_rate desc;
 
--  high-risk customers based on error frequency and support ticket activity
Select account_id,error_count,total_tickets,
    CASE 
        When error_count > 30 and total_tickets > 5 then 'Very High Risk'
        else 'Other'
    end as risk_category
from churn_analysis;