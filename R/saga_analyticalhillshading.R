##' QGIS Algorithm provided by SAGA Analytical hillshading (saga:analyticalhillshading)
##'
##' @title QGIS algorithm Analytical hillshading
##'
##' @param ELEVATION `raster` - Elevation. Path to a raster layer.
##' @param METHOD `enum`  of `("[0] Standard", "[1] Standard (max. 90Degree)", "[2] Combined Shading", "[3] Ray Tracing")` - Shading Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param AZIMUTH `number` - Azimuth (Degree). A numeric value.
##' @param DECLINATION `number` - Declination (Degree). A numeric value.
##' @param EXAGGERATION `number` - Exaggeration. A numeric value.
##' @param SHADE `rasterDestination` - Analytical Hillshading. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * SHADE - outputRaster - Analytical Hillshading
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_analyticalhillshading <- function(ELEVATION = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), AZIMUTH = qgisprocess::qgis_default_value(), DECLINATION = qgisprocess::qgis_default_value(), EXAGGERATION = qgisprocess::qgis_default_value(), SHADE = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:analyticalhillshading")
  output <- qgisprocess::qgis_run_algorithm("saga:analyticalhillshading",`ELEVATION` = ELEVATION, `METHOD` = METHOD, `AZIMUTH` = AZIMUTH, `DECLINATION` = DECLINATION, `EXAGGERATION` = EXAGGERATION, `SHADE` = SHADE,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "SHADE")
  }
}