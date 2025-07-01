##' QGIS Algorithm provided by QGIS (native c++) Small polygons (native:checkgeometryarea). Detects polygons smaller than a given area. This algorithm checks the areas of polygon geometries. Areas below the area threshold are errors.
##'
##' @title QGIS algorithm - Small polygons
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param UNIQUE_ID `field` - Unique feature identifier. The name of an existing field. ; delimited list of existing field names.
##' @param AREATHRESHOLD `area` - Area threshold. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ERRORS `sink` - Small polygons errors. Path for new vector layer.
##' @param OUTPUT `sink` - Small polygons features. Path for new vector layer.
##' @param TOLERANCE `number` - Tolerance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * ERRORS - outputVector - Small polygons errors
##' * OUTPUT - outputVector - Small polygons features
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_checkgeometryarea <- function(INPUT = qgisprocess:::qgis_default_value(), UNIQUE_ID = qgisprocess:::qgis_default_value(), AREATHRESHOLD = qgisprocess:::qgis_default_value(), ERRORS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), TOLERANCE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:checkgeometryarea")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:checkgeometryarea", `INPUT` = INPUT, `UNIQUE_ID` = UNIQUE_ID, `AREATHRESHOLD` = AREATHRESHOLD, `ERRORS` = ERRORS, `OUTPUT` = OUTPUT, `TOLERANCE` = TOLERANCE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:checkgeometryarea", `INPUT` = INPUT, `UNIQUE_ID` = UNIQUE_ID, `AREATHRESHOLD` = AREATHRESHOLD, `ERRORS` = ERRORS, `OUTPUT` = OUTPUT, `TOLERANCE` = TOLERANCE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "ERRORS")
  }
}