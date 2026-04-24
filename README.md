# Customer Churn Analysis & Driver Investigation

## OVERVIEW
Customer churn is a major issue for subscription-based businesses because it directly affects revenue and growth. 
This project conducts a complete churn analysis using SQL, Python, and Power BI to identify factors that influence customer churn. 
A key finding of this project is that internal product and operational metrics do not significantly explain churn behavior in the dataset.

## BUSINESS PROBLEM
For subscription-based businesses, customer churn is a big problem because it affects revenue, growth, and long-term customer relationships. A high churn rate not only lowers the lifetime value of a customer, but it also makes it more expensive to get new customers to replace the ones who left.
The business is losing a moderate level of customers in this case, but the reasons for this are not clear. People often think that problems with product use, service quality, or operations can cause churn, but there is no clear proof of which factors are to blame.This lack of clarity makes it hard for decision-makers to know where to put their efforts to keep customers—whether it's on improving the product experience, improving customer support, or changing overall business strategies. So, a data-driven analysis is needed to look at customer behavior, operational metrics, and segmentation patterns in a systematic way to find useful information and help make smart business decisions.

## OBJECTIVE
- Extract and transform data using SQL.
- Perform EDA using Python to compare churned vs active users.
- Analyze key factors like usage, errors,subscriptions and support tickets.
- Segment customers based on plan and behavior.
- Track KPIs such as churn rate and engagement.
- Build an interactive Power BI dashboard.
- Generate insights to support retention decisions.

## DATASET DESCRIPTION
The dataset is sourced by Kaggle (Ravenstack SaaS Churn dataset) and used for analytical and educational purposes.
- **Data Source**
- Dataset obtained from:https://www.kaggle.com/datasets/rivalytics/saas-subscription-and-churn-analytics-dataset

The dataset was originally stored across multiple tables (customer, usage, subscription,tickets and churn events) connected by a common key account_id and subscription id.Since the usage data did not contain account_id directly, it was first linked to the subscription table using subscription_id, and then mapped to customers via account_id. Using Python (Pandas), these tables were merged into a single dataset.
Data cleaning steps included removing duplicates, handling missing values, and correcting data types.

The final dataset is a structured, analysis-ready table used for SQL queries and Power BI visualization.
The final dataset includes:
- account_id              
- account_name            
- industry                
- country                
- plan_tier               
- usage_count           
- error_count             
- total_tickets           
- avg_resolution_time     
- avg_satisfaction        
- mrr_amount             
- reason                 
- feedback                
- churn_flag                 
- error_rate              
- ticket_rate             
- engagement_level 

## TOOLS & TECHNOLOGIES
- SQL → Data querying, aggregation, segmentation
- Python (Pandas, Seaborn, Matplotlib) → Data cleaning, EDA, feature engineering
- Power BI → Dashboard creation, KPI tracking, storytelling

## METHODOLOGY
- Data collection:Collected information from several tables, such as customer, subscription, usage, and tickets.
- Data Preparation(PYTHON):Used Pandas to combine tables (subscription_id → account_id),Removed duplicates, dealt with missing values, and fixed data types ,Used groupby to combine usage data into one dataset,Use seaborn, correlation matrix and heatmap to visualize data.
- Data Analysis(SQL):Used queries to find out the churn rate and customer groups and used grouping and filtering to look at how people acted to gain business insights.
- Visualization(POWER BI):Created an interactive dashboard with KPIs and churn data and added filters for country, plan, and industry.
- Insight Generation:Making new ideas, compared key metrics for churned and active users and found patterns that help businesses make decisions.

## KEY ANALYSIS STEPS
- Compared churned vs active users across key metrics: usage, errors,revenue,feedback and support tickets.
- Tested hypotheses on potential churn drivers (e.g., higher errors, increased support interactions,plan tier, usage).
- Created normalized metrics such as error rate to refine analysis.
- Validated patterns using EDA and customer segmentation.
- Feedback and reason-based analysis

## KEY INSIGHTS
- This project offers a thorough examination of customer churn utilizing a polished, production-ready dataset. The analysis shows a **moderate churn rate (~22%)**, which means that customers are leaving at a steady rate and that proactive retention strategies are needed to protect long-term revenue.
- Interestingly, traditional behavioral metrics like **product usage, system errors, and support interactions show little difference between users who left and those who stayed**, which means that observable engagement patterns don't seem to be the main reason for churn.
- Churn has a direct effect on recurring revenue from a business point of view, so it is very important to keep an eye on it. Churn also differs by **industry and geographic region**, which means that retention strategies should be **specific to each segment** instead of being the same for all.
- The analysis also shows that support demand is not evenly spread out, with a small group of customers putting a lot of strain on support resources. This points to chances for operational optimization.
- High-value customers have been found based on how much money they bring in, which makes it possible to use targeted retention strategies. Risk segmentation also lets you flag customers who make more mistakes and need more support early on, so you can take action before they get worse.
- Lastly, qualitative insights like customer feedback and worries about prices are better signs of churn than just numbers. This shows how important it is to combine data-driven analysis with customer sentiment to get a better picture of churn.

## INSIGHT INTERPRETATION
Despite analyzing multiple internal metrics, no strong relationship was found between product usage and churn.
This suggests that churn is influenced more by:
- Pricing perception
- Customer expectations
- External market factors

## DASHBOARD
The Power BI dashboard includes:

- KPI metrics (Total Customers, Churn Rate, Avg error count,Avg support tickets)
- Behavior analysis (usage, errors, tickets)
- Segmentation (industry, country, plan tier)
- Revenue and churn comparison
- Churn reasons and customer feedback
## Overview Dashboard


<img width="1200" height="682" alt="image" src="https://github.com/user-attachments/assets/a85c6a31-0fe6-41a4-8a71-899033b60bf3" />



## Behavior & Insights Dashboard

<img width="1171" height="647" alt="image" src="https://github.com/user-attachments/assets/45c94f83-5c3f-4c1b-a0d2-e23b5ee41ceb" />


  
## RECOMMENDATIONS

* **Re-evaluate Pricing Strategy:** Set prices based on how much customers think they are worth to lower churn caused by worries about cost.

* **Focus on High-Value Customers:** To protect recurring revenue, put more effort into keeping your most profitable customers.

* **Use Customer Feedback:** Look at feedback and reasons for leaving to find areas where the product could be better and gaps in it.

* **Do Customer Research:** Use surveys and interviews to find out what outside factors are causing people to leave.

* **Keep an Eye on High-Risk Groups:** Keep an eye on customers who make a lot of mistakes and need help so you can step in early.

## CONCLUSION

This project demonstrates that internal product usage metrics don't have a big effect on churn; instead, customer perception and outside factors do.

The analysis shows how important it is to use both quantitative and qualitative data to understand how customers act.

