##' QGIS Algorithm provided by SAGA Next Gen Relative heights and slope positions (sagang:relativeheightsandslopepositions). ---------------- Arguments ----------------  DEM: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer HO: Slope Height 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer HU: Valley Depth 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer NH: Normalized Height 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SH: Standardized Height 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer MS: Mid-Slope Positon 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer W: w 	Default value:	0.5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression T: t 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression E: e 	Default value:	2 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Relative heights and slope positions
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param HO `rasterDestination` - Slope Height. Path for new raster layer.
##' @param HU `rasterDestination` - Valley Depth. Path for new raster layer.
##' @param NH `rasterDestination` - Normalized Height. Path for new raster layer.
##' @param SH `rasterDestination` - Standardized Height. Path for new raster layer.
##' @param MS `rasterDestination` - Mid-Slope Positon. Path for new raster layer.
##' @param W `number` - w. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param T `number` - t. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param E `number` - e. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * HO - outputRaster - Slope Height
##' * HU - outputRaster - Valley Depth
##' * MS - outputRaster - Mid-Slope Positon
##' * NH - outputRaster - Normalized Height
##' * SH - outputRaster - Standardized Height
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_relativeheightsandslopepositions <- function(DEM = qgisprocess:::qgis_default_value(), HO = qgisprocess:::qgis_default_value(), HU = qgisprocess:::qgis_default_value(), NH = qgisprocess:::qgis_default_value(), SH = qgisprocess:::qgis_default_value(), MS = qgisprocess:::qgis_default_value(), W = qgisprocess:::qgis_default_value(), T = qgisprocess:::qgis_default_value(), E = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:relativeheightsandslopepositions")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:relativeheightsandslopepositions", `DEM` = DEM, `HO` = HO, `HU` = HU, `NH` = NH, `SH` = SH, `MS` = MS, `W` = W, `T` = T, `E` = E,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:relativeheightsandslopepositions", `DEM` = DEM, `HO` = HO, `HU` = HU, `NH` = NH, `SH` = SH, `MS` = MS, `W` = W, `T` = T, `E` = E,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "HO")
  }
}