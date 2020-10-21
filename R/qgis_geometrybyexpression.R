##' QGIS Algorithm provided by QGIS (native c++) Geometry by expression (native:geometrybyexpression)
##'
##' @title QGIS algorithm Geometry by expression
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param OUTPUT_GEOMETRY `enum`  of `("Polygon", "Line", "Point")` - Output geometry type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param WITH_Z `boolean` - Output geometry has z dimension. 1 for true/yes. 0 for false/no.
##' @param WITH_M `boolean` - Output geometry has m values. 1 for true/yes. 0 for false/no.
##' @param EXPRESSION `expression` - Geometry expression. A valid QGIS expression string, e.g "road_name" = 'MAIN RD'.
##' @param OUTPUT `sink` - Modified geometry. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Modified geometry
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_geometrybyexpression <- function(INPUT = qgisprocess::qgis_default_value(), OUTPUT_GEOMETRY = qgisprocess::qgis_default_value(), WITH_Z = qgisprocess::qgis_default_value(), WITH_M = qgisprocess::qgis_default_value(), EXPRESSION = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("native:geometrybyexpression",`INPUT` = INPUT, `OUTPUT_GEOMETRY` = OUTPUT_GEOMETRY, `WITH_Z` = WITH_Z, `WITH_M` = WITH_M, `EXPRESSION` = EXPRESSION, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}