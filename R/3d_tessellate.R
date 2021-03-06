##' QGIS Algorithm provided by QGIS (3D) Tessellate (3d:tessellate)
##'
##' @title QGIS algorithm Tessellate
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param OUTPUT `sink` - Tessellated. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Tessellated
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_3d_tessellate <- function(INPUT = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("3d:tessellate")

  output <- qgisprocess::qgis_run_algorithm("3d:tessellate", `INPUT` = INPUT, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}