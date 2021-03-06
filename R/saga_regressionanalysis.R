##' QGIS Algorithm provided by SAGA Regression analysis (saga:regressionanalysis)
##'
##' @title QGIS algorithm Regression analysis
##'
##' @param GRID `raster` - Grid. Path to a raster layer.
##' @param SHAPES `source` - Shapes. Path to a vector layer.
##' @param ATTRIBUTE `field` - Attribute. The name of an existing field. ; delimited list of existing field names.
##' @param INTERPOL `enum`  of `("[0] Nearest Neighbor", "[1] Bilinear Interpolation", "[2] Inverse Distance Interpolation", "[3] Bicubic Spline Interpolation", "[4] B-Spline Interpolation")` - Grid Interpolation. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param METHOD `enum`  of `("[0] Y = a + b * X (linear)", "[1] Y = a + b / X", "[2] Y = a / (b - X)", "[3] Y = a * X^b (power)", "[4] Y = a e^(b * X) (exponential)", "[5] Y = a + b * ln(X) (logarithmic)")` - Regression Function. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param REGRESSION `rasterDestination` - Regression. Path for new raster layer.
##' @param RESIDUAL `vectorDestination` - Residuals. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * REGRESSION - outputRaster - Regression
##' * RESIDUAL - outputVector - Residuals
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_regressionanalysis <- function(GRID = qgisprocess::qgis_default_value(), SHAPES = qgisprocess::qgis_default_value(), ATTRIBUTE = qgisprocess::qgis_default_value(), INTERPOL = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), REGRESSION = qgisprocess::qgis_default_value(), RESIDUAL = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:regressionanalysis")

  output <- qgisprocess::qgis_run_algorithm("saga:regressionanalysis", `GRID` = GRID, `SHAPES` = SHAPES, `ATTRIBUTE` = ATTRIBUTE, `INTERPOL` = INTERPOL, `METHOD` = METHOD, `REGRESSION` = REGRESSION, `RESIDUAL` = RESIDUAL,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "REGRESSION")
  }
}