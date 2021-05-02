##' QGIS Algorithm provided by SAGA Random forest presence prediction (vigra) (saga:randomforestpresencepredictionvigra)
##'
##' @title QGIS algorithm Random forest presence prediction (vigra)
##'
##' @param FEATURES `multilayer` - Features. .
##' @param PREDICTION `rasterDestination` - Presence Prediction. Path for new raster layer.
##' @param PROBABILITY `rasterDestination` - Presence Probability. Path for new raster layer.
##' @param PRESENCE `source` - Presence Data. Path to a vector layer.
##' @param BACKGROUND `number` - Background Sample Density (Percent). A numeric value.
##' @param DO_MRMR `boolean` - Minimum Redundancy Feature Selection. 1 for true/yes. 0 for false/no.
##' @param mRMR_NFEATURES `number` - Number of Features. A numeric value.
##' @param mRMR_DISCRETIZE `boolean` - Discretization. 1 for true/yes. 0 for false/no.
##' @param mRMR_THRESHOLD `number` - Discretization Threshold. A numeric value.
##' @param mRMR_METHOD `enum`  of `("[0] Mutual Information Difference (MID)", "[1] Mutual Information Quotient (MIQ)")` - Selection Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param RF_IMPORT `file` - Import from File. Path to a file.
##' @param RF_EXPORT `file` - Export to File. Path to a file.
##' @param RF_TREE_COUNT `number` - Tree Count. A numeric value.
##' @param RF_TREE_SAMPLES `number` - Samples per Tree. A numeric value.
##' @param RF_REPLACE `boolean` - Sample with Replacement. 1 for true/yes. 0 for false/no.
##' @param RF_SPLIT_MIN_SIZE `number` - Minimum Node Split Size. A numeric value.
##' @param RF_NODE_FEATURES `enum`  of `("[0] logarithmic", "[1] square root", "[2] all")` - Features per Node. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param RF_STRATIFICATION `enum`  of `("[0] none", "[1] equal", "[2] proportional")` - Stratification. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
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

saga_randomforestpresencepredictionvigra <- function(FEATURES = qgisprocess::qgis_default_value(), PREDICTION = qgisprocess::qgis_default_value(), PROBABILITY = qgisprocess::qgis_default_value(), PRESENCE = qgisprocess::qgis_default_value(), BACKGROUND = qgisprocess::qgis_default_value(), DO_MRMR = qgisprocess::qgis_default_value(), mRMR_NFEATURES = qgisprocess::qgis_default_value(), mRMR_DISCRETIZE = qgisprocess::qgis_default_value(), mRMR_THRESHOLD = qgisprocess::qgis_default_value(), mRMR_METHOD = qgisprocess::qgis_default_value(), RF_IMPORT = qgisprocess::qgis_default_value(), RF_EXPORT = qgisprocess::qgis_default_value(), RF_TREE_COUNT = qgisprocess::qgis_default_value(), RF_TREE_SAMPLES = qgisprocess::qgis_default_value(), RF_REPLACE = qgisprocess::qgis_default_value(), RF_SPLIT_MIN_SIZE = qgisprocess::qgis_default_value(), RF_NODE_FEATURES = qgisprocess::qgis_default_value(), RF_STRATIFICATION = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:randomforestpresencepredictionvigra")
  output <- qgisprocess::qgis_run_algorithm("saga:randomforestpresencepredictionvigra",`FEATURES` = FEATURES, `PREDICTION` = PREDICTION, `PROBABILITY` = PROBABILITY, `PRESENCE` = PRESENCE, `BACKGROUND` = BACKGROUND, `DO_MRMR` = DO_MRMR, `mRMR_NFEATURES` = mRMR_NFEATURES, `mRMR_DISCRETIZE` = mRMR_DISCRETIZE, `mRMR_THRESHOLD` = mRMR_THRESHOLD, `mRMR_METHOD` = mRMR_METHOD, `RF_IMPORT` = RF_IMPORT, `RF_EXPORT` = RF_EXPORT, `RF_TREE_COUNT` = RF_TREE_COUNT, `RF_TREE_SAMPLES` = RF_TREE_SAMPLES, `RF_REPLACE` = RF_REPLACE, `RF_SPLIT_MIN_SIZE` = RF_SPLIT_MIN_SIZE, `RF_NODE_FEATURES` = RF_NODE_FEATURES, `RF_STRATIFICATION` = RF_STRATIFICATION,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "PREDICTION")
  }
}