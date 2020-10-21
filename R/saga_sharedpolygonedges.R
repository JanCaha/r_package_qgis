##' QGIS Algorithm provided by SAGA Shared polygon edges (saga:sharedpolygonedges)
##'
##' @title QGIS algorithm Shared polygon edges
##'
##' @param POLYGONS `source` - Polygons. Path to a vector layer.
##' @param ATTRIBUTE `field` - Attribute. The name of an existing field. ; delimited list of existing field names.
##' @param EPSILON `number` - Tolerance. A numeric value.
##' @param VERTICES `boolean` - Check vertices. 1 for true/yes. 0 for false/no.
##' @param DOUBLE `boolean` - Double edges. 1 for true/yes. 0 for false/no.
##' @param EDGES `vectorDestination` - Edges. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * EDGES - outputVector - Edges
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_sharedpolygonedges <- function(POLYGONS = qgisprocess::qgis_default_value(), ATTRIBUTE = qgisprocess::qgis_default_value(), EPSILON = qgisprocess::qgis_default_value(), VERTICES = qgisprocess::qgis_default_value(), DOUBLE = qgisprocess::qgis_default_value(), EDGES = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:sharedpolygonedges",`POLYGONS` = POLYGONS, `ATTRIBUTE` = ATTRIBUTE, `EPSILON` = EPSILON, `VERTICES` = VERTICES, `DOUBLE` = DOUBLE, `EDGES` = EDGES,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "EDGES")
  }
}