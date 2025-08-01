test_that("importance/selected", {
  set.seed(1)
  task = tsk("iris")
  learner = lrn("classif.rfsrc")
  capture.output({
    learner$train(task)
  })
  expect_error(learner$importance(), "Set 'importance'")
  expect_error(learner$selected_features(), "Set 'var.used'")
})

test_that("autotest", {
  learner = lrn("classif.rfsrc")
  learner$param_set$values = list(
    importance = "random", na.action = "na.impute",
    do.trace = TRUE)
  expect_learner(learner)
  set.seed(1)
  capture.output({
    result = run_autotest(learner, exclude = "uf8_feature_names")
  })
  expect_true(result, info = result$error)
})

test_that("convert_ratio", {
  task = tsk("sonar")
  learner = lrn("classif.rfsrc", ntree = 5, mtry.ratio = .5)
  capture.output({
    expect_equal(learner$train(task)$model$mtry, 30)
  })

  learner$param_set$values$mtry.ratio = 0
  capture.output({
    expect_equal(learner$train(task)$model$mtry, 1)
  })

  learner$param_set$values$mtry.ratio = 1
  capture.output({
    expect_equal(learner$train(task)$model$mtry, 60)
  })

  learner$param_set$values$mtry = 10
  expect_error(learner$train(task), "exclusive")

  learner$param_set$values$mtry.ratio = NULL
  capture.output({
    expect_equal(learner$train(task)$model$mtry, 10)
  })
})
