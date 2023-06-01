##' QGIS Algorithm provided by SAGA Fit n points in polygon (saga:fitnpointsinpolygon)
##'
##' @title QGIS algorithm Fit n points in polygon
##'
##' @param SHAPES `source` - Shapes. Path to a vector layer.
##' @param NUMPOINTS `number` - Number of points. A numeric value.
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

saga_fitnpointsinpolygon <- function(SHAPES = qgisprocess:::qgis_default_value(), NUMPOINTS = qgisprocess:::qgis_default_value(), POINTS = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:fitnpointsinpolygon")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:fitnpointsinpolygon", `SHAPES` = SHAPES, `NUMPOINTS` = NUMPOINTS, `POINTS` = POINTS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:fitnpointsinpolygon", `SHAPES` = SHAPES, `NUMPOINTS` = NUMPOINTS, `POINTS` = POINTS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "POINTS")
  }
}