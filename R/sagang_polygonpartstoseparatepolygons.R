##' QGIS Algorithm provided by SAGA Next Gen Polygon parts to separate polygons (sagang:polygonpartstoseparatepolygons). ---------------- Arguments ----------------  POLYGONS: Polygons 	Argument type:	source 	Acceptable values: 		- Path to a vector layer PARTS: Polygon Parts 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer LAKES: Lakes 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Polygon parts to separate polygons
##'
##' @param POLYGONS `source` - Polygons. Path to a vector layer.
##' @param PARTS `vectorDestination` - Polygon Parts. Path for new vector layer.
##' @param LAKES `boolean` - Lakes. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * PARTS - outputVector - Polygon Parts
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_polygonpartstoseparatepolygons <- function(POLYGONS = qgisprocess:::qgis_default_value(), PARTS = qgisprocess:::qgis_default_value(), LAKES = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:polygonpartstoseparatepolygons")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:polygonpartstoseparatepolygons", `POLYGONS` = POLYGONS, `PARTS` = PARTS, `LAKES` = LAKES,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:polygonpartstoseparatepolygons", `POLYGONS` = POLYGONS, `PARTS` = PARTS, `LAKES` = LAKES,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "PARTS")
  }
}