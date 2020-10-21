##' QGIS Algorithm provided by SAGA Maximum entropy presence prediction (saga:maximumentropypresenceprediction)
##'
##' @title QGIS algorithm Maximum entropy presence prediction
##'
##' @param PRESENCE `source` - Presence Data. Path to a vector layer.
##' @param FEATURES_NUM `multilayer` - Numerical Features. .
##' @param FEATURES_CAT `multilayer` - Categorical Features. .
##' @param PREDICTION `rasterDestination` - Presence Prediction. Path for new raster layer.
##' @param PROBABILITY `rasterDestination` - Presence Probability. Path for new raster layer.
##' @param BACKGROUND `number` - Background Sample Density (Percent). A numeric value.
##' @param METHOD `enum`  of `("[0] Yoshimasa Tsuruoka", "[1] Dekang Lin")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param YT_FILE_LOAD `file` - Load from File.... Path to a file.
##' @param YT_FILE_SAVE `file` - Save to File.... Path to a file.
##' @param YT_REGUL `enum`  of `("[0] none", "[1] L1", "[2] L2")` - Regularization. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param YT_REGUL_VAL `number` - Regularization Factor. A numeric value.
##' @param YT_NUMASREAL `boolean` - Real-valued Numerical Features. 1 for true/yes. 0 for false/no.
##' @param DL_ALPHA `number` - Alpha. A numeric value.
##' @param DL_THRESHOLD `number` - Threshold. A numeric value.
##' @param DL_ITERATIONS `number` - Maximum Iterations. A numeric value.
##' @param NUM_CLASSES `number` - Number of Numeric Value Classes. A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * PREDICTION - outputRaster - Presence Prediction
##' * PROBABILITY - outputRaster - Presence Probability
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_maximumentropypresenceprediction <- function(PRESENCE = qgisprocess::qgis_default_value(), FEATURES_NUM = qgisprocess::qgis_default_value(), FEATURES_CAT = qgisprocess::qgis_default_value(), PREDICTION = qgisprocess::qgis_default_value(), PROBABILITY = qgisprocess::qgis_default_value(), BACKGROUND = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), YT_FILE_LOAD = qgisprocess::qgis_default_value(), YT_FILE_SAVE = qgisprocess::qgis_default_value(), YT_REGUL = qgisprocess::qgis_default_value(), YT_REGUL_VAL = qgisprocess::qgis_default_value(), YT_NUMASREAL = qgisprocess::qgis_default_value(), DL_ALPHA = qgisprocess::qgis_default_value(), DL_THRESHOLD = qgisprocess::qgis_default_value(), DL_ITERATIONS = qgisprocess::qgis_default_value(), NUM_CLASSES = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:maximumentropypresenceprediction",`PRESENCE` = PRESENCE, `FEATURES_NUM` = FEATURES_NUM, `FEATURES_CAT` = FEATURES_CAT, `PREDICTION` = PREDICTION, `PROBABILITY` = PROBABILITY, `BACKGROUND` = BACKGROUND, `METHOD` = METHOD, `YT_FILE_LOAD` = YT_FILE_LOAD, `YT_FILE_SAVE` = YT_FILE_SAVE, `YT_REGUL` = YT_REGUL, `YT_REGUL_VAL` = YT_REGUL_VAL, `YT_NUMASREAL` = YT_NUMASREAL, `DL_ALPHA` = DL_ALPHA, `DL_THRESHOLD` = DL_THRESHOLD, `DL_ITERATIONS` = DL_ITERATIONS, `NUM_CLASSES` = NUM_CLASSES,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "PREDICTION")
  }
}