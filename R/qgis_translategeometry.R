##' QGIS Algorithm provided by QGIS (native c++) Translate (native:translategeometry). Moves the geometries within a layer, by offsetting them with a specified x, y, z or m displacement. This algorithm moves the geometries within a layer, by offsetting them with a specified x and y displacement.  Z and M values present in the geometry can also be translated.
##'
##' @title QGIS algorithm - Translate
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param DELTA_X `distance` - Offset distance (x-axis). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DELTA_Y `distance` - Offset distance (y-axis). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DELTA_Z `number` - Offset distance (z-axis). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DELTA_M `number` - Offset distance (m values). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Translated. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Translated
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_translategeometry <- function(INPUT = qgisprocess:::qgis_default_value(), DELTA_X = qgisprocess:::qgis_default_value(), DELTA_Y = qgisprocess:::qgis_default_value(), DELTA_Z = qgisprocess:::qgis_default_value(), DELTA_M = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:translategeometry")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:translategeometry", `INPUT` = INPUT, `DELTA_X` = DELTA_X, `DELTA_Y` = DELTA_Y, `DELTA_Z` = DELTA_Z, `DELTA_M` = DELTA_M, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:translategeometry", `INPUT` = INPUT, `DELTA_X` = DELTA_X, `DELTA_Y` = DELTA_Y, `DELTA_Z` = DELTA_Z, `DELTA_M` = DELTA_M, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}