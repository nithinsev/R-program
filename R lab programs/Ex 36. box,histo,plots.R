# Load the required libraries
library(ggplot2)
library(dplyr)

# Load the ChickWeight dataset
data(ChickWeight)

# (a) Create Box plot for "weight" grouped by "Diet"
boxplot_plot <- ggplot(ChickWeight, aes(x = as.factor(Diet), y = weight)) +
  geom_boxplot() +
  labs(title = "Box Plot of Weight Grouped by Diet", x = "Diet", y = "Weight")

# (b) Create Histogram for "weight" features belong to Diet-1 category
histogram_plot <- ChickWeight %>%
  filter(Diet == 1) %>%
  ggplot(aes(x = weight)) +
  geom_histogram(binwidth = 20, fill = "skyblue", color = "black") +
  labs(title = "Histogram of Weight for Diet-1", x = "Weight", y = "Frequency")

# (c) Create Scatter plot for "weight" vs "Time" grouped by Diet
scatter_plot <- ggplot(ChickWeight, aes(x = Time, y = weight, color = as.factor(Diet))) +
  geom_point() +
  labs(title = "Scatter Plot of Weight vs Time Grouped by Diet", x = "Time", y = "Weight")

# Display the plots
print(boxplot_plot)
print(histogram_plot)
print(scatter_plot)
