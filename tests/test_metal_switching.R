
# switching tests


# row count of the full cycle data frame should be the same as the metal ore data frame

test_that("full cycle data frame dimensions are correct",{
  
  expect_equal(nrow(week_metal_full_cycle), nrow(metal_ore))
  expect_equal(nrow(weekend_metal_full_cycle), nrow(metal_ore))
})

# the weekend full cycle data frame should not have week values
# vice versa, the week full cycle data frame should not have weekend values

test_that("week and weekend values are mutually exclusive",{
  
  expect_false("weekend_production_rate" %in% names(week_metal_full_cycle))
  expect_false("weekend_recycling_rate" %in% names(week_metal_full_cycle))
  expect_false("week_production_rate" %in% names(weekend_metal_full_cycle))
  expect_false("week_recycling_rate" %in% names(weekend_metal_full_cycle))
})











