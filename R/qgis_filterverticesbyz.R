##' QGIS Algorithm provided by QGIS (native c++) Filter vertices by Z value (native:filterverticesbyz)
##'
##' @title QGIS algorithm Filter vertices by Z value
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param MIN `number` - Minimum. A numeric value.
##' @param MAX `number` - Maximum. A numeric value.
##' @param OUTPUT `sink` - Filtered. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Filtered
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_filterverticesbyz <- function(INPUT = qgisprocess::qgis_default_value(), MIN = qgisprocess::qgis_default_value(), MAX = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("native:filterverticesbyz")
  output <- qgisprocess::qgis_run_algorithm("native:filterverticesbyz",`INPUT` = INPUT, `MIN` = MIN, `MAX` = MAX, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}