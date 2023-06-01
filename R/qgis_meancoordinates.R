##' QGIS Algorithm provided by QGIS (native c++) Mean coordinate(s) (native:meancoordinates)
##'
##' @title QGIS algorithm Mean coordinate(s)
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param WEIGHT `field` - Weight field. The name of an existing field. ; delimited list of existing field names.
##' @param UID `field` - Unique ID field. The name of an existing field. ; delimited list of existing field names.
##' @param OUTPUT `sink` - Mean coordinates. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Mean coordinates
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_meancoordinates <- function(INPUT = qgisprocess:::qgis_default_value(), WEIGHT = qgisprocess:::qgis_default_value(), UID = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:meancoordinates")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:meancoordinates", `INPUT` = INPUT, `WEIGHT` = WEIGHT, `UID` = UID, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:meancoordinates", `INPUT` = INPUT, `WEIGHT` = WEIGHT, `UID` = UID, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}