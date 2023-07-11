##' QGIS Algorithm provided by SAGA Next Gen Fuzzy landform element classification (sagang:fuzzylandformelementclassification). ---------------- Arguments ----------------  ELEVATION: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer SLOPE: Slope 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer MINCURV: Minimum Curvature 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer MAXCURV: Maximum Curvature 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer PCURV: Profile Curvature 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer TCURV: Tangential Curvature 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer FORM: Landform 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer MEM: Maximum Membership 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer ENTROPY: Entropy 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer CI: Confusion Index 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer PLAIN: Plain 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer PIT: Pit 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer PEAK: Peak 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer RIDGE: Ridge 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer CHANNEL: Channel 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SADDLE: Saddle 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer BSLOPE: Back Slope 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer FSLOPE: Foot Slope 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SSLOPE: Shoulder Slope 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer HOLLOW: Hollow 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer FHOLLOW: Foot Hollow 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SHOLLOW: Shoulder Hollow 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SPUR: Spur 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer FSPUR: Foot Spur 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SSPUR: Shoulder Spur 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer INPUT: Input 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) elevation 		- 1: (1) slope and curvatures 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' MEMBERSHIP: Memberships 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SLOPETODEG: Slope Grid Units 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) degree 		- 1: (1) radians 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Fuzzy landform element classification
##'
##' @param ELEVATION `raster` - Elevation. Path to a raster layer.
##' @param SLOPE `raster` - Slope. Path to a raster layer.
##' @param MINCURV `raster` - Minimum Curvature. Path to a raster layer.
##' @param MAXCURV `raster` - Maximum Curvature. Path to a raster layer.
##' @param PCURV `raster` - Profile Curvature. Path to a raster layer.
##' @param TCURV `raster` - Tangential Curvature. Path to a raster layer.
##' @param FORM `rasterDestination` - Landform. Path for new raster layer.
##' @param MEM `rasterDestination` - Maximum Membership. Path for new raster layer.
##' @param ENTROPY `rasterDestination` - Entropy. Path for new raster layer.
##' @param CI `rasterDestination` - Confusion Index. Path for new raster layer.
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
##' @param INPUT `enum`  of `("(0) elevation", "(1) slope and curvatures")` - Input. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param MEMBERSHIP `boolean` - Memberships. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SLOPETODEG `enum`  of `("(0) degree", "(1) radians")` - Slope Grid Units. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * BSLOPE - outputRaster - Back Slope
##' * CHANNEL - outputRaster - Channel
##' * CI - outputRaster - Confusion Index
##' * ENTROPY - outputRaster - Entropy
##' * FHOLLOW - outputRaster - Foot Hollow
##' * FORM - outputRaster - Landform
##' * FSLOPE - outputRaster - Foot Slope
##' * FSPUR - outputRaster - Foot Spur
##' * HOLLOW - outputRaster - Hollow
##' * MEM - outputRaster - Maximum Membership
##' * PEAK - outputRaster - Peak
##' * PIT - outputRaster - Pit
##' * PLAIN - outputRaster - Plain
##' * RIDGE - outputRaster - Ridge
##' * SADDLE - outputRaster - Saddle
##' * SHOLLOW - outputRaster - Shoulder Hollow
##' * SPUR - outputRaster - Spur
##' * SSLOPE - outputRaster - Shoulder Slope
##' * SSPUR - outputRaster - Shoulder Spur
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_fuzzylandformelementclassification <- function(ELEVATION = qgisprocess:::qgis_default_value(), SLOPE = qgisprocess:::qgis_default_value(), MINCURV = qgisprocess:::qgis_default_value(), MAXCURV = qgisprocess:::qgis_default_value(), PCURV = qgisprocess:::qgis_default_value(), TCURV = qgisprocess:::qgis_default_value(), FORM = qgisprocess:::qgis_default_value(), MEM = qgisprocess:::qgis_default_value(), ENTROPY = qgisprocess:::qgis_default_value(), CI = qgisprocess:::qgis_default_value(), PLAIN = qgisprocess:::qgis_default_value(), PIT = qgisprocess:::qgis_default_value(), PEAK = qgisprocess:::qgis_default_value(), RIDGE = qgisprocess:::qgis_default_value(), CHANNEL = qgisprocess:::qgis_default_value(), SADDLE = qgisprocess:::qgis_default_value(), BSLOPE = qgisprocess:::qgis_default_value(), FSLOPE = qgisprocess:::qgis_default_value(), SSLOPE = qgisprocess:::qgis_default_value(), HOLLOW = qgisprocess:::qgis_default_value(), FHOLLOW = qgisprocess:::qgis_default_value(), SHOLLOW = qgisprocess:::qgis_default_value(), SPUR = qgisprocess:::qgis_default_value(), FSPUR = qgisprocess:::qgis_default_value(), SSPUR = qgisprocess:::qgis_default_value(), INPUT = qgisprocess:::qgis_default_value(), MEMBERSHIP = qgisprocess:::qgis_default_value(), SLOPETODEG = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:fuzzylandformelementclassification")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:fuzzylandformelementclassification", `ELEVATION` = ELEVATION, `SLOPE` = SLOPE, `MINCURV` = MINCURV, `MAXCURV` = MAXCURV, `PCURV` = PCURV, `TCURV` = TCURV, `FORM` = FORM, `MEM` = MEM, `ENTROPY` = ENTROPY, `CI` = CI, `PLAIN` = PLAIN, `PIT` = PIT, `PEAK` = PEAK, `RIDGE` = RIDGE, `CHANNEL` = CHANNEL, `SADDLE` = SADDLE, `BSLOPE` = BSLOPE, `FSLOPE` = FSLOPE, `SSLOPE` = SSLOPE, `HOLLOW` = HOLLOW, `FHOLLOW` = FHOLLOW, `SHOLLOW` = SHOLLOW, `SPUR` = SPUR, `FSPUR` = FSPUR, `SSPUR` = SSPUR, `INPUT` = INPUT, `MEMBERSHIP` = MEMBERSHIP, `SLOPETODEG` = SLOPETODEG,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:fuzzylandformelementclassification", `ELEVATION` = ELEVATION, `SLOPE` = SLOPE, `MINCURV` = MINCURV, `MAXCURV` = MAXCURV, `PCURV` = PCURV, `TCURV` = TCURV, `FORM` = FORM, `MEM` = MEM, `ENTROPY` = ENTROPY, `CI` = CI, `PLAIN` = PLAIN, `PIT` = PIT, `PEAK` = PEAK, `RIDGE` = RIDGE, `CHANNEL` = CHANNEL, `SADDLE` = SADDLE, `BSLOPE` = BSLOPE, `FSLOPE` = FSLOPE, `SSLOPE` = SSLOPE, `HOLLOW` = HOLLOW, `FHOLLOW` = FHOLLOW, `SHOLLOW` = SHOLLOW, `SPUR` = SPUR, `FSPUR` = FSPUR, `SSPUR` = SSPUR, `INPUT` = INPUT, `MEMBERSHIP` = MEMBERSHIP, `SLOPETODEG` = SLOPETODEG,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "BSLOPE")
  }
}