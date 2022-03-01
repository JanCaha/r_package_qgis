##' QGIS Algorithm provided by QGIS (native c++) Densify by interval (native:densifygeometriesgivenaninterval)
##'
##' @title QGIS algorithm Densify by interval
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param INTERVAL `distance` - Interval between vertices to add. A numeric value.
##' @param OUTPUT `sink` - Densified. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Densified
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_densifygeometriesgivenaninterval <- function(INPUT = qgisprocess::qgis_default_value(), INTERVAL = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:densifygeometriesgivenaninterval")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:densifygeometriesgivenaninterval", `INPUT` = INPUT, `INTERVAL` = INTERVAL, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:densifygeometriesgivenaninterval", `INPUT` = INPUT, `INTERVAL` = INTERVAL, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}