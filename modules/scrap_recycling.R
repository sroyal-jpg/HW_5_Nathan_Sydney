
# RECYCLING OF SCRAP METAL MODULE

#' @param recycling_rate Percentage of collected scrap metal that is successfully recycled.
#' @param collected_scrap Amount of produced metal that is collected as scrap in Mt.
#' @return recycled_metal Amount of collected scrap metal that is recycled in Mt.
#' @author Nathan

scrap_recycling = function(collected_scrap, recycling_rate) {
  
  recycled_metal = (collected_scrap * recycling_rate)
  
  return(recycled_metal)
}