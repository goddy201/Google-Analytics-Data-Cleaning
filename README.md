# Google-Analytics-Data-Cleaning
Cleaning A Google Analytics Dataset
## Overview
This project focuses on cleaning and preprocessing a raw Google Ads dataset using SQL. The dataset contains advertising campaign performance metrics including impressions, clicks, conversions, costs, and sales amounts. The goal was to transform this uncleaned data into a structured, analysis-ready format.
## Data Cleaning Task
### Handling Missing Values
Replaced empty Conversion Rate values with industry average (0.039)

Imputed missing Cost values with calculated average cost

Filled empty Sale_Amount values with average sales amount (1417.54)
### Data Standardization
Renamed columns to include units: Cost($) and Sale_Amount($)

Standardized campaign names (consolidated variations of "Data Analytics Course")
### Date Formatting
Converted various date formats to SQL DATE type

Handled dates in format: DD-MM-YYYY and YYYY/MM/DD

Modified column data type to DATE for proper date operations
### Text Normalization
Applied proper capitalization to categorical fields:

Location

Device

Keyword

Corrected misspelled location names (e.g., "Hyderbad" → "Hyderabad")
## Outcome
100% complete data with no null values

Standardized date format for time-series analysis

Clean numeric fields ready for mathematical operations

Consistent categorical values for accurate grouping

## Impact
This cleaned dataset enables:

Accurate ROAS (Return on Ad Spend) calculations

Reliable campaign performance comparison

Geographic performance analysis

Device-based optimization strategies

Time-based trend analysis

- <a href = "https://github.com/goddy201/Google-Analytics-Data-Cleaning/blob/main/google_ad_analytics.sql"> Query</a>
