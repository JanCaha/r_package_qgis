##' QGIS Algorithm provided by SAGA Next Gen Flow accumulation (one step) (sagang:flowaccumulationonestep). ---------------- Arguments ----------------  DEM: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer TCA: Flow Accumulation 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SCA: Specific Catchment Area 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer PREPROCESSING: Preprocessing 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) Fill Sinks (Wang & Liu) 		- 1: (1) Sink Removal 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' FLOW_ROUTING: Flow Routing 	Default value:	4 	Argument type:	enum 	Available values: 		- 0: (0) Deterministic 8 		- 1: (1) Rho 8 		- 2: (2) Braunschweiger Reliefmodell 		- 3: (3) Deterministic Infinity 		- 4: (4) Multiple Flow Direction 		- 5: (5) Multiple Triangular Flow Direction 		- 6: (6) Multiple Maximum Downslope Gradient Based Flow Direction 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Flow accumulation (one step)
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param TCA `rasterDestination` - Flow Accumulation. Path for new raster layer.
##' @param SCA `rasterDestination` - Specific Catchment Area. Path for new raster layer.
##' @param PREPROCESSING `enum`  of `("(0) Fill Sinks (Wang & Liu)", "(1) Sink Removal")` - Preprocessing. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param FLOW_ROUTING `enum`  of `("(0) Deterministic 8", "(1) Rho 8", "(2) Braunschweiger Reliefmodell", "(3) Deterministic Infinity", "(4) Multiple Flow Direction", "(5) Multiple Triangular Flow Direction", "(6) Multiple Maximum Downslope Gradient Based Flow Direction")` - Flow Routing. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * SCA - outputRaster - Specific Catchment Area
##' * TCA - outputRaster - Flow Accumulation
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_flowaccumulationonestep <- function(DEM = qgisprocess:::qgis_default_value(), TCA = qgisprocess:::qgis_default_value(), SCA = qgisprocess:::qgis_default_value(), PREPROCESSING = qgisprocess:::qgis_default_value(), FLOW_ROUTING = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:flowaccumulationonestep")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:flowaccumulationonestep", `DEM` = DEM, `TCA` = TCA, `SCA` = SCA, `PREPROCESSING` = PREPROCESSING, `FLOW_ROUTING` = FLOW_ROUTING,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:flowaccumulationonestep", `DEM` = DEM, `TCA` = TCA, `SCA` = SCA, `PREPROCESSING` = PREPROCESSING, `FLOW_ROUTING` = FLOW_ROUTING,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "SCA")
  }
}