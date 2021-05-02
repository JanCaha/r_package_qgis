##' QGIS Algorithm provided by SAGA Strahler order (saga:strahlerorder)
##'
##' @title QGIS algorithm Strahler order
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param STRAHLER `rasterDestination` - Strahler Order. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * STRAHLER - outputRaster - Strahler Order
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_strahlerorder <- function(DEM = qgisprocess::qgis_default_value(), STRAHLER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:strahlerorder")
  output <- qgisprocess::qgis_run_algorithm("saga:strahlerorder",`DEM` = DEM, `STRAHLER` = STRAHLER,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "STRAHLER")
  }
}