##' QGIS Algorithm provided by SAGA Next Gen Geometric figures (sagang:geometricfigures). ---------------- Arguments ----------------  RESULT: Result 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer CELL_COUNT: Cell Count 	Default value:	100 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CELL_SIZE: Cell Size 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression FIGURE: Figure 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Cone (up) 		- 1: (1) Cone (down) 		- 2: (2) Plane 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' PLANE: Direction of Plane (Degree) 	Default value:	22.5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Geometric figures
##'
##' @param RESULT `rasterDestination` - Result. Path for new raster layer.
##' @param CELL_COUNT `number` - Cell Count. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CELL_SIZE `number` - Cell Size. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param FIGURE `enum`  of `("(0) Cone (up)", "(1) Cone (down)", "(2) Plane")` - Figure. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param PLANE `number` - Direction of Plane (Degree). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputRaster - Result
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_geometricfigures <- function(RESULT = qgisprocess:::qgis_default_value(), CELL_COUNT = qgisprocess:::qgis_default_value(), CELL_SIZE = qgisprocess:::qgis_default_value(), FIGURE = qgisprocess:::qgis_default_value(), PLANE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:geometricfigures")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:geometricfigures", `RESULT` = RESULT, `CELL_COUNT` = CELL_COUNT, `CELL_SIZE` = CELL_SIZE, `FIGURE` = FIGURE, `PLANE` = PLANE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:geometricfigures", `RESULT` = RESULT, `CELL_COUNT` = CELL_COUNT, `CELL_SIZE` = CELL_SIZE, `FIGURE` = FIGURE, `PLANE` = PLANE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "RESULT")
  }
}