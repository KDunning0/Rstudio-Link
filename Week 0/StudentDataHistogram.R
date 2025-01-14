# Call the installed packages.
library(tidyverse)
library(ggplot2)
# Read the file.
studentdat.df<-read.csv("2023-06-13-survey.csv")
# First Histogram: operating system
ggplot(studentdat.df, aes(x = Operating.System)) +
  geom_bar(fill = "steelblue") +
  theme_minimal() +
  labs(title = "Student Operating Systems",
       x = "Operating System",
       y = "Count") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
# Second Histogram: CPU Cycle Rate
ggplot(studentdat.df, aes(x = CPU.Cycle.Rate..in.GHz.)) +
  geom_histogram(fill = "orange", color = "white") +
  xlim(0, 5) +
  theme_minimal() +
  labs(title = "Student CPU Cycle Rates in GHz",
       x = "CPU Cycle Rate in GHz",
       y = "Count")
#An outlier of 2133 was likely made in error and has been removed.
# Third Histogram: CPU Number of Cores
ggplot(studentdat.df, aes(x = CPU.Number.of.Cores..int.)) +
  geom_histogram(fill = "purple", color = "white") +
  scale_x_continuous(breaks = seq(0, 12, by = 1)) +
  theme_minimal() +
  labs(title = "Student CPU Number of Cores",
       x = "CPU Number of Cores",
       y = "Count")
# Fourth Histogram: Ram in GB
ggplot(studentdat.df, aes(x = RAM..in.GB.)) +
  geom_histogram(fill = "green", color = "white") +
  scale_x_continuous(breaks = seq(0, 70, by = 4)) +
  theme_minimal() +
  labs(title = "Student RAM in GB",
       x = "RAM in GB",
       y = "Count")
# Fifth Histogram: Hard Drive size in GB
ggplot(studentdat.df, aes(x = Hard.Drive.Size..in.GB.)) +
  geom_histogram(fill = "red", color = "white") +
  scale_x_continuous(breaks = seq(0, 4200, by = 200)) +
  theme_minimal() +
  labs(title = "Student Hard Drive Size",
       x = "Hard Drive Size",
       y = "Count")
# Sixth Histogram: GPU CUDA Number of Cores
ggplot(studentdat.df, aes(x = GPU.CUDA.Number.of.Cores..int.)) +
  geom_histogram(fill = "yellow", color = "white") +
  scale_x_continuous(breaks = seq(0, 6000, by = 300)) +
  theme_minimal() +
  labs(title = "Student GPU CUDA Number of Cores",
       x = "GPU CUDA Number of Cores",
       y = "Count")

