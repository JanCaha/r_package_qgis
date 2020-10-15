##' QGIS Algorithm provided by SAGA Split shapes layer randomly (saga:splitshapeslayerrandomly)
##'
##' @title QGIS algorithm Split shapes layer randomly
##'
##' @param SHAPES `source` - Shapes. Path to a vector layer.
##' @param PERCENT `number` - Split ratio (%). A numeric value.
##' @param EXACT `boolean` - Split exactly. 1 for true/yes. 0 for false/no.
##' @param A `vectorDestination` - Group A. Path for new vector layer.
##' @param B `vectorDestination` - Group B. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * A - outputVector - Group A
##' * B - outputVector - Group B
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_splitshapeslayerrandomly <- function(SHAPES = qgisprocess::qgis_default_value(), PERCENT = qgisprocess::qgis_default_value(), EXACT = qgisprocess::qgis_default_value(), A = qgisprocess::qgis_default_value(), B = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:splitshapeslayerrandomly",`SHAPES` = SHAPES, `PERCENT` = PERCENT, `EXACT` = EXACT, `A` = A, `B` = B,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "A")
}
}