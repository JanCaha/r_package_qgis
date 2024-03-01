##' QGIS Algorithm provided by QGIS (native c++) Upload GPS data to device (native:uploadgpsdata). This algorithm uses the GPSBabel tool to upload data to a GPS device from the GPX standard format.
##'
##' @title QGIS algorithm - Upload GPS data to device
##'
##' @param INPUT `file` - Input file. Path to a file.
##' @param DEVICE `string` - Device. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param PORT `string` - Port. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param FEATURE_TYPE `enum`  of `("Waypoints", "Routes", "Tracks")` - Feature type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' No output description provided.
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_uploadgpsdata <- function(INPUT = qgisprocess:::qgis_default_value(), DEVICE = qgisprocess:::qgis_default_value(), PORT = qgisprocess:::qgis_default_value(), FEATURE_TYPE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:uploadgpsdata")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:uploadgpsdata", `INPUT` = INPUT, `DEVICE` = DEVICE, `PORT` = PORT, `FEATURE_TYPE` = FEATURE_TYPE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:uploadgpsdata", `INPUT` = INPUT, `DEVICE` = DEVICE, `PORT` = PORT, `FEATURE_TYPE` = FEATURE_TYPE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}