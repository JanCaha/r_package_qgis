##' QGIS Algorithm provided by SAGA Connectivity analysis (saga:connectivityanalysis)
##'
##' @title QGIS algorithm Connectivity analysis
##'
##' @param INPUT_GRID `raster` - Input Binary Grid. Path to a raster layer.
##' @param FILTERED_MASK `rasterDestination` - Filtered Image. Path for new raster layer.
##' @param FILTER `boolean` - Apply Filter?. 1 for true/yes. 0 for false/no.
##' @param SIZE `number` - Filter Size (Radius). A numeric value.
##' @param SYMBOLIC_IMAGE `rasterDestination` - Symbolic Image. Path for new raster layer.
##' @param OUTLINES `vectorDestination` - Outlines. Path for new vector layer.
##' @param BORDER_PIXEL_CENTERS `boolean` - Pixel Centers?. 1 for true/yes. 0 for false/no.
##' @param REMOVE_MARGINAL_REGIONS `boolean` - Remove Border Regions?. 1 for true/yes. 0 for false/no.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * FILTERED_MASK - outputRaster - Filtered Image
##' * SYMBOLIC_IMAGE - outputRaster - Symbolic Image
##' * OUTLINES - outputVector - Outlines
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_connectivityanalysis <- function(INPUT_GRID = qgisprocess::qgis_default_value(), FILTERED_MASK = qgisprocess::qgis_default_value(), FILTER = qgisprocess::qgis_default_value(), SIZE = qgisprocess::qgis_default_value(), SYMBOLIC_IMAGE = qgisprocess::qgis_default_value(), OUTLINES = qgisprocess::qgis_default_value(), BORDER_PIXEL_CENTERS = qgisprocess::qgis_default_value(), REMOVE_MARGINAL_REGIONS = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:connectivityanalysis",`INPUT_GRID` = INPUT_GRID, `FILTERED_MASK` = FILTERED_MASK, `FILTER` = FILTER, `SIZE` = SIZE, `SYMBOLIC_IMAGE` = SYMBOLIC_IMAGE, `OUTLINES` = OUTLINES, `BORDER_PIXEL_CENTERS` = BORDER_PIXEL_CENTERS, `REMOVE_MARGINAL_REGIONS` = REMOVE_MARGINAL_REGIONS,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "FILTERED_MASK")
  }
}