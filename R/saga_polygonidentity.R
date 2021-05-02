##' QGIS Algorithm provided by SAGA Polygon identity (saga:polygonidentity)
##'
##' @title QGIS algorithm Polygon identity
##'
##' @param A `source` - Layer A. Path to a vector layer.
##' @param B `source` - Layer B. Path to a vector layer.
##' @param SPLIT `boolean` - Split Parts. 1 for true/yes. 0 for false/no.
##' @param RESULT `vectorDestination` - Identity. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputVector - Identity
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_polygonidentity <- function(A = qgisprocess::qgis_default_value(), B = qgisprocess::qgis_default_value(), SPLIT = qgisprocess::qgis_default_value(), RESULT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:polygonidentity")
  output <- qgisprocess::qgis_run_algorithm("saga:polygonidentity",`A` = A, `B` = B, `SPLIT` = SPLIT, `RESULT` = RESULT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "RESULT")
  }
}