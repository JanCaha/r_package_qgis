##' QGIS Algorithm provided by SAGA Diffusive hillslope evolution (adi) (saga:diffusivehillslopeevolutionadi)
##'
##' @title QGIS algorithm Diffusive hillslope evolution (adi)
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param CHANNELS `raster` - Channel Mask. Path to a raster layer.
##' @param UPDATE `boolean` - Update. 1 for true/yes. 0 for false/no.
##' @param KAPPA `number` - Diffusivity (m2/kyr). A numeric value.
##' @param DURATION `number` - Simulation Time (kyr). A numeric value.
##' @param TIMESTEP `enum`  of `("[0] user defined", "[1] automatically")` - Time Step. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DTIME `number` - Time Step (kyr). A numeric value.
##' @param MODEL `rasterDestination` - Modelled Elevation. Path for new raster layer.
##' @param DIFF `rasterDestination` - Elevation Difference. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * DIFF - outputRaster - Elevation Difference
##' * MODEL - outputRaster - Modelled Elevation
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_diffusivehillslopeevolutionadi <- function(DEM = qgisprocess:::qgis_default_value(), CHANNELS = qgisprocess:::qgis_default_value(), UPDATE = qgisprocess:::qgis_default_value(), KAPPA = qgisprocess:::qgis_default_value(), DURATION = qgisprocess:::qgis_default_value(), TIMESTEP = qgisprocess:::qgis_default_value(), DTIME = qgisprocess:::qgis_default_value(), MODEL = qgisprocess:::qgis_default_value(), DIFF = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:diffusivehillslopeevolutionadi")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:diffusivehillslopeevolutionadi", `DEM` = DEM, `CHANNELS` = CHANNELS, `UPDATE` = UPDATE, `KAPPA` = KAPPA, `DURATION` = DURATION, `TIMESTEP` = TIMESTEP, `DTIME` = DTIME, `MODEL` = MODEL, `DIFF` = DIFF,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:diffusivehillslopeevolutionadi", `DEM` = DEM, `CHANNELS` = CHANNELS, `UPDATE` = UPDATE, `KAPPA` = KAPPA, `DURATION` = DURATION, `TIMESTEP` = TIMESTEP, `DTIME` = DTIME, `MODEL` = MODEL, `DIFF` = DIFF,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "DIFF")
  }
}