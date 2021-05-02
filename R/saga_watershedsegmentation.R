##' QGIS Algorithm provided by SAGA Watershed segmentation (saga:watershedsegmentation)
##'
##' @title QGIS algorithm Watershed segmentation
##'
##' @param GRID `raster` - Grid. Path to a raster layer.
##' @param OUTPUT `enum`  of `("[0] Seed Value", "[1] Segment ID")` - Output. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DOWN `enum`  of `("[0] Minima", "[1] Maxima")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param JOIN `enum`  of `("[0] do not join", "[1] seed to saddle difference", "[2] seeds difference")` - Join Segments based on Threshold Value. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param THRESHOLD `number` - Threshold. A numeric value.
##' @param EDGE `boolean` - Allow Edge Pixels to be Seeds. 1 for true/yes. 0 for false/no.
##' @param BBORDERS `boolean` - Borders. 1 for true/yes. 0 for false/no.
##' @param SEGMENTS `rasterDestination` - Segments. Path for new raster layer.
##' @param SEEDS `vectorDestination` - Seed Points. Path for new vector layer.
##' @param BORDERS `rasterDestination` - Borders. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * SEGMENTS - outputRaster - Segments
##' * SEEDS - outputVector - Seed Points
##' * BORDERS - outputRaster - Borders
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_watershedsegmentation <- function(GRID = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(), DOWN = qgisprocess::qgis_default_value(), JOIN = qgisprocess::qgis_default_value(), THRESHOLD = qgisprocess::qgis_default_value(), EDGE = qgisprocess::qgis_default_value(), BBORDERS = qgisprocess::qgis_default_value(), SEGMENTS = qgisprocess::qgis_default_value(), SEEDS = qgisprocess::qgis_default_value(), BORDERS = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:watershedsegmentation")
  output <- qgisprocess::qgis_run_algorithm("saga:watershedsegmentation",`GRID` = GRID, `OUTPUT` = OUTPUT, `DOWN` = DOWN, `JOIN` = JOIN, `THRESHOLD` = THRESHOLD, `EDGE` = EDGE, `BBORDERS` = BBORDERS, `SEGMENTS` = SEGMENTS, `SEEDS` = SEEDS, `BORDERS` = BORDERS,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "SEGMENTS")
  }
}