##' QGIS Algorithm provided by SAGA Slope length (saga:slopelength)
##'
##' @title QGIS algorithm Slope length
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param LENGTH `rasterDestination` - Slope Length. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * LENGTH - outputRaster - Slope Length
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_slopelength <- function(DEM = qgisprocess::qgis_default_value(), LENGTH = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:slopelength")
  output <- qgisprocess::qgis_run_algorithm("saga:slopelength",`DEM` = DEM, `LENGTH` = LENGTH,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "LENGTH")
  }
}