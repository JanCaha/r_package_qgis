##' QGIS Algorithm provided by SAGA Pattern analysis (saga:patternanalysis)
##'
##' @title QGIS algorithm Pattern analysis
##'
##' @param INPUT `raster` - Input Grid. Path to a raster layer.
##' @param WINSIZE `enum`  of `("[0] 3 X 3", "[1] 5 X 5", "[2] 7 X 7")` - Size of Analysis Window. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param MAXNUMCLASS `number` - Max. Number of Classes. A numeric value.
##' @param RELATIVE `rasterDestination` - Relative Richness. Path for new raster layer.
##' @param DIVERSITY `rasterDestination` - Diversity. Path for new raster layer.
##' @param DOMINANCE `rasterDestination` - Dominance. Path for new raster layer.
##' @param FRAGMENTATION `rasterDestination` - Fragmentation. Path for new raster layer.
##' @param NDC `rasterDestination` - Number of Different Classes. Path for new raster layer.
##' @param CVN `rasterDestination` - Center Versus Neighbours. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * RELATIVE - outputRaster - Relative Richness
##' * DIVERSITY - outputRaster - Diversity
##' * DOMINANCE - outputRaster - Dominance
##' * FRAGMENTATION - outputRaster - Fragmentation
##' * NDC - outputRaster - Number of Different Classes
##' * CVN - outputRaster - Center Versus Neighbours
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_patternanalysis <- function(INPUT = qgisprocess::qgis_default_value(), WINSIZE = qgisprocess::qgis_default_value(), MAXNUMCLASS = qgisprocess::qgis_default_value(), RELATIVE = qgisprocess::qgis_default_value(), DIVERSITY = qgisprocess::qgis_default_value(), DOMINANCE = qgisprocess::qgis_default_value(), FRAGMENTATION = qgisprocess::qgis_default_value(), NDC = qgisprocess::qgis_default_value(), CVN = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:patternanalysis")

  output <- qgisprocess::qgis_run_algorithm("saga:patternanalysis", `INPUT` = INPUT, `WINSIZE` = WINSIZE, `MAXNUMCLASS` = MAXNUMCLASS, `RELATIVE` = RELATIVE, `DIVERSITY` = DIVERSITY, `DOMINANCE` = DOMINANCE, `FRAGMENTATION` = FRAGMENTATION, `NDC` = NDC, `CVN` = CVN,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "RELATIVE")
  }
}