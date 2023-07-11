##' QGIS Algorithm provided by SAGA Next Gen Grid standardization (sagang:gridstandardization). ---------------- Arguments ----------------  INPUT: Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer OUTPUT: Standardized Grid 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer STRETCH: Stretch Factor 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Grid standardization
##'
##' @param INPUT `raster` - Grid. Path to a raster layer.
##' @param OUTPUT `rasterDestination` - Standardized Grid. Path for new raster layer.
##' @param STRETCH `number` - Stretch Factor. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Standardized Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_gridstandardization <- function(INPUT = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), STRETCH = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:gridstandardization")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:gridstandardization", `INPUT` = INPUT, `OUTPUT` = OUTPUT, `STRETCH` = STRETCH,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:gridstandardization", `INPUT` = INPUT, `OUTPUT` = OUTPUT, `STRETCH` = STRETCH,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}