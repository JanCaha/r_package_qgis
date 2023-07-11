##' QGIS Algorithm provided by QGIS (native c++) Line substring (native:linesubstring). Returns the substring of lines which fall between start and end distances. This algorithm returns the portion of a line (or curve) which falls between the specified start and end distances (measured from the beginning of the line).  Z and M values are linearly interpolated from existing values.  If a multipart geometry is encountered, only the first part is considered when calculating the substring.
##'
##' @title QGIS algorithm - Line substring
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param START_DISTANCE `distance` - Start distance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param END_DISTANCE `distance` - End distance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Substring. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Substring
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_linesubstring <- function(INPUT = qgisprocess:::qgis_default_value(), START_DISTANCE = qgisprocess:::qgis_default_value(), END_DISTANCE = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:linesubstring")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:linesubstring", `INPUT` = INPUT, `START_DISTANCE` = START_DISTANCE, `END_DISTANCE` = END_DISTANCE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:linesubstring", `INPUT` = INPUT, `START_DISTANCE` = START_DISTANCE, `END_DISTANCE` = END_DISTANCE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}