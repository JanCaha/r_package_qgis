##' QGIS Algorithm provided by SAGA Raster standardisation (saga:rasterstandardisation)
##'
##' @title QGIS algorithm Raster standardisation
##'
##' @param INPUT `raster` - Grid. Path to a raster layer.
##' @param STRETCH `number` - Stretch Factor. A numeric value.
##' @param OUTPUT `rasterDestination` - Standardised Grid. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Standardised Grid
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_rasterstandardisation <- function(INPUT = qgisprocess::qgis_default_value(), STRETCH = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:rasterstandardisation",`INPUT` = INPUT, `STRETCH` = STRETCH, `OUTPUT` = OUTPUT,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
}
}