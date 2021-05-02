##' QGIS Algorithm provided by QGIS (native c++) Array of offset (parallel) lines (native:arrayoffsetlines)
##'
##' @title QGIS algorithm Array of offset (parallel) lines
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param COUNT `number` - Number of features to create. A numeric value.
##' @param OFFSET `distance` - Offset step distance. A numeric value.
##' @param SEGMENTS `number` - Segments. A numeric value.
##' @param JOIN_STYLE `enum`  of `("Round", "Miter", "Bevel")` - Join style. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param MITER_LIMIT `number` - Miter limit. A numeric value.
##' @param OUTPUT `sink` - Offset lines. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Offset lines
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_arrayoffsetlines <- function(INPUT = qgisprocess::qgis_default_value(), COUNT = qgisprocess::qgis_default_value(), OFFSET = qgisprocess::qgis_default_value(), SEGMENTS = qgisprocess::qgis_default_value(), JOIN_STYLE = qgisprocess::qgis_default_value(), MITER_LIMIT = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("native:arrayoffsetlines")
  output <- qgisprocess::qgis_run_algorithm("native:arrayoffsetlines",`INPUT` = INPUT, `COUNT` = COUNT, `OFFSET` = OFFSET, `SEGMENTS` = SEGMENTS, `JOIN_STYLE` = JOIN_STYLE, `MITER_LIMIT` = MITER_LIMIT, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}