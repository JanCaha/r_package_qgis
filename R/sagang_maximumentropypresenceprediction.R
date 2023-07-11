##' QGIS Algorithm provided by SAGA Next Gen Maximum entropy presence prediction (sagang:maximumentropypresenceprediction). ---------------- Arguments ----------------  PRESENCE: Presence Data 	Argument type:	source 	Acceptable values: 		- Path to a vector layer FEATURES_NUM: Numerical Features (optional) 	Argument type:	multilayer FEATURES_CAT: Categorical Features (optional) 	Argument type:	multilayer PREDICTION: Presence Prediction 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer PROBABILITY: Presence Probability 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer BACKGROUND: Background Sample Density (Percent) 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression METHOD: Method 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Yoshimasa Tsuruoka 		- 1: (1) Dekang Lin 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' YT_FILE_LOAD: Load from File... 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file YT_FILE_SAVE: Save to File... 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file YT_REGUL: Regularization 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) none 		- 1: (1) L1 		- 2: (2) L2 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' YT_REGUL_VAL: Regularization Factor 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression YT_NUMASREAL: Real-valued Numerical Features 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DL_ALPHA: Alpha 	Default value:	0.1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DL_THRESHOLD: Threshold 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DL_ITERATIONS: Maximum Iterations 	Default value:	100 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression NUM_CLASSES: Number of Numeric Value Classes 	Default value:	32 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Maximum entropy presence prediction
##'
##' @param PRESENCE `source` - Presence Data. Path to a vector layer.
##' @param FEATURES_NUM `multilayer` - Numerical Features. .
##' @param FEATURES_CAT `multilayer` - Categorical Features. .
##' @param PREDICTION `rasterDestination` - Presence Prediction. Path for new raster layer.
##' @param PROBABILITY `rasterDestination` - Presence Probability. Path for new raster layer.
##' @param BACKGROUND `number` - Background Sample Density (Percent). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
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
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * PREDICTION - outputRaster - Presence Prediction
##' * PROBABILITY - outputRaster - Presence Probability
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_maximumentropypresenceprediction <- function(PRESENCE = qgisprocess:::qgis_default_value(), FEATURES_NUM = qgisprocess:::qgis_default_value(), FEATURES_CAT = qgisprocess:::qgis_default_value(), PREDICTION = qgisprocess:::qgis_default_value(), PROBABILITY = qgisprocess:::qgis_default_value(), BACKGROUND = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), YT_FILE_LOAD = qgisprocess:::qgis_default_value(), YT_FILE_SAVE = qgisprocess:::qgis_default_value(), YT_REGUL = qgisprocess:::qgis_default_value(), YT_REGUL_VAL = qgisprocess:::qgis_default_value(), YT_NUMASREAL = qgisprocess:::qgis_default_value(), DL_ALPHA = qgisprocess:::qgis_default_value(), DL_THRESHOLD = qgisprocess:::qgis_default_value(), DL_ITERATIONS = qgisprocess:::qgis_default_value(), NUM_CLASSES = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:maximumentropypresenceprediction")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:maximumentropypresenceprediction", `PRESENCE` = PRESENCE, `FEATURES_NUM` = FEATURES_NUM, `FEATURES_CAT` = FEATURES_CAT, `PREDICTION` = PREDICTION, `PROBABILITY` = PROBABILITY, `BACKGROUND` = BACKGROUND, `METHOD` = METHOD, `YT_FILE_LOAD` = YT_FILE_LOAD, `YT_FILE_SAVE` = YT_FILE_SAVE, `YT_REGUL` = YT_REGUL, `YT_REGUL_VAL` = YT_REGUL_VAL, `YT_NUMASREAL` = YT_NUMASREAL, `DL_ALPHA` = DL_ALPHA, `DL_THRESHOLD` = DL_THRESHOLD, `DL_ITERATIONS` = DL_ITERATIONS, `NUM_CLASSES` = NUM_CLASSES,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:maximumentropypresenceprediction", `PRESENCE` = PRESENCE, `FEATURES_NUM` = FEATURES_NUM, `FEATURES_CAT` = FEATURES_CAT, `PREDICTION` = PREDICTION, `PROBABILITY` = PROBABILITY, `BACKGROUND` = BACKGROUND, `METHOD` = METHOD, `YT_FILE_LOAD` = YT_FILE_LOAD, `YT_FILE_SAVE` = YT_FILE_SAVE, `YT_REGUL` = YT_REGUL, `YT_REGUL_VAL` = YT_REGUL_VAL, `YT_NUMASREAL` = YT_NUMASREAL, `DL_ALPHA` = DL_ALPHA, `DL_THRESHOLD` = DL_THRESHOLD, `DL_ITERATIONS` = DL_ITERATIONS, `NUM_CLASSES` = NUM_CLASSES,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "PREDICTION")
  }
}