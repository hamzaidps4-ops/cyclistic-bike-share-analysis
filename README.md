# Cyclistic Bike-Share Analysis: Converting Casual Riders to Annual Members

## 🚴 Executive Summary
This case study is part of the **Google Data Analytics Professional Certificate** capstone project. The goal is to analyze historical bike-share data from Chicago's Cyclistic network to uncover behavioral differences between casual riders and annual members, providing data-backed recommendations to increase annual memberships.

---

## 🛠️ Tech Stack & Methodology
* **Database & Processing:** Microsoft SQL Server (T-SQL) for large-scale data manipulation, validation, and querying (1M+ rows analyzed).
* **Data Visualization:** Tableau Public for exploratory data analysis and interactive executive dashboards.
* **Framework:** Google Data Analysis Life Cycle (Ask, Prepare, Process, Analyze, Share, Act).

---

## 📊 Key Findings
1. **Seasonal Demand Surges:** Casual rider demand spikes dramatically in summer (July) with an 11x increase over winter months, while annual members maintain consistent commuting activity year-round.
2. **Weekly Commute vs. Leisure Split:** 
   * **Annual Members:** Peak usage occurs Tuesday through Thursday during morning/evening commute hours.
   * **Casual Riders:** Peak volume and longest trip durations occur on weekends (Saturday & Sunday).
3. **Equipment Preference:** Over 63% of trips across both user segments utilized **electric bikes**, with casual riders taking longer leisure rides averaging ~29.5 minutes on classic bikes.

---

## 📈 Interactive Dashboard
👉 [View the Live Tableau Dashboard Here](https://public.tableau.com/views/CyclisticBikeShareCaseStudy_17907934402460/Dashboard1?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

![Cyclistic Dashboard](Dashboard%201.png)

---

## 🎯 Business Recommendations
* **Seasonal Summer Pass:** Launch early-bird seasonal passes in May/June targeted at high-volume summer casual riders as a stepping stone to annual commitments.
* **Weekend-Only Membership:** Introduce a discounted weekend tier targeting recreational riders who do not commute on weekdays.
* **Electric Bike Perks:** Offer e-bike unlock fee waivers or bonus riding credits exclusively for annual members to accelerate conversion.

---

## 📁 Repository Structure
* `cyclistic analysis sql.sql` - Complete SQL scripts (data union, cleaning, filtering, and aggregation).
* `Data Analysis Project.pdf` - Formal project charter with SMART objectives.
* `Dashboard 1.png` - Executive Tableau dashboard overview.
* `README.md` - Full project overview and strategic insights.
