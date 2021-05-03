##' QGIS Algorithm provided by QGIS (native c++) Export layer(s) information (native:exportlayersinformation)
##'
##' @title QGIS algorithm Export layer(s) information
##'
##' @param LAYERS `multilayer` - Input layer(s). .
##' @param OUTPUT `sink` - Output. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Output
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_exportlayersinformation <- function(LAYERS = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:exportlayersinformation")

  output <- qgisprocess::qgis_run_algorithm("native:exportlayersinformation", `LAYERS` = LAYERS, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}