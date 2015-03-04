#This is the placeholder for the 03 Visualizations folder

require("ggplot2")
require("gplots")

ggplot(G1, aes(x = AIRCRAFT_COUNTRY_AREA, y = NUMBER_DATAPOINTS)) + geom_point(colour = "dodgerblue2") + ggtitle("Same Number of Trades")

plot1 <- ggplot(G2, aes(x = AIRCRAFT_COUNTRY_AREA, y = NUMBER_DATAPOINTS)) + geom_point(colour="dodgerblue2") + labs(x = "Aircraft Trade Countries") + ggtitle("Aircraft Trades") + theme(plot.title=element_text(size=20, face="bold", vjust=2))

plot1 <- plot1 + theme(axis.text.x=element_text(angle=90, size=5, vjust=0.5))
