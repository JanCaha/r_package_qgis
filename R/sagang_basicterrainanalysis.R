##' QGIS Algorithm provided by SAGA Next Gen Basic terrain analysis (sagang:basicterrainanalysis). ---------------- Arguments ----------------  ELEVATION: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer SHADE: Analytical Hillshading 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SLOPE: Slope 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer ASPECT: Aspect 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer HCURV: Plan Curvature 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer VCURV: Profile Curvature 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer CONVERGENCE: Convergence Index 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SINKS: Closed Depressions 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer FLOW: Total Catchment Area 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer WETNESS: Topographic Wetness Index 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer LSFACTOR: LS-Factor 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer CHANNELS: Channel Network 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer BASINS: Drainage Basins 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer CHNL_BASE: Channel Network Base Level 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer CHNL_DIST: Channel Network Distance 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer VALL_DEPTH: Valley Depth 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer RSP: Relative Slope Position 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer THRESHOLD: Channel Density 	Default value:	5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Basic terrain analysis
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
##' @param THRESHOLD `number` - Channel Density. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * ASPECT - outputRaster - Aspect
##' * BASINS - outputVector - Drainage Basins
##' * CHANNELS - outputVector - Channel Network
##' * CHNL_BASE - outputRaster - Channel Network Base Level
##' * CHNL_DIST - outputRaster - Channel Network Distance
##' * CONVERGENCE - outputRaster - Convergence Index
##' * FLOW - outputRaster - Total Catchment Area
##' * HCURV - outputRaster - Plan Curvature
##' * LSFACTOR - outputRaster - LS-Factor
##' * RSP - outputRaster - Relative Slope Position
##' * SHADE - outputRaster - Analytical Hillshading
##' * SINKS - outputRaster - Closed Depressions
##' * SLOPE - outputRaster - Slope
##' * VALL_DEPTH - outputRaster - Valley Depth
##' * VCURV - outputRaster - Profile Curvature
##' * WETNESS - outputRaster - Topographic Wetness Index
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_basicterrainanalysis <- function(ELEVATION = qgisprocess:::qgis_default_value(), SHADE = qgisprocess:::qgis_default_value(), SLOPE = qgisprocess:::qgis_default_value(), ASPECT = qgisprocess:::qgis_default_value(), HCURV = qgisprocess:::qgis_default_value(), VCURV = qgisprocess:::qgis_default_value(), CONVERGENCE = qgisprocess:::qgis_default_value(), SINKS = qgisprocess:::qgis_default_value(), FLOW = qgisprocess:::qgis_default_value(), WETNESS = qgisprocess:::qgis_default_value(), LSFACTOR = qgisprocess:::qgis_default_value(), CHANNELS = qgisprocess:::qgis_default_value(), BASINS = qgisprocess:::qgis_default_value(), CHNL_BASE = qgisprocess:::qgis_default_value(), CHNL_DIST = qgisprocess:::qgis_default_value(), VALL_DEPTH = qgisprocess:::qgis_default_value(), RSP = qgisprocess:::qgis_default_value(), THRESHOLD = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:basicterrainanalysis")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:basicterrainanalysis", `ELEVATION` = ELEVATION, `SHADE` = SHADE, `SLOPE` = SLOPE, `ASPECT` = ASPECT, `HCURV` = HCURV, `VCURV` = VCURV, `CONVERGENCE` = CONVERGENCE, `SINKS` = SINKS, `FLOW` = FLOW, `WETNESS` = WETNESS, `LSFACTOR` = LSFACTOR, `CHANNELS` = CHANNELS, `BASINS` = BASINS, `CHNL_BASE` = CHNL_BASE, `CHNL_DIST` = CHNL_DIST, `VALL_DEPTH` = VALL_DEPTH, `RSP` = RSP, `THRESHOLD` = THRESHOLD,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:basicterrainanalysis", `ELEVATION` = ELEVATION, `SHADE` = SHADE, `SLOPE` = SLOPE, `ASPECT` = ASPECT, `HCURV` = HCURV, `VCURV` = VCURV, `CONVERGENCE` = CONVERGENCE, `SINKS` = SINKS, `FLOW` = FLOW, `WETNESS` = WETNESS, `LSFACTOR` = LSFACTOR, `CHANNELS` = CHANNELS, `BASINS` = BASINS, `CHNL_BASE` = CHNL_BASE, `CHNL_DIST` = CHNL_DIST, `VALL_DEPTH` = VALL_DEPTH, `RSP` = RSP, `THRESHOLD` = THRESHOLD,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "ASPECT")
  }
}