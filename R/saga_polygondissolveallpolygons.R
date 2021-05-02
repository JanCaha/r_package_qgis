##' QGIS Algorithm provided by SAGA Polygon dissolve (all polygons) (saga:polygondissolveallpolygons)
##'
##' @title QGIS algorithm Polygon dissolve (all polygons)
##'
##' @param POLYGONS `source` - Polygons. Path to a vector layer.
##' @param BND_KEEP `boolean` - Keep inner boundaries. 1 for true/yes. 0 for false/no.
##' @param DISSOLVED `vectorDestination` - Dissolved. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * DISSOLVED - outputVector - Dissolved
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_polygondissolveallpolygons <- function(POLYGONS = qgisprocess::qgis_default_value(), BND_KEEP = qgisprocess::qgis_default_value(), DISSOLVED = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:polygondissolveallpolygons")
  output <- qgisprocess::qgis_run_algorithm("saga:polygondissolveallpolygons",`POLYGONS` = POLYGONS, `BND_KEEP` = BND_KEEP, `DISSOLVED` = DISSOLVED,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "DISSOLVED")
  }
}