test_that("autotest", {
  learner = lrn("classif.dlda")
  expect_learner(learner)
  # note that you can skip tests using the exclude argument
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})
