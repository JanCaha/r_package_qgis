##' QGIS Algorithm provided by SAGA Next Gen Raster proximity buffer (sagang:rasterproximitybuffer). ---------------- Arguments ----------------  SOURCE: Source Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer DISTANCE: Distance Grid 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer ALLOC: Allocation Grid 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer BUFFER: Buffer Grid 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer DIST: Buffer distance 	Default value:	500 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression IVAL: Equidistance 	Default value:	100 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Raster proximity buffer
##'
##' @param SOURCE `raster` - Source Grid. Path to a raster layer.
##' @param DISTANCE `rasterDestination` - Distance Grid. Path for new raster layer.
##' @param ALLOC `rasterDestination` - Allocation Grid. Path for new raster layer.
##' @param BUFFER `rasterDestination` - Buffer Grid. Path for new raster layer.
##' @param DIST `number` - Buffer distance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param IVAL `number` - Equidistance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * ALLOC - outputRaster - Allocation Grid
##' * BUFFER - outputRaster - Buffer Grid
##' * DISTANCE - outputRaster - Distance Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_rasterproximitybuffer <- function(SOURCE = qgisprocess:::qgis_default_value(), DISTANCE = qgisprocess:::qgis_default_value(), ALLOC = qgisprocess:::qgis_default_value(), BUFFER = qgisprocess:::qgis_default_value(), DIST = qgisprocess:::qgis_default_value(), IVAL = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:rasterproximitybuffer")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:rasterproximitybuffer", `SOURCE` = SOURCE, `DISTANCE` = DISTANCE, `ALLOC` = ALLOC, `BUFFER` = BUFFER, `DIST` = DIST, `IVAL` = IVAL,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:rasterproximitybuffer", `SOURCE` = SOURCE, `DISTANCE` = DISTANCE, `ALLOC` = ALLOC, `BUFFER` = BUFFER, `DIST` = DIST, `IVAL` = IVAL,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "ALLOC")
  }
}