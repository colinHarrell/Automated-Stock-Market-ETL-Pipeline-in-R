## Stock Market ETL Pipeline in R

### Overview
This project demonstrates an end-to-end ETL pipeline built in R
that ingests stock market data, processes it, stores it in a
relational database, and produces analytical outputs.

### Data Sources
- Yahoo Finance (via quantmod)

### Pipeline Steps
1. Extract stock data from API
2. Transform and normalize datasets
3. Load data into SQLite database
4. Analyze trends and performance

### Technologies Used
- R, tidyverse, quantmod
- SQLite (DBI, RSQLite)
- ggplot2, lubridate

### Future Improvements
- Replace Yahoo Finance with Alpha Vantage API
- Automate daily runs
- Add anomaly detection
