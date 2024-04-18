# Load necessary libraries
library(ggplot2)
library(plotly)
library(lattice)

# Generate example data
data <- data.frame(
  x = 1:10,
  y = rnorm(10),
  z = sample(letters[1:2], 10, replace = TRUE)
)

# Create ggplot2 plot
ggplot(data, aes(x = x, y = y, color = z)) +
  geom_point() +
  ggtitle("GGPlot2 Scatter Plot")

# Create plotly interactive plot
plot_ly(data, x = ~x, y = ~y, color = ~z, type = 'scatter', mode = 'markers') %>%
  layout(title = "Plotly Scatter Plot", xaxis = list(title = "X-axis"), yaxis = list(title = "Y-axis"))

# Create lattice plot
xyplot(y ~ x | z, data = data, type = "p", layout = c(1, 2), main = "Lattice Scatter Plot")
