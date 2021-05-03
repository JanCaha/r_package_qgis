##' QGIS Algorithm provided by QGIS (native c++) Convert to curved geometries (native:converttocurves)
##'
##' @title QGIS algorithm Convert to curved geometries
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param DISTANCE `number` - Maximum distance tolerance. A numeric value.
##' @param ANGLE `number` - Maximum angle tolerance. A numeric value.
##' @param OUTPUT `sink` - Curves. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Curves
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_converttocurves <- function(INPUT = qgisprocess::qgis_default_value(), DISTANCE = qgisprocess::qgis_default_value(), ANGLE = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:converttocurves")

  output <- qgisprocess::qgis_run_algorithm("native:converttocurves", `INPUT` = INPUT, `DISTANCE` = DISTANCE, `ANGLE` = ANGLE, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}