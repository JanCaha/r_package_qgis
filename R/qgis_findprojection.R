##' QGIS Algorithm provided by QGIS Find projection (qgis:findprojection)
##'
##' @title QGIS algorithm Find projection
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param TARGET_AREA `extent` - Target area for layer. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param OUTPUT `sink` - CRS candidates. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - CRS candidates
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_findprojection <- function(INPUT = qgisprocess::qgis_default_value(), TARGET_AREA = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("qgis:findprojection",`INPUT` = INPUT, `TARGET_AREA` = TARGET_AREA, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}