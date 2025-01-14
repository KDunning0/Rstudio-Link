#Uniform Histogram
#Set seed for replicability.
set.seed(30)
#Create uniform values.
unival <- runif(20, min = 0, max = 1)
#Set data into dataframe.
unival <- as.data.frame(unival)
#Set name for variable.
names(unival) <- c("random")
#Plot Histogram
unival %>%
  ggplot() +
  geom_histogram(aes(x=random, color="black")) +
  theme_bw() +
  labs(x="The X Variable",
       y="The Y Variable",
       title="Uniform Histogram")
  
