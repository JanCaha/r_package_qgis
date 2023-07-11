##' QGIS Algorithm provided by SAGA Next Gen Populate polygons with points (sagang:populatepolygonswithpoints). ---------------- Arguments ----------------  POLYGONS: Polygons 	Argument type:	source 	Acceptable values: 		- Path to a vector layer POINTS: Points 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer NUMFIELD: Number of Points 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names NUMPOINTS: Number of Points 	Default value:	100 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression MAXITER: Maximum Iterations 	Default value:	30 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Populate polygons with points
##'
##' @param POLYGONS `source` - Polygons. Path to a vector layer.
##' @param POINTS `vectorDestination` - Points. Path for new vector layer.
##' @param NUMFIELD `field` - Number of Points. The name of an existing field. ; delimited list of existing field names.
##' @param NUMPOINTS `number` - Number of Points. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MAXITER `number` - Maximum Iterations. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * POINTS - outputVector - Points
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_populatepolygonswithpoints <- function(POLYGONS = qgisprocess:::qgis_default_value(), POINTS = qgisprocess:::qgis_default_value(), NUMFIELD = qgisprocess:::qgis_default_value(), NUMPOINTS = qgisprocess:::qgis_default_value(), MAXITER = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:populatepolygonswithpoints")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:populatepolygonswithpoints", `POLYGONS` = POLYGONS, `POINTS` = POINTS, `NUMFIELD` = NUMFIELD, `NUMPOINTS` = NUMPOINTS, `MAXITER` = MAXITER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:populatepolygonswithpoints", `POLYGONS` = POLYGONS, `POINTS` = POINTS, `NUMFIELD` = NUMFIELD, `NUMPOINTS` = NUMPOINTS, `MAXITER` = MAXITER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "POINTS")
  }
}