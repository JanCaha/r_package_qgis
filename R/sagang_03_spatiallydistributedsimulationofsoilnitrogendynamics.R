##' QGIS Algorithm provided by SAGA Next Gen 03: spatially distributed simulation of soil nitrogen dynamics (sagang:03:spatiallydistributedsimulationofsoilnitrogendynamics). ---------------- Arguments ----------------  DEM: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer NSTORE: Soil Nitrogen 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer TIME_SPAN: Time Span (a) 	Default value:	100 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TIME_STEP: Time Interval (a) 	Default value:	0.1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression UPDATE: Update View 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression NINIT: Initial Nitrogen Content (kg/ha) 	Default value:	5000 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression NRAIN: Nitrogen in Rainfall (kg/ha/a) 	Default value:	16 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - 03: spatially distributed simulation of soil nitrogen dynamics
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param NSTORE `rasterDestination` - Soil Nitrogen. Path for new raster layer.
##' @param TIME_SPAN `number` - Time Span (a). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TIME_STEP `number` - Time Interval (a). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param UPDATE `boolean` - Update View. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param NINIT `number` - Initial Nitrogen Content (kg\code{/}ha). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param NRAIN `number` - Nitrogen in Rainfall (kg\code{/}ha\code{/}a). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * NSTORE - outputRaster - Soil Nitrogen
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_03_spatiallydistributedsimulationofsoilnitrogendynamics <- function(DEM = qgisprocess:::qgis_default_value(), NSTORE = qgisprocess:::qgis_default_value(), TIME_SPAN = qgisprocess:::qgis_default_value(), TIME_STEP = qgisprocess:::qgis_default_value(), UPDATE = qgisprocess:::qgis_default_value(), NINIT = qgisprocess:::qgis_default_value(), NRAIN = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:03:spatiallydistributedsimulationofsoilnitrogendynamics")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:03:spatiallydistributedsimulationofsoilnitrogendynamics", `DEM` = DEM, `NSTORE` = NSTORE, `TIME_SPAN` = TIME_SPAN, `TIME_STEP` = TIME_STEP, `UPDATE` = UPDATE, `NINIT` = NINIT, `NRAIN` = NRAIN,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:03:spatiallydistributedsimulationofsoilnitrogendynamics", `DEM` = DEM, `NSTORE` = NSTORE, `TIME_SPAN` = TIME_SPAN, `TIME_STEP` = TIME_STEP, `UPDATE` = UPDATE, `NINIT` = NINIT, `NRAIN` = NRAIN,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NSTORE")
  }
}