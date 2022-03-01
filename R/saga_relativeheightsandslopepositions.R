##' QGIS Algorithm provided by SAGA Relative heights and slope positions (saga:relativeheightsandslopepositions)
##'
##' @title QGIS algorithm Relative heights and slope positions
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param W `number` - w. A numeric value.
##' @param T `number` - t. A numeric value.
##' @param E `number` - e. A numeric value.
##' @param HO `rasterDestination` - Slope Height. Path for new raster layer.
##' @param HU `rasterDestination` - Valley Depth. Path for new raster layer.
##' @param NH `rasterDestination` - Normalized Height. Path for new raster layer.
##' @param SH `rasterDestination` - Standardized Height. Path for new raster layer.
##' @param MS `rasterDestination` - Mid-Slope Position. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * HO - outputRaster - Slope Height
##' * HU - outputRaster - Valley Depth
##' * MS - outputRaster - Mid-Slope Position
##' * NH - outputRaster - Normalized Height
##' * SH - outputRaster - Standardized Height
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_relativeheightsandslopepositions <- function(DEM = qgisprocess::qgis_default_value(), W = qgisprocess::qgis_default_value(), T = qgisprocess::qgis_default_value(), E = qgisprocess::qgis_default_value(), HO = qgisprocess::qgis_default_value(), HU = qgisprocess::qgis_default_value(), NH = qgisprocess::qgis_default_value(), SH = qgisprocess::qgis_default_value(), MS = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:relativeheightsandslopepositions")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:relativeheightsandslopepositions", `DEM` = DEM, `W` = W, `T` = T, `E` = E, `HO` = HO, `HU` = HU, `NH` = NH, `SH` = SH, `MS` = MS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:relativeheightsandslopepositions", `DEM` = DEM, `W` = W, `T` = T, `E` = E, `HO` = HO, `HU` = HU, `NH` = NH, `SH` = SH, `MS` = MS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "HO")
  }
}