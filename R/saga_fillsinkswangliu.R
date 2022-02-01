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
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * FILLED - outputRaster - Filled DEM
##' * FDIR - outputRaster - Flow Directions
##' * WSHED - outputRaster - Watershed Basins
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_fillsinkswangliu <- function(ELEV = qgisprocess::qgis_default_value(), MINSLOPE = qgisprocess::qgis_default_value(), FILLED = qgisprocess::qgis_default_value(), FDIR = qgisprocess::qgis_default_value(), WSHED = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:fillsinkswangliu")

  output <- qgisprocess::qgis_run_algorithm("saga:fillsinkswangliu", `ELEV` = ELEV, `MINSLOPE` = MINSLOPE, `FILLED` = FILLED, `FDIR` = FDIR, `WSHED` = WSHED,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "FILLED")
  }
}