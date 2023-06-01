##' QGIS Algorithm provided by GDAL Convert format (gdal:convertformat)
##'
##' @title QGIS algorithm Convert format
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param CONVERT_ALL_LAYERS `boolean` - Convert all layers from dataset. 1 for true/yes. 0 for false/no.
##' @param OPTIONS `string` - Additional creation options. String value.
##' @param OUTPUT `vectorDestination` - Converted. Path for new vector layer.
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

gdal_convertformat <- function(INPUT = qgisprocess:::qgis_default_value(), CONVERT_ALL_LAYERS = qgisprocess:::qgis_default_value(), OPTIONS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("gdal:convertformat")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("gdal:convertformat", `INPUT` = INPUT, `CONVERT_ALL_LAYERS` = CONVERT_ALL_LAYERS, `OPTIONS` = OPTIONS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("gdal:convertformat", `INPUT` = INPUT, `CONVERT_ALL_LAYERS` = CONVERT_ALL_LAYERS, `OPTIONS` = OPTIONS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}