##' QGIS Algorithm provided by SAGA Next Gen Maximum entropy classifcation (sagang:maximumentropyclassifcation). ---------------- Arguments ----------------  TRAINING: Training Areas 	Argument type:	source 	Acceptable values: 		- Path to a vector layer FIELD: Class Name 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names FEATURES_NUM: Numerical Features (optional) 	Argument type:	multilayer FEATURES_CAT: Categorical Features (optional) 	Argument type:	multilayer CLASSES: Classes 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer CLASSES_LUT: Look-up Table 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer PROB: Probability 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer PROBS: Probabilities 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer PROBS_CREATE: Create Propabilities 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression METHOD: Method 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Yoshimasa Tsuruoka 		- 1: (1) Dekang Lin 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' YT_FILE_LOAD: Load from File... 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file YT_FILE_SAVE: Save to File... 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file YT_REGUL: Regularization 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) none 		- 1: (1) L1 		- 2: (2) L2 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' YT_REGUL_VAL: Regularization Factor 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression YT_NUMASREAL: Real-valued Numerical Features 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DL_ALPHA: Alpha 	Default value:	0.1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DL_THRESHOLD: Threshold 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DL_ITERATIONS: Maximum Iterations 	Default value:	100 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression NUM_CLASSES: Number of Numeric Value Classes 	Default value:	32 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression PROB_MIN: Minimum Probability 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Maximum entropy classifcation
##'
##' @param TRAINING `source` - Training Areas. Path to a vector layer.
##' @param FIELD `field` - Class Name. The name of an existing field. ; delimited list of existing field names.
##' @param FEATURES_NUM `multilayer` - Numerical Features. .
##' @param FEATURES_CAT `multilayer` - Categorical Features. .
##' @param CLASSES `rasterDestination` - Classes. Path for new raster layer.
##' @param CLASSES_LUT `vectorDestination` - Look-up Table. Path for new vector layer.
##' @param PROB `rasterDestination` - Probability. Path for new raster layer.
##' @param PROBS `rasterDestination` - Probabilities. Path for new raster layer.
##' @param PROBS_CREATE `boolean` - Create Propabilities. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param METHOD `enum`  of `("(0) Yoshimasa Tsuruoka", "(1) Dekang Lin")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param YT_FILE_LOAD `file` - Load from File.... Path to a file.
##' @param YT_FILE_SAVE `file` - Save to File.... Path to a file.
##' @param YT_REGUL `enum`  of `("(0) none", "(1) L1", "(2) L2")` - Regularization. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param YT_REGUL_VAL `number` - Regularization Factor. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param YT_NUMASREAL `boolean` - Real-valued Numerical Features. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DL_ALPHA `number` - Alpha. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DL_THRESHOLD `number` - Threshold. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DL_ITERATIONS `number` - Maximum Iterations. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param NUM_CLASSES `number` - Number of Numeric Value Classes. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param PROB_MIN `number` - Minimum Probability. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * CLASSES - outputRaster - Classes
##' * CLASSES_LUT - outputVector - Look-up Table
##' * PROB - outputRaster - Probability
##' * PROBS - outputRaster - Probabilities
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_maximumentropyclassifcation <- function(TRAINING = qgisprocess:::qgis_default_value(), FIELD = qgisprocess:::qgis_default_value(), FEATURES_NUM = qgisprocess:::qgis_default_value(), FEATURES_CAT = qgisprocess:::qgis_default_value(), CLASSES = qgisprocess:::qgis_default_value(), CLASSES_LUT = qgisprocess:::qgis_default_value(), PROB = qgisprocess:::qgis_default_value(), PROBS = qgisprocess:::qgis_default_value(), PROBS_CREATE = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), YT_FILE_LOAD = qgisprocess:::qgis_default_value(), YT_FILE_SAVE = qgisprocess:::qgis_default_value(), YT_REGUL = qgisprocess:::qgis_default_value(), YT_REGUL_VAL = qgisprocess:::qgis_default_value(), YT_NUMASREAL = qgisprocess:::qgis_default_value(), DL_ALPHA = qgisprocess:::qgis_default_value(), DL_THRESHOLD = qgisprocess:::qgis_default_value(), DL_ITERATIONS = qgisprocess:::qgis_default_value(), NUM_CLASSES = qgisprocess:::qgis_default_value(), PROB_MIN = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:maximumentropyclassifcation")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:maximumentropyclassifcation", `TRAINING` = TRAINING, `FIELD` = FIELD, `FEATURES_NUM` = FEATURES_NUM, `FEATURES_CAT` = FEATURES_CAT, `CLASSES` = CLASSES, `CLASSES_LUT` = CLASSES_LUT, `PROB` = PROB, `PROBS` = PROBS, `PROBS_CREATE` = PROBS_CREATE, `METHOD` = METHOD, `YT_FILE_LOAD` = YT_FILE_LOAD, `YT_FILE_SAVE` = YT_FILE_SAVE, `YT_REGUL` = YT_REGUL, `YT_REGUL_VAL` = YT_REGUL_VAL, `YT_NUMASREAL` = YT_NUMASREAL, `DL_ALPHA` = DL_ALPHA, `DL_THRESHOLD` = DL_THRESHOLD, `DL_ITERATIONS` = DL_ITERATIONS, `NUM_CLASSES` = NUM_CLASSES, `PROB_MIN` = PROB_MIN,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:maximumentropyclassifcation", `TRAINING` = TRAINING, `FIELD` = FIELD, `FEATURES_NUM` = FEATURES_NUM, `FEATURES_CAT` = FEATURES_CAT, `CLASSES` = CLASSES, `CLASSES_LUT` = CLASSES_LUT, `PROB` = PROB, `PROBS` = PROBS, `PROBS_CREATE` = PROBS_CREATE, `METHOD` = METHOD, `YT_FILE_LOAD` = YT_FILE_LOAD, `YT_FILE_SAVE` = YT_FILE_SAVE, `YT_REGUL` = YT_REGUL, `YT_REGUL_VAL` = YT_REGUL_VAL, `YT_NUMASREAL` = YT_NUMASREAL, `DL_ALPHA` = DL_ALPHA, `DL_THRESHOLD` = DL_THRESHOLD, `DL_ITERATIONS` = DL_ITERATIONS, `NUM_CLASSES` = NUM_CLASSES, `PROB_MIN` = PROB_MIN,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CLASSES")
  }
}