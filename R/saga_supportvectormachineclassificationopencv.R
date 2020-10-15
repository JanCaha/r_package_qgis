##' QGIS Algorithm provided by SAGA Support vector machine classification (opencv) (saga:supportvectormachineclassificationopencv)
##'
##' @title QGIS algorithm Support vector machine classification (opencv)
##'
##' @param FEATURES `multilayer` - Features. .
##' @param NORMALIZE `boolean` - Normalize. 1 for true/yes. 0 for false/no.
##' @param TRAIN_AREAS `source` - Training Areas. Path to a vector layer.
##' @param TRAIN_CLASS `field` - Class Identifier. The name of an existing field. ; delimited list of existing field names.
##' @param CLASSES `rasterDestination` - Classification. Path for new raster layer.
##' @param SVM_TYPE `enum`  of `("[0] c-support vector classification", "[1] nu support vector classification", "[2] distribution estimation (one class)", "[3] epsilon support vector regression", "[4] nu support vector regression")` - SVM Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param C `number` - C. A numeric value.
##' @param NU `number` - Nu. A numeric value.
##' @param P `number` - P. A numeric value.
##' @param KERNEL `enum`  of `("[0] linear", "[1] polynomial", "[2] radial basis function", "[3] sigmoid", "[4] exponential chi2", "[5] histogram intersection")` - Kernel Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param COEF0 `number` - Coefficient 0. A numeric value.
##' @param DEGREE `number` - Degree. A numeric value.
##' @param GAMMA `number` - Gamma. A numeric value.
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

saga_supportvectormachineclassificationopencv <- function(FEATURES = qgisprocess::qgis_default_value(), NORMALIZE = qgisprocess::qgis_default_value(), TRAIN_AREAS = qgisprocess::qgis_default_value(), TRAIN_CLASS = qgisprocess::qgis_default_value(), CLASSES = qgisprocess::qgis_default_value(), SVM_TYPE = qgisprocess::qgis_default_value(), C = qgisprocess::qgis_default_value(), NU = qgisprocess::qgis_default_value(), P = qgisprocess::qgis_default_value(), KERNEL = qgisprocess::qgis_default_value(), COEF0 = qgisprocess::qgis_default_value(), DEGREE = qgisprocess::qgis_default_value(), GAMMA = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:supportvectormachineclassificationopencv",`FEATURES` = FEATURES, `NORMALIZE` = NORMALIZE, `TRAIN_AREAS` = TRAIN_AREAS, `TRAIN_CLASS` = TRAIN_CLASS, `CLASSES` = CLASSES, `SVM_TYPE` = SVM_TYPE, `C` = C, `NU` = NU, `P` = P, `KERNEL` = KERNEL, `COEF0` = COEF0, `DEGREE` = DEGREE, `GAMMA` = GAMMA,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "CLASSES")
}
}