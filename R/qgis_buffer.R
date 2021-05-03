##' QGIS Algorithm provided by QGIS (native c++) Buffer (native:buffer)
##'
##' @title QGIS algorithm Buffer
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param DISTANCE `distance` - Distance. A numeric value.
##' @param SEGMENTS `number` - Segments. A numeric value.
##' @param END_CAP_STYLE `enum`  of `("Round", "Flat", "Square")` - End cap style. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param JOIN_STYLE `enum`  of `("Round", "Miter", "Bevel")` - Join style. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param MITER_LIMIT `number` - Miter limit. A numeric value.
##' @param DISSOLVE `boolean` - Dissolve result. 1 for true/yes. 0 for false/no.
##' @param OUTPUT `sink` - Buffered. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Buffered
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_buffer <- function(INPUT = qgisprocess::qgis_default_value(), DISTANCE = qgisprocess::qgis_default_value(), SEGMENTS = qgisprocess::qgis_default_value(), END_CAP_STYLE = qgisprocess::qgis_default_value(), JOIN_STYLE = qgisprocess::qgis_default_value(), MITER_LIMIT = qgisprocess::qgis_default_value(), DISSOLVE = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:buffer")

  output <- qgisprocess::qgis_run_algorithm("native:buffer", `INPUT` = INPUT, `DISTANCE` = DISTANCE, `SEGMENTS` = SEGMENTS, `END_CAP_STYLE` = END_CAP_STYLE, `JOIN_STYLE` = JOIN_STYLE, `MITER_LIMIT` = MITER_LIMIT, `DISSOLVE` = DISSOLVE, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}