##' QGIS Algorithm provided by SAGA Next Gen Fragmentation (standard) (sagang:fragmentationstandard). ---------------- Arguments ----------------  CLASSES: Classification 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer DENSITY: Density (Percent) 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer CONNECTIVITY: Connectivity (Percent) 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer FRAGMENTATION: Fragmentation 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer FRAGSTATS: Summary 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer CLASS: Class Identifier 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression AGGREGATION: Level Aggregation 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) average 		- 1: (1) multiplicative 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' BORDER: Add Border 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression WEIGHT: Connectivity Weighting 	Default value:	1.1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DENSITY_MIN: Minimum Density (Percent) 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DENSITY_INT: Minimum Density for Interior Forest (Percent) 	Default value:	99 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CIRCULAR: Neighbourhood 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) square 		- 1: (1) circle 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' DIAGONAL: Include diagonal neighbour relations 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Fragmentation (standard)
##'
##' @param CLASSES `raster` - Classification. Path to a raster layer.
##' @param DENSITY `rasterDestination` - Density (Percent). Path for new raster layer.
##' @param CONNECTIVITY `rasterDestination` - Connectivity (Percent). Path for new raster layer.
##' @param FRAGMENTATION `rasterDestination` - Fragmentation. Path for new raster layer.
##' @param FRAGSTATS `vectorDestination` - Summary. Path for new vector layer.
##' @param CLASS `number` - Class Identifier. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param AGGREGATION `enum`  of `("(0) average", "(1) multiplicative")` - Level Aggregation. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param BORDER `boolean` - Add Border. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param WEIGHT `number` - Connectivity Weighting. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DENSITY_MIN `number` - Minimum Density (Percent). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DENSITY_INT `number` - Minimum Density for Interior Forest (Percent). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CIRCULAR `enum`  of `("(0) square", "(1) circle")` - Neighbourhood. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DIAGONAL `boolean` - Include diagonal neighbour relations. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
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

sagang_fragmentationstandard <- function(CLASSES = qgisprocess:::qgis_default_value(), DENSITY = qgisprocess:::qgis_default_value(), CONNECTIVITY = qgisprocess:::qgis_default_value(), FRAGMENTATION = qgisprocess:::qgis_default_value(), FRAGSTATS = qgisprocess:::qgis_default_value(), CLASS = qgisprocess:::qgis_default_value(), AGGREGATION = qgisprocess:::qgis_default_value(), BORDER = qgisprocess:::qgis_default_value(), WEIGHT = qgisprocess:::qgis_default_value(), DENSITY_MIN = qgisprocess:::qgis_default_value(), DENSITY_INT = qgisprocess:::qgis_default_value(), CIRCULAR = qgisprocess:::qgis_default_value(), DIAGONAL = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:fragmentationstandard")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:fragmentationstandard", `CLASSES` = CLASSES, `DENSITY` = DENSITY, `CONNECTIVITY` = CONNECTIVITY, `FRAGMENTATION` = FRAGMENTATION, `FRAGSTATS` = FRAGSTATS, `CLASS` = CLASS, `AGGREGATION` = AGGREGATION, `BORDER` = BORDER, `WEIGHT` = WEIGHT, `DENSITY_MIN` = DENSITY_MIN, `DENSITY_INT` = DENSITY_INT, `CIRCULAR` = CIRCULAR, `DIAGONAL` = DIAGONAL,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:fragmentationstandard", `CLASSES` = CLASSES, `DENSITY` = DENSITY, `CONNECTIVITY` = CONNECTIVITY, `FRAGMENTATION` = FRAGMENTATION, `FRAGSTATS` = FRAGSTATS, `CLASS` = CLASS, `AGGREGATION` = AGGREGATION, `BORDER` = BORDER, `WEIGHT` = WEIGHT, `DENSITY_MIN` = DENSITY_MIN, `DENSITY_INT` = DENSITY_INT, `CIRCULAR` = CIRCULAR, `DIAGONAL` = DIAGONAL,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CONNECTIVITY")
  }
}