
# COLLECTION OF SCRAP METAL MODULE

# CONTRACT

# inputs: primary metal (Mt), collection rate (%)
# output: scrap metal (Mt)

# parameters
#' @param collection rate (%)

# function definition
collection_scrap = function(produced_metal, collection_rate) {
  
  collected_scrap = (produced_metal * collection_rate)
  
  return(collected_scrap)
  
}