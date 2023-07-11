##' QGIS Algorithm provided by SAGA Next Gen Land cover scenario offset (sagang:landcoverscenariooffset). ---------------- Arguments ----------------  ROAD_LINES: Roads 	Argument type:	source 	Acceptable values: 		- Path to a vector layer ROAD_CLASS: Attribute 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names CHANNEL_LINES: Channel Network (optional) 	Argument type:	source 	Acceptable values: 		- Path to a vector layer CHANNEL_ORDER: Stream Order 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names DEM: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer VEGETATION: Vegetation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer LANDCOVER: Land Cover 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer
##'
##' @title QGIS algorithm - Land cover scenario offset
##'
##' @param ROAD_LINES `source` - Roads. Path to a vector layer.
##' @param ROAD_CLASS `field` - Attribute. The name of an existing field. ; delimited list of existing field names.
##' @param CHANNEL_LINES `source` - Channel Network. Path to a vector layer.
##' @param CHANNEL_ORDER `field` - Stream Order. The name of an existing field. ; delimited list of existing field names.
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param VEGETATION `raster` - Vegetation. Path to a raster layer.
##' @param LANDCOVER `rasterDestination` - Land Cover. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * LANDCOVER - outputRaster - Land Cover
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_landcoverscenariooffset <- function(ROAD_LINES = qgisprocess:::qgis_default_value(), ROAD_CLASS = qgisprocess:::qgis_default_value(), CHANNEL_LINES = qgisprocess:::qgis_default_value(), CHANNEL_ORDER = qgisprocess:::qgis_default_value(), DEM = qgisprocess:::qgis_default_value(), VEGETATION = qgisprocess:::qgis_default_value(), LANDCOVER = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:landcoverscenariooffset")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:landcoverscenariooffset", `ROAD_LINES` = ROAD_LINES, `ROAD_CLASS` = ROAD_CLASS, `CHANNEL_LINES` = CHANNEL_LINES, `CHANNEL_ORDER` = CHANNEL_ORDER, `DEM` = DEM, `VEGETATION` = VEGETATION, `LANDCOVER` = LANDCOVER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:landcoverscenariooffset", `ROAD_LINES` = ROAD_LINES, `ROAD_CLASS` = ROAD_CLASS, `CHANNEL_LINES` = CHANNEL_LINES, `CHANNEL_ORDER` = CHANNEL_ORDER, `DEM` = DEM, `VEGETATION` = VEGETATION, `LANDCOVER` = LANDCOVER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "LANDCOVER")
  }
}