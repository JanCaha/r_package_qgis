##' QGIS Algorithm provided by SAGA Diurnal anisotropic heating (saga:diurnalanisotropicheating)
##'
##' @title QGIS algorithm Diurnal anisotropic heating
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param ALPHA_MAX `number` - Alpha Max (Degree). A numeric value.
##' @param DAH `rasterDestination` - Diurnal Anisotropic Heating. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * DAH - outputRaster - Diurnal Anisotropic Heating
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_diurnalanisotropicheating <- function(DEM = qgisprocess::qgis_default_value(), ALPHA_MAX = qgisprocess::qgis_default_value(), DAH = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:diurnalanisotropicheating")
  output <- qgisprocess::qgis_run_algorithm("saga:diurnalanisotropicheating",`DEM` = DEM, `ALPHA_MAX` = ALPHA_MAX, `DAH` = DAH,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "DAH")
  }
}