#reads in the advertising data 
data <- read.csv("/Users/nrethmeier/Documents/stat159/stat159-fall2016-hw03/data/Advertising.csv")

#applies multiple regression model 
regression <- lm(formula=Sales ~ TV+Radio+Newspaper, data=data)

#summarizes the regression model 
regressionsum <- summary(regression)

#produces scatterplot for tv and sales 
png("/Users/nrethmeier/Documents/stat159/stat159-fall2016-hw03/images/scatterplot-tv-sales.png")
plot(data$TV, data$Sales, main="Linear Regression: Sales ~ TV", col="red", xlab="TV", ylab="Sales", pch=16, cex=.75)
abline((lm(formula=Sales ~ TV, data=data)), col="blue")
segments(data$TV, data$Sales, data$TV, (data$Sales - resid(lm(formula=Sales ~ TV, data=data))), lwd=.5)
dev.off()

#produces scatterplot for radio and sales 
png("/Users/nrethmeier/Documents/stat159/stat159-fall2016-hw03/images/scatterplot-radio-sales.png")
plot(data$Radio, data$Sales, main="Linear Regression: Sales ~ Radio", col="red", xlab="Radio", ylab="Sales", pch=16, cex=.75)
abline((lm(formula=Sales ~ Radio, data=data)), col="blue")
segments(data$Radio, data$Sales, data$Radio, (data$Sales - resid(lm(formula=Sales ~ Radio, data=data))), lwd=.5)
dev.off()

#produces scatterplot for newspaper and sales
png("/Users/nrethmeier/Documents/stat159/stat159-fall2016-hw03/images/scatterplot-newspaper-sales.png")
plot(data$Newspaper, data$Sales, main="Linear Regression: Sales ~ Newspaper", col="red", xlab="Newspaper", ylab="Sales", pch=16, cex=.75)
abline((lm(formula=Sales ~ Newspaper, data=data)), col="blue")
segments(data$Newspaper, data$Sales, data$Newspaper, (data$Sales - resid(lm(formula=Sales ~ Newspaper, data=data))), lwd=.5)
dev.off()

#residuals vs fitted for regression 
png("/Users/nrethmeier/Documents/stat159/stat159-fall2016-hw03/images/residual-plot.png")
plot(regression, which=1, pch=16, cex=.75)
dev.off()

#normal q q plot 
png("/Users/nrethmeier/Documents/stat159/stat159-fall2016-hw03/images/normal-qq-plot.png")
plot(regression, which=2, pch=16, cex=.75)
dev.off()

#scale location plot 
png("/Users/nrethmeier/Documents/stat159/stat159-fall2016-hw03/images/scale-location-plot.png")
plot(regression, which=3, pch=16, cex=.75)
dev.off()

#save regression and summary binary data 
save(data, regression, summary, file="/Users/nrethmeier/Documents/stat159/stat159-fall2016-hw03/data/regression.Rdata")
