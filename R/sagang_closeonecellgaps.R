##' QGIS Algorithm provided by SAGA Next Gen Close one cell gaps (sagang:closeonecellgaps). ---------------- Arguments ----------------  INPUT: Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer RESULT: Changed Grid 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer MODE: Neighbourhood 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) Neumann 		- 1: (1) Moore 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' METHOD: Value 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) arithmetic mean 		- 1: (1) median 		- 2: (2) majority 		- 3: (3) minority 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Close one cell gaps
##'
##' @param INPUT `raster` - Grid. Path to a raster layer.
##' @param RESULT `rasterDestination` - Changed Grid. Path for new raster layer.
##' @param MODE `enum`  of `("(0) Neumann", "(1) Moore")` - Neighbourhood. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param METHOD `enum`  of `("(0) arithmetic mean", "(1) median", "(2) majority", "(3) minority")` - Value. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputRaster - Changed Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_closeonecellgaps <- function(INPUT = qgisprocess:::qgis_default_value(), RESULT = qgisprocess:::qgis_default_value(), MODE = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:closeonecellgaps")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:closeonecellgaps", `INPUT` = INPUT, `RESULT` = RESULT, `MODE` = MODE, `METHOD` = METHOD,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:closeonecellgaps", `INPUT` = INPUT, `RESULT` = RESULT, `MODE` = MODE, `METHOD` = METHOD,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "RESULT")
  }
}