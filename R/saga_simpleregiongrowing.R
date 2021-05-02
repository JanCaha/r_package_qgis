##' QGIS Algorithm provided by SAGA Simple region growing (saga:simpleregiongrowing)
##'
##' @title QGIS algorithm Simple region growing
##'
##' @param SEEDS `raster` - Seeds. Path to a raster layer.
##' @param FEATURES `multilayer` - Features. .
##' @param METHOD `enum`  of `("[0] feature space and position", "[1] feature space")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param NEIGHBOUR `enum`  of `("[0] 4 (von Neumann)", "[1] 8 (Moore)")` - Neighbourhood. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SIG_1 `number` - Variance in Feature Space. A numeric value.
##' @param SIG_2 `number` - Variance in Position Space. A numeric value.
##' @param THRESHOLD `number` - Threshold - Similarity. A numeric value.
##' @param REFRESH `boolean` - Refresh. 1 for true/yes. 0 for false/no.
##' @param LEAFSIZE `number` - Leaf Size (for Speed Optimisation). A numeric value.
##' @param SEGMENTS `rasterDestination` - Segments. Path for new raster layer.
##' @param SIMILARITY `rasterDestination` - Similarity. Path for new raster layer.
##' @param TABLE `vectorDestination` - Seeds. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * SEGMENTS - outputRaster - Segments
##' * SIMILARITY - outputRaster - Similarity
##' * TABLE - outputVector - Seeds
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_simpleregiongrowing <- function(SEEDS = qgisprocess::qgis_default_value(), FEATURES = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), NEIGHBOUR = qgisprocess::qgis_default_value(), SIG_1 = qgisprocess::qgis_default_value(), SIG_2 = qgisprocess::qgis_default_value(), THRESHOLD = qgisprocess::qgis_default_value(), REFRESH = qgisprocess::qgis_default_value(), LEAFSIZE = qgisprocess::qgis_default_value(), SEGMENTS = qgisprocess::qgis_default_value(), SIMILARITY = qgisprocess::qgis_default_value(), TABLE = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:simpleregiongrowing")
  output <- qgisprocess::qgis_run_algorithm("saga:simpleregiongrowing",`SEEDS` = SEEDS, `FEATURES` = FEATURES, `METHOD` = METHOD, `NEIGHBOUR` = NEIGHBOUR, `SIG_1` = SIG_1, `SIG_2` = SIG_2, `THRESHOLD` = THRESHOLD, `REFRESH` = REFRESH, `LEAFSIZE` = LEAFSIZE, `SEGMENTS` = SEGMENTS, `SIMILARITY` = SIMILARITY, `TABLE` = TABLE,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "SEGMENTS")
  }
}