# Install and load lubridate
install.packages("lubridate")
library(lubridate)

# Parse different date formats
date1 <- ymd("2025-03-18")  # Year-Month-Day format
date2 <- dmy("18-03-2025")  # Day-Month-Year format
date3 <- mdy("03-18-2025")  # Month-Day-Year format

# Format a date
formatted_date <- format(date1, "%A, %B %d, %Y")  # Output: "Tuesday, March 18, 2025"

# Display results
print(date1)
print(date2)
print(date3)
print(formatted_date)

# Install and load rvest
install.packages("rvest")
library(rvest)

# Define the webpage URL (Example: Scraping RStudio Blog Titles)
url <- "https://posit.co/blog/"

# Read HTML content
webpage <- read_html(url)

# Extract blog titles
titles <- webpage %>%
  html_nodes("h2.blog-title a") %>%
  html_text()

# Print the extracted titles
print(titles)

# Install and load caret
install.packages("caret")
library(caret)

# Load the iris dataset
data(iris)

# Create training and testing sets
set.seed(123)
index <- createDataPartition(iris$Species, p = 0.7, list = FALSE)
train_data <- iris[index, ]
test_data <- iris[-index, ]

# Train a simple classification model (Decision Tree)
model <- train(Species ~ ., data = train_data, method = "rpart")

# Make predictions
predictions <- predict(model, test_data)

# Evaluate accuracy
conf_matrix <- confusionMatrix(predictions, test_data$Species)
print(conf_matrix)

# Install and load xts and zoo
install.packages("xts")
install.packages("zoo")
library(xts)
library(zoo)

# Create sample time-series data
dates <- seq(as.Date("2025-01-01"), by = "month", length.out = 12)
values <- c(100, 110, 120, 115, 140, 130, 150, 155, 160, 170, 180, 190)

# Convert to time-series objects
ts_data <- xts(values, order.by = dates)

# Plot the time-series data
plot(ts_data, type = "o", col = "blue", main = "Time-Series Data Visualization",
     xlab = "Date", ylab = "Value")
