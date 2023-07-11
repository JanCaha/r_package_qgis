##' QGIS Algorithm provided by SAGA Next Gen Diversity of categories (sagang:diversityofcategories). ---------------- Arguments ----------------  CATEGORIES: Categories 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer COUNT: Number of Categories 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer DIVERSITY: Diversity 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer CONNECTIVITY: Connectivity 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer CONNECTEDAVG: Averaged Connectivity 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer NB_CASE: Connectivity Neighbourhood 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) Rook's case 		- 1: (1) Queen's case 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' NORMALIZE: Normalize 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) no 		- 1: (1) by number of cells 		- 2: (2) by area size 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' KERNEL_TYPE: Kernel Type 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) Square 		- 1: (1) Circle 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' KERNEL_RADIUS: Radius 	Default value:	2 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DW_WEIGHTING: Weighting Function 	Default value:	3 	Argument type:	enum 	Available values: 		- 0: (0) no distance weighting 		- 1: (1) inverse distance to a power 		- 2: (2) exponential 		- 3: (3) gaussian 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' DW_IDW_POWER: Power 	Default value:	2 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DW_BANDWIDTH: Bandwidth 	Default value:	0.7 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Diversity of categories
##'
##' @param CATEGORIES `raster` - Categories. Path to a raster layer.
##' @param COUNT `rasterDestination` - Number of Categories. Path for new raster layer.
##' @param DIVERSITY `rasterDestination` - Diversity. Path for new raster layer.
##' @param CONNECTIVITY `rasterDestination` - Connectivity. Path for new raster layer.
##' @param CONNECTEDAVG `rasterDestination` - Averaged Connectivity. Path for new raster layer.
##' @param NB_CASE `enum`  of `("(0) Rook's case", "(1) Queen's case")` - Connectivity Neighbourhood. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param NORMALIZE `enum`  of `("(0) no", "(1) by number of cells", "(2) by area size")` - Normalize. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param KERNEL_TYPE `enum`  of `("(0) Square", "(1) Circle")` - Kernel Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param KERNEL_RADIUS `number` - Radius. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DW_WEIGHTING `enum`  of `("(0) no distance weighting", "(1) inverse distance to a power", "(2) exponential", "(3) gaussian")` - Weighting Function. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DW_IDW_POWER `number` - Power. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DW_BANDWIDTH `number` - Bandwidth. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * CONNECTEDAVG - outputRaster - Averaged Connectivity
##' * CONNECTIVITY - outputRaster - Connectivity
##' * COUNT - outputRaster - Number of Categories
##' * DIVERSITY - outputRaster - Diversity
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_diversityofcategories <- function(CATEGORIES = qgisprocess:::qgis_default_value(), COUNT = qgisprocess:::qgis_default_value(), DIVERSITY = qgisprocess:::qgis_default_value(), CONNECTIVITY = qgisprocess:::qgis_default_value(), CONNECTEDAVG = qgisprocess:::qgis_default_value(), NB_CASE = qgisprocess:::qgis_default_value(), NORMALIZE = qgisprocess:::qgis_default_value(), KERNEL_TYPE = qgisprocess:::qgis_default_value(), KERNEL_RADIUS = qgisprocess:::qgis_default_value(), DW_WEIGHTING = qgisprocess:::qgis_default_value(), DW_IDW_POWER = qgisprocess:::qgis_default_value(), DW_BANDWIDTH = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:diversityofcategories")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:diversityofcategories", `CATEGORIES` = CATEGORIES, `COUNT` = COUNT, `DIVERSITY` = DIVERSITY, `CONNECTIVITY` = CONNECTIVITY, `CONNECTEDAVG` = CONNECTEDAVG, `NB_CASE` = NB_CASE, `NORMALIZE` = NORMALIZE, `KERNEL_TYPE` = KERNEL_TYPE, `KERNEL_RADIUS` = KERNEL_RADIUS, `DW_WEIGHTING` = DW_WEIGHTING, `DW_IDW_POWER` = DW_IDW_POWER, `DW_BANDWIDTH` = DW_BANDWIDTH,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:diversityofcategories", `CATEGORIES` = CATEGORIES, `COUNT` = COUNT, `DIVERSITY` = DIVERSITY, `CONNECTIVITY` = CONNECTIVITY, `CONNECTEDAVG` = CONNECTEDAVG, `NB_CASE` = NB_CASE, `NORMALIZE` = NORMALIZE, `KERNEL_TYPE` = KERNEL_TYPE, `KERNEL_RADIUS` = KERNEL_RADIUS, `DW_WEIGHTING` = DW_WEIGHTING, `DW_IDW_POWER` = DW_IDW_POWER, `DW_BANDWIDTH` = DW_BANDWIDTH,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CONNECTEDAVG")
  }
}