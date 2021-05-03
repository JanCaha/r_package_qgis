##' QGIS Algorithm provided by SAGA Multiple linear regression analysis (shapes) (saga:multiplelinearregressionanalysisshapes)
##'
##' @title QGIS algorithm Multiple linear regression analysis (shapes)
##'
##' @param TABLE `source` - Shapes. Path to a vector layer.
##' @param RESULTS `vectorDestination` - Results. Path for new vector layer.
##' @param DEPENDENT `source` - Dependent Variable. Path to a vector layer.
##' @param INFO_COEFF `source` - Details: Coefficients. Path to a vector layer.
##' @param INFO_MODEL `source` - Details: Model. Path to a vector layer.
##' @param INFO_STEPS `source` - Details: Steps. Path to a vector layer.
##' @param METHOD `enum`  of `("[0] include all", "[1] forward", "[2] backward", "[3] stepwise")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param P_VALUE `number` - Significance Level. A numeric value.
##' @param CROSSVAL `enum`  of `("[0] none", "[1] leave one out", "[2] 2-fold", "[3] k-fold")` - Cross Validation. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param CROSSVAL_K `number` - Cross Validation Subsamples. A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * RESULTS - outputVector - Results
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_multiplelinearregressionanalysisshapes <- function(TABLE = qgisprocess::qgis_default_value(), RESULTS = qgisprocess::qgis_default_value(), DEPENDENT = qgisprocess::qgis_default_value(), INFO_COEFF = qgisprocess::qgis_default_value(), INFO_MODEL = qgisprocess::qgis_default_value(), INFO_STEPS = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), P_VALUE = qgisprocess::qgis_default_value(), CROSSVAL = qgisprocess::qgis_default_value(), CROSSVAL_K = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:multiplelinearregressionanalysisshapes")
  output <- qgisprocess::qgis_run_algorithm("saga:multiplelinearregressionanalysisshapes",`TABLE` = TABLE, `RESULTS` = RESULTS, `DEPENDENT` = DEPENDENT, `INFO_COEFF` = INFO_COEFF, `INFO_MODEL` = INFO_MODEL, `INFO_STEPS` = INFO_STEPS, `METHOD` = METHOD, `P_VALUE` = P_VALUE, `CROSSVAL` = CROSSVAL, `CROSSVAL_K` = CROSSVAL_K,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "RESULTS")
  }
}