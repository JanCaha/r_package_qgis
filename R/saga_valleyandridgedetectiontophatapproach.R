##' QGIS Algorithm provided by SAGA Valley and ridge detection (top hat approach) (saga:valleyandridgedetectiontophatapproach)
##'
##' @title QGIS algorithm Valley and ridge detection (top hat approach)
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param VALLEY `rasterDestination` - Valley Depth. Path for new raster layer.
##' @param HILL `rasterDestination` - Hill Height. Path for new raster layer.
##' @param VALLEY_IDX `rasterDestination` - Valley Index. Path for new raster layer.
##' @param HILL_IDX `rasterDestination` - Hill Index. Path for new raster layer.
##' @param SLOPE_IDX `rasterDestination` - Hillslope Index. Path for new raster layer.
##' @param RADIUS_VALLEY `number` - Valley Radius. A numeric value.
##' @param RADIUS_HILL `number` - Hill Radius. A numeric value.
##' @param THRESHOLD `number` - Elevation Threshold. A numeric value.
##' @param METHOD `enum`  of `("[0] default", "[1] alternative")` - Slope Index. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * HILL - outputRaster - Hill Height
##' * HILL_IDX - outputRaster - Hill Index
##' * SLOPE_IDX - outputRaster - Hillslope Index
##' * VALLEY - outputRaster - Valley Depth
##' * VALLEY_IDX - outputRaster - Valley Index
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_valleyandridgedetectiontophatapproach <- function(DEM = qgisprocess::qgis_default_value(), VALLEY = qgisprocess::qgis_default_value(), HILL = qgisprocess::qgis_default_value(), VALLEY_IDX = qgisprocess::qgis_default_value(), HILL_IDX = qgisprocess::qgis_default_value(), SLOPE_IDX = qgisprocess::qgis_default_value(), RADIUS_VALLEY = qgisprocess::qgis_default_value(), RADIUS_HILL = qgisprocess::qgis_default_value(), THRESHOLD = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:valleyandridgedetectiontophatapproach")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:valleyandridgedetectiontophatapproach", `DEM` = DEM, `VALLEY` = VALLEY, `HILL` = HILL, `VALLEY_IDX` = VALLEY_IDX, `HILL_IDX` = HILL_IDX, `SLOPE_IDX` = SLOPE_IDX, `RADIUS_VALLEY` = RADIUS_VALLEY, `RADIUS_HILL` = RADIUS_HILL, `THRESHOLD` = THRESHOLD, `METHOD` = METHOD,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:valleyandridgedetectiontophatapproach", `DEM` = DEM, `VALLEY` = VALLEY, `HILL` = HILL, `VALLEY_IDX` = VALLEY_IDX, `HILL_IDX` = HILL_IDX, `SLOPE_IDX` = SLOPE_IDX, `RADIUS_VALLEY` = RADIUS_VALLEY, `RADIUS_HILL` = RADIUS_HILL, `THRESHOLD` = THRESHOLD, `METHOD` = METHOD,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "HILL")
  }
}