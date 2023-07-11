##' QGIS Algorithm provided by SAGA Next Gen Raster statistics for polygons (sagang:rasterstatisticsforpolygons). ---------------- Arguments ----------------  GRIDS: Grids 	Argument type:	multilayer POLYGONS: Polygons 	Argument type:	source 	Acceptable values: 		- Path to a vector layer NAMING: Field Naming 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) grid number 		- 1: (1) grid name 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' METHOD: Method 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) simple and fast 		- 1: (1) polygon wise (cell centers) 		- 2: (2) polygon wise (cell area) 		- 3: (3) polygon wise (cell area weighted) 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' PARALLELIZED: Use Multiple Cores 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression RESULT: Statistics 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer COUNT: Number of Cells 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression MIN: Minimum 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression MAX: Maximum 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression RANGE: Range 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SUM: Sum 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression MEAN: Mean 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression VAR: Variance 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression STDDEV: Standard Deviation 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression GINI: Gini 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression QUANTILES: Percentiles 	Default value:	 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Raster statistics for polygons
##'
##' @param GRIDS `multilayer` - Grids. .
##' @param POLYGONS `source` - Polygons. Path to a vector layer.
##' @param NAMING `enum`  of `("(0) grid number", "(1) grid name")` - Field Naming. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param METHOD `enum`  of `("(0) simple and fast", "(1) polygon wise (cell centers)", "(2) polygon wise (cell area)", "(3) polygon wise (cell area weighted)")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param PARALLELIZED `boolean` - Use Multiple Cores. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param RESULT `vectorDestination` - Statistics. Path for new vector layer.
##' @param COUNT `boolean` - Number of Cells. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MIN `boolean` - Minimum. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MAX `boolean` - Maximum. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param RANGE `boolean` - Range. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SUM `boolean` - Sum. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MEAN `boolean` - Mean. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param VAR `boolean` - Variance. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param STDDEV `boolean` - Standard Deviation. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GINI `boolean` - Gini. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param QUANTILES `string` - Percentiles. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputVector - Statistics
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_rasterstatisticsforpolygons <- function(GRIDS = qgisprocess:::qgis_default_value(), POLYGONS = qgisprocess:::qgis_default_value(), NAMING = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), PARALLELIZED = qgisprocess:::qgis_default_value(), RESULT = qgisprocess:::qgis_default_value(), COUNT = qgisprocess:::qgis_default_value(), MIN = qgisprocess:::qgis_default_value(), MAX = qgisprocess:::qgis_default_value(), RANGE = qgisprocess:::qgis_default_value(), SUM = qgisprocess:::qgis_default_value(), MEAN = qgisprocess:::qgis_default_value(), VAR = qgisprocess:::qgis_default_value(), STDDEV = qgisprocess:::qgis_default_value(), GINI = qgisprocess:::qgis_default_value(), QUANTILES = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:rasterstatisticsforpolygons")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:rasterstatisticsforpolygons", `GRIDS` = GRIDS, `POLYGONS` = POLYGONS, `NAMING` = NAMING, `METHOD` = METHOD, `PARALLELIZED` = PARALLELIZED, `RESULT` = RESULT, `COUNT` = COUNT, `MIN` = MIN, `MAX` = MAX, `RANGE` = RANGE, `SUM` = SUM, `MEAN` = MEAN, `VAR` = VAR, `STDDEV` = STDDEV, `GINI` = GINI, `QUANTILES` = QUANTILES,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:rasterstatisticsforpolygons", `GRIDS` = GRIDS, `POLYGONS` = POLYGONS, `NAMING` = NAMING, `METHOD` = METHOD, `PARALLELIZED` = PARALLELIZED, `RESULT` = RESULT, `COUNT` = COUNT, `MIN` = MIN, `MAX` = MAX, `RANGE` = RANGE, `SUM` = SUM, `MEAN` = MEAN, `VAR` = VAR, `STDDEV` = STDDEV, `GINI` = GINI, `QUANTILES` = QUANTILES,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "RESULT")
  }
}