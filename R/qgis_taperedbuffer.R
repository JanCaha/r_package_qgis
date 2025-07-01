##' QGIS Algorithm provided by QGIS (native c++) Tapered buffers (native:taperedbuffer). Creates tapered buffers along line geometries. This algorithm creates tapered buffers along line geometries, using a specified start and end buffer diameter corresponding to the buffer diameter at the start and end of the linestrings.
##'
##' @title QGIS algorithm - Tapered buffers
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param START_WIDTH `number` - Start width. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param END_WIDTH `number` - End width. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SEGMENTS `number` - Segments. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Buffered. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Buffered
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_taperedbuffer <- function(INPUT = qgisprocess:::qgis_default_value(), START_WIDTH = qgisprocess:::qgis_default_value(), END_WIDTH = qgisprocess:::qgis_default_value(), SEGMENTS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:taperedbuffer")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:taperedbuffer", `INPUT` = INPUT, `START_WIDTH` = START_WIDTH, `END_WIDTH` = END_WIDTH, `SEGMENTS` = SEGMENTS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:taperedbuffer", `INPUT` = INPUT, `START_WIDTH` = START_WIDTH, `END_WIDTH` = END_WIDTH, `SEGMENTS` = SEGMENTS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}