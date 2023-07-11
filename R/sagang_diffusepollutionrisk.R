##' QGIS Algorithm provided by SAGA Next Gen Diffuse pollution risk (sagang:diffusepollutionrisk). ---------------- Arguments ----------------  DEM: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer CHANNEL: Channel Network (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer WEIGHT: Land Cover Weights (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer WEIGHT_DEFAULT: Default 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression RAIN: Rainfall (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer RAIN_DEFAULT: Default 	Default value:	500 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DELIVERY: Delivery Index 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer RISK_POINT: Locational Risk 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer RISK_DIFFUSE: Diffuse Pollution Risk 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer METHOD: Flow Routing 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) D8 		- 1: (1) MFD 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' CHANNEL_START: Channel Initiation Threshold 	Default value:	150 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Diffuse pollution risk
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param CHANNEL `raster` - Channel Network. Path to a raster layer.
##' @param WEIGHT `raster` - Land Cover Weights. Path to a raster layer.
##' @param WEIGHT_DEFAULT `number` - Default. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param RAIN `raster` - Rainfall. Path to a raster layer.
##' @param RAIN_DEFAULT `number` - Default. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DELIVERY `rasterDestination` - Delivery Index. Path for new raster layer.
##' @param RISK_POINT `rasterDestination` - Locational Risk. Path for new raster layer.
##' @param RISK_DIFFUSE `rasterDestination` - Diffuse Pollution Risk. Path for new raster layer.
##' @param METHOD `enum`  of `("(0) D8", "(1) MFD")` - Flow Routing. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param CHANNEL_START `number` - Channel Initiation Threshold. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * DELIVERY - outputRaster - Delivery Index
##' * RISK_DIFFUSE - outputRaster - Diffuse Pollution Risk
##' * RISK_POINT - outputRaster - Locational Risk
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_diffusepollutionrisk <- function(DEM = qgisprocess:::qgis_default_value(), CHANNEL = qgisprocess:::qgis_default_value(), WEIGHT = qgisprocess:::qgis_default_value(), WEIGHT_DEFAULT = qgisprocess:::qgis_default_value(), RAIN = qgisprocess:::qgis_default_value(), RAIN_DEFAULT = qgisprocess:::qgis_default_value(), DELIVERY = qgisprocess:::qgis_default_value(), RISK_POINT = qgisprocess:::qgis_default_value(), RISK_DIFFUSE = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), CHANNEL_START = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:diffusepollutionrisk")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:diffusepollutionrisk", `DEM` = DEM, `CHANNEL` = CHANNEL, `WEIGHT` = WEIGHT, `WEIGHT_DEFAULT` = WEIGHT_DEFAULT, `RAIN` = RAIN, `RAIN_DEFAULT` = RAIN_DEFAULT, `DELIVERY` = DELIVERY, `RISK_POINT` = RISK_POINT, `RISK_DIFFUSE` = RISK_DIFFUSE, `METHOD` = METHOD, `CHANNEL_START` = CHANNEL_START,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:diffusepollutionrisk", `DEM` = DEM, `CHANNEL` = CHANNEL, `WEIGHT` = WEIGHT, `WEIGHT_DEFAULT` = WEIGHT_DEFAULT, `RAIN` = RAIN, `RAIN_DEFAULT` = RAIN_DEFAULT, `DELIVERY` = DELIVERY, `RISK_POINT` = RISK_POINT, `RISK_DIFFUSE` = RISK_DIFFUSE, `METHOD` = METHOD, `CHANNEL_START` = CHANNEL_START,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "DELIVERY")
  }
}