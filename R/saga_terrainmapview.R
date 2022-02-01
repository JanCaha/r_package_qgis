##' QGIS Algorithm provided by SAGA Terrain map view (saga:terrainmapview)
##'
##' @title QGIS algorithm Terrain map view
##'
##' @param DEM `raster` - DEM. Path to a raster layer.
##' @param SHADE `rasterDestination` - Shade. Path for new raster layer.
##' @param OPENNESS `rasterDestination` - Openness. Path for new raster layer.
##' @param SLOPE `rasterDestination` - Slope. Path for new raster layer.
##' @param CONTOURS `vectorDestination` - Contours. Path for new vector layer.
##' @param METHOD `enum`  of `("[0] Topography", "[1] Morphology")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param RADIUS `number` - Radial Limit. A numeric value.
##' @param CONTOUR_LINES `boolean` - Contour Lines. 1 for true/yes. 0 for false/no.
##' @param EQUIDISTANCE `number` - Equidistance. A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * SHADE - outputRaster - Shade
##' * OPENNESS - outputRaster - Openness
##' * SLOPE - outputRaster - Slope
##' * CONTOURS - outputVector - Contours
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_terrainmapview <- function(DEM = qgisprocess::qgis_default_value(), SHADE = qgisprocess::qgis_default_value(), OPENNESS = qgisprocess::qgis_default_value(), SLOPE = qgisprocess::qgis_default_value(), CONTOURS = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), RADIUS = qgisprocess::qgis_default_value(), CONTOUR_LINES = qgisprocess::qgis_default_value(), EQUIDISTANCE = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:terrainmapview")

  output <- qgisprocess::qgis_run_algorithm("saga:terrainmapview", `DEM` = DEM, `SHADE` = SHADE, `OPENNESS` = OPENNESS, `SLOPE` = SLOPE, `CONTOURS` = CONTOURS, `METHOD` = METHOD, `RADIUS` = RADIUS, `CONTOUR_LINES` = CONTOUR_LINES, `EQUIDISTANCE` = EQUIDISTANCE,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "SHADE")
  }
}