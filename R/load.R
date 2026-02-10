install.packages(c("DBI", "RSQLite"))

library(DBI)
library(RSQLite)
library(quantmod)

db_path <- "data/processed/market_data.sqlite"

con <- dbConnect(
  RSQLite::SQLite(),
  dbname = db_path
)

symbols <- c("MSFT", "GOOG", "AAPL")

for (sym in symbols) {
  prices <- get(sym)
  
  df <- data.frame(
    date = index(prices),
    coredata(prices)
  )
  
  table_name <- paste0(tolower(sym), "_prices")
  
  dbWriteTable(
    con,
    name = table_name,
    value = df,
    overwrite = TRUE
  )
}

dbDisconnect(con)

con <- dbConnect(SQLite(), db_path)

dbListTables(con)
head(dbReadTable(con, "msft_prices"))
head(dbReadTable(con, "goog_prices"))
head(dbReadTable(con, "aapl_prices"))

dbDisconnect(con)
