##' QGIS Algorithm provided by QGIS (native c++) Missing vertices along borders (native:checkgeometrymissingvertex). Detects missing vertices along polygon borders for topology compliance. This algorithm checks for missing vertices along polygon borders. To be topologically correct, a vertex at the junction of two polygons must be present on both polygons. Missing vertices are errors.
##'
##' @title QGIS algorithm - Missing vertices along borders
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param UNIQUE_ID `field` - Unique feature identifier. The name of an existing field. ; delimited list of existing field names.
##' @param ERRORS `sink` - Missing vertices errors. Path for new vector layer.
##' @param OUTPUT `sink` - Missing vertices features. Path for new vector layer.
##' @param TOLERANCE `number` - Tolerance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * ERRORS - outputVector - Missing vertices errors
##' * OUTPUT - outputVector - Missing vertices features
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_checkgeometrymissingvertex <- function(INPUT = qgisprocess:::qgis_default_value(), UNIQUE_ID = qgisprocess:::qgis_default_value(), ERRORS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), TOLERANCE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:checkgeometrymissingvertex")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:checkgeometrymissingvertex", `INPUT` = INPUT, `UNIQUE_ID` = UNIQUE_ID, `ERRORS` = ERRORS, `OUTPUT` = OUTPUT, `TOLERANCE` = TOLERANCE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:checkgeometrymissingvertex", `INPUT` = INPUT, `UNIQUE_ID` = UNIQUE_ID, `ERRORS` = ERRORS, `OUTPUT` = OUTPUT, `TOLERANCE` = TOLERANCE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "ERRORS")
  }
}