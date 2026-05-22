
# METAL PRODUCTION MODULE

# CONTRACT

# inputs: metal ore, recycled metal, production rate (% H/L)
# output: primary metal

# parameters
### production rate
### metal ore
### recycled metal

#' @param production rate (%)


# can I put the data frame inside of this module?

# make different parts of the data frame based on if electricity is high or low

# function definition

metal_production = function(electricity) {
  
  produced_metal = (metal_ore + recycled_metal) * (production_rate)
  
  return(produced_metal)
  
}

###################### REVISED VERSION ########

metal_production <- function(electricity) {
  
  metal <- c("steel", "aluminum", "copper")
  
  metal_ore <- data.frame(
    metal = metal,
    mass = runif(length(metal), 1, 100)
  )
  
  # production rate depends on electricity
    metal_ore$production_rate <- ifelse(
    electricity == "high",
    runif(length(metal), 0, 0.5),
    runif(length(metal), 0.6, 1)
  )
  
  # recycling rate depends on electricity
  metal_ore$recycling_rate <- ifelse(
    electricity == "high",
    runif(length(metal), 0.3, 0.7),
    runif(length(metal), 0.6, 1)
  )
  
  metal_ore$collection_rate <- runif(length(metal), 0, 1)
  
  return(metal_ore)
  
}





