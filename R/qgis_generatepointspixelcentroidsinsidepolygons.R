##' QGIS Algorithm provided by QGIS (native c++) Generate points (pixel centroids) inside polygons (native:generatepointspixelcentroidsinsidepolygons)
##'
##' @title QGIS algorithm Generate points (pixel centroids) inside polygons
##'
##' @param INPUT_RASTER `raster` - Raster layer. Path to a raster layer.
##' @param INPUT_VECTOR `source` - Vector layer. Path to a vector layer.
##' @param OUTPUT `sink` - Pixel centroids. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Pixel centroids
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_generatepointspixelcentroidsinsidepolygons <- function(INPUT_RASTER = qgisprocess::qgis_default_value(), INPUT_VECTOR = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("native:generatepointspixelcentroidsinsidepolygons",`INPUT_RASTER` = INPUT_RASTER, `INPUT_VECTOR` = INPUT_VECTOR, `OUTPUT` = OUTPUT,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
}
}