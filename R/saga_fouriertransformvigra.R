##' QGIS Algorithm provided by SAGA Fourier transform (vigra) (saga:fouriertransformvigra)
##'
##' @title QGIS algorithm Fourier transform (vigra)
##'
##' @param INPUT `raster` - Input. Path to a raster layer.
##' @param REAL `rasterDestination` - Real. Path for new raster layer.
##' @param IMAG `rasterDestination` - Imaginary. Path for new raster layer.
##' @param CENTER `boolean` - Centered. 1 for true/yes. 0 for false/no.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * REAL - outputRaster - Real
##' * IMAG - outputRaster - Imaginary
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_fouriertransformvigra <- function(INPUT = qgisprocess::qgis_default_value(), REAL = qgisprocess::qgis_default_value(), IMAG = qgisprocess::qgis_default_value(), CENTER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:fouriertransformvigra",`INPUT` = INPUT, `REAL` = REAL, `IMAG` = IMAG, `CENTER` = CENTER,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "REAL")
}
}