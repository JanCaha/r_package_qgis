##' QGIS Algorithm provided by SAGA Next Gen Change a grid's no-data value (bulk processing) (sagang:changeagridsnodatavaluebulkprocessing). ---------------- Arguments ----------------  GRIDS: Grids 	Argument type:	multilayer COPY: Create Copies 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression OUTPUT: Changed Grids 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer TYPE: Type 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) single value 		- 1: (1) value range 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' VALUE: No-Data Value 	Default value:	-99999 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CHANGE: Change Values 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Change a grid's no-data value (bulk processing)
##'
##' @param GRIDS `multilayer` - Grids. .
##' @param COPY `boolean` - Create Copies. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `rasterDestination` - Changed Grids. Path for new raster layer.
##' @param TYPE `enum`  of `("(0) single value", "(1) value range")` - Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param VALUE `number` - No-Data Value. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CHANGE `boolean` - Change Values. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Changed Grids
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_changeagridsnodatavaluebulkprocessing <- function(GRIDS = qgisprocess:::qgis_default_value(), COPY = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), TYPE = qgisprocess:::qgis_default_value(), VALUE = qgisprocess:::qgis_default_value(), CHANGE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:changeagridsnodatavaluebulkprocessing")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:changeagridsnodatavaluebulkprocessing", `GRIDS` = GRIDS, `COPY` = COPY, `OUTPUT` = OUTPUT, `TYPE` = TYPE, `VALUE` = VALUE, `CHANGE` = CHANGE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:changeagridsnodatavaluebulkprocessing", `GRIDS` = GRIDS, `COPY` = COPY, `OUTPUT` = OUTPUT, `TYPE` = TYPE, `VALUE` = VALUE, `CHANGE` = CHANGE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}