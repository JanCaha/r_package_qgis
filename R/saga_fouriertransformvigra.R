##' QGIS Algorithm provided by SAGA Fourier transform (vigra) (saga:fouriertransformvigra)
##'
##' @title QGIS algorithm Fourier transform (vigra)
##'
##' @param INPUT `raster` - Input. Path to a raster layer.
##' @param REAL `rasterDestination` - Real. Path for new raster layer.
##' @param IMAG `rasterDestination` - Imaginary. Path for new raster layer.
##' @param CENTER `boolean` - Centered. 1 for true/yes. 0 for false/no.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * IMAG - outputRaster - Imaginary
##' * REAL - outputRaster - Real
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_fouriertransformvigra <- function(INPUT = qgisprocess:::qgis_default_value(), REAL = qgisprocess:::qgis_default_value(), IMAG = qgisprocess:::qgis_default_value(), CENTER = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:fouriertransformvigra")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:fouriertransformvigra", `INPUT` = INPUT, `REAL` = REAL, `IMAG` = IMAG, `CENTER` = CENTER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:fouriertransformvigra", `INPUT` = INPUT, `REAL` = REAL, `IMAG` = IMAG, `CENTER` = CENTER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "IMAG")
  }
}