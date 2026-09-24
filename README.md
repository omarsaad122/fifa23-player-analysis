# FIFA 23 Player Performance & Value Analysis

A complete data analysis project exploring FIFA 23 player ratings, potential, market value, positions, clubs, and nationalities using **SQL**, **Python**, and **Power BI**.

## 📊 Project Overview

This project analyzes the FIFA 23 player dataset to uncover insights about player performance, growth potential, and market value. The analysis covers:

- Player ratings (Overall & Potential) and growth potential
- Relationship between player rating, age, and market value
- Player distribution by position, club, and nationality
- Data cleaning and duplicate handling

> **Note:** The dataset reflects a snapshot of player stats and market values as of FIFA 23's 2022 release, not current real-world player status.

## 🛠️ Tools & Technologies

- **SQL (SQL Server)** — Data exploration, aggregation, and business-oriented queries
- **Python (Pandas, Matplotlib)** — Data cleaning, exploratory data analysis (EDA), and visualization
- **Microsoft Power BI** — Interactive dashboard and data storytelling

## 🔍 Workflow

1. **SQL** — Explored the raw dataset, checked for duplicates and missing values, and wrote analytical queries (top players by rating/potential/value, club and nationality breakdowns, rating categories using `CASE`, growth potential using calculated columns).
2. **Python** — Loaded and inspected the data with Pandas, removed duplicate rows, calculated a `Growth` metric (`Potential - Overall`), analyzed correlations between key variables, and visualized distributions and relationships with Matplotlib.
3. **Power BI** — Built a two-page interactive dashboard combining KPIs, bar charts, and scatter plots to explore player performance and value from multiple angles.

## 📈 Dashboard Pages

**Page 1 — Overview**
- KPI cards: Total Players, Average Overall Rating, Average Potential
- Players by Position
- Top 10 Clubs by Squad Size
- Top 10 Nationalities

**Page 2 — Player Performance & Value**
- Top 10 Players by Overall Rating
- Top 10 Players by Potential
- Overall Rating vs Player Value
- Age vs Player Value

## 📁 Files in this Repository

| File | Description |
|---|---|
| `FIFA23.csv` | Original raw dataset |
| `FIFA23_Cleaned.csv` | Cleaned dataset (duplicates removed, Growth column added) |
| `SQLQuery1.sql` | SQL queries used for data exploration and analysis |
| `FIFA23_Analysis.ipynb` | Python notebook — data cleaning, EDA, and visualizations |
| `FIFA23_Player_Analysis.pbix` | Power BI dashboard file |

## 💡 Key Insights

- A small group of elite players (Overall 89+) command significantly higher market values, showing a non-linear relationship between rating and value.
- Player market value peaks in the early-to-mid 20s age range and drops sharply for older players.
- Central defenders (CB) are the most common position in the dataset, followed by strikers and attacking midfielders.

## 📬 Contact

**Omar Saad**
[LinkedIn](https://www.linkedin.com/in/omar-saad-154b8b332)
