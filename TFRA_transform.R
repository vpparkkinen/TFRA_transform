# by Veli-Pekka Parkkinen (University of Bergen) June 2 2022
# Totally fuzzy and relative alternative (TFRA) specification, Filippone A,
# Cheli B, D'Agostino A (2001)

TFRA_transform <- function(column){
  tbl <- as.data.frame(table(column))
  res <- vector("numeric", nrow(tbl))
  for (i in 1:nrow(tbl)){
    total_freq <- sum(tbl[,"Freq"])
    if(i == 1){
      res[i] <- 0.5*tbl[i,"Freq"] / total_freq
    } else {
      
      total_freq_until <- sum(tbl[1:(i-1), "Freq"]) / total_freq 
      own_freq <- tbl[i, "Freq"] / total_freq
      res[i] <- total_freq_until + (0.5*own_freq)
    }
  }
  lookup_table <- data.frame(value = tbl[,"column"], newvalue = res)
  transformed_vector <- vector("numeric", length(column))
  for (n in seq_along(column)){
    transformed_vector[n] <- lookup_table[lookup_table$value == column[n], "newvalue"]
  }
  return(transformed_vector)
}


## Examples #####
TFRA_transform(c(2,2,2,2,3,1,1))



fake_data <- data.frame(A=c(2,2,2,2,3,1,1), B=c(2,2,3,2,3,2,2))
fake_data

tr_dat <- as.data.frame(apply(fake_data, 2, TFRA_transform))

colMeans(tr_dat) ## this should always be 0.5 for all columns
