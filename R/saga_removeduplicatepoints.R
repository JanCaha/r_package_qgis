##' QGIS Algorithm provided by SAGA Remove duplicate points (saga:removeduplicatepoints)
##'
##' @title QGIS algorithm Remove duplicate points
##'
##' @param POINTS `source` - Points. Path to a vector layer.
##' @param FIELD `field` - Attribute. The name of an existing field. ; delimited list of existing field names.
##' @param METHOD `enum`  of `("[0] first point", "[1] last point", "[2] point with minimum attribute value", "[3] point with maximum attribute value")` - Point to Keep. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param NUMERIC `enum`  of `("[0] take value from the point to be kept", "[1] minimum value of all duplicates", "[2] maximum value of all duplicates", "[3] mean value of all duplicates")` - Numeric Attribute Values. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
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

saga_removeduplicatepoints <- function(POINTS = qgisprocess::qgis_default_value(), FIELD = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), NUMERIC = qgisprocess::qgis_default_value(), RESULT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:removeduplicatepoints")
  output <- qgisprocess::qgis_run_algorithm("saga:removeduplicatepoints",`POINTS` = POINTS, `FIELD` = FIELD, `METHOD` = METHOD, `NUMERIC` = NUMERIC, `RESULT` = RESULT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "RESULT")
  }
}