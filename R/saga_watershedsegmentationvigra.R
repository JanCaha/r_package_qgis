##' QGIS Algorithm provided by SAGA Watershed segmentation (vigra) (saga:watershedsegmentationvigra)
##'
##' @title QGIS algorithm Watershed segmentation (vigra)
##'
##' @param INPUT `raster` - Input. Path to a raster layer.
##' @param OUTPUT `rasterDestination` - Segmentation. Path for new raster layer.
##' @param SCALE `number` - Width of gradient filter. A numeric value.
##' @param RGB `boolean` - RGB coded data. 1 for true/yes. 0 for false/no.
##' @param EDGES `boolean` - Edges. 1 for true/yes. 0 for false/no.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Segmentation
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_watershedsegmentationvigra <- function(INPUT = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(), SCALE = qgisprocess::qgis_default_value(), RGB = qgisprocess::qgis_default_value(), EDGES = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:watershedsegmentationvigra",`INPUT` = INPUT, `OUTPUT` = OUTPUT, `SCALE` = SCALE, `RGB` = RGB, `EDGES` = EDGES,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
}
}