##' QGIS Algorithm provided by SAGA Next Gen Grid calculator (sagang:gridcalculator). ---------------- Arguments ----------------  RESAMPLING: Resampling 	Default value:	3 	Argument type:	enum 	Available values: 		- 0: (0) Nearest Neighbour 		- 1: (1) Bilinear Interpolation 		- 2: (2) Bicubic Spline Interpolation 		- 3: (3) B-Spline Interpolation 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' FORMULA: Formula 	Default value:	(g1 - g2) / (g1 + g2) 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression NAME: Name 	Default value:	Calculation 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression FNAME: Take Formula 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression USE_NODATA: Use No-Data 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TYPE: Data Type 	Default value:	7 	Argument type:	enum 	Available values: 		- 0: (0) bit 		- 1: (1) unsigned 1 byte integer 		- 2: (2) signed 1 byte integer 		- 3: (3) unsigned 2 byte integer 		- 4: (4) signed 2 byte integer 		- 5: (5) unsigned 4 byte integer 		- 6: (6) signed 4 byte integer 		- 7: (7) 4 byte floating point number 		- 8: (8) 8 byte floating point number 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' GRIDS: Grids (optional) 	Argument type:	multilayer XGRIDS: Grids from different Systems (optional) 	Argument type:	multilayer RESULT: Result 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer
##'
##' @title QGIS algorithm - Grid calculator
##'
##' @param RESAMPLING `enum`  of `("(0) Nearest Neighbour", "(1) Bilinear Interpolation", "(2) Bicubic Spline Interpolation", "(3) B-Spline Interpolation")` - Resampling. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param FORMULA `string` - Formula. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param NAME `string` - Name. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param FNAME `boolean` - Take Formula. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param USE_NODATA `boolean` - Use No-Data. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TYPE `enum`  of `("(0) bit", "(1) unsigned 1 byte integer", "(2) signed 1 byte integer", "(3) unsigned 2 byte integer", "(4) signed 2 byte integer", "(5) unsigned 4 byte integer", "(6) signed 4 byte integer", "(7) 4 byte floating point number", "(8) 8 byte floating point number")` - Data Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param GRIDS `multilayer` - Grids. .
##' @param XGRIDS `multilayer` - Grids from different Systems. .
##' @param RESULT `rasterDestination` - Result. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputRaster - Result
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_gridcalculator <- function(RESAMPLING = qgisprocess:::qgis_default_value(), FORMULA = qgisprocess:::qgis_default_value(), NAME = qgisprocess:::qgis_default_value(), FNAME = qgisprocess:::qgis_default_value(), USE_NODATA = qgisprocess:::qgis_default_value(), TYPE = qgisprocess:::qgis_default_value(), GRIDS = qgisprocess:::qgis_default_value(), XGRIDS = qgisprocess:::qgis_default_value(), RESULT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:gridcalculator")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:gridcalculator", `RESAMPLING` = RESAMPLING, `FORMULA` = FORMULA, `NAME` = NAME, `FNAME` = FNAME, `USE_NODATA` = USE_NODATA, `TYPE` = TYPE, `GRIDS` = GRIDS, `XGRIDS` = XGRIDS, `RESULT` = RESULT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:gridcalculator", `RESAMPLING` = RESAMPLING, `FORMULA` = FORMULA, `NAME` = NAME, `FNAME` = FNAME, `USE_NODATA` = USE_NODATA, `TYPE` = TYPE, `GRIDS` = GRIDS, `XGRIDS` = XGRIDS, `RESULT` = RESULT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "RESULT")
  }
}