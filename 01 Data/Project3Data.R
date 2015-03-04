#This is the placeholder for the 01 Data folder

require("jsonlite")
require("RCurl")

leather <- data.frame(fromJSON(getURL(URLencode('129.152.144.84:5001/rest/native/?query="select * from atricleleather_revised"'),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_das3734', PASS='orcl_das3734', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE)))

aircraft <- data.frame(fromJSON(getURL(URLencode('129.152.144.84:5001/rest/native/?query="select * from aircraft_revised"'),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_das3734', PASS='orcl_das3734', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE)))

ammo <- data.frame(fromJSON(getURL(URLencode('129.152.144.84:5001/rest/native/?query="select * from ammo_revised"'),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_das3734', PASS='orcl_das3734', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE)))
