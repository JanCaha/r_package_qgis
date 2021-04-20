##' QGIS Algorithm provided by GRASS r.null (grass7:r.null)
##'
##' @title QGIS algorithm r.null
##'
##' @param map `raster` - Name of raster map for which to edit null values. Path to a raster layer.
##' @param setnull `string` - List of cell values to be set to NULL. String value.
##' @param null `number` - The value to replace the null value by. A numeric value.
##' @param .f `boolean` - Only do the work if the map is floating-point. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -f.
##' @param .i `boolean` - Only do the work if the map is integer. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -i.
##' @param .n `boolean` - Only do the work if the map doesn't have a NULL-value bitmap file. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -n.
##' @param .c `boolean` - Create NULL-value bitmap file validating all data cells. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -c.
##' @param .r `boolean` - Remove NULL-value bitmap file. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -r.
##' @param output `rasterDestination` - NullRaster. Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputRaster - NullRaster
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_null <- function(map = qgisprocess::qgis_default_value(), setnull = qgisprocess::qgis_default_value(), null = qgisprocess::qgis_default_value(), .f = qgisprocess::qgis_default_value(), .i = qgisprocess::qgis_default_value(), .n = qgisprocess::qgis_default_value(), .c = qgisprocess::qgis_default_value(), .r = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("grass7:r.null",`map` = map, `setnull` = setnull, `null` = null, `-f` = .f, `-i` = .i, `-n` = .n, `-c` = .c, `-r` = .r, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}