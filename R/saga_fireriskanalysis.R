##' QGIS Algorithm provided by SAGA Fire risk analysis (saga:fireriskanalysis)
##'
##' @title QGIS algorithm Fire risk analysis
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
##' @param VALUE `raster` - Value. Path to a raster layer.
##' @param BASEPROB `raster` - Base Probability. Path to a raster layer.
##' @param MONTECARLO `number` - Number of Events. A numeric value.
##' @param INTERVAL `number` - Fire Length. A numeric value.
##' @param DANGER `rasterDestination` - Danger. Path for new raster layer.
##' @param COMPPROB `rasterDestination` - Compound Probability. Path for new raster layer.
##' @param PRIORITY `rasterDestination` - Priority Index. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * DANGER - outputRaster - Danger
##' * COMPPROB - outputRaster - Compound Probability
##' * PRIORITY - outputRaster - Priority Index
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_fireriskanalysis <- function(DEM = qgisprocess::qgis_default_value(), FUEL = qgisprocess::qgis_default_value(), WINDSPD = qgisprocess::qgis_default_value(), WINDDIR = qgisprocess::qgis_default_value(), M1H = qgisprocess::qgis_default_value(), M10H = qgisprocess::qgis_default_value(), M100H = qgisprocess::qgis_default_value(), MHERB = qgisprocess::qgis_default_value(), MWOOD = qgisprocess::qgis_default_value(), VALUE = qgisprocess::qgis_default_value(), BASEPROB = qgisprocess::qgis_default_value(), MONTECARLO = qgisprocess::qgis_default_value(), INTERVAL = qgisprocess::qgis_default_value(), DANGER = qgisprocess::qgis_default_value(), COMPPROB = qgisprocess::qgis_default_value(), PRIORITY = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:fireriskanalysis")
  output <- qgisprocess::qgis_run_algorithm("saga:fireriskanalysis",`DEM` = DEM, `FUEL` = FUEL, `WINDSPD` = WINDSPD, `WINDDIR` = WINDDIR, `M1H` = M1H, `M10H` = M10H, `M100H` = M100H, `MHERB` = MHERB, `MWOOD` = MWOOD, `VALUE` = VALUE, `BASEPROB` = BASEPROB, `MONTECARLO` = MONTECARLO, `INTERVAL` = INTERVAL, `DANGER` = DANGER, `COMPPROB` = COMPPROB, `PRIORITY` = PRIORITY,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "DANGER")
  }
}