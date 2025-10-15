MyFirstVector <- c(3,45,56,732)
MyFirstVector
is.numeric(MyFirstVector)
is.integer(MyFirstVector)
is.double(MyFirstVector)

V2 <- c(3L,12L,243L,0L)
is.numeric(V2)
is.integer(V2)
is.double(V2)

V3 <- c("a","B23","Hello",7)
V3
is.character(V3)
is.numeric(V3)

seq() #sequence - like ':'
rep() #replicate

seq(1,15)
1:15

seq(1,15,2)
z <- seq(1,15,4)
z

rep(3,50)
d <- rep(3,50)
rep("a",5)

x <- c(80,20)
y <- rep(x,10)
y

x <- c(1,123,534,13,4)  
y <- seq(201,250,11)    
z <- rep("Hi!",3)       

w <- c("a","b","C","d","e")
w

w[1]
w[2]
w[3]
w[-1]
v <- w[-3]
w[1:3]
w[3:5]
w[c(1,3,5)]
w[c(-2,-4)]
w[-3:-5]
w[1:2]

x <- rnorm(5)
x

for(i in x){
  print(i)
}

print(x[1])
print(x[2])
print(x[3])
print(x[4])
print(x[5])

for(j in 1:5){
  print(x[j])
}


N <- 100
a <- rnorm(N) 
b <- rnorm(N)

c <- a * b

d <- rep(NA,N)
for(i in 1:N){
  d[i] <- a[i] * b[i]
}
