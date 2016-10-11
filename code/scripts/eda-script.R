#read in data
data <- read.csv("../data/Advertising.csv")

#histogram for sales
png("Users/nrethmeier/Documents/stat159/stat159-fall2016-hw03/images/histogram-sales.png")
hist(data$Sales, xlab="Sales", main="Histogram of Sales")
dev.off()

#histogram for tv
png("Users/nrethmeier/Documents/stat159/stat159-fall2016-hw03/images/histogram-tv.png")
hist(data$TV, xlab="TV", main="Histogram of TV")
dev.off()

#histogram for radio
png("Users/nrethmeier/Documents/stat159/stat159-fall2016-hw03/images/histogram-radio.png")
hist(data$Radio, xlab="Radio", main="Histogram of Radio")
dev.off()

#histogram for newspaper
png("Users/nrethmeier/Documents/stat159/stat159-fall2016-hw03/images/histogram-newspaper.png")
hist(data$Newspaper, xlab="Newspaper",main="Histogram of Newspaper")

#summary statistics of sales 
sales-sum <- summary(data$Sales)

#summary statistics of tv 
tv-sum <- summary(data$TV)

#summary statistics of radio 
radio-sum <- summary(data$Radio)

#summary statistics of newspaper
newspaper-sum <- summary(data$Newspaper)

#create txt file of summary statistics 
sink("/Users/nrethmeier/Documents/stat159/stat159-fall2016-hw03/data/eda-output.txt")
print(sales-sum)
print(tv-sum)
print(radio-sum)
print(newspaper-sum)
sink() 
