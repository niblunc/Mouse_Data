mouse_data = read.csv("346_OFCDMSrecording_10min_For_Kyle.csv")
mouse_data.cor = cor(mouse_data)
mouse_data.cor = cor(mydata, method = c("spearman"))


install.packages("corrplot")
library(corrplot)

corrplot(mouse_data.cor)
palette = colorRampPalette(c("green", "white", "red")) (45)
heatmap(x = mouse_data.cor, col = palette, symm = TRUE)