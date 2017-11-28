#GGPLOT

#created by Hadley Wickham
#built on the idea of adding layers
#created for complicated but beautiful visualisation
#use library(ggplot2)
#Layers of ggplot- 1. Data layer 2. Aesthetics 
#3. Geometries 4. Facets 5. Statistics 6. Coordinates

#pl=ggplot(data=mtcars) <- data layer
#pl=ggplot(data=mtcars, aes(x=mpg,y=hp)) <- aesthetics layer
#pl=ggplot(data=mtcars, aes(x=mpg,y=hp)); +geom_point()) <- geometrics layer
#pl=ggplot(data=mtcars, aes(x=mpg,y=hp)); pl+geom_point();pl+facet_grid(cyl~.) <- facet layer
# pl=ggplot(data=mtcars, aes(x=mpg,y=hp)); pl+geom_point(); pl2=pl+facet_grid(cyl~.)+stat_smooth() <- statistics layer
#pl=ggplot(data=mtcars, aes(x=mpg,y=hp)); pl+geom_point(); pl2=pl+facet_grid(cyl~.); pl2+coord_certestian(xlim=c(15,25)) <- Coordinates layer
#pl=ggplot(data=mtcars, aes(x=mpg,y=hp)); pl+geom_point(); pl2=pl+facet_grid(cyl~.); pl2+coord_certestian(xlim=c(15,25)) + theme_bw() <- theme layer

library(ggplot2)
pl=ggplot(data=mtcars,aes(x=mpg,y=hp))
pl+geom_point()          

#cheat sheet for ggplot2
install.packages('ggplot2movies')

##Histogram- single frequency (only x or y)

library(ggplot2movies)

#Data and Aesthetic
colnames(movies)
head(movies)

pl=ggplot(movies,aes(x=rating))

#Geometry layer
#alpha- transperency of plotted data
#theme_update(plot.title = element_text(hjust=0.5)) to bring title in mid
(pl2=pl+ geom_histogram(binwidth=0.1,color='blue', fill='red', alpha=1))

(pl3=pl2 + xlab('Movie Rating')+ ylab('Count')+ ggtitle('MyPlot'))

#for geometric layer- histogram based on the count or current numbers of x and y axis
pl2=pl+ geom_histogram(binwidth=0.1, aes(fill=..count..))

pl3=pl2+ xlab('Movie Rating')+ylab('My Count')
#to bring title in middle
theme_update(plot.title = element_text(hjust=0.5))
pl3+ggtitle('My Plot')


##Scatterplot
library(ggplot2)
df=mtcars
head(mtcars)

#Data and Aesthetics
pl=ggplot(df,aes(x=wt,y=mpg))

#Geometry
print(pl+geom_point(alpha=0.5,size=3))
#or- using other factors for representing graphs
print(pl+geom_point(aes(shape=factor(cyl), color=factor(cyl)),size=3))

print(pl+geom_point(size=3, color='blue'))
print(pl+geom_point(size=3, color='#56ea17'))

#hex color picker- google; pick the code use with # symbol.

#or

pl2=pl+geom_point(aes(color=hp),size=3)

# scale color gradients

pl3= pl2 + scale_color_gradient(low='blue',high='red')
print(pl3)

##  Barplots

df=mpg
head(mpg)
#geometry
pl=ggplot(df,aes(x=class))
(pl+geom_bar())

#adding colors
(pl+geom_bar(aes(fill=drv)))
(pl+geom_bar(aes(fill=drv),position='fill'))
(pl+geom_bar(aes(fill=drv),position='dodge'))

## Boxplot

df=mtcars
head(mtcars)

#general mistakes done 
pl=ggplot(df,aes(x=cyl, y=mpg))
print(pl+geom_boxplot())

#correct way (in boxplots x axis should not have a continous value)
#commonly used for stock prices representations
#should not use many layes to chart
pl=ggplot(df,aes(x=factor(cyl), y=mpg))
print(pl+geom_boxplot())

#adding coordinate flip
print(pl + geom_boxplot() + coord_flip())

# color the graph
print(pl+geom_boxplot(fill='blue'))
print(pl+geom_boxplot(aes(fill= factor(cyl))))

#theme layers
print(pl+geom_boxplot(aes(fill= factor(cyl))) + theme_dark())

## 2 Variable Ploting

library(ggplot2movies)

pl=ggplot(movies, aes(x=year, y=rating))
(pl+ geom_bin2d())

# adding different color scale
(pl+ geom_bin2d()+ scale_fill_gradient(high='purple', low='cyan'))

# controlling bin sizes
(pl+ geom_bin2d(binwidth=c(3,1))+ scale_fill_gradient(high='purple', low='pink'))
#controlling shapeof bin
(pl+ geom_hex(binwidth=c(3,1))+ scale_fill_gradient(high='purple', low='pink'))

install.packages('hexbin')
(pl+ geom_hex(binwidth=c(3,1))+ scale_fill_gradient(high='red', low='blue'))

#2d density plot
(pl+ geom_density2d())

## Coordinates and Faceting
# coordinate- resize plot
#faceting- place several plots along each other

(pl= ggplot(mpg,aes(x=displ, y=hwy))+ geom_point())

#to fix x and y limits
(pl2=pl + coord_cartesian(xlim=c(1,4), ylim=c(15,30)))

# set aspect ratios for charts (default aspect ratio= 1:1)
(pl3=pl + coord_fixed(ratio = 1/3))

# facet layer facet_grid(y ~ x)
help('facet_grid')
head(mpg)
print(pl + facet_grid(. ~ cyl))
print(pl + facet_grid(drv ~ .))
print(pl + facet_grid(drv ~ cyl))
print(pl + facet_grid(class ~ cyl))

## Themes

(pl=ggplot(mtcars, aes(x=wt, y=mpg)) + geom_point())

#set theme to plot
theme_set(theme_dark())
 
(pl=ggplot(mtcars, aes(x=wt, y=mpg)) + geom_point())

#more themes (and we can also create own themes-own)
install.packages('ggthemes')
library(ggthemes)
(pl=ggplot(mtcars, aes(x=wt, y=mpg)) + geom_point() + theme_economist())
(pl=ggplot(mtcars, aes(x=wt, y=mpg)) + geom_point() + theme_wsj())


