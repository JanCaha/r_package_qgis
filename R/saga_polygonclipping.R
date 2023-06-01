##' QGIS Algorithm provided by SAGA Polygon clipping (saga:polygonclipping)
##'
##' @title QGIS algorithm Polygon clipping
##'
##' @param CLIP `source` - Clip features. Path to a vector layer.
##' @param S_INPUT `source` - Input features. Path to a vector layer.
##' @param S_OUTPUT `vectorDestination` - Output features. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * S_OUTPUT - outputVector - Output features
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_polygonclipping <- function(CLIP = qgisprocess:::qgis_default_value(), S_INPUT = qgisprocess:::qgis_default_value(), S_OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:polygonclipping")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:polygonclipping", `CLIP` = CLIP, `S_INPUT` = S_INPUT, `S_OUTPUT` = S_OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:polygonclipping", `CLIP` = CLIP, `S_INPUT` = S_INPUT, `S_OUTPUT` = S_OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "S_OUTPUT")
  }
}