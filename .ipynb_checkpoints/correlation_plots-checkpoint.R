mouse_data = read.csv("346_OFCDMSrecording_10min_For_Kyle.csv")
head(mouse_data, 6)

# compute correlation matrix with standard pearson 
# in this table correlations coefficients b/w possible pairs of variance are shown
mouse_data.cor = cor(mouse_data)
round(mouse_data.cor, 2) # round to 2 decimal places

cor(mouse_data, use = "complete.obs") # fill in missing data


# Here using the function "rcorr()" to compute the significant levels
# of pearson and spearman correlations. It returns both correlation
# coefficients and the p-value for all possible pairs of columns
#install.packages("Hmisc")
library("Hmisc")
matrix_2 <- rcorr(as.matrix(mouse_data))
# The output is a list containing 
matrix_2

mouse_data.cor = cor(mouse_data, method = c("spearman"))


#install.packages("corrplot")
library(corrplot)

corrplot(mouse_data.cor)
palette = colorRampPalette(c("green", "white", "red")) (45)
heatmap(x = mouse_data.cor, col = palette, symm = TRUE)
library(corrgram)
corrgram(mouse_data)

