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
  Pulse = c(100, 150, 120),
  Training = c(99, 32, 52),
  Duration = c(60, 30, 45)
)

Data_Frame <- rbind(Data_Frame, c(100, 110, 110))

Data_Frame <- Data_Frame[c(1:5),]

print(Data_Frame)