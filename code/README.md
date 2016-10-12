#Code for Stat 159 Homework 3 


##Functions 

##Scripts 
###eda-script.R
This script reads in `Advertising.csv` and explores the datasets variables: Sales, TV, Radio, and Newspaper. It computes summary statistics for each variable and produces histograms as well. In addition, it also calculates the matrix of correlations between the variables. The summary statistics and correlation matrix are saved as a text file. Another visualization included in this script is the scatterplot matrix, or pairwise scatterplots of all variables. Finally, it saves the correlation matrix in binary format. 

###regression-script.R
This script reads in `Advertising.csv` as well, but also applies the multiple regression model to the data. From there is computes summary statistics, such as the regression coefficients, and saves all of these objects in their binary format. Lastly, this script produces the plot of residuals against fitted values, normal Q-Q plot, and the scale location plot of residuals against fitted values. 

###session-info-script.R
This script will load all of the R packages used throughout this project. It also saves information about the session into a text file. 


##Tests 
