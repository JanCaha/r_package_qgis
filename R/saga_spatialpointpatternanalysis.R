##' QGIS Algorithm provided by SAGA Spatial point pattern analysis (saga:spatialpointpatternanalysis)
##'
##' @title QGIS algorithm Spatial point pattern analysis
##'
##' @param POINTS `source` - Points. Path to a vector layer.
##' @param STEP `number` - Vertex Distance (Degree). A numeric value.
##' @param CENTRE `vectorDestination` - Mean Centre. Path for new vector layer.
##' @param STDDIST `vectorDestination` - Standard Distance. Path for new vector layer.
##' @param BBOX `vectorDestination` - Bounding Box. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * BBOX - outputVector - Bounding Box
##' * CENTRE - outputVector - Mean Centre
##' * STDDIST - outputVector - Standard Distance
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_spatialpointpatternanalysis <- function(POINTS = qgisprocess:::qgis_default_value(), STEP = qgisprocess:::qgis_default_value(), CENTRE = qgisprocess:::qgis_default_value(), STDDIST = qgisprocess:::qgis_default_value(), BBOX = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:spatialpointpatternanalysis")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:spatialpointpatternanalysis", `POINTS` = POINTS, `STEP` = STEP, `CENTRE` = CENTRE, `STDDIST` = STDDIST, `BBOX` = BBOX,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:spatialpointpatternanalysis", `POINTS` = POINTS, `STEP` = STEP, `CENTRE` = CENTRE, `STDDIST` = STDDIST, `BBOX` = BBOX,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "BBOX")
  }
}