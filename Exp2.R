# Generate random data
set.seed(123)  # for reproducibility
x <- 1:100
y <- 3 * x + rnorm(100, mean = 0, sd = 10)  # y = 3*x + noise

# Plot the data
plot(x, y, main = "Scatterplot of x vs y", xlab = "x", ylab = "y")

# Fit linear regression model
model <- lm(y ~ x)

# Print summary of the model
summary(model)

# Plot the regression line
abline(model, col = "red")

# Predict using the model
new_x <- 101:110  # new values of x for prediction
predicted_y <- predict(model, data.frame(x = new_x))

# Print predicted values
print(predicted_y)
