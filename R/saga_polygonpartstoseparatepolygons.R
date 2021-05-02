##' QGIS Algorithm provided by SAGA Polygon parts to separate polygons (saga:polygonpartstoseparatepolygons)
##'
##' @title QGIS algorithm Polygon parts to separate polygons
##'
##' @param POLYGONS `source` - Polygons. Path to a vector layer.
##' @param LAKES `boolean` - Ignore Lakes. 1 for true/yes. 0 for false/no.
##' @param PARTS `vectorDestination` - Polygon Parts. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * PARTS - outputVector - Polygon Parts
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_polygonpartstoseparatepolygons <- function(POLYGONS = qgisprocess::qgis_default_value(), LAKES = qgisprocess::qgis_default_value(), PARTS = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:polygonpartstoseparatepolygons")
  output <- qgisprocess::qgis_run_algorithm("saga:polygonpartstoseparatepolygons",`POLYGONS` = POLYGONS, `LAKES` = LAKES, `PARTS` = PARTS,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "PARTS")
  }
}