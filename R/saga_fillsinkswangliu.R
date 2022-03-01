##' QGIS Algorithm provided by SAGA Fill sinks (wang & liu) (saga:fillsinkswangliu)
##'
##' @title QGIS algorithm Fill sinks (wang & liu)
##'
##' @param ELEV `raster` - DEM. Path to a raster layer.
##' @param MINSLOPE `number` - Minimum Slope (Degree). A numeric value.
##' @param FILLED `rasterDestination` - Filled DEM. Path for new raster layer.
##' @param FDIR `rasterDestination` - Flow Directions. Path for new raster layer.
##' @param WSHED `rasterDestination` - Watershed Basins. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * FDIR - outputRaster - Flow Directions
##' * FILLED - outputRaster - Filled DEM
##' * WSHED - outputRaster - Watershed Basins
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_fillsinkswangliu <- function(ELEV = qgisprocess::qgis_default_value(), MINSLOPE = qgisprocess::qgis_default_value(), FILLED = qgisprocess::qgis_default_value(), FDIR = qgisprocess::qgis_default_value(), WSHED = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:fillsinkswangliu")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:fillsinkswangliu", `ELEV` = ELEV, `MINSLOPE` = MINSLOPE, `FILLED` = FILLED, `FDIR` = FDIR, `WSHED` = WSHED,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:fillsinkswangliu", `ELEV` = ELEV, `MINSLOPE` = MINSLOPE, `FILLED` = FILLED, `FDIR` = FDIR, `WSHED` = WSHED,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "FDIR")
  }
}