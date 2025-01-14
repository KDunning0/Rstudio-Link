#Normal Histogram
#Call library ggplot2
library(ggplot2)
#Set seed for replicability.
set.seed(55)
#Create dataset
norm <- data.frame(xvar = rnorm(2000,mean = 150, sd = 30))
names(norm) <- c("random")
norm %>%
  ggplot() +
  geom_histogram(aes(x=random,
                 color="black")) +
  theme_bw() +
  labs(x = "The X Variable", y = "The Y Variable",
       title = "Normal Histogram")
