library(ggplot2)

my_data <- dnorm(1:200,100,30)
df <- data.frame(
    Xval = c(1:length((my_data))),
    Yval = my_data)

print(head(df))


plot <- ggplot(data = df, aes(x = Xval, y = Yval)) + 
  geom_point(aes(color = Yval))+
  geom_vline(aes(xintercept = mean(Xval, na.rm = TRUE)), color = "black")+
  labs(title = "Normal Distribution", x = "X", y = "Value", color = "Y Value")

show(plot)