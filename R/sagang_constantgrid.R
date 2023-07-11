##' QGIS Algorithm provided by SAGA Next Gen Constant grid (sagang:constantgrid). ---------------- Arguments ----------------  NAME: Name 	Default value:	Constant Grid 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CONST: Constant Value 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TYPE: Data Type 	Default value:	7 	Argument type:	enum 	Available values: 		- 0: (0) bit 		- 1: (1) unsigned 1 byte integer 		- 2: (2) signed 1 byte integer 		- 3: (3) unsigned 2 byte integer 		- 4: (4) signed 2 byte integer 		- 5: (5) unsigned 8 byte integer 		- 6: (6) signed 8 byte integer 		- 7: (7) 4 byte floating point number 		- 8: (8) 8 byte floating point number 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' DEFINITION: Target Grid System 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) user defined 		- 1: (1) grid or grid system 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' USER_SIZE: Cellsize 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression USER_XMIN: West 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression USER_XMAX: East 	Default value:	100 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression USER_YMIN: South 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression USER_YMAX: North 	Default value:	100 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression USER_COLS: Columns 	Default value:	100 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression USER_ROWS: Rows 	Default value:	100 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression USER_FITS: Fit 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) nodes 		- 1: (1) cells 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' TEMPLATE: Target System (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer OUT_GRID: Target Grid 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer
##'
##' @title QGIS algorithm - Constant grid
##'
##' @param NAME `string` - Name. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CONST `number` - Constant Value. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TYPE `enum`  of `("(0) bit", "(1) unsigned 1 byte integer", "(2) signed 1 byte integer", "(3) unsigned 2 byte integer", "(4) signed 2 byte integer", "(5) unsigned 8 byte integer", "(6) signed 8 byte integer", "(7) 4 byte floating point number", "(8) 8 byte floating point number")` - Data Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DEFINITION `enum`  of `("(0) user defined", "(1) grid or grid system")` - Target Grid System. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param USER_SIZE `number` - Cellsize. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param USER_XMIN `number` - West. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param USER_XMAX `number` - East. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param USER_YMIN `number` - South. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param USER_YMAX `number` - North. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param USER_COLS `number` - Columns. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param USER_ROWS `number` - Rows. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param USER_FITS `enum`  of `("(0) nodes", "(1) cells")` - Fit. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param TEMPLATE `raster` - Target System. Path to a raster layer.
##' @param OUT_GRID `rasterDestination` - Target Grid. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUT_GRID - outputRaster - Target Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_constantgrid <- function(NAME = qgisprocess:::qgis_default_value(), CONST = qgisprocess:::qgis_default_value(), TYPE = qgisprocess:::qgis_default_value(), DEFINITION = qgisprocess:::qgis_default_value(), USER_SIZE = qgisprocess:::qgis_default_value(), USER_XMIN = qgisprocess:::qgis_default_value(), USER_XMAX = qgisprocess:::qgis_default_value(), USER_YMIN = qgisprocess:::qgis_default_value(), USER_YMAX = qgisprocess:::qgis_default_value(), USER_COLS = qgisprocess:::qgis_default_value(), USER_ROWS = qgisprocess:::qgis_default_value(), USER_FITS = qgisprocess:::qgis_default_value(), TEMPLATE = qgisprocess:::qgis_default_value(), OUT_GRID = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:constantgrid")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:constantgrid", `NAME` = NAME, `CONST` = CONST, `TYPE` = TYPE, `DEFINITION` = DEFINITION, `USER_SIZE` = USER_SIZE, `USER_XMIN` = USER_XMIN, `USER_XMAX` = USER_XMAX, `USER_YMIN` = USER_YMIN, `USER_YMAX` = USER_YMAX, `USER_COLS` = USER_COLS, `USER_ROWS` = USER_ROWS, `USER_FITS` = USER_FITS, `TEMPLATE` = TEMPLATE, `OUT_GRID` = OUT_GRID,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:constantgrid", `NAME` = NAME, `CONST` = CONST, `TYPE` = TYPE, `DEFINITION` = DEFINITION, `USER_SIZE` = USER_SIZE, `USER_XMIN` = USER_XMIN, `USER_XMAX` = USER_XMAX, `USER_YMIN` = USER_YMIN, `USER_YMAX` = USER_YMAX, `USER_COLS` = USER_COLS, `USER_ROWS` = USER_ROWS, `USER_FITS` = USER_FITS, `TEMPLATE` = TEMPLATE, `OUT_GRID` = OUT_GRID,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUT_GRID")
  }
}