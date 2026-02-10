library(quantmod)

symbols <- c("MSFT", "GOOG", "AAPL")

getSymbols(symbols, src = "yahoo")
