#' Metal Production Module
#'
#' @param production_rate Percentage of metal ore transformed into produced, primary metal in Mt.
#' @param metal_ore Starting mass of metal ore in Mt.
#' @param recycled_metal Amount of collected scrap metal recycled in Mt.
#' @return produced_metal Amount of metal produced from metal ore and recycled metal in Mt.
#' @author Sydney

# make different parts of the data frame based on if electricity is high or low

# function definition

metal_production = function(metal_ore, recycled_metal, production_rate) {
  
  if (any(metal_ore < 0)) {
    stop("mass must be positive")
  }
  
  produced_metal = (metal_ore + recycled_metal) * production_rate
  
  return(produced_metal)
  
}