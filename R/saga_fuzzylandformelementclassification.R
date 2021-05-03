##' QGIS Algorithm provided by SAGA Fuzzy landform element classification (saga:fuzzylandformelementclassification)
##'
##' @title QGIS algorithm Fuzzy landform element classification
##'
##' @param SLOPE `raster` - Slope. Path to a raster layer.
##' @param MINCURV `raster` - Minimum Curvature. Path to a raster layer.
##' @param MAXCURV `raster` - Maximum Curvature. Path to a raster layer.
##' @param PCURV `raster` - Profile Curvature. Path to a raster layer.
##' @param TCURV `raster` - Tangential Curvature. Path to a raster layer.
##' @param PLAIN `rasterDestination` - Plain. Path for new raster layer.
##' @param PIT `rasterDestination` - Pit. Path for new raster layer.
##' @param PEAK `rasterDestination` - Peak. Path for new raster layer.
##' @param RIDGE `rasterDestination` - Ridge. Path for new raster layer.
##' @param CHANNEL `rasterDestination` - Channel. Path for new raster layer.
##' @param SADDLE `rasterDestination` - Saddle. Path for new raster layer.
##' @param BSLOPE `rasterDestination` - Back Slope. Path for new raster layer.
##' @param FSLOPE `rasterDestination` - Foot Slope. Path for new raster layer.
##' @param SSLOPE `rasterDestination` - Shoulder Slope. Path for new raster layer.
##' @param HOLLOW `rasterDestination` - Hollow. Path for new raster layer.
##' @param FHOLLOW `rasterDestination` - Foot Hollow. Path for new raster layer.
##' @param SHOLLOW `rasterDestination` - Shoulder Hollow. Path for new raster layer.
##' @param SPUR `rasterDestination` - Spur. Path for new raster layer.
##' @param FSPUR `rasterDestination` - Foot Spur. Path for new raster layer.
##' @param SSPUR `rasterDestination` - Shoulder Spur. Path for new raster layer.
##' @param FORM `rasterDestination` - Landform. Path for new raster layer.
##' @param MEM `rasterDestination` - Maximum Membership. Path for new raster layer.
##' @param ENTROPY `rasterDestination` - Entropy. Path for new raster layer.
##' @param CI `rasterDestination` - Confusion Index. Path for new raster layer.
##' @param SLOPETODEG `enum`  of `("[0] degree", "[1] radians")` - Slope Grid Units. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param T_SLOPE_MIN `number` - Slope Thresholds (Degree) (Min). A numeric value.
##' @param T_SLOPE_MAX `number` - Slope Thresholds (Degree) (Max). A numeric value.
##' @param T_CURVE_MIN `number` - Curvature Thresholds (1 / m) (Min). A numeric value.
##' @param T_CURVE_MAX `number` - Curvature Thresholds (1 / m) (Max). A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * PLAIN - outputRaster - Plain
##' * PIT - outputRaster - Pit
##' * PEAK - outputRaster - Peak
##' * RIDGE - outputRaster - Ridge
##' * CHANNEL - outputRaster - Channel
##' * SADDLE - outputRaster - Saddle
##' * BSLOPE - outputRaster - Back Slope
##' * FSLOPE - outputRaster - Foot Slope
##' * SSLOPE - outputRaster - Shoulder Slope
##' * HOLLOW - outputRaster - Hollow
##' * FHOLLOW - outputRaster - Foot Hollow
##' * SHOLLOW - outputRaster - Shoulder Hollow
##' * SPUR - outputRaster - Spur
##' * FSPUR - outputRaster - Foot Spur
##' * SSPUR - outputRaster - Shoulder Spur
##' * FORM - outputRaster - Landform
##' * MEM - outputRaster - Maximum Membership
##' * ENTROPY - outputRaster - Entropy
##' * CI - outputRaster - Confusion Index
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_fuzzylandformelementclassification <- function(SLOPE = qgisprocess::qgis_default_value(), MINCURV = qgisprocess::qgis_default_value(), MAXCURV = qgisprocess::qgis_default_value(), PCURV = qgisprocess::qgis_default_value(), TCURV = qgisprocess::qgis_default_value(), PLAIN = qgisprocess::qgis_default_value(), PIT = qgisprocess::qgis_default_value(), PEAK = qgisprocess::qgis_default_value(), RIDGE = qgisprocess::qgis_default_value(), CHANNEL = qgisprocess::qgis_default_value(), SADDLE = qgisprocess::qgis_default_value(), BSLOPE = qgisprocess::qgis_default_value(), FSLOPE = qgisprocess::qgis_default_value(), SSLOPE = qgisprocess::qgis_default_value(), HOLLOW = qgisprocess::qgis_default_value(), FHOLLOW = qgisprocess::qgis_default_value(), SHOLLOW = qgisprocess::qgis_default_value(), SPUR = qgisprocess::qgis_default_value(), FSPUR = qgisprocess::qgis_default_value(), SSPUR = qgisprocess::qgis_default_value(), FORM = qgisprocess::qgis_default_value(), MEM = qgisprocess::qgis_default_value(), ENTROPY = qgisprocess::qgis_default_value(), CI = qgisprocess::qgis_default_value(), SLOPETODEG = qgisprocess::qgis_default_value(), T_SLOPE_MIN = qgisprocess::qgis_default_value(), T_SLOPE_MAX = qgisprocess::qgis_default_value(), T_CURVE_MIN = qgisprocess::qgis_default_value(), T_CURVE_MAX = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:fuzzylandformelementclassification")
  output <- qgisprocess::qgis_run_algorithm("saga:fuzzylandformelementclassification",`SLOPE` = SLOPE, `MINCURV` = MINCURV, `MAXCURV` = MAXCURV, `PCURV` = PCURV, `TCURV` = TCURV, `PLAIN` = PLAIN, `PIT` = PIT, `PEAK` = PEAK, `RIDGE` = RIDGE, `CHANNEL` = CHANNEL, `SADDLE` = SADDLE, `BSLOPE` = BSLOPE, `FSLOPE` = FSLOPE, `SSLOPE` = SSLOPE, `HOLLOW` = HOLLOW, `FHOLLOW` = FHOLLOW, `SHOLLOW` = SHOLLOW, `SPUR` = SPUR, `FSPUR` = FSPUR, `SSPUR` = SSPUR, `FORM` = FORM, `MEM` = MEM, `ENTROPY` = ENTROPY, `CI` = CI, `SLOPETODEG` = SLOPETODEG, `T_SLOPE_MIN` = T_SLOPE_MIN, `T_SLOPE_MAX` = T_SLOPE_MAX, `T_CURVE_MIN` = T_CURVE_MIN, `T_CURVE_MAX` = T_CURVE_MAX,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "PLAIN")
  }
}