##' QGIS Algorithm provided by SAGA Next Gen Import usgs srtm grid (sagang:importusgssrtmgrid). ---------------- Arguments ----------------  GRIDS: Grids 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer FILE: Files 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file RESOLUTION: Resolution 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) 1 arc-second 		- 1: (1) 3 arc-second 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Import usgs srtm grid
##'
##' @param GRIDS `rasterDestination` - Grids. Path for new raster layer.
##' @param FILE `file` - Files. Path to a file.
##' @param RESOLUTION `enum`  of `("(0) 1 arc-second", "(1) 3 arc-second")` - Resolution. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * GRIDS - outputRaster - Grids
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_importusgssrtmgrid <- function(GRIDS = qgisprocess:::qgis_default_value(), FILE = qgisprocess:::qgis_default_value(), RESOLUTION = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:importusgssrtmgrid")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:importusgssrtmgrid", `GRIDS` = GRIDS, `FILE` = FILE, `RESOLUTION` = RESOLUTION,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:importusgssrtmgrid", `GRIDS` = GRIDS, `FILE` = FILE, `RESOLUTION` = RESOLUTION,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "GRIDS")
  }
}