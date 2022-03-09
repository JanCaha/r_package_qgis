##' QGIS Algorithm provided by SAGA Fourier transformation (opencv) (saga:fouriertransformationopencv)
##'
##' @title QGIS algorithm Fourier transformation (opencv)
##'
##' @param INPUT `raster` - Input. Path to a raster layer.
##' @param REAL `rasterDestination` - Fourier Transformation (Real). Path for new raster layer.
##' @param IMAG `rasterDestination` - Fourier Transformation (Imaginary). Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * IMAG - outputRaster - Fourier Transformation (Imaginary)
##' * REAL - outputRaster - Fourier Transformation (Real)
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_fouriertransformationopencv <- function(INPUT = qgisprocess::qgis_default_value(), REAL = qgisprocess::qgis_default_value(), IMAG = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:fouriertransformationopencv")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:fouriertransformationopencv", `INPUT` = INPUT, `REAL` = REAL, `IMAG` = IMAG,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:fouriertransformationopencv", `INPUT` = INPUT, `REAL` = REAL, `IMAG` = IMAG,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "IMAG")
  }
}