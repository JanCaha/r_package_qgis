##' QGIS Algorithm provided by SAGA Next Gen Land surface temperature (sagang:landsurfacetemperature). ---------------- Arguments ----------------  IRRADIANCE: Global Irradiance (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer IRRADIANCE_DEFAULT: Default 	Default value:	5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression ALBEDO: Albedo (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer ALBEDO_DEFAULT: Default 	Default value:	0.5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression EMISSIVITY: Emissivity (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer EMISSIVITY_DEFAULT: Default 	Default value:	0.5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CONVECTION: Convection Coefficient (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer CONVECTION_DEFAULT: Default 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression T_AIR: Ambient Air Temperature (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer T_AIR_DEFAULT: Default 	Default value:	300 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression T_SKY: Radiant Sky Temperature (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer T_SKY_DEFAULT: Default 	Default value:	280 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression T_INITIAL: Initial Temperature Estimation (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer T_INITIAL_DEFAULT: Default 	Default value:	300 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression LST: Land Surface Temperature 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer UNIT: Unit 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Kelvin 		- 1: (1) Celsius 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' ITERATIONS: Iterations 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Land surface temperature
##'
##' @param IRRADIANCE `raster` - Global Irradiance. Path to a raster layer.
##' @param IRRADIANCE_DEFAULT `number` - Default. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ALBEDO `raster` - Albedo. Path to a raster layer.
##' @param ALBEDO_DEFAULT `number` - Default. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param EMISSIVITY `raster` - Emissivity. Path to a raster layer.
##' @param EMISSIVITY_DEFAULT `number` - Default. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CONVECTION `raster` - Convection Coefficient. Path to a raster layer.
##' @param CONVECTION_DEFAULT `number` - Default. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param T_AIR `raster` - Ambient Air Temperature. Path to a raster layer.
##' @param T_AIR_DEFAULT `number` - Default. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param T_SKY `raster` - Radiant Sky Temperature. Path to a raster layer.
##' @param T_SKY_DEFAULT `number` - Default. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param T_INITIAL `raster` - Initial Temperature Estimation. Path to a raster layer.
##' @param T_INITIAL_DEFAULT `number` - Default. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param LST `rasterDestination` - Land Surface Temperature. Path for new raster layer.
##' @param UNIT `enum`  of `("(0) Kelvin", "(1) Celsius")` - Unit. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ITERATIONS `number` - Iterations. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * LST - outputRaster - Land Surface Temperature
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_landsurfacetemperature <- function(IRRADIANCE = qgisprocess:::qgis_default_value(), IRRADIANCE_DEFAULT = qgisprocess:::qgis_default_value(), ALBEDO = qgisprocess:::qgis_default_value(), ALBEDO_DEFAULT = qgisprocess:::qgis_default_value(), EMISSIVITY = qgisprocess:::qgis_default_value(), EMISSIVITY_DEFAULT = qgisprocess:::qgis_default_value(), CONVECTION = qgisprocess:::qgis_default_value(), CONVECTION_DEFAULT = qgisprocess:::qgis_default_value(), T_AIR = qgisprocess:::qgis_default_value(), T_AIR_DEFAULT = qgisprocess:::qgis_default_value(), T_SKY = qgisprocess:::qgis_default_value(), T_SKY_DEFAULT = qgisprocess:::qgis_default_value(), T_INITIAL = qgisprocess:::qgis_default_value(), T_INITIAL_DEFAULT = qgisprocess:::qgis_default_value(), LST = qgisprocess:::qgis_default_value(), UNIT = qgisprocess:::qgis_default_value(), ITERATIONS = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:landsurfacetemperature")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:landsurfacetemperature", `IRRADIANCE` = IRRADIANCE, `IRRADIANCE_DEFAULT` = IRRADIANCE_DEFAULT, `ALBEDO` = ALBEDO, `ALBEDO_DEFAULT` = ALBEDO_DEFAULT, `EMISSIVITY` = EMISSIVITY, `EMISSIVITY_DEFAULT` = EMISSIVITY_DEFAULT, `CONVECTION` = CONVECTION, `CONVECTION_DEFAULT` = CONVECTION_DEFAULT, `T_AIR` = T_AIR, `T_AIR_DEFAULT` = T_AIR_DEFAULT, `T_SKY` = T_SKY, `T_SKY_DEFAULT` = T_SKY_DEFAULT, `T_INITIAL` = T_INITIAL, `T_INITIAL_DEFAULT` = T_INITIAL_DEFAULT, `LST` = LST, `UNIT` = UNIT, `ITERATIONS` = ITERATIONS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:landsurfacetemperature", `IRRADIANCE` = IRRADIANCE, `IRRADIANCE_DEFAULT` = IRRADIANCE_DEFAULT, `ALBEDO` = ALBEDO, `ALBEDO_DEFAULT` = ALBEDO_DEFAULT, `EMISSIVITY` = EMISSIVITY, `EMISSIVITY_DEFAULT` = EMISSIVITY_DEFAULT, `CONVECTION` = CONVECTION, `CONVECTION_DEFAULT` = CONVECTION_DEFAULT, `T_AIR` = T_AIR, `T_AIR_DEFAULT` = T_AIR_DEFAULT, `T_SKY` = T_SKY, `T_SKY_DEFAULT` = T_SKY_DEFAULT, `T_INITIAL` = T_INITIAL, `T_INITIAL_DEFAULT` = T_INITIAL_DEFAULT, `LST` = LST, `UNIT` = UNIT, `ITERATIONS` = ITERATIONS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "LST")
  }
}