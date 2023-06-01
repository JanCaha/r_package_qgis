##' QGIS Algorithm provided by SAGA Convert lines to polygons (saga:convertlinestopolygons)
##'
##' @title QGIS algorithm Convert lines to polygons
##'
##' @param LINES `source` - Lines. Path to a vector layer.
##' @param POLYGONS `vectorDestination` - Polygons. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * POLYGONS - outputVector - Polygons
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_convertlinestopolygons <- function(LINES = qgisprocess:::qgis_default_value(), POLYGONS = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:convertlinestopolygons")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:convertlinestopolygons", `LINES` = LINES, `POLYGONS` = POLYGONS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:convertlinestopolygons", `LINES` = LINES, `POLYGONS` = POLYGONS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "POLYGONS")
  }
}