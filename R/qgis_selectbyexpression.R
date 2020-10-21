##' QGIS Algorithm provided by QGIS Select by expression (qgis:selectbyexpression)
##'
##' @title QGIS algorithm Select by expression
##'
##' @param INPUT `vector` - Input layer. Path to a vector layer.
##' @param EXPRESSION `expression` - Expression. A valid QGIS expression string, e.g "road_name" = 'MAIN RD'.
##' @param METHOD `enum`  of `("creating new selection", "adding to current selection", "removing from current selection", "selecting within current selection")` - Modify current selection by. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Selected 
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_selectbyexpression <- function(INPUT = qgisprocess::qgis_default_value(), EXPRESSION = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("qgis:selectbyexpression",`INPUT` = INPUT, `EXPRESSION` = EXPRESSION, `METHOD` = METHOD,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}