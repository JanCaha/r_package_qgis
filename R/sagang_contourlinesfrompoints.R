##' QGIS Algorithm provided by SAGA Next Gen Contour lines from points (sagang:contourlinesfrompoints). ---------------- Arguments ----------------  SHAPES: Points 	Argument type:	source 	Acceptable values: 		- Path to a vector layer CONTOUR: Contour Lines 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer ATTRIBUTE: Attribute 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names CELL_SIZE: Precision 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression ZSTEP: Equidistance 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Contour lines from points
##'
##' @param SHAPES `source` - Points. Path to a vector layer.
##' @param CONTOUR `vectorDestination` - Contour Lines. Path for new vector layer.
##' @param ATTRIBUTE `field` - Attribute. The name of an existing field. ; delimited list of existing field names.
##' @param CELL_SIZE `number` - Precision. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ZSTEP `number` - Equidistance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * CONTOUR - outputVector - Contour Lines
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_contourlinesfrompoints <- function(SHAPES = qgisprocess:::qgis_default_value(), CONTOUR = qgisprocess:::qgis_default_value(), ATTRIBUTE = qgisprocess:::qgis_default_value(), CELL_SIZE = qgisprocess:::qgis_default_value(), ZSTEP = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:contourlinesfrompoints")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:contourlinesfrompoints", `SHAPES` = SHAPES, `CONTOUR` = CONTOUR, `ATTRIBUTE` = ATTRIBUTE, `CELL_SIZE` = CELL_SIZE, `ZSTEP` = ZSTEP,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:contourlinesfrompoints", `SHAPES` = SHAPES, `CONTOUR` = CONTOUR, `ATTRIBUTE` = ATTRIBUTE, `CELL_SIZE` = CELL_SIZE, `ZSTEP` = ZSTEP,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CONTOUR")
  }
}