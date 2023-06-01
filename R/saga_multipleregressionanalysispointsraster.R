##' QGIS Algorithm provided by SAGA Multiple regression analysis (points/raster) (saga:multipleregressionanalysispointsraster)
##'
##' @title QGIS algorithm Multiple regression analysis (points/raster)
##'
##' @param GRIDS `multilayer` - Grids. .
##' @param SHAPES `source` - Shapes. Path to a vector layer.
##' @param ATTRIBUTE `field` - Attribute. The name of an existing field. ; delimited list of existing field names.
##' @param INTERPOL `enum`  of `("[0] Nearest Neighbor", "[1] Bilinear Interpolation", "[2] Inverse Distance Interpolation", "[3] Bicubic Spline Interpolation", "[4] B-Spline Interpolation")` - Grid Interpolation. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param METHOD `enum`  of `("[0] include all", "[1] forward", "[2] backward", "[3] stepwise")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param P_IN `number` - P in. A numeric value.
##' @param P_OUT `number` - P out. A numeric value.
##' @param INFO_COEFF `vectorDestination` - Details: Coefficients. Path for new vector layer.
##' @param INFO_MODEL `vectorDestination` - Details: Model. Path for new vector layer.
##' @param INFO_STEPS `vectorDestination` - Details: Steps. Path for new vector layer.
##' @param RESIDUALS `vectorDestination` - Residuals. Path for new vector layer.
##' @param REGRESSION `rasterDestination` - Regression. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * INFO_COEFF - outputVector - Details: Coefficients
##' * INFO_MODEL - outputVector - Details: Model
##' * INFO_STEPS - outputVector - Details: Steps
##' * REGRESSION - outputRaster - Regression
##' * RESIDUALS - outputVector - Residuals
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_multipleregressionanalysispointsraster <- function(GRIDS = qgisprocess:::qgis_default_value(), SHAPES = qgisprocess:::qgis_default_value(), ATTRIBUTE = qgisprocess:::qgis_default_value(), INTERPOL = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), P_IN = qgisprocess:::qgis_default_value(), P_OUT = qgisprocess:::qgis_default_value(), INFO_COEFF = qgisprocess:::qgis_default_value(), INFO_MODEL = qgisprocess:::qgis_default_value(), INFO_STEPS = qgisprocess:::qgis_default_value(), RESIDUALS = qgisprocess:::qgis_default_value(), REGRESSION = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:multipleregressionanalysispointsraster")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:multipleregressionanalysispointsraster", `GRIDS` = GRIDS, `SHAPES` = SHAPES, `ATTRIBUTE` = ATTRIBUTE, `INTERPOL` = INTERPOL, `METHOD` = METHOD, `P_IN` = P_IN, `P_OUT` = P_OUT, `INFO_COEFF` = INFO_COEFF, `INFO_MODEL` = INFO_MODEL, `INFO_STEPS` = INFO_STEPS, `RESIDUALS` = RESIDUALS, `REGRESSION` = REGRESSION,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:multipleregressionanalysispointsraster", `GRIDS` = GRIDS, `SHAPES` = SHAPES, `ATTRIBUTE` = ATTRIBUTE, `INTERPOL` = INTERPOL, `METHOD` = METHOD, `P_IN` = P_IN, `P_OUT` = P_OUT, `INFO_COEFF` = INFO_COEFF, `INFO_MODEL` = INFO_MODEL, `INFO_STEPS` = INFO_STEPS, `RESIDUALS` = RESIDUALS, `REGRESSION` = REGRESSION,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "INFO_COEFF")
  }
}