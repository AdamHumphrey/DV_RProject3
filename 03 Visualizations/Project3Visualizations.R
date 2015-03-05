#This is the placeholder for the 03 Visualizations folder

require("ggplot2")
require("gplots")

ggplot(G1, aes(x = AIRCRAFT_COUNTRY_AREA, y = NUMBER_DATAPOINTS)) + geom_point(colour = "dodgerblue2") + ggtitle("Same Number of Trades")

tradeplot1 <- ggplot(aircrafttrades, aes(x = NUMBER_DATAPOINTS, y = AIRCRAFT_COUNTRY_AREA)) + geom_point(colour="dodgerblue2") + labs(x = "Aircraft Trade Countries") + ggtitle("Aircraft Trades") + theme(plot.title=element_text(size=20, face="bold", vjust=2))

tradeplot2 <- ggplot(ammotrades, aes(x = NUMBER_DATAPOINTS, y = AMMO_COUNTRY_AREA)) + geom_point(colour="red") + labs(x = "Number of Ammo Trades", y = "Countries") + ggtitle("Ammo Trades") + theme(plot.title=element_text(size=20, face="bold", vjust=2))

tradeplot3 <- ggplot(altrades, aes(x = NUMBER_DATAPOINTS, y = AL_COUNTRY_AREA)) + geom_point(colour="chocolate") + labs(x = "Number of Leather Trades", y = "Countries") + ggtitle("Article Leather Trades") + theme(plot.title=element_text(size=20, face="bold", vjust=2))

tradeplot1
tradeplot2
tradeplot3