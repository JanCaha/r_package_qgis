##' QGIS Algorithm provided by SAGA Next Gen Remove small pixel clumps (to no-data) (sagang:removesmallpixelclumpstonodata). ---------------- Arguments ----------------  GRID: Input Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer OUTPUT: Filtered Grid 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer THRESHOLD: Min. Size 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Remove small pixel clumps (to no-data)
##'
##' @param GRID `raster` - Input Grid. Path to a raster layer.
##' @param OUTPUT `rasterDestination` - Filtered Grid. Path for new raster layer.
##' @param THRESHOLD `number` - Min. Size. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Filtered Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_removesmallpixelclumpstonodata <- function(GRID = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), THRESHOLD = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:removesmallpixelclumpstonodata")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:removesmallpixelclumpstonodata", `GRID` = GRID, `OUTPUT` = OUTPUT, `THRESHOLD` = THRESHOLD,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:removesmallpixelclumpstonodata", `GRID` = GRID, `OUTPUT` = OUTPUT, `THRESHOLD` = THRESHOLD,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}