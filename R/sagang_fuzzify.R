##' QGIS Algorithm provided by SAGA Next Gen Fuzzify (sagang:fuzzify). ---------------- Arguments ----------------  INPUT: Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer OUTPUT: Fuzzified Grid 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer INC_MIN: From 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression INC_MAX: To 	Default value:	0.3 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DEC_MIN: From 	Default value:	0.7 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DEC_MAX: To 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression METHOD: Method 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Increase 		- 1: (1) Decrease 		- 2: (2) Increase and Decrease 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' TRANSITION: Transition 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) linear 		- 1: (1) sigmoidal 		- 2: (2) j-shaped 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' INVERT: Invert 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression AUTOFIT: Adjust 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Fuzzify
##'
##' @param INPUT `raster` - Grid. Path to a raster layer.
##' @param OUTPUT `rasterDestination` - Fuzzified Grid. Path for new raster layer.
##' @param INC_MIN `number` - From. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param INC_MAX `number` - To. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DEC_MIN `number` - From. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DEC_MAX `number` - To. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param METHOD `enum`  of `("(0) Increase", "(1) Decrease", "(2) Increase and Decrease")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param TRANSITION `enum`  of `("(0) linear", "(1) sigmoidal", "(2) j-shaped")` - Transition. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param INVERT `boolean` - Invert. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param AUTOFIT `boolean` - Adjust. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Fuzzified Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_fuzzify <- function(INPUT = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), INC_MIN = qgisprocess:::qgis_default_value(), INC_MAX = qgisprocess:::qgis_default_value(), DEC_MIN = qgisprocess:::qgis_default_value(), DEC_MAX = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), TRANSITION = qgisprocess:::qgis_default_value(), INVERT = qgisprocess:::qgis_default_value(), AUTOFIT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:fuzzify")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:fuzzify", `INPUT` = INPUT, `OUTPUT` = OUTPUT, `INC_MIN` = INC_MIN, `INC_MAX` = INC_MAX, `DEC_MIN` = DEC_MIN, `DEC_MAX` = DEC_MAX, `METHOD` = METHOD, `TRANSITION` = TRANSITION, `INVERT` = INVERT, `AUTOFIT` = AUTOFIT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:fuzzify", `INPUT` = INPUT, `OUTPUT` = OUTPUT, `INC_MIN` = INC_MIN, `INC_MAX` = INC_MAX, `DEC_MIN` = DEC_MIN, `DEC_MAX` = DEC_MAX, `METHOD` = METHOD, `TRANSITION` = TRANSITION, `INVERT` = INVERT, `AUTOFIT` = AUTOFIT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}