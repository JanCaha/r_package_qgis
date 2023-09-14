# Test internal package building functions

test_that("Functions fix parameter names", {
  skip_on_cran()
  skip_in_RCDMCHECK()

  source(here::here("build-package", "build-functions", "functions_fix_parameter_names.R"))

  argument <- replace_starting_minus("-m")

  expect_equal(argument, ".m")

  argument <- remove_asterisk("arg*")

  expect_equal(argument, "arg")

  argument <- replace_spaces("arg name")

  expect_equal(argument, "arg_name")

  argument <- add_arg_to_numeric_arguments("-1")

  expect_equal(argument, "-arg_1")

  argument <- add_arg_to_numeric_arguments("1")

  expect_equal(argument, "arg_1")

  argument <- add_arg_to_reserverd_keywords("function")

  expect_equal(argument, "arg_function")

})

test_that("Functions fix_description", {
  skip_on_cran()
  skip_in_RCDMCHECK()

  source(here::here("build-package", "build-functions", "functions_fix_parameter_names.R"))

  argument <- remove_brackets("text [a]")

  expect_equal(argument, "text (a)")

  argument <- remove_brackets("text <a>")

  expect_equal(argument, "text a")

})

test_that("Functions fix_description", {
  skip_on_cran()
  skip_in_RCDMCHECK()

  source(here::here("build-package", "build-functions", "functions_fix_parameter_names.R"))

  argument <- convert_to_R_arg_names("-m*")

  expect_equal(argument, ".m")

  argument <- convert_to_R_arg_names("1")

  expect_equal(argument, "arg_1")

  argument <- convert_to_R_arg_names("for a")

  expect_equal(argument, "for_a")

  argument <- convert_to_R_arg_names("for")

  expect_equal(argument, "arg_for")
})

test_that("Functions fix_description", {
  skip_on_cran()
  skip_in_RCDMCHECK()

  source(here::here("build-package", "build-functions", "functions_fix_algorithm_id.R"))

  alg_id <- fix_algorithm_id("grass7.r.do_something")

  expect_equal(alg_id, "grass7_r_do_something")

})
