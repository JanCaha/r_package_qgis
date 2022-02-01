##' QGIS Algorithm provided by SAGA Fragmentation (alternative) (saga:fragmentationalternative)
##'
##' @title QGIS algorithm Fragmentation (alternative)
##'
##' @param CLASSES `raster` - Classification. Path to a raster layer.
##' @param CLASS `number` - Class Identifier. A numeric value.
##' @param NEIGHBORHOOD_MIN `number` - Neighborhood Min. A numeric value.
##' @param NEIGHBORHOOD_MAX `number` - Neighborhood Max. A numeric value.
##' @param AGGREGATION `enum`  of `("[0] average", "[1] multiplicative")` - Level Aggregation. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param BORDER `boolean` - Add Border. 1 for true/yes. 0 for false/no.
##' @param WEIGHT `number` - Connectivity Weighting. A numeric value.
##' @param DENSITY_MIN `number` - Minimum Density (Percent). A numeric value.
##' @param DENSITY_INT `number` - Minimum Density for Interior Forest (Percent). A numeric value.
##' @param LEVEL_GROW `number` - Search Distance Increment. A numeric value.
##' @param DENSITY_MEAN `boolean` - Density from Neighbourhood. 1 for true/yes. 0 for false/no.
##' @param DENSITY `rasterDestination` - Density (Percent). Path for new raster layer.
##' @param CONNECTIVITY `rasterDestination` - Connectivity (Percent). Path for new raster layer.
##' @param FRAGMENTATION `rasterDestination` - Fragmentation. Path for new raster layer.
##' @param FRAGSTATS `vectorDestination` - Summary. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * DENSITY - outputRaster - Density 
##' * CONNECTIVITY - outputRaster - Connectivity 
##' * FRAGMENTATION - outputRaster - Fragmentation
##' * FRAGSTATS - outputVector - Summary
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_fragmentationalternative <- function(CLASSES = qgisprocess::qgis_default_value(), CLASS = qgisprocess::qgis_default_value(), NEIGHBORHOOD_MIN = qgisprocess::qgis_default_value(), NEIGHBORHOOD_MAX = qgisprocess::qgis_default_value(), AGGREGATION = qgisprocess::qgis_default_value(), BORDER = qgisprocess::qgis_default_value(), WEIGHT = qgisprocess::qgis_default_value(), DENSITY_MIN = qgisprocess::qgis_default_value(), DENSITY_INT = qgisprocess::qgis_default_value(), LEVEL_GROW = qgisprocess::qgis_default_value(), DENSITY_MEAN = qgisprocess::qgis_default_value(), DENSITY = qgisprocess::qgis_default_value(), CONNECTIVITY = qgisprocess::qgis_default_value(), FRAGMENTATION = qgisprocess::qgis_default_value(), FRAGSTATS = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:fragmentationalternative")

  output <- qgisprocess::qgis_run_algorithm("saga:fragmentationalternative", `CLASSES` = CLASSES, `CLASS` = CLASS, `NEIGHBORHOOD_MIN` = NEIGHBORHOOD_MIN, `NEIGHBORHOOD_MAX` = NEIGHBORHOOD_MAX, `AGGREGATION` = AGGREGATION, `BORDER` = BORDER, `WEIGHT` = WEIGHT, `DENSITY_MIN` = DENSITY_MIN, `DENSITY_INT` = DENSITY_INT, `LEVEL_GROW` = LEVEL_GROW, `DENSITY_MEAN` = DENSITY_MEAN, `DENSITY` = DENSITY, `CONNECTIVITY` = CONNECTIVITY, `FRAGMENTATION` = FRAGMENTATION, `FRAGSTATS` = FRAGSTATS,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "DENSITY")
  }
}