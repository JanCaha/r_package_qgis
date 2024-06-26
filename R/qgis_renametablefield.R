##' QGIS Algorithm provided by QGIS (native c++) Rename field (native:renametablefield). Renames an existing field from a vector layer. This algorithm renames an existing field from a vector layer.
##'
##' @title QGIS algorithm - Rename field
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param FIELD `field` - Field to rename. The name of an existing field. ; delimited list of existing field names.
##' @param NEW_NAME `string` - New field name. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Renamed. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Renamed
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_renametablefield <- function(INPUT = qgisprocess:::qgis_default_value(), FIELD = qgisprocess:::qgis_default_value(), NEW_NAME = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:renametablefield")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:renametablefield", `INPUT` = INPUT, `FIELD` = FIELD, `NEW_NAME` = NEW_NAME, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:renametablefield", `INPUT` = INPUT, `FIELD` = FIELD, `NEW_NAME` = NEW_NAME, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}