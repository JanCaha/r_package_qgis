##' QGIS Algorithm provided by QGIS Minimum bounding geometry (qgis:minimumboundinggeometry)
##'
##' @title QGIS algorithm Minimum bounding geometry
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param FIELD `field` - Field (optional, set if features should be grouped by class). The name of an existing field. ; delimited list of existing field names.
##' @param TYPE `enum`  of `("Envelope (Bounding Box)", "Minimum Oriented Rectangle", "Minimum Enclosing Circle", "Convex Hull")` - Geometry type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param OUTPUT `sink` - Bounding geometry. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Bounding geometry
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_minimumboundinggeometry <- function(INPUT = qgisprocess::qgis_default_value(), FIELD = qgisprocess::qgis_default_value(), TYPE = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("qgis:minimumboundinggeometry")

  output <- qgisprocess::qgis_run_algorithm("qgis:minimumboundinggeometry", `INPUT` = INPUT, `FIELD` = FIELD, `TYPE` = TYPE, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}