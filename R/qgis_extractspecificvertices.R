##' QGIS Algorithm provided by QGIS (native c++) Extract specific vertices (native:extractspecificvertices). This algorithm takes a vector layer and generates a point layer with points representing specific vertices in the input lines or polygons. For instance, this algorithm can be used to extract the first or last vertices in the geometry. The attributes associated to each point are the same ones associated to the line or polygon that the point belongs to.  The vertex indices parameter accepts a comma separated string specifying the indices of the vertices to extract. The first vertex corresponds to an index of 0, the second vertex has an index of 1, etc. Negative indices can be used to find vertices at the end of the geometry, e.g., an index of -1 corresponds to the last vertex, -2 corresponds to the second last vertex, etc.  Additional fields are added to the points indicating the specific vertex position (e.g., 0, -1, etc), the original vertex index, the vertex’s part and its index within the part (as well as its ring for polygons), distance along the original geometry and bisector angle of vertex for the original geometry.
##'
##' @title QGIS algorithm - Extract specific vertices
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param VERTICES `string` - Vertex indices. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Vertices. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Vertices
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_extractspecificvertices <- function(INPUT = qgisprocess:::qgis_default_value(), VERTICES = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:extractspecificvertices")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:extractspecificvertices", `INPUT` = INPUT, `VERTICES` = VERTICES, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:extractspecificvertices", `INPUT` = INPUT, `VERTICES` = VERTICES, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}