##' QGIS Algorithm provided by SAGA Next Gen Polygons to edges and nodes (sagang:polygonstoedgesandnodes). ---------------- Arguments ----------------  POLYGONS: Polygons 	Argument type:	source 	Acceptable values: 		- Path to a vector layer EDGES: Edges 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer NODES: Nodes 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer
##'
##' @title QGIS algorithm - Polygons to edges and nodes
##'
##' @param POLYGONS `source` - Polygons. Path to a vector layer.
##' @param EDGES `vectorDestination` - Edges. Path for new vector layer.
##' @param NODES `vectorDestination` - Nodes. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * EDGES - outputVector - Edges
##' * NODES - outputVector - Nodes
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_polygonstoedgesandnodes <- function(POLYGONS = qgisprocess:::qgis_default_value(), EDGES = qgisprocess:::qgis_default_value(), NODES = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:polygonstoedgesandnodes")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:polygonstoedgesandnodes", `POLYGONS` = POLYGONS, `EDGES` = EDGES, `NODES` = NODES,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:polygonstoedgesandnodes", `POLYGONS` = POLYGONS, `EDGES` = EDGES, `NODES` = NODES,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "EDGES")
  }
}