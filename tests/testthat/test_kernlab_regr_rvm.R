test_that("autotest", {
  set.seed(2)
  learner = lrn("regr.rvm")
  expect_learner(learner)
  capture.output({
    result = run_autotest(learner)
  })
  expect_true(result, info = result$error)
})

test_that("regr.rvm sigma", {
  learner = lrn("regr.rvm", kpar = list(sigma = 0.2))
  t = tsk("mtcars")
  capture.output({
    learner$train(t)
  })
  expect_equal(learner$model@kernelf@kpar$sigma, 0.2)

  learner = lrn("regr.rvm", sigma = 0.2)
  capture.output({
    learner$train(t)
  })
  expect_equal(learner$model@kernelf@kpar$sigma, 0.2)
})
