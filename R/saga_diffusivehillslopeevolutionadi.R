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
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * MODEL - outputRaster - Modelled Elevation
##' * DIFF - outputRaster - Elevation Difference
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_diffusivehillslopeevolutionadi <- function(DEM = qgisprocess::qgis_default_value(), CHANNELS = qgisprocess::qgis_default_value(), UPDATE = qgisprocess::qgis_default_value(), KAPPA = qgisprocess::qgis_default_value(), DURATION = qgisprocess::qgis_default_value(), TIMESTEP = qgisprocess::qgis_default_value(), DTIME = qgisprocess::qgis_default_value(), MODEL = qgisprocess::qgis_default_value(), DIFF = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:diffusivehillslopeevolutionadi")
  output <- qgisprocess::qgis_run_algorithm("saga:diffusivehillslopeevolutionadi",`DEM` = DEM, `CHANNELS` = CHANNELS, `UPDATE` = UPDATE, `KAPPA` = KAPPA, `DURATION` = DURATION, `TIMESTEP` = TIMESTEP, `DTIME` = DTIME, `MODEL` = MODEL, `DIFF` = DIFF,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "MODEL")
  }
}