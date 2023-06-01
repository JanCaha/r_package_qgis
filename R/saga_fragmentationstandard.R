##' QGIS Algorithm provided by SAGA Fragmentation (standard) (saga:fragmentationstandard)
##'
##' @title QGIS algorithm Fragmentation (standard)
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
##' @param CIRCULAR `enum`  of `("[0] square", "[1] circle")` - Neighborhood Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DIAGONAL `boolean` - Include diagonal neighbour relations. 1 for true/yes. 0 for false/no.
##' @param DENSITY `rasterDestination` - Density (Percent). Path for new raster layer.
##' @param CONNECTIVITY `rasterDestination` - Connectivity (Percent). Path for new raster layer.
##' @param FRAGMENTATION `rasterDestination` - Fragmentation. Path for new raster layer.
##' @param FRAGSTATS `vectorDestination` - Summary. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * CONNECTIVITY - outputRaster - Connectivity (Percent)
##' * DENSITY - outputRaster - Density (Percent)
##' * FRAGMENTATION - outputRaster - Fragmentation
##' * FRAGSTATS - outputVector - Summary
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_fragmentationstandard <- function(CLASSES = qgisprocess:::qgis_default_value(), CLASS = qgisprocess:::qgis_default_value(), NEIGHBORHOOD_MIN = qgisprocess:::qgis_default_value(), NEIGHBORHOOD_MAX = qgisprocess:::qgis_default_value(), AGGREGATION = qgisprocess:::qgis_default_value(), BORDER = qgisprocess:::qgis_default_value(), WEIGHT = qgisprocess:::qgis_default_value(), DENSITY_MIN = qgisprocess:::qgis_default_value(), DENSITY_INT = qgisprocess:::qgis_default_value(), CIRCULAR = qgisprocess:::qgis_default_value(), DIAGONAL = qgisprocess:::qgis_default_value(), DENSITY = qgisprocess:::qgis_default_value(), CONNECTIVITY = qgisprocess:::qgis_default_value(), FRAGMENTATION = qgisprocess:::qgis_default_value(), FRAGSTATS = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:fragmentationstandard")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:fragmentationstandard", `CLASSES` = CLASSES, `CLASS` = CLASS, `NEIGHBORHOOD_MIN` = NEIGHBORHOOD_MIN, `NEIGHBORHOOD_MAX` = NEIGHBORHOOD_MAX, `AGGREGATION` = AGGREGATION, `BORDER` = BORDER, `WEIGHT` = WEIGHT, `DENSITY_MIN` = DENSITY_MIN, `DENSITY_INT` = DENSITY_INT, `CIRCULAR` = CIRCULAR, `DIAGONAL` = DIAGONAL, `DENSITY` = DENSITY, `CONNECTIVITY` = CONNECTIVITY, `FRAGMENTATION` = FRAGMENTATION, `FRAGSTATS` = FRAGSTATS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:fragmentationstandard", `CLASSES` = CLASSES, `CLASS` = CLASS, `NEIGHBORHOOD_MIN` = NEIGHBORHOOD_MIN, `NEIGHBORHOOD_MAX` = NEIGHBORHOOD_MAX, `AGGREGATION` = AGGREGATION, `BORDER` = BORDER, `WEIGHT` = WEIGHT, `DENSITY_MIN` = DENSITY_MIN, `DENSITY_INT` = DENSITY_INT, `CIRCULAR` = CIRCULAR, `DIAGONAL` = DIAGONAL, `DENSITY` = DENSITY, `CONNECTIVITY` = CONNECTIVITY, `FRAGMENTATION` = FRAGMENTATION, `FRAGSTATS` = FRAGSTATS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CONNECTIVITY")
  }
}