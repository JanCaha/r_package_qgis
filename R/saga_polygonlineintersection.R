##' QGIS Algorithm provided by SAGA Polygon-line intersection (saga:polygonlineintersection)
##'
##' @title QGIS algorithm Polygon-line intersection
##'
##' @param POLYGONS `source` - Polygons. Path to a vector layer.
##' @param LINES `source` - Lines. Path to a vector layer.
##' @param INTERSECT `vectorDestination` - Intersection. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * INTERSECT - outputVector - Intersection
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_polygonlineintersection <- function(POLYGONS = qgisprocess::qgis_default_value(), LINES = qgisprocess::qgis_default_value(), INTERSECT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:polygonlineintersection")

  output <- qgisprocess::qgis_run_algorithm("saga:polygonlineintersection", `POLYGONS` = POLYGONS, `LINES` = LINES, `INTERSECT` = INTERSECT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "INTERSECT")
  }
}