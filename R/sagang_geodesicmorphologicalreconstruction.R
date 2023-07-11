##' QGIS Algorithm provided by SAGA Next Gen Geodesic morphological reconstruction (sagang:geodesicmorphologicalreconstruction). ---------------- Arguments ----------------  INPUT_GRID: Input Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer OBJECT_GRID: Object Grid 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer DIFFERENCE_GRID: Difference Input - Reconstruction 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SHIFT_VALUE: Shift value 	Default value:	5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression BORDER_YES_NO: Preserve 1px border Yes/No 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression BIN_YES_NO: Create a binary mask Yes/No 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression THRESHOLD: Threshold 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Geodesic morphological reconstruction
##'
##' @param INPUT_GRID `raster` - Input Grid. Path to a raster layer.
##' @param OBJECT_GRID `rasterDestination` - Object Grid. Path for new raster layer.
##' @param DIFFERENCE_GRID `rasterDestination` - Difference Input - Reconstruction. Path for new raster layer.
##' @param SHIFT_VALUE `number` - Shift value. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param BORDER_YES_NO `boolean` - Preserve 1px border Yes\code{/}No. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param BIN_YES_NO `boolean` - Create a binary mask Yes\code{/}No. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param THRESHOLD `number` - Threshold. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * DIFFERENCE_GRID - outputRaster - Difference Input - Reconstruction
##' * OBJECT_GRID - outputRaster - Object Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_geodesicmorphologicalreconstruction <- function(INPUT_GRID = qgisprocess:::qgis_default_value(), OBJECT_GRID = qgisprocess:::qgis_default_value(), DIFFERENCE_GRID = qgisprocess:::qgis_default_value(), SHIFT_VALUE = qgisprocess:::qgis_default_value(), BORDER_YES_NO = qgisprocess:::qgis_default_value(), BIN_YES_NO = qgisprocess:::qgis_default_value(), THRESHOLD = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:geodesicmorphologicalreconstruction")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:geodesicmorphologicalreconstruction", `INPUT_GRID` = INPUT_GRID, `OBJECT_GRID` = OBJECT_GRID, `DIFFERENCE_GRID` = DIFFERENCE_GRID, `SHIFT_VALUE` = SHIFT_VALUE, `BORDER_YES_NO` = BORDER_YES_NO, `BIN_YES_NO` = BIN_YES_NO, `THRESHOLD` = THRESHOLD,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:geodesicmorphologicalreconstruction", `INPUT_GRID` = INPUT_GRID, `OBJECT_GRID` = OBJECT_GRID, `DIFFERENCE_GRID` = DIFFERENCE_GRID, `SHIFT_VALUE` = SHIFT_VALUE, `BORDER_YES_NO` = BORDER_YES_NO, `BIN_YES_NO` = BIN_YES_NO, `THRESHOLD` = THRESHOLD,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "DIFFERENCE_GRID")
  }
}