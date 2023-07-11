##' QGIS Algorithm provided by SAGA Next Gen Change longitudinal range for grids (sagang:changelongitudinalrangeforgrids). ---------------- Arguments ----------------  INPUT: Input 	Argument type:	multilayer OUTPUT: Output 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer DIRECTION: Direction 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) 0 - 360  -180 - 180 		- 1: (1) -180 - 180  0 - 360 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' PATCH: Patch Last Column 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Change longitudinal range for grids
##'
##' @param INPUT `multilayer` - Input. .
##' @param OUTPUT `rasterDestination` - Output. Path for new raster layer.
##' @param DIRECTION `enum`  of `("(0) 0 - 360  -180 - 180", "(1) -180 - 180  0 - 360")` - Direction. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param PATCH `boolean` - Patch Last Column. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Output
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_changelongitudinalrangeforgrids <- function(INPUT = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), DIRECTION = qgisprocess:::qgis_default_value(), PATCH = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:changelongitudinalrangeforgrids")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:changelongitudinalrangeforgrids", `INPUT` = INPUT, `OUTPUT` = OUTPUT, `DIRECTION` = DIRECTION, `PATCH` = PATCH,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:changelongitudinalrangeforgrids", `INPUT` = INPUT, `OUTPUT` = OUTPUT, `DIRECTION` = DIRECTION, `PATCH` = PATCH,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}