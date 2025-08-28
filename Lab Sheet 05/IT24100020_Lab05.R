setwd("C:\\Users\\IT24100020\\Desktop\\IT24100020")
getwd()

# 1. Import the dataset into a data frame called "Delivery Times"
delivery_times <- read.table("Exercise - Lab 05.txt", header = TRUE,sep=",")
colnames(delivery_times) <- c("Delivery_Times")
print(delivery_times)

# 2. Draw a histogram using nine class intervals where the lower limit is 20 and upper limit is 70
breaks <- seq(20, 70, length.out = 10)

hist(delivery_times$Delivery_Times,
     breaks = breaks,
     right = FALSE,
     main = "Histogram of Delivery Times",
     xlab = "Delivery Time (minutes)",
     ylab = "Frequency",
     col = "pink", border = "black")


# 3. Comment on shape of the distribution
# -> The histogram is roughly symmetric with a peak around 35–45 minutes.
# -> It shows moderate concentration in the middle, fewer values at extremes.

# 4. Draw a cumulative frequency polygon (ogive) for the data in a separate plot
freq <- hist(delivery_times$Delivery_Times, breaks = breaks, right = FALSE, plot = FALSE)

cumfreq <- cumsum(freq$counts)

plot(freq$breaks[-1], cumfreq, type = "o",
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Time (minutes)",
     ylab = "Cumulative Frequency",
     col = "skyblue", pch = 16)
