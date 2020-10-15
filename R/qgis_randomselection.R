##' QGIS Algorithm provided by QGIS Random selection (qgis:randomselection)
##'
##' @title QGIS algorithm Random selection
##'
##' @param INPUT `vector` - Input layer. Path to a vector layer.
##' @param METHOD `enum`  of `("Number of selected features", "Percentage of selected features")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param NUMBER `number` - Number/percentage of selected features. A numeric value.
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

qgis_randomselection <- function(INPUT = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), NUMBER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("qgis:randomselection",`INPUT` = INPUT, `METHOD` = METHOD, `NUMBER` = NUMBER,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
}
}