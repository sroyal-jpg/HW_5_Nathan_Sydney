
# collection tests


# if collection rate = 1, then collected scrap should = produced metal

test_that("collection_scrap works",{
  produced_metal <- 50
  collection_rate <- 1
  
  expect_equal(collection_scrap(produced_metal, collection_rate),50)
})

# the collection rate should usually not be 100%, so the result should be less than produced
# since collection rate COULD hypothetically be 100%, but it's rare, it'll be a warning
# testing just for the week

test_that("collected scrap should be less than produced metal",{
  
  expect_warning(week_collected_scrap > week_produced_metal)
})










