#1
set.seed(12) # to be reproducible
A = matrix(data = runif(n = 1:500), nrow = 50, ncol = 10)
colnames(A)= paste("lake",1:10,sep = "_")
# mean of a colum by position
mean(A[,3]) # or
mean(A[,9])
# get mean of all columns in a df or matrix
colMeans(A)
# vs 1 with for loop vs 1 step by step
# Extract the number of columns
# Initialize your mean vector (this will make the loop run much faster)
column_means <- vector(mode = "numeric", length = ncol(A))
# Now loop through each column
for (i in 1:ncol(A)) {
  column_means[i] <- mean(A[[i]])
}
#2
names(column_means) <- colnames(A)
column_means
y2<-numeric()
for (i in c(1:10)){
  y1<-mean(A[,i])
  y2<-c(y2,y1)
}
names(y2)<-colnames(A)

print (y2)


#3
Fibonacci <- numeric(30)
Fibonacci[1] <- Fibonacci[2] <- 1
for(i in 3:30) Fibonacci[i] <- Fibonacci[i-2] + Fibonacci[i-1]
print("First 30 Fibonacci numbers:")
print(Fibonacci)

#4
top105 = readLines("http://www.textfiles.com/music/ktop100.txt")
top105 = top105[-c(64, 65)] # missing No. 54 and 55
newstring1 = gsub("[:punct:]"," ",top105)
newstring2 = gsub("[A-z]"," ",newstring1)
newstring3 = gsub("[:blank:]", " ", newstring2)
newstring2



