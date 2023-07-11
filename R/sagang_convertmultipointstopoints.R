##' QGIS Algorithm provided by SAGA Next Gen Convert multipoints to points (sagang:convertmultipointstopoints). ---------------- Arguments ----------------  MULTIPOINTS: Multipoints 	Argument type:	source 	Acceptable values: 		- Path to a vector layer POINTS: Points 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer
##'
##' @title QGIS algorithm - Convert multipoints to points
##'
##' @param MULTIPOINTS `source` - Multipoints. Path to a vector layer.
##' @param POINTS `vectorDestination` - Points. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * POINTS - outputVector - Points
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_convertmultipointstopoints <- function(MULTIPOINTS = qgisprocess:::qgis_default_value(), POINTS = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:convertmultipointstopoints")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:convertmultipointstopoints", `MULTIPOINTS` = MULTIPOINTS, `POINTS` = POINTS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:convertmultipointstopoints", `MULTIPOINTS` = MULTIPOINTS, `POINTS` = POINTS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "POINTS")
  }
}