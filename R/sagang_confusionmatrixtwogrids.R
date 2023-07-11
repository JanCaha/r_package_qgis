##' QGIS Algorithm provided by SAGA Next Gen Confusion matrix (two grids) (sagang:confusionmatrixtwogrids). ---------------- Arguments ----------------  ONE: Classification 1 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer ONE_LUT: Look-up Table (optional) 	Argument type:	source 	Acceptable values: 		- Path to a vector layer ONE_LUT_MIN: Value 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names ONE_LUT_MAX: Value (Maximum) 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names ONE_LUT_NAM: Name 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names TWO: Classification 2 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer TWO_LUT: Look-up Table (optional) 	Argument type:	source 	Acceptable values: 		- Path to a vector layer TWO_LUT_MIN: Value 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names TWO_LUT_MAX: Value (Maximum) 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names TWO_LUT_NAM: Name 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names COMBINED: Combined Classes 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer NOCHANGE: Report Unchanged Classes 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression NODATA: Include Unclassified Cells 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CONFUSION: Confusion Matrix 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer OUTPUT: Output as... 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) cells 		- 1: (1) percent 		- 2: (2) area 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' CLASSES: Class Values 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer SUMMARY: Summary 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer
##'
##' @title QGIS algorithm - Confusion matrix (two grids)
##'
##' @param ONE `raster` - Classification 1. Path to a raster layer.
##' @param ONE_LUT `source` - Look-up Table. Path to a vector layer.
##' @param ONE_LUT_MIN `field` - Value. The name of an existing field. ; delimited list of existing field names.
##' @param ONE_LUT_MAX `field` - Value (Maximum). The name of an existing field. ; delimited list of existing field names.
##' @param ONE_LUT_NAM `field` - Name. The name of an existing field. ; delimited list of existing field names.
##' @param TWO `raster` - Classification 2. Path to a raster layer.
##' @param TWO_LUT `source` - Look-up Table. Path to a vector layer.
##' @param TWO_LUT_MIN `field` - Value. The name of an existing field. ; delimited list of existing field names.
##' @param TWO_LUT_MAX `field` - Value (Maximum). The name of an existing field. ; delimited list of existing field names.
##' @param TWO_LUT_NAM `field` - Name. The name of an existing field. ; delimited list of existing field names.
##' @param COMBINED `rasterDestination` - Combined Classes. Path for new raster layer.
##' @param NOCHANGE `boolean` - Report Unchanged Classes. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param NODATA `boolean` - Include Unclassified Cells. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CONFUSION `vectorDestination` - Confusion Matrix. Path for new vector layer.
##' @param OUTPUT `enum`  of `("(0) cells", "(1) percent", "(2) area")` - Output as.... Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param CLASSES `vectorDestination` - Class Values. Path for new vector layer.
##' @param SUMMARY `vectorDestination` - Summary. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * CLASSES - outputVector - Class Values
##' * COMBINED - outputRaster - Combined Classes
##' * CONFUSION - outputVector - Confusion Matrix
##' * SUMMARY - outputVector - Summary
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_confusionmatrixtwogrids <- function(ONE = qgisprocess:::qgis_default_value(), ONE_LUT = qgisprocess:::qgis_default_value(), ONE_LUT_MIN = qgisprocess:::qgis_default_value(), ONE_LUT_MAX = qgisprocess:::qgis_default_value(), ONE_LUT_NAM = qgisprocess:::qgis_default_value(), TWO = qgisprocess:::qgis_default_value(), TWO_LUT = qgisprocess:::qgis_default_value(), TWO_LUT_MIN = qgisprocess:::qgis_default_value(), TWO_LUT_MAX = qgisprocess:::qgis_default_value(), TWO_LUT_NAM = qgisprocess:::qgis_default_value(), COMBINED = qgisprocess:::qgis_default_value(), NOCHANGE = qgisprocess:::qgis_default_value(), NODATA = qgisprocess:::qgis_default_value(), CONFUSION = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), CLASSES = qgisprocess:::qgis_default_value(), SUMMARY = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:confusionmatrixtwogrids")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:confusionmatrixtwogrids", `ONE` = ONE, `ONE_LUT` = ONE_LUT, `ONE_LUT_MIN` = ONE_LUT_MIN, `ONE_LUT_MAX` = ONE_LUT_MAX, `ONE_LUT_NAM` = ONE_LUT_NAM, `TWO` = TWO, `TWO_LUT` = TWO_LUT, `TWO_LUT_MIN` = TWO_LUT_MIN, `TWO_LUT_MAX` = TWO_LUT_MAX, `TWO_LUT_NAM` = TWO_LUT_NAM, `COMBINED` = COMBINED, `NOCHANGE` = NOCHANGE, `NODATA` = NODATA, `CONFUSION` = CONFUSION, `OUTPUT` = OUTPUT, `CLASSES` = CLASSES, `SUMMARY` = SUMMARY,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:confusionmatrixtwogrids", `ONE` = ONE, `ONE_LUT` = ONE_LUT, `ONE_LUT_MIN` = ONE_LUT_MIN, `ONE_LUT_MAX` = ONE_LUT_MAX, `ONE_LUT_NAM` = ONE_LUT_NAM, `TWO` = TWO, `TWO_LUT` = TWO_LUT, `TWO_LUT_MIN` = TWO_LUT_MIN, `TWO_LUT_MAX` = TWO_LUT_MAX, `TWO_LUT_NAM` = TWO_LUT_NAM, `COMBINED` = COMBINED, `NOCHANGE` = NOCHANGE, `NODATA` = NODATA, `CONFUSION` = CONFUSION, `OUTPUT` = OUTPUT, `CLASSES` = CLASSES, `SUMMARY` = SUMMARY,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CLASSES")
  }
}