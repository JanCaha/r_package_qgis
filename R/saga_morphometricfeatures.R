##' QGIS Algorithm provided by SAGA Morphometric features (saga:morphometricfeatures)
##'
##' @title QGIS algorithm Morphometric features
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param FEATURES `rasterDestination` - Morphometric Features. Path for new raster layer.
##' @param ELEVATION `rasterDestination` - Generalized Surface. Path for new raster layer.
##' @param SLOPE `rasterDestination` - Slope. Path for new raster layer.
##' @param ASPECT `rasterDestination` - Aspect. Path for new raster layer.
##' @param PROFC `rasterDestination` - Profile Curvature. Path for new raster layer.
##' @param PLANC `rasterDestination` - Plan Curvature. Path for new raster layer.
##' @param LONGC `rasterDestination` - Longitudinal Curvature. Path for new raster layer.
##' @param CROSC `rasterDestination` - Cross-Sectional Curvature. Path for new raster layer.
##' @param MAXIC `rasterDestination` - Maximum Curvature. Path for new raster layer.
##' @param MINIC `rasterDestination` - Minimum Curvature. Path for new raster layer.
##' @param SIZE `number` - Scale Radius (Cells). A numeric value.
##' @param TOL_SLOPE `number` - Slope Tolerance. A numeric value.
##' @param TOL_CURVE `number` - Curvature Tolerance. A numeric value.
##' @param EXPONENT `number` - Distance Weighting Exponent. A numeric value.
##' @param ZSCALE `number` - Vertical Scaling. A numeric value.
##' @param CONSTRAIN `boolean` - Constrain. 1 for true/yes. 0 for false/no.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * FEATURES - outputRaster - Morphometric Features
##' * ELEVATION - outputRaster - Generalized Surface
##' * SLOPE - outputRaster - Slope
##' * ASPECT - outputRaster - Aspect
##' * PROFC - outputRaster - Profile Curvature
##' * PLANC - outputRaster - Plan Curvature
##' * LONGC - outputRaster - Longitudinal Curvature
##' * CROSC - outputRaster - Cross
##' * MAXIC - outputRaster - Maximum Curvature
##' * MINIC - outputRaster - Minimum Curvature
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_morphometricfeatures <- function(DEM = qgisprocess::qgis_default_value(), FEATURES = qgisprocess::qgis_default_value(), ELEVATION = qgisprocess::qgis_default_value(), SLOPE = qgisprocess::qgis_default_value(), ASPECT = qgisprocess::qgis_default_value(), PROFC = qgisprocess::qgis_default_value(), PLANC = qgisprocess::qgis_default_value(), LONGC = qgisprocess::qgis_default_value(), CROSC = qgisprocess::qgis_default_value(), MAXIC = qgisprocess::qgis_default_value(), MINIC = qgisprocess::qgis_default_value(), SIZE = qgisprocess::qgis_default_value(), TOL_SLOPE = qgisprocess::qgis_default_value(), TOL_CURVE = qgisprocess::qgis_default_value(), EXPONENT = qgisprocess::qgis_default_value(), ZSCALE = qgisprocess::qgis_default_value(), CONSTRAIN = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:morphometricfeatures",`DEM` = DEM, `FEATURES` = FEATURES, `ELEVATION` = ELEVATION, `SLOPE` = SLOPE, `ASPECT` = ASPECT, `PROFC` = PROFC, `PLANC` = PLANC, `LONGC` = LONGC, `CROSC` = CROSC, `MAXIC` = MAXIC, `MINIC` = MINIC, `SIZE` = SIZE, `TOL_SLOPE` = TOL_SLOPE, `TOL_CURVE` = TOL_CURVE, `EXPONENT` = EXPONENT, `ZSCALE` = ZSCALE, `CONSTRAIN` = CONSTRAIN,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "FEATURES")
  }
}