##' QGIS Algorithm provided by QGIS (native c++) Simplify (native:simplifygeometries)
##'
##' @title QGIS algorithm Simplify
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param METHOD `enum`  of `("Distance (Douglas-Peucker)", "Snap to grid", "Area (Visvalingam)")` - Simplification method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param TOLERANCE `distance` - Tolerance. A numeric value.
##' @param OUTPUT `sink` - Simplified. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Simplified
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_simplifygeometries <- function(INPUT = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), TOLERANCE = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:simplifygeometries")

  output <- qgisprocess::qgis_run_algorithm("native:simplifygeometries", `INPUT` = INPUT, `METHOD` = METHOD, `TOLERANCE` = TOLERANCE, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}