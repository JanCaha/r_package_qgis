##' QGIS Algorithm provided by QGIS (native c++) Aspect (native:aspect)
##'
##' @title QGIS algorithm Aspect
##'
##' @param INPUT `raster` - Elevation layer. Path to a raster layer.
##' @param Z_FACTOR `number` - Z factor. A numeric value.
##' @param OUTPUT `rasterDestination` - Aspect. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Aspect
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_aspect <- function(INPUT = qgisprocess::qgis_default_value(), Z_FACTOR = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("native:aspect")
  output <- qgisprocess::qgis_run_algorithm("native:aspect",`INPUT` = INPUT, `Z_FACTOR` = Z_FACTOR, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}