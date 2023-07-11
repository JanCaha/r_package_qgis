##' QGIS Algorithm provided by SAGA Next Gen Analytical hierarchy process (sagang:analyticalhierarchyprocess). ---------------- Arguments ----------------  GRIDS: Input Grids 	Argument type:	multilayer TABLE: Pairwise Comparisons Table  	Argument type:	source 	Acceptable values: 		- Path to a vector layer OUTPUT: Output Grid 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer
##'
##' @title QGIS algorithm - Analytical hierarchy process
##'
##' @param GRIDS `multilayer` - Input Grids. .
##' @param TABLE `source` - Pairwise Comparisons Table . Path to a vector layer.
##' @param OUTPUT `rasterDestination` - Output Grid. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Output Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_analyticalhierarchyprocess <- function(GRIDS = qgisprocess:::qgis_default_value(), TABLE = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:analyticalhierarchyprocess")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:analyticalhierarchyprocess", `GRIDS` = GRIDS, `TABLE` = TABLE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:analyticalhierarchyprocess", `GRIDS` = GRIDS, `TABLE` = TABLE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}