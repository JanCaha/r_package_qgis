##' QGIS Algorithm provided by QGIS (native c++) Add unique value index field (native:adduniquevalueindexfield)
##'
##' @title QGIS algorithm Add unique value index field
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param FIELD `field` - Class field. The name of an existing field. ; delimited list of existing field names.
##' @param FIELD_NAME `string` - Output field name. String value.
##' @param OUTPUT `sink` - Layer with index field. Path for new vector layer.
##' @param SUMMARY_OUTPUT `sink` - Class summary. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Layer with index field
##' * SUMMARY_OUTPUT - outputVector - Class summary
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_adduniquevalueindexfield <- function(INPUT = qgisprocess::qgis_default_value(), FIELD = qgisprocess::qgis_default_value(), FIELD_NAME = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(), SUMMARY_OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:adduniquevalueindexfield")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:adduniquevalueindexfield", `INPUT` = INPUT, `FIELD` = FIELD, `FIELD_NAME` = FIELD_NAME, `OUTPUT` = OUTPUT, `SUMMARY_OUTPUT` = SUMMARY_OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:adduniquevalueindexfield", `INPUT` = INPUT, `FIELD` = FIELD, `FIELD_NAME` = FIELD_NAME, `OUTPUT` = OUTPUT, `SUMMARY_OUTPUT` = SUMMARY_OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}