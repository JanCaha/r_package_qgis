##' QGIS Algorithm provided by SAGA Next Gen Sieve and clump (sagang:sieveandclump). ---------------- Arguments ----------------  CLASSES: Classes 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer FILTERED: Sieve and Clump 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer MODE: Filter 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Neumann 		- 1: (1) Moore 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' SIEVE: Sieving Threshold 	Default value:	2 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression EXPAND: Maximum Expansion Distance 	Default value:	4 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Sieve and clump
##'
##' @param CLASSES `raster` - Classes. Path to a raster layer.
##' @param FILTERED `rasterDestination` - Sieve and Clump. Path for new raster layer.
##' @param MODE `enum`  of `("(0) Neumann", "(1) Moore")` - Filter. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SIEVE `number` - Sieving Threshold. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param EXPAND `number` - Maximum Expansion Distance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * FILTERED - outputRaster - Sieve and Clump
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_sieveandclump <- function(CLASSES = qgisprocess:::qgis_default_value(), FILTERED = qgisprocess:::qgis_default_value(), MODE = qgisprocess:::qgis_default_value(), SIEVE = qgisprocess:::qgis_default_value(), EXPAND = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:sieveandclump")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:sieveandclump", `CLASSES` = CLASSES, `FILTERED` = FILTERED, `MODE` = MODE, `SIEVE` = SIEVE, `EXPAND` = EXPAND,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:sieveandclump", `CLASSES` = CLASSES, `FILTERED` = FILTERED, `MODE` = MODE, `SIEVE` = SIEVE, `EXPAND` = EXPAND,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "FILTERED")
  }
}