##' QGIS Algorithm provided by QGIS (native c++) Roundness (native:roundness)
##'
##' @title QGIS algorithm Roundness
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param OUTPUT `sink` - Roundness. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Roundness
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_roundness <- function(INPUT = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:roundness")

  output <- qgisprocess::qgis_run_algorithm("native:roundness", `INPUT` = INPUT, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}