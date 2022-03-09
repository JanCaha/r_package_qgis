##' QGIS Algorithm provided by GRASS v.net.connectivity (grass7:v.net.connectivity)
##'
##' @title QGIS algorithm v.net.connectivity
##'
##' @param input `source` - Input vector line layer (network). Path to a vector layer.
##' @param points `source` - Input vector point layer (first set of nodes). Path to a vector layer.
##' @param threshold `number` - Threshold for connecting centers to the network (in map unit). A numeric value.
##' @param set1_cats `string` - Set1 Category values. String value.
##' @param set1_where `string` - Set1 WHERE conditions of SQL statement without 'where' keyword. String value.
##' @param set2_cats `string` - Set2 Category values. String value.
##' @param set2_where `string` - Set2 WHERE conditions of SQL statement without 'where' keyword. String value.
##' @param arc_column `field` - Arc forward/both direction(s) cost column (number). The name of an existing field. ; delimited list of existing field names.
##' @param arc_backward_column `field` - Arc backward direction cost column (number). The name of an existing field. ; delimited list of existing field names.
##' @param node_column `field` - Node cost column (number). The name of an existing field. ; delimited list of existing field names.
##' @param output `vectorDestination` - Network_Connectivity. Path for new vector layer.
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
##' * output - outputVector - Network_Connectivity
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_v_net_connectivity <- function(input = qgisprocess::qgis_default_value(), points = qgisprocess::qgis_default_value(), threshold = qgisprocess::qgis_default_value(), set1_cats = qgisprocess::qgis_default_value(), set1_where = qgisprocess::qgis_default_value(), set2_cats = qgisprocess::qgis_default_value(), set2_where = qgisprocess::qgis_default_value(), arc_column = qgisprocess::qgis_default_value(), arc_backward_column = qgisprocess::qgis_default_value(), node_column = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_SNAP_TOLERANCE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_MIN_AREA_PARAMETER = qgisprocess::qgis_default_value(), GRASS_OUTPUT_TYPE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_VECTOR_DSCO = qgisprocess::qgis_default_value(), GRASS_VECTOR_LCO = qgisprocess::qgis_default_value(), GRASS_VECTOR_EXPORT_NOCAT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass7:v.net.connectivity")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass7:v.net.connectivity", `input` = input, `points` = points, `threshold` = threshold, `set1_cats` = set1_cats, `set1_where` = set1_where, `set2_cats` = set2_cats, `set2_where` = set2_where, `arc_column` = arc_column, `arc_backward_column` = arc_backward_column, `node_column` = node_column, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER, `GRASS_OUTPUT_TYPE_PARAMETER` = GRASS_OUTPUT_TYPE_PARAMETER, `GRASS_VECTOR_DSCO` = GRASS_VECTOR_DSCO, `GRASS_VECTOR_LCO` = GRASS_VECTOR_LCO, `GRASS_VECTOR_EXPORT_NOCAT` = GRASS_VECTOR_EXPORT_NOCAT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass7:v.net.connectivity", `input` = input, `points` = points, `threshold` = threshold, `set1_cats` = set1_cats, `set1_where` = set1_where, `set2_cats` = set2_cats, `set2_where` = set2_where, `arc_column` = arc_column, `arc_backward_column` = arc_backward_column, `node_column` = node_column, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER, `GRASS_OUTPUT_TYPE_PARAMETER` = GRASS_OUTPUT_TYPE_PARAMETER, `GRASS_VECTOR_DSCO` = GRASS_VECTOR_DSCO, `GRASS_VECTOR_LCO` = GRASS_VECTOR_LCO, `GRASS_VECTOR_EXPORT_NOCAT` = GRASS_VECTOR_EXPORT_NOCAT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}