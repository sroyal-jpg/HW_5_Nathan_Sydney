
# RECYCLING OF SCRAP METAL MODULE

# CONTRACT

# inputs: scrap metal (Mt)
# output: recycled metal (Mt)

# parameters
#' @param recycling rate (%)

# function definition

scrap_recycling = function(collected_scrap, recycling_rate) {
  
  recycled_metal = (collected_scrap * recycling_rate)
  
  return(recycled_metal)
  
}
