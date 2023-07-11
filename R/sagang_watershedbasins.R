##' QGIS Algorithm provided by SAGA Next Gen Watershed basins (sagang:watershedbasins). ---------------- Arguments ----------------  ELEVATION: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer CHANNELS: Channel Network 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer SINKROUTE: Sink Route (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer BASINS: Watershed Basins 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer MINSIZE: Min. Size 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Watershed basins
##'
##' @param ELEVATION `raster` - Elevation. Path to a raster layer.
##' @param CHANNELS `raster` - Channel Network. Path to a raster layer.
##' @param SINKROUTE `raster` - Sink Route. Path to a raster layer.
##' @param BASINS `rasterDestination` - Watershed Basins. Path for new raster layer.
##' @param MINSIZE `number` - Min. Size. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * BASINS - outputRaster - Watershed Basins
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_watershedbasins <- function(ELEVATION = qgisprocess:::qgis_default_value(), CHANNELS = qgisprocess:::qgis_default_value(), SINKROUTE = qgisprocess:::qgis_default_value(), BASINS = qgisprocess:::qgis_default_value(), MINSIZE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:watershedbasins")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:watershedbasins", `ELEVATION` = ELEVATION, `CHANNELS` = CHANNELS, `SINKROUTE` = SINKROUTE, `BASINS` = BASINS, `MINSIZE` = MINSIZE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:watershedbasins", `ELEVATION` = ELEVATION, `CHANNELS` = CHANNELS, `SINKROUTE` = SINKROUTE, `BASINS` = BASINS, `MINSIZE` = MINSIZE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "BASINS")
  }
}