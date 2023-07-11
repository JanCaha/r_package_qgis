##' QGIS Algorithm provided by SAGA Next Gen Notch filter for grids (sagang:notchfilterforgrids). ---------------- Arguments ----------------  INPUT_GRID: Input Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer LOWPASS_UPPER: Lowpass Upper 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer HIPASS_LOWER: Highpass Lower 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer FILTERED_GRID: Notch 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer HIGH_PASS: Upper search distance  	Default value:	75 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression LOW_PASS: Lower search distance 	Default value:	25 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Notch filter for grids
##'
##' @param INPUT_GRID `raster` - Input Grid. Path to a raster layer.
##' @param LOWPASS_UPPER `rasterDestination` - Lowpass Upper. Path for new raster layer.
##' @param HIPASS_LOWER `rasterDestination` - Highpass Lower. Path for new raster layer.
##' @param FILTERED_GRID `rasterDestination` - Notch. Path for new raster layer.
##' @param HIGH_PASS `number` - Upper search distance . A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param LOW_PASS `number` - Lower search distance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * FILTERED_GRID - outputRaster - Notch
##' * HIPASS_LOWER - outputRaster - Highpass Lower
##' * LOWPASS_UPPER - outputRaster - Lowpass Upper
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_notchfilterforgrids <- function(INPUT_GRID = qgisprocess:::qgis_default_value(), LOWPASS_UPPER = qgisprocess:::qgis_default_value(), HIPASS_LOWER = qgisprocess:::qgis_default_value(), FILTERED_GRID = qgisprocess:::qgis_default_value(), HIGH_PASS = qgisprocess:::qgis_default_value(), LOW_PASS = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:notchfilterforgrids")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:notchfilterforgrids", `INPUT_GRID` = INPUT_GRID, `LOWPASS_UPPER` = LOWPASS_UPPER, `HIPASS_LOWER` = HIPASS_LOWER, `FILTERED_GRID` = FILTERED_GRID, `HIGH_PASS` = HIGH_PASS, `LOW_PASS` = LOW_PASS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:notchfilterforgrids", `INPUT_GRID` = INPUT_GRID, `LOWPASS_UPPER` = LOWPASS_UPPER, `HIPASS_LOWER` = HIPASS_LOWER, `FILTERED_GRID` = FILTERED_GRID, `HIGH_PASS` = HIGH_PASS, `LOW_PASS` = LOW_PASS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "FILTERED_GRID")
  }
}