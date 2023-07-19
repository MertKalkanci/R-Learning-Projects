my_list <- list("abc", "saj", "cdb", "dfe", "efg", "hij", "klm", "nop", "qrs", "tuv", "wxy", "z")


Outer_func <- function(x) 
{
  Inner_func <- function(y) 
  {
    for (item in y) 
    {
    print(item)
    }
  }
}
output <- Outer_func() # To call the Outer_func
output(my_list)

Data_Frame <- data.frame (
  Pulse = c(100, 150, 170),
  Training = c(99, 32, 140),
  Duration = c(60, 30, 45)
)

Data_Frame <- rbind(Data_Frame, c(200, 110, 110))

Data_Frame <- Data_Frame[,c(1:2)]

print(Data_Frame)

plot(c(Data_Frame[,c(1)]), c(Data_Frame[,c(2)]), xlab = "X Axis", ylab = "Y Axis", main = "Example Graph", col = "red", lwd = 2,lty = 2, type = "l")
points(c(Data_Frame[,c(2)]), c(Data_Frame[,c(1)]), col = "blue", cex=2)

Data_Cars_mt <- mtcars

plot(Data_Cars_mt[,c(2)], Data_Cars_mt[,c(4)], xlab = "X Cylinder", ylab = "Hp", main = "Example Mtcars", col = "green",cex = 2)

print(rownames(Data_Cars_mt)[which.max(Data_Cars_mt$hp)])