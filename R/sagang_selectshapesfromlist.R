##' QGIS Algorithm provided by SAGA Next Gen Select shapes from list (sagang:selectshapesfromlist). ---------------- Arguments ----------------  SHAPESLIST: Shapes List 	Argument type:	multilayer SHAPES: Shapes 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer INDEX: Index 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Select shapes from list
##'
##' @param SHAPESLIST `multilayer` - Shapes List. .
##' @param SHAPES `vectorDestination` - Shapes. Path for new vector layer.
##' @param INDEX `number` - Index. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * SHAPES - outputVector - Shapes
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_selectshapesfromlist <- function(SHAPESLIST = qgisprocess:::qgis_default_value(), SHAPES = qgisprocess:::qgis_default_value(), INDEX = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:selectshapesfromlist")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:selectshapesfromlist", `SHAPESLIST` = SHAPESLIST, `SHAPES` = SHAPES, `INDEX` = INDEX,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:selectshapesfromlist", `SHAPESLIST` = SHAPESLIST, `SHAPES` = SHAPES, `INDEX` = INDEX,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "SHAPES")
  }
}