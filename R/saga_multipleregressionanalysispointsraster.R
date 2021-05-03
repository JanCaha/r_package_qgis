##' QGIS Algorithm provided by SAGA Multiple regression analysis (points/raster) (saga:multipleregressionanalysispointsraster)
##'
##' @title QGIS algorithm Multiple regression analysis (points/raster)
##'
##' @param GRIDS `multilayer` - Grids. .
##' @param SHAPES `source` - Shapes. Path to a vector layer.
##' @param ATTRIBUTE `field` - Attribute. The name of an existing field. ; delimited list of existing field names.
##' @param INTERPOL `enum`  of `("[0] Nearest Neighbor", "[1] Bilinear Interpolation", "[2] Inverse Distance Interpolation", "[3] Bicubic Spline Interpolation", "[4] B-Spline Interpolation")` - Grid Interpolation. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param COORD_X `boolean` - Include X Coordinate. 1 for true/yes. 0 for false/no.
##' @param COORD_Y `boolean` - Include Y Coordinate. 1 for true/yes. 0 for false/no.
##' @param METHOD `enum`  of `("[0] include all", "[1] forward", "[2] backward", "[3] stepwise")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param P_IN `number` - P in. A numeric value.
##' @param P_OUT `number` - P out. A numeric value.
##' @param INFO_COEFF `vectorDestination` - Details: Coefficients. Path for new vector layer.
##' @param INFO_MODEL `vectorDestination` - Details: Model. Path for new vector layer.
##' @param INFO_STEPS `vectorDestination` - Details: Steps. Path for new vector layer.
##' @param RESIDUALS `vectorDestination` - Residuals. Path for new vector layer.
##' @param REGRESSION `rasterDestination` - Regression. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * INFO_COEFF - outputVector - Details
##' * INFO_MODEL - outputVector - Details
##' * INFO_STEPS - outputVector - Details
##' * RESIDUALS - outputVector - Residuals
##' * REGRESSION - outputRaster - Regression
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_multipleregressionanalysispointsraster <- function(GRIDS = qgisprocess::qgis_default_value(), SHAPES = qgisprocess::qgis_default_value(), ATTRIBUTE = qgisprocess::qgis_default_value(), INTERPOL = qgisprocess::qgis_default_value(), COORD_X = qgisprocess::qgis_default_value(), COORD_Y = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), P_IN = qgisprocess::qgis_default_value(), P_OUT = qgisprocess::qgis_default_value(), INFO_COEFF = qgisprocess::qgis_default_value(), INFO_MODEL = qgisprocess::qgis_default_value(), INFO_STEPS = qgisprocess::qgis_default_value(), RESIDUALS = qgisprocess::qgis_default_value(), REGRESSION = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:multipleregressionanalysispointsraster")

  output <- qgisprocess::qgis_run_algorithm("saga:multipleregressionanalysispointsraster", `GRIDS` = GRIDS, `SHAPES` = SHAPES, `ATTRIBUTE` = ATTRIBUTE, `INTERPOL` = INTERPOL, `COORD_X` = COORD_X, `COORD_Y` = COORD_Y, `METHOD` = METHOD, `P_IN` = P_IN, `P_OUT` = P_OUT, `INFO_COEFF` = INFO_COEFF, `INFO_MODEL` = INFO_MODEL, `INFO_STEPS` = INFO_STEPS, `RESIDUALS` = RESIDUALS, `REGRESSION` = REGRESSION,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "INFO_COEFF")
  }
}