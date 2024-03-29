complete <- function(directory, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return a data frame of the form:
  ## id nobs
  ## 1  117
  ## 2  1041
  ## ...
  ## where 'id' is the monitor ID number and 'nobs' is the
  ## number of complete cases
  x <- NULL
  y <- NULL
  for(i in id) {
  filename <- paste0("./",directory,"/",formatC(i, width=3, flag="0"),".csv")
  data <- read.csv(filename)
  x <- c(x,i)
  y <- c(y,sum(complete.cases(data)))
  
  }
  data.frame(id = x,nobs = y)
  }