library(quantmod)
# Pull data from Yahoo finance 
SP500 = getSymbols('^GSPC', from='2010-01-01', to='2019-12-31', auto.assign = FALSE)
SP500 = na.omit(SP500)
# Select the relevant close price series
SP500_close = SP500[,4]

NASDAQ_Composite = getSymbols('^IXIC', from='2010-01-01', to='2019-12-31', auto.assign = FALSE)
NASDAQ_Composite = na.omit(NASDAQ_Composite)
# Select the relevant close price series
NASDAQ_Composite_close = NASDAQ_Composite[,4]

NASDAQ_100 = getSymbols('^NDX', from='2010-01-01', to='2019-12-31', auto.assign = FALSE)
NASDAQ_100 = na.omit(NASDAQ_100)
# Select the relevant close price series
NASDAQ_100_close = NASDAQ_100[,4]