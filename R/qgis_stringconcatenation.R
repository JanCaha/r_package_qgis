##' QGIS Algorithm provided by QGIS (native c++) String concatenation (native:stringconcatenation)
##'
##' @title QGIS algorithm String concatenation
##'
##' @param INPUT_1 `string` - Input 1. String value.
##' @param INPUT_2 `string` - Input 2. String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * CONCATENATION - outputString - Concatenation
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_stringconcatenation <- function(INPUT_1 = qgisprocess::qgis_default_value(), INPUT_2 = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:stringconcatenation")

  output <- qgisprocess::qgis_run_algorithm("native:stringconcatenation", `INPUT_1` = INPUT_1, `INPUT_2` = INPUT_2,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "CONCATENATION")
  }
}