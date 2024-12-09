# Install required packages
install.packages(c("ggplot2", "forecast", "tseries"))

# Load the libraries
library(ggplot2)
library(forecast)
library(tseries)

# Load the built-in AirPassengers dataset
data("AirPassengers")

# Convert the data into a time series object
ts_data <- AirPassengers

# Plot the raw time series
plot(ts_data, main = "AirPassengers Raw Data", xlab = "Year", ylab = "Passengers", col = "blue", lwd = 2)

# Take the first difference
diff_data <- diff(ts_data)

# Plot the differenced data
plot(diff_data, main = "Differenced Time Series", xlab = "Year", ylab = "Differenced Passengers", col = "red", lwd = 2)

# Perform ADF test
adf_test <- adf.test(ts_data, alternative = "stationary")
cat("ADF Test p-value (original data):", adf_test$p.value, "\n")

# Differencing
diff_data <- diff(ts_data)

# Plot the differenced data
plot(diff_data, ylab = "Differenced Passengers", xlab = "Year", col = "red", lwd = 2)
title(main = "Differenced Time Series")

# Perform ADF test on differenced data
adf_test_diff <- adf.test(diff_data, alternative = "stationary")
cat("ADF Test p-value (differenced data):", adf_test_diff$p.value, "\n")

# Seasonal differencing
seasonal_diff <- diff(ts_data, lag = 12)

# Plot seasonally differenced data
plot(seasonal_diff, ylab = "Seasonally Differenced Passengers", xlab = "Year", col = "green", lwd = 2)
title(main = "Seasonally Differenced Time Series")

# ACF and PACF plots
acf(seasonal_diff, lag.max = 40, main = "ACF of Seasonally Differenced Series")
pacf(seasonal_diff, lag.max = 40, main = "PACF of Seasonally Differenced Series")
