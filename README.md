# Boston-Housing
Boston Housing Prices - Regression Model Evaluation
Evaluation of the linear regression model is essential to understand its performance and adequacy. The R code provided calculates three main evaluation metrics and generates four diagnostic plots to assess the model. Here's a detailed description of the evaluation:

**Evaluation Metrics:**
- **Mean Squared Error (MSE):** MSE measures the average squared difference between the actual and predicted values. A smaller MSE value indicates better model performance. In this model it is calculated at 23.07
- **Root Mean Squared Error (RMSE):** RMSE is the square root of MSE, making it on the same scale as the target variable. Similar to MSE, a smaller RMSE indicates better model performance. In this model it is calculated at 4.80
- **R-squared:** R-squared measures the proportion of the variance in the target variable that the model explains. An R-squared value closer to 1 indicates better model performance, meaning the model explains a large portion of the variance in the target variable. In this model it is calculated as 73.23

**Diagnostic Plots:**
- **Actual vs Predicted Plot:** This scatterplot shows the actual values against the predicted values. Ideally, the points should lie close to the 45-degree reference line, indicating good model performance.
 ![Image Description](https://github.com/mallelaindira/Boston-Housing/raw/main/Rplot.png)
- **Residuals vs Fitted Values Plot:** This plot helps to check for the presence of heteroscedasticity. If the residuals have a consistent variance across the fitted values, it suggests homoscedasticity, which is desirable. Patterns in the plot, like a funnel or U-shape, might indicate potential issues.
![Image Description](https://github.com/mallelaindira/Boston-Housing/raw/main/Rplot01.png)
- **Histogram of Residuals:** The histogram provides insights into the distribution of residuals. Ideally, the residuals should follow a normal distribution with a mean close to 0.
   ![Image Description](https://github.com/mallelaindira/Boston-Housing/raw/main/Rplot02.png)
- **Q-Q Plot for Normality Checking:** The Quantile-Quantile (Q-Q) plot helps to assess the normality of residuals. If the residuals follow a normal distribution, the points in the Q-Q plot will lie on a straight line. Deviations from this line suggest potential violations of the normality assumption.
 ![Image Description](https://github.com/mallelaindira/Boston-Housing/raw/main/Rplot03.png)

By examining these evaluation metrics and diagnostic plots, you can assess the performance, assumptions, and potential issues related to the linear regression model. Based on the results, you may decide to refine the model further or use it for prediction tasks.
