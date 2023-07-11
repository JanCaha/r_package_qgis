##' QGIS Algorithm provided by SAGA Next Gen Land surface temperature (lapse rates) (sagang:landsurfacetemperaturelapserates). ---------------- Arguments ----------------  DEM: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer SWR: Short Wave Radiation Ratio (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer LAI: Leaf Area Index (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer LAI_MAX: Maximum LAI 	Default value:	8 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression LST: Land Surface Temperature 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer Z_REFERENCE: Elevation 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression T_REFERENCE: Temperature 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression T_GRADIENT: Temperature Lapse Rate 	Default value:	0.65 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression C_FACTOR: C Factor 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Land surface temperature (lapse rates)
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param SWR `raster` - Short Wave Radiation Ratio. Path to a raster layer.
##' @param LAI `raster` - Leaf Area Index. Path to a raster layer.
##' @param LAI_MAX `number` - Maximum LAI. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param LST `rasterDestination` - Land Surface Temperature. Path for new raster layer.
##' @param Z_REFERENCE `number` - Elevation. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param T_REFERENCE `number` - Temperature. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param T_GRADIENT `number` - Temperature Lapse Rate. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param C_FACTOR `number` - C Factor. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
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

sagang_landsurfacetemperaturelapserates <- function(DEM = qgisprocess:::qgis_default_value(), SWR = qgisprocess:::qgis_default_value(), LAI = qgisprocess:::qgis_default_value(), LAI_MAX = qgisprocess:::qgis_default_value(), LST = qgisprocess:::qgis_default_value(), Z_REFERENCE = qgisprocess:::qgis_default_value(), T_REFERENCE = qgisprocess:::qgis_default_value(), T_GRADIENT = qgisprocess:::qgis_default_value(), C_FACTOR = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:landsurfacetemperaturelapserates")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:landsurfacetemperaturelapserates", `DEM` = DEM, `SWR` = SWR, `LAI` = LAI, `LAI_MAX` = LAI_MAX, `LST` = LST, `Z_REFERENCE` = Z_REFERENCE, `T_REFERENCE` = T_REFERENCE, `T_GRADIENT` = T_GRADIENT, `C_FACTOR` = C_FACTOR,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:landsurfacetemperaturelapserates", `DEM` = DEM, `SWR` = SWR, `LAI` = LAI, `LAI_MAX` = LAI_MAX, `LST` = LST, `Z_REFERENCE` = Z_REFERENCE, `T_REFERENCE` = T_REFERENCE, `T_GRADIENT` = T_GRADIENT, `C_FACTOR` = C_FACTOR,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "LST")
  }
}