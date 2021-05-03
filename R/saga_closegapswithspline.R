##' QGIS Algorithm provided by SAGA Close gaps with spline (saga:closegapswithspline)
##'
##' @title QGIS algorithm Close gaps with spline
##'
##' @param GRID `raster` - Grid. Path to a raster layer.
##' @param MASK `raster` - Mask. Path to a raster layer.
##' @param MAXGAPCELLS `number` - Only Process Gaps with Less Cells. A numeric value.
##' @param MAXPOINTS `number` - Maximum Points. A numeric value.
##' @param LOCALPOINTS `number` - Number of Points for Local Interpolation. A numeric value.
##' @param EXTENDED `boolean` - Extended Neighourhood. 1 for true/yes. 0 for false/no.
##' @param NEIGHBOURS `enum`  of `("[0] Neumann", "[1] Moore")` - Neighbourhood. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param RADIUS `number` - Radius (Cells). A numeric value.
##' @param RELAXATION `number` - Relaxation. A numeric value.
##' @param CLOSED `rasterDestination` - Closed Gaps Grid. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * CLOSED - outputRaster - Closed Gaps Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_closegapswithspline <- function(GRID = qgisprocess::qgis_default_value(), MASK = qgisprocess::qgis_default_value(), MAXGAPCELLS = qgisprocess::qgis_default_value(), MAXPOINTS = qgisprocess::qgis_default_value(), LOCALPOINTS = qgisprocess::qgis_default_value(), EXTENDED = qgisprocess::qgis_default_value(), NEIGHBOURS = qgisprocess::qgis_default_value(), RADIUS = qgisprocess::qgis_default_value(), RELAXATION = qgisprocess::qgis_default_value(), CLOSED = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:closegapswithspline")

  output <- qgisprocess::qgis_run_algorithm("saga:closegapswithspline", `GRID` = GRID, `MASK` = MASK, `MAXGAPCELLS` = MAXGAPCELLS, `MAXPOINTS` = MAXPOINTS, `LOCALPOINTS` = LOCALPOINTS, `EXTENDED` = EXTENDED, `NEIGHBOURS` = NEIGHBOURS, `RADIUS` = RADIUS, `RELAXATION` = RELAXATION, `CLOSED` = CLOSED,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "CLOSED")
  }
}