##' QGIS Algorithm provided by QGIS (native c++) Snap geometries to layer (native:snapgeometries)
##'
##' @title QGIS algorithm Snap geometries to layer
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param REFERENCE_LAYER `source` - Reference layer. Path to a vector layer.
##' @param TOLERANCE `distance` - Tolerance. A numeric value.
##' @param BEHAVIOR `enum`  of `("Prefer aligning nodes, insert extra vertices where required", "Prefer closest point, insert extra vertices where required", "Prefer aligning nodes, don't insert new vertices", "Prefer closest point, don't insert new vertices", "Move end points only, prefer aligning nodes", "Move end points only, prefer closest point", "Snap end points to end points only", "Snap to anchor nodes (single layer only)")` - Behavior. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param OUTPUT `sink` - Snapped geometry. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Snapped geometry
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_snapgeometries <- function(INPUT = qgisprocess::qgis_default_value(), REFERENCE_LAYER = qgisprocess::qgis_default_value(), TOLERANCE = qgisprocess::qgis_default_value(), BEHAVIOR = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:snapgeometries")

  output <- qgisprocess::qgis_run_algorithm("native:snapgeometries", `INPUT` = INPUT, `REFERENCE_LAYER` = REFERENCE_LAYER, `TOLERANCE` = TOLERANCE, `BEHAVIOR` = BEHAVIOR, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}