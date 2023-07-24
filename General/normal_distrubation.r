library(ggplot2)

my_data <- dnorm(1:200,100,30)
df <- data.frame(
    Xval = c(1:length((my_data))),
    Yval = my_data)

print(head(df))


plot <- ggplot(data = df, aes(x = Xval, y = Yval)) + 
  geom_line(aes(color = Xval))+
  labs(title = "Normal Distribution", x = "X", y = "Frequency", color = "X Value")

show(plot)