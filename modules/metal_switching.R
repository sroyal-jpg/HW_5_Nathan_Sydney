
# METAL SWITCHING MODULE


# inputs: metal
# output: metal

#' @param metal


### THIS IS THE FOR LOOP

## run each module one row at a time
produced_metal <- numeric(nrow(metal_ore))  # pre-allocate empty results vector
collected_scrap <- numeric(nrow(metal_ore))
recycled_metal <- numeric(nrow(metal_ore))
waste <- numeric(nrow(metal_ore))

for (i in 1:nrow(metal_ore)) {
  produced_metal[i] <- metal_production(
    metal_ore     = metal_ore$mass[i],
    recycled_metal = recycled_metal[i],
    production_rate = metal_ore$production_rate[i]
  )
  
  collected_scrap[i] <- collection_scrap(
    produced_metal = produced_metal[i],
    collection_rate = metal_ore$collection_rate[i]
  )
  
  recycled_metal[i] <- scrap_recycling(
    collected_scrap = collected_scrap[i],
    recycling_rate = metal_ore$recycling_rate[i]
  ) 
  
  waste[i] <- waste_loss(
    produced_metal = produced_metal[i],
    collection_rate = metal_ore$collection_rate[i],
    recycled_metal = recycled_metal[i],
    recycling_rate = metal_ore$recycling_rate[i],
    mass = metal_ore$mass[i]
  )
}

df1 <- data.frame(
  metal = metal,
  produced_metal,
  collected_scrap,
  recycled_metal,
  waste
)

full_metal_cycle <- merge(metal_ore, df1)