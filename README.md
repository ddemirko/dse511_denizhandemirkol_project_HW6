# dse511_denizhandemirkol_project_HW6 DENİZHAN DEMİRKOL 
Time Series Analysis of the AirPassengers Dataset:
Overview:
This project involves a detailed time series analysis of the AirPassengers dataset, which contains monthly totals of international airline passengers from 1949 to 1960. The analysis focuses on identifying patterns, removing trends, and exploring the temporal structure to guide potential forecasting efforts.

Dataset:
The dataset used is the AirPassengers dataset from the statsmodels library. It contains:

Monthly international airline passenger totals (in thousands):
Data spans from January 1949 to December 1960
The dataset exhibits a strong seasonal component and an upward trend.

Analysis Workflow:
Raw Time Series Plot:
Plotted the original time series to observe trends and seasonality.
Stationarity Testing:
Conducted the Augmented Dickey-Fuller (ADF) test.
The p-value (0.9918) indicated the series is non-stationary.
First Differencing:
Applied first differencing to remove the trend and tested for stationarity again.
Seasonal Differencing:
Performed seasonal differencing to address the pronounced seasonality.
The p-value after differencing (0.0115) confirmed the series became stationary.
Autocorrelation Analysis:
Plotted the ACF (Auto-Correlation Function) and PACF (Partial Auto-Correlation Function) for the differenced series to guide ARIMA modeling.
Key Observations:
Raw Data:
Exhibits a strong seasonal pattern and upward trend over time.
Stationarity Testing:
Original data was non-stationary.
First and seasonal differencing successfully removed the trend and seasonality.
ACF and PACF:
ACF revealed significant correlations at seasonal lags.
PACF suggested potential AR terms for modeling.
Tools and Libraries
Python:
Libraries: pandas, statsmodels, matplotlib
Jupyter Notebook:
To visualize the step-by-step analysis.
How to Run
Clone this repository:
bash
Copy code
git clone <repository-url>
cd dse511_project
Install dependencies:
bash
Copy code
pip install -r requirements.txt
Run the Jupyter Notebook:
bash
Copy code
jupyter notebook
Conclusion
The analysis provided valuable insights into the AirPassengers dataset, including the necessity of seasonal differencing and the identification of potential ARIMA components through ACF and PACF analysis. Future work could involve fitting ARIMA or SARIMA models for forecasting.

