##' QGIS Algorithm provided by SAGA Clip points with polygons (saga:clippointswithpolygons)
##'
##' @title QGIS algorithm Clip points with polygons
##'
##' @param POINTS `source` - Points. Path to a vector layer.
##' @param POLYGONS `source` - Polygons. Path to a vector layer.
##' @param FIELD `field` - Add Attribute to Clipped Points. The name of an existing field. ; delimited list of existing field names.
##' @param METHOD `enum`  of `("[0] one layer for all points", "[1] separate layer for each polygon")` - Clipping Options. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param CLIPS `vectorDestination` - Clipped Points. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * CLIPS - outputVector - Clipped Points
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_clippointswithpolygons <- function(POINTS = qgisprocess::qgis_default_value(), POLYGONS = qgisprocess::qgis_default_value(), FIELD = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), CLIPS = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:clippointswithpolygons")
  output <- qgisprocess::qgis_run_algorithm("saga:clippointswithpolygons",`POINTS` = POINTS, `POLYGONS` = POLYGONS, `FIELD` = FIELD, `METHOD` = METHOD, `CLIPS` = CLIPS,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "CLIPS")
  }
}