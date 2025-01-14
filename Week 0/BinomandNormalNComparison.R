# Load required libraries
library(ggplot2)
library(tidyr)
library(dplyr)

# Set seed for reproducibility
set.seed(123)

# Generate random data for different n values
samplenum <- 1000

# n = 20
binomdat1 <- rbinom(samplenum, size = 20, prob = 0.5)
normdat1 <- rnorm(samplenum, mean = 10, sd = 2)

# n = 50
binomdat2 <- rbinom(samplenum, size = 50, prob = 0.5)
normdat2 <- rnorm(samplenum, mean = 25, sd = 3)

# n = 200
binomdat3 <- rbinom(samplenum, size = 200, prob = 0.5)
normdat3 <- rnorm(samplenum, mean = 100, sd = 7)

# Create data frames for each n
dataframe1 <- data.frame(
  Numbers = c(binomdat1, normdat1),
  Source = rep(c("Binomial", "Normal"), each = samplenum),
  nsize = factor("n = 20", levels = c("n = 20", "n = 50", "n = 200"))
)

dataframe2 <- data.frame(
  Numbers = c(binomdat2, normdat2),
  Source = rep(c("Binomial", "Normal"), each = samplenum),
  nsize = factor("n = 50", levels = c("n = 20", "n = 50", "n = 200"))
)

dataframe3 <- data.frame(
  Numbers = c(binomdat3, normdat3),
  Source = rep(c("Binomial", "Normal"), each = samplenum),
  nsize = factor("n = 200", levels = c("n = 20", "n = 50", "n = 200"))
)

# Combine all data frames
combineframe <- rbind(dataframe1, dataframe2, dataframe3)

# Create the plot
ggplot(combineframe, aes(x = Numbers, fill = Source)) +
  geom_histogram(aes(y = after_stat(density)),
                 alpha = 0.5,
                 position = "identity",
                 bins = 30) +
  geom_density(aes(color = Source),
               alpha = 0.2) +
  facet_wrap(~nsize, scales = "free") +
  theme_minimal() +
  labs(title = "Binomial and Normal Distributions n=20, 50, 200",
       x = "Numbers",
       y = "Density") +
  scale_fill_brewer(palette = "Set2") +
  scale_color_brewer(palette = "Set2")
