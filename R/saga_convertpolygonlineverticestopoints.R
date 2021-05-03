##' QGIS Algorithm provided by SAGA Convert polygon/line vertices to points (saga:convertpolygonlineverticestopoints)
##'
##' @title QGIS algorithm Convert polygon/line vertices to points
##'
##' @param SHAPES `source` - Shapes. Path to a vector layer.
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

saga_convertpolygonlineverticestopoints <- function(SHAPES = qgisprocess::qgis_default_value(), POINTS = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:convertpolygonlineverticestopoints")
  output <- qgisprocess::qgis_run_algorithm("saga:convertpolygonlineverticestopoints",`SHAPES` = SHAPES, `POINTS` = POINTS,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "POINTS")
  }
}