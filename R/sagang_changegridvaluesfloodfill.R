##' QGIS Algorithm provided by SAGA Next Gen Change grid values - flood fill (sagang:changegridvaluesfloodfill). ---------------- Arguments ----------------  POINTS: Points 	Argument type:	source 	Acceptable values: 		- Path to a vector layer GRID: Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer GRID_OUT: Changed Grid 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer REPLACE: Value to be replaced 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) value at mouse position 		- 1: (1) fixed value 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' REPLACE_VALUE: Fixed value to be replaced 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TOLERANCE: Tolerance 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression IGNORE_NODATA: Ignore No-Data 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression FILL_NODATA: Fill with No-Data 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression FILL_VALUE: Fill Value 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Change grid values - flood fill
##'
##' @param POINTS `source` - Points. Path to a vector layer.
##' @param GRID `raster` - Grid. Path to a raster layer.
##' @param GRID_OUT `rasterDestination` - Changed Grid. Path for new raster layer.
##' @param REPLACE `enum`  of `("(0) value at mouse position", "(1) fixed value")` - Value to be replaced. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param REPLACE_VALUE `number` - Fixed value to be replaced. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TOLERANCE `number` - Tolerance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param IGNORE_NODATA `boolean` - Ignore No-Data. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param FILL_NODATA `boolean` - Fill with No-Data. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param FILL_VALUE `number` - Fill Value. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * GRID_OUT - outputRaster - Changed Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_changegridvaluesfloodfill <- function(POINTS = qgisprocess:::qgis_default_value(), GRID = qgisprocess:::qgis_default_value(), GRID_OUT = qgisprocess:::qgis_default_value(), REPLACE = qgisprocess:::qgis_default_value(), REPLACE_VALUE = qgisprocess:::qgis_default_value(), TOLERANCE = qgisprocess:::qgis_default_value(), IGNORE_NODATA = qgisprocess:::qgis_default_value(), FILL_NODATA = qgisprocess:::qgis_default_value(), FILL_VALUE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:changegridvaluesfloodfill")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:changegridvaluesfloodfill", `POINTS` = POINTS, `GRID` = GRID, `GRID_OUT` = GRID_OUT, `REPLACE` = REPLACE, `REPLACE_VALUE` = REPLACE_VALUE, `TOLERANCE` = TOLERANCE, `IGNORE_NODATA` = IGNORE_NODATA, `FILL_NODATA` = FILL_NODATA, `FILL_VALUE` = FILL_VALUE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:changegridvaluesfloodfill", `POINTS` = POINTS, `GRID` = GRID, `GRID_OUT` = GRID_OUT, `REPLACE` = REPLACE, `REPLACE_VALUE` = REPLACE_VALUE, `TOLERANCE` = TOLERANCE, `IGNORE_NODATA` = IGNORE_NODATA, `FILL_NODATA` = FILL_NODATA, `FILL_VALUE` = FILL_VALUE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "GRID_OUT")
  }
}