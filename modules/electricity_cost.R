
# COST OF ELECTRICITY MODULE


# inputs: month, day
# output: scrap metal (MT)

#' @param month
#' @param day


############# REVISED VERSION WITH MONTH AND DAY AS THE INPUTS #######

days <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

cost_of_electric <- function (month, day) {
  
  for (d in days) {
    
    # higher summer prices
    if (month %in% c(6, 7, 8)) {
      
      # runs this electricity cost if it IS during the summer
      electricity_cost <- runif(n = 100, min = 20, max = 40)} 
    
    # runs this electricity cost if it's not during the summer
    else { electricity_cost <- runif(n = 100, min = 10, max = 25)
    }
    
    electricity <- ifelse(electricity_cost[n] >= 16,"high","low"
    )
    print(day)
    print(electricity_cost[n])
    print(electricity)
  }
}
