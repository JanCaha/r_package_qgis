##' QGIS Algorithm provided by SAGA Fourier transformation (opencv) (saga:fouriertransformationopencv)
##'
##' @title QGIS algorithm Fourier transformation (opencv)
##'
##' @param INPUT `raster` - Input. Path to a raster layer.
##' @param REAL `rasterDestination` - Fourier Transformation (Real). Path for new raster layer.
##' @param IMAG `rasterDestination` - Fourier Transformation (Imaginary). Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * REAL - outputRaster - Fourier Transformation 
##' * IMAG - outputRaster - Fourier Transformation 
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_fouriertransformationopencv <- function(INPUT = qgisprocess::qgis_default_value(), REAL = qgisprocess::qgis_default_value(), IMAG = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:fouriertransformationopencv")
  output <- qgisprocess::qgis_run_algorithm("saga:fouriertransformationopencv",`INPUT` = INPUT, `REAL` = REAL, `IMAG` = IMAG,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "REAL")
  }
}