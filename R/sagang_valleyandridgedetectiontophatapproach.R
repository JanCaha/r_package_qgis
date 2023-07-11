##' QGIS Algorithm provided by SAGA Next Gen Valley and ridge detection (top hat approach) (sagang:valleyandridgedetectiontophatapproach). ---------------- Arguments ----------------  DEM: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer VALLEY: Valley Depth 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer HILL: Hill Height 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer VALLEY_IDX: Valley Index 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer HILL_IDX: Hill Index 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SLOPE_IDX: Hillslope Index 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer RADIUS_VALLEY: Valley Radius 	Default value:	1000 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression RADIUS_HILL: Hill Radius 	Default value:	1000 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression THRESHOLD: Elevation Threshold 	Default value:	100 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression METHOD: Slope Index 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) default 		- 1: (1) alternative 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Valley and ridge detection (top hat approach)
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param VALLEY `rasterDestination` - Valley Depth. Path for new raster layer.
##' @param HILL `rasterDestination` - Hill Height. Path for new raster layer.
##' @param VALLEY_IDX `rasterDestination` - Valley Index. Path for new raster layer.
##' @param HILL_IDX `rasterDestination` - Hill Index. Path for new raster layer.
##' @param SLOPE_IDX `rasterDestination` - Hillslope Index. Path for new raster layer.
##' @param RADIUS_VALLEY `number` - Valley Radius. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param RADIUS_HILL `number` - Hill Radius. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param THRESHOLD `number` - Elevation Threshold. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param METHOD `enum`  of `("(0) default", "(1) alternative")` - Slope Index. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * HILL - outputRaster - Hill Height
##' * HILL_IDX - outputRaster - Hill Index
##' * SLOPE_IDX - outputRaster - Hillslope Index
##' * VALLEY - outputRaster - Valley Depth
##' * VALLEY_IDX - outputRaster - Valley Index
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_valleyandridgedetectiontophatapproach <- function(DEM = qgisprocess:::qgis_default_value(), VALLEY = qgisprocess:::qgis_default_value(), HILL = qgisprocess:::qgis_default_value(), VALLEY_IDX = qgisprocess:::qgis_default_value(), HILL_IDX = qgisprocess:::qgis_default_value(), SLOPE_IDX = qgisprocess:::qgis_default_value(), RADIUS_VALLEY = qgisprocess:::qgis_default_value(), RADIUS_HILL = qgisprocess:::qgis_default_value(), THRESHOLD = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:valleyandridgedetectiontophatapproach")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:valleyandridgedetectiontophatapproach", `DEM` = DEM, `VALLEY` = VALLEY, `HILL` = HILL, `VALLEY_IDX` = VALLEY_IDX, `HILL_IDX` = HILL_IDX, `SLOPE_IDX` = SLOPE_IDX, `RADIUS_VALLEY` = RADIUS_VALLEY, `RADIUS_HILL` = RADIUS_HILL, `THRESHOLD` = THRESHOLD, `METHOD` = METHOD,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:valleyandridgedetectiontophatapproach", `DEM` = DEM, `VALLEY` = VALLEY, `HILL` = HILL, `VALLEY_IDX` = VALLEY_IDX, `HILL_IDX` = HILL_IDX, `SLOPE_IDX` = SLOPE_IDX, `RADIUS_VALLEY` = RADIUS_VALLEY, `RADIUS_HILL` = RADIUS_HILL, `THRESHOLD` = THRESHOLD, `METHOD` = METHOD,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "HILL")
  }
}