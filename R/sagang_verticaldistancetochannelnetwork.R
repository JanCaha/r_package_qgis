##' QGIS Algorithm provided by SAGA Next Gen Vertical distance to channel network (sagang:verticaldistancetochannelnetwork). ---------------- Arguments ----------------  ELEVATION: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer CHANNELS: Channel Network 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer DISTANCE: Vertical Distance to Channel Network 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer BASELEVEL: Channel Network Base Level 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer THRESHOLD: Tension Threshold 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression MAXITER: Maximum Iterations 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression NOUNDERGROUND: Keep Base Level below Surface 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Vertical distance to channel network
##'
##' @param ELEVATION `raster` - Elevation. Path to a raster layer.
##' @param CHANNELS `raster` - Channel Network. Path to a raster layer.
##' @param DISTANCE `rasterDestination` - Vertical Distance to Channel Network. Path for new raster layer.
##' @param BASELEVEL `rasterDestination` - Channel Network Base Level. Path for new raster layer.
##' @param THRESHOLD `number` - Tension Threshold. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MAXITER `number` - Maximum Iterations. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param NOUNDERGROUND `boolean` - Keep Base Level below Surface. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * BASELEVEL - outputRaster - Channel Network Base Level
##' * DISTANCE - outputRaster - Vertical Distance to Channel Network
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_verticaldistancetochannelnetwork <- function(ELEVATION = qgisprocess:::qgis_default_value(), CHANNELS = qgisprocess:::qgis_default_value(), DISTANCE = qgisprocess:::qgis_default_value(), BASELEVEL = qgisprocess:::qgis_default_value(), THRESHOLD = qgisprocess:::qgis_default_value(), MAXITER = qgisprocess:::qgis_default_value(), NOUNDERGROUND = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:verticaldistancetochannelnetwork")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:verticaldistancetochannelnetwork", `ELEVATION` = ELEVATION, `CHANNELS` = CHANNELS, `DISTANCE` = DISTANCE, `BASELEVEL` = BASELEVEL, `THRESHOLD` = THRESHOLD, `MAXITER` = MAXITER, `NOUNDERGROUND` = NOUNDERGROUND,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:verticaldistancetochannelnetwork", `ELEVATION` = ELEVATION, `CHANNELS` = CHANNELS, `DISTANCE` = DISTANCE, `BASELEVEL` = BASELEVEL, `THRESHOLD` = THRESHOLD, `MAXITER` = MAXITER, `NOUNDERGROUND` = NOUNDERGROUND,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "BASELEVEL")
  }
}