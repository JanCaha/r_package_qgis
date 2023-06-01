##' QGIS Algorithm provided by SAGA Convex hull (saga:convexhull)
##'
##' @title QGIS algorithm Convex hull
##'
##' @param SHAPES `source` - Points. Path to a vector layer.
##' @param POLYPOINTS `enum`  of `("[0] one hull for all shapes", "[1] one hull per shape", "[2] one hull per shape part")` - Hull Construction. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param HULLS `vectorDestination` - Convex Hull. Path for new vector layer.
##' @param BOXES `vectorDestination` - Minimum Bounding Box. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * BOXES - outputVector - Minimum Bounding Box
##' * HULLS - outputVector - Convex Hull
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_convexhull <- function(SHAPES = qgisprocess:::qgis_default_value(), POLYPOINTS = qgisprocess:::qgis_default_value(), HULLS = qgisprocess:::qgis_default_value(), BOXES = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:convexhull")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:convexhull", `SHAPES` = SHAPES, `POLYPOINTS` = POLYPOINTS, `HULLS` = HULLS, `BOXES` = BOXES,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:convexhull", `SHAPES` = SHAPES, `POLYPOINTS` = POLYPOINTS, `HULLS` = HULLS, `BOXES` = BOXES,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "BOXES")
  }
}