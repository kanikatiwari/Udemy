library('ggplot2')
library('ggplot2movies')
library('ggthemes')
as.table(mpg)
head(mpg)
?mpg

theme_set(theme_gray())

#Q1. Histogram of hwy mpg values

ggplot(mpg, aes(x=hwy)) + geom_histogram(bins=20, fill='red', alpha=0.5)

#Q2. BarPlot of car counts per manufacturer with color fill defined by cyl count

ggplot(mpg, aes(x=manufacturer)) + geom_bar(aes(fill=factor(cyl))) + theme_gdocs()

#Q3. Switching dataset to txhousing

head(txhousing)

#Q4. Scatterplot

df=txhousing
ggplot(df, aes(x=volume, y=sales)) + geom_point(color='blue', alpha=0.5)
ggplot(df, aes(x=volume, y=sales)) + geom_point(aes(color=factor(year)), alpha=0.5)

#Q4. add smooth fit line

p1=ggplot(df, aes(x=sales, y=volume)) + geom_point(aes(color=factor(year)), alpha=0.5)
(p1+ geom_smooth(color='red'))
(ggplot(df, aes(x=sales, y=volume)) + geom_point(color='blue', alpha=0.5) + geom_smooth())

?txhousing
