##' QGIS Algorithm provided by SAGA Polygon union (saga:polygonunion)
##'
##' @title QGIS algorithm Polygon union
##'
##' @param A `source` - Layer A. Path to a vector layer.
##' @param B `source` - Layer B. Path to a vector layer.
##' @param SPLIT `boolean` - Split Parts. 1 for true/yes. 0 for false/no.
##' @param RESULT `vectorDestination` - Union. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputVector - Union
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_polygonunion <- function(A = qgisprocess::qgis_default_value(), B = qgisprocess::qgis_default_value(), SPLIT = qgisprocess::qgis_default_value(), RESULT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:polygonunion")
  output <- qgisprocess::qgis_run_algorithm("saga:polygonunion",`A` = A, `B` = B, `SPLIT` = SPLIT, `RESULT` = RESULT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "RESULT")
  }
}