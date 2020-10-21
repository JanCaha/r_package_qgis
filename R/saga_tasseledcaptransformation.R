##' QGIS Algorithm provided by SAGA Tasseled cap transformation (saga:tasseledcaptransformation)
##'
##' @title QGIS algorithm Tasseled cap transformation
##'
##' @param BLUE `raster` - Blue (TM 1). Path to a raster layer.
##' @param RED `raster` - Red (TM 2). Path to a raster layer.
##' @param GREEN `raster` - Green (TM 3). Path to a raster layer.
##' @param NIR `raster` - Near Infrared (TM 4). Path to a raster layer.
##' @param MIR1 `raster` - Mid Infrared (TM 5). Path to a raster layer.
##' @param MIR2 `raster` - Mid Infrared (TM 7). Path to a raster layer.
##' @param BRIGHTNESS `rasterDestination` - Brightness. Path for new raster layer.
##' @param GREENNESS `rasterDestination` - Greenness. Path for new raster layer.
##' @param WETNESS `rasterDestination` - Wetness. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * BRIGHTNESS - outputRaster - Brightness
##' * GREENNESS - outputRaster - Greenness
##' * WETNESS - outputRaster - Wetness
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_tasseledcaptransformation <- function(BLUE = qgisprocess::qgis_default_value(), RED = qgisprocess::qgis_default_value(), GREEN = qgisprocess::qgis_default_value(), NIR = qgisprocess::qgis_default_value(), MIR1 = qgisprocess::qgis_default_value(), MIR2 = qgisprocess::qgis_default_value(), BRIGHTNESS = qgisprocess::qgis_default_value(), GREENNESS = qgisprocess::qgis_default_value(), WETNESS = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:tasseledcaptransformation",`BLUE` = BLUE, `RED` = RED, `GREEN` = GREEN, `NIR` = NIR, `MIR1` = MIR1, `MIR2` = MIR2, `BRIGHTNESS` = BRIGHTNESS, `GREENNESS` = GREENNESS, `WETNESS` = WETNESS,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "BRIGHTNESS")
  }
}