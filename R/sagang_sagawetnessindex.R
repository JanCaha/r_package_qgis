##' QGIS Algorithm provided by SAGA Next Gen Saga wetness index (sagang:sagawetnessindex). ---------------- Arguments ----------------  DEM: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer WEIGHT: Weights (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer AREA: Catchment Area 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SLOPE: Catchment Slope 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer AREA_MOD: Modified Catchment Area 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer TWI: Topographic Wetness Index 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SUCTION: Suction 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression AREA_TYPE: Type of Area 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) total catchment area 		- 1: (1) square root of catchment area 		- 2: (2) specific catchment area 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' SLOPE_TYPE: Type of Slope 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) local slope 		- 1: (1) catchment slope 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' SLOPE_MIN: Minimum Slope 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SLOPE_OFF: Offset Slope 	Default value:	0.1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SLOPE_WEIGHT: Slope Weighting 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Saga wetness index
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param WEIGHT `raster` - Weights. Path to a raster layer.
##' @param AREA `rasterDestination` - Catchment Area. Path for new raster layer.
##' @param SLOPE `rasterDestination` - Catchment Slope. Path for new raster layer.
##' @param AREA_MOD `rasterDestination` - Modified Catchment Area. Path for new raster layer.
##' @param TWI `rasterDestination` - Topographic Wetness Index. Path for new raster layer.
##' @param SUCTION `number` - Suction. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param AREA_TYPE `enum`  of `("(0) total catchment area", "(1) square root of catchment area", "(2) specific catchment area")` - Type of Area. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SLOPE_TYPE `enum`  of `("(0) local slope", "(1) catchment slope")` - Type of Slope. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SLOPE_MIN `number` - Minimum Slope. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SLOPE_OFF `number` - Offset Slope. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SLOPE_WEIGHT `number` - Slope Weighting. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * AREA - outputRaster - Catchment Area
##' * AREA_MOD - outputRaster - Modified Catchment Area
##' * SLOPE - outputRaster - Catchment Slope
##' * TWI - outputRaster - Topographic Wetness Index
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_sagawetnessindex <- function(DEM = qgisprocess:::qgis_default_value(), WEIGHT = qgisprocess:::qgis_default_value(), AREA = qgisprocess:::qgis_default_value(), SLOPE = qgisprocess:::qgis_default_value(), AREA_MOD = qgisprocess:::qgis_default_value(), TWI = qgisprocess:::qgis_default_value(), SUCTION = qgisprocess:::qgis_default_value(), AREA_TYPE = qgisprocess:::qgis_default_value(), SLOPE_TYPE = qgisprocess:::qgis_default_value(), SLOPE_MIN = qgisprocess:::qgis_default_value(), SLOPE_OFF = qgisprocess:::qgis_default_value(), SLOPE_WEIGHT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:sagawetnessindex")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:sagawetnessindex", `DEM` = DEM, `WEIGHT` = WEIGHT, `AREA` = AREA, `SLOPE` = SLOPE, `AREA_MOD` = AREA_MOD, `TWI` = TWI, `SUCTION` = SUCTION, `AREA_TYPE` = AREA_TYPE, `SLOPE_TYPE` = SLOPE_TYPE, `SLOPE_MIN` = SLOPE_MIN, `SLOPE_OFF` = SLOPE_OFF, `SLOPE_WEIGHT` = SLOPE_WEIGHT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:sagawetnessindex", `DEM` = DEM, `WEIGHT` = WEIGHT, `AREA` = AREA, `SLOPE` = SLOPE, `AREA_MOD` = AREA_MOD, `TWI` = TWI, `SUCTION` = SUCTION, `AREA_TYPE` = AREA_TYPE, `SLOPE_TYPE` = SLOPE_TYPE, `SLOPE_MIN` = SLOPE_MIN, `SLOPE_OFF` = SLOPE_OFF, `SLOPE_WEIGHT` = SLOPE_WEIGHT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "AREA")
  }
}