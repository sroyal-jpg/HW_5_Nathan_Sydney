
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

metal_production = function(metal_ore, recycled_metal, production_rate) {
  
  produced_metal = (metal_ore + recycled_metal) * (production_rate)
  
  return(produced_metal)
  
}




