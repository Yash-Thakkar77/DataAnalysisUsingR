# Load the data into R
covid_data <- read.csv("Maharashtra Latest Covid Cases.csv")
# Check the structure of the data
str(covid_data)
# View the first few rows of the data
head(covid_data)
# Summary statistics
summary(covid_data)
# Load the ggplot2 library for creating visualizations
library(ggplot2)
# Create a scatterplot for Recovery Rate vs. Fatality Rate
ggplot(covid_data, aes(x = covid_data[,6], y = covid_data[,7])) +
  geom_point() +
  labs(title = "Recovery Rate vs. Fatality Rate", x = "Recovery Rate(%)", y = "Fatality Rate(%)") +
  theme_minimal()

# Load the stats library for Spearman's correlation
library(stats)

# Calculate Spearman's correlation between columns 6 (Recovery Rate) and 7 (Fatality Rate)
spearman_correlation <- cor(covid_data[, 6], covid_data[, 7], method = "spearman")

# Print the Spearman correlation coefficient
cat("Spearman's Correlation between Recovery Rate and Fatality Rate:", spearman_correlation, "\n")

# Create a scatterplot for Spearman ranks of Recovery Rate vs. Fatality Rate
ggplot(covid_data, aes(x = rank(covid_data[, 6], ties.method = "first"), 
                       y = rank(covid_data[, 7], ties.method = "first"))) +
  geom_point() +
  labs(title = "Spearman's Rank Correlation Plot", x = "Ranked Recovery Rate", y = "Ranked Fatality Rate") +
  theme_minimal()


# Create a horizontal bar plot for Districts vs. Positive Cases using column indexes
ggplot(covid_data, aes(x = covid_data[,2], y = covid_data[,1])) +
  geom_bar(stat = "identity", fill = "blue") +
  labs(title = "Districts vs. Positive COVID-19 Cases", x = "Positive Cases", y = "Districts") +
  theme_minimal() +
  coord_flip()


# Create a data frame with the two variables
correlation_data <- data.frame(
  Recovery_Rate = covid_data$`Recovery Rate(%)`,
  Fatality_Rate = covid_data$`Fatality Rate(%)`)
# Calculate the correlation between recovery rate and fatality rate
correlation <- cor(covid_data[, 6], covid_data[, 7])
# Print the correlation coefficient
cat("Correlation between Recovery Rate and Fatality Rate:", correlation, "\n")