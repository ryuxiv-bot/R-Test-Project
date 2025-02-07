# This file is part of the standard setup for testthat.
# It is recommended that you do not modify it.
#
# Where should you do additional test configuration?
# Learn more about the roles of various files in:
# * https://r-pkgs.org/testing-design.html#sec-tests-files-overview
# * https://testthat.r-lib.org/articles/special-files.html

library(testthat)
library(churnprob)

test_that('Highest churn probability is greater than lowest', {
  test_data <- data.table(CustomerId = c(1, 2, 3), Churn_Probability = c(0.9, 0.5, 0.1))
  highest_churn <- test_data[which.max(test_data$Churn_Probability), ]
  lowest_churn <- test_data[which.min(test_data$Churn_Probability), ]
  expect_true(highest_churn$Churn_Probability > lowest_churn$Churn_Probability)
})

setwd("churnPredictor")
test()
setwd("..")
