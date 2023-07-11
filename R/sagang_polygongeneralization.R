##' QGIS Algorithm provided by SAGA Next Gen Polygon generalization (sagang:polygongeneralization). ---------------- Arguments ----------------  POLYGONS: Shapes 	Argument type:	source 	Acceptable values: 		- Path to a vector layer GENERALIZED: Shape Indices 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer THRESHOLD: Threshold 	Default value:	100 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Polygon generalization
##'
##' @param POLYGONS `source` - Shapes. Path to a vector layer.
##' @param GENERALIZED `vectorDestination` - Shape Indices. Path for new vector layer.
##' @param THRESHOLD `number` - Threshold. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * GENERALIZED - outputVector - Shape Indices
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_polygongeneralization <- function(POLYGONS = qgisprocess:::qgis_default_value(), GENERALIZED = qgisprocess:::qgis_default_value(), THRESHOLD = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:polygongeneralization")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:polygongeneralization", `POLYGONS` = POLYGONS, `GENERALIZED` = GENERALIZED, `THRESHOLD` = THRESHOLD,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:polygongeneralization", `POLYGONS` = POLYGONS, `GENERALIZED` = GENERALIZED, `THRESHOLD` = THRESHOLD,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "GENERALIZED")
  }
}