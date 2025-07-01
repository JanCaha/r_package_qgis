##' QGIS Algorithm provided by QGIS (native c++) Features inside polygon (native:checkgeometrycontained). Detects features contained inside polygons from a list of polygon layers. This algorithm checks the input geometries contained in the polygons from the polygon layers list. A polygon layer can be checked against itself. Input features contained in the polygon layers features are errors.
##'
##' @title QGIS algorithm - Features inside polygon
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param UNIQUE_ID `field` - Unique feature identifier. The name of an existing field. ; delimited list of existing field names.
##' @param POLYGONS `multilayer` - Polygon layers. .
##' @param OUTPUT `sink` - Errors from contained features. Path for new vector layer.
##' @param ERRORS `sink` - Contained features. Path for new vector layer.
##' @param TOLERANCE `number` - Tolerance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * ERRORS - outputVector - Contained features
##' * OUTPUT - outputVector - Errors from contained features
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_checkgeometrycontained <- function(INPUT = qgisprocess:::qgis_default_value(), UNIQUE_ID = qgisprocess:::qgis_default_value(), POLYGONS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), ERRORS = qgisprocess:::qgis_default_value(), TOLERANCE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:checkgeometrycontained")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:checkgeometrycontained", `INPUT` = INPUT, `UNIQUE_ID` = UNIQUE_ID, `POLYGONS` = POLYGONS, `OUTPUT` = OUTPUT, `ERRORS` = ERRORS, `TOLERANCE` = TOLERANCE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:checkgeometrycontained", `INPUT` = INPUT, `UNIQUE_ID` = UNIQUE_ID, `POLYGONS` = POLYGONS, `OUTPUT` = OUTPUT, `ERRORS` = ERRORS, `TOLERANCE` = TOLERANCE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "ERRORS")
  }
}