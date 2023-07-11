##' QGIS Algorithm provided by SAGA Next Gen Air pressure adjustment (sagang:airpressureadjustment). ---------------- Arguments ----------------  P: Air Pressure (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer P_DEFAULT: Default 	Default value:	1013.25 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression Z: Air Pressure Elevation (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer Z_DEFAULT: Default 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression T: Temperature (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer T_DEFAULT: Default 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression L: Temperature Lapse Rate (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer L_DEFAULT: Default 	Default value:	0.0065 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DEM: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer P_ADJ: Adjusted Air Pressure 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer
##'
##' @title QGIS algorithm - Air pressure adjustment
##'
##' @param P `raster` - Air Pressure. Path to a raster layer.
##' @param P_DEFAULT `number` - Default. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param Z `raster` - Air Pressure Elevation. Path to a raster layer.
##' @param Z_DEFAULT `number` - Default. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param T `raster` - Temperature. Path to a raster layer.
##' @param T_DEFAULT `number` - Default. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param L `raster` - Temperature Lapse Rate. Path to a raster layer.
##' @param L_DEFAULT `number` - Default. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param P_ADJ `rasterDestination` - Adjusted Air Pressure. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * P_ADJ - outputRaster - Adjusted Air Pressure
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_airpressureadjustment <- function(P = qgisprocess:::qgis_default_value(), P_DEFAULT = qgisprocess:::qgis_default_value(), Z = qgisprocess:::qgis_default_value(), Z_DEFAULT = qgisprocess:::qgis_default_value(), T = qgisprocess:::qgis_default_value(), T_DEFAULT = qgisprocess:::qgis_default_value(), L = qgisprocess:::qgis_default_value(), L_DEFAULT = qgisprocess:::qgis_default_value(), DEM = qgisprocess:::qgis_default_value(), P_ADJ = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:airpressureadjustment")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:airpressureadjustment", `P` = P, `P_DEFAULT` = P_DEFAULT, `Z` = Z, `Z_DEFAULT` = Z_DEFAULT, `T` = T, `T_DEFAULT` = T_DEFAULT, `L` = L, `L_DEFAULT` = L_DEFAULT, `DEM` = DEM, `P_ADJ` = P_ADJ,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:airpressureadjustment", `P` = P, `P_DEFAULT` = P_DEFAULT, `Z` = Z, `Z_DEFAULT` = Z_DEFAULT, `T` = T, `T_DEFAULT` = T_DEFAULT, `L` = L, `L_DEFAULT` = L_DEFAULT, `DEM` = DEM, `P_ADJ` = P_ADJ,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "P_ADJ")
  }
}