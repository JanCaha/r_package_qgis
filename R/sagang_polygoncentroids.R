##' QGIS Algorithm provided by SAGA Next Gen Polygon centroids (sagang:polygoncentroids). ---------------- Arguments ----------------  POLYGONS: Polygons 	Argument type:	source 	Acceptable values: 		- Path to a vector layer CENTROIDS: Centroids 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer METHOD: Centroids for each part 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression INSIDE: Force Inside 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Polygon centroids
##'
##' @param POLYGONS `source` - Polygons. Path to a vector layer.
##' @param CENTROIDS `vectorDestination` - Centroids. Path for new vector layer.
##' @param METHOD `boolean` - Centroids for each part. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param INSIDE `boolean` - Force Inside. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * CENTROIDS - outputVector - Centroids
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_polygoncentroids <- function(POLYGONS = qgisprocess:::qgis_default_value(), CENTROIDS = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), INSIDE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:polygoncentroids")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:polygoncentroids", `POLYGONS` = POLYGONS, `CENTROIDS` = CENTROIDS, `METHOD` = METHOD, `INSIDE` = INSIDE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:polygoncentroids", `POLYGONS` = POLYGONS, `CENTROIDS` = CENTROIDS, `METHOD` = METHOD, `INSIDE` = INSIDE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CENTROIDS")
  }
}