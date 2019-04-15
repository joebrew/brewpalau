library(dplyr)
library(readr)
library(RPostgreSQL)
# # From within psql
# CREATE DATABASE twitter;
# # Now from command line:
# psql twitter

set_up_database <- function(files){
  # Files should be a vector of paths for the .csv files
  # For example:
  # files = c('~/Desktop/file1.csv', '~/Desktop/file2.csv')
  
  # Loop through each file and read into R
  data_list <- list()
  for(i in 1:length(files)){
    this_file <- files[i]
    this_data <- read_csv(this_file)
    this_data$file_path <- this_file
    data_list[[i]] <- this_data
  }
  
  # Combine all the data
  tl <- bind_rows(data_list)
  
  # If you want, consider merging here with your dictionary of 
  # file-paths to queries, so that you can have your query 
  # saved in the database too
  # .........
  
  # Write the database
  pg = dbDriver("PostgreSQL")
  con = dbConnect(pg, dbname="twitter")
  # In the below we are writing to a table named twitter within the 
  # database you created named twitter. Feel free
  dbWriteTable(con,'twitter',tl, row.names=FALSE)
  # Read back in R
  # dtab = dbGetQuery(con, "select * from twitter")
  # disconnect from the database
  dbDisconnect(con)
}

# To run the above
# set_up_database(files = c('~/Desktop/file1.csv', '~/Desktop/file2.csv'))
