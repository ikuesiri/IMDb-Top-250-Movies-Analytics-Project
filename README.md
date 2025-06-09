# IMDb-Top-250-Movies-Analytics-Project

An end-to-end data pipeline and analytics project to explore IMDb's Top 250 movies using Python, SQL Server, Power Query, and Power BI.

---

## 📌 Objective

To uncover insights and trends from IMDb’s Top 250 movies by scraping, cleaning, enriching, and visualizing data using a full analytics workflow.

---

## 🛠️ Tools & Technologies Used

- **Python** (Selenium, Pandas)
- **Microsoft SQL Server**
- **Power Query**
- **Power BI**
- **Jupyter Notebook**
- **Git & GitHub**

---

## 🔁 Workflow

1. **Data Scraping**: Selenium-based scraper to collect data from IMDb Top 250 page.
2. **Data Cleaning**: Cleaned using `pandas` in Jupyter Notebook, standardized formats and handled missing values.
3. **SQL Storage**: Loaded to MS SQL Server and corrected inconsistent records.
4. **Power Query**: Performed final transformations for analytics.
5. **Power BI Dashboard**: Created interactive dashboards for storytelling.

---

## 📊 Key Insights

- **Christopher Nolan** is the most frequently appearing director.
- **PG-13** is the most dominant MPAA age rating.
- **Russo Brothers** are the highest-grossing directors.
- **'Avengers: Endgame' (2019)** is the top-grossing movie.

---

## 📷 Screenshots

![Dashboard Page 1](screenshots/dashboard_page1.png)  
![Dashboard Page 2](screenshots/dashboard_page2.png)

---

## 📂 Project Structure

IMDb-Top-250-Analytics/
├── imdb_top_250_scraper.py               # Selenium script for web scraping
├── imdb_top_250.csv                      # Raw scraped data
├── imdb_cleaned.csv                      # Data after cleaning in Pandas
├── imdb_final_power_query.csv            # Final version used in Power BI
├── imdb_cleaning_notebook.ipynb          # Jupyter Notebook for cleaning & SQL loading
├── sql_script.sql                        # SQL script to create and insert into the DB
├── requirements.txt                      # Python dependencies (e.g., selenium, pandas)
├── .gitignore                            # Git ignore rules
├── README.md                             # Project documentation
├── IMDb_Top_250_Project_Report.pptx      # Initial project report
├── IMDb_Top_250_Project_Report_Updated.pptx  # Final polished report
├── screenshots/                          # Supporting visuals
│   ├── dashboard_page1.png               # Page 1 of Power BI dashboard
│   ├── dashboard_page2.png               # Page 2 of Power BI dashboard
│   └── power_query_steps.png             # Screenshot of Power Query transformation steps
└── .                                     # (optional) .pbix file for Power BI


