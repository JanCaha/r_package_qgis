##' QGIS Algorithm provided by SAGA Mesh denoise (saga:meshdenoise)
##'
##' @title QGIS algorithm Mesh denoise
##'
##' @param INPUT `raster` - Grid. Path to a raster layer.
##' @param OUTPUT `rasterDestination` - Denoised Grid. Path for new raster layer.
##' @param SIGMA `number` - Threshold. A numeric value.
##' @param ITER `number` - Number of Iterations for Normal Updating. A numeric value.
##' @param VITER `number` - Number of Iterations for Vertex Updating. A numeric value.
##' @param NB_CV `enum`  of `("[0] Common Vertex", "[1] Common Edge")` - Common Edge Type of Face Neighbourhood. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ZONLY `boolean` - Only Z-Direction Position is Updated. 1 for true/yes. 0 for false/no.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Denoised Grid
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_meshdenoise <- function(INPUT = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(), SIGMA = qgisprocess::qgis_default_value(), ITER = qgisprocess::qgis_default_value(), VITER = qgisprocess::qgis_default_value(), NB_CV = qgisprocess::qgis_default_value(), ZONLY = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:meshdenoise",`INPUT` = INPUT, `OUTPUT` = OUTPUT, `SIGMA` = SIGMA, `ITER` = ITER, `VITER` = VITER, `NB_CV` = NB_CV, `ZONLY` = ZONLY,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}