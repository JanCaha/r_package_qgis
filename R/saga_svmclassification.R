##' QGIS Algorithm provided by SAGA Svm classification (saga:svmclassification)
##'
##' @title QGIS algorithm Svm classification
##'
##' @param GRIDS `multilayer` - Grids. .
##' @param CLASSES `rasterDestination` - Classification. Path for new raster layer.
##' @param SCALING `enum`  of `("[0] none", "[1] normalize (0-1)", "[2] standardize")` - Scaling. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param MESSAGE `boolean` - Verbose Messages. 1 for true/yes. 0 for false/no.
##' @param MODEL_SRC `enum`  of `("[0] create from training areas", "[1] restore from file")` - Model Source. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param MODEL_LOAD `file` - Restore Model from File. Path to a file.
##' @param ROI `source` - Training Areas. Path to a vector layer.
##' @param ROI_ID `field` - Class Identifier. The name of an existing field. ; delimited list of existing field names.
##' @param MODEL_SAVE `file` - Store Model to File. Path to a file.
##' @param SVM_TYPE `enum`  of `("[0] C-SVC", "[1] nu-SVC", "[2] one-class SVM", "[3] epsilon-SVR", "[4] nu-SVR")` - SVM Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param KERNEL_TYPE `enum`  of `("[0] linear", "[1] polynomial", "[2] radial basis function", "[3] sigmoid")` - Kernel Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DEGREE `number` - Degree. A numeric value.
##' @param GAMMA `number` - Gamma. A numeric value.
##' @param COEF0 `number` - coef0. A numeric value.
##' @param COST `number` - C. A numeric value.
##' @param NU `number` - nu-SVR. A numeric value.
##' @param EPS_SVR `number` - SVR Epsilon. A numeric value.
##' @param CACHE_SIZE `number` - Cache Size. A numeric value.
##' @param EPS `number` - Epsilon. A numeric value.
##' @param SHRINKING `boolean` - Shrinking. 1 for true/yes. 0 for false/no.
##' @param PROBABILITY `boolean` - Probability Estimates. 1 for true/yes. 0 for false/no.
##' @param CROSSVAL `number` - Cross Validation. A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * CLASSES - outputRaster - Classification
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_svmclassification <- function(GRIDS = qgisprocess::qgis_default_value(), CLASSES = qgisprocess::qgis_default_value(), SCALING = qgisprocess::qgis_default_value(), MESSAGE = qgisprocess::qgis_default_value(), MODEL_SRC = qgisprocess::qgis_default_value(), MODEL_LOAD = qgisprocess::qgis_default_value(), ROI = qgisprocess::qgis_default_value(), ROI_ID = qgisprocess::qgis_default_value(), MODEL_SAVE = qgisprocess::qgis_default_value(), SVM_TYPE = qgisprocess::qgis_default_value(), KERNEL_TYPE = qgisprocess::qgis_default_value(), DEGREE = qgisprocess::qgis_default_value(), GAMMA = qgisprocess::qgis_default_value(), COEF0 = qgisprocess::qgis_default_value(), COST = qgisprocess::qgis_default_value(), NU = qgisprocess::qgis_default_value(), EPS_SVR = qgisprocess::qgis_default_value(), CACHE_SIZE = qgisprocess::qgis_default_value(), EPS = qgisprocess::qgis_default_value(), SHRINKING = qgisprocess::qgis_default_value(), PROBABILITY = qgisprocess::qgis_default_value(), CROSSVAL = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:svmclassification",`GRIDS` = GRIDS, `CLASSES` = CLASSES, `SCALING` = SCALING, `MESSAGE` = MESSAGE, `MODEL_SRC` = MODEL_SRC, `MODEL_LOAD` = MODEL_LOAD, `ROI` = ROI, `ROI_ID` = ROI_ID, `MODEL_SAVE` = MODEL_SAVE, `SVM_TYPE` = SVM_TYPE, `KERNEL_TYPE` = KERNEL_TYPE, `DEGREE` = DEGREE, `GAMMA` = GAMMA, `COEF0` = COEF0, `COST` = COST, `NU` = NU, `EPS_SVR` = EPS_SVR, `CACHE_SIZE` = CACHE_SIZE, `EPS` = EPS, `SHRINKING` = SHRINKING, `PROBABILITY` = PROBABILITY, `CROSSVAL` = CROSSVAL,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "CLASSES")
}
}