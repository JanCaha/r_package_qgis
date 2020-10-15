##' QGIS Algorithm provided by SAGA Morphometric protection index (saga:morphometricprotectionindex)
##'
##' @title QGIS algorithm Morphometric protection index
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param RADIUS `number` - Radius. A numeric value.
##' @param PROTECTION `rasterDestination` - Protection Index. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * PROTECTION - outputRaster - Protection Index
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_morphometricprotectionindex <- function(DEM = qgisprocess::qgis_default_value(), RADIUS = qgisprocess::qgis_default_value(), PROTECTION = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:morphometricprotectionindex",`DEM` = DEM, `RADIUS` = RADIUS, `PROTECTION` = PROTECTION,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "PROTECTION")
}
}