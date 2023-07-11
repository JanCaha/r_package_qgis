##' QGIS Algorithm provided by SAGA Next Gen Grid statistics for points (sagang:gridstatisticsforpoints). ---------------- Arguments ----------------  GRIDS: Grids 	Argument type:	multilayer POINTS: Points 	Argument type:	source 	Acceptable values: 		- Path to a vector layer KERNEL_TYPE: Kernel Type 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) square 		- 1: (1) circle 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' KERNEL_SIZE: Kernel Size 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression NAMING: Field Naming 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) grid number 		- 1: (1) grid name 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' RESULT: Statistics 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer COUNT: Number of Cells 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression MIN: Minimum 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression MAX: Maximum 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression RANGE: Range 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SUM: Sum 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression MEAN: Mean 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression VAR: Variance 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression STDDEV: Standard Deviation 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression QUANTILE: Percentile 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Grid statistics for points
##'
##' @param GRIDS `multilayer` - Grids. .
##' @param POINTS `source` - Points. Path to a vector layer.
##' @param KERNEL_TYPE `enum`  of `("(0) square", "(1) circle")` - Kernel Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param KERNEL_SIZE `number` - Kernel Size. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param NAMING `enum`  of `("(0) grid number", "(1) grid name")` - Field Naming. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param RESULT `vectorDestination` - Statistics. Path for new vector layer.
##' @param COUNT `boolean` - Number of Cells. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MIN `boolean` - Minimum. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MAX `boolean` - Maximum. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param RANGE `boolean` - Range. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SUM `boolean` - Sum. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MEAN `boolean` - Mean. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param VAR `boolean` - Variance. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param STDDEV `boolean` - Standard Deviation. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param QUANTILE `number` - Percentile. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
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

sagang_gridstatisticsforpoints <- function(GRIDS = qgisprocess:::qgis_default_value(), POINTS = qgisprocess:::qgis_default_value(), KERNEL_TYPE = qgisprocess:::qgis_default_value(), KERNEL_SIZE = qgisprocess:::qgis_default_value(), NAMING = qgisprocess:::qgis_default_value(), RESULT = qgisprocess:::qgis_default_value(), COUNT = qgisprocess:::qgis_default_value(), MIN = qgisprocess:::qgis_default_value(), MAX = qgisprocess:::qgis_default_value(), RANGE = qgisprocess:::qgis_default_value(), SUM = qgisprocess:::qgis_default_value(), MEAN = qgisprocess:::qgis_default_value(), VAR = qgisprocess:::qgis_default_value(), STDDEV = qgisprocess:::qgis_default_value(), QUANTILE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:gridstatisticsforpoints")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:gridstatisticsforpoints", `GRIDS` = GRIDS, `POINTS` = POINTS, `KERNEL_TYPE` = KERNEL_TYPE, `KERNEL_SIZE` = KERNEL_SIZE, `NAMING` = NAMING, `RESULT` = RESULT, `COUNT` = COUNT, `MIN` = MIN, `MAX` = MAX, `RANGE` = RANGE, `SUM` = SUM, `MEAN` = MEAN, `VAR` = VAR, `STDDEV` = STDDEV, `QUANTILE` = QUANTILE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:gridstatisticsforpoints", `GRIDS` = GRIDS, `POINTS` = POINTS, `KERNEL_TYPE` = KERNEL_TYPE, `KERNEL_SIZE` = KERNEL_SIZE, `NAMING` = NAMING, `RESULT` = RESULT, `COUNT` = COUNT, `MIN` = MIN, `MAX` = MAX, `RANGE` = RANGE, `SUM` = SUM, `MEAN` = MEAN, `VAR` = VAR, `STDDEV` = STDDEV, `QUANTILE` = QUANTILE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "RESULT")
  }
}