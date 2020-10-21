##' QGIS Algorithm provided by SAGA Lake flood (saga:lakeflood)
##'
##' @title QGIS algorithm Lake flood
##'
##' @param ELEV `raster` - DEM. Path to a raster layer.
##' @param SEEDS `raster` - Seeds. Path to a raster layer.
##' @param LEVEL `boolean` - Absolute Water Levels. 1 for true/yes. 0 for false/no.
##' @param OUTDEPTH `rasterDestination` - Lake. Path for new raster layer.
##' @param OUTLEVEL `rasterDestination` - Surface. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTDEPTH - outputRaster - Lake
##' * OUTLEVEL - outputRaster - Surface
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_lakeflood <- function(ELEV = qgisprocess::qgis_default_value(), SEEDS = qgisprocess::qgis_default_value(), LEVEL = qgisprocess::qgis_default_value(), OUTDEPTH = qgisprocess::qgis_default_value(), OUTLEVEL = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:lakeflood",`ELEV` = ELEV, `SEEDS` = SEEDS, `LEVEL` = LEVEL, `OUTDEPTH` = OUTDEPTH, `OUTLEVEL` = OUTLEVEL,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTDEPTH")
  }
}