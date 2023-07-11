##' QGIS Algorithm provided by QGIS (native c++) Buffer (native:buffer). This algorithm computes a buffer area for all the features in an input layer, using a fixed or dynamic distance.  The segments parameter controls the number of line segments to use to approximate a quarter circle when creating rounded offsets.  The end cap style parameter controls how line endings are handled in the buffer.  The join style parameter specifies whether round, miter or beveled joins should be used when offsetting corners in a line.  The miter limit parameter is only applicable for miter join styles, and controls the maximum distance from the offset curve to use when creating a mitered join.
##'
##' @title QGIS algorithm - Buffer
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param DISTANCE `distance` - Distance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SEGMENTS `number` - Segments. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param END_CAP_STYLE `enum`  of `("Round", "Flat", "Square")` - End cap style. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param JOIN_STYLE `enum`  of `("Round", "Miter", "Bevel")` - Join style. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param MITER_LIMIT `number` - Miter limit. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DISSOLVE `boolean` - Dissolve result. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SEPARATE_DISJOINT `boolean` - Keep disjoint results separate. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
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

qgis_buffer <- function(INPUT = qgisprocess:::qgis_default_value(), DISTANCE = qgisprocess:::qgis_default_value(), SEGMENTS = qgisprocess:::qgis_default_value(), END_CAP_STYLE = qgisprocess:::qgis_default_value(), JOIN_STYLE = qgisprocess:::qgis_default_value(), MITER_LIMIT = qgisprocess:::qgis_default_value(), DISSOLVE = qgisprocess:::qgis_default_value(), SEPARATE_DISJOINT = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:buffer")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:buffer", `INPUT` = INPUT, `DISTANCE` = DISTANCE, `SEGMENTS` = SEGMENTS, `END_CAP_STYLE` = END_CAP_STYLE, `JOIN_STYLE` = JOIN_STYLE, `MITER_LIMIT` = MITER_LIMIT, `DISSOLVE` = DISSOLVE, `SEPARATE_DISJOINT` = SEPARATE_DISJOINT, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:buffer", `INPUT` = INPUT, `DISTANCE` = DISTANCE, `SEGMENTS` = SEGMENTS, `END_CAP_STYLE` = END_CAP_STYLE, `JOIN_STYLE` = JOIN_STYLE, `MITER_LIMIT` = MITER_LIMIT, `DISSOLVE` = DISSOLVE, `SEPARATE_DISJOINT` = SEPARATE_DISJOINT, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}