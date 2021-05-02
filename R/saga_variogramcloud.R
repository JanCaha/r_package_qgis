##' QGIS Algorithm provided by SAGA Variogram cloud (saga:variogramcloud)
##'
##' @title QGIS algorithm Variogram cloud
##'
##' @param POINTS `source` - Points. Path to a vector layer.
##' @param FIELD `field` - Attribute. The name of an existing field. ; delimited list of existing field names.
##' @param DISTMAX `number` - Maximum Distance. A numeric value.
##' @param NSKIP `number` - Skip Number. A numeric value.
##' @param RESULT `vectorDestination` - Variogram Cloud. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputVector - Variogram Cloud
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_variogramcloud <- function(POINTS = qgisprocess::qgis_default_value(), FIELD = qgisprocess::qgis_default_value(), DISTMAX = qgisprocess::qgis_default_value(), NSKIP = qgisprocess::qgis_default_value(), RESULT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:variogramcloud")
  output <- qgisprocess::qgis_run_algorithm("saga:variogramcloud",`POINTS` = POINTS, `FIELD` = FIELD, `DISTMAX` = DISTMAX, `NSKIP` = NSKIP, `RESULT` = RESULT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "RESULT")
  }
}