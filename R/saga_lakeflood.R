##' QGIS Algorithm provided by SAGA Lake flood (saga:lakeflood)
##'
##' @title QGIS algorithm Lake flood
##'
##' @param ELEV `raster` - DEM. Path to a raster layer.
##' @param SEEDS `raster` - Seeds. Path to a raster layer.
##' @param OUTDEPTH `rasterDestination` - Lake. Path for new raster layer.
##' @param OUTLEVEL `rasterDestination` - Surface. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTDEPTH - outputRaster - Lake
##' * OUTLEVEL - outputRaster - Surface
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_lakeflood <- function(ELEV = qgisprocess::qgis_default_value(), SEEDS = qgisprocess::qgis_default_value(), OUTDEPTH = qgisprocess::qgis_default_value(), OUTLEVEL = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:lakeflood")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:lakeflood", `ELEV` = ELEV, `SEEDS` = SEEDS, `OUTDEPTH` = OUTDEPTH, `OUTLEVEL` = OUTLEVEL,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:lakeflood", `ELEV` = ELEV, `SEEDS` = SEEDS, `OUTDEPTH` = OUTDEPTH, `OUTLEVEL` = OUTLEVEL,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTDEPTH")
  }
}