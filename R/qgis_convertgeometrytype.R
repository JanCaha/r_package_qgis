##' QGIS Algorithm provided by QGIS Convert geometry type (qgis:convertgeometrytype). This algorithm generates a new layer based on an existing one, with a different type of geometry. Not all conversions are possible. For instance, a line layer can be converted to a point layer, but a point layer cannot be converted to a line layer. See the "Polygonize" or "Lines to polygons" algorithm for alternative options.
##'
##' @title QGIS algorithm - Convert geometry type
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param TYPE `enum`  of `("Centroids", "Nodes", "Linestrings", "Multilinestrings", "Polygons")` - New geometry type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param OUTPUT `sink` - Converted. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Converted
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_convertgeometrytype <- function(INPUT = qgisprocess:::qgis_default_value(), TYPE = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("qgis:convertgeometrytype")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("qgis:convertgeometrytype", `INPUT` = INPUT, `TYPE` = TYPE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("qgis:convertgeometrytype", `INPUT` = INPUT, `TYPE` = TYPE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}