##' QGIS Algorithm provided by SAGA Curvature classification (saga:curvatureclassification)
##'
##' @title QGIS algorithm Curvature classification
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param THRESHOLD `number` - Threshold for plane. A numeric value.
##' @param CLASS `rasterDestination` - Curvature Classification. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * CLASS - outputRaster - Curvature Classification
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_curvatureclassification <- function(DEM = qgisprocess::qgis_default_value(), THRESHOLD = qgisprocess::qgis_default_value(), CLASS = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:curvatureclassification",`DEM` = DEM, `THRESHOLD` = THRESHOLD, `CLASS` = CLASS,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "CLASS")
}
}