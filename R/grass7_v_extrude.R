##' QGIS Algorithm provided by GRASS v.extrude (grass7:v.extrude)
##'
##' @title QGIS algorithm v.extrude
##'
##' @param input `source` - Name of input 2D vector map. Path to a vector layer.
##' @param where `string` - WHERE conditions of SQL statement without 'where' keyword. String value.
##' @param type `enum`  of `("point", "line", "area")` - Input feature type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param zshift `number` - Shifting value for z coordinates. A numeric value.
##' @param height `number` - Fixed height for 3D vector objects. A numeric value.
##' @param height_column `field` - Name of attribute column with object heights. The name of an existing field. ; delimited list of existing field names.
##' @param elevation `raster` - Elevation raster for height extraction. Path to a raster layer.
##' @param method `enum`  of `("nearest", "bilinear", "bicubic")` - Sampling interpolation method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param scale `number` - Scale factor sampled raster values. A numeric value.
##' @param null_value `number` - Height for sampled raster NULL values. A numeric value.
##' @param .t `boolean` - Trace elevation. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -t.
##' @param output `vectorDestination` - 3D Vector. Path for new vector layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
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
##' * output - outputVector - 3D Vector
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_v_extrude <- function(input = qgisprocess::qgis_default_value(), where = qgisprocess::qgis_default_value(), type = qgisprocess::qgis_default_value(), zshift = qgisprocess::qgis_default_value(), height = qgisprocess::qgis_default_value(), height_column = qgisprocess::qgis_default_value(), elevation = qgisprocess::qgis_default_value(), method = qgisprocess::qgis_default_value(), scale = qgisprocess::qgis_default_value(), null_value = qgisprocess::qgis_default_value(), .t = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_SNAP_TOLERANCE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_MIN_AREA_PARAMETER = qgisprocess::qgis_default_value(), GRASS_OUTPUT_TYPE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_VECTOR_DSCO = qgisprocess::qgis_default_value(), GRASS_VECTOR_LCO = qgisprocess::qgis_default_value(), GRASS_VECTOR_EXPORT_NOCAT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("grass7:v.extrude",`input` = input, `where` = where, `type` = type, `zshift` = zshift, `height` = height, `height_column` = height_column, `elevation` = elevation, `method` = method, `scale` = scale, `null_value` = null_value, `-t` = .t, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER, `GRASS_OUTPUT_TYPE_PARAMETER` = GRASS_OUTPUT_TYPE_PARAMETER, `GRASS_VECTOR_DSCO` = GRASS_VECTOR_DSCO, `GRASS_VECTOR_LCO` = GRASS_VECTOR_LCO, `GRASS_VECTOR_EXPORT_NOCAT` = GRASS_VECTOR_EXPORT_NOCAT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}