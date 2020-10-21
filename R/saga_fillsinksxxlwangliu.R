##' QGIS Algorithm provided by SAGA Fill sinks xxl (wang & liu) (saga:fillsinksxxlwangliu)
##'
##' @title QGIS algorithm Fill sinks xxl (wang & liu)
##'
##' @param ELEV `raster` - DEM. Path to a raster layer.
##' @param MINSLOPE `number` - Minimum Slope (Degree). A numeric value.
##' @param FILLED `rasterDestination` - Filled DEM. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * FILLED - outputRaster - Filled DEM
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_fillsinksxxlwangliu <- function(ELEV = qgisprocess::qgis_default_value(), MINSLOPE = qgisprocess::qgis_default_value(), FILLED = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:fillsinksxxlwangliu",`ELEV` = ELEV, `MINSLOPE` = MINSLOPE, `FILLED` = FILLED,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "FILLED")
  }
}