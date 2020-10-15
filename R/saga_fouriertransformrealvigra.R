##' QGIS Algorithm provided by SAGA Fourier transform (real, vigra) (saga:fouriertransformrealvigra)
##'
##' @title QGIS algorithm Fourier transform (real, vigra)
##'
##' @param INPUT `raster` - Input. Path to a raster layer.
##' @param OUTPUT `rasterDestination` - Output. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Output
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_fouriertransformrealvigra <- function(INPUT = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:fouriertransformrealvigra",`INPUT` = INPUT, `OUTPUT` = OUTPUT,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
}
}