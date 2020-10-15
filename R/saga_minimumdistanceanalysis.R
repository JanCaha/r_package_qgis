##' QGIS Algorithm provided by SAGA Minimum distance analysis (saga:minimumdistanceanalysis)
##'
##' @title QGIS algorithm Minimum distance analysis
##'
##' @param POINTS `source` - Points. Path to a vector layer.
##' @param TABLE `vectorDestination` - Minimum Distance Analysis. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * TABLE - outputVector - Minimum Distance Analysis
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_minimumdistanceanalysis <- function(POINTS = qgisprocess::qgis_default_value(), TABLE = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:minimumdistanceanalysis",`POINTS` = POINTS, `TABLE` = TABLE,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "TABLE")
}
}