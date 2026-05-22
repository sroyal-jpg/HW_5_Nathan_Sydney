
# METAL PRODUCTION MODULE

# CONTRACT

# inputs: metal ore, recycled metal, production rate (% H/L)
# output: primary metal

# parameters
### production rate
### metal ore
### recycled metal

#' @param production rate (%)

# function definition

metal_production = function(metal_ore, recycled_metal, production_rate) {
  
  produced_metal = (metal_ore + recycled_metal) * (production_rate)
  
  return(produced_metal)
  
}



