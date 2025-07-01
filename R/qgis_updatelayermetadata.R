##' QGIS Algorithm provided by QGIS (native c++) Update layer metadata (native:updatelayermetadata). Copies all non-empty metadata fields from one layer to another. This algorithm copies all non-empty metadata fields from a source layer to a target layer.  Leaves empty input fields unchanged in the target.
##'
##' @title QGIS algorithm - Update layer metadata
##'
##' @param SOURCE `layer` - Source layer. Path to a vector, raster or mesh layer.
##' @param TARGET `layer` - Target layer. Path to a vector, raster or mesh layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputLayer - Updated layer
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_updatelayermetadata <- function(SOURCE = qgisprocess:::qgis_default_value(), TARGET = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:updatelayermetadata")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:updatelayermetadata", `SOURCE` = SOURCE, `TARGET` = TARGET,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:updatelayermetadata", `SOURCE` = SOURCE, `TARGET` = TARGET,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}