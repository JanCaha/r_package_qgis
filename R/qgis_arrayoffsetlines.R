##' QGIS Algorithm provided by QGIS (native c++) Array of offset (parallel) lines (native:arrayoffsetlines). Creates multiple offset copies of lines from a layer. This algorithm creates copies of line features in a layer, by creating multiple offset versions of each feature. Each copy is offset by a preset distance.
##'
##' @title QGIS algorithm - Array of offset (parallel) lines
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param COUNT `number` - Number of features to create. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OFFSET `distance` - Offset step distance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SEGMENTS `number` - Segments. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param JOIN_STYLE `enum`  of `("Round", "Miter", "Bevel")` - Join style. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param MITER_LIMIT `number` - Miter limit. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Offset lines. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Offset lines
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_arrayoffsetlines <- function(INPUT = qgisprocess:::qgis_default_value(), COUNT = qgisprocess:::qgis_default_value(), OFFSET = qgisprocess:::qgis_default_value(), SEGMENTS = qgisprocess:::qgis_default_value(), JOIN_STYLE = qgisprocess:::qgis_default_value(), MITER_LIMIT = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:arrayoffsetlines")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:arrayoffsetlines", `INPUT` = INPUT, `COUNT` = COUNT, `OFFSET` = OFFSET, `SEGMENTS` = SEGMENTS, `JOIN_STYLE` = JOIN_STYLE, `MITER_LIMIT` = MITER_LIMIT, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:arrayoffsetlines", `INPUT` = INPUT, `COUNT` = COUNT, `OFFSET` = OFFSET, `SEGMENTS` = SEGMENTS, `JOIN_STYLE` = JOIN_STYLE, `MITER_LIMIT` = MITER_LIMIT, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}