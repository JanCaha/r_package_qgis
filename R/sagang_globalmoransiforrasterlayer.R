##' QGIS Algorithm provided by SAGA Next Gen Global moran's i for raster layer (sagang:globalmoransiforrasterlayer). ---------------- Arguments ----------------  GRID: Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer RESULT: Result 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer CONTIGUITY: Case of contiguity 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) Rook 		- 1: (1) Queen 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' DIALOG: Show Result in Dialog 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Global moran's i for raster layer
##'
##' @param GRID `raster` - Grid. Path to a raster layer.
##' @param RESULT `vectorDestination` - Result. Path for new vector layer.
##' @param CONTIGUITY `enum`  of `("(0) Rook", "(1) Queen")` - Case of contiguity. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DIALOG `boolean` - Show Result in Dialog. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputVector - Result
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_globalmoransiforrasterlayer <- function(GRID = qgisprocess:::qgis_default_value(), RESULT = qgisprocess:::qgis_default_value(), CONTIGUITY = qgisprocess:::qgis_default_value(), DIALOG = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:globalmoransiforrasterlayer")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:globalmoransiforrasterlayer", `GRID` = GRID, `RESULT` = RESULT, `CONTIGUITY` = CONTIGUITY, `DIALOG` = DIALOG,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:globalmoransiforrasterlayer", `GRID` = GRID, `RESULT` = RESULT, `CONTIGUITY` = CONTIGUITY, `DIALOG` = DIALOG,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "RESULT")
  }
}