##' QGIS Algorithm provided by SAGA Convert points to line(s) (saga:convertpointstolines)
##'
##' @title QGIS algorithm Convert points to line(s)
##'
##' @param POINTS `source` - Points. Path to a vector layer.
##' @param ORDER `field` - Order by.... The name of an existing field. ; delimited list of existing field names.
##' @param SEPARATE `field` - Separate by.... The name of an existing field. ; delimited list of existing field names.
##' @param LINES `vectorDestination` - Lines. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * LINES - outputVector - Lines
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_convertpointstolines <- function(POINTS = qgisprocess::qgis_default_value(), ORDER = qgisprocess::qgis_default_value(), SEPARATE = qgisprocess::qgis_default_value(), LINES = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:convertpointstolines")
  output <- qgisprocess::qgis_run_algorithm("saga:convertpointstolines",`POINTS` = POINTS, `ORDER` = ORDER, `SEPARATE` = SEPARATE, `LINES` = LINES,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "LINES")
  }
}