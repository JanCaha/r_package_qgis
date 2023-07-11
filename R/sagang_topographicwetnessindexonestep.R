##' QGIS Algorithm provided by SAGA Next Gen Topographic wetness index (one step) (sagang:topographicwetnessindexonestep). ---------------- Arguments ----------------  DEM: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer TWI: Topographic Wetness Index 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer FLOW_METHOD: Flow Distribution 	Default value:	4 	Argument type:	enum 	Available values: 		- 0: (0) Deterministic 8 		- 1: (1) Rho 8 		- 2: (2) Braunschweiger Reliefmodell 		- 3: (3) Deterministic Infinity 		- 4: (4) Multiple Flow Direction 		- 5: (5) Multiple Triangular Flow Direction 		- 6: (6) Multiple Maximum Downslope Gradient Based Flow Direction 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Topographic wetness index (one step)
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param TWI `rasterDestination` - Topographic Wetness Index. Path for new raster layer.
##' @param FLOW_METHOD `enum`  of `("(0) Deterministic 8", "(1) Rho 8", "(2) Braunschweiger Reliefmodell", "(3) Deterministic Infinity", "(4) Multiple Flow Direction", "(5) Multiple Triangular Flow Direction", "(6) Multiple Maximum Downslope Gradient Based Flow Direction")` - Flow Distribution. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * TWI - outputRaster - Topographic Wetness Index
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_topographicwetnessindexonestep <- function(DEM = qgisprocess:::qgis_default_value(), TWI = qgisprocess:::qgis_default_value(), FLOW_METHOD = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:topographicwetnessindexonestep")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:topographicwetnessindexonestep", `DEM` = DEM, `TWI` = TWI, `FLOW_METHOD` = FLOW_METHOD,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:topographicwetnessindexonestep", `DEM` = DEM, `TWI` = TWI, `FLOW_METHOD` = FLOW_METHOD,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "TWI")
  }
}