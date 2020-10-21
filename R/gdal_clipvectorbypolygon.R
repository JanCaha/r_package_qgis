##' QGIS Algorithm provided by GDAL Clip vector by mask layer (gdal:clipvectorbypolygon)
##'
##' @title QGIS algorithm Clip vector by mask layer
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param MASK `source` - Mask layer. Path to a vector layer.
##' @param OPTIONS `string` - Additional creation options. String value.
##' @param OUTPUT `vectorDestination` - Clipped (mask). Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Clipped 
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

gdal_clipvectorbypolygon <- function(INPUT = qgisprocess::qgis_default_value(), MASK = qgisprocess::qgis_default_value(), OPTIONS = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("gdal:clipvectorbypolygon",`INPUT` = INPUT, `MASK` = MASK, `OPTIONS` = OPTIONS, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}