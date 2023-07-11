##' QGIS Algorithm provided by SAGA Next Gen Diurnal anisotropic heat (sagang:diurnalanisotropicheat). ---------------- Arguments ----------------  DEM: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer DAH: Diurnal Anisotropic Heating 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer ALPHA_MAX: Alpha Max (Degree) 	Default value:	202.5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Diurnal anisotropic heat
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param DAH `rasterDestination` - Diurnal Anisotropic Heating. Path for new raster layer.
##' @param ALPHA_MAX `number` - Alpha Max (Degree). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * DAH - outputRaster - Diurnal Anisotropic Heating
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_diurnalanisotropicheat <- function(DEM = qgisprocess:::qgis_default_value(), DAH = qgisprocess:::qgis_default_value(), ALPHA_MAX = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:diurnalanisotropicheat")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:diurnalanisotropicheat", `DEM` = DEM, `DAH` = DAH, `ALPHA_MAX` = ALPHA_MAX,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:diurnalanisotropicheat", `DEM` = DEM, `DAH` = DAH, `ALPHA_MAX` = ALPHA_MAX,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "DAH")
  }
}