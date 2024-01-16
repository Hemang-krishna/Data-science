print(1:5)

a =seq(1,10,by=2)
print(a)

b =rep(1,10)
print(b)

c =rep(1:5,5)
c

print('Welcome BRO')

#create a vector
d <- c(7,8,9) #d = c(7,8,9) (or) c(7,8,9) -> d
d
class(d)
e <- c(1,2,3,'a','b','c')
class(e)
e
f <- c(1L,2L,3L,4.5,5.5,6.5)
class(f)
f
g <- c(1L,2L,3L)
class(g)
g
h <- 5+9i
i = 1
class(h)#complex
h

#Data frame
i <- data.frame(gender = c('male','female','others'), height = c(175,160,170), weight=c(93,67,81), age=c(64,38,42))
class(i)
i
View(i)
i[1]

#accessing elements,row and locums of a datafram
i[1,2]
c(i[c(1,2), c(2,3)]) -> j
View(j)
i[, c(2,3)] #blank row = all rows
i$gender
i$height
i$gender[2]
