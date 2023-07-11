##' QGIS Algorithm provided by SAGA Next Gen Watershed basins (extended) (sagang:watershedbasinsextended). ---------------- Arguments ----------------  DEM: DEM 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer CHANNELS: Drainage Network 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer BASINS: Basins 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SUBBASINS: Subbasins 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer V_BASINS: Basins 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer V_SUBBASINS: Subbasins 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer HEADS: River Heads 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer MOUTHS: River Mouths 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer DISTANCE: Flow Distances 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Watershed basins (extended)
##'
##' @param DEM `raster` - DEM. Path to a raster layer.
##' @param CHANNELS `raster` - Drainage Network. Path to a raster layer.
##' @param BASINS `rasterDestination` - Basins. Path for new raster layer.
##' @param SUBBASINS `rasterDestination` - Subbasins. Path for new raster layer.
##' @param V_BASINS `vectorDestination` - Basins. Path for new vector layer.
##' @param V_SUBBASINS `vectorDestination` - Subbasins. Path for new vector layer.
##' @param HEADS `vectorDestination` - River Heads. Path for new vector layer.
##' @param MOUTHS `vectorDestination` - River Mouths. Path for new vector layer.
##' @param DISTANCE `boolean` - Flow Distances. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * BASINS - outputRaster - Basins
##' * HEADS - outputVector - River Heads
##' * MOUTHS - outputVector - River Mouths
##' * SUBBASINS - outputRaster - Subbasins
##' * V_BASINS - outputVector - Basins
##' * V_SUBBASINS - outputVector - Subbasins
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_watershedbasinsextended <- function(DEM = qgisprocess:::qgis_default_value(), CHANNELS = qgisprocess:::qgis_default_value(), BASINS = qgisprocess:::qgis_default_value(), SUBBASINS = qgisprocess:::qgis_default_value(), V_BASINS = qgisprocess:::qgis_default_value(), V_SUBBASINS = qgisprocess:::qgis_default_value(), HEADS = qgisprocess:::qgis_default_value(), MOUTHS = qgisprocess:::qgis_default_value(), DISTANCE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:watershedbasinsextended")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:watershedbasinsextended", `DEM` = DEM, `CHANNELS` = CHANNELS, `BASINS` = BASINS, `SUBBASINS` = SUBBASINS, `V_BASINS` = V_BASINS, `V_SUBBASINS` = V_SUBBASINS, `HEADS` = HEADS, `MOUTHS` = MOUTHS, `DISTANCE` = DISTANCE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:watershedbasinsextended", `DEM` = DEM, `CHANNELS` = CHANNELS, `BASINS` = BASINS, `SUBBASINS` = SUBBASINS, `V_BASINS` = V_BASINS, `V_SUBBASINS` = V_SUBBASINS, `HEADS` = HEADS, `MOUTHS` = MOUTHS, `DISTANCE` = DISTANCE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "BASINS")
  }
}