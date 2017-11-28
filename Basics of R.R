##Arithmetic in R
1+2
100+12
5-3
5 / 2

#to get the remainder
5%% 2
10 %% 8

##Variables in R

# hashtag helps to put comment
print('hello')
variable= 100
variable
(bank=1000)

#correct method
bank.account=100
#bad methods
bankAccount=100
bank_account=100

#to clear console== Ctrl + L

deposit=20
bank.account=bank.account + deposit
bank.account

## R basic data type

#Numeric data type
2.2
a=2.2
5
7

#Logical- True or False

TRUE
T
F
a=T
a
FALSE

#Charachters- stings- text

'hello'
a='hello'
b="hello"
a
b

#to identify the class of variable

class(a)
class(b)
class(12)
class(T)

##Vector Basics
#one dimentional array that can hold numeric,
#character orlogical function, combining it with combining function "c"

nvec=c(1,2,3,4,5)
nvec
class(nvec)
cvec=c('U','S','A')
class(cvec)

v=c(TRUE, 20,40)
v
class(v)

v=c('USA',20,31)
class(v)

temps=c(72,71,68,73,69,75,76)
names(temps)=c('Mon','Tue','Wed','Thus','Fri','Sat','Sun')
temps

days=c('Mon','Tue','Wed','Thus','Fri','Sat','Sun')
names(temps)=days
temps

#vector operations

v1=c(1,2,3)
v2=c(5,6,7)
v1+v2

sum(v1)
sum.of.vec=sum(v1)
mean(v1)
max(v1)
prod(v1)

#indexing and slicing

v1=c(100,200,300)
v2=c('a','b','c')

#indexing
v2[3]
v1[1]
v1[c(1,2)]
v2[c(2,3)]

#slicing

a=c(1,2,3,4,5,6,7,8,9,10)
a[2:4]
a[7:10]


#indexing elements using names
v=c(1,2,3,4)
names(v)=c('a','b','c','d')
v[2]
v['b']
v[c('c','d','a')]

#using comparison operators
v
v[v>2]
v>2
(my.filter=v>2)
v[my.filter]

##comparison Operators

v
