##' QGIS Algorithm provided by QGIS (native c++) Add autoincremental field (native:addautoincrementalfield)
##'
##' @title QGIS algorithm Add autoincremental field
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param FIELD_NAME `string` - Field name. String value.
##' @param START `number` - Start values at. A numeric value.
##' @param MODULUS `number` - Modulus value. A numeric value.
##' @param GROUP_FIELDS `field` - Group values by. The name of an existing field. ; delimited list of existing field names.
##' @param SORT_EXPRESSION `expression` - Sort expression. A valid QGIS expression string, e.g "road_name" = 'MAIN RD'.
##' @param SORT_ASCENDING `boolean` - Sort ascending. 1 for true/yes. 0 for false/no.
##' @param SORT_NULLS_FIRST `boolean` - Sort nulls first. 1 for true/yes. 0 for false/no.
##' @param OUTPUT `sink` - Incremented. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Incremented
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_addautoincrementalfield <- function(INPUT = qgisprocess::qgis_default_value(), FIELD_NAME = qgisprocess::qgis_default_value(), START = qgisprocess::qgis_default_value(), MODULUS = qgisprocess::qgis_default_value(), GROUP_FIELDS = qgisprocess::qgis_default_value(), SORT_EXPRESSION = qgisprocess::qgis_default_value(), SORT_ASCENDING = qgisprocess::qgis_default_value(), SORT_NULLS_FIRST = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:addautoincrementalfield")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:addautoincrementalfield", `INPUT` = INPUT, `FIELD_NAME` = FIELD_NAME, `START` = START, `MODULUS` = MODULUS, `GROUP_FIELDS` = GROUP_FIELDS, `SORT_EXPRESSION` = SORT_EXPRESSION, `SORT_ASCENDING` = SORT_ASCENDING, `SORT_NULLS_FIRST` = SORT_NULLS_FIRST, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:addautoincrementalfield", `INPUT` = INPUT, `FIELD_NAME` = FIELD_NAME, `START` = START, `MODULUS` = MODULUS, `GROUP_FIELDS` = GROUP_FIELDS, `SORT_EXPRESSION` = SORT_EXPRESSION, `SORT_ASCENDING` = SORT_ASCENDING, `SORT_NULLS_FIRST` = SORT_NULLS_FIRST, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}