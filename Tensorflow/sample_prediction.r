library(tensorflow)
library(reticulate)
library(keras)
library(readr)
library(dplyr)
library(tidyr)
library(ggplot2)

#path <- "C:/Program Files/Anaconda/python.exe"

#virtualenv_create("r-reticulate", python = path)
#install_tensorflow(envname = "r-reticulate")
#install_keras(envname = "r-reticulate")
use_virtualenv("r-reticulate")

# arrange dataframe
df <- read_csv("Tensorflow/Cardiotocographic.csv")

print(head(df))

Y <- df$NSP %>%
    as.numeric() %>%
    as.matrix() %>%
    to_categorical()


X <- df %>% 
    select(-NSP) %>%
    as.matrix() %>%
    normalize()

x_train <- X[1:nrow(df) * 0.9,]
x_test <- X[(nrow(df) * 0.9 + 1):nrow(df),]

y_train <- Y[1:nrow(df) * 0.9]
y_test <- Y[(nrow(df) * 0.9 + 1):nrow(df)]

#model

model <- keras_model_sequential() %>%
    layer_dense(units = 64, activation = "relu", input_shape = c(21)) %>%
    layer_dense(units = 64, activation = "relu") %>%
    layer_dense(units = 3, activation = "softmax")

model %>% compile(
    loss = "sparse_categorical_crossentropy",
    optimizer = optimizer_adam(),
    metrics = "accuracy"
)

summary(model)

history <- model %>% 
    fit(
        x_train, y_train,
        epochs = 10, batch_size = 32,
        validation_split = 0.3
    )

evaluation <- evaluate(model, x_test, y_test)

# show history & evaluation

plot(history, metrics = 'accuracy', method = "base") 


print(evaluation)
