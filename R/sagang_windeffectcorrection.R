##' QGIS Algorithm provided by SAGA Next Gen Wind effect correction (sagang:windeffectcorrection). ---------------- Arguments ----------------  BOUNDARY: Boundary Layer 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer WIND: Wind Effect 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer OBSERVED: Observations 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer B_GRID: Calibrated Scaling Factor 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer WINDCORR: Corrected Wind Effect 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer B_SOURCE: Scaling Factor 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) constant 		- 1: (1) calibrate 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' B_CONST: Constant Scaling Factor 	Default value:	0.01 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression B_MAX: Maximum Scaling Factor 	Default value:	0.05 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression B_STEPS: Number of Steps 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression KERNEL_TYPE: Kernel Type 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) Square 		- 1: (1) Circle 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' KERNEL_SIZE: Kernel Size 	Default value:	2 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Wind effect correction
##'
##' @param BOUNDARY `raster` - Boundary Layer. Path to a raster layer.
##' @param WIND `raster` - Wind Effect. Path to a raster layer.
##' @param OBSERVED `raster` - Observations. Path to a raster layer.
##' @param B_GRID `rasterDestination` - Calibrated Scaling Factor. Path for new raster layer.
##' @param WINDCORR `rasterDestination` - Corrected Wind Effect. Path for new raster layer.
##' @param B_SOURCE `enum`  of `("(0) constant", "(1) calibrate")` - Scaling Factor. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param B_CONST `number` - Constant Scaling Factor. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param B_MAX `number` - Maximum Scaling Factor. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param B_STEPS `number` - Number of Steps. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param KERNEL_TYPE `enum`  of `("(0) Square", "(1) Circle")` - Kernel Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param KERNEL_SIZE `number` - Kernel Size. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * B_GRID - outputRaster - Calibrated Scaling Factor
##' * WINDCORR - outputRaster - Corrected Wind Effect
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_windeffectcorrection <- function(BOUNDARY = qgisprocess:::qgis_default_value(), WIND = qgisprocess:::qgis_default_value(), OBSERVED = qgisprocess:::qgis_default_value(), B_GRID = qgisprocess:::qgis_default_value(), WINDCORR = qgisprocess:::qgis_default_value(), B_SOURCE = qgisprocess:::qgis_default_value(), B_CONST = qgisprocess:::qgis_default_value(), B_MAX = qgisprocess:::qgis_default_value(), B_STEPS = qgisprocess:::qgis_default_value(), KERNEL_TYPE = qgisprocess:::qgis_default_value(), KERNEL_SIZE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:windeffectcorrection")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:windeffectcorrection", `BOUNDARY` = BOUNDARY, `WIND` = WIND, `OBSERVED` = OBSERVED, `B_GRID` = B_GRID, `WINDCORR` = WINDCORR, `B_SOURCE` = B_SOURCE, `B_CONST` = B_CONST, `B_MAX` = B_MAX, `B_STEPS` = B_STEPS, `KERNEL_TYPE` = KERNEL_TYPE, `KERNEL_SIZE` = KERNEL_SIZE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:windeffectcorrection", `BOUNDARY` = BOUNDARY, `WIND` = WIND, `OBSERVED` = OBSERVED, `B_GRID` = B_GRID, `WINDCORR` = WINDCORR, `B_SOURCE` = B_SOURCE, `B_CONST` = B_CONST, `B_MAX` = B_MAX, `B_STEPS` = B_STEPS, `KERNEL_TYPE` = KERNEL_TYPE, `KERNEL_SIZE` = KERNEL_SIZE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "B_GRID")
  }
}