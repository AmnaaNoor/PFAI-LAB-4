# Install and load ggplot2
install.packages("ggplot2")
library(ggplot2)

# Create a basic scatterplot using the iris dataset
ggplot(iris, aes(x = Sepal.Length, y = Petal.Length, color = Species)) +
  geom_point() +
  labs(title = "Scatterplot of Sepal Length vs. Petal Length",
       x = "Sepal Length",
       y = "Petal Length") +
  theme_minimal()

# Install and load dplyr
install.packages("dplyr")
library(dplyr)

# Filter for a specific species (e.g., "setosa") and arrange by Sepal.Length
iris_filtered <- iris %>%
  filter(Species == "setosa") %>%
  arrange(Sepal.Length)

# View the filtered dataset
print(iris_filtered)

# Install and load tidyr
install.packages("tidyr")
library(tidyr)

# Create a sample wide-format dataset
wide_data <- data.frame(
  ID = c(1, 2, 3),
  Math = c(80, 90, 85),
  Science = c(88, 76, 92),
  English = c(78, 84, 89)
)

# Pivot from wide to long format
long_data <- pivot_longer(wide_data, cols = c(Math, Science, English), 
                          names_to = "Subject", values_to = "Score")

print(long_data)

# Pivot from long back to wide format
wide_again <- pivot_wider(long_data, names_from = "Subject", values_from = "Score")

print(wide_again)

# Install and load data.table
install.packages("data.table")
library(data.table)

# Create a data table
dt <- data.table(
  ID = c(1, 2, 3, 4, 5, 6),
  Group = c("A", "A", "B", "B", "C", "C"),
  Value = c(10, 15, 20, 25, 30, 35)
)

# Perform aggregation: Calculate mean value for each group
aggregated_data <- dt[, .(Mean_Value = mean(Value)), by = Group]

# Print the aggregated data
print(aggregated_data)
