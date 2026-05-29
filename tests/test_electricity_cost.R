
# electricity cost tests
# Inputs for the cost of electric —> should be month, day

# test that electricity cost month is valid

test_that("month is a valid date", {
  
  # generate sample data
  month <- 3
  
  expect_true(month %in% 1:12)
}
)


# test that the electricity cost day works
test_that("day is a valid weekday name", {
  day<- "Saturday"
  
  expect_true(day %in% c(
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday"
  ))
}
)
