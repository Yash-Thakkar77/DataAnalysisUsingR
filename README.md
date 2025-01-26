# DataAnalysisUsingR

## COVID-19 Data Analysis for Maharashtra

This repository contains an analysis of the latest COVID-19 cases in Maharashtra, India. The analysis involves data exploration, visualization, and correlation analysis of various COVID-19 statistics, including recovery and fatality rates.

## Dataset

The dataset used in this project is from [Kaggle](https://www.kaggle.com/datasets/anandhuh/latest-covid19-cases-maharashtra-india), which includes the most recent data on COVID-19 cases for Maharashtra, India. The dataset includes information on:

- Districts
- Active Cases
- Recovered Cases
- Positive Cases
- Recovery Rate
- Fatality Rate
- Various other metrics

## Analysis

The analysis performed in this project includes:

1. **Data Exploration**: Basic data structure and summary statistics.
2. **Scatterplot Visualization**: 
   - A scatterplot showing the relationship between the Recovery Rate and Fatality Rate.
   - A scatterplot showing the Spearman's Rank correlation between Recovery Rate and Fatality Rate.
3. **Correlation Calculation**: 
   - Spearman's correlation between Recovery Rate and Fatality Rate to understand their relationship.
4. **Bar Plot Visualization**: A horizontal bar plot representing the number of positive cases in different districts of Maharashtra.

## Requirements

To run the code, you'll need the following packages:

- `ggplot2` for data visualization
- `stats` for calculating Spearman's correlation

You can install the required packages using the following commands:

```R
install.packages("ggplot2")
install.packages("stats")
```

## Instructions

1. Download the dataset from [Kaggle](https://www.kaggle.com/datasets/anandhuh/latest-covid19-cases-maharashtra-india).
2. Load the dataset into R using `read.csv("Maharashtra Latest Covid Cases.csv")`.
3. Run the code provided in this repository to perform the analysis.
4. Explore the results, including visualizations and correlation values, to gain insights into the COVID-19 situation in Maharashtra.

## Example Output

- A scatterplot showing the relationship between Recovery Rate and Fatality Rate.
- A Spearman's Rank correlation plot to observe the ranked relationship.
- A bar plot of COVID-19 positive cases per district.
