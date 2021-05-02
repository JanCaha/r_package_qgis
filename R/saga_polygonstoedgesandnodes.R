##' QGIS Algorithm provided by SAGA Polygons to edges and nodes (saga:polygonstoedgesandnodes)
##'
##' @title QGIS algorithm Polygons to edges and nodes
##'
##' @param POLYGONS `source` - Polygons. Path to a vector layer.
##' @param EDGES `vectorDestination` - Edges. Path for new vector layer.
##' @param NODES `vectorDestination` - Nodes. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * EDGES - outputVector - Edges
##' * NODES - outputVector - Nodes
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_polygonstoedgesandnodes <- function(POLYGONS = qgisprocess::qgis_default_value(), EDGES = qgisprocess::qgis_default_value(), NODES = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:polygonstoedgesandnodes")
  output <- qgisprocess::qgis_run_algorithm("saga:polygonstoedgesandnodes",`POLYGONS` = POLYGONS, `EDGES` = EDGES, `NODES` = NODES,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "EDGES")
  }
}