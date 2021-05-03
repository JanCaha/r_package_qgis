##' QGIS Algorithm provided by QGIS (native c++) Subdivide (native:subdivide)
##'
##' @title QGIS algorithm Subdivide
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param MAX_NODES `number` - Maximum nodes in parts. A numeric value.
##' @param OUTPUT `sink` - Subdivided. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Subdivided
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_subdivide <- function(INPUT = qgisprocess::qgis_default_value(), MAX_NODES = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:subdivide")

  output <- qgisprocess::qgis_run_algorithm("native:subdivide", `INPUT` = INPUT, `MAX_NODES` = MAX_NODES, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}