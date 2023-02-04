<h1 align="center">Sales insights</h1>
<h2 align="center">A picture is worth a thousand words</h2>
<p align="center">
<img src ="https://github.com/BentarHamza/SalesInsights/blob/main/photo/data-driven_sales.jpeg" width ="600" height = "400">
</p>

--------------------------------
<h1 align="center">SUMMARY</h1>

## I. Introduction 
## II. Architecture 
## III. Data Analysis using SQL 
## IV. Data visualisations using POWER BI : 

---------------------------

> __Note__
> About dataset.
> 
>The data used in this project is based on  <a href="https://github.com/codebasics/DataAnalysisProjects/blob/master/1_SalesInsights/db_dump_version_2.sql">codebasics data</a> and modified by me to be a simulation of company operatig in France. 

# I. Introduction :

In this work we sumilate a company wich supplies computers hardware ans peripherals to clients (stores) across France, this company has a head office in Paris and has a lot of regional offices throughout France. 

Our Sales Director is facing a lot of chalenges: 
- the marking is growing dynamically so tracking sales is a real problem. 
- He has issues with the insight of bussiness in different region (The situation is that he calls his local regional manager and the information is verbal. and the regional managers try to paint a rosy picture of bussiness).
- The sales manager doesnt have the full picture to make data-driven decisions.

**Purpose :** 

To unlock sales insights that are not visible before for sales team fot decision support & automate them to reduced manual time spent in data gathering

**End result :**

An automated dashbord providing quick & latest insghits in order to support data driven decision making 

**Success Critearia :**

- Dashboard(s) uncovering sales insights with latest data available. 
- Sales team able to take better decisions & prove 10% cost saving of total spend
- Sales Analysts stop data gathering manually in order to save 20% of their bussiness time and reinvest it in value added activity 
In our case you can consider that we will do the work in a dirty way by working in operational database (Online Transaction Processing). But in real world, professionals work in Online Analytical Processing databases. 

# II. Architecture: 
We simulate a data warehouse in star schema that separates business process data into facts, which hold the measurable, quantitative data about a business, and dimensions which are descriptive attributes related to fact data.

<p align="center">
<img src ="https://github.com/BentarHamza/SalesInsights/blob/main/photo/dataWareHouse.PNG">
</p>

<p align="center">
<img src ="https://github.com/BentarHamza/SalesInsights/blob/main/photo/Capture.PNG">
</p>

# III. Data Analysis using SQL :

In this part we try to answer some questions using SQL in odrer to understand sales in this company: 

- What is the revenue by markets ? 

<p align="center">
<img src ="https://github.com/BentarHamza/SalesInsights/blob/main/photo/question1.PNG">
</p>

- What is the sales quantity by markets ? 

<p align="center">
<img src ="https://github.com/BentarHamza/SalesInsights/blob/main/photo/question2.PNG">
</p>

- What is Revenue of top 5 customers ? 

<p align="center">
<img src ="https://github.com/BentarHamza/SalesInsights/blob/main/photo/question3.PNG">
</p>

- What is sales quantities of top 5 customers ? 

<p align="center">
<img src ="https://github.com/BentarHamza/SalesInsights/blob/main/photo/question4.PNG">
</p>

- What is Revenue trend ? 

<p align="center">
<img src ="https://github.com/BentarHamza/SalesInsights/blob/main/photo/question5.PNG">
</p>

- What is profit margin percentage by market ? 

<p align="center">
<img src ="https://github.com/BentarHamza/SalesInsights/blob/main/photo/question6.PNG">
</p>

- What is revenue contribution of every maket ? 

<p align="center">
<img src ="https://github.com/BentarHamza/SalesInsights/blob/main/photo/question7.PNG">
</p>

- What is profit margin contribution of every maket ? 

<p align="center">
<img src ="https://github.com/BentarHamza/SalesInsights/blob/main/photo/question8.PNG">
</p>

- What is revenue contribution of every customer ? 

<p align="center">
<img src ="https://github.com/BentarHamza/SalesInsights/blob/main/photo/question9.PNG">
</p>

- What is revenue contribution of every customer ? 

<p align="center">
<img src ="https://github.com/BentarHamza/SalesInsights/blob/main/photo/question10.PNG">
</p>

What is margin trend ?

<p align="center">
<img src ="https://github.com/BentarHamza/SalesInsights/blob/main/photo/question11.PNG">
</p>

# IV. Data visualisations using POWER BI : 

our animated dashboard is available <a href="https://app.powerbi.com/groups/me/reports/ba6cd39d-ff87-4b12-b74c-944f49e61cc4/ReportSection"> here</a>. you need an autorisation to read it but dont hesitate to ask for permission to see final work.

I begin by making a overall insights by analysing market revenue

<p align="center">
<img src ="https://github.com/BentarHamza/SalesInsights/blob/main/photo/Sales%20Insights_001.png">
</p>

And after we dive into more details by analysing market profit margins


<p align="center">
<img src ="https://github.com/BentarHamza/SalesInsights/blob/main/photo/Sales%20Insights_002.png">
</p>

I add a slicer to define a performance threshold for profit margins of every market and customer with the intention of giving Sales Director a tool to do data driven decision.

<p align="center">
<img src ="https://github.com/BentarHamza/SalesInsights/blob/main/photo/Sales%20Insights_003.png">
</p>



