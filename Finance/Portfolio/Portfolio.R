Portfolio <- function(directory, stock_name, t = 120) {
  
  setwd(directory)
  
  if (!file.exists("portfolio")) {
    dir.create("portfolio")
  }
  
  num <- length(stock_name)
  
  URL <- "http://real-chart.finance.yahoo.com/table.csv?s=STOCK&a=00&b=1&c=2004&d=00&e=1&f=2014&g=m&ignore=.csv"
  file_name <- character()
  stock <- matrix(ncol = num, nrow = t, byrow = FALSE)
  stock_r <- matrix(ncol = num, nrow = t, byrow = FALSE)
  Covar <- matrix(nrow = num, ncol = num)
  Exp_return <- numeric()
  Risk <- numeric()
  
  for(i in 1:num) {
    url <- gsub("STOCK", stock_name[i], URL)
    file_name[i] <- paste("./portfolio/", stock_name[i], ".csv", sep = "")
    download.file(url, destfile = file_name[i])
    stock_raw <- read.csv(file_name[i], colClasses = c(rep("NULL", 6), NA))
    stock[, i] <- unname(unlist(stock_raw))
    
    for (j in 1:(t-1)) {   # Be careful ! A "()" is needed after "1:", or "-1" will also minus 1 
      stock_r[j, i] <- (stock[j, i]-stock[j+1, i])/(stock[j+1, i]) # from the 1 of "1:"
    }
    
    stock_r <- stock_r[1:(t-1), ]
    Exp_return[i] <- mean(stock_r[, i])
    Risk[i] <- sd(stock_r[, i])
  }
  
    
  for (i in 1:num) {
    for (j in 1:num) {
      Covar[i, j] <- cov(stock_r[, i], stock_r[, j])
    }
  }
  
  # Another way of computing Covariance Matrix using Principal Componet Analysis !
  # stock_m <- t(stock_r)
  # r <- dim(stock_m)[1]
  # c <- dim(stock_m)[2]
  # m <- rowMeans(stock_m)
  # M <- matrix(rep(m, c), nrow = r, byrow = F)
  # X <- stock_m - M
  # S <- 1/(c-1) * as.matrix(X) %*% t(X)
  
  
  Covar <- Covar
  
}

directory <- "E:/Leo_works/Portfolio"
stock_name <- c("AAPL", "WMT", "MMM", "YUM", "JPM", "AMZN")

Covar <- Portfolio(directory, stock_name)
