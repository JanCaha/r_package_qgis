##' QGIS Algorithm provided by SAGA Next Gen Overland flow distance to channel network (sagang:overlandflowdistancetochannelnetwork). ---------------- Arguments ----------------  ELEVATION: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer CHANNELS: Channel Network 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer ROUTE: Preferred Routing (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer DISTANCE: Overland Flow Distance 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer DISTVERT: Vertical Overland Flow Distance 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer DISTHORZ: Horizontal Overland Flow Distance 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer TIME: Flow Travel Time 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SDR: Sediment Yield Delivery Ratio 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer FIELDS: Fields (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer PASSES: Fields Visited 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer METHOD: Flow Algorithm 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) D8 		- 1: (1) MFD 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' BOUNDARY: Boundary Cells 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression FLOW_B: Beta 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression FLOW_K: Manning-Strickler Coefficient (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer FLOW_K_DEFAULT: Default 	Default value:	20 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression FLOW_R: Flow Depth (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer FLOW_R_DEFAULT: Default 	Default value:	0.05 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Overland flow distance to channel network
##'
##' @param ELEVATION `raster` - Elevation. Path to a raster layer.
##' @param CHANNELS `raster` - Channel Network. Path to a raster layer.
##' @param ROUTE `raster` - Preferred Routing. Path to a raster layer.
##' @param DISTANCE `rasterDestination` - Overland Flow Distance. Path for new raster layer.
##' @param DISTVERT `rasterDestination` - Vertical Overland Flow Distance. Path for new raster layer.
##' @param DISTHORZ `rasterDestination` - Horizontal Overland Flow Distance. Path for new raster layer.
##' @param TIME `rasterDestination` - Flow Travel Time. Path for new raster layer.
##' @param SDR `rasterDestination` - Sediment Yield Delivery Ratio. Path for new raster layer.
##' @param FIELDS `raster` - Fields. Path to a raster layer.
##' @param PASSES `rasterDestination` - Fields Visited. Path for new raster layer.
##' @param METHOD `enum`  of `("(0) D8", "(1) MFD")` - Flow Algorithm. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param BOUNDARY `boolean` - Boundary Cells. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param FLOW_B `number` - Beta. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param FLOW_K `raster` - Manning-Strickler Coefficient. Path to a raster layer.
##' @param FLOW_K_DEFAULT `number` - Default. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param FLOW_R `raster` - Flow Depth. Path to a raster layer.
##' @param FLOW_R_DEFAULT `number` - Default. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * DISTANCE - outputRaster - Overland Flow Distance
##' * DISTHORZ - outputRaster - Horizontal Overland Flow Distance
##' * DISTVERT - outputRaster - Vertical Overland Flow Distance
##' * PASSES - outputRaster - Fields Visited
##' * SDR - outputRaster - Sediment Yield Delivery Ratio
##' * TIME - outputRaster - Flow Travel Time
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_overlandflowdistancetochannelnetwork <- function(ELEVATION = qgisprocess:::qgis_default_value(), CHANNELS = qgisprocess:::qgis_default_value(), ROUTE = qgisprocess:::qgis_default_value(), DISTANCE = qgisprocess:::qgis_default_value(), DISTVERT = qgisprocess:::qgis_default_value(), DISTHORZ = qgisprocess:::qgis_default_value(), TIME = qgisprocess:::qgis_default_value(), SDR = qgisprocess:::qgis_default_value(), FIELDS = qgisprocess:::qgis_default_value(), PASSES = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), BOUNDARY = qgisprocess:::qgis_default_value(), FLOW_B = qgisprocess:::qgis_default_value(), FLOW_K = qgisprocess:::qgis_default_value(), FLOW_K_DEFAULT = qgisprocess:::qgis_default_value(), FLOW_R = qgisprocess:::qgis_default_value(), FLOW_R_DEFAULT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:overlandflowdistancetochannelnetwork")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:overlandflowdistancetochannelnetwork", `ELEVATION` = ELEVATION, `CHANNELS` = CHANNELS, `ROUTE` = ROUTE, `DISTANCE` = DISTANCE, `DISTVERT` = DISTVERT, `DISTHORZ` = DISTHORZ, `TIME` = TIME, `SDR` = SDR, `FIELDS` = FIELDS, `PASSES` = PASSES, `METHOD` = METHOD, `BOUNDARY` = BOUNDARY, `FLOW_B` = FLOW_B, `FLOW_K` = FLOW_K, `FLOW_K_DEFAULT` = FLOW_K_DEFAULT, `FLOW_R` = FLOW_R, `FLOW_R_DEFAULT` = FLOW_R_DEFAULT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:overlandflowdistancetochannelnetwork", `ELEVATION` = ELEVATION, `CHANNELS` = CHANNELS, `ROUTE` = ROUTE, `DISTANCE` = DISTANCE, `DISTVERT` = DISTVERT, `DISTHORZ` = DISTHORZ, `TIME` = TIME, `SDR` = SDR, `FIELDS` = FIELDS, `PASSES` = PASSES, `METHOD` = METHOD, `BOUNDARY` = BOUNDARY, `FLOW_B` = FLOW_B, `FLOW_K` = FLOW_K, `FLOW_K_DEFAULT` = FLOW_K_DEFAULT, `FLOW_R` = FLOW_R, `FLOW_R_DEFAULT` = FLOW_R_DEFAULT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "DISTANCE")
  }
}