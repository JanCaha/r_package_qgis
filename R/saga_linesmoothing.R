##' QGIS Algorithm provided by SAGA Line smoothing (saga:linesmoothing)
##'
##' @title QGIS algorithm Line smoothing
##'
##' @param LINES_IN `source` - Lines. Path to a vector layer.
##' @param LINES_OUT `vectorDestination` - Smoothed Lines. Path for new vector layer.
##' @param METHOD `enum`  of `("[0] basic SIA model", "[1] improved SIA model", "[2] Gaussian Filtering")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SENSITIVITY `number` - Sensitivity. A numeric value.
##' @param ITERATIONS `number` - Iterations. A numeric value.
##' @param PRESERVATION `number` - Preservation. A numeric value.
##' @param SIGMA `number` - Sigma. A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * LINES_OUT - outputVector - Smoothed Lines
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_linesmoothing <- function(LINES_IN = qgisprocess::qgis_default_value(), LINES_OUT = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), SENSITIVITY = qgisprocess::qgis_default_value(), ITERATIONS = qgisprocess::qgis_default_value(), PRESERVATION = qgisprocess::qgis_default_value(), SIGMA = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:linesmoothing")
  output <- qgisprocess::qgis_run_algorithm("saga:linesmoothing",`LINES_IN` = LINES_IN, `LINES_OUT` = LINES_OUT, `METHOD` = METHOD, `SENSITIVITY` = SENSITIVITY, `ITERATIONS` = ITERATIONS, `PRESERVATION` = PRESERVATION, `SIGMA` = SIGMA,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "LINES_OUT")
  }
}