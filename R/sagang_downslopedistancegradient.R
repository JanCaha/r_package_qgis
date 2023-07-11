##' QGIS Algorithm provided by SAGA Next Gen Downslope distance gradient (sagang:downslopedistancegradient). ---------------- Arguments ----------------  DEM: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer GRADIENT: Gradient 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer DIFFERENCE: Gradient Difference 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer DISTANCE: Vertical Distance 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression OUTPUT: Output 	Default value:	2 	Argument type:	enum 	Available values: 		- 0: (0) distance 		- 1: (1) gradient (tangens) 		- 2: (2) gradient (degree) 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Downslope distance gradient
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param GRADIENT `rasterDestination` - Gradient. Path for new raster layer.
##' @param DIFFERENCE `rasterDestination` - Gradient Difference. Path for new raster layer.
##' @param DISTANCE `number` - Vertical Distance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `enum`  of `("(0) distance", "(1) gradient (tangens)", "(2) gradient (degree)")` - Output. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * DIFFERENCE - outputRaster - Gradient Difference
##' * GRADIENT - outputRaster - Gradient
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_downslopedistancegradient <- function(DEM = qgisprocess:::qgis_default_value(), GRADIENT = qgisprocess:::qgis_default_value(), DIFFERENCE = qgisprocess:::qgis_default_value(), DISTANCE = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:downslopedistancegradient")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:downslopedistancegradient", `DEM` = DEM, `GRADIENT` = GRADIENT, `DIFFERENCE` = DIFFERENCE, `DISTANCE` = DISTANCE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:downslopedistancegradient", `DEM` = DEM, `GRADIENT` = GRADIENT, `DIFFERENCE` = DIFFERENCE, `DISTANCE` = DISTANCE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "DIFFERENCE")
  }
}