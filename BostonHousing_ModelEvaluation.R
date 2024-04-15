# Load the Boston Housing dataset
library(MASS)  # Required for the dataset
data(Boston)

# Create a data frame from the dataset
boston_df <- data.frame(Boston)

# View the structure of the dataset
str(boston_df)

# Split the data into training and testing sets
set.seed(123)  # Set seed for reproducibility
train_index <- sample(1:nrow(boston_df), 0.7 * nrow(boston_df))  # 70% for training
train_data <- boston_df[train_index, ]
test_data <- boston_df[-train_index, ]

# Build a linear regression model
lm_model <- lm(medv ~ ., data = train_data)  # 'medv' is the target variable

# Print the summary of the model
summary(lm_model)

# Make predictions on the test set
predicted <- predict(lm_model, newdata = test_data)

# Evaluate the model
mse <- mean((predicted - test_data$medv)^2)  # Mean Squared Error
rmse <- sqrt(mse)  # Root Mean Squared Error
r_squared <- summary(lm_model)$r.squared  # R-squared value

# Print the evaluation metrics
cat("Mean Squared Error (MSE):", mse, "\n")
cat("Root Mean Squared Error (RMSE):", rmse, "\n")
cat("R-squared:", r_squared, "\n")

# Plot a scatterplot of actual vs predicted values
plot(test_data$medv, predicted,
     xlab = "Actual Values",
     ylab = "Predicted Values",
     main = "Actual vs Predicted")
abline(0, 1, col = "red")  # Add a 45-degree reference line

# Plot residuals vs fitted values
plot(lm_model, which = 1)

# Create a histogram of residuals
hist(residuals(lm_model), main = "Histogram of Residuals")

# Create a Q-Q plot for normality checking
plot(lm_model, which = 2)





