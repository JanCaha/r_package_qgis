##' QGIS Algorithm provided by SAGA Next Gen Representativeness (grid) (sagang:representativenessgrid). ---------------- Arguments ----------------  INPUT: Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer RESULT: Representativeness 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer RADIUS: Radius (Cells) 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression EXPONENT: Exponent 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Representativeness (grid)
##'
##' @param INPUT `raster` - Grid. Path to a raster layer.
##' @param RESULT `rasterDestination` - Representativeness. Path for new raster layer.
##' @param RADIUS `number` - Radius (Cells). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param EXPONENT `number` - Exponent. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputRaster - Representativeness
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_representativenessgrid <- function(INPUT = qgisprocess:::qgis_default_value(), RESULT = qgisprocess:::qgis_default_value(), RADIUS = qgisprocess:::qgis_default_value(), EXPONENT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:representativenessgrid")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:representativenessgrid", `INPUT` = INPUT, `RESULT` = RESULT, `RADIUS` = RADIUS, `EXPONENT` = EXPONENT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:representativenessgrid", `INPUT` = INPUT, `RESULT` = RESULT, `RADIUS` = RADIUS, `EXPONENT` = EXPONENT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "RESULT")
  }
}