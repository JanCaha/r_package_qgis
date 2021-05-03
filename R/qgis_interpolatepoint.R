##' QGIS Algorithm provided by QGIS (native c++) Interpolate point on line (native:interpolatepoint)
##'
##' @title QGIS algorithm Interpolate point on line
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param DISTANCE `distance` - Distance. A numeric value.
##' @param OUTPUT `sink` - Interpolated points. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Interpolated points
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_interpolatepoint <- function(INPUT = qgisprocess::qgis_default_value(), DISTANCE = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:interpolatepoint")

  output <- qgisprocess::qgis_run_algorithm("native:interpolatepoint", `INPUT` = INPUT, `DISTANCE` = DISTANCE, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}