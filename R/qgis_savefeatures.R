##' QGIS Algorithm provided by QGIS (native c++) Save vector features to file (native:savefeatures)
##'
##' @title QGIS algorithm Save vector features to file
##'
##' @param INPUT `source` - Vector features. Path to a vector layer.
##' @param OUTPUT `fileDestination` - Saved features. Path for new file.
##' @param LAYER_NAME `string` - Layer name. String value.
##' @param DATASOURCE_OPTIONS `string` - GDAL dataset options (separate individual options with semicolons). String value.
##' @param LAYER_OPTIONS `string` - GDAL layer options (separate individual options with semicolons). String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * FILE_PATH - outputString - File name and path
##' * LAYER_NAME - outputString - Layer name
##' * OUTPUT - outputFile - Saved features
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_savefeatures <- function(INPUT = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), LAYER_NAME = qgisprocess:::qgis_default_value(), DATASOURCE_OPTIONS = qgisprocess:::qgis_default_value(), LAYER_OPTIONS = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:savefeatures")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:savefeatures", `INPUT` = INPUT, `OUTPUT` = OUTPUT, `LAYER_NAME` = LAYER_NAME, `DATASOURCE_OPTIONS` = DATASOURCE_OPTIONS, `LAYER_OPTIONS` = LAYER_OPTIONS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:savefeatures", `INPUT` = INPUT, `OUTPUT` = OUTPUT, `LAYER_NAME` = LAYER_NAME, `DATASOURCE_OPTIONS` = DATASOURCE_OPTIONS, `LAYER_OPTIONS` = LAYER_OPTIONS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "FILE_PATH")
  }
}