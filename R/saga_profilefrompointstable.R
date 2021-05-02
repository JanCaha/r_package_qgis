##' QGIS Algorithm provided by SAGA Profile from points table (saga:profilefrompointstable)
##'
##' @title QGIS algorithm Profile from points table
##'
##' @param GRID `raster` - Grid. Path to a raster layer.
##' @param TABLE `source` - Input. Path to a vector layer.
##' @param X `field` - X. The name of an existing field. ; delimited list of existing field names.
##' @param Y `field` - Y. The name of an existing field. ; delimited list of existing field names.
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

saga_profilefrompointstable <- function(GRID = qgisprocess::qgis_default_value(), TABLE = qgisprocess::qgis_default_value(), X = qgisprocess::qgis_default_value(), Y = qgisprocess::qgis_default_value(), RESULT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:profilefrompointstable")
  output <- qgisprocess::qgis_run_algorithm("saga:profilefrompointstable",`GRID` = GRID, `TABLE` = TABLE, `X` = X, `Y` = Y, `RESULT` = RESULT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "RESULT")
  }
}