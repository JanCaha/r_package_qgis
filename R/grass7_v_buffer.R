##' QGIS Algorithm provided by GRASS v.buffer (grass7:v.buffer)
##'
##' @title QGIS algorithm v.buffer
##'
##' @param input `source` - Input vector layer. Path to a vector layer.
##' @param cats `string` - Category values. String value.
##' @param where `string` - WHERE conditions of SQL statement without 'where' keyword. String value.
##' @param type `enum`  of `("point", "line", "boundary", "centroid", "area")` - Input feature type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param distance `number` - Buffer distance in map units. A numeric value.
##' @param minordistance `number` - Buffer distance along minor axis in map units. A numeric value.
##' @param angle `number` - Angle of major axis in degrees. A numeric value.
##' @param layer `string` - Layer number or name ('-1' for all layers). String value.
##' @param column `field` - Name of column to use for buffer distances. The name of an existing field. ; delimited list of existing field names.
##' @param scale `number` - Scaling factor for attribute column values. A numeric value.
##' @param tolerance `number` - Maximum distance between theoretical arc and polygon segments as multiple of buffer. A numeric value.
##' @param .s `boolean` - Make outside corners straight. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -s.
##' @param .c `boolean` - Do not make caps at the ends of polylines. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -c.
##' @param .t `boolean` - Transfer categories and attributes. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -t.
##' @param output `vectorDestination` - Buffer. Path for new vector layer.
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
##' * output - outputVector - Buffer
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_v_buffer <- function(input = qgisprocess::qgis_default_value(), cats = qgisprocess::qgis_default_value(), where = qgisprocess::qgis_default_value(), type = qgisprocess::qgis_default_value(), distance = qgisprocess::qgis_default_value(), minordistance = qgisprocess::qgis_default_value(), angle = qgisprocess::qgis_default_value(), layer = qgisprocess::qgis_default_value(), column = qgisprocess::qgis_default_value(), scale = qgisprocess::qgis_default_value(), tolerance = qgisprocess::qgis_default_value(), .s = qgisprocess::qgis_default_value(), .c = qgisprocess::qgis_default_value(), .t = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_SNAP_TOLERANCE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_MIN_AREA_PARAMETER = qgisprocess::qgis_default_value(), GRASS_OUTPUT_TYPE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_VECTOR_DSCO = qgisprocess::qgis_default_value(), GRASS_VECTOR_LCO = qgisprocess::qgis_default_value(), GRASS_VECTOR_EXPORT_NOCAT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("grass7:v.buffer")
  output <- qgisprocess::qgis_run_algorithm("grass7:v.buffer",`input` = input, `cats` = cats, `where` = where, `type` = type, `distance` = distance, `minordistance` = minordistance, `angle` = angle, `layer` = layer, `column` = column, `scale` = scale, `tolerance` = tolerance, `-s` = .s, `-c` = .c, `-t` = .t, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER, `GRASS_OUTPUT_TYPE_PARAMETER` = GRASS_OUTPUT_TYPE_PARAMETER, `GRASS_VECTOR_DSCO` = GRASS_VECTOR_DSCO, `GRASS_VECTOR_LCO` = GRASS_VECTOR_LCO, `GRASS_VECTOR_EXPORT_NOCAT` = GRASS_VECTOR_EXPORT_NOCAT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}