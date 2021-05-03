##' QGIS Algorithm provided by GRASS v.to.rast (grass7:v.to.rast)
##'
##' @title QGIS algorithm v.to.rast
##'
##' @param input `source` - Input vector layer. Path to a vector layer.
##' @param type `enum`  of `("point", "line", "boundary", "area")` - Input feature type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param where `string` - WHERE conditions of SQL statement without 'where' keyword. String value.
##' @param use `enum`  of `("attr", "cat", "val", "z", "dir")` - Source of raster values. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param attribute_column `field` - Name of column for 'attr' parameter (data type must be numeric). The name of an existing field. ; delimited list of existing field names.
##' @param rgb_column `field` - Name of color definition column (with RRR:GGG:BBB entries). The name of an existing field. ; delimited list of existing field names.
##' @param label_column `field` - Name of column used as raster category labels. The name of an existing field. ; delimited list of existing field names.
##' @param value `number` - Raster value (for use=val). A numeric value.
##' @param memory `number` - Maximum memory to be used (in MB). A numeric value.
##' @param output `rasterDestination` - Rasterized. Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value.
##' @param GRASS_SNAP_TOLERANCE_PARAMETER `number` - v.in.ogr snap tolerance (-1 = no snap). A numeric value.
##' @param GRASS_MIN_AREA_PARAMETER `number` - v.in.ogr min area. A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputRaster - Rasterized
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_v_to_rast <- function(input = qgisprocess::qgis_default_value(), type = qgisprocess::qgis_default_value(), where = qgisprocess::qgis_default_value(), use = qgisprocess::qgis_default_value(), attribute_column = qgisprocess::qgis_default_value(), rgb_column = qgisprocess::qgis_default_value(), label_column = qgisprocess::qgis_default_value(), value = qgisprocess::qgis_default_value(), memory = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(), GRASS_SNAP_TOLERANCE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_MIN_AREA_PARAMETER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("grass7:v.to.rast")

  output <- qgisprocess::qgis_run_algorithm("grass7:v.to.rast", `input` = input, `type` = type, `where` = where, `use` = use, `attribute_column` = attribute_column, `rgb_column` = rgb_column, `label_column` = label_column, `value` = value, `memory` = memory, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}