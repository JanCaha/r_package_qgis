##' QGIS Algorithm provided by SAGA Next Gen Shared polygon edges (sagang:sharedpolygonedges). ---------------- Arguments ----------------  POLYGONS: Polygons 	Argument type:	source 	Acceptable values: 		- Path to a vector layer ATTRIBUTE: Attribute 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names EDGES: Edges 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer EPSILON: Tolerance 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression VERTICES: Check Vertices 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DOUBLE: Double Edges 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Shared polygon edges
##'
##' @param POLYGONS `source` - Polygons. Path to a vector layer.
##' @param ATTRIBUTE `field` - Attribute. The name of an existing field. ; delimited list of existing field names.
##' @param EDGES `vectorDestination` - Edges. Path for new vector layer.
##' @param EPSILON `number` - Tolerance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param VERTICES `boolean` - Check Vertices. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DOUBLE `boolean` - Double Edges. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * EDGES - outputVector - Edges
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_sharedpolygonedges <- function(POLYGONS = qgisprocess:::qgis_default_value(), ATTRIBUTE = qgisprocess:::qgis_default_value(), EDGES = qgisprocess:::qgis_default_value(), EPSILON = qgisprocess:::qgis_default_value(), VERTICES = qgisprocess:::qgis_default_value(), DOUBLE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:sharedpolygonedges")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:sharedpolygonedges", `POLYGONS` = POLYGONS, `ATTRIBUTE` = ATTRIBUTE, `EDGES` = EDGES, `EPSILON` = EPSILON, `VERTICES` = VERTICES, `DOUBLE` = DOUBLE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:sharedpolygonedges", `POLYGONS` = POLYGONS, `ATTRIBUTE` = ATTRIBUTE, `EDGES` = EDGES, `EPSILON` = EPSILON, `VERTICES` = VERTICES, `DOUBLE` = DOUBLE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "EDGES")
  }
}