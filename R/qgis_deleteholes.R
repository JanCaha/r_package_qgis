##' QGIS Algorithm provided by QGIS (native c++) Delete holes (native:deleteholes)
##'
##' @title QGIS algorithm Delete holes
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param MIN_AREA `number` - Remove holes with area less than. A numeric value.
##' @param OUTPUT `sink` - Cleaned. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Cleaned
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_deleteholes <- function(INPUT = qgisprocess::qgis_default_value(), MIN_AREA = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("native:deleteholes",`INPUT` = INPUT, `MIN_AREA` = MIN_AREA, `OUTPUT` = OUTPUT,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
}
}