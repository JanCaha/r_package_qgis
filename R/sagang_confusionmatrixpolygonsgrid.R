##' QGIS Algorithm provided by SAGA Next Gen Confusion matrix (polygons / grid) (sagang:confusionmatrixpolygonsgrid). ---------------- Arguments ----------------  GRID: Classification 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer GRID_VALUES: Value Interpretation 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) values are class identifiers 		- 1: (1) use look-up table 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' GRID_LUT: Look-up Table (optional) 	Argument type:	source 	Acceptable values: 		- Path to a vector layer GRID_LUT_MIN: Value 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names GRID_LUT_MAX: Value (Maximum) 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names GRID_LUT_NAM: Name 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names POLYGONS: Polygons 	Argument type:	source 	Acceptable values: 		- Path to a vector layer FIELD: Classes 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names CONFUSION: Confusion Matrix 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer CLASSES: Class Values 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer SUMMARY: Summary 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer NO_CLASS: Unclassified 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Confusion matrix (polygons / grid)
##'
##' @param GRID `raster` - Classification. Path to a raster layer.
##' @param GRID_VALUES `enum`  of `("(0) values are class identifiers", "(1) use look-up table")` - Value Interpretation. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param GRID_LUT `source` - Look-up Table. Path to a vector layer.
##' @param GRID_LUT_MIN `field` - Value. The name of an existing field. ; delimited list of existing field names.
##' @param GRID_LUT_MAX `field` - Value (Maximum). The name of an existing field. ; delimited list of existing field names.
##' @param GRID_LUT_NAM `field` - Name. The name of an existing field. ; delimited list of existing field names.
##' @param POLYGONS `source` - Polygons. Path to a vector layer.
##' @param FIELD `field` - Classes. The name of an existing field. ; delimited list of existing field names.
##' @param CONFUSION `vectorDestination` - Confusion Matrix. Path for new vector layer.
##' @param CLASSES `vectorDestination` - Class Values. Path for new vector layer.
##' @param SUMMARY `vectorDestination` - Summary. Path for new vector layer.
##' @param NO_CLASS `boolean` - Unclassified. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * CLASSES - outputVector - Class Values
##' * CONFUSION - outputVector - Confusion Matrix
##' * SUMMARY - outputVector - Summary
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_confusionmatrixpolygonsgrid <- function(GRID = qgisprocess:::qgis_default_value(), GRID_VALUES = qgisprocess:::qgis_default_value(), GRID_LUT = qgisprocess:::qgis_default_value(), GRID_LUT_MIN = qgisprocess:::qgis_default_value(), GRID_LUT_MAX = qgisprocess:::qgis_default_value(), GRID_LUT_NAM = qgisprocess:::qgis_default_value(), POLYGONS = qgisprocess:::qgis_default_value(), FIELD = qgisprocess:::qgis_default_value(), CONFUSION = qgisprocess:::qgis_default_value(), CLASSES = qgisprocess:::qgis_default_value(), SUMMARY = qgisprocess:::qgis_default_value(), NO_CLASS = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:confusionmatrixpolygonsgrid")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:confusionmatrixpolygonsgrid", `GRID` = GRID, `GRID_VALUES` = GRID_VALUES, `GRID_LUT` = GRID_LUT, `GRID_LUT_MIN` = GRID_LUT_MIN, `GRID_LUT_MAX` = GRID_LUT_MAX, `GRID_LUT_NAM` = GRID_LUT_NAM, `POLYGONS` = POLYGONS, `FIELD` = FIELD, `CONFUSION` = CONFUSION, `CLASSES` = CLASSES, `SUMMARY` = SUMMARY, `NO_CLASS` = NO_CLASS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:confusionmatrixpolygonsgrid", `GRID` = GRID, `GRID_VALUES` = GRID_VALUES, `GRID_LUT` = GRID_LUT, `GRID_LUT_MIN` = GRID_LUT_MIN, `GRID_LUT_MAX` = GRID_LUT_MAX, `GRID_LUT_NAM` = GRID_LUT_NAM, `POLYGONS` = POLYGONS, `FIELD` = FIELD, `CONFUSION` = CONFUSION, `CLASSES` = CLASSES, `SUMMARY` = SUMMARY, `NO_CLASS` = NO_CLASS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CLASSES")
  }
}