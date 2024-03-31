# Sales-forecasting-using-additive-and-multiplicative-seasonal-models-and-selecting-the-best-using-R
## Forecasting Monthly Sales with Seasonal Trend Models (R)

**Project Description:**

This project analyzes and forecasts monthly sales data for a manufacturing company over eight years using seasonal trend models in R. We'll compare the performance of additive and multiplicative models to determine the best approach for forecasting future sales.

**Tasks:**

1. **Data Import:**
    - Load the monthly sales data (in millions of dollars) from the provided Excel file (HW2.xlsx) or CSV file (HW2_CSV.CSV) using R libraries like `readxl` or `readr`.
2. **Initial Level, Trend, and Seasonality:**
    - Estimate the initial level (L0), trend (T0), and additive seasonal factors for each month using methods like classical decomposition.
3. **Additive Model with Smoothing:**
    - Implement an additive trend-seasonal model with user-defined smoothing constants (α, β, γ).
    - Calculate Mean Percentage Error (MPE), Mean Absolute Percentage Error (MAPE), Root Mean Square Error (RMSE), and other accuracy metrics to evaluate the model's performance.
    - Forecast sales for the next 12 months using the fitted model.
4. **Multiplicative Model with Smoothing:**
    - Repeat steps 2 and 3 for a multiplicative trend-seasonal model with the same smoothing constants.
    - Compare the accuracy of the additive and multiplicative models based on MPE, MAPE, RMSE, and other metrics.
    - Generate a forecast for the next 12 months using the chosen model.
5. **Automated Model Selection in R:**
    - Utilize R packages like `forecast` or `stsm` to identify the best seasonal trend model (additive or multiplicative) with smoothing constants automatically selected within a specified range (e.g., 0.1 to 0.5).
    - Assess the accuracy of the automatically selected model using the same metrics as before.
    - Provide a forecast for the next 12 months based on this optimized model.

**Output:**

- Descriptive statistics of the sales data.
- Initial estimates of level, trend, and seasonal factors for both models (additive and multiplicative).
- Calculated accuracy measures (MPE, MAPE, RMSE, etc.) for each model.
- Time series plots comparing actual sales, fitted values, and forecasts for the next 12 months (additive, multiplicative, and optimized models).
- Discussion on the performance of each model and the limitations of forecasting.

**Data Source:**

- Monthly sales data from HW2.xlsx  



**Interpretation of Accuracy Measures:**

- MPE, MAPE, and RMSE provide insights into the average prediction error and its magnitude relative to actual sales. Lower values indicate better forecasting accuracy.

**Limitations of Forecasts:**

- Forecasts become less reliable as they extend further into the future.
- Unforeseen events or changes in market conditions can impact the accuracy of forecasts.

