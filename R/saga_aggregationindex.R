##' QGIS Algorithm provided by SAGA Aggregation index (saga:aggregationindex)
##'
##' @title QGIS algorithm Aggregation index
##'
##' @param INPUT `raster` - Input Grid. Path to a raster layer.
##' @param MAXNUMCLASS `number` - Max. Number of Classes. A numeric value.
##' @param RESULT `vectorDestination` - Result. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputVector - Result
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_aggregationindex <- function(INPUT = qgisprocess::qgis_default_value(), MAXNUMCLASS = qgisprocess::qgis_default_value(), RESULT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:aggregationindex",`INPUT` = INPUT, `MAXNUMCLASS` = MAXNUMCLASS, `RESULT` = RESULT,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "RESULT")
}
}