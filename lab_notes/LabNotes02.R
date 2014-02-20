###################################################################################################
################# ADMIN CODE -- DO NOT MODIFY #####################################################
options(RCurlOptions = list(cainfo = system.file("CurlSSL", "cacert.pem", package = "RCurl")))
library(RCurl)
xadmin <- getURL("https://raw.github.com/aaronxhill/quant14sp/master/admin/admin.R")
eval(parse(text=xadmin), envir= .GlobalEnv)
###################################################################################################

############################################################
# Quantitative Methods, Hill
# Statistical Computing Lab 2
############################################################

#DATA: lowbwt
#(data description at the bottom of this document)

#Graphs: Pie Chart & Bar Chart

RACE.description

pie(table(lowbwt$RACE), main="Title of Graph", col=c("red", "blue", "green"))

barplot(table(lowbwt$RACE), main="Title of Graph", xlab="X Axis Label")

#Graphs: Histogram

AGE.description

hist(lowbwt$AGE)

#Crosstabs

HT.description

table(lowbwt$HT, lowbwt$RACE)
prop.table(table(lowbwt$HT, lowbwt$RACE))

#############################################################################
