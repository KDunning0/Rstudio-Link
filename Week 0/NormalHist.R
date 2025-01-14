#Normal Histogram
#Call library ggplot2
library(ggplot2)
#Set seed for replicability.
set.seed(55)
#Create dataset
norm <- data.frame(xvar = rnorm(2000,mean = 150, sd = 30))
#Create Histogram
ggplot(norm, aes(x = xvar)) +
  geom_histogram(color = "black") +
  theme_bw() +
  labs(x = "The X Variable", y = "The Y Variable",
       title = "Normal Histogram")
