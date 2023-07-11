##' QGIS Algorithm provided by SAGA Next Gen Threshold raster buffer (sagang:thresholdrasterbuffer). ---------------- Arguments ----------------  FEATURES: Features Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer VALUE: Value Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer THRESHOLDGRID: Threshold Grid (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer BUFFER: Buffer Grid 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer THRESHOLD: Threshold 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression THRESHOLDTYPE: Threshold Type 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Absolute 		- 1: (1) Relative from cell value 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Threshold raster buffer
##'
##' @param FEATURES `raster` - Features Grid. Path to a raster layer.
##' @param VALUE `raster` - Value Grid. Path to a raster layer.
##' @param THRESHOLDGRID `raster` - Threshold Grid. Path to a raster layer.
##' @param BUFFER `rasterDestination` - Buffer Grid. Path for new raster layer.
##' @param THRESHOLD `number` - Threshold. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param THRESHOLDTYPE `enum`  of `("(0) Absolute", "(1) Relative from cell value")` - Threshold Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * BUFFER - outputRaster - Buffer Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_thresholdrasterbuffer <- function(FEATURES = qgisprocess:::qgis_default_value(), VALUE = qgisprocess:::qgis_default_value(), THRESHOLDGRID = qgisprocess:::qgis_default_value(), BUFFER = qgisprocess:::qgis_default_value(), THRESHOLD = qgisprocess:::qgis_default_value(), THRESHOLDTYPE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:thresholdrasterbuffer")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:thresholdrasterbuffer", `FEATURES` = FEATURES, `VALUE` = VALUE, `THRESHOLDGRID` = THRESHOLDGRID, `BUFFER` = BUFFER, `THRESHOLD` = THRESHOLD, `THRESHOLDTYPE` = THRESHOLDTYPE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:thresholdrasterbuffer", `FEATURES` = FEATURES, `VALUE` = VALUE, `THRESHOLDGRID` = THRESHOLDGRID, `BUFFER` = BUFFER, `THRESHOLD` = THRESHOLD, `THRESHOLDTYPE` = THRESHOLDTYPE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "BUFFER")
  }
}