
Q1
2^5
ans=32

Q2
stock.prices=c(23,27,23,21,34)
stock.prices

Q3
days=c('Mon','Tue','Wed','Thus','Fri')
names(stock.prices)=days
stock.prices

OR

names(stock.prices)=c('Mon','Tue','Wed','Thus','Fri')
stock.prices

Q5
mean(stock.prices)
25.6


Q6
stock.prices>23
over.23=stock.prices>23
over.23

Q7
stock.prices
stock.prices[stock.prices>23]
stock.prices[over.23]

Q8 
max(stock.prices)
stock.prices[stock.prices==34]
#or
stock.prices[stock.prices==max(stock.prices)]
