##' QGIS Algorithm provided by SAGA Next Gen Trend analysis (sagang:trendanalysis). ---------------- Arguments ----------------  TABLE: Table 	Argument type:	source 	Acceptable values: 		- Path to a vector layer FIELD_X: X Values 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names FIELD_Y: Y Values 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names FORMULA: Formula 	Default value:	m * x + b 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression FORMULAS: Pre-defined Formulas 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) a + b * x (linear) 		- 1: (1) a + b * x + c * x^2 (quadric) 		- 2: (2) a + b * x + c * x^2 + d * x^3 (cubic) 		- 3: (3) a + b * ln(x) (logarithmic) 		- 4: (4) a + b * x^c (power) 		- 5: (5) a + b / x 		- 6: (6) a + b * (1 - exp(-x / c)) 		- 7: (7) a + b * (1 - exp(-(x / c)^2)) 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' TREND: Table (with Trend) 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer
##'
##' @title QGIS algorithm - Trend analysis
##'
##' @param TABLE `source` - Table. Path to a vector layer.
##' @param FIELD_X `field` - X Values. The name of an existing field. ; delimited list of existing field names.
##' @param FIELD_Y `field` - Y Values. The name of an existing field. ; delimited list of existing field names.
##' @param FORMULA `string` - Formula. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param FORMULAS `enum`  of `("(0) a + b * x (linear)", "(1) a + b * x + c * x^2 (quadric)", "(2) a + b * x + c * x^2 + d * x^3 (cubic)", "(3) a + b * ln(x) (logarithmic)", "(4) a + b * x^c (power)", "(5) a + b / x", "(6) a + b * (1 - exp(-x / c))", "(7) a + b * (1 - exp(-(x / c)^2))")` - Pre-defined Formulas. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param TREND `vectorDestination` - Table (with Trend). Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * TREND - outputVector - Table (with Trend)
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_trendanalysis <- function(TABLE = qgisprocess:::qgis_default_value(), FIELD_X = qgisprocess:::qgis_default_value(), FIELD_Y = qgisprocess:::qgis_default_value(), FORMULA = qgisprocess:::qgis_default_value(), FORMULAS = qgisprocess:::qgis_default_value(), TREND = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:trendanalysis")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:trendanalysis", `TABLE` = TABLE, `FIELD_X` = FIELD_X, `FIELD_Y` = FIELD_Y, `FORMULA` = FORMULA, `FORMULAS` = FORMULAS, `TREND` = TREND,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:trendanalysis", `TABLE` = TABLE, `FIELD_X` = FIELD_X, `FIELD_Y` = FIELD_Y, `FORMULA` = FORMULA, `FORMULAS` = FORMULAS, `TREND` = TREND,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "TREND")
  }
}