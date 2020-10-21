##' QGIS Algorithm provided by QGIS (native c++) Set M value (native:setmvalue)
##'
##' @title QGIS algorithm Set M value
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param M_VALUE `number` - M Value. A numeric value.
##' @param OUTPUT `sink` - M Added. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - M Added
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_setmvalue <- function(INPUT = qgisprocess::qgis_default_value(), M_VALUE = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("native:setmvalue",`INPUT` = INPUT, `M_VALUE` = M_VALUE, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}