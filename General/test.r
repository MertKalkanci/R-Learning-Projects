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
  Pulse = list(100, 150, 120),
  Training = list("Strength", "Stamina", "Other"),
  Duration = list(60, 30, 45)
)

print(Data_Frame)

New_row_DF <- rbind(Data_Frame, c("tada", 110, 110))

print(New_row_DF)
