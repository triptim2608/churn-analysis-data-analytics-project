# Customer Churn Analysis & Driver Investigation

## OVERVIEW
Customer churn is a major issue for subscription-based businesses because it directly affects revenue and growth. 
This project conducts a complete churn analysis using SQL, Python, and Power BI to identify factors that influence customer churn. 
A key finding of this project is that internal product and operational metrics do not significantly explain churn behavior in the dataset.

## BUSINESS PROBLEM
For subscription-based businesses, customer churn is a big problem because it affects revenue, growth, and long-term customer relationships. A high churn rate not only lowers the lifetime value of a customer, but it also makes it more expensive to get new customers to replace the ones who left.
The business is losing a lot of customers in this case, but the reasons for this are not clear. People often think that problems with product use, service quality, or operations can cause churn, but there is no clear proof of which factors are to blame.This lack of clarity makes it hard for decision-makers to know where to put their efforts to keep customers—whether it's on improving the product experience, improving customer support, or changing overall business strategies. So, a data-driven analysis is needed to look at customer behavior, operational metrics, and segmentation patterns in a systematic way to find useful information and help make smart business decisions.

## OBJECTIVE
- Extract and prepare data using SQL.
- Perform EDA using Python to compare churned vs active users.
- Analyze key factors like usage, errors,subscriptions and support tickets.
- Segment customers based on plan and behavior.
- Track KPIs such as churn rate and engagement.
- Build an interactive Power BI dashboard.
- Generate insights to support retention decisions.

  ## DATASET DESCRIPTION
The dataset was originally stored across multiple tables (customer, usage, subscription,tickets and churn events) connected by a common key account_id and subscription id.Since the usage data did not contain account_id directly, it was first linked to the subscription table using subscription_id, and then mapped to customers via account_id. Using Python (Pandas), these tables were merged into a single dataset.
Data cleaning steps included removing duplicates, handling missing values, and correcting data types.

The final dataset is a structured, analysis-ready table used for SQL queries and Power BI visualization.
The final dataset includes:
- account_id               
- account_name             
- industry                 
- country                  
- signup_date              
- referral_source          
- plan_tier                
- seats                    
- is_trial                 
- churn_flag               
- total_subscriptions      
- total_tickets            
- churn_date             
- usage_count              
- usage_duration_secs     
- error_count      

## TOOLS & TECHNOLOGIES
- SQL → Data querying, aggregation, segmentation
- Python (Pandas, Seaborn, Matplotlib) → Data cleaning, EDA, feature engineering
- Power BI → Dashboard creation, KPI tracking, storytelling

## METHODOLOGY
- Data collection:Collected information from several tables, such as customer, subscription, usage, and tickets.
- Data Preperation(PYTHON):Used Pandas to combine tables (subscription_id → account_id),Removed duplicates, dealt with missing values, and fixed data types ,Used groupby to combine usage data into one dataset,Use seaborn,coerrelation matrix to visualize data.
- Data Analysis(SQL):Used queries to find out the churn rate and customer groups and used grouping and filtering to look at how people acted to gain business insights.
- Visualization(POWER BI):Created an interactive dashboard with KPIs and churn data and added filters for country, plan, and industry.
- Insight Generation:Making new ideas, compared key metrics for churned and active users and found patterns that help businesses make decisions.

## KEY ANALYSIS STEPS
- Compared churned vs active users across key metrics: usage, errors, and support tickets.
- Tested hypotheses on potential churn drivers (e.g., higher errors, increased support interactions).
- Created normalized metrics such as error rate to refine analysis.
- Validated patterns using EDA and customer segmentation.


  


  

