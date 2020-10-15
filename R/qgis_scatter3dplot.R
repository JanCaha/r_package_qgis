##' QGIS Algorithm provided by QGIS Vector layer scatterplot 3D (qgis:scatter3dplot)
##'
##' @title QGIS algorithm Vector layer scatterplot 3D
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param XFIELD `field` - X attribute. The name of an existing field. ; delimited list of existing field names.
##' @param YFIELD `field` - Y attribute. The name of an existing field. ; delimited list of existing field names.
##' @param ZFIELD `field` - Z attribute. The name of an existing field. ; delimited list of existing field names.
##' @param OUTPUT `fileDestination` - Histogram. Path for new file.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputHtml - Histogram
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_scatter3dplot <- function(INPUT = qgisprocess::qgis_default_value(), XFIELD = qgisprocess::qgis_default_value(), YFIELD = qgisprocess::qgis_default_value(), ZFIELD = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("qgis:scatter3dplot",`INPUT` = INPUT, `XFIELD` = XFIELD, `YFIELD` = YFIELD, `ZFIELD` = ZFIELD, `OUTPUT` = OUTPUT,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
}
}