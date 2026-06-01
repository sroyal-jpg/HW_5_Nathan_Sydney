
# waste tests


# if recycling rate = 1 and collection rate = 1, none of the metal entering the collection and recycling steps are lost
# therefore, the only waste being generated should be in the production step
# which would mean waste = starting mass - produced metal

test_that("waste_loss works",{
  recycling_rate <- 1
  collection_rate <- 1
  produced_metal <- 80
  mass <- 100
  recycled_metal <- 30
  
  expect_equal(waste_loss(produced_metal, collection_rate, recycled_metal, recycling_rate, mass), mass - produced_metal)
})

# the waste generated cannot exceed the starting mass of the metal

test_that("waste is less than starting metal ore mass",{
  
  expect_error(waste > mass)
})










