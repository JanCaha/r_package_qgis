##' QGIS Algorithm provided by QGIS (native c++) Split with lines (native:splitwithlines)
##'
##' @title QGIS algorithm Split with lines
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param LINES `source` - Split layer. Path to a vector layer.
##' @param OUTPUT `sink` - Split. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Split
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_splitwithlines <- function(INPUT = qgisprocess::qgis_default_value(), LINES = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("native:splitwithlines",`INPUT` = INPUT, `LINES` = LINES, `OUTPUT` = OUTPUT,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
}
}