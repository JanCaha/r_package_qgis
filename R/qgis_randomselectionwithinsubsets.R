##' QGIS Algorithm provided by QGIS Random selection within subsets (qgis:randomselectionwithinsubsets)
##'
##' @title QGIS algorithm Random selection within subsets
##'
##' @param INPUT `vector` - Input layer. Path to a vector layer.
##' @param FIELD `field` - ID field. The name of an existing field. ; delimited list of existing field names.
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

qgis_randomselectionwithinsubsets <- function(INPUT = qgisprocess::qgis_default_value(), FIELD = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), NUMBER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("qgis:randomselectionwithinsubsets",`INPUT` = INPUT, `FIELD` = FIELD, `METHOD` = METHOD, `NUMBER` = NUMBER,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
}
}