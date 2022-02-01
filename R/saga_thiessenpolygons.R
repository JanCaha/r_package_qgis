##' QGIS Algorithm provided by SAGA Thiessen polygons (saga:thiessenpolygons)
##'
##' @title QGIS algorithm Thiessen polygons
##'
##' @param POINTS `source` - Points. Path to a vector layer.
##' @param POLYGONS `vectorDestination` - Polygons. Path for new vector layer.
##' @param FRAME `number` - Frame Size. A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * POLYGONS - outputVector - Polygons
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_thiessenpolygons <- function(POINTS = qgisprocess::qgis_default_value(), POLYGONS = qgisprocess::qgis_default_value(), FRAME = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:thiessenpolygons")

  output <- qgisprocess::qgis_run_algorithm("saga:thiessenpolygons", `POINTS` = POINTS, `POLYGONS` = POLYGONS, `FRAME` = FRAME,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "POLYGONS")
  }
}