##' QGIS Algorithm provided by SAGA Polygon centroids (saga:polygoncentroids)
##'
##' @title QGIS algorithm Polygon centroids
##'
##' @param POLYGONS `source` - Polygons. Path to a vector layer.
##' @param METHOD `boolean` - Centroids for each part. 1 for true/yes. 0 for false/no.
##' @param CENTROIDS `vectorDestination` - Centroids. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * CENTROIDS - outputVector - Centroids
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_polygoncentroids <- function(POLYGONS = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), CENTROIDS = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:polygoncentroids",`POLYGONS` = POLYGONS, `METHOD` = METHOD, `CENTROIDS` = CENTROIDS,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "CENTROIDS")
  }
}