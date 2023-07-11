##' QGIS Algorithm provided by SAGA Next Gen Fill sinks (qm of esp) (sagang:fillsinksqmofesp). ---------------- Arguments ----------------  DEM: DEM 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer FILLED: DEM without Sinks 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SINKS: Sinks 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer DZFILL: Fill Increment 	Default value:	0.01 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Fill sinks (qm of esp)
##'
##' @param DEM `raster` - DEM. Path to a raster layer.
##' @param FILLED `rasterDestination` - DEM without Sinks. Path for new raster layer.
##' @param SINKS `rasterDestination` - Sinks. Path for new raster layer.
##' @param DZFILL `number` - Fill Increment. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * FILLED - outputRaster - DEM without Sinks
##' * SINKS - outputRaster - Sinks
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_fillsinksqmofesp <- function(DEM = qgisprocess:::qgis_default_value(), FILLED = qgisprocess:::qgis_default_value(), SINKS = qgisprocess:::qgis_default_value(), DZFILL = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:fillsinksqmofesp")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:fillsinksqmofesp", `DEM` = DEM, `FILLED` = FILLED, `SINKS` = SINKS, `DZFILL` = DZFILL,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:fillsinksqmofesp", `DEM` = DEM, `FILLED` = FILLED, `SINKS` = SINKS, `DZFILL` = DZFILL,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "FILLED")
  }
}