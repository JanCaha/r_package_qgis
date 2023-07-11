##' QGIS Algorithm provided by GRASS v.net.iso (grass7:v.net.iso). Splits network by cost isolines.
##'
##' @title QGIS algorithm - v.net.iso
##'
##' @param input `source` - Input vector line layer (arcs). Path to a vector layer.
##' @param points `source` - Centers point layer (nodes). Path to a vector layer.
##' @param threshold `number` - Threshold for connecting centers to the network (in map unit). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param arc_type `enum`  of `("line", "boundary")` - Arc type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param center_cats `string` - Category values. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param costs `string` - Costs for isolines. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param arc_column `field` - Arc forward\code{/}both direction(s) cost column (number). The name of an existing field. ; delimited list of existing field names.
##' @param arc_backward_column `field` - Arc backward direction cost column (number). The name of an existing field. ; delimited list of existing field names.
##' @param node_column `field` - Node cost column (number). The name of an existing field. ; delimited list of existing field names.
##' @param .g `boolean` - Use geodesic calculation for longitude-latitude locations. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -g.
##' @param output `vectorDestination` - Network_Iso. Path for new vector layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_SNAP_TOLERANCE_PARAMETER `number` - v.in.ogr snap tolerance (-1 = no snap). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GRASS_MIN_AREA_PARAMETER `number` - v.in.ogr min area. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GRASS_OUTPUT_TYPE_PARAMETER `enum`  of `("auto", "point", "line", "area")` - v.out.ogr output type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param GRASS_VECTOR_DSCO `string` - v.out.ogr output data source options (dsco). String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GRASS_VECTOR_LCO `string` - v.out.ogr output layer options (lco). String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GRASS_VECTOR_EXPORT_NOCAT `boolean` - Also export features without category (not labeled). Otherwise only features with category are exported. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * output - outputVector - Network_Iso
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

grass7_v_net_iso <- function(input = qgisprocess:::qgis_default_value(), points = qgisprocess:::qgis_default_value(), threshold = qgisprocess:::qgis_default_value(), arc_type = qgisprocess:::qgis_default_value(), center_cats = qgisprocess:::qgis_default_value(), costs = qgisprocess:::qgis_default_value(), arc_column = qgisprocess:::qgis_default_value(), arc_backward_column = qgisprocess:::qgis_default_value(), node_column = qgisprocess:::qgis_default_value(), .g = qgisprocess:::qgis_default_value(), output = qgisprocess:::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_SNAP_TOLERANCE_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_MIN_AREA_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_OUTPUT_TYPE_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_VECTOR_DSCO = qgisprocess:::qgis_default_value(), GRASS_VECTOR_LCO = qgisprocess:::qgis_default_value(), GRASS_VECTOR_EXPORT_NOCAT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass7:v.net.iso")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass7:v.net.iso", `input` = input, `points` = points, `threshold` = threshold, `arc_type` = arc_type, `center_cats` = center_cats, `costs` = costs, `arc_column` = arc_column, `arc_backward_column` = arc_backward_column, `node_column` = node_column, `-g` = .g, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER, `GRASS_OUTPUT_TYPE_PARAMETER` = GRASS_OUTPUT_TYPE_PARAMETER, `GRASS_VECTOR_DSCO` = GRASS_VECTOR_DSCO, `GRASS_VECTOR_LCO` = GRASS_VECTOR_LCO, `GRASS_VECTOR_EXPORT_NOCAT` = GRASS_VECTOR_EXPORT_NOCAT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass7:v.net.iso", `input` = input, `points` = points, `threshold` = threshold, `arc_type` = arc_type, `center_cats` = center_cats, `costs` = costs, `arc_column` = arc_column, `arc_backward_column` = arc_backward_column, `node_column` = node_column, `-g` = .g, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER, `GRASS_OUTPUT_TYPE_PARAMETER` = GRASS_OUTPUT_TYPE_PARAMETER, `GRASS_VECTOR_DSCO` = GRASS_VECTOR_DSCO, `GRASS_VECTOR_LCO` = GRASS_VECTOR_LCO, `GRASS_VECTOR_EXPORT_NOCAT` = GRASS_VECTOR_EXPORT_NOCAT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "output")
  }
}