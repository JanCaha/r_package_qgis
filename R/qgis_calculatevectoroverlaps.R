##' QGIS Algorithm provided by QGIS (native c++) Overlap analysis (native:calculatevectoroverlaps)
##'
##' @title QGIS algorithm Overlap analysis
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param LAYERS `multilayer` - Overlay layers. .
##' @param OUTPUT `sink` - Overlap. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Overlap
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_calculatevectoroverlaps <- function(INPUT = qgisprocess::qgis_default_value(), LAYERS = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:calculatevectoroverlaps")

  output <- qgisprocess::qgis_run_algorithm("native:calculatevectoroverlaps", `INPUT` = INPUT, `LAYERS` = LAYERS, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}