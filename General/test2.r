info_list2 <- list( 
  Megan = list(Jersey = 1363, color = "green"),
  Janet = list(Jersey = 6729, color = "green"),
  Tina = list(Jersey = 7501	, color = "orange")
  )
print(info_list2)

race_results <- c("Gi", "Francesca", "Lea", "Vivian", "Jessica", "Esther", "Mary", "Yasmina", "Megan", "Janet", "Tiffany", "Kishan", "Feng", "Z", "Tina")

# write find_place() here:
find_place <- function(name)
{
  a <- which(race_results == name)
  return <- a
}

print(find_place("Gi"))
