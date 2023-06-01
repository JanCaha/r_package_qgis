##' QGIS Algorithm provided by SAGA Wind effect (saga:windeffect)
##'
##' @title QGIS algorithm Wind effect
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param DIR `raster` - Wind Direction. Path to a raster layer.
##' @param LEN `raster` - Wind Speed. Path to a raster layer.
##' @param DIR_CONST `number` - Constant Wind Direction (Degree). A numeric value.
##' @param MAXDIST `number` - Search Distance (km). A numeric value.
##' @param ACCEL `number` - Acceleration. A numeric value.
##' @param DIR_UNITS `enum`  of `("[0] radians", "[1] degree")` - Wind Direction Units. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param LEN_SCALE `number` - Wind Speed Scale Factor. A numeric value.
##' @param EFFECT `rasterDestination` - Wind Effect. Path for new raster layer.
##' @param LUV `rasterDestination` - Windward Effect. Path for new raster layer.
##' @param LEE `rasterDestination` - Leeward Effect. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * EFFECT - outputRaster - Wind Effect
##' * LEE - outputRaster - Leeward Effect
##' * LUV - outputRaster - Windward Effect
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_windeffect <- function(DEM = qgisprocess:::qgis_default_value(), DIR = qgisprocess:::qgis_default_value(), LEN = qgisprocess:::qgis_default_value(), DIR_CONST = qgisprocess:::qgis_default_value(), MAXDIST = qgisprocess:::qgis_default_value(), ACCEL = qgisprocess:::qgis_default_value(), DIR_UNITS = qgisprocess:::qgis_default_value(), LEN_SCALE = qgisprocess:::qgis_default_value(), EFFECT = qgisprocess:::qgis_default_value(), LUV = qgisprocess:::qgis_default_value(), LEE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:windeffect")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:windeffect", `DEM` = DEM, `DIR` = DIR, `LEN` = LEN, `DIR_CONST` = DIR_CONST, `MAXDIST` = MAXDIST, `ACCEL` = ACCEL, `DIR_UNITS` = DIR_UNITS, `LEN_SCALE` = LEN_SCALE, `EFFECT` = EFFECT, `LUV` = LUV, `LEE` = LEE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:windeffect", `DEM` = DEM, `DIR` = DIR, `LEN` = LEN, `DIR_CONST` = DIR_CONST, `MAXDIST` = MAXDIST, `ACCEL` = ACCEL, `DIR_UNITS` = DIR_UNITS, `LEN_SCALE` = LEN_SCALE, `EFFECT` = EFFECT, `LUV` = LUV, `LEE` = LEE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "EFFECT")
  }
}