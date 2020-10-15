##' QGIS Algorithm provided by QGIS (native c++) Extract specific vertices (native:extractspecificvertices)
##'
##' @title QGIS algorithm Extract specific vertices
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param VERTICES `string` - Vertex indices. String value.
##' @param OUTPUT `sink` - Vertices. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Vertices
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_extractspecificvertices <- function(INPUT = qgisprocess::qgis_default_value(), VERTICES = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("native:extractspecificvertices",`INPUT` = INPUT, `VERTICES` = VERTICES, `OUTPUT` = OUTPUT,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
}
}