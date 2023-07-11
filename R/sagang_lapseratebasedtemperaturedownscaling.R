##' QGIS Algorithm provided by SAGA Next Gen Lapse rate based temperature downscaling (sagang:lapseratebasedtemperaturedownscaling). ---------------- Arguments ----------------  LORES_DEM: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer LORES_T: Temperature 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer LAPSE_RATES: Lapse Rates (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer LORES_SLT: Temperature at Sea Level 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer HIRES_DEM: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer HIRES_T: Temperature 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer LAPSE_RATE: Constant Lapse Rate 	Default value:	0.6 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Lapse rate based temperature downscaling
##'
##' @param LORES_DEM `raster` - Elevation. Path to a raster layer.
##' @param LORES_T `raster` - Temperature. Path to a raster layer.
##' @param LAPSE_RATES `raster` - Lapse Rates. Path to a raster layer.
##' @param LORES_SLT `rasterDestination` - Temperature at Sea Level. Path for new raster layer.
##' @param HIRES_DEM `raster` - Elevation. Path to a raster layer.
##' @param HIRES_T `rasterDestination` - Temperature. Path for new raster layer.
##' @param LAPSE_RATE `number` - Constant Lapse Rate. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * HIRES_T - outputRaster - Temperature
##' * LORES_SLT - outputRaster - Temperature at Sea Level
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_lapseratebasedtemperaturedownscaling <- function(LORES_DEM = qgisprocess:::qgis_default_value(), LORES_T = qgisprocess:::qgis_default_value(), LAPSE_RATES = qgisprocess:::qgis_default_value(), LORES_SLT = qgisprocess:::qgis_default_value(), HIRES_DEM = qgisprocess:::qgis_default_value(), HIRES_T = qgisprocess:::qgis_default_value(), LAPSE_RATE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:lapseratebasedtemperaturedownscaling")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:lapseratebasedtemperaturedownscaling", `LORES_DEM` = LORES_DEM, `LORES_T` = LORES_T, `LAPSE_RATES` = LAPSE_RATES, `LORES_SLT` = LORES_SLT, `HIRES_DEM` = HIRES_DEM, `HIRES_T` = HIRES_T, `LAPSE_RATE` = LAPSE_RATE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:lapseratebasedtemperaturedownscaling", `LORES_DEM` = LORES_DEM, `LORES_T` = LORES_T, `LAPSE_RATES` = LAPSE_RATES, `LORES_SLT` = LORES_SLT, `HIRES_DEM` = HIRES_DEM, `HIRES_T` = HIRES_T, `LAPSE_RATE` = LAPSE_RATE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "HIRES_T")
  }
}