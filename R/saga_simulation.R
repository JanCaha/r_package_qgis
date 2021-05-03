##' QGIS Algorithm provided by SAGA Simulation (saga:simulation)
##'
##' @title QGIS algorithm Simulation
##'
##' @param DEM `raster` - DEM. Path to a raster layer.
##' @param FUEL `raster` - Fuel Model. Path to a raster layer.
##' @param WINDSPD `raster` - Wind Speed. Path to a raster layer.
##' @param WINDDIR `raster` - Wind Direction. Path to a raster layer.
##' @param M1H `raster` - Dead Fuel Moisture 1H. Path to a raster layer.
##' @param M10H `raster` - Dead Fuel Moisture 10H. Path to a raster layer.
##' @param M100H `raster` - Dead Fuel Moisture 100H. Path to a raster layer.
##' @param MHERB `raster` - Herbaceous Fuel Moisture. Path to a raster layer.
##' @param MWOOD `raster` - Wood Fuel Moisture. Path to a raster layer.
##' @param IGNITION `raster` - Ignition Points. Path to a raster layer.
##' @param UPDATEVIEW `boolean` - Update View. 1 for true/yes. 0 for false/no.
##' @param TIME `rasterDestination` - Time. Path for new raster layer.
##' @param FLAME `rasterDestination` - Flame Length. Path for new raster layer.
##' @param INTENSITY `rasterDestination` - Intensity. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * TIME - outputRaster - Time
##' * FLAME - outputRaster - Flame Length
##' * INTENSITY - outputRaster - Intensity
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_simulation <- function(DEM = qgisprocess::qgis_default_value(), FUEL = qgisprocess::qgis_default_value(), WINDSPD = qgisprocess::qgis_default_value(), WINDDIR = qgisprocess::qgis_default_value(), M1H = qgisprocess::qgis_default_value(), M10H = qgisprocess::qgis_default_value(), M100H = qgisprocess::qgis_default_value(), MHERB = qgisprocess::qgis_default_value(), MWOOD = qgisprocess::qgis_default_value(), IGNITION = qgisprocess::qgis_default_value(), UPDATEVIEW = qgisprocess::qgis_default_value(), TIME = qgisprocess::qgis_default_value(), FLAME = qgisprocess::qgis_default_value(), INTENSITY = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:simulation")
  output <- qgisprocess::qgis_run_algorithm("saga:simulation",`DEM` = DEM, `FUEL` = FUEL, `WINDSPD` = WINDSPD, `WINDDIR` = WINDDIR, `M1H` = M1H, `M10H` = M10H, `M100H` = M100H, `MHERB` = MHERB, `MWOOD` = MWOOD, `IGNITION` = IGNITION, `UPDATEVIEW` = UPDATEVIEW, `TIME` = TIME, `FLAME` = FLAME, `INTENSITY` = INTENSITY,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "TIME")
  }
}