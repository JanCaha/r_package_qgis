##' QGIS Algorithm provided by SAGA Next Gen Simple filter for multiple grids (sagang:simplefilterformultiplegrids). ---------------- Arguments ----------------  GRIDS: Grids 	Argument type:	multilayer FILTERED: Filtered Grids 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer METHOD: Filter 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Smooth 		- 1: (1) Sharpen 		- 2: (2) Edge 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' KERNEL_TYPE: Kernel Type 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) Square 		- 1: (1) Circle 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' KERNEL_RADIUS: Kernel Radius 	Default value:	2 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Simple filter for multiple grids
##'
##' @param GRIDS `multilayer` - Grids. .
##' @param FILTERED `rasterDestination` - Filtered Grids. Path for new raster layer.
##' @param METHOD `enum`  of `("(0) Smooth", "(1) Sharpen", "(2) Edge")` - Filter. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param KERNEL_TYPE `enum`  of `("(0) Square", "(1) Circle")` - Kernel Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param KERNEL_RADIUS `number` - Kernel Radius. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * FILTERED - outputRaster - Filtered Grids
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_simplefilterformultiplegrids <- function(GRIDS = qgisprocess:::qgis_default_value(), FILTERED = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), KERNEL_TYPE = qgisprocess:::qgis_default_value(), KERNEL_RADIUS = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:simplefilterformultiplegrids")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:simplefilterformultiplegrids", `GRIDS` = GRIDS, `FILTERED` = FILTERED, `METHOD` = METHOD, `KERNEL_TYPE` = KERNEL_TYPE, `KERNEL_RADIUS` = KERNEL_RADIUS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:simplefilterformultiplegrids", `GRIDS` = GRIDS, `FILTERED` = FILTERED, `METHOD` = METHOD, `KERNEL_TYPE` = KERNEL_TYPE, `KERNEL_RADIUS` = KERNEL_RADIUS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "FILTERED")
  }
}