##' QGIS Algorithm provided by SAGA Next Gen Average with mask 2 (sagang:averagewithmask2). ---------------- Arguments ----------------  INPUT: Input 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer MASK: Mask Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer RESULT: AWM2 Grid 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer V: Mask value 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression RX: Radius X 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression RY: Radius Y 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Average with mask 2
##'
##' @param INPUT `raster` - Input. Path to a raster layer.
##' @param MASK `raster` - Mask Grid. Path to a raster layer.
##' @param RESULT `rasterDestination` - AWM2 Grid. Path for new raster layer.
##' @param V `number` - Mask value. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param RX `number` - Radius X. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param RY `number` - Radius Y. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputRaster - AWM2 Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_averagewithmask2 <- function(INPUT = qgisprocess:::qgis_default_value(), MASK = qgisprocess:::qgis_default_value(), RESULT = qgisprocess:::qgis_default_value(), V = qgisprocess:::qgis_default_value(), RX = qgisprocess:::qgis_default_value(), RY = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:averagewithmask2")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:averagewithmask2", `INPUT` = INPUT, `MASK` = MASK, `RESULT` = RESULT, `V` = V, `RX` = RX, `RY` = RY,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:averagewithmask2", `INPUT` = INPUT, `MASK` = MASK, `RESULT` = RESULT, `V` = V, `RX` = RX, `RY` = RY,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "RESULT")
  }
}