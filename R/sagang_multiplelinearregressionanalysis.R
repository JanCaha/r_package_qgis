##' QGIS Algorithm provided by SAGA Next Gen Multiple linear regression analysis (sagang:multiplelinearregressionanalysis). ---------------- Arguments ----------------  TABLE: Table 	Argument type:	source 	Acceptable values: 		- Path to a vector layer RESULTS: Results 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer DEPENDENT: Dependent Variable 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names INFO_COEFF: Details: Coefficients 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer INFO_MODEL: Details: Model 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer INFO_STEPS: Details: Steps 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer METHOD: Method 	Default value:	3 	Argument type:	enum 	Available values: 		- 0: (0) include all 		- 1: (1) forward 		- 2: (2) backward 		- 3: (3) stepwise 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' P_VALUE: Significance Level 	Default value:	5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CROSSVAL: Cross Validation 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) none 		- 1: (1) leave one out 		- 2: (2) 2-fold 		- 3: (3) k-fold 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' CROSSVAL_K: Cross Validation Subsamples 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Multiple linear regression analysis
##'
##' @param TABLE `source` - Table. Path to a vector layer.
##' @param RESULTS `vectorDestination` - Results. Path for new vector layer.
##' @param DEPENDENT `field` - Dependent Variable. The name of an existing field. ; delimited list of existing field names.
##' @param INFO_COEFF `vectorDestination` - Details: Coefficients. Path for new vector layer.
##' @param INFO_MODEL `vectorDestination` - Details: Model. Path for new vector layer.
##' @param INFO_STEPS `vectorDestination` - Details: Steps. Path for new vector layer.
##' @param METHOD `enum`  of `("(0) include all", "(1) forward", "(2) backward", "(3) stepwise")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param P_VALUE `number` - Significance Level. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CROSSVAL `enum`  of `("(0) none", "(1) leave one out", "(2) 2-fold", "(3) k-fold")` - Cross Validation. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param CROSSVAL_K `number` - Cross Validation Subsamples. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * INFO_COEFF - outputVector - Details: Coefficients
##' * INFO_MODEL - outputVector - Details: Model
##' * INFO_STEPS - outputVector - Details: Steps
##' * RESULTS - outputVector - Results
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_multiplelinearregressionanalysis <- function(TABLE = qgisprocess:::qgis_default_value(), RESULTS = qgisprocess:::qgis_default_value(), DEPENDENT = qgisprocess:::qgis_default_value(), INFO_COEFF = qgisprocess:::qgis_default_value(), INFO_MODEL = qgisprocess:::qgis_default_value(), INFO_STEPS = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), P_VALUE = qgisprocess:::qgis_default_value(), CROSSVAL = qgisprocess:::qgis_default_value(), CROSSVAL_K = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:multiplelinearregressionanalysis")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:multiplelinearregressionanalysis", `TABLE` = TABLE, `RESULTS` = RESULTS, `DEPENDENT` = DEPENDENT, `INFO_COEFF` = INFO_COEFF, `INFO_MODEL` = INFO_MODEL, `INFO_STEPS` = INFO_STEPS, `METHOD` = METHOD, `P_VALUE` = P_VALUE, `CROSSVAL` = CROSSVAL, `CROSSVAL_K` = CROSSVAL_K,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:multiplelinearregressionanalysis", `TABLE` = TABLE, `RESULTS` = RESULTS, `DEPENDENT` = DEPENDENT, `INFO_COEFF` = INFO_COEFF, `INFO_MODEL` = INFO_MODEL, `INFO_STEPS` = INFO_STEPS, `METHOD` = METHOD, `P_VALUE` = P_VALUE, `CROSSVAL` = CROSSVAL, `CROSSVAL_K` = CROSSVAL_K,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "INFO_COEFF")
  }
}