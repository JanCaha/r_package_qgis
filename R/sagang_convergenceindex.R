##' QGIS Algorithm provided by SAGA Next Gen Convergence index (sagang:convergenceindex). ---------------- Arguments ----------------  ELEVATION: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer RESULT: Convergence Index 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer METHOD: Method 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Aspect 		- 1: (1) Gradient 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' NEIGHBOURS: Gradient Calculation 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) 2 x 2 		- 1: (1) 3 x 3 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Convergence index
##'
##' @param ELEVATION `raster` - Elevation. Path to a raster layer.
##' @param RESULT `rasterDestination` - Convergence Index. Path for new raster layer.
##' @param METHOD `enum`  of `("(0) Aspect", "(1) Gradient")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param NEIGHBOURS `enum`  of `("(0) 2 x 2", "(1) 3 x 3")` - Gradient Calculation. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputRaster - Convergence Index
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_convergenceindex <- function(ELEVATION = qgisprocess:::qgis_default_value(), RESULT = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), NEIGHBOURS = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:convergenceindex")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:convergenceindex", `ELEVATION` = ELEVATION, `RESULT` = RESULT, `METHOD` = METHOD, `NEIGHBOURS` = NEIGHBOURS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:convergenceindex", `ELEVATION` = ELEVATION, `RESULT` = RESULT, `METHOD` = METHOD, `NEIGHBOURS` = NEIGHBOURS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "RESULT")
  }
}