##' QGIS Algorithm provided by SAGA Next Gen Sieve classes (sagang:sieveclasses). ---------------- Arguments ----------------  INPUT: Classes 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer OUTPUT: Sieved Classes 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer MODE: Neighbourhood 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Neumann 		- 1: (1) Moore 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' THRESHOLD: Minimum Threshold 	Default value:	4 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression ALL: Class Selection 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) single class 		- 1: (1) all classes 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' CLASS: Class Identifier 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Sieve classes
##'
##' @param INPUT `raster` - Classes. Path to a raster layer.
##' @param OUTPUT `rasterDestination` - Sieved Classes. Path for new raster layer.
##' @param MODE `enum`  of `("(0) Neumann", "(1) Moore")` - Neighbourhood. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param THRESHOLD `number` - Minimum Threshold. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ALL `enum`  of `("(0) single class", "(1) all classes")` - Class Selection. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param CLASS `number` - Class Identifier. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Sieved Classes
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_sieveclasses <- function(INPUT = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), MODE = qgisprocess:::qgis_default_value(), THRESHOLD = qgisprocess:::qgis_default_value(), ALL = qgisprocess:::qgis_default_value(), CLASS = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:sieveclasses")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:sieveclasses", `INPUT` = INPUT, `OUTPUT` = OUTPUT, `MODE` = MODE, `THRESHOLD` = THRESHOLD, `ALL` = ALL, `CLASS` = CLASS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:sieveclasses", `INPUT` = INPUT, `OUTPUT` = OUTPUT, `MODE` = MODE, `THRESHOLD` = THRESHOLD, `ALL` = ALL, `CLASS` = CLASS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}