##' QGIS Algorithm provided by SAGA Diversity of categories (saga:diversityofcategories)
##'
##' @title QGIS algorithm Diversity of categories
##'
##' @param CATEGORIES `raster` - Categories. Path to a raster layer.
##' @param SEARCH_MODE `enum`  of `("[0] square", "[1] circle")` - Search Mode. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SEARCH_RADIUS `number` - Search Radius Distance. A numeric value.
##' @param NB_CASE `enum`  of `("[0] Rook's case", "[1] Queen's case")` - Connectivity Neighbourhood. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DW_WEIGHTING `enum`  of `("[0] no distance weighting", "[1] inverse distance to a power", "[2] exponential", "[3] gaussian weighting")` - Weighting Function. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DW_IDW_POWER `number` - Inverse Distance Weighting Power. A numeric value.
##' @param DW_IDW_OFFSET `boolean` - Inverse Distance Offset. 1 for true/yes. 0 for false/no.
##' @param DW_BANDWIDTH `number` - Gaussian and Exponential Weighting Bandwidth. A numeric value.
##' @param COUNT `rasterDestination` - Number of Categories. Path for new raster layer.
##' @param DIVERSITY `rasterDestination` - Diversity. Path for new raster layer.
##' @param SIZE_MEAN `rasterDestination` - Average Size. Path for new raster layer.
##' @param SIZE_SKEW `rasterDestination` - Skewness. Path for new raster layer.
##' @param CONNECTIVITY `rasterDestination` - Connectivity. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * CONNECTIVITY - outputRaster - Connectivity
##' * COUNT - outputRaster - Number of Categories
##' * DIVERSITY - outputRaster - Diversity
##' * SIZE_MEAN - outputRaster - Average Size
##' * SIZE_SKEW - outputRaster - Skewness
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_diversityofcategories <- function(CATEGORIES = qgisprocess:::qgis_default_value(), SEARCH_MODE = qgisprocess:::qgis_default_value(), SEARCH_RADIUS = qgisprocess:::qgis_default_value(), NB_CASE = qgisprocess:::qgis_default_value(), DW_WEIGHTING = qgisprocess:::qgis_default_value(), DW_IDW_POWER = qgisprocess:::qgis_default_value(), DW_IDW_OFFSET = qgisprocess:::qgis_default_value(), DW_BANDWIDTH = qgisprocess:::qgis_default_value(), COUNT = qgisprocess:::qgis_default_value(), DIVERSITY = qgisprocess:::qgis_default_value(), SIZE_MEAN = qgisprocess:::qgis_default_value(), SIZE_SKEW = qgisprocess:::qgis_default_value(), CONNECTIVITY = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:diversityofcategories")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:diversityofcategories", `CATEGORIES` = CATEGORIES, `SEARCH_MODE` = SEARCH_MODE, `SEARCH_RADIUS` = SEARCH_RADIUS, `NB_CASE` = NB_CASE, `DW_WEIGHTING` = DW_WEIGHTING, `DW_IDW_POWER` = DW_IDW_POWER, `DW_IDW_OFFSET` = DW_IDW_OFFSET, `DW_BANDWIDTH` = DW_BANDWIDTH, `COUNT` = COUNT, `DIVERSITY` = DIVERSITY, `SIZE_MEAN` = SIZE_MEAN, `SIZE_SKEW` = SIZE_SKEW, `CONNECTIVITY` = CONNECTIVITY,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:diversityofcategories", `CATEGORIES` = CATEGORIES, `SEARCH_MODE` = SEARCH_MODE, `SEARCH_RADIUS` = SEARCH_RADIUS, `NB_CASE` = NB_CASE, `DW_WEIGHTING` = DW_WEIGHTING, `DW_IDW_POWER` = DW_IDW_POWER, `DW_IDW_OFFSET` = DW_IDW_OFFSET, `DW_BANDWIDTH` = DW_BANDWIDTH, `COUNT` = COUNT, `DIVERSITY` = DIVERSITY, `SIZE_MEAN` = SIZE_MEAN, `SIZE_SKEW` = SIZE_SKEW, `CONNECTIVITY` = CONNECTIVITY,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CONNECTIVITY")
  }
}