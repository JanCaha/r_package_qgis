##' QGIS Algorithm provided by QGIS (native c++) Offset lines (native:offsetline). Offsets lines by a specified distance. This algorithm offsets lines by a specified distance. Positive distances will offset lines to the left, and negative distances will offset to the right of lines.  The segments parameter controls the number of line segments to use to approximate a quarter circle when creating rounded offsets.  The join style parameter specifies whether round, miter or beveled joins should be used when offsetting corners in a line.  The miter limit parameter is only applicable for miter join styles, and controls the maximum distance from the offset curve to use when creating a mitered join.
##'
##' @title QGIS algorithm - Offset lines
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param DISTANCE `distance` - Distance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SEGMENTS `number` - Segments. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param JOIN_STYLE `enum`  of `("Round", "Miter", "Bevel")` - Join style. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param MITER_LIMIT `number` - Miter limit. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Offset. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Offset
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_offsetline <- function(INPUT = qgisprocess:::qgis_default_value(), DISTANCE = qgisprocess:::qgis_default_value(), SEGMENTS = qgisprocess:::qgis_default_value(), JOIN_STYLE = qgisprocess:::qgis_default_value(), MITER_LIMIT = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:offsetline")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:offsetline", `INPUT` = INPUT, `DISTANCE` = DISTANCE, `SEGMENTS` = SEGMENTS, `JOIN_STYLE` = JOIN_STYLE, `MITER_LIMIT` = MITER_LIMIT, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:offsetline", `INPUT` = INPUT, `DISTANCE` = DISTANCE, `SEGMENTS` = SEGMENTS, `JOIN_STYLE` = JOIN_STYLE, `MITER_LIMIT` = MITER_LIMIT, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}