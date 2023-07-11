##' QGIS Algorithm provided by SAGA Next Gen Successive flow routing (sagang:successiveflowrouting). ---------------- Arguments ----------------  DEM: DEM 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer FLOW: Flow 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer ITERATIONS: Iterations 	Default value:	100 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression RUNOFF: Runoff 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression MANNING: Manning's Roughness 	Default value:	0.2 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Successive flow routing
##'
##' @param DEM `raster` - DEM. Path to a raster layer.
##' @param FLOW `rasterDestination` - Flow. Path for new raster layer.
##' @param ITERATIONS `number` - Iterations. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param RUNOFF `number` - Runoff. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MANNING `number` - Manning's Roughness. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * FLOW - outputRaster - Flow
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_successiveflowrouting <- function(DEM = qgisprocess:::qgis_default_value(), FLOW = qgisprocess:::qgis_default_value(), ITERATIONS = qgisprocess:::qgis_default_value(), RUNOFF = qgisprocess:::qgis_default_value(), MANNING = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:successiveflowrouting")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:successiveflowrouting", `DEM` = DEM, `FLOW` = FLOW, `ITERATIONS` = ITERATIONS, `RUNOFF` = RUNOFF, `MANNING` = MANNING,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:successiveflowrouting", `DEM` = DEM, `FLOW` = FLOW, `ITERATIONS` = ITERATIONS, `RUNOFF` = RUNOFF, `MANNING` = MANNING,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "FLOW")
  }
}