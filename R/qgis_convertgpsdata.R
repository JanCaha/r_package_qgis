##' QGIS Algorithm provided by QGIS (native c++) Convert GPS data (native:convertgpsdata). Converts a GPS data file from a range of formats to the GPX standard format. This algorithm uses the GPSBabel tool to convert a GPS data file from a range of formats to the GPX standard format.
##'
##' @title QGIS algorithm - Convert GPS data
##'
##' @param INPUT `file` - Input file. Path to a file.
##' @param FORMAT `string` - Format. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param FEATURE_TYPE `enum`  of `("Waypoints", "Routes", "Tracks")` - Feature type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
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

qgis_convertgpsdata <- function(INPUT = qgisprocess:::qgis_default_value(), FORMAT = qgisprocess:::qgis_default_value(), FEATURE_TYPE = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:convertgpsdata")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:convertgpsdata", `INPUT` = INPUT, `FORMAT` = FORMAT, `FEATURE_TYPE` = FEATURE_TYPE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:convertgpsdata", `INPUT` = INPUT, `FORMAT` = FORMAT, `FEATURE_TYPE` = FEATURE_TYPE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}