##' QGIS Algorithm provided by QGIS (native c++) Split lines by maximum length (native:splitlinesbylength). Splits lines into parts which are no longer than a specified length. This algorithm takes a line (or curve) layer and splits each feature into multiple parts, where each part is of a specified maximum length.  Z and M values at the start and end of the new line substrings are linearly interpolated from existing values.
##'
##' @title QGIS algorithm - Split lines by maximum length
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param LENGTH `distance` - Maximum line length. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Split. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Split
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_splitlinesbylength <- function(INPUT = qgisprocess:::qgis_default_value(), LENGTH = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:splitlinesbylength")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:splitlinesbylength", `INPUT` = INPUT, `LENGTH` = LENGTH, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:splitlinesbylength", `INPUT` = INPUT, `LENGTH` = LENGTH, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}