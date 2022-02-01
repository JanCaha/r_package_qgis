##' QGIS Algorithm provided by SAGA Dtm filter (slope-based) (saga:dtmfilterslopebased)
##'
##' @title QGIS algorithm Dtm filter (slope-based)
##'
##' @param INPUT `raster` - Grid to filter. Path to a raster layer.
##' @param RADIUS `number` - Search Radius. A numeric value.
##' @param TERRAINSLOPE `number` - Approx. Terrain Slope. A numeric value.
##' @param STDDEV `boolean` - Use Confidence Interval. 1 for true/yes. 0 for false/no.
##' @param GROUND `rasterDestination` - Bare Earth. Path for new raster layer.
##' @param NONGROUND `rasterDestination` - Removed Objects. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * GROUND - outputRaster - Bare Earth
##' * NONGROUND - outputRaster - Removed Objects
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_dtmfilterslopebased <- function(INPUT = qgisprocess::qgis_default_value(), RADIUS = qgisprocess::qgis_default_value(), TERRAINSLOPE = qgisprocess::qgis_default_value(), STDDEV = qgisprocess::qgis_default_value(), GROUND = qgisprocess::qgis_default_value(), NONGROUND = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:dtmfilterslopebased")

  output <- qgisprocess::qgis_run_algorithm("saga:dtmfilterslopebased", `INPUT` = INPUT, `RADIUS` = RADIUS, `TERRAINSLOPE` = TERRAINSLOPE, `STDDEV` = STDDEV, `GROUND` = GROUND, `NONGROUND` = NONGROUND,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "GROUND")
  }
}