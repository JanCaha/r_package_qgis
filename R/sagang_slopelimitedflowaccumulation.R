##' QGIS Algorithm provided by SAGA Next Gen Slope limited flow accumulation (sagang:slopelimitedflowaccumulation). ---------------- Arguments ----------------  DEM: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer WEIGHT: Weight (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer FLOW: Flow Accumulation 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SLOPE_MIN: Slope Minimum 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SLOPE_MAX: Slope Threshold 	Default value:	5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression B_FLOW: Use Flow Threshold 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Slope limited flow accumulation
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param WEIGHT `raster` - Weight. Path to a raster layer.
##' @param FLOW `rasterDestination` - Flow Accumulation. Path for new raster layer.
##' @param SLOPE_MIN `number` - Slope Minimum. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SLOPE_MAX `number` - Slope Threshold. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param B_FLOW `boolean` - Use Flow Threshold. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * FLOW - outputRaster - Flow Accumulation
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_slopelimitedflowaccumulation <- function(DEM = qgisprocess:::qgis_default_value(), WEIGHT = qgisprocess:::qgis_default_value(), FLOW = qgisprocess:::qgis_default_value(), SLOPE_MIN = qgisprocess:::qgis_default_value(), SLOPE_MAX = qgisprocess:::qgis_default_value(), B_FLOW = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:slopelimitedflowaccumulation")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:slopelimitedflowaccumulation", `DEM` = DEM, `WEIGHT` = WEIGHT, `FLOW` = FLOW, `SLOPE_MIN` = SLOPE_MIN, `SLOPE_MAX` = SLOPE_MAX, `B_FLOW` = B_FLOW,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:slopelimitedflowaccumulation", `DEM` = DEM, `WEIGHT` = WEIGHT, `FLOW` = FLOW, `SLOPE_MIN` = SLOPE_MIN, `SLOPE_MAX` = SLOPE_MAX, `B_FLOW` = B_FLOW,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "FLOW")
  }
}