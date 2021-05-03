##' QGIS Algorithm provided by SAGA Fit n points in polygon (saga:fitnpointsinpolygon)
##'
##' @title QGIS algorithm Fit n points in polygon
##'
##' @param SHAPES `source` - Shapes. Path to a vector layer.
##' @param NUMPOINTS `number` - Number of points. A numeric value.
##' @param POINTS `vectorDestination` - Points. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * POINTS - outputVector - Points
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_fitnpointsinpolygon <- function(SHAPES = qgisprocess::qgis_default_value(), NUMPOINTS = qgisprocess::qgis_default_value(), POINTS = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:fitnpointsinpolygon")

  output <- qgisprocess::qgis_run_algorithm("saga:fitnpointsinpolygon", `SHAPES` = SHAPES, `NUMPOINTS` = NUMPOINTS, `POINTS` = POINTS,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "POINTS")
  }
}