##' QGIS Algorithm provided by QGIS Select by attribute (qgis:selectbyattribute)
##'
##' @title QGIS algorithm Select by attribute
##'
##' @param INPUT `vector` - Input layer. Path to a vector layer.
##' @param FIELD `field` - Selection attribute. The name of an existing field. ; delimited list of existing field names.
##' @param OPERATOR `enum`  of `("=", "≠", ">", "≥", "<", "≤", "begins with", "contains", "is null", "is not null", "does not contain")` - Operator. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param VALUE `string` - Value. String value.
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

qgis_selectbyattribute <- function(INPUT = qgisprocess::qgis_default_value(), FIELD = qgisprocess::qgis_default_value(), OPERATOR = qgisprocess::qgis_default_value(), VALUE = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("qgis:selectbyattribute",`INPUT` = INPUT, `FIELD` = FIELD, `OPERATOR` = OPERATOR, `VALUE` = VALUE, `METHOD` = METHOD,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}