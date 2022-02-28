##' QGIS Algorithm provided by SAGA Surface and gradient (saga:surfaceandgradient)
##'
##' @title QGIS algorithm Surface and gradient
##'
##' @param MASK `raster` - Mask. Path to a raster layer.
##' @param SURF `rasterDestination` - Surface. Path for new raster layer.
##' @param GRAD `rasterDestination` - Gradient. Path for new raster layer.
##' @param SURF_E `number` - Surface Approximation Threshold. A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * GRAD - outputRaster - Gradient
##' * SURF - outputRaster - Surface
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_surfaceandgradient <- function(MASK = qgisprocess::qgis_default_value(), SURF = qgisprocess::qgis_default_value(), GRAD = qgisprocess::qgis_default_value(), SURF_E = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:surfaceandgradient")

  output <- qgisprocess::qgis_run_algorithm("saga:surfaceandgradient", `MASK` = MASK, `SURF` = SURF, `GRAD` = GRAD, `SURF_E` = SURF_E,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "GRAD")
  }
}