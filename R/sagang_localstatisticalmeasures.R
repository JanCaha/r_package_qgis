##' QGIS Algorithm provided by SAGA Next Gen Local statistical measures (sagang:localstatisticalmeasures). ---------------- Arguments ----------------  GRID: Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer CONTRAST: Contrast 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer ENERGY: Energy 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer ENTROPY: Entropy 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer VARIANCE: Variance 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer TYPE: Kernel 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) square 		- 1: (1) circle 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' RADIUS: Radius 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression NORMALIZE: Normalization 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) no 		- 1: (1) scale to range 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' NORM_MIN: Minimum 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression NORM_MAX: Maximum 	Default value:	255 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Local statistical measures
##'
##' @param GRID `raster` - Grid. Path to a raster layer.
##' @param CONTRAST `rasterDestination` - Contrast. Path for new raster layer.
##' @param ENERGY `rasterDestination` - Energy. Path for new raster layer.
##' @param ENTROPY `rasterDestination` - Entropy. Path for new raster layer.
##' @param VARIANCE `rasterDestination` - Variance. Path for new raster layer.
##' @param TYPE `enum`  of `("(0) square", "(1) circle")` - Kernel. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param RADIUS `number` - Radius. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param NORMALIZE `enum`  of `("(0) no", "(1) scale to range")` - Normalization. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param NORM_MIN `number` - Minimum. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param NORM_MAX `number` - Maximum. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * CONTRAST - outputRaster - Contrast
##' * ENERGY - outputRaster - Energy
##' * ENTROPY - outputRaster - Entropy
##' * VARIANCE - outputRaster - Variance
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_localstatisticalmeasures <- function(GRID = qgisprocess:::qgis_default_value(), CONTRAST = qgisprocess:::qgis_default_value(), ENERGY = qgisprocess:::qgis_default_value(), ENTROPY = qgisprocess:::qgis_default_value(), VARIANCE = qgisprocess:::qgis_default_value(), TYPE = qgisprocess:::qgis_default_value(), RADIUS = qgisprocess:::qgis_default_value(), NORMALIZE = qgisprocess:::qgis_default_value(), NORM_MIN = qgisprocess:::qgis_default_value(), NORM_MAX = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:localstatisticalmeasures")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:localstatisticalmeasures", `GRID` = GRID, `CONTRAST` = CONTRAST, `ENERGY` = ENERGY, `ENTROPY` = ENTROPY, `VARIANCE` = VARIANCE, `TYPE` = TYPE, `RADIUS` = RADIUS, `NORMALIZE` = NORMALIZE, `NORM_MIN` = NORM_MIN, `NORM_MAX` = NORM_MAX,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:localstatisticalmeasures", `GRID` = GRID, `CONTRAST` = CONTRAST, `ENERGY` = ENERGY, `ENTROPY` = ENTROPY, `VARIANCE` = VARIANCE, `TYPE` = TYPE, `RADIUS` = RADIUS, `NORMALIZE` = NORMALIZE, `NORM_MIN` = NORM_MIN, `NORM_MAX` = NORM_MAX,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CONTRAST")
  }
}