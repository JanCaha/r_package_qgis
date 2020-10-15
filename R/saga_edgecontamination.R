##' QGIS Algorithm provided by SAGA Edge contamination (saga:edgecontamination)
##'
##' @title QGIS algorithm Edge contamination
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param CONTAMINATION `rasterDestination` - Edge Contamination. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * CONTAMINATION - outputRaster - Edge Contamination
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_edgecontamination <- function(DEM = qgisprocess::qgis_default_value(), CONTAMINATION = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:edgecontamination",`DEM` = DEM, `CONTAMINATION` = CONTAMINATION,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "CONTAMINATION")
}
}