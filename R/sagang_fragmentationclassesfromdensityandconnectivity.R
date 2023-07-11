##' QGIS Algorithm provided by SAGA Next Gen Fragmentation classes from density and connectivity (sagang:fragmentationclassesfromdensityandconnectivity). ---------------- Arguments ----------------  DENSITY: Density (Percent) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer CONNECTIVITY: Connectivity (Percent) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer FRAGMENTATION: Fragmentation 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer BORDER: Add Border 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression WEIGHT: Connectivity Weighting 	Default value:	1.1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DENSITY_MIN: Minimum Density (Percent) 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DENSITY_INT: Minimum Density for Interior Forest (Percent) 	Default value:	99 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Fragmentation classes from density and connectivity
##'
##' @param DENSITY `raster` - Density (Percent). Path to a raster layer.
##' @param CONNECTIVITY `raster` - Connectivity (Percent). Path to a raster layer.
##' @param FRAGMENTATION `rasterDestination` - Fragmentation. Path for new raster layer.
##' @param BORDER `boolean` - Add Border. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param WEIGHT `number` - Connectivity Weighting. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DENSITY_MIN `number` - Minimum Density (Percent). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DENSITY_INT `number` - Minimum Density for Interior Forest (Percent). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * FRAGMENTATION - outputRaster - Fragmentation
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_fragmentationclassesfromdensityandconnectivity <- function(DENSITY = qgisprocess:::qgis_default_value(), CONNECTIVITY = qgisprocess:::qgis_default_value(), FRAGMENTATION = qgisprocess:::qgis_default_value(), BORDER = qgisprocess:::qgis_default_value(), WEIGHT = qgisprocess:::qgis_default_value(), DENSITY_MIN = qgisprocess:::qgis_default_value(), DENSITY_INT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:fragmentationclassesfromdensityandconnectivity")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:fragmentationclassesfromdensityandconnectivity", `DENSITY` = DENSITY, `CONNECTIVITY` = CONNECTIVITY, `FRAGMENTATION` = FRAGMENTATION, `BORDER` = BORDER, `WEIGHT` = WEIGHT, `DENSITY_MIN` = DENSITY_MIN, `DENSITY_INT` = DENSITY_INT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:fragmentationclassesfromdensityandconnectivity", `DENSITY` = DENSITY, `CONNECTIVITY` = CONNECTIVITY, `FRAGMENTATION` = FRAGMENTATION, `BORDER` = BORDER, `WEIGHT` = WEIGHT, `DENSITY_MIN` = DENSITY_MIN, `DENSITY_INT` = DENSITY_INT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "FRAGMENTATION")
  }
}