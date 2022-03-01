##' QGIS Algorithm provided by QGIS (native c++) Filter vertices by M value (native:filterverticesbym)
##'
##' @title QGIS algorithm Filter vertices by M value
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param MIN `number` - Minimum. A numeric value.
##' @param MAX `number` - Maximum. A numeric value.
##' @param OUTPUT `sink` - Filtered. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Filtered
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_filterverticesbym <- function(INPUT = qgisprocess::qgis_default_value(), MIN = qgisprocess::qgis_default_value(), MAX = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:filterverticesbym")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:filterverticesbym", `INPUT` = INPUT, `MIN` = MIN, `MAX` = MAX, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:filterverticesbym", `INPUT` = INPUT, `MIN` = MIN, `MAX` = MAX, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}