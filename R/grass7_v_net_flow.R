##' QGIS Algorithm provided by GRASS v.net.flow (grass7:v.net.flow)
##'
##' @title QGIS algorithm v.net.flow
##'
##' @param input `source` - Input vector line layer (network). Path to a vector layer.
##' @param points `source` - Input vector point layer (flow nodes). Path to a vector layer.
##' @param threshold `number` - Threshold for connecting centers to the network (in map unit). A numeric value.
##' @param source_cats `string` - Source Category values. String value.
##' @param source_where `string` - Source WHERE conditions of SQL statement without 'where' keyword. String value.
##' @param sink_cats `string` - Sink Category values. String value.
##' @param sink_where `string` - Sink WHERE conditions of SQL statement without 'where' keyword. String value.
##' @param arc_column `field` - Arc forward/both direction(s) cost column (number). The name of an existing field. ; delimited list of existing field names.
##' @param arc_backward_column `field` - Arc backward direction cost column (number). The name of an existing field. ; delimited list of existing field names.
##' @param node_column `field` - Node cost column (number). The name of an existing field. ; delimited list of existing field names.
##' @param output `vectorDestination` - Network_Flow. Path for new vector layer.
##' @param cut `vectorDestination` - Network_Cut. Path for new vector layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_SNAP_TOLERANCE_PARAMETER `number` - v.in.ogr snap tolerance (-1 = no snap). A numeric value.
##' @param GRASS_MIN_AREA_PARAMETER `number` - v.in.ogr min area. A numeric value.
##' @param GRASS_OUTPUT_TYPE_PARAMETER `enum`  of `("auto", "point", "line", "area")` - v.out.ogr output type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param GRASS_VECTOR_DSCO `string` - v.out.ogr output data source options (dsco). String value.
##' @param GRASS_VECTOR_LCO `string` - v.out.ogr output layer options (lco). String value.
##' @param GRASS_VECTOR_EXPORT_NOCAT `boolean` - Also export features without category (not labeled). Otherwise only features with category are exported. 1 for true/yes. 0 for false/no.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputVector - Network_Flow
##' * cut - outputVector - Network_Cut
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_v_net_flow <- function(input = qgisprocess::qgis_default_value(), points = qgisprocess::qgis_default_value(), threshold = qgisprocess::qgis_default_value(), source_cats = qgisprocess::qgis_default_value(), source_where = qgisprocess::qgis_default_value(), sink_cats = qgisprocess::qgis_default_value(), sink_where = qgisprocess::qgis_default_value(), arc_column = qgisprocess::qgis_default_value(), arc_backward_column = qgisprocess::qgis_default_value(), node_column = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), cut = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_SNAP_TOLERANCE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_MIN_AREA_PARAMETER = qgisprocess::qgis_default_value(), GRASS_OUTPUT_TYPE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_VECTOR_DSCO = qgisprocess::qgis_default_value(), GRASS_VECTOR_LCO = qgisprocess::qgis_default_value(), GRASS_VECTOR_EXPORT_NOCAT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("grass7:v.net.flow",`input` = input, `points` = points, `threshold` = threshold, `source_cats` = source_cats, `source_where` = source_where, `sink_cats` = sink_cats, `sink_where` = sink_where, `arc_column` = arc_column, `arc_backward_column` = arc_backward_column, `node_column` = node_column, `output` = output, `cut` = cut, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER, `GRASS_OUTPUT_TYPE_PARAMETER` = GRASS_OUTPUT_TYPE_PARAMETER, `GRASS_VECTOR_DSCO` = GRASS_VECTOR_DSCO, `GRASS_VECTOR_LCO` = GRASS_VECTOR_LCO, `GRASS_VECTOR_EXPORT_NOCAT` = GRASS_VECTOR_EXPORT_NOCAT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}