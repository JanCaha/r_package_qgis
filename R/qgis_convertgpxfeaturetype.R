##' QGIS Algorithm provided by QGIS (native c++) Convert GPX feature type (native:convertgpxfeaturetype). This algorithm uses the GPSBabel tool to convert GPX features from one type to another (e.g. converting all waypoint features to a route feature).
##'
##' @title QGIS algorithm - Convert GPX feature type
##'
##' @param INPUT `file` - Input file. Path to a file.
##' @param CONVERSION `enum`  of `("Waypoints from a Route", "Waypoints from a Track", "Route from Waypoints", "Track from Waypoints")` - Conversion. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param OUTPUT `fileDestination` - Output. Path for new file.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputFile - Output
##' * OUTPUT_LAYER - outputVector - Output layer
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_convertgpxfeaturetype <- function(INPUT = qgisprocess:::qgis_default_value(), CONVERSION = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:convertgpxfeaturetype")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:convertgpxfeaturetype", `INPUT` = INPUT, `CONVERSION` = CONVERSION, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:convertgpxfeaturetype", `INPUT` = INPUT, `CONVERSION` = CONVERSION, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}