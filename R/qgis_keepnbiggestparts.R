##' QGIS Algorithm provided by QGIS (native c++) Keep N biggest parts (native:keepnbiggestparts). This algorithm takes a polygon layer and creates a new polygon layer in which multipart geometries have been removed, leaving only the n largest (in terms of area) parts.
##'
##' @title QGIS algorithm - Keep N biggest parts
##'
##' @param POLYGONS `source` - Input layer. Path to a vector layer.
##' @param PARTS `number` - Parts to keep. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Parts. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Parts
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_keepnbiggestparts <- function(POLYGONS = qgisprocess:::qgis_default_value(), PARTS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:keepnbiggestparts")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:keepnbiggestparts", `POLYGONS` = POLYGONS, `PARTS` = PARTS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:keepnbiggestparts", `POLYGONS` = POLYGONS, `PARTS` = PARTS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}