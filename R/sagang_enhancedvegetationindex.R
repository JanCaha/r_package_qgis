##' QGIS Algorithm provided by SAGA Next Gen Enhanced vegetation index (sagang:enhancedvegetationindex). ---------------- Arguments ----------------  BLUE: Blue Reflectance (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer RED: Red Reflectance 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer NIR: Near Infrared Reflectance 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer EVI: Enhanced Vegetation Index 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer GAIN: Gain 	Default value:	2.5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression L: Canopy Background Adjustment 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CBLUE: Aerosol Resistance Coefficient (Blue) 	Default value:	7.5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CRED: Aerosol Resistance Coefficient (Red) 	Default value:	6 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Enhanced vegetation index
##'
##' @param BLUE `raster` - Blue Reflectance. Path to a raster layer.
##' @param RED `raster` - Red Reflectance. Path to a raster layer.
##' @param NIR `raster` - Near Infrared Reflectance. Path to a raster layer.
##' @param EVI `rasterDestination` - Enhanced Vegetation Index. Path for new raster layer.
##' @param GAIN `number` - Gain. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param L `number` - Canopy Background Adjustment. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CBLUE `number` - Aerosol Resistance Coefficient (Blue). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CRED `number` - Aerosol Resistance Coefficient (Red). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * EVI - outputRaster - Enhanced Vegetation Index
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_enhancedvegetationindex <- function(BLUE = qgisprocess:::qgis_default_value(), RED = qgisprocess:::qgis_default_value(), NIR = qgisprocess:::qgis_default_value(), EVI = qgisprocess:::qgis_default_value(), GAIN = qgisprocess:::qgis_default_value(), L = qgisprocess:::qgis_default_value(), CBLUE = qgisprocess:::qgis_default_value(), CRED = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:enhancedvegetationindex")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:enhancedvegetationindex", `BLUE` = BLUE, `RED` = RED, `NIR` = NIR, `EVI` = EVI, `GAIN` = GAIN, `L` = L, `CBLUE` = CBLUE, `CRED` = CRED,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:enhancedvegetationindex", `BLUE` = BLUE, `RED` = RED, `NIR` = NIR, `EVI` = EVI, `GAIN` = GAIN, `L` = L, `CBLUE` = CBLUE, `CRED` = CRED,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "EVI")
  }
}