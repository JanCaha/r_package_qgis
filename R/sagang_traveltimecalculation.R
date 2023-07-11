##' QGIS Algorithm provided by SAGA Next Gen Travel time calculation (sagang:traveltimecalculation). ---------------- Arguments ----------------  DESTINATIONS: Destination Points 	Argument type:	source 	Acceptable values: 		- Path to a vector layer LANDCOVER: Land Cover 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer LANDCOVER_TO_TRAVELTIME: Travel Times 	Argument type:	source 	Acceptable values: 		- Path to a vector layer FIELD_LANDCOVER: Land Cover ID 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names FIELD_TRAVELTIME: Travel Time 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names TRAVELTIME_MINUTES: Travel Time 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer TRAVELTIME_LUT: Travel Time Zones Classification (optional) 	Argument type:	source 	Acceptable values: 		- Path to a vector layer
##'
##' @title QGIS algorithm - Travel time calculation
##'
##' @param DESTINATIONS `source` - Destination Points. Path to a vector layer.
##' @param LANDCOVER `raster` - Land Cover. Path to a raster layer.
##' @param LANDCOVER_TO_TRAVELTIME `source` - Travel Times. Path to a vector layer.
##' @param FIELD_LANDCOVER `field` - Land Cover ID. The name of an existing field. ; delimited list of existing field names.
##' @param FIELD_TRAVELTIME `field` - Travel Time. The name of an existing field. ; delimited list of existing field names.
##' @param TRAVELTIME_MINUTES `rasterDestination` - Travel Time. Path for new raster layer.
##' @param TRAVELTIME_LUT `source` - Travel Time Zones Classification. Path to a vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * TRAVELTIME_MINUTES - outputRaster - Travel Time
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_traveltimecalculation <- function(DESTINATIONS = qgisprocess:::qgis_default_value(), LANDCOVER = qgisprocess:::qgis_default_value(), LANDCOVER_TO_TRAVELTIME = qgisprocess:::qgis_default_value(), FIELD_LANDCOVER = qgisprocess:::qgis_default_value(), FIELD_TRAVELTIME = qgisprocess:::qgis_default_value(), TRAVELTIME_MINUTES = qgisprocess:::qgis_default_value(), TRAVELTIME_LUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:traveltimecalculation")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:traveltimecalculation", `DESTINATIONS` = DESTINATIONS, `LANDCOVER` = LANDCOVER, `LANDCOVER_TO_TRAVELTIME` = LANDCOVER_TO_TRAVELTIME, `FIELD_LANDCOVER` = FIELD_LANDCOVER, `FIELD_TRAVELTIME` = FIELD_TRAVELTIME, `TRAVELTIME_MINUTES` = TRAVELTIME_MINUTES, `TRAVELTIME_LUT` = TRAVELTIME_LUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:traveltimecalculation", `DESTINATIONS` = DESTINATIONS, `LANDCOVER` = LANDCOVER, `LANDCOVER_TO_TRAVELTIME` = LANDCOVER_TO_TRAVELTIME, `FIELD_LANDCOVER` = FIELD_LANDCOVER, `FIELD_TRAVELTIME` = FIELD_TRAVELTIME, `TRAVELTIME_MINUTES` = TRAVELTIME_MINUTES, `TRAVELTIME_LUT` = TRAVELTIME_LUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "TRAVELTIME_MINUTES")
  }
}