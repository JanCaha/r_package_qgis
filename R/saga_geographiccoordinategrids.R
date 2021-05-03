##' QGIS Algorithm provided by SAGA Geographic coordinate grids (saga:geographiccoordinategrids)
##'
##' @title QGIS algorithm Geographic coordinate grids
##'
##' @param GRID `raster` - Grid. Path to a raster layer.
##' @param LON `rasterDestination` - Longitude. Path for new raster layer.
##' @param LAT `rasterDestination` - Latitude. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * LON - outputRaster - Longitude
##' * LAT - outputRaster - Latitude
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_geographiccoordinategrids <- function(GRID = qgisprocess::qgis_default_value(), LON = qgisprocess::qgis_default_value(), LAT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:geographiccoordinategrids")
  output <- qgisprocess::qgis_run_algorithm("saga:geographiccoordinategrids",`GRID` = GRID, `LON` = LON, `LAT` = LAT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "LON")
  }
}