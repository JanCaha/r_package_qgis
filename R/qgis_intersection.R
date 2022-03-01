##' QGIS Algorithm provided by QGIS (native c++) Intersection (native:intersection)
##'
##' @title QGIS algorithm Intersection
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param OVERLAY `source` - Overlay layer. Path to a vector layer.
##' @param INPUT_FIELDS `field` - Input fields to keep (leave empty to keep all fields). The name of an existing field. ; delimited list of existing field names.
##' @param OVERLAY_FIELDS `field` - Overlay fields to keep (leave empty to keep all fields). The name of an existing field. ; delimited list of existing field names.
##' @param OVERLAY_FIELDS_PREFIX `string` - Overlay fields prefix. String value.
##' @param OUTPUT `sink` - Intersection. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Intersection
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_intersection <- function(INPUT = qgisprocess::qgis_default_value(), OVERLAY = qgisprocess::qgis_default_value(), INPUT_FIELDS = qgisprocess::qgis_default_value(), OVERLAY_FIELDS = qgisprocess::qgis_default_value(), OVERLAY_FIELDS_PREFIX = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:intersection")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:intersection", `INPUT` = INPUT, `OVERLAY` = OVERLAY, `INPUT_FIELDS` = INPUT_FIELDS, `OVERLAY_FIELDS` = OVERLAY_FIELDS, `OVERLAY_FIELDS_PREFIX` = OVERLAY_FIELDS_PREFIX, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:intersection", `INPUT` = INPUT, `OVERLAY` = OVERLAY, `INPUT_FIELDS` = INPUT_FIELDS, `OVERLAY_FIELDS` = OVERLAY_FIELDS, `OVERLAY_FIELDS_PREFIX` = OVERLAY_FIELDS_PREFIX, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}