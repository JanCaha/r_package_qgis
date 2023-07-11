##' QGIS Algorithm provided by SAGA Next Gen Lapse rate based temperature downscaling (bulk processing) (sagang:lapseratebasedtemperaturedownscalingbulkprocessing). ---------------- Arguments ----------------  LORES_DEM: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer LORES_T: Temperature 	Argument type:	multilayer HIRES_DEM: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer HIRES_T: Temperature 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer LAPSE_RATE: Constant Lapse Rate 	Default value:	0.6 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Lapse rate based temperature downscaling (bulk processing)
##'
##' @param LORES_DEM `raster` - Elevation. Path to a raster layer.
##' @param LORES_T `multilayer` - Temperature. .
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
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_lapseratebasedtemperaturedownscalingbulkprocessing <- function(LORES_DEM = qgisprocess:::qgis_default_value(), LORES_T = qgisprocess:::qgis_default_value(), HIRES_DEM = qgisprocess:::qgis_default_value(), HIRES_T = qgisprocess:::qgis_default_value(), LAPSE_RATE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:lapseratebasedtemperaturedownscalingbulkprocessing")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:lapseratebasedtemperaturedownscalingbulkprocessing", `LORES_DEM` = LORES_DEM, `LORES_T` = LORES_T, `HIRES_DEM` = HIRES_DEM, `HIRES_T` = HIRES_T, `LAPSE_RATE` = LAPSE_RATE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:lapseratebasedtemperaturedownscalingbulkprocessing", `LORES_DEM` = LORES_DEM, `LORES_T` = LORES_T, `HIRES_DEM` = HIRES_DEM, `HIRES_T` = HIRES_T, `LAPSE_RATE` = LAPSE_RATE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "HIRES_T")
  }
}