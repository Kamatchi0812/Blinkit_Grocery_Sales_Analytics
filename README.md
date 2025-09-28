# Blinkit Grocery Sales Analysis

## Objective
Analyze Blinkit (formerly Grofers) grocery sales data to uncover trends in item sales, outlet performance, and customer preferences, and provide insights for better inventory, marketing, and store operations.

---

## Description
The project covers:
- **Data Import**: Excel data imported into MySQL via Python (Pandas + SQLAlchemy).  
- **EDA & Cleaning**: Handling missing values, feature engineering, and exploring patterns.  
- **Visualization**: Charts (bar, line, heatmap, boxplot) to highlight sales trends, top categories, and outlet performance.  
- **Output**: Cleaned dataset exported to Excel for reporting and dashboarding.  

Notebooks:  
- `importing.ipynb` → data import to MySQL  
- `exploratory_cleaning.ipynb` → EDA, cleaning, visualizations  

---

## Key Insights
- **Top Categories**: Fruits & Vegetables, Snack Foods, Household items drive the most sales.  
- **Fat Content**: Low-fat items outperform regular-fat items.  
- **Outlet Performance**: Supermarket Type 1 (especially medium-sized) leads in sales.  
- **Correlations**: Item weight links positively with sales; visibility has negligible impact.  
- **Sales Distribution**: Skewed — few items generate majority revenue.  

---

## Tools Used
- **Python (3.13)** → Pandas, Matplotlib, Seaborn, SQLAlchemy, PyMySQL  
- **Database** → MySQL  
- **Environment** → Jupyter Notebook  
- **Visualization** → Power BI (dashboards)  
- **Data Source** → Excel file (`BlinkIT Grocery Data.xlsx`)  

---

## Improvements
- Forecasting models (Scikit-learn / ML)  
- Interactive dashboards (Streamlit/Dash)  
- Automated ETL pipelines (Airflow)  
- Deployment with Docker + Cloud  
