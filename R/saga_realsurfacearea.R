##' QGIS Algorithm provided by SAGA Real surface area (saga:realsurfacearea)
##'
##' @title QGIS algorithm Real surface area
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param AREA `rasterDestination` - Surface Area. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * AREA - outputRaster - Surface Area
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_realsurfacearea <- function(DEM = qgisprocess::qgis_default_value(), AREA = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:realsurfacearea")
  output <- qgisprocess::qgis_run_algorithm("saga:realsurfacearea",`DEM` = DEM, `AREA` = AREA,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "AREA")
  }
}