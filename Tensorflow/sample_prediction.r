library(tensorflow)
library(reticulate)
library(keras)
library(readr)
library(dplyr)
library(tidyr)

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

model <- load_model_hdf5('Tensorflow/simple_prediction_model.h5')

evaluation <- evaluate(model, x_test, y_test)

# show evaluation

print(evaluation)

