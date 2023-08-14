# Load the required library
library(ggplot2)

# Load the airquality dataset
data(airquality)

# (i) Find and handle missing values
na_percentage_threshold <- 0.1

# Calculate the percentage of missing values for each feature
missing_percent <- colMeans(is.na(airquality))

# Replace missing values with mean if the missing percentage is less than 10%, otherwise drop them
for (col in colnames(airquality)) {
  if (missing_percent[col] < na_percentage_threshold) {
    airquality[is.na(airquality[[col]]), col] <- mean(airquality[[col]], na.rm = TRUE)
  } else {
    airquality <- airquality[complete.cases(airquality), ]
  }
}

# (ii) Apply linear regression using Least Squares Method on "Ozone" and "Solar.R"
lm_model <- lm(Ozone ~ Solar.R, data = airquality)
summary(lm_model)

# (iii) Plot Scatter plot between Ozone and Solar with regression line
ggplot(airquality, aes(x = Solar.R, y = Ozone)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE, color = "red") +
  labs(title = "Scatter Plot of Ozone vs. Solar.R with Regression Line")
