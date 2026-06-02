
# COST OF ELECTRICITY MODULE


# inputs: month, day
# output: scrap metal (Mt)

#' @param month
#' @param day


### MAKE THIS NOT A FOR LOOP

cost_of_electric <- function (month, day) {
  
    # higher summer prices
    if (month %in% c(6, 7, 8)) {
      
      # runs this electricity cost if it's during the summer
      electricity_cost <- runif(n = 1, min = 26, max = 40)} 
    
    # runs this electricity cost if it's not during the summer
    else { electricity_cost <- runif(n = 1, min = 10, max = 25)
    }
    
  # makes the cost of electricity on weekends 50% cheaper
  if (day %in% c("Saturday", "Sunday")) {
    electricity_cost <- (electricity_cost * 0.5)
  }
  
    electricity <- ifelse(electricity_cost >= 16,"high","low")
    
    # what the function returns as outputs
    return(
      data.frame(
        day = day,
        month = month,
        electricity_cost = electricity_cost,
        electricity = electricity))
}
