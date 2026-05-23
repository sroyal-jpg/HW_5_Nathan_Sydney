
# LOSS OF WASTE METAL MODULE

# CONTRACT

# inputs: primary metal (MT), collection rate (%)
# output: waste metal (MT)

# parameters
## collection rate

#' @param collection rate (%)

# function definition
waste_loss = function(produced_metal, collection_rate) {
  
  waste_metal = (produced_metal * (1-collection_rate))
  
  return(waste_metal)
  
}