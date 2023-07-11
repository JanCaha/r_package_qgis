##' QGIS Algorithm provided by SAGA Next Gen Pattern analysis (sagang:patternanalysis). ---------------- Arguments ----------------  INPUT: Input Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer NDC: Number of Classes 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer RELATIVE: Relative Richness 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer FRAGMENTATION: Fragmentation 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer CVN: Center vs. Neighbours 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer DIVERSITY: Diversity 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer DOMINANCE: Dominance 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer MAXNUMCLASS: Max. Number of Classes 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression KERNEL_TYPE: Kernel Type 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) Square 		- 1: (1) Circle 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' KERNEL_RADIUS: Radius 	Default value:	2 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Pattern analysis
##'
##' @param INPUT `raster` - Input Grid. Path to a raster layer.
##' @param NDC `rasterDestination` - Number of Classes. Path for new raster layer.
##' @param RELATIVE `rasterDestination` - Relative Richness. Path for new raster layer.
##' @param FRAGMENTATION `rasterDestination` - Fragmentation. Path for new raster layer.
##' @param CVN `rasterDestination` - Center vs. Neighbours. Path for new raster layer.
##' @param DIVERSITY `rasterDestination` - Diversity. Path for new raster layer.
##' @param DOMINANCE `rasterDestination` - Dominance. Path for new raster layer.
##' @param MAXNUMCLASS `number` - Max. Number of Classes. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param KERNEL_TYPE `enum`  of `("(0) Square", "(1) Circle")` - Kernel Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param KERNEL_RADIUS `number` - Radius. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * CVN - outputRaster - Center vs. Neighbours
##' * DIVERSITY - outputRaster - Diversity
##' * DOMINANCE - outputRaster - Dominance
##' * FRAGMENTATION - outputRaster - Fragmentation
##' * NDC - outputRaster - Number of Classes
##' * RELATIVE - outputRaster - Relative Richness
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_patternanalysis <- function(INPUT = qgisprocess:::qgis_default_value(), NDC = qgisprocess:::qgis_default_value(), RELATIVE = qgisprocess:::qgis_default_value(), FRAGMENTATION = qgisprocess:::qgis_default_value(), CVN = qgisprocess:::qgis_default_value(), DIVERSITY = qgisprocess:::qgis_default_value(), DOMINANCE = qgisprocess:::qgis_default_value(), MAXNUMCLASS = qgisprocess:::qgis_default_value(), KERNEL_TYPE = qgisprocess:::qgis_default_value(), KERNEL_RADIUS = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:patternanalysis")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:patternanalysis", `INPUT` = INPUT, `NDC` = NDC, `RELATIVE` = RELATIVE, `FRAGMENTATION` = FRAGMENTATION, `CVN` = CVN, `DIVERSITY` = DIVERSITY, `DOMINANCE` = DOMINANCE, `MAXNUMCLASS` = MAXNUMCLASS, `KERNEL_TYPE` = KERNEL_TYPE, `KERNEL_RADIUS` = KERNEL_RADIUS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:patternanalysis", `INPUT` = INPUT, `NDC` = NDC, `RELATIVE` = RELATIVE, `FRAGMENTATION` = FRAGMENTATION, `CVN` = CVN, `DIVERSITY` = DIVERSITY, `DOMINANCE` = DOMINANCE, `MAXNUMCLASS` = MAXNUMCLASS, `KERNEL_TYPE` = KERNEL_TYPE, `KERNEL_RADIUS` = KERNEL_RADIUS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CVN")
  }
}