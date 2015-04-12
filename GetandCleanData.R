
GetData<-function(){
	#Read the file
	filename <- "household_power_consumption.txt"
	hpower <- read.table(filename,header=TRUE,sep=";",colClasses=c("character", "character", rep("numeric",7)),
                     na="?")

    	# convert date and time variables to Date/Time class
    	hpower$Time <- strptime(paste(hpower$Date, hpower$Time), "%d/%m/%Y %H:%M:%S")
    	hpower$Date <- as.Date(hpower$Date, "%d/%m/%Y")
    	# only use data from the dates 2007-02-01 and 2007-02-02
    	dates <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
    	hsubset <- subset(hpower, Date %in% dates)
	print(nrow(hsubset))
    	return(hsubset)
}
