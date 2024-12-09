library(haven)


a<-read.csv("C:\\Users\\anthe\\OneDrive\\Documents\\Uni Stuttgart\\Master\\Data Science für Sozialwissenschaftler\\Data\\Baum\\Data\\baumnyc.csv")

subdataset<-a[1:100,]
View(subdataset)


zip <- c(11375, 11357, 11211)
inc <- c(100000, 20333, 43000)
inc_zip <- data.frame(zip = zip, inc = inc)

# Vectorized assignment
subdataset$inc_zip <- inc_zip$inc[match(subdataset$zipcode, inc_zip$zip)]

