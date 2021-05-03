##' QGIS Algorithm provided by SAGA Regression analysis (points and predictor grid) (saga:regressionanalysispointsandpredictorgrid)
##'
##' @title QGIS algorithm Regression analysis (points and predictor grid)
##'
##' @param PREDICTOR `raster` - Predictor. Path to a raster layer.
##' @param POINTS `source` - Points. Path to a vector layer.
##' @param ATTRIBUTE `source` - Dependent Variable. Path to a vector layer.
##' @param REGRESSION `rasterDestination` - Regression. Path for new raster layer.
##' @param RESIDUAL `vectorDestination` - Residuals. Path for new vector layer.
##' @param RESAMPLING `enum`  of `("[0] Nearest Neighbour", "[1] Bilinear Interpolation", "[2] Bicubic Spline Interpolation", "[3] B-Spline Interpolation")` - Resampling. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param METHOD `enum`  of `("[0] Y = a + b * X (linear)", "[1] Y = a + b / X", "[2] Y = a / (b - X)", "[3] Y = a * X^b (power)", "[4] Y = a e^(b * X) (exponential)", "[5] Y = a + b * ln(X) (logarithmic)")` - Regression Function. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * REGRESSION - outputRaster - Regression
##' * RESIDUAL - outputVector - Residuals
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_regressionanalysispointsandpredictorgrid <- function(PREDICTOR = qgisprocess::qgis_default_value(), POINTS = qgisprocess::qgis_default_value(), ATTRIBUTE = qgisprocess::qgis_default_value(), REGRESSION = qgisprocess::qgis_default_value(), RESIDUAL = qgisprocess::qgis_default_value(), RESAMPLING = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:regressionanalysispointsandpredictorgrid")
  output <- qgisprocess::qgis_run_algorithm("saga:regressionanalysispointsandpredictorgrid",`PREDICTOR` = PREDICTOR, `POINTS` = POINTS, `ATTRIBUTE` = ATTRIBUTE, `REGRESSION` = REGRESSION, `RESIDUAL` = RESIDUAL, `RESAMPLING` = RESAMPLING, `METHOD` = METHOD,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "REGRESSION")
  }
}