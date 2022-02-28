##' QGIS Algorithm provided by SAGA Quadtree structure to polygons (saga:quadtreestructuretopolygons)
##'
##' @title QGIS algorithm Quadtree structure to polygons
##'
##' @param SHAPES `source` - Shapes. Path to a vector layer.
##' @param ATTRIBUTE `field` - Attribute. The name of an existing field. ; delimited list of existing field names.
##' @param POLYGONS `vectorDestination` - Polygons. Path for new vector layer.
##' @param LINES `vectorDestination` - Lines. Path for new vector layer.
##' @param POINTS `vectorDestination` - Duplicated Points. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * LINES - outputVector - Lines
##' * POINTS - outputVector - Duplicated Points
##' * POLYGONS - outputVector - Polygons
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_quadtreestructuretopolygons <- function(SHAPES = qgisprocess::qgis_default_value(), ATTRIBUTE = qgisprocess::qgis_default_value(), POLYGONS = qgisprocess::qgis_default_value(), LINES = qgisprocess::qgis_default_value(), POINTS = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:quadtreestructuretopolygons")

  output <- qgisprocess::qgis_run_algorithm("saga:quadtreestructuretopolygons", `SHAPES` = SHAPES, `ATTRIBUTE` = ATTRIBUTE, `POLYGONS` = POLYGONS, `LINES` = LINES, `POINTS` = POINTS,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "LINES")
  }
}