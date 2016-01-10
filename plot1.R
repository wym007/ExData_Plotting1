## First check whether it has the file in the current dir.
if (!"load_data.R" %in% list.files()) {
    setwd("~/Desktop/ExData_Plotting1/")
} 

##Construct the plot and save it to a PNG file with 
##a width of 480 pixels and a height of 480 pixels
source("load_data.R")
png(filename = "plot1.png", 
    width = 480, height = 480, 
    units = "px", bg = "transparent")
hist(Global_active_power, 
     col = "red", 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)",
     breaks = 12, ylim = c(0, 1200))
dev.off()
