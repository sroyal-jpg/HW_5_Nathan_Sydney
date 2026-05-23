
# LOSS OF WASTE METAL MODULE

# CONTRACT

# inputs: primary metal (MT), collection rate (%), recycled metal (MT), recycling rate (%), mass (MT)
# output: waste metal (MT)

# parameters
## collection rate
## recycling rate

#' @param collection rate (%)
#' @param recycling rate (%)

# function definition
waste_loss = function(produced_metal, collection_rate, recycled_metal, recycling_rate, mass) {
  
  waste = ((produced_metal * (1 - collection_rate) + (recycled_metal * (1 - recycling_rate)) + (mass - produced_metal)))
  
  return(waste)
  
}