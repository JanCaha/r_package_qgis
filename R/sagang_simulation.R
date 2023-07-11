##' QGIS Algorithm provided by SAGA Next Gen Simulation (sagang:simulation). ---------------- Arguments ----------------  DEM: DEM 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer FUEL: Fuel Model 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer WINDSPD: Wind Speed 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer WINDDIR: Wind Direction 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer M1H: Dead Fuel Moisture 1H 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer M10H: Dead Fuel Moisture 10H 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer M100H: Dead Fuel Moisture 100H 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer MHERB: Herbaceous Fuel Moisture 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer MWOOD: Wood Fuel Moisture 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer IGNITION: Ignition Points 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer TIME: Time 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer FLAME: Flame Length 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer INTENSITY: Intensity 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer UPDATEVIEW: Update View 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Simulation
##'
##' @param DEM `raster` - DEM. Path to a raster layer.
##' @param FUEL `raster` - Fuel Model. Path to a raster layer.
##' @param WINDSPD `raster` - Wind Speed. Path to a raster layer.
##' @param WINDDIR `raster` - Wind Direction. Path to a raster layer.
##' @param M1H `raster` - Dead Fuel Moisture 1H. Path to a raster layer.
##' @param M10H `raster` - Dead Fuel Moisture 10H. Path to a raster layer.
##' @param M100H `raster` - Dead Fuel Moisture 100H. Path to a raster layer.
##' @param MHERB `raster` - Herbaceous Fuel Moisture. Path to a raster layer.
##' @param MWOOD `raster` - Wood Fuel Moisture. Path to a raster layer.
##' @param IGNITION `raster` - Ignition Points. Path to a raster layer.
##' @param TIME `rasterDestination` - Time. Path for new raster layer.
##' @param FLAME `rasterDestination` - Flame Length. Path for new raster layer.
##' @param INTENSITY `rasterDestination` - Intensity. Path for new raster layer.
##' @param UPDATEVIEW `boolean` - Update View. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * FLAME - outputRaster - Flame Length
##' * INTENSITY - outputRaster - Intensity
##' * TIME - outputRaster - Time
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_simulation <- function(DEM = qgisprocess:::qgis_default_value(), FUEL = qgisprocess:::qgis_default_value(), WINDSPD = qgisprocess:::qgis_default_value(), WINDDIR = qgisprocess:::qgis_default_value(), M1H = qgisprocess:::qgis_default_value(), M10H = qgisprocess:::qgis_default_value(), M100H = qgisprocess:::qgis_default_value(), MHERB = qgisprocess:::qgis_default_value(), MWOOD = qgisprocess:::qgis_default_value(), IGNITION = qgisprocess:::qgis_default_value(), TIME = qgisprocess:::qgis_default_value(), FLAME = qgisprocess:::qgis_default_value(), INTENSITY = qgisprocess:::qgis_default_value(), UPDATEVIEW = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:simulation")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:simulation", `DEM` = DEM, `FUEL` = FUEL, `WINDSPD` = WINDSPD, `WINDDIR` = WINDDIR, `M1H` = M1H, `M10H` = M10H, `M100H` = M100H, `MHERB` = MHERB, `MWOOD` = MWOOD, `IGNITION` = IGNITION, `TIME` = TIME, `FLAME` = FLAME, `INTENSITY` = INTENSITY, `UPDATEVIEW` = UPDATEVIEW,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:simulation", `DEM` = DEM, `FUEL` = FUEL, `WINDSPD` = WINDSPD, `WINDDIR` = WINDDIR, `M1H` = M1H, `M10H` = M10H, `M100H` = M100H, `MHERB` = MHERB, `MWOOD` = MWOOD, `IGNITION` = IGNITION, `TIME` = TIME, `FLAME` = FLAME, `INTENSITY` = INTENSITY, `UPDATEVIEW` = UPDATEVIEW,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "FLAME")
  }
}