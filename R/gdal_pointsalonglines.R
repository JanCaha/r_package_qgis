##' QGIS Algorithm provided by GDAL Points along lines (gdal:pointsalonglines)
##'
##' @title QGIS algorithm Points along lines
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param GEOMETRY `string` - Geometry column name. String value.
##' @param DISTANCE `number` - Distance from line start represented as fraction of line length. A numeric value.
##' @param OPTIONS `string` - Additional creation options. String value.
##' @param OUTPUT `vectorDestination` - Points along lines. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Points along lines
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

gdal_pointsalonglines <- function(INPUT = qgisprocess:::qgis_default_value(), GEOMETRY = qgisprocess:::qgis_default_value(), DISTANCE = qgisprocess:::qgis_default_value(), OPTIONS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("gdal:pointsalonglines")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("gdal:pointsalonglines", `INPUT` = INPUT, `GEOMETRY` = GEOMETRY, `DISTANCE` = DISTANCE, `OPTIONS` = OPTIONS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("gdal:pointsalonglines", `INPUT` = INPUT, `GEOMETRY` = GEOMETRY, `DISTANCE` = DISTANCE, `OPTIONS` = OPTIONS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}