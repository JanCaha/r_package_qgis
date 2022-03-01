##' QGIS Algorithm provided by QGIS (native c++) Retain fields (native:retainfields)
##'
##' @title QGIS algorithm Retain fields
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param FIELDS `field` - Fields to retain. The name of an existing field. ; delimited list of existing field names.
##' @param OUTPUT `sink` - Retained fields. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Retained fields
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_retainfields <- function(INPUT = qgisprocess::qgis_default_value(), FIELDS = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:retainfields")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:retainfields", `INPUT` = INPUT, `FIELDS` = FIELDS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:retainfields", `INPUT` = INPUT, `FIELDS` = FIELDS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}