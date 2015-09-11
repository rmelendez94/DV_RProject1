require("jsonlite")
require("RCurl")

# CThis is just to test the student oracle database account)
df <- data.frame(fromJSON(getURL(URLencode('129.152.144.84:5001/rest/native/?query="select * from titanic"'),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521/PDBF15DV.usuniversi01134.oraclecloud.internal', USER='cs329e_rm46926', PASS='orcl_rm46926', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE), ))
df
summary(df)
head(df)
#Currently not working ^ ... just kidding it works... now

