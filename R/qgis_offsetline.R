##' QGIS Algorithm provided by QGIS (native c++) Offset lines (native:offsetline)
##'
##' @title QGIS algorithm Offset lines
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param DISTANCE `distance` - Distance. A numeric value.
##' @param SEGMENTS `number` - Segments. A numeric value.
##' @param JOIN_STYLE `enum`  of `("Round", "Miter", "Bevel")` - Join style. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param MITER_LIMIT `number` - Miter limit. A numeric value.
##' @param OUTPUT `sink` - Offset. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Offset
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_offsetline <- function(INPUT = qgisprocess::qgis_default_value(), DISTANCE = qgisprocess::qgis_default_value(), SEGMENTS = qgisprocess::qgis_default_value(), JOIN_STYLE = qgisprocess::qgis_default_value(), MITER_LIMIT = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("native:offsetline",`INPUT` = INPUT, `DISTANCE` = DISTANCE, `SEGMENTS` = SEGMENTS, `JOIN_STYLE` = JOIN_STYLE, `MITER_LIMIT` = MITER_LIMIT, `OUTPUT` = OUTPUT,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
}
}