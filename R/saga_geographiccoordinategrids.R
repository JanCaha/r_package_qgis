##' QGIS Algorithm provided by SAGA Geographic coordinate grids (saga:geographiccoordinategrids)
##'
##' @title QGIS algorithm Geographic coordinate grids
##'
##' @param GRID `raster` - Grid. Path to a raster layer.
##' @param LON `rasterDestination` - Longitude. Path for new raster layer.
##' @param LAT `rasterDestination` - Latitude. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * LAT - outputRaster - Latitude
##' * LON - outputRaster - Longitude
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_geographiccoordinategrids <- function(GRID = qgisprocess::qgis_default_value(), LON = qgisprocess::qgis_default_value(), LAT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:geographiccoordinategrids")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:geographiccoordinategrids", `GRID` = GRID, `LON` = LON, `LAT` = LAT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:geographiccoordinategrids", `GRID` = GRID, `LON` = LON, `LAT` = LAT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "LAT")
  }
}