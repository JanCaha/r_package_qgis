##' QGIS Algorithm provided by SAGA Next Gen Cloud detection (sagang:clouddetection). ---------------- Arguments ----------------  BLUE: Blue 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer GREEN: Green 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer RED: Red 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer NIR: Near Infrared 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer CLOUDS: Clouds 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SWIR1: Shortwave Infrared 1 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer SWIR2: Shortwave Infrared 2 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer THERMAL: Temperature (Kelvin) (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer CIRRUS: Cirrus (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer
##'
##' @title QGIS algorithm - Cloud detection
##'
##' @param BLUE `raster` - Blue. Path to a raster layer.
##' @param GREEN `raster` - Green. Path to a raster layer.
##' @param RED `raster` - Red. Path to a raster layer.
##' @param NIR `raster` - Near Infrared. Path to a raster layer.
##' @param CLOUDS `rasterDestination` - Clouds. Path for new raster layer.
##' @param SWIR1 `raster` - Shortwave Infrared 1. Path to a raster layer.
##' @param SWIR2 `raster` - Shortwave Infrared 2. Path to a raster layer.
##' @param THERMAL `raster` - Temperature (Kelvin). Path to a raster layer.
##' @param CIRRUS `raster` - Cirrus. Path to a raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * CLOUDS - outputRaster - Clouds
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_clouddetection <- function(BLUE = qgisprocess:::qgis_default_value(), GREEN = qgisprocess:::qgis_default_value(), RED = qgisprocess:::qgis_default_value(), NIR = qgisprocess:::qgis_default_value(), CLOUDS = qgisprocess:::qgis_default_value(), SWIR1 = qgisprocess:::qgis_default_value(), SWIR2 = qgisprocess:::qgis_default_value(), THERMAL = qgisprocess:::qgis_default_value(), CIRRUS = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:clouddetection")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:clouddetection", `BLUE` = BLUE, `GREEN` = GREEN, `RED` = RED, `NIR` = NIR, `CLOUDS` = CLOUDS, `SWIR1` = SWIR1, `SWIR2` = SWIR2, `THERMAL` = THERMAL, `CIRRUS` = CIRRUS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:clouddetection", `BLUE` = BLUE, `GREEN` = GREEN, `RED` = RED, `NIR` = NIR, `CLOUDS` = CLOUDS, `SWIR1` = SWIR1, `SWIR2` = SWIR2, `THERMAL` = THERMAL, `CIRRUS` = CIRRUS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CLOUDS")
  }
}