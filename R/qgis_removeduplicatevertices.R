##' QGIS Algorithm provided by QGIS (native c++) Remove duplicate vertices (native:removeduplicatevertices)
##'
##' @title QGIS algorithm Remove duplicate vertices
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param TOLERANCE `distance` - Tolerance. A numeric value.
##' @param USE_Z_VALUE `boolean` - Use Z Value. 1 for true/yes. 0 for false/no.
##' @param OUTPUT `sink` - Cleaned. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Cleaned
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_removeduplicatevertices <- function(INPUT = qgisprocess::qgis_default_value(), TOLERANCE = qgisprocess::qgis_default_value(), USE_Z_VALUE = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:removeduplicatevertices")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:removeduplicatevertices", `INPUT` = INPUT, `TOLERANCE` = TOLERANCE, `USE_Z_VALUE` = USE_Z_VALUE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:removeduplicatevertices", `INPUT` = INPUT, `TOLERANCE` = TOLERANCE, `USE_Z_VALUE` = USE_Z_VALUE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}