##' QGIS Algorithm provided by SAGA Line-polygon intersection (saga:linepolygonintersection)
##'
##' @title QGIS algorithm Line-polygon intersection
##'
##' @param LINES `source` - Lines. Path to a vector layer.
##' @param POLYGONS `source` - Polygons. Path to a vector layer.
##' @param METHOD `enum`  of `("[0] one multi-line per polygon", "[1] keep original line attributes")` - Output. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
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

saga_linepolygonintersection <- function(LINES = qgisprocess::qgis_default_value(), POLYGONS = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), INTERSECT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:linepolygonintersection")
  output <- qgisprocess::qgis_run_algorithm("saga:linepolygonintersection",`LINES` = LINES, `POLYGONS` = POLYGONS, `METHOD` = METHOD, `INTERSECT` = INTERSECT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "INTERSECT")
  }
}