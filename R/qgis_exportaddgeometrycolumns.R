##' QGIS Algorithm provided by QGIS Add geometry attributes (qgis:exportaddgeometrycolumns)
##'
##' @title QGIS algorithm Add geometry attributes
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param CALC_METHOD `enum`  of `("Layer CRS", "Project CRS", "Ellipsoidal")` - Calculate using. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param OUTPUT `sink` - Added geom info. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Added geom info
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_exportaddgeometrycolumns <- function(INPUT = qgisprocess::qgis_default_value(), CALC_METHOD = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("qgis:exportaddgeometrycolumns",`INPUT` = INPUT, `CALC_METHOD` = CALC_METHOD, `OUTPUT` = OUTPUT,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
}
}