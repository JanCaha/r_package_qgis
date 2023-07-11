##' QGIS Algorithm provided by SAGA Next Gen Polygon shape indices (sagang:polygonshapeindices). ---------------- Arguments ----------------  SHAPES: Shapes 	Argument type:	source 	Acceptable values: 		- Path to a vector layer INDEX: Shape Indices 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer DMAX: Maximum Diameter 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer GYROS: Diameter of Gyration 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression FERET: Feret Diameters 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression FERET_DIRS: Number of Directions 	Default value:	18 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Polygon shape indices
##'
##' @param SHAPES `source` - Shapes. Path to a vector layer.
##' @param INDEX `vectorDestination` - Shape Indices. Path for new vector layer.
##' @param DMAX `vectorDestination` - Maximum Diameter. Path for new vector layer.
##' @param GYROS `boolean` - Diameter of Gyration. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param FERET `boolean` - Feret Diameters. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param FERET_DIRS `number` - Number of Directions. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * DMAX - outputVector - Maximum Diameter
##' * INDEX - outputVector - Shape Indices
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_polygonshapeindices <- function(SHAPES = qgisprocess:::qgis_default_value(), INDEX = qgisprocess:::qgis_default_value(), DMAX = qgisprocess:::qgis_default_value(), GYROS = qgisprocess:::qgis_default_value(), FERET = qgisprocess:::qgis_default_value(), FERET_DIRS = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:polygonshapeindices")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:polygonshapeindices", `SHAPES` = SHAPES, `INDEX` = INDEX, `DMAX` = DMAX, `GYROS` = GYROS, `FERET` = FERET, `FERET_DIRS` = FERET_DIRS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:polygonshapeindices", `SHAPES` = SHAPES, `INDEX` = INDEX, `DMAX` = DMAX, `GYROS` = GYROS, `FERET` = FERET, `FERET_DIRS` = FERET_DIRS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "DMAX")
  }
}