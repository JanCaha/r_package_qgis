##' QGIS Algorithm provided by SAGA Next Gen Fire risk analysis (sagang:fireriskanalysis). ---------------- Arguments ----------------  DEM: DEM 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer FUEL: Fuel Model 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer WINDSPD: Wind Speed 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer WINDDIR: Wind Direction 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer M1H: Dead Fuel Moisture 1H 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer M10H: Dead Fuel Moisture 10H 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer M100H: Dead Fuel Moisture 100H 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer MHERB: Herbaceous Fuel Moisture 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer MWOOD: Wood Fuel Moisture 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer VALUE: Value (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer BASEPROB: Base Probability (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer DANGER: Danger 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer COMPPROB: Compound Probability 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer PRIORITY: Priority Index 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer MONTECARLO: Number of Events 	Default value:	1000 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression INTERVAL: Fire Length 	Default value:	100 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Fire risk analysis
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
##' @param VALUE `raster` - Value. Path to a raster layer.
##' @param BASEPROB `raster` - Base Probability. Path to a raster layer.
##' @param DANGER `rasterDestination` - Danger. Path for new raster layer.
##' @param COMPPROB `rasterDestination` - Compound Probability. Path for new raster layer.
##' @param PRIORITY `rasterDestination` - Priority Index. Path for new raster layer.
##' @param MONTECARLO `number` - Number of Events. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param INTERVAL `number` - Fire Length. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * COMPPROB - outputRaster - Compound Probability
##' * DANGER - outputRaster - Danger
##' * PRIORITY - outputRaster - Priority Index
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_fireriskanalysis <- function(DEM = qgisprocess:::qgis_default_value(), FUEL = qgisprocess:::qgis_default_value(), WINDSPD = qgisprocess:::qgis_default_value(), WINDDIR = qgisprocess:::qgis_default_value(), M1H = qgisprocess:::qgis_default_value(), M10H = qgisprocess:::qgis_default_value(), M100H = qgisprocess:::qgis_default_value(), MHERB = qgisprocess:::qgis_default_value(), MWOOD = qgisprocess:::qgis_default_value(), VALUE = qgisprocess:::qgis_default_value(), BASEPROB = qgisprocess:::qgis_default_value(), DANGER = qgisprocess:::qgis_default_value(), COMPPROB = qgisprocess:::qgis_default_value(), PRIORITY = qgisprocess:::qgis_default_value(), MONTECARLO = qgisprocess:::qgis_default_value(), INTERVAL = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:fireriskanalysis")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:fireriskanalysis", `DEM` = DEM, `FUEL` = FUEL, `WINDSPD` = WINDSPD, `WINDDIR` = WINDDIR, `M1H` = M1H, `M10H` = M10H, `M100H` = M100H, `MHERB` = MHERB, `MWOOD` = MWOOD, `VALUE` = VALUE, `BASEPROB` = BASEPROB, `DANGER` = DANGER, `COMPPROB` = COMPPROB, `PRIORITY` = PRIORITY, `MONTECARLO` = MONTECARLO, `INTERVAL` = INTERVAL,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:fireriskanalysis", `DEM` = DEM, `FUEL` = FUEL, `WINDSPD` = WINDSPD, `WINDDIR` = WINDDIR, `M1H` = M1H, `M10H` = M10H, `M100H` = M100H, `MHERB` = MHERB, `MWOOD` = MWOOD, `VALUE` = VALUE, `BASEPROB` = BASEPROB, `DANGER` = DANGER, `COMPPROB` = COMPPROB, `PRIORITY` = PRIORITY, `MONTECARLO` = MONTECARLO, `INTERVAL` = INTERVAL,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "COMPPROB")
  }
}