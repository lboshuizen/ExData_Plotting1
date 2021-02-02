# script to extract the required data from the house_hold_consumnption.txt"

# required libs
library(readr)

# extract 1 & 2 feb 2007 from dataset and write to hhpc-070201-070202.csv
df_src <- read_delim(file="./data/household_power_consumption.txt", delim=';')
df_src$Date <- paste(df_src$Date,df_src$Time, sep = " ")
df_src$Date <- dmy_hms(df_src$Date)
df2007 <- df_src[ year(df_src$Date) == 2007 & month(df_src$Date) == 2 & day(df_src$Date) <= 2 , ]
write_csv(df2007,"./data/hhpc-070201-070202.csv")
