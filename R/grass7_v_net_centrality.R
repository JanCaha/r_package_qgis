##' QGIS Algorithm provided by GRASS v.net.centrality (grass7:v.net.centrality)
##'
##' @title QGIS algorithm v.net.centrality
##'
##' @param input `source` - Input vector line layer (network). Path to a vector layer.
##' @param degree `string` - Name of output degree centrality column. String value.
##' @param closeness `string` - Name of output closeness centrality column. String value.
##' @param betweenness `string` - Name of output betweenness centrality column. String value.
##' @param eigenvector `string` - Name of output eigenvector centrality column. String value.
##' @param iterations `number` - Maximum number of iterations to compute eigenvector centrality. A numeric value.
##' @param error `number` - Cumulative error tolerance for eigenvector centrality. A numeric value.
##' @param cats `string` - Category values. String value.
##' @param where `string` - WHERE conditions of SQL statement without 'where' keyword. String value.
##' @param arc_column `field` - Arc forward/both direction(s) cost column (number). The name of an existing field. ; delimited list of existing field names.
##' @param arc_backward_column `field` - Arc backward direction cost column (number). The name of an existing field. ; delimited list of existing field names.
##' @param node_column `field` - Node cost column (number). The name of an existing field. ; delimited list of existing field names.
##' @param .a `boolean` - Add points on nodes. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -a.
##' @param .g `boolean` - Use geodesic calculation for longitude-latitude locations. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -g.
##' @param output `vectorDestination` - Network Centrality. Path for new vector layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_SNAP_TOLERANCE_PARAMETER `number` - v.in.ogr snap tolerance (-1 = no snap). A numeric value.
##' @param GRASS_MIN_AREA_PARAMETER `number` - v.in.ogr min area. A numeric value.
##' @param GRASS_OUTPUT_TYPE_PARAMETER `enum`  of `("auto", "point", "line", "area")` - v.out.ogr output type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param GRASS_VECTOR_DSCO `string` - v.out.ogr output data source options (dsco). String value.
##' @param GRASS_VECTOR_LCO `string` - v.out.ogr output layer options (lco). String value.
##' @param GRASS_VECTOR_EXPORT_NOCAT `boolean` - Also export features without category (not labeled). Otherwise only features with category are exported. 1 for true/yes. 0 for false/no.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * output - outputVector - Network Centrality
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

grass7_v_net_centrality <- function(input = qgisprocess:::qgis_default_value(), degree = qgisprocess:::qgis_default_value(), closeness = qgisprocess:::qgis_default_value(), betweenness = qgisprocess:::qgis_default_value(), eigenvector = qgisprocess:::qgis_default_value(), iterations = qgisprocess:::qgis_default_value(), error = qgisprocess:::qgis_default_value(), cats = qgisprocess:::qgis_default_value(), where = qgisprocess:::qgis_default_value(), arc_column = qgisprocess:::qgis_default_value(), arc_backward_column = qgisprocess:::qgis_default_value(), node_column = qgisprocess:::qgis_default_value(), .a = qgisprocess:::qgis_default_value(), .g = qgisprocess:::qgis_default_value(), output = qgisprocess:::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_SNAP_TOLERANCE_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_MIN_AREA_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_OUTPUT_TYPE_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_VECTOR_DSCO = qgisprocess:::qgis_default_value(), GRASS_VECTOR_LCO = qgisprocess:::qgis_default_value(), GRASS_VECTOR_EXPORT_NOCAT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass7:v.net.centrality")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass7:v.net.centrality", `input` = input, `degree` = degree, `closeness` = closeness, `betweenness` = betweenness, `eigenvector` = eigenvector, `iterations` = iterations, `error` = error, `cats` = cats, `where` = where, `arc_column` = arc_column, `arc_backward_column` = arc_backward_column, `node_column` = node_column, `-a` = .a, `-g` = .g, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER, `GRASS_OUTPUT_TYPE_PARAMETER` = GRASS_OUTPUT_TYPE_PARAMETER, `GRASS_VECTOR_DSCO` = GRASS_VECTOR_DSCO, `GRASS_VECTOR_LCO` = GRASS_VECTOR_LCO, `GRASS_VECTOR_EXPORT_NOCAT` = GRASS_VECTOR_EXPORT_NOCAT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass7:v.net.centrality", `input` = input, `degree` = degree, `closeness` = closeness, `betweenness` = betweenness, `eigenvector` = eigenvector, `iterations` = iterations, `error` = error, `cats` = cats, `where` = where, `arc_column` = arc_column, `arc_backward_column` = arc_backward_column, `node_column` = node_column, `-a` = .a, `-g` = .g, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER, `GRASS_OUTPUT_TYPE_PARAMETER` = GRASS_OUTPUT_TYPE_PARAMETER, `GRASS_VECTOR_DSCO` = GRASS_VECTOR_DSCO, `GRASS_VECTOR_LCO` = GRASS_VECTOR_LCO, `GRASS_VECTOR_EXPORT_NOCAT` = GRASS_VECTOR_EXPORT_NOCAT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "output")
  }
}