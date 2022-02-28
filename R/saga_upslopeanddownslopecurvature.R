##' QGIS Algorithm provided by SAGA Upslope and downslope curvature (saga:upslopeanddownslopecurvature)
##'
##' @title QGIS algorithm Upslope and downslope curvature
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param C_LOCAL `rasterDestination` - Local Curvature. Path for new raster layer.
##' @param C_UP `rasterDestination` - Upslope Curvature. Path for new raster layer.
##' @param C_UP_LOCAL `rasterDestination` - Local Upslope Curvature. Path for new raster layer.
##' @param C_DOWN `rasterDestination` - Downslope Curvature. Path for new raster layer.
##' @param C_DOWN_LOCAL `rasterDestination` - Local Downslope Curvature. Path for new raster layer.
##' @param WEIGHTING `number` - Upslope Weighting. A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * C_DOWN - outputRaster - Downslope Curvature
##' * C_DOWN_LOCAL - outputRaster - Local Downslope Curvature
##' * C_LOCAL - outputRaster - Local Curvature
##' * C_UP - outputRaster - Upslope Curvature
##' * C_UP_LOCAL - outputRaster - Local Upslope Curvature
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_upslopeanddownslopecurvature <- function(DEM = qgisprocess::qgis_default_value(), C_LOCAL = qgisprocess::qgis_default_value(), C_UP = qgisprocess::qgis_default_value(), C_UP_LOCAL = qgisprocess::qgis_default_value(), C_DOWN = qgisprocess::qgis_default_value(), C_DOWN_LOCAL = qgisprocess::qgis_default_value(), WEIGHTING = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:upslopeanddownslopecurvature")

  output <- qgisprocess::qgis_run_algorithm("saga:upslopeanddownslopecurvature", `DEM` = DEM, `C_LOCAL` = C_LOCAL, `C_UP` = C_UP, `C_UP_LOCAL` = C_UP_LOCAL, `C_DOWN` = C_DOWN, `C_DOWN_LOCAL` = C_DOWN_LOCAL, `WEIGHTING` = WEIGHTING,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "C_DOWN")
  }
}