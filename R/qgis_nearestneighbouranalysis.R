##' QGIS Algorithm provided by QGIS (native c++) Nearest neighbour analysis (native:nearestneighbouranalysis)
##'
##' @title QGIS algorithm Nearest neighbour analysis
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param OUTPUT_HTML_FILE `fileDestination` - Nearest neighbour. Path for new file.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT_HTML_FILE - outputHtml - Nearest neighbour
##' * OBSERVED_MD - outputNumber - Observed mean distance
##' * EXPECTED_MD - outputNumber - Expected mean distance
##' * NN_INDEX - outputNumber - Nearest neighbour index
##' * POINT_COUNT - outputNumber - Number of points
##' * Z_SCORE - outputNumber - Z
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_nearestneighbouranalysis <- function(INPUT = qgisprocess::qgis_default_value(), OUTPUT_HTML_FILE = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("native:nearestneighbouranalysis",`INPUT` = INPUT, `OUTPUT_HTML_FILE` = OUTPUT_HTML_FILE,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT_HTML_FILE")
  }
}