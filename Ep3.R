# Load libraries
library(MASS)  # For the Boston dataset

# Load the Boston housing dataset
data(Boston)

# View the first few rows of the dataset
head(Boston)

# Fit multiple linear regression model
model <- lm(medv ~ ., data = Boston)

# Print summary of the model
summary(model)

# Predict using the model
# For example, let's predict the median house value (medv) for the first 5 observations
new_data <- Boston[1:5, ]  # Using the first 5 observations for prediction
predicted_values <- predict(model, newdata = new_data)

# Print predicted values
print(predicted_values)
