##' QGIS Algorithm provided by QGIS (native c++) Variable width buffer (by M value) (native:bufferbym)
##'
##' @title QGIS algorithm Variable width buffer (by M value)
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param SEGMENTS `number` - Segments. A numeric value.
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

qgis_bufferbym <- function(INPUT = qgisprocess::qgis_default_value(), SEGMENTS = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:bufferbym")

  output <- qgisprocess::qgis_run_algorithm("native:bufferbym", `INPUT` = INPUT, `SEGMENTS` = SEGMENTS, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}