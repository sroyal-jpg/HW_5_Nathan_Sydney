
# RECYCLING OF SCRAP METAL MODULE

# CONTRACT

# inputs: scrap metal (MT), recycling rate (%)
# output: recycled metal (MT)

# parameters
## recycling rate

#' @param recycling rate (%)

# function definition

scrap_recycling = function(collected_scrap, recycling_rate) {
  
  recycled_metal = (collected_scrap * recycling_rate)
  
  return(recycled_metal)
  
}
