##' QGIS Algorithm provided by GRASS v.distance (grass:v.distance). Finds the nearest element in vector map 'to' for elements in vector map 'from'.
##'
##' @title QGIS algorithm - v.distance
##'
##' @param from `source` - 'from' vector map. Path to a vector layer.
##' @param from_type `enum`  of `("point", "line", "boundary", "area", "centroid")` - 'from' feature type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param to `source` - 'to' vector map. Path to a vector layer.
##' @param to_type `enum`  of `("point", "line", "boundary", "area", "centroid")` - 'to' feature type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param dmax `number` - Maximum distance or -1.0 for no limit. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param dmin `number` - Minimum distance or -1.0 for no limit. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param upload `enum`  of `("cat", "dist", "to_x", "to_y", "to_along", "to_angle", "to_attr")` - 'upload': Values describing the relation between two nearest features. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param column `field` - Column name(s) where values specified by 'upload' option will be uploaded. The name of an existing field. ; delimited list of existing field names.
##' @param to_column `field` - Column name of nearest feature (used with upload=to_attr). The name of an existing field. ; delimited list of existing field names.
##' @param from_output `vectorDestination` - Nearest. Path for new vector layer.
##' @param output `vectorDestination` - Distance. Path for new vector layer.
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
##' * from_output - outputVector - Nearest
##' * output - outputVector - Distance
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

grass_v_distance <- function(from = qgisprocess:::qgis_default_value(), from_type = qgisprocess:::qgis_default_value(), to = qgisprocess:::qgis_default_value(), to_type = qgisprocess:::qgis_default_value(), dmax = qgisprocess:::qgis_default_value(), dmin = qgisprocess:::qgis_default_value(), upload = qgisprocess:::qgis_default_value(), column = qgisprocess:::qgis_default_value(), to_column = qgisprocess:::qgis_default_value(), from_output = qgisprocess:::qgis_default_value(), output = qgisprocess:::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_SNAP_TOLERANCE_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_MIN_AREA_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_OUTPUT_TYPE_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_VECTOR_DSCO = qgisprocess:::qgis_default_value(), GRASS_VECTOR_LCO = qgisprocess:::qgis_default_value(), GRASS_VECTOR_EXPORT_NOCAT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass:v.distance")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass:v.distance", `from` = from, `from_type` = from_type, `to` = to, `to_type` = to_type, `dmax` = dmax, `dmin` = dmin, `upload` = upload, `column` = column, `to_column` = to_column, `from_output` = from_output, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER, `GRASS_OUTPUT_TYPE_PARAMETER` = GRASS_OUTPUT_TYPE_PARAMETER, `GRASS_VECTOR_DSCO` = GRASS_VECTOR_DSCO, `GRASS_VECTOR_LCO` = GRASS_VECTOR_LCO, `GRASS_VECTOR_EXPORT_NOCAT` = GRASS_VECTOR_EXPORT_NOCAT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass:v.distance", `from` = from, `from_type` = from_type, `to` = to, `to_type` = to_type, `dmax` = dmax, `dmin` = dmin, `upload` = upload, `column` = column, `to_column` = to_column, `from_output` = from_output, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER, `GRASS_OUTPUT_TYPE_PARAMETER` = GRASS_OUTPUT_TYPE_PARAMETER, `GRASS_VECTOR_DSCO` = GRASS_VECTOR_DSCO, `GRASS_VECTOR_LCO` = GRASS_VECTOR_LCO, `GRASS_VECTOR_EXPORT_NOCAT` = GRASS_VECTOR_EXPORT_NOCAT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "from_output")
  }
}