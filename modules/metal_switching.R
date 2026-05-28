
# METAL SWITCHING MODULE

### THIS IS THE FOR LOOP

#################### SEPARATE INTO WEEK AND WEEKEND LOOPS

## WEEK LOOP
week_produced_metal <- numeric(nrow(metal_ore))     # pre-allocate empty results vectors
week_collected_scrap <- numeric(nrow(metal_ore))
week_recycled_metal <- numeric(nrow(metal_ore))
week_waste <- numeric(nrow(metal_ore))

for (i in 1:nrow(metal_ore)) {
  
  week_produced_metal[i] <- metal_production(
    metal_ore = metal_ore$mass[i],
    recycled_metal = week_recycled_metal[i],
    production_rate = metal_ore$week_production_rate[i]
  )
  
  week_collected_scrap[i] <- collection_scrap(
    produced_metal = week_produced_metal[i],
    collection_rate = metal_ore$collection_rate[i]
  )
  
  week_recycled_metal[i] <- scrap_recycling(
    collected_scrap = week_collected_scrap[i],
    recycling_rate = metal_ore$week_recycling_rate[i]
  )
  
  week_waste[i] <- waste_loss(
    produced_metal = week_produced_metal[i],
    collection_rate = metal_ore$collection_rate[i],
    recycled_metal = week_recycled_metal[i],
    recycling_rate = metal_ore$week_recycling_rate[i],
    mass = metal_ore$mass[i]
  )
}

# create intermediary dataframe
week_metal_transformed <- data.frame(
  metal = metal,
  week_produced_metal,
  week_collected_scrap,
  week_recycled_metal,
  week_waste
)

## WEEKEND LOOP
weekend_produced_metal <- numeric(nrow(metal_ore))     # pre-allocate empty results vectors
weekend_collected_scrap <- numeric(nrow(metal_ore))
weekend_recycled_metal <- numeric(nrow(metal_ore))
weekend_waste <- numeric(nrow(metal_ore))

for (i in 1:nrow(metal_ore)) {
  
  weekend_produced_metal[i] <- metal_production(
    metal_ore = metal_ore$mass[i],
    recycled_metal = weekend_recycled_metal[i],
    production_rate = metal_ore$weekend_production_rate[i]
  )
  
  weekend_collected_scrap[i] <- collection_scrap(
    produced_metal = weekend_produced_metal[i],
    collection_rate = metal_ore$collection_rate[i]
  )
  
  weekend_recycled_metal[i] <- scrap_recycling(
    collected_scrap = weekend_collected_scrap[i],
    recycling_rate = metal_ore$weekend_recycling_rate[i]
  )
  
  weekend_waste[i] <- waste_loss(
    produced_metal = weekend_produced_metal[i],
    collection_rate = metal_ore$collection_rate[i],
    recycled_metal = weekend_recycled_metal[i],
    recycling_rate = metal_ore$weekend_recycling_rate[i],
    mass = metal_ore$mass[i]
  )
}

# create intermediary dataframe
weekend_metal_transformed <- data.frame(
  metal = metal,
  weekend_produced_metal,
  weekend_collected_scrap,
  weekend_recycled_metal,
  weekend_waste
)

# merge transformed metals and metal ore data frames
week_metal_full_cycle <- merge(metal_ore, week_metal_transformed) |>
  select(-weekend_production_rate, -weekend_recycling_rate)
weekend_metal_full_cycle <- merge(metal_ore, weekend_metal_transformed) |>
  select(-week_production_rate, -week_recycling_rate)


