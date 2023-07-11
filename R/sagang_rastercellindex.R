##' QGIS Algorithm provided by SAGA Next Gen Raster cell index (sagang:rastercellindex). ---------------- Arguments ----------------  GRID: Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer INDEX: Index 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer ORDER: Sorting Order 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) ascending 		- 1: (1) descending 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Raster cell index
##'
##' @param GRID `raster` - Grid. Path to a raster layer.
##' @param INDEX `rasterDestination` - Index. Path for new raster layer.
##' @param ORDER `enum`  of `("(0) ascending", "(1) descending")` - Sorting Order. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * INDEX - outputRaster - Index
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_rastercellindex <- function(GRID = qgisprocess:::qgis_default_value(), INDEX = qgisprocess:::qgis_default_value(), ORDER = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:rastercellindex")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:rastercellindex", `GRID` = GRID, `INDEX` = INDEX, `ORDER` = ORDER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:rastercellindex", `GRID` = GRID, `INDEX` = INDEX, `ORDER` = ORDER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "INDEX")
  }
}