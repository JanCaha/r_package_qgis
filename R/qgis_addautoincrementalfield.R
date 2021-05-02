##' QGIS Algorithm provided by QGIS (native c++) Add autoincremental field (native:addautoincrementalfield)
##'
##' @title QGIS algorithm Add autoincremental field
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param FIELD_NAME `string` - Field name. String value.
##' @param START `number` - Start values at. A numeric value.
##' @param GROUP_FIELDS `field` - Group values by. The name of an existing field. ; delimited list of existing field names.
##' @param SORT_EXPRESSION `expression` - Sort expression. A valid QGIS expression string, e.g "road_name" = 'MAIN RD'.
##' @param SORT_ASCENDING `boolean` - Sort ascending. 1 for true/yes. 0 for false/no.
##' @param SORT_NULLS_FIRST `boolean` - Sort nulls first. 1 for true/yes. 0 for false/no.
##' @param OUTPUT `sink` - Incremented. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Incremented
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_addautoincrementalfield <- function(INPUT = qgisprocess::qgis_default_value(), FIELD_NAME = qgisprocess::qgis_default_value(), START = qgisprocess::qgis_default_value(), GROUP_FIELDS = qgisprocess::qgis_default_value(), SORT_EXPRESSION = qgisprocess::qgis_default_value(), SORT_ASCENDING = qgisprocess::qgis_default_value(), SORT_NULLS_FIRST = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("native:addautoincrementalfield")
  output <- qgisprocess::qgis_run_algorithm("native:addautoincrementalfield",`INPUT` = INPUT, `FIELD_NAME` = FIELD_NAME, `START` = START, `GROUP_FIELDS` = GROUP_FIELDS, `SORT_EXPRESSION` = SORT_EXPRESSION, `SORT_ASCENDING` = SORT_ASCENDING, `SORT_NULLS_FIRST` = SORT_NULLS_FIRST, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}