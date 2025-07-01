##' QGIS Algorithm provided by QGIS (native c++) Nearest neighbour analysis (native:nearestneighbouranalysis). Performs nearest neighbor analysis for a point layer. This algorithm performs nearest neighbor analysis for a point layer.  The output describes how the data are distributed (clustered, randomly or distributed).  Output is generated as an HTML file with the computed statistical values.
##'
##' @title QGIS algorithm - Nearest neighbour analysis
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param OUTPUT_HTML_FILE `fileDestination` - Nearest neighbour. Path for new file.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * EXPECTED_MD - outputNumber - Expected mean distance
##' * NN_INDEX - outputNumber - Nearest neighbour index
##' * OBSERVED_MD - outputNumber - Observed mean distance
##' * OUTPUT_HTML_FILE - outputHtml - Nearest neighbour
##' * POINT_COUNT - outputNumber - Number of points
##' * Z_SCORE - outputNumber - Z-score
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_nearestneighbouranalysis <- function(INPUT = qgisprocess:::qgis_default_value(), OUTPUT_HTML_FILE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:nearestneighbouranalysis")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:nearestneighbouranalysis", `INPUT` = INPUT, `OUTPUT_HTML_FILE` = OUTPUT_HTML_FILE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:nearestneighbouranalysis", `INPUT` = INPUT, `OUTPUT_HTML_FILE` = OUTPUT_HTML_FILE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "EXPECTED_MD")
  }
}