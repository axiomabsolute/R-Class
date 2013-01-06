filepath <- "C:\\Users\\zeugm_000\\Downloads\\hw1_data (1)\\hw1_data.csv"
data <- read.csv(filepath)
data[1:2,] # Print first two lines
numRows <- dim(data)[1] # Number of rows
print(numRows)
data[(numRows-1):numRows,] # Last two rows, based on above result
data[47,]["Ozone"]

ozones <- data["Ozone"]
naOzones <- ozones[is.na(ozones)]
length(naOzones) # Number of NA Ozone entries
# Note: Equivalent to length(which(is.na(data["Ozone"])))

data["Ozone"] <- apply(data["Ozone"], 1, as.numeric) # Convert the Ozone column to Numeric

colMeans(data["Ozone"], TRUE) # Convert this to a numeric array, remove NA's and calculate the mean

colMeans(data[(data$Temp>90)&(data$Ozone>31),]["Solar.R"], TRUE) # Mean of Solar.R values for all rows where Temp > 90 and Ozone > 31

str(data) # Note that the Month column is of type int

colMeans(data[(data$Month == 6),]["Temp"], TRUE)