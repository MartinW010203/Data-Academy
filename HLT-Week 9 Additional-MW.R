# Week 9  TTA
# Additional Learning Tasks

#Write an R Progam for 3 vectors with 5 integers. 
#Combine to create a 3x5 matix/ Print content and plot graph with labels
#install.packages("tidyverse")
require(ggplot2)
require(reshape2)
#library('plot.matrix')
#require(plot.matrix)

print(" Task 1 Started")
array1 = c( 1, 2,3,4,5)
array2 = c( 6,7,8,9,10)
array3 = c( 11,12,13,14,15) 

#finalarray = array( c (array1, array2, array3),dim = c(3,5,1))

#print(final array)

column.names <- c("col1", "Col2", "Col3", "Col4", "Col5")
row.names<-c("Row1", "Row2", "Row3")
matrix.names <-c("Matrix1")

df = data.frame(array1, array2, array3)

finalarray = array( c (array1, array2, array3),dim = c(3,5,1), dimnames = list(row.names,column.names,matrix.names))
print(finalarray)

print( " Second print")
print(df)



plot(df[1:3], main = "Matrix Plot - MW")

print(" Task 1 Completed")

###############################################################################

print("Task 2 Started")


Name <- c(" Person 1", "Person 2", "Person 3", "Person 4", "Person 5")

Age <- c( 21, 32, 43, 54,65)

Role <- c( "Trainee", "Graduate", "Associate", "Manager", "Team Leader")

LengthService <-c(5, 10, 15, 20,25)

df2 <-data.frame(Name, Age, Role, LengthService)

print(df2)

print("Task 2 Completed")

################################################################################

#Task 3
#Import the GGplot2 library and plot a graph using the qplot function. 
#X axis in the sequence 1:20 amd the Y Axis is x power 2
#Label the graph appropriately. install.
print("Task 3 Started")

#install.packages("ggplot2", dependencies = TRUE)

Xarray = array(c(1:20),dim =c(1,20,1))
print(Xarray)
df3 = data.frame(Xarray)

a <- 1:20
b <- a^2

print(a)
print(b)

qplot(a,b, main = " MY Plot of power values - MW", xlab = "X Axis", ylab = "Y Axis")

print("Task 3 Completed")

################################################################################
# Task 4
#Create a simple bar plot of five subjects

# Use 7 parameters to make sense of the graph

max.temp <- c(22, 27, 26, 24, 23, 26, 28)

barplot(max.temp,
        main = "Maximum Temperatures in a Week",
        xlab = "Degree Celsius",
        ylab = "Day",
        names.arg = c("Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"),
        col = "darkred",
        horiz = TRUE)


print("Task 4 completed")


###############################################################################

#Task 5
# Write a R program to take an input from the user (name and age) and display the values
print("Start Task 5")
askeUser <-function()
{

name <- readline(prompt=" Please enter your name: ")
age <-readline(prompt="Please enter your age:")
age <-as.integer(age)
 if (is.na(age)){
   age <-readinteger()
   return(age)
   
}

print("Thank you for your responses. You stated")

print(name)
print(age)

}

print(askeUser())

print("Task 5 Completed")

################################################################################


# Task 6

# Create a sequence of number from 20 to 50
#Find the mean of the numbers
#Find the sum of the numbers
print("Task 6")
a <- c(20:50)

print(a)

result.mean <- mean(a,na.rm = FALSE)
print(result.mean)

result.sum<-sum(a)
print(result.sum)

print("Task 6 Completed")


###############################################################################

#Task 7

#Create a vector which contains 10 random integer from -50 and + 50


print("Task 7 Started")


V <-runif(10,-50,50)
print(V)



print("Task 7 complete")


################################################################################
