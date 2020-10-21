##' QGIS Algorithm provided by SAGA Remove small pixel clumps (to no-data) (saga:removesmallpixelclumpstonodata)
##'
##' @title QGIS algorithm Remove small pixel clumps (to no-data)
##'
##' @param GRID `raster` - Input Grid. Path to a raster layer.
##' @param THRESHOLD `number` - Min. Size. A numeric value.
##' @param OUTPUT `rasterDestination` - Filtered Grid. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Filtered Grid
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_removesmallpixelclumpstonodata <- function(GRID = qgisprocess::qgis_default_value(), THRESHOLD = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:removesmallpixelclumpstonodata",`GRID` = GRID, `THRESHOLD` = THRESHOLD, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}