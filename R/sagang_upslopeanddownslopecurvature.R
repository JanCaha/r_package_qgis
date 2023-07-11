##' QGIS Algorithm provided by SAGA Next Gen Upslope and downslope curvature (sagang:upslopeanddownslopecurvature). ---------------- Arguments ----------------  DEM: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer C_LOCAL: Local Curvature 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer C_UP: Upslope Curvature 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer C_UP_LOCAL: Local Upslope Curvature 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer C_DOWN: Downslope Curvature 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer C_DOWN_LOCAL: Local Downslope Curvature 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer WEIGHTING: Upslope Weighting 	Default value:	0.5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Upslope and downslope curvature
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param C_LOCAL `rasterDestination` - Local Curvature. Path for new raster layer.
##' @param C_UP `rasterDestination` - Upslope Curvature. Path for new raster layer.
##' @param C_UP_LOCAL `rasterDestination` - Local Upslope Curvature. Path for new raster layer.
##' @param C_DOWN `rasterDestination` - Downslope Curvature. Path for new raster layer.
##' @param C_DOWN_LOCAL `rasterDestination` - Local Downslope Curvature. Path for new raster layer.
##' @param WEIGHTING `number` - Upslope Weighting. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * C_DOWN - outputRaster - Downslope Curvature
##' * C_DOWN_LOCAL - outputRaster - Local Downslope Curvature
##' * C_LOCAL - outputRaster - Local Curvature
##' * C_UP - outputRaster - Upslope Curvature
##' * C_UP_LOCAL - outputRaster - Local Upslope Curvature
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_upslopeanddownslopecurvature <- function(DEM = qgisprocess:::qgis_default_value(), C_LOCAL = qgisprocess:::qgis_default_value(), C_UP = qgisprocess:::qgis_default_value(), C_UP_LOCAL = qgisprocess:::qgis_default_value(), C_DOWN = qgisprocess:::qgis_default_value(), C_DOWN_LOCAL = qgisprocess:::qgis_default_value(), WEIGHTING = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:upslopeanddownslopecurvature")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:upslopeanddownslopecurvature", `DEM` = DEM, `C_LOCAL` = C_LOCAL, `C_UP` = C_UP, `C_UP_LOCAL` = C_UP_LOCAL, `C_DOWN` = C_DOWN, `C_DOWN_LOCAL` = C_DOWN_LOCAL, `WEIGHTING` = WEIGHTING,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:upslopeanddownslopecurvature", `DEM` = DEM, `C_LOCAL` = C_LOCAL, `C_UP` = C_UP, `C_UP_LOCAL` = C_UP_LOCAL, `C_DOWN` = C_DOWN, `C_DOWN_LOCAL` = C_DOWN_LOCAL, `WEIGHTING` = WEIGHTING,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "C_DOWN")
  }
}