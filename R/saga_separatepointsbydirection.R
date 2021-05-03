##' QGIS Algorithm provided by SAGA Separate points by direction (saga:separatepointsbydirection)
##'
##' @title QGIS algorithm Separate points by direction
##'
##' @param POINTS `source` - Points. Path to a vector layer.
##' @param DIRECTIONS `number` - Number of Directions. A numeric value.
##' @param TOLERANCE `number` - Tolerance (Degree). A numeric value.
##' @param OUTPUT `vectorDestination` - Point direction. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Point direction
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_separatepointsbydirection <- function(POINTS = qgisprocess::qgis_default_value(), DIRECTIONS = qgisprocess::qgis_default_value(), TOLERANCE = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:separatepointsbydirection")

  output <- qgisprocess::qgis_run_algorithm("saga:separatepointsbydirection", `POINTS` = POINTS, `DIRECTIONS` = DIRECTIONS, `TOLERANCE` = TOLERANCE, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}