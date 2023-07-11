##' QGIS Algorithm provided by SAGA Next Gen Laplacian filter (sagang:laplacianfilter). ---------------- Arguments ----------------  INPUT: Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer RESULT: Filtered Grid 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer METHOD: Method 	Default value:	3 	Argument type:	enum 	Available values: 		- 0: (0) standard kernel 1 		- 1: (1) standard kernel 2 		- 2: (2) Standard kernel 3 		- 3: (3) user defined kernel 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' SIGMA: Standard Deviation 	Default value:	50 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression KERNEL_TYPE: Kernel Type 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) Square 		- 1: (1) Circle 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' KERNEL_RADIUS: Radius 	Default value:	2 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Laplacian filter
##'
##' @param INPUT `raster` - Grid. Path to a raster layer.
##' @param RESULT `rasterDestination` - Filtered Grid. Path for new raster layer.
##' @param METHOD `enum`  of `("(0) standard kernel 1", "(1) standard kernel 2", "(2) Standard kernel 3", "(3) user defined kernel")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SIGMA `number` - Standard Deviation. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param KERNEL_TYPE `enum`  of `("(0) Square", "(1) Circle")` - Kernel Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param KERNEL_RADIUS `number` - Radius. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputRaster - Filtered Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_laplacianfilter <- function(INPUT = qgisprocess:::qgis_default_value(), RESULT = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), SIGMA = qgisprocess:::qgis_default_value(), KERNEL_TYPE = qgisprocess:::qgis_default_value(), KERNEL_RADIUS = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:laplacianfilter")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:laplacianfilter", `INPUT` = INPUT, `RESULT` = RESULT, `METHOD` = METHOD, `SIGMA` = SIGMA, `KERNEL_TYPE` = KERNEL_TYPE, `KERNEL_RADIUS` = KERNEL_RADIUS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:laplacianfilter", `INPUT` = INPUT, `RESULT` = RESULT, `METHOD` = METHOD, `SIGMA` = SIGMA, `KERNEL_TYPE` = KERNEL_TYPE, `KERNEL_RADIUS` = KERNEL_RADIUS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "RESULT")
  }
}