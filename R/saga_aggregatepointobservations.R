##' QGIS Algorithm provided by SAGA Aggregate point observations (saga:aggregatepointobservations)
##'
##' @title QGIS algorithm Aggregate point observations
##'
##' @param REFERENCE `source` - Reference Points. Path to a vector layer.
##' @param REFERENCE_ID `field` - ID. The name of an existing field. ; delimited list of existing field names.
##' @param OBSERVATIONS `source` - Observations. Path to a vector layer.
##' @param X `field` - X. The name of an existing field. ; delimited list of existing field names.
##' @param Y `field` - Y. The name of an existing field. ; delimited list of existing field names.
##' @param TRACK `field` - Track. The name of an existing field. ; delimited list of existing field names.
##' @param DATE `field` - Date. The name of an existing field. ; delimited list of existing field names.
##' @param TIME `field` - Time. The name of an existing field. ; delimited list of existing field names.
##' @param PARAMETER `field` - Parameter. The name of an existing field. ; delimited list of existing field names.
##' @param EPS_TIME `number` - Maximum Time Span (Seconds). A numeric value.
##' @param EPS_SPACE `number` - Maximum Distance. A numeric value.
##' @param AGGREGATED `vectorDestination` - Aggregated. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * AGGREGATED - outputVector - Aggregated
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_aggregatepointobservations <- function(REFERENCE = qgisprocess::qgis_default_value(), REFERENCE_ID = qgisprocess::qgis_default_value(), OBSERVATIONS = qgisprocess::qgis_default_value(), X = qgisprocess::qgis_default_value(), Y = qgisprocess::qgis_default_value(), TRACK = qgisprocess::qgis_default_value(), DATE = qgisprocess::qgis_default_value(), TIME = qgisprocess::qgis_default_value(), PARAMETER = qgisprocess::qgis_default_value(), EPS_TIME = qgisprocess::qgis_default_value(), EPS_SPACE = qgisprocess::qgis_default_value(), AGGREGATED = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:aggregatepointobservations")
  output <- qgisprocess::qgis_run_algorithm("saga:aggregatepointobservations",`REFERENCE` = REFERENCE, `REFERENCE_ID` = REFERENCE_ID, `OBSERVATIONS` = OBSERVATIONS, `X` = X, `Y` = Y, `TRACK` = TRACK, `DATE` = DATE, `TIME` = TIME, `PARAMETER` = PARAMETER, `EPS_TIME` = EPS_TIME, `EPS_SPACE` = EPS_SPACE, `AGGREGATED` = AGGREGATED,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "AGGREGATED")
  }
}