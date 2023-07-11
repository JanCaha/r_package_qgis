##' QGIS Algorithm provided by SAGA Next Gen Lake flood (sagang:lakeflood). ---------------- Arguments ----------------  ELEV: DEM 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer SEEDS: Seeds 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer LEVEL: Absolute Water Levels 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression OUTDEPTH: Lake 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer OUTLEVEL: Surface 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer
##'
##' @title QGIS algorithm - Lake flood
##'
##' @param ELEV `raster` - DEM. Path to a raster layer.
##' @param SEEDS `raster` - Seeds. Path to a raster layer.
##' @param LEVEL `boolean` - Absolute Water Levels. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTDEPTH `rasterDestination` - Lake. Path for new raster layer.
##' @param OUTLEVEL `rasterDestination` - Surface. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTDEPTH - outputRaster - Lake
##' * OUTLEVEL - outputRaster - Surface
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_lakeflood <- function(ELEV = qgisprocess:::qgis_default_value(), SEEDS = qgisprocess:::qgis_default_value(), LEVEL = qgisprocess:::qgis_default_value(), OUTDEPTH = qgisprocess:::qgis_default_value(), OUTLEVEL = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:lakeflood")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:lakeflood", `ELEV` = ELEV, `SEEDS` = SEEDS, `LEVEL` = LEVEL, `OUTDEPTH` = OUTDEPTH, `OUTLEVEL` = OUTLEVEL,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:lakeflood", `ELEV` = ELEV, `SEEDS` = SEEDS, `LEVEL` = LEVEL, `OUTDEPTH` = OUTDEPTH, `OUTLEVEL` = OUTLEVEL,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTDEPTH")
  }
}