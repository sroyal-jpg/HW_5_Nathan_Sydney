
# recycling tests


# if recycling rate = 1 all of the collected metal entering the recycling step becomes recycled metal
# therefore, collected_scrap = recycled_metal

test_that("scrap_recycling works when recycling_rate = 1",{
  recycling_rate <- 1
  collected_scrap <- 20
  
  expect_equal(scrap_recycling(recycling_rate, collected_scrap), collected_scrap)
})

# if recycling rate = 0 none of the collected metal entering the recycling step becomes recycled metal
# because no recycled metal is generated, primary metal production only uses metal ore and the production rate
# therefore, produced_metal = metal_ore * production_rate

test_that("metal_production works when recycling_rate = 0",{
  recycling_rate <- 0
  production_rate <- 0.6
  metal_ore <- 50
  collected_scrap <- 20
  
  expect_equal(metal_production(metal_ore, recycled_metal, production_rate), metal_ore * production_rate)
})