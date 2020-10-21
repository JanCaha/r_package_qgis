##' QGIS Algorithm provided by SAGA Convex hull (saga:convexhull)
##'
##' @title QGIS algorithm Convex hull
##'
##' @param SHAPES `source` - Points. Path to a vector layer.
##' @param POLYPOINTS `enum`  of `("[0] one hull for all shapes", "[1] one hull per shape", "[2] one hull per shape part")` - Hull Construction. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param HULLS `vectorDestination` - Convex Hull. Path for new vector layer.
##' @param BOXES `vectorDestination` - Minimum Bounding Box. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * HULLS - outputVector - Convex Hull
##' * BOXES - outputVector - Minimum Bounding Box
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_convexhull <- function(SHAPES = qgisprocess::qgis_default_value(), POLYPOINTS = qgisprocess::qgis_default_value(), HULLS = qgisprocess::qgis_default_value(), BOXES = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:convexhull",`SHAPES` = SHAPES, `POLYPOINTS` = POLYPOINTS, `HULLS` = HULLS, `BOXES` = BOXES,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "HULLS")
  }
}