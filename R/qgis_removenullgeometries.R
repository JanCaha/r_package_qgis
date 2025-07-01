##' QGIS Algorithm provided by QGIS (native c++) Remove null geometries (native:removenullgeometries). Removes any features which do not have a geometry from a vector layer. This algorithm removes any features which do not have a geometry from a vector layer. All other features will be copied unchanged.  Optionally, the features with null geometries can be saved to a separate output.  If 'Also remove empty geometries' is checked, the algorithm removes features whose geometries have no coordinates, i.e., geometries that are empty. In that case, also the null output will reflect this option, containing both null and empty geometries.
##'
##' @title QGIS algorithm - Remove null geometries
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param REMOVE_EMPTY `boolean` - Also remove empty geometries. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Non null geometries. Path for new vector layer.
##' @param NULL_OUTPUT `sink` - Null geometries. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * NULL_OUTPUT - outputVector - Null geometries
##' * OUTPUT - outputVector - Non null geometries
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_removenullgeometries <- function(INPUT = qgisprocess:::qgis_default_value(), REMOVE_EMPTY = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), NULL_OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:removenullgeometries")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:removenullgeometries", `INPUT` = INPUT, `REMOVE_EMPTY` = REMOVE_EMPTY, `OUTPUT` = OUTPUT, `NULL_OUTPUT` = NULL_OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:removenullgeometries", `INPUT` = INPUT, `REMOVE_EMPTY` = REMOVE_EMPTY, `OUTPUT` = OUTPUT, `NULL_OUTPUT` = NULL_OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NULL_OUTPUT")
  }
}