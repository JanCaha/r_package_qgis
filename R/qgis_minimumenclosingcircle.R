##' QGIS Algorithm provided by QGIS (native c++) Minimum enclosing circles (native:minimumenclosingcircle)
##'
##' @title QGIS algorithm Minimum enclosing circles
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param SEGMENTS `number` - Number of segments in circles. A numeric value.
##' @param OUTPUT `sink` - Minimum enclosing circles. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Minimum enclosing circles
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_minimumenclosingcircle <- function(INPUT = qgisprocess:::qgis_default_value(), SEGMENTS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:minimumenclosingcircle")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:minimumenclosingcircle", `INPUT` = INPUT, `SEGMENTS` = SEGMENTS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:minimumenclosingcircle", `INPUT` = INPUT, `SEGMENTS` = SEGMENTS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}