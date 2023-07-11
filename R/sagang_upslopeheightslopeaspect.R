##' QGIS Algorithm provided by SAGA Next Gen Upslope height, slope, aspect (sagang:upslopeheightslopeaspect). ---------------- Arguments ----------------  DEM: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer HEIGHT: Upslope Height 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SLOPE: Slope 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer ASPECT: Aspect 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer FLOW_METHOD: Flow Distribution 	Default value:	4 	Argument type:	enum 	Available values: 		- 0: (0) Deterministic 8 		- 1: (1) Rho 8 		- 2: (2) Braunschweiger Reliefmodell 		- 3: (3) Deterministic Infinity 		- 4: (4) Multiple Flow Direction 		- 5: (5) Multiple Triangular Flow Direction 		- 6: (6) Multiple Maximum Downslope Gradient Based Flow Direction 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Upslope height, slope, aspect
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param HEIGHT `rasterDestination` - Upslope Height. Path for new raster layer.
##' @param SLOPE `rasterDestination` - Slope. Path for new raster layer.
##' @param ASPECT `rasterDestination` - Aspect. Path for new raster layer.
##' @param FLOW_METHOD `enum`  of `("(0) Deterministic 8", "(1) Rho 8", "(2) Braunschweiger Reliefmodell", "(3) Deterministic Infinity", "(4) Multiple Flow Direction", "(5) Multiple Triangular Flow Direction", "(6) Multiple Maximum Downslope Gradient Based Flow Direction")` - Flow Distribution. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * ASPECT - outputRaster - Aspect
##' * HEIGHT - outputRaster - Upslope Height
##' * SLOPE - outputRaster - Slope
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_upslopeheightslopeaspect <- function(DEM = qgisprocess:::qgis_default_value(), HEIGHT = qgisprocess:::qgis_default_value(), SLOPE = qgisprocess:::qgis_default_value(), ASPECT = qgisprocess:::qgis_default_value(), FLOW_METHOD = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:upslopeheightslopeaspect")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:upslopeheightslopeaspect", `DEM` = DEM, `HEIGHT` = HEIGHT, `SLOPE` = SLOPE, `ASPECT` = ASPECT, `FLOW_METHOD` = FLOW_METHOD,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:upslopeheightslopeaspect", `DEM` = DEM, `HEIGHT` = HEIGHT, `SLOPE` = SLOPE, `ASPECT` = ASPECT, `FLOW_METHOD` = FLOW_METHOD,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "ASPECT")
  }
}