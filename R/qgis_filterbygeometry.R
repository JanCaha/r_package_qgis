##' QGIS Algorithm provided by QGIS (native c++) Filter by geometry type (native:filterbygeometry)
##'
##' @title QGIS algorithm Filter by geometry type
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param POINTS `sink` - Point features. Path for new vector layer.
##' @param LINES `sink` - Line features. Path for new vector layer.
##' @param POLYGONS `sink` - Polygon features. Path for new vector layer.
##' @param NO_GEOMETRY `sink` - Features with no geometry. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * POINTS - outputVector - Point features
##' * LINES - outputVector - Line features
##' * POLYGONS - outputVector - Polygon features
##' * NO_GEOMETRY - outputVector - Features with no geometry
##' * POINT_COUNT - outputNumber - Total count of point features
##' * LINE_COUNT - outputNumber - Total count of line features
##' * POLYGON_COUNT - outputNumber - Total count of polygon features
##' * NO_GEOMETRY_COUNT - outputNumber - Total count of features without geometry
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_filterbygeometry <- function(INPUT = qgisprocess::qgis_default_value(), POINTS = qgisprocess::qgis_default_value(), LINES = qgisprocess::qgis_default_value(), POLYGONS = qgisprocess::qgis_default_value(), NO_GEOMETRY = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("native:filterbygeometry",`INPUT` = INPUT, `POINTS` = POINTS, `LINES` = LINES, `POLYGONS` = POLYGONS, `NO_GEOMETRY` = NO_GEOMETRY,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "POINTS")
}
}