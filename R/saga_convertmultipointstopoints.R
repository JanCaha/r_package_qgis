##' QGIS Algorithm provided by SAGA Convert multipoints to points (saga:convertmultipointstopoints)
##'
##' @title QGIS algorithm Convert multipoints to points
##'
##' @param MULTIPOINTS `source` - Multipoints. Path to a vector layer.
##' @param POINTS `vectorDestination` - Points. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * POINTS - outputVector - Points
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_convertmultipointstopoints <- function(MULTIPOINTS = qgisprocess::qgis_default_value(), POINTS = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:convertmultipointstopoints",`MULTIPOINTS` = MULTIPOINTS, `POINTS` = POINTS,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "POINTS")
}
}