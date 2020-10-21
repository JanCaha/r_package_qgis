##' QGIS Algorithm provided by SAGA Polygon self-intersection (saga:polygonselfintersection)
##'
##' @title QGIS algorithm Polygon self-intersection
##'
##' @param POLYGONS `source` - Polygons. Path to a vector layer.
##' @param ID `field` - Identifier. The name of an existing field. ; delimited list of existing field names.
##' @param INTERSECT `vectorDestination` - Intersection. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * INTERSECT - outputVector - Intersection
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_polygonselfintersection <- function(POLYGONS = qgisprocess::qgis_default_value(), ID = qgisprocess::qgis_default_value(), INTERSECT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:polygonselfintersection",`POLYGONS` = POLYGONS, `ID` = ID, `INTERSECT` = INTERSECT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "INTERSECT")
  }
}