##' QGIS Algorithm provided by SAGA Polygon update (saga:polygonupdate)
##'
##' @title QGIS algorithm Polygon update
##'
##' @param A `source` - Layer A. Path to a vector layer.
##' @param B `source` - Layer B. Path to a vector layer.
##' @param SPLIT `boolean` - Split Parts. 1 for true/yes. 0 for false/no.
##' @param RESULT `vectorDestination` - Updated polygons. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputVector - Updated polygons
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_polygonupdate <- function(A = qgisprocess::qgis_default_value(), B = qgisprocess::qgis_default_value(), SPLIT = qgisprocess::qgis_default_value(), RESULT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:polygonupdate")
  output <- qgisprocess::qgis_run_algorithm("saga:polygonupdate",`A` = A, `B` = B, `SPLIT` = SPLIT, `RESULT` = RESULT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "RESULT")
  }
}