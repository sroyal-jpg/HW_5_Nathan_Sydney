
# metal production tests

# test that the mass input is a real mass - can't be less than 0
test_that("mass input is positive",{

  expect_error(metal_production(-5,0,1))
  
})

# if the production rate is 1, and recycled metal is 0, then produced metal should = metal ore

test_that("metal production works",{
  # make test data
        metal_ore <- 40
        recycled_metal <- 0
        production_rate <- 1

  expect_equal(metal_production(metal_ore,recycled_metal,production_rate),40)
})



