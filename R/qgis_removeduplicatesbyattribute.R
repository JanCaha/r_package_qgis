##' QGIS Algorithm provided by QGIS (native c++) Delete duplicates by attribute (native:removeduplicatesbyattribute). Removes duplicate rows by a field value (or multiple field values). Removes duplicate rows by a field value (or multiple field values). The first matching row will be retained, and duplicates will be discarded.  Optionally, these duplicate records can be saved to a separate output for analysis.
##'
##' @title QGIS algorithm - Delete duplicates by attribute
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param FIELDS `field` - Field to match duplicates by. The name of an existing field. ; delimited list of existing field names.
##' @param OUTPUT `sink` - Filtered (no duplicates). Path for new vector layer.
##' @param DUPLICATES `sink` - Filtered (duplicates). Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * DUPLICATES - outputVector - Filtered (duplicates)
##' * DUPLICATE_COUNT - outputNumber - Count of discarded duplicate records
##' * OUTPUT - outputVector - Filtered (no duplicates)
##' * RETAINED_COUNT - outputNumber - Count of retained records
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_removeduplicatesbyattribute <- function(INPUT = qgisprocess:::qgis_default_value(), FIELDS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), DUPLICATES = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:removeduplicatesbyattribute")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:removeduplicatesbyattribute", `INPUT` = INPUT, `FIELDS` = FIELDS, `OUTPUT` = OUTPUT, `DUPLICATES` = DUPLICATES,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:removeduplicatesbyattribute", `INPUT` = INPUT, `FIELDS` = FIELDS, `OUTPUT` = OUTPUT, `DUPLICATES` = DUPLICATES,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "DUPLICATES")
  }
}