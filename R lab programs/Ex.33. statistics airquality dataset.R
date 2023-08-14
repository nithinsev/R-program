# Load required libraries
library(reshape2)

# Load the airquality dataset
data("airquality")

# (i) Summary Statistics of air quality dataset
summary_stats <- summary(airquality)
print(summary_stats)

# (ii) Melt airquality dataset and display as long-format data
melted_data <- melt(airquality)
print(melted_data)

# (iii) Melt airquality data with month and day as "ID variables"
melted_data_id <- melt(airquality, id.vars = c("Month", "Day"))
print(melted_data_id)

# (iv) Cast the molten airquality dataset with respect to month and date features
casted_data <- dcast
