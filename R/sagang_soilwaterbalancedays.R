##' QGIS Algorithm provided by SAGA Next Gen Soil water balance (days) (sagang:soilwaterbalancedays). ---------------- Arguments ----------------  TAVG: Mean Temperature 	Argument type:	multilayer TMIN: Minimum Temperature 	Argument type:	multilayer TMAX: Maximum Temperature 	Argument type:	multilayer PSUM: Precipitation 	Argument type:	multilayer SNOW: Snow Depth 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SW_0: Soil Water (Upper Layer) 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SW_1: Soil Water (Lower Layer) 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer LAT_GRID: Latitude (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer LAT_CONST: Default Latitude 	Default value:	50 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SWC: Soil Water Capacity of Profile (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer SWC_DEFAULT: Default 	Default value:	220 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SWC_SURFACE: Top Soil Water Capacity 	Default value:	30 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SWT_RESIST: Transpiration Resistance 	Default value:	0.5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression RESET: Reset 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DAY: Start Day 	Default value:	2021-03-24 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Soil water balance (days)
##'
##' @param TAVG `multilayer` - Mean Temperature. .
##' @param TMIN `multilayer` - Minimum Temperature. .
##' @param TMAX `multilayer` - Maximum Temperature. .
##' @param PSUM `multilayer` - Precipitation. .
##' @param SNOW `rasterDestination` - Snow Depth. Path for new raster layer.
##' @param SW_0 `rasterDestination` - Soil Water (Upper Layer). Path for new raster layer.
##' @param SW_1 `rasterDestination` - Soil Water (Lower Layer). Path for new raster layer.
##' @param LAT_GRID `raster` - Latitude. Path to a raster layer.
##' @param LAT_CONST `number` - Default Latitude. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SWC `raster` - Soil Water Capacity of Profile. Path to a raster layer.
##' @param SWC_DEFAULT `number` - Default. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SWC_SURFACE `number` - Top Soil Water Capacity. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SWT_RESIST `number` - Transpiration Resistance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param RESET `boolean` - Reset. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DAY `string` - Start Day. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * SNOW - outputRaster - Snow Depth
##' * SW_0 - outputRaster - Soil Water (Upper Layer)
##' * SW_1 - outputRaster - Soil Water (Lower Layer)
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_soilwaterbalancedays <- function(TAVG = qgisprocess:::qgis_default_value(), TMIN = qgisprocess:::qgis_default_value(), TMAX = qgisprocess:::qgis_default_value(), PSUM = qgisprocess:::qgis_default_value(), SNOW = qgisprocess:::qgis_default_value(), SW_0 = qgisprocess:::qgis_default_value(), SW_1 = qgisprocess:::qgis_default_value(), LAT_GRID = qgisprocess:::qgis_default_value(), LAT_CONST = qgisprocess:::qgis_default_value(), SWC = qgisprocess:::qgis_default_value(), SWC_DEFAULT = qgisprocess:::qgis_default_value(), SWC_SURFACE = qgisprocess:::qgis_default_value(), SWT_RESIST = qgisprocess:::qgis_default_value(), RESET = qgisprocess:::qgis_default_value(), DAY = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:soilwaterbalancedays")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:soilwaterbalancedays", `TAVG` = TAVG, `TMIN` = TMIN, `TMAX` = TMAX, `PSUM` = PSUM, `SNOW` = SNOW, `SW_0` = SW_0, `SW_1` = SW_1, `LAT_GRID` = LAT_GRID, `LAT_CONST` = LAT_CONST, `SWC` = SWC, `SWC_DEFAULT` = SWC_DEFAULT, `SWC_SURFACE` = SWC_SURFACE, `SWT_RESIST` = SWT_RESIST, `RESET` = RESET, `DAY` = DAY,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:soilwaterbalancedays", `TAVG` = TAVG, `TMIN` = TMIN, `TMAX` = TMAX, `PSUM` = PSUM, `SNOW` = SNOW, `SW_0` = SW_0, `SW_1` = SW_1, `LAT_GRID` = LAT_GRID, `LAT_CONST` = LAT_CONST, `SWC` = SWC, `SWC_DEFAULT` = SWC_DEFAULT, `SWC_SURFACE` = SWC_SURFACE, `SWT_RESIST` = SWT_RESIST, `RESET` = RESET, `DAY` = DAY,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "SNOW")
  }
}