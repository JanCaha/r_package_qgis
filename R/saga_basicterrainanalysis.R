##' QGIS Algorithm provided by SAGA Basic terrain analysis (saga:basicterrainanalysis)
##'
##' @title QGIS algorithm Basic terrain analysis
##'
##' @param ELEVATION `raster` - Elevation. Path to a raster layer.
##' @param SHADE `rasterDestination` - Analytical Hillshading. Path for new raster layer.
##' @param SLOPE `rasterDestination` - Slope. Path for new raster layer.
##' @param ASPECT `rasterDestination` - Aspect. Path for new raster layer.
##' @param HCURV `rasterDestination` - Plan Curvature. Path for new raster layer.
##' @param VCURV `rasterDestination` - Profile Curvature. Path for new raster layer.
##' @param CONVERGENCE `rasterDestination` - Convergence Index. Path for new raster layer.
##' @param SINKS `rasterDestination` - Closed Depressions. Path for new raster layer.
##' @param FLOW `rasterDestination` - Total Catchment Area. Path for new raster layer.
##' @param WETNESS `rasterDestination` - Topographic Wetness Index. Path for new raster layer.
##' @param LSFACTOR `rasterDestination` - LS-Factor. Path for new raster layer.
##' @param CHANNELS `vectorDestination` - Channel Network. Path for new vector layer.
##' @param BASINS `vectorDestination` - Drainage Basins. Path for new vector layer.
##' @param CHNL_BASE `rasterDestination` - Channel Network Base Level. Path for new raster layer.
##' @param CHNL_DIST `rasterDestination` - Channel Network Distance. Path for new raster layer.
##' @param VALL_DEPTH `rasterDestination` - Valley Depth. Path for new raster layer.
##' @param RSP `rasterDestination` - Relative Slope Position. Path for new raster layer.
##' @param THRESHOLD `number` - Channel Density. A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * SHADE - outputRaster - Analytical Hillshading
##' * SLOPE - outputRaster - Slope
##' * ASPECT - outputRaster - Aspect
##' * HCURV - outputRaster - Plan Curvature
##' * VCURV - outputRaster - Profile Curvature
##' * CONVERGENCE - outputRaster - Convergence Index
##' * SINKS - outputRaster - Closed Depressions
##' * FLOW - outputRaster - Total Catchment Area
##' * WETNESS - outputRaster - Topographic Wetness Index
##' * LSFACTOR - outputRaster - LS
##' * CHANNELS - outputVector - Channel Network
##' * BASINS - outputVector - Drainage Basins
##' * CHNL_BASE - outputRaster - Channel Network Base Level
##' * CHNL_DIST - outputRaster - Channel Network Distance
##' * VALL_DEPTH - outputRaster - Valley Depth
##' * RSP - outputRaster - Relative Slope Position
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_basicterrainanalysis <- function(ELEVATION = qgisprocess::qgis_default_value(), SHADE = qgisprocess::qgis_default_value(), SLOPE = qgisprocess::qgis_default_value(), ASPECT = qgisprocess::qgis_default_value(), HCURV = qgisprocess::qgis_default_value(), VCURV = qgisprocess::qgis_default_value(), CONVERGENCE = qgisprocess::qgis_default_value(), SINKS = qgisprocess::qgis_default_value(), FLOW = qgisprocess::qgis_default_value(), WETNESS = qgisprocess::qgis_default_value(), LSFACTOR = qgisprocess::qgis_default_value(), CHANNELS = qgisprocess::qgis_default_value(), BASINS = qgisprocess::qgis_default_value(), CHNL_BASE = qgisprocess::qgis_default_value(), CHNL_DIST = qgisprocess::qgis_default_value(), VALL_DEPTH = qgisprocess::qgis_default_value(), RSP = qgisprocess::qgis_default_value(), THRESHOLD = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:basicterrainanalysis",`ELEVATION` = ELEVATION, `SHADE` = SHADE, `SLOPE` = SLOPE, `ASPECT` = ASPECT, `HCURV` = HCURV, `VCURV` = VCURV, `CONVERGENCE` = CONVERGENCE, `SINKS` = SINKS, `FLOW` = FLOW, `WETNESS` = WETNESS, `LSFACTOR` = LSFACTOR, `CHANNELS` = CHANNELS, `BASINS` = BASINS, `CHNL_BASE` = CHNL_BASE, `CHNL_DIST` = CHNL_DIST, `VALL_DEPTH` = VALL_DEPTH, `RSP` = RSP, `THRESHOLD` = THRESHOLD,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "SHADE")
}
}