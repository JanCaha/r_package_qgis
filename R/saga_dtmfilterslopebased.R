##' QGIS Algorithm provided by SAGA Dtm filter (slope-based) (saga:dtmfilterslopebased)
##'
##' @title QGIS algorithm Dtm filter (slope-based)
##'
##' @param INPUT `raster` - Grid to filter. Path to a raster layer.
##' @param RADIUS `number` - Search Radius. A numeric value.
##' @param TERRAINSLOPE `number` - Approx. Terrain Slope. A numeric value.
##' @param GROUND `rasterDestination` - Bare Earth. Path for new raster layer.
##' @param NONGROUND `rasterDestination` - Removed Objects. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * GROUND - outputRaster - Bare Earth
##' * NONGROUND - outputRaster - Removed Objects
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_dtmfilterslopebased <- function(INPUT = qgisprocess:::qgis_default_value(), RADIUS = qgisprocess:::qgis_default_value(), TERRAINSLOPE = qgisprocess:::qgis_default_value(), GROUND = qgisprocess:::qgis_default_value(), NONGROUND = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:dtmfilterslopebased")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:dtmfilterslopebased", `INPUT` = INPUT, `RADIUS` = RADIUS, `TERRAINSLOPE` = TERRAINSLOPE, `GROUND` = GROUND, `NONGROUND` = NONGROUND,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:dtmfilterslopebased", `INPUT` = INPUT, `RADIUS` = RADIUS, `TERRAINSLOPE` = TERRAINSLOPE, `GROUND` = GROUND, `NONGROUND` = NONGROUND,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "GROUND")
  }
}