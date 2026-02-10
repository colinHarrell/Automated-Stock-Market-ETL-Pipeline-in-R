library(quantmod)

msft_daily <- dailyReturn(Cl(MSFT))
goog_daily <- dailyReturn(Cl(GOOG))
aapl_daily <- dailyReturn(Cl(AAPL))
