##' QGIS Algorithm provided by SAGA Fourier transform inverse (vigra) (saga:fouriertransforminversevigra)
##'
##' @title QGIS algorithm Fourier transform inverse (vigra)
##'
##' @param REAL `raster` - Real. Path to a raster layer.
##' @param IMAG `raster` - Imaginary. Path to a raster layer.
##' @param OUTPUT `rasterDestination` - Output. Path for new raster layer.
##' @param CENTER `boolean` - Centered. 1 for true/yes. 0 for false/no.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Output
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_fouriertransforminversevigra <- function(REAL = qgisprocess::qgis_default_value(), IMAG = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(), CENTER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:fouriertransforminversevigra")

  output <- qgisprocess::qgis_run_algorithm("saga:fouriertransforminversevigra", `REAL` = REAL, `IMAG` = IMAG, `OUTPUT` = OUTPUT, `CENTER` = CENTER,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}