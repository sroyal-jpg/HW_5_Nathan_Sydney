
# COLLECTION OF SCRAP METAL MODULE
# THIS ONE IS USING THE ROXYGEN PACKAGE

#' Scrap Collected from Produced Metal
#' 
#' This function determines the amount of scrap metal collected after metal was produced by a given collection rate for a metal ore type
#' @param collection_rate Percent of metal collected
#' @param produced_metal Amount of metal produced (MT)
#' @return collected_scrap (MT)

# function definition
collection_scrap = function(produced_metal, collection_rate) {
  
  collected_scrap = produced_metal * collection_rate
  
  if (any(collection_rate > 1)) {
    warning("collection rate should not exceed 100%")
  }
  
  return(collected_scrap)
}