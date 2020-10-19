##' QGIS Algorithm provided by QGIS (native c++) Extract by expression (native:extractbyexpression)
##'
##' @title QGIS algorithm Extract by expression
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param EXPRESSION `expression` - Expression. A valid QGIS expression string, e.g "road_name" = 'MAIN RD'.
##' @param OUTPUT `sink` - Matching features. Path for new vector layer.
##' @param FAIL_OUTPUT `sink` - Non-matching. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Matching features
##' * FAIL_OUTPUT - outputVector - Non
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_extractbyexpression <- function(INPUT = qgisprocess::qgis_default_value(), EXPRESSION = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(), FAIL_OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("native:extractbyexpression",`INPUT` = INPUT, `EXPRESSION` = EXPRESSION, `OUTPUT` = OUTPUT, `FAIL_OUTPUT` = FAIL_OUTPUT,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
}
}