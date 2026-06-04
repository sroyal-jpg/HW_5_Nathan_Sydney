#' Waste Module
#'
#' @param collection_rate Percentage of produced metal that is collected as scrap.
#' @param recycling_rate Percentage of collected scrap metal that is recycled.
#' @param produced_metal Amount of metal that is produced from metal ore in Mt.
#' @param recycled_metal Amount of collected scrap metal that is recycled in Mt.
#' @param mass Total starting mass of metal ore of that metal type in Mt.
#' @return waste Amount of waste generated from the production, collection and recycling processes in Mt.
#' @author Nathan

waste_loss = function(produced_metal, collection_rate, recycled_metal, recycling_rate, mass) {
  
  waste = ((produced_metal * (1 - collection_rate) + (recycled_metal * (1 - recycling_rate)) + (mass - produced_metal)))
  
  return(waste)
}