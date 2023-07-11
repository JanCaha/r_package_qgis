##' QGIS Algorithm provided by SAGA Next Gen Transpose raster layers (sagang:transposerasterlayers). ---------------- Arguments ----------------  GRIDS: Grids 	Argument type:	multilayer TRANSPOSED: Transposed Grids 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer MIRROR_X: Mirror Horizontally 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression MIRROR_Y: Mirror Vertically 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Transpose raster layers
##'
##' @param GRIDS `multilayer` - Grids. .
##' @param TRANSPOSED `rasterDestination` - Transposed Grids. Path for new raster layer.
##' @param MIRROR_X `boolean` - Mirror Horizontally. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MIRROR_Y `boolean` - Mirror Vertically. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * TRANSPOSED - outputRaster - Transposed Grids
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_transposerasterlayers <- function(GRIDS = qgisprocess:::qgis_default_value(), TRANSPOSED = qgisprocess:::qgis_default_value(), MIRROR_X = qgisprocess:::qgis_default_value(), MIRROR_Y = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:transposerasterlayers")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:transposerasterlayers", `GRIDS` = GRIDS, `TRANSPOSED` = TRANSPOSED, `MIRROR_X` = MIRROR_X, `MIRROR_Y` = MIRROR_Y,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:transposerasterlayers", `GRIDS` = GRIDS, `TRANSPOSED` = TRANSPOSED, `MIRROR_X` = MIRROR_X, `MIRROR_Y` = MIRROR_Y,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "TRANSPOSED")
  }
}