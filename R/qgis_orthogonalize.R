##' QGIS Algorithm provided by QGIS (native c++) Orthogonalize (native:orthogonalize)
##'
##' @title QGIS algorithm Orthogonalize
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param ANGLE_TOLERANCE `number` - Maximum angle tolerance (degrees). A numeric value.
##' @param MAX_ITERATIONS `number` - Maximum algorithm iterations. A numeric value.
##' @param OUTPUT `sink` - Orthogonalized. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Orthogonalized
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_orthogonalize <- function(INPUT = qgisprocess::qgis_default_value(), ANGLE_TOLERANCE = qgisprocess::qgis_default_value(), MAX_ITERATIONS = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("native:orthogonalize")
  output <- qgisprocess::qgis_run_algorithm("native:orthogonalize",`INPUT` = INPUT, `ANGLE_TOLERANCE` = ANGLE_TOLERANCE, `MAX_ITERATIONS` = MAX_ITERATIONS, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}