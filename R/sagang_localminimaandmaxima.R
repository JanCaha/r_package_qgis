##' QGIS Algorithm provided by SAGA Next Gen Local minima and maxima (sagang:localminimaandmaxima). ---------------- Arguments ----------------  GRID: Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer MINIMA: Minima 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer MAXIMA: Maxima 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer IDENTITY: Identical Values 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression ABSOLUTE: Absolute 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression BOUNDARY: Boundary Cells 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Local minima and maxima
##'
##' @param GRID `raster` - Grid. Path to a raster layer.
##' @param MINIMA `vectorDestination` - Minima. Path for new vector layer.
##' @param MAXIMA `vectorDestination` - Maxima. Path for new vector layer.
##' @param IDENTITY `boolean` - Identical Values. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ABSOLUTE `boolean` - Absolute. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param BOUNDARY `boolean` - Boundary Cells. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * MAXIMA - outputVector - Maxima
##' * MINIMA - outputVector - Minima
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_localminimaandmaxima <- function(GRID = qgisprocess:::qgis_default_value(), MINIMA = qgisprocess:::qgis_default_value(), MAXIMA = qgisprocess:::qgis_default_value(), IDENTITY = qgisprocess:::qgis_default_value(), ABSOLUTE = qgisprocess:::qgis_default_value(), BOUNDARY = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:localminimaandmaxima")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:localminimaandmaxima", `GRID` = GRID, `MINIMA` = MINIMA, `MAXIMA` = MAXIMA, `IDENTITY` = IDENTITY, `ABSOLUTE` = ABSOLUTE, `BOUNDARY` = BOUNDARY,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:localminimaandmaxima", `GRID` = GRID, `MINIMA` = MINIMA, `MAXIMA` = MAXIMA, `IDENTITY` = IDENTITY, `ABSOLUTE` = ABSOLUTE, `BOUNDARY` = BOUNDARY,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "MAXIMA")
  }
}