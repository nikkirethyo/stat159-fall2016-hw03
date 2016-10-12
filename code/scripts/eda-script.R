#read in data
data <- read.csv("../../data/Advertising.csv")

#histogram for sales
png("../../images/histogram-sales.png")
hist(data$Sales, xlab="Sales", main="Histogram of Sales")
dev.off()

#histogram for tv
png("../../images/histogram-tv.png")
hist(data$TV, xlab="TV", main="Histogram of TV")
dev.off()

#histogram for radio
png("../../images/histogram-radio.png")
hist(data$Radio, xlab="Radio", main="Histogram of Radio")
dev.off()

#histogram for newspaper
png("../../images/histogram-newspaper.png")
hist(data$Newspaper, xlab="Newspaper",main="Histogram of Newspaper")

#summary statistics of sales 
sales.sum <- summary(data$Sales)

#summary statistics of tv 
tv.sum <- summary(data$TV)

#summary statistics of radio 
radio.sum <- summary(data$Radio)

#summary statistics of newspaper
newspaper.sum <- summary(data$Newspaper)

#correlation matrix
mat <- signif(cor(data),4)
mat[lower.tri(mat)]=""
correlation <- data.frame(mat)

#create txt file of summary statistics 
sink("../../data/eda-output.txt")
print("Summary of Sales")
print(sales.sum)
print("Summary of TV")
print(tv.sum)
print("Summary of Radio")
print(radio.sum)
print("Summary of Newspaper")
print(newspaper.sum)
print("Correlation Matrix")
print(correlation)
sink()

#save scatterplot matrix for variables 
png("../../images/scatterplot-matrix.png")
data <- data[,2:5]
pairs(data, pch=16, cex=.5, main="Scatterplot Matrix of Variables")
dev.off()
#save binary data of correlations 
save(correlation, file="../../data/correlation-matrix.Rdata") 
