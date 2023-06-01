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
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * BRIGHTNESS - outputRaster - Brightness
##' * GREENNESS - outputRaster - Greenness
##' * WETNESS - outputRaster - Wetness
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_tasseledcaptransformation <- function(BLUE = qgisprocess:::qgis_default_value(), RED = qgisprocess:::qgis_default_value(), GREEN = qgisprocess:::qgis_default_value(), NIR = qgisprocess:::qgis_default_value(), MIR1 = qgisprocess:::qgis_default_value(), MIR2 = qgisprocess:::qgis_default_value(), BRIGHTNESS = qgisprocess:::qgis_default_value(), GREENNESS = qgisprocess:::qgis_default_value(), WETNESS = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:tasseledcaptransformation")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:tasseledcaptransformation", `BLUE` = BLUE, `RED` = RED, `GREEN` = GREEN, `NIR` = NIR, `MIR1` = MIR1, `MIR2` = MIR2, `BRIGHTNESS` = BRIGHTNESS, `GREENNESS` = GREENNESS, `WETNESS` = WETNESS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:tasseledcaptransformation", `BLUE` = BLUE, `RED` = RED, `GREEN` = GREEN, `NIR` = NIR, `MIR1` = MIR1, `MIR2` = MIR2, `BRIGHTNESS` = BRIGHTNESS, `GREENNESS` = GREENNESS, `WETNESS` = WETNESS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "BRIGHTNESS")
  }
}