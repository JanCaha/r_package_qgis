##' QGIS Algorithm provided by QGIS (native c++) Overlap analysis (native:calculatevectoroverlaps). This algorithm calculates the area and percentage cover by which features from an input layer are overlapped by features from a selection of overlay layers.  New attributes are added to the output layer reporting the total area of overlap and percentage of the input feature overlapped by each of the selected overlay layers.
##'
##' @title QGIS algorithm - Overlap analysis
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param LAYERS `multilayer` - Overlay layers. .
##' @param OUTPUT `sink` - Overlap. Path for new vector layer.
##' @param GRID_SIZE `number` - Grid size. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Overlap
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_calculatevectoroverlaps <- function(INPUT = qgisprocess:::qgis_default_value(), LAYERS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), GRID_SIZE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:calculatevectoroverlaps")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:calculatevectoroverlaps", `INPUT` = INPUT, `LAYERS` = LAYERS, `OUTPUT` = OUTPUT, `GRID_SIZE` = GRID_SIZE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:calculatevectoroverlaps", `INPUT` = INPUT, `LAYERS` = LAYERS, `OUTPUT` = OUTPUT, `GRID_SIZE` = GRID_SIZE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}